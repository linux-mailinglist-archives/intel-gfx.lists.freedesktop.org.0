Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A22541A7C0A
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 15:13:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05CFF6E406;
	Tue, 14 Apr 2020 13:13:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE6B16E406
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 13:13:51 +0000 (UTC)
IronPort-SDR: tbanDrn7ji1HZjuzdtYO5zpdZSmgdDejgNSGvPAq+MkAELl6wO80+2CdDNjvGSuRvwnPbhHV2h
 PEEYE8nhf0vw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 06:13:51 -0700
IronPort-SDR: eajr0lYD1O/bgFA7BohMgGEPRo8CTlFeVv937VSRGBmQgNgPnBXgWXcV3p5z++gmBEjaatuEjQ
 hx9R2EckJAIg==
X-IronPort-AV: E=Sophos;i="5.72,382,1580803200"; d="scan'208";a="453531492"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.202])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 06:13:50 -0700
Date: Tue, 14 Apr 2020 06:13:29 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200414131329.GC4008304@intel.com>
References: <20200414000844.101873-1-jose.souza@intel.com>
 <20200414000844.101873-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414000844.101873-2-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] Revert "rtc/cmos: Protect rtc_lock from
 interrupts"
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 13, 2020 at 05:08:44PM -0700, Jos=E9 Roberto de Souza wrote:
> Fix build.

sorry, this was a silent merge conflict of topic/core-for-CI
when merging to create drm-tip.

I fixed last night with a drm-rerere/fixup. You shouldn't get
any build failure by now. Sorry for taking a long time to fix
this properly yesterday.

> =

> This reverts commit 5b39064d452ac9739d59c5183c8a7c90a5982acb.
> =

> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/rtc/rtc-cmos.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/rtc/rtc-cmos.c b/drivers/rtc/rtc-cmos.c
> index df5ff7e78a14..3718386a9f0e 100644
> --- a/drivers/rtc/rtc-cmos.c
> +++ b/drivers/rtc/rtc-cmos.c
> @@ -652,9 +652,8 @@ static irqreturn_t cmos_interrupt(int irq, void *p)
>  	unsigned long	flags;
>  	u8		irqstat;
>  	u8		rtc_control;
> -	unsigned long	flags;
>  =

> -	spin_lock_irqsave(&rtc_lock, flags);
> +	spin_lock(&rtc_lock);
>  =

>  	/* When the HPET interrupt handler calls us, the interrupt
>  	 * status is passed as arg1 instead of the irq number.  But
> @@ -688,7 +687,7 @@ static irqreturn_t cmos_interrupt(int irq, void *p)
>  			hpet_mask_rtc_irq_bit(RTC_AIE);
>  		CMOS_READ(RTC_INTR_FLAGS);
>  	}
> -	spin_unlock_irqrestore(&rtc_lock, flags);
> +	spin_unlock(&rtc_lock);
>  =

>  	if (is_intr(irqstat)) {
>  		rtc_update_irq(p, 1, irqstat);
> -- =

> 2.26.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
