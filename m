Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDC62C889A
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 16:51:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DDA46E513;
	Mon, 30 Nov 2020 15:50:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A64966E4D4
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 15:50:56 +0000 (UTC)
IronPort-SDR: VaygmlMw7se55zW+LM102gNmrekUtwW4T4/enBgPQ/IHENHty338u5Fd/H4eZ3fCoBbdD6ZGZa
 5/YrLd4UOkFQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="160428804"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="160428804"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 07:50:55 -0800
IronPort-SDR: ZizrWjDHIO/2cHLeBIeRKaOx0TE0SgjWZH8NcEePt2bY1qoo0O3EBnY7zDqSHDpLz1+jBuPfog
 yeNQASN/Otsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="345109320"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga002.jf.intel.com with ESMTP; 30 Nov 2020 07:50:54 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 30 Nov 2020 07:50:54 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 30 Nov 2020 07:50:53 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 30 Nov 2020 07:50:53 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 30 Nov 2020 07:50:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O/MKhgfET9dwRjvB9AB87fv3wjx1m11eLlbXeV6D9z/EYsHZiRBgcPjGg0rKjJrCc1ZDsqeXAcrx5UOHmUXEoUwLZtNxJeoDbN1UMpm9+Z/zzeuy69Br2dQMQ1nsYXvvtRaMotcza7hCFdyZZBLOqhuw4VP1q3nRMz5vQi7iEw73yz3AAmh9gZKRGdYeVrStj2kUYSziBnodnA/Xm/jf3YAs9sPSwqz0+bptKLXfGCrqMy6i0kmpI3bhTRIkf2fn7ztPYIoVtZPH/ArGk9sf4SHez+idzIqshJ5bpZbQu9LArq6hMgjBBKFMayTx80kfelZFE0LWVyAjw2aWXHnZ5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Yj7osHe/GZU2y0t5joL0bvvwZP7RR5EXLAOlUt6OpY=;
 b=LUgtB69m76UkGvs+O41N4dhoUFbBvm/J5UBd6PSl8zyYuAeLCIOFY4CJn06tg4zEQi0KVa61ORHvQWVhfI9D5bh5Deu8hUQh6qZvB130c9CyM9Mk8UbbT+Re94UWGsY6tN8EE6nnlBm8IJcZa1wbLrruDN+GDWZRQJs+F23QX8wIouJUQOycEL8sCtX3T/CzOmZ3yeOMqZb8uJLuVaB/wddH6GbIKDV9A7NwgzJGgGfmb6o/+6g9Nymc7dTWRVApMaqhX93xb90TGMdOK28Ib6BKxNPBEKIhXqlFieIlRjFWaWNuQDSy3q+KXbfG4CNIhp0cSpjdkjO1WV9o193ezA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Yj7osHe/GZU2y0t5joL0bvvwZP7RR5EXLAOlUt6OpY=;
 b=EJJdUnV/i2C2kqPsfYrhjrxPK667vuFarm5sKTgs5AjnRbqF1SbOI+Zoza12K43wEO757TZ6tUwHiiLgZYaVaFAOXCuHNA1hnUgF7kDvFOj6Nqrw8pZgOrQV2D6uUr+wSVQjYkBG4+x76rxBcQoFv+95uOYXdRdJC+tjsYrtPro=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SA2PR11MB5019.namprd11.prod.outlook.com (2603:10b6:806:f8::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.21; Mon, 30 Nov
 2020 15:50:51 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::a975:345b:8dcc:50ff]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::a975:345b:8dcc:50ff%6]) with mapi id 15.20.3611.025; Mon, 30 Nov 2020
 15:50:51 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH V2] drm/i915/jsl: Disable cursor clock gating in HDR mode
