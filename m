Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D81E3299F1
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Mar 2021 11:29:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F02389F0A;
	Tue,  2 Mar 2021 10:29:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7913F89F0A
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Mar 2021 10:29:52 +0000 (UTC)
IronPort-SDR: 4/1SEyf/tBBbeevkudkI1Al909o2FNrHyoqNvnuUv4hnjLOkTYnjQjqLUbZbEkbKN81dkiJRN3
 IdHgcvWvYXbw==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="166006150"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="166006150"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 02:29:52 -0800
IronPort-SDR: d0N7+jev7UtqzEsu2Qje0UKf+1Wm2IYhN8GY/yQ1VrPSJN5oDT/6upvCwX6hCxyzyLeICVPhcq
 KI/N2oROn3Tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="517784170"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by orsmga004.jf.intel.com with ESMTP; 02 Mar 2021 02:29:51 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 2 Mar 2021 10:29:49 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.002;
 Tue, 2 Mar 2021 15:59:48 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 6/9] drm/i915/mso: add splitter state
 readout for platforms that support it
Thread-Index: AQHXAIWgS4v3OqO73U+mE3KHgjtWMKpjv5CAgABaNQCADCWVAIAAXTZw
Date: Tue, 2 Mar 2021 10:29:48 +0000
Message-ID: <b496471ef06047b1b12a8977c364769a@intel.com>
References: <cover.1613054234.git.jani.nikula@intel.com>
 <6fb9f831672c951c00d92f1176bd42d3b0f30145.1613054234.git.jani.nikula@intel.com>
 <485ac3466f8945afa89a79d4d979f0d1@intel.com> <87eeh8f3et.fsf@intel.com>
 <87czwhq2df.fsf@intel.com>
In-Reply-To: <87czwhq2df.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 6/9] drm/i915/mso: add splitter state
 readout for platforms that support it
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
Cc: "Varide, Nischal" <nischal.varide@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Tuesday, March 2, 2021 3:55 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Varide, Nischal <nischal.varide@intel.com>; Ville Syrj=E4l=E4
> <ville.syrjala@linux.intel.com>
> Subject: RE: [Intel-gfx] [PATCH v3 6/9] drm/i915/mso: add splitter state =
readout for
> platforms that support it
> =

> On Mon, 22 Feb 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> > On Mon, 22 Feb 2021, "Shankar, Uma" <uma.shankar@intel.com> wrote:
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> >>> b/drivers/gpu/drm/i915/display/intel_display_types.h
> >>> index 71611b596c88..5564db512d22 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> >>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> >>> @@ -1161,6 +1161,13 @@ struct intel_crtc_state {
> >>>  		u8 pipeline_full;
> >>>  		u16 flipline, vmin, vmax;
> >>>  	} vrr;
> >>> +
> >>> +	/* Stream Splitter for eDP MSO */
> >>> +	struct {
> >>> +		bool enable;
> >>> +		u8 link_count;
> >>> +		u8 pixel_overlap;
> >>> +	} splitter;
> >>
> >> For DSI which also has this in common along with MSO, may be we can
> >> take these link_count and pixel_overlap out of splitter which is more
> >> of a MSO feature. Thoughts ?
> >
> > Ville suggested the same I think.
> =

> Coming back to this. DSI does not actually use crtc state for this curren=
tly. But it
> does use the display stream splitter. The register is different, but the =
functionality is
> roughly the same.
> =

> I suggest we keep the "splitter" substruct as above, and convert DSI code=
 to use it in
> follow-up.
> =

> In early versions of the patch the substruct was called "mso"; I think "s=
plitter" is
> better, and captures both MSO and DSI cases.
> =

> I'll send v4 with the other suggested changes.

Makes sense, I am ok with this.

Regards,
Uma Shankar

> BR,
> Jani.
> =

> =

> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
