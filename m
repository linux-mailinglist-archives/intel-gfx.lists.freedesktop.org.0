Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2BC1651BD
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 22:37:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C49776E872;
	Wed, 19 Feb 2020 21:37:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B4DA6E872
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 21:37:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 13:37:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,462,1574150400"; d="scan'208";a="229250293"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga008.jf.intel.com with ESMTP; 19 Feb 2020 13:37:51 -0800
Received: from fmsmsx123.amr.corp.intel.com (10.18.125.38) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 19 Feb 2020 13:37:49 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 fmsmsx123.amr.corp.intel.com ([169.254.7.117]) with mapi id 14.03.0439.000;
 Wed, 19 Feb 2020 13:37:49 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/tgl: Add Wa_22010178259:tgl
Thread-Index: AQHV4FC9RMsS5CUWA0KXQYlFpoPfAagjn1UA
Date: Wed, 19 Feb 2020 21:37:48 +0000
Message-ID: <838de8a5c95f31e021a87a60d36167281667aad3.camel@intel.com>
References: <20200210202853.1546453-1-matthew.d.roper@intel.com>
In-Reply-To: <20200210202853.1546453-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.232]
Content-ID: <93C4676A173AE64586905BC1FEF50A3A@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Add Wa_22010178259:tgl
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2020-02-10 at 12:28 -0800, Matt Roper wrote:
> We need to explicitly set the TLB Request Timer initial value in the
> BW_BUDDY registers to 0x8 rather than relying on the hardware
> default.
> 
> Bspec: 52890
> Bspec: 50044
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 6 ++++++
>  drivers/gpu/drm/i915/i915_reg.h                    | 1 +
>  2 files changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 6e55e88ca0d0..2ad2694a28e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -5001,6 +5001,12 @@ static void tgl_bw_buddy_init(struct
> drm_i915_private *dev_priv)
>  			       table[i].page_mask);
>  		intel_de_write(dev_priv, BW_BUDDY2_PAGE_MASK,
>  			       table[i].page_mask);
> +
> +		/* Wa_22010178259:tgl */
> +		intel_de_rmw(dev_priv, BW_BUDDY1_CTL,
> +			     BW_BUDDY_TLB_REQ_TIMER_MASK, 0x8);
> +		intel_de_rmw(dev_priv, BW_BUDDY2_CTL,
> +			     BW_BUDDY_TLB_REQ_TIMER_MASK, 0x8);

This will clear BW_BUDDY_TLB_REQ_TIMER_MASK and set 0x8, while it
should be 0x8 << 16(adding a macro for that)

>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h
> index a6847f26678c..d829b9ae8402 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7766,6 +7766,7 @@ enum {
>  #define BW_BUDDY1_CTL			_MMIO(0x45140)
>  #define BW_BUDDY2_CTL			_MMIO(0x45150)
>  #define   BW_BUDDY_DISABLE		REG_BIT(31)
> +#define   BW_BUDDY_TLB_REQ_TIMER_MASK	REG_GENMASK(21, 16)
>  
>  #define BW_BUDDY1_PAGE_MASK		_MMIO(0x45144)
>  #define BW_BUDDY2_PAGE_MASK		_MMIO(0x45154)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
