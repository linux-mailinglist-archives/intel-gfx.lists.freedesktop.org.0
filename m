Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA2F1A8DE9
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 23:45:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECED06E59F;
	Tue, 14 Apr 2020 21:45:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7EB16E59F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 21:45:00 +0000 (UTC)
IronPort-SDR: k8zKWRfvPuvjEnmpgiwLRsNr2mgbK0688WQylD4w1a1D59iUmhA8Z5mo/v2RFcnOOmvdSgfTfu
 lPCGgt3P/nuw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 14:45:00 -0700
IronPort-SDR: 4JZaW140LNssbeXdvQiH92P93pmEo6y/8QTnZie7L6sIuLzVMr/Hq1G4Rx0dUvRpwv9uCyZaL9
 W3BHNbkfefsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,384,1580803200"; d="scan'208";a="400091287"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga004.jf.intel.com with ESMTP; 14 Apr 2020 14:44:59 -0700
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 14 Apr 2020 14:44:59 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.62]) by
 FMSMSX125.amr.corp.intel.com ([169.254.2.68]) with mapi id 14.03.0439.000;
 Tue, 14 Apr 2020 14:44:59 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/3] drm/i915/tgl: Extend Wa_1409767108:tgl
 to B0 stepping
Thread-Index: AQHWEqFNktx8OhcqmUKEOfIJDGcJBqh5nHWA
Date: Tue, 14 Apr 2020 21:44:57 +0000
Message-ID: <e407af661a1f8dd28eaf25d907eea64c8ba7a94a.camel@intel.com>
References: <20200414211118.2787489-1-matthew.d.roper@intel.com>
 <20200414211118.2787489-2-matthew.d.roper@intel.com>
In-Reply-To: <20200414211118.2787489-2-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.209.55.81]
Content-ID: <05F74A24A50E1E44B44E037FCBAE8998@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/tgl: Extend Wa_1409767108:tgl
 to B0 stepping
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

On Tue, 2020-04-14 at 14:11 -0700, Matt Roper wrote:
> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 433e5a81dd4d..6cc0e23ca566 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -5024,7 +5024,7 @@ static void tgl_bw_buddy_init(struct
> drm_i915_private *dev_priv)
>  	const struct buddy_page_mask *table;
>  	int i;
>  
> -	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_A0))
> +	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_B0))

Just notice now, TGL_REVID_B0 is defined in the second patch so please
reorder or add TGL_REVID_B0 in here.

>  		/* Wa_1409767108: tgl */
>  		table = wa_1409767108_buddy_page_masks;
>  	else
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