Thread-Index: AQHWsXSbi1xYJJrbF0qesOYo/ZTTCqng+fSQ
Date: Mon, 30 Nov 2020 15:50:51 +0000
Message-ID: <SN6PR11MB3421C859BD47570139D7A694DFF50@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20201102073946.158633-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <025cddace9c4164803fb71f770adcf260b7052e4.camel@intel.com>
In-Reply-To: <025cddace9c4164803fb71f770adcf260b7052e4.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [103.240.170.239]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f930d201-beff-4f4e-0394-08d89547b6a1
x-ms-traffictypediagnostic: SA2PR11MB5019:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB50194BC8CF8F3932D270B62FDFF50@SA2PR11MB5019.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1m2a3vvraukrMMvvCUUW0PPgEgvEAw+ad09tMzqVGeEXbmOex49K1QmGMEDRmr7pcTFiyWm5mgjEaZ3E3oTbljLWH5nHekchGeS6KLEO6QuAV6IMhlqoo4pGsuSiLCEV8LuQicU0AunwxYoBRjAwdDD1G2kRNDpNdaDnQVK8k07HJvLm6CbRvlDXfvBEZP5inAyBflOH1mN/w6PBASixM4thc1WjzNGS5OjGFjs1TGXfC3qTdK+wL/YLf/P0n+Bl/XuZ2eba1ZgNwBbwwY4qDfP+Hv1JbOG/lTs6iX6xGeu/UpuS8VC2w3TgQwS4VYL904hWeWriNd5KKws98/r3Og==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(39860400002)(136003)(396003)(366004)(52536014)(5660300002)(71200400001)(83380400001)(86362001)(2906002)(107886003)(8676002)(4326008)(9686003)(7696005)(6506007)(26005)(33656002)(55016002)(316002)(186003)(64756008)(66446008)(66946007)(66476007)(76116006)(53546011)(110136005)(478600001)(8936002)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?U01ML20yOHhWYnYwbHdrZklIREhFV2JGWXRqVW45K2g4NTZXMFRXZjY4RlBw?=
 =?utf-8?B?M2lrellnWlRTcytIWWlYQWdvQjhPV2ZPd0dTT2pLZ0VCZ0hHTzd6T0xOVHZk?=
 =?utf-8?B?Qmh6NVdNdGF6TWlIMHd4dnZXbXdMazVrZ2Yzd1BibTNJdnRsVmxuOExaM254?=
 =?utf-8?B?WU5BOUlrNEtFZFJwcSt3ZGlOMFRLQmhveXdMK2lsTGw4K2M5MzZLaHc2RW5W?=
 =?utf-8?B?YTByRCtBenhZODhkL2lzbUIzTlFhblFlZmNpMjZzL0lHa2hKMzlsblJVWUtY?=
 =?utf-8?B?SVl4L0E0WElURjFGbTJGdDdMTzZRNHF3YUcrYlJPcWxsS1pxRTRzamw1bkZa?=
 =?utf-8?B?S0M2Z01BWHl2RnZzWEhzcDRvUytFM1V0ZmhCU1h5OG5MYWY4OHRCU0JFWTRM?=
 =?utf-8?B?a3lXYy8zMDFjamNWWFR1UXhUT1pWR0kvVlhTYXJFQk1JdFZPaUVjNGdvbHNl?=
 =?utf-8?B?VzVNc24vY29WeEVZbUtzdS9mVDRUaFQvVkZERHRCME40TENCRzU5QkRJQTVS?=
 =?utf-8?B?Zkx4bG1TVENpQ01ra1hJTEJkbTNRbXdvSVVSb1N6VlFKNm9RcVBNcFltUXU2?=
 =?utf-8?B?WHV3Mk5NcmIvbXpJUVg3M28xdTFvdDFXMUVkRC9BcDlEdVFMdjVhT2VaWmVY?=
 =?utf-8?B?WGVXUDE4WlhLMkFqandqZ2pPSFl3akJIcTJWdUdHWnZWWGUxRFdObmhxU2Rs?=
 =?utf-8?B?eEJ1TW12blozbkloTUtpaDdmb2xlcWM0RG9KUHdEcld4NWo2bjU3UkF1Z0gr?=
 =?utf-8?B?Q3NYelNpNmRsclE3akdtM05uM0ZXdFhjT2E3dnBUdGQ3K1JIbHR6VU1hbUR0?=
 =?utf-8?B?SkRNSzlBWkpYSlBmdmdlZUJJL01UVUJJNkJtcVBveC9QcVYvb0FKREdFUWpJ?=
 =?utf-8?B?elRhUjkvQXZBY0wzOWhHUlhzSGhaTlI5N3lCTnFmbjQrTmR1MG8xK2VvNWdP?=
 =?utf-8?B?RmJadTVuY3RRUlUwd1BGRjlraVZGL2VuZjY2c1BGeEF6YlFlekEvam02NGls?=
 =?utf-8?B?MWdvQ1dkYzBOeUgzRFdIUmNoWVM5U2M4OXF2cnVVdVdaY0phbTdzWDdncGpJ?=
 =?utf-8?B?NWpVVGxzdEsycU15ZWtCdDYycmlFRXNFNTdwRnhSVUpyaVU4dHJNNVEya09p?=
 =?utf-8?B?blNkNkJTYXVGeHJXZUIxQnc3c1B3MGdRQzlEWTBaR2ZYWTVHeDZsb2hHbGR4?=
 =?utf-8?B?aTh2aEVpV3ltTnZtNFBGZU5Id29BSU8yL2lQL2FmTDhhQmZkNlA4SnJQSHBm?=
 =?utf-8?B?dytTWklMRHlmZjc4OEEzVy85bTJWVEFyeCt4YW9tZ1FQczAvQWhER2RqTTdV?=
 =?utf-8?Q?oEhd53bU2UUNM=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f930d201-beff-4f4e-0394-08d89547b6a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2020 15:50:51.0658 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 61vves9cYu1beorlXjrKloRXKVOkiO3lyNV9qnaYq34uujV3KNVCwfbB2UDSOsfXWFy5nir3XTZwVzSZG9J+RSElDWantBJcZOqWptbFgsj49aZhWnZfYifs8iNamTBBfnpiAHirrg9S0ef+nH2JyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5019
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/jsl: Disable cursor clock
 gating in HDR mode
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
Cc: "Pandey, Hariom" <hariom.pandey@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Souza, Jose <jose.souza@intel.com>
> Sent: 03 November 2020 05:32
> To: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Pandey, Hariom <hariom.pandey@intel.com>
> Subject: Re: [PATCH V2] drm/i915/jsl: Disable cursor clock gating in HDR
> mode
> 
> On Mon, 2020-11-02 at 13:09 +0530, Tejas Upadhyay wrote:
> > Display underrun in HDR mode when cursor is enabled.
> > RTL fix will be implemented CLKGATE_DIS_PSL_A bit 28-46520h.
> > As per W/A 1604331009, Disable cursor clock gating in HDR mode.
> >
> > Bspec : 33451
> >
> > Changes since V1:
> > - Modified way CLKGATE_DIS_PSL bit 28 was modified
> >
> > Cc: Souza Jose <jose.souza@intel.com>
> > Signed-off-by: Tejas Upadhyay
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 28 ++++++++++++++++++++
> >  drivers/gpu/drm/i915/i915_reg.h              |  5 ++++
> >  2 files changed, 33 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index cddbda5303ff..b132585d9e78 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -541,6 +541,15 @@ icl_wa_scalerclkgating(struct drm_i915_private
> *dev_priv, enum pipe pipe,
> >                 intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) &
> > ~DPFR_GATING_DIS);  }
> >
> >
> >
> >
> >
> >
> >
> >
> > +/* Wa_1604331009:jsl */
> > +static void
> > +jsl_wa_cursorclkgating(struct drm_i915_private *dev_priv, enum pipe
> pipe,
> > +       bool enable)
> 
> if this is a gen11 WA why naming as jsl? also include in the comment icl and
> ehl.
> 
> > +{
> > +intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe),
> > +     CURSOR_GATING_DIS, enable ? CURSOR_GATING_DIS : 0); }
> > +
> >  static bool
> >  needs_modeset(const struct intel_crtc_state *state)  { @@ -6637,6
> > +6646,16 @@ static bool needs_scalerclk_wa(const struct
> > intel_crtc_state *crtc_state)  return false;  }
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> > +static bool needs_cursorclk_wa(const struct intel_crtc_state
> > +*crtc_state) { struct drm_i915_private *dev_priv =
> > +to_i915(crtc_state->uapi.crtc->dev);
> 
> line break here
> 
> > +/* Wa_1604331009:jsl */
> > +if (crtc_state->active_planes & icl_hdr_plane_mask() &&
> > +    IS_GEN(dev_priv, 11))
> > +return true;
> 
> line break here
> 
> > +return false;
> > +}
> > +
> >  static bool planes_enabling(const struct intel_crtc_state *old_crtc_state,
> >      const struct intel_crtc_state *new_crtc_state)  { @@ -6678,6
> > +6697,10 @@ static void intel_post_plane_update(struct
> > intel_atomic_state *state,  if (needs_scalerclk_wa(old_crtc_state) &&
> >      !needs_scalerclk_wa(new_crtc_state))
> >  icl_wa_scalerclkgating(dev_priv, pipe, false);
> > +
> > +if (needs_cursorclk_wa(old_crtc_state) &&
> > +    !needs_cursorclk_wa(new_crtc_state))
> > +jsl_wa_cursorclkgating(dev_priv, pipe, false);
> >  }
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >  static void skl_disable_async_flip_wa(struct intel_atomic_state
> > *state, @@ -6743,6 +6766,11 @@ static void
> intel_pre_plane_update(struct intel_atomic_state *state,
> >      needs_scalerclk_wa(new_crtc_state))
> >  icl_wa_scalerclkgating(dev_priv, pipe, true);
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> > +/* Wa_1604331009:jsl */
> > +if (!needs_cursorclk_wa(old_crtc_state) &&
> > +    needs_cursorclk_wa(new_crtc_state))
> > +jsl_wa_cursorclkgating(dev_priv, pipe, true);
> 
> Like the idea of only enable the WA when a HDR plane is enabled but there is
> some problems:
> - never disable the wa
> - not checking if a cursor plane is also active
> - calling it in the post and pre plane update, I think only the pre is needed
> - checking the old state, no need to do optimizations like that for just one
> MMIO write
> 
> other thing, would be better have the wa function being called and inside of
> that function it will check if the WA is needed and write to the register, no
> need of a function to check if needs and another to apply the WA.

Tejas : I have addressed all above review comments in next patchset.

> 
> ICL WA description says that it can only be applied if "CUR_CTL[18],
> CUR_CTL[16] or CUR_COLOR_CTL[15]" is not set, did you checked if when a
> HDR plane is enabled it causes a complete modeset(disable pipe, set wa,
> enable pipe) in the pipe? if that happens it is complying if not we have a
> problem here.

Tejas : Would you elaborate more this scenario? As far as I understand once planes are attached to CRTC/pipe they can be updated runtime. Are you referring planes attached to CRTC/pipe will change while CRTC is enable? I would like to understand if I am missing something.  

> 
> > +
> >  /*
> >   * Vblank time updates from the shadow to live plane control register
> >   * are blocked if the memory self-refresh mode is active at that diff
> > --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index bb0656875697..f81a503c5d4b
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -4194,6 +4194,11 @@ enum {
> >  #define INF_UNIT_LEVEL_CLKGATE_MMIO(0x9560)
> >  #define   CGPSF_CLKGATE_DIS(1 << 3)
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> > +/*
> > + * GEN11 clock gating regs
> > + */
> > +#define   CURSOR_GATING_DISBIT(28)
> 
> should be defined between other CLKGATE_DIS_PSL bits.
> 
> > +
> >  /*
> >   * Display engine regs
> >   */
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
