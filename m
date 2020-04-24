Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BC01B71DE
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 12:23:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 187AE6EAAD;
	Fri, 24 Apr 2020 10:23:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 67650 seconds by postgrey-1.36 at gabe;
 Fri, 24 Apr 2020 10:23:28 UTC
Received: from 1.mo68.mail-out.ovh.net (1.mo68.mail-out.ovh.net
 [46.105.41.146])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 556256EAA4
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2020 10:23:28 +0000 (UTC)
Received: from player734.ha.ovh.net (unknown [10.110.103.129])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id 12A35162C06
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2020 12:16:21 +0200 (CEST)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player734.ha.ovh.net (Postfix) with ESMTPSA id 5E6DA1193AAB0;
 Fri, 24 Apr 2020 10:16:20 +0000 (UTC)
Date: Fri, 24 Apr 2020 13:16:17 +0300
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200424101617.GC460760@jack.zhora.eu>
References: <20200422190558.30509-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422190558.30509-1-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 13579760254553801225
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugddvfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucffohhmrghinhepfhhrvggvuggvshhkthhophdrohhrghenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeefgedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Only close vma we open
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Wed, Apr 22, 2020 at 08:05:58PM +0100, Chris Wilson wrote:
> The history of i915_vma_close() is confusing, as is its use. As the
> lifetime of the i915_vma is currently bounded by the object it is
> attached to, we needed a means of identify when a vma was no longer in
> use by userspace (via the user's fd). This is further complicated by
> that only ppgtt vma should be closed at the user's behest, as the ggtt
> were always shared.
> 
> Now that we attach the vma to a lut on the user's context, the open
> count does indicate how many unique and open context/vm are referencing
> this vma from the user. As such, we can and should just use the
> open_count to track when the vma is still in use by userspace.
> 
> It's a poor man's replacement for reference counting.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1193
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

[...]

> @@ -1777,21 +1737,20 @@ int i915_gem_huge_page_mock_selftests(void)
>  	if (!i915_vm_is_4lvl(&ppgtt->vm)) {
>  		pr_err("failed to create 48b PPGTT\n");
>  		err = -EINVAL;
> -		goto out_close;
> +		goto out_put;
>  	}
>  
>  	/* If we were ever hit this then it's time to mock the 64K scratch */
>  	if (!i915_vm_has_scratch_64K(&ppgtt->vm)) {
>  		pr_err("PPGTT missing 64K scratch page\n");
>  		err = -EINVAL;
> -		goto out_close;
> +		goto out_put;
>  	}
>  
>  	err = i915_subtests(tests, ppgtt);
>  
> -out_close:
> +out_put:
>  	i915_vm_put(&ppgtt->vm);

Did anything change here?

Looks correct to me,

Cried-groaned-and-screamed-by: Andi Shyti <andi.shyti@intel.com>

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
