Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A70C126779E
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Sep 2020 06:00:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4223B88161;
	Sat, 12 Sep 2020 04:00:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4897C6E0F8
 for <intel-gfx@lists.freedesktop.org>; Sat, 12 Sep 2020 04:00:53 +0000 (UTC)
IronPort-SDR: yhqVauL8PUadpmNgRxPuVTPlJ1rK+GnKIH+GhjHeW2OBWlMaOCC6aCquOpBL66/2CGSnQpnsn7
 QeKRZgIx/T0A==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="158172434"
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="158172434"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 21:00:51 -0700
IronPort-SDR: 48Few5NOftWJ5U8cjnuy8E+WYzRsnnY9Fuc9c+WOFYcO4BtKd5LPWK2Wug2DMg4YztiAgfieve
 pI/uIukumqMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="337692266"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga002.fm.intel.com with ESMTP; 11 Sep 2020 21:00:50 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 11 Sep 2020 21:00:49 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 11 Sep 2020 21:00:49 -0700
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14]) by
 ORSMSX601.amr.corp.intel.com ([10.22.229.14]) with mapi id 15.01.1713.004;
 Fri, 11 Sep 2020 21:00:49 -0700
From: "Dhanavanthri, Swathi" <swathi.dhanavanthri@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/tgl, rkl: Make
 Wa_1606700617/22010271021 permanent
Thread-Index: AQHWiKErHWNCBgVgzU63hXvFtjB5NqlkYSNA
Date: Sat, 12 Sep 2020 04:00:49 +0000
Message-ID: <ab65ffc77785459588e22ea0f76d6e28@intel.com>
References: <20200911221158.4700-1-swathi.dhanavanthri@intel.com>
 <20200912011026.GA265632@intel.com>
In-Reply-To: <20200912011026.GA265632@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl,
 rkl: Make Wa_1606700617/22010271021 permanent
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It is in the if statement: if (IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {

-----Original Message-----
From: Rodrigo Vivi <rodrigo.vivi@intel.com> 
Sent: Friday, September 11, 2020 6:10 PM
To: Dhanavanthri, Swathi <swathi.dhanavanthri@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl, rkl: Make Wa_1606700617/22010271021 permanent

On Fri, Sep 11, 2020 at 03:11:58PM -0700, Swathi Dhanavanthri wrote:
> This workaround applies to all TGL and RKL steppings.
> 
> Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c 
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 39817c5a7058..6c580d0d9ea8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1729,10 +1729,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  			     GEN6_RC_SLEEP_PSMI_CONTROL,
>  			     GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE |
>  			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
> -	}
>  
> -	if (IS_TGL_U(i915) || IS_TGL_Y(i915)) {

please notice this function is called for other gens.
In case you need to extend this to other platforms, please add them to the if instead of removing the if.

> -		/* Wa_1606700617:tgl */
> +		/*
> +		 * Wa_1606700617:tgl
> +		 * Wa_22010271021:tgl,rkl
> +		 */
>  		wa_masked_en(wal,
>  			     GEN9_CS_DEBUG_MODE1,
>  			     FF_DOP_CLOCK_GATE_DISABLE);
> --
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
