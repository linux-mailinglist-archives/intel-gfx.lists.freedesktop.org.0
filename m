Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E561BAE79
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 21:51:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FE8289B27;
	Mon, 27 Apr 2020 19:51:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 69559 seconds by postgrey-1.36 at gabe;
 Mon, 27 Apr 2020 19:51:19 UTC
Received: from 4.mo68.mail-out.ovh.net (4.mo68.mail-out.ovh.net [46.105.59.63])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40AB289B27
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 19:51:19 +0000 (UTC)
Received: from player735.ha.ovh.net (unknown [10.108.42.102])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id 92B6D163D2C
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 21:51:16 +0200 (CEST)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player735.ha.ovh.net (Postfix) with ESMTPSA id EECF511983FA2;
 Mon, 27 Apr 2020 19:51:13 +0000 (UTC)
Date: Mon, 27 Apr 2020 22:51:12 +0300
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200427195112.GA3168@jack.zhora.eu>
References: <20200427085408.13879-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427085408.13879-1-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 4013551695345140233
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrheelgddufeelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecukfhppedtrddtrddtrddtpddvudefrddvgeefrddugedurdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejfeehrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915/gt: Sanitize GT first
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

> We see that if the HW doesn't actually sleep, the HW may eat the poison
> we set in its write-only HWSP during sanitize:
> 
>   intel_gt_resume.part.8: 0000:00:02.0
>   __gt_unpark: 0000:00:02.0
>   gt_sanitize: 0000:00:02.0 force:yes
>   process_csb: 0000:00:02.0 vcs0: cs-irq head=5, tail=90
>   process_csb: 0000:00:02.0 vcs0: csb[0]: status=0x5a5a5a5a:0x5a5a5a5a
>   assert_pending_valid: Nothing pending for promotion!
> 
> The CS TAIL pointer should have been reset by reset_csb_pointers(), so
> in this case it is likely that we have read back from the CPU cache and
> so we must clflush our control over that page. In doing so, push the
> sanitisation to the start of the GT sequence so that our poisoning is
> assuredly before we start talking to the HW.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
