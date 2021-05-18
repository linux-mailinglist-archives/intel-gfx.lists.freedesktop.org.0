Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9EF3871F1
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 08:33:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 353F989DFB;
	Tue, 18 May 2021 06:33:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDEA2896E5
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 May 2021 06:33:08 +0000 (UTC)
IronPort-SDR: hsAsMGBwk0XRkd20K1evvXlNHyGnVqrVPWOYbWBjq7i/Quo/boQR1hSgDHPcfoB49Y85KMQuLg
 +T54akkMT4nw==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="187765686"
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="187765686"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 23:33:07 -0700
IronPort-SDR: Ax8vjaapAX9dcd0f2i+CI0DnLaNsombtTjLKVpn+CKETsdLHe1hJgdGodMI6rT6HAT+YBqa5h1
 eFvLphZF0W3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="404723130"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 17 May 2021 23:33:07 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 17 May 2021 23:33:07 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 17 May 2021 23:33:06 -0700
Received: from bgsmsx605.gar.corp.intel.com ([10.67.234.7]) by
 BGSMSX605.gar.corp.intel.com ([10.67.234.7]) with mapi id 15.01.2106.013;
 Tue, 18 May 2021 12:03:04 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v4 02/23] drm/i915/xelpd: Support DP1.4
 compression BPPs
Thread-Index: AQHXSTfkrvZMLBnnqEeaqfHvdm6xn6rncUAAgAFbaWA=
Date: Tue, 18 May 2021 06:33:04 +0000
Message-ID: <fceb76bb5a6d4988a52ece51400c904c@intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
 <20210515031035.2561658-3-matthew.d.roper@intel.com>
 <87r1i5fkwz.fsf@intel.com>
In-Reply-To: <87r1i5fkwz.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.108.32.68]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 02/23] drm/i915/xelpd: Support DP1.4
 compression BPPs
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

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani
> Nikula
> Sent: Monday, May 17, 2021 8:49 PM
> To: Roper, Matthew D <matthew.d.roper@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH v4 02/23] drm/i915/xelpd: Support DP1.4
> compression BPPs
> 
> On Fri, 14 May 2021, Matt Roper <matthew.d.roper@intel.com> wrote:
> > From: Vandita Kulkarni <vandita.kulkarni@intel.com>
> >
> > Support compression BPPs from bpc to uncompressed BPP -1.
> > So far we have 8,10,12 as valid compressed BPPS now the support is
> > extended.
> >
> > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 5c9222283044..16cdec9a4aa3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -521,6 +521,7 @@ static u16 intel_dp_dsc_get_output_bpp(struct
> drm_i915_private *i915,
> >  	drm_dbg_kms(&i915->drm, "Max small joiner bpp: %u\n",
> >  		    max_bpp_small_joiner_ram);
> >
> > +
> >  	/*
> >  	 * Greatest allowed DSC BPP = MIN (output BPP from available Link
> BW
> >  	 * check, output bpp from small joiner RAM check)
> 
> What happened here? This is the full patch?
I see that the rest of the patch is merged.

Thanks
Vandita
> 
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
