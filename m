Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C04742EF29E
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 13:43:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A0016E33F;
	Fri,  8 Jan 2021 12:43:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 993 seconds by postgrey-1.36 at gabe;
 Fri, 08 Jan 2021 12:43:27 UTC
Received: from 6.mo2.mail-out.ovh.net (6.mo2.mail-out.ovh.net [87.98.165.38])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0F066E33F
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 12:43:27 +0000 (UTC)
Received: from player688.ha.ovh.net (unknown [10.108.35.103])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id 5874E1F588A
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 13:26:52 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player688.ha.ovh.net (Postfix) with ESMTPSA id D11CC19BFFB64;
 Fri,  8 Jan 2021 12:26:46 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-98R0020583f100-653f-4d9c-9c4f-38151688e06e,
 83D1C09382E53F50CE2429AE6C9B6AA8FD9DCB87) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 213.243.141.64
Date: Fri, 8 Jan 2021 14:26:45 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <X/hPhSqBCjHFKg9F@jack.zhora.eu>
References: <20210107221724.10036-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210107221724.10036-1-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 5731674950936412681
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrvdeggedggedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecuggftrfgrthhtvghrnheptdfgudduhfefueeujeefieehtdeftefggeevhefgueellefhudetgeeikeduieefnecukfhppedtrddtrddtrddtpddvudefrddvgeefrddugedurdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrheikeekrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/selftests: Skip unstable
 timing measurements
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

> diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> index 75839db63bea..59c58a276677 100644
> --- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> @@ -852,6 +852,9 @@ static int _perf_memcpy(struct intel_memory_region *src_mr,
>  		}
>  
>  		sort(t, ARRAY_SIZE(t), sizeof(*t), wrap_ktime_compare, NULL);
> +		if (!t[0])
> +			continue;
> +

are you assuming here that if t[0] is '0', also the rest of 't'
is '0'?

Andi

>  		pr_info("%s src(%s, %s) -> dst(%s, %s) %14s %4llu KiB copy: %5lld MiB/s\n",
>  			__func__,
>  			src_mr->name,
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
