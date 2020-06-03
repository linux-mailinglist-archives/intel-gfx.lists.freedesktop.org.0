Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D9B1EC655
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 02:47:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D73E6E48E;
	Wed,  3 Jun 2020 00:47:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2A356E48E
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jun 2020 00:47:33 +0000 (UTC)
IronPort-SDR: yUpQ11CUkDMmvCtaSoOMo0EuIMoZvFvObsgEKfYoS7w6LGYZgnLdvFBrXNa5PIe08CiLL6p6ui
 3zmQRKrbkCbQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2020 17:47:33 -0700
IronPort-SDR: 0Jol1AnNwIEvXGjy819DTtdZ6LmxyndySSQaSKSIiqjlsJW+VKpaWXAaQ6VAFfKSuN7JJCy/kv
 C9mEYyq2lQLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,466,1583222400"; d="scan'208";a="268898539"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga003.jf.intel.com with ESMTP; 02 Jun 2020 17:47:33 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 2 Jun 2020 17:47:32 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX152.amr.corp.intel.com (10.22.226.39) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 2 Jun 2020 17:47:32 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 2 Jun 2020 17:47:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GQQrigh33QzSM0OL7H+N9ch88LNpPzMUFKedHeVzcPsyXZYIuDVyYJCdSvMxa9iV0asKTD6c3dKXvyie/GHRiGqOb0rnTeWVoF3VXiqCVIUo3GEGaNKJTt+0QAl2xAhVHo3vNMU8Dch6rSMo/ylNbNPnQBL4L4fQ6QvaM8/T8gC4jA326NEtiRJItgAxvPY2bY5kpzPhLB8SvRNDLOMv+roF3GrTs8tTTWOH5FuUHbRJnT5UcAg+YkuQe5WvnDjjr4+xeFsaJ2pziTFsqJwXTNol6x1x/4stsLy0udP0epPPizzYlXc0Wpsq0LmS4G6TOzqZUWDvtHRR7zVVp5zb2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RgXpSW0XS0oYyJIsD1RO7un10HPA7QIGgg7PvUho0jU=;
 b=SV3GfPVXvTmRGlaSVax2TaUZx9eVW1CP5rvwuC4c0CzTVeJlRI8JT3NfnvqO79W3IRwAc/7Ejz2bFVN3uKkPIxN+/z+51Uy3eF2vY+rg6vapv9A+sX2yRaRDkso6LEfiBEewUujW/P8iwTGaIbq/yfJWNk06wUkXjy4Xt0oTx361PF8tmbhnvWz6jimtKjWYVdQtXpY9rQikSkbCTjBoHBUnR4VoKH9VRjfbyBFcqiCy0xjf+sH12qkIKu13PLWg2K5uufInDWG3IvoWYkSlfCP3TZYq8Sk8YXE9Ryc/dLHhtQoGlNEG7g3hfR5DfWn9M+YvqLV4AhAjRHL20E9Trw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RgXpSW0XS0oYyJIsD1RO7un10HPA7QIGgg7PvUho0jU=;
 b=IM+WLpaCT69dO2W8pym+bskWlC/XWCZxkMs0RCREnpyS6CkHZCPa8Q9dN9MO69mRV4JD8hjZAXXqhswr2R/Mw9345dF+MjyyFZ/fEzTfu5wCFKKaSBgIiTne9QsjH4Y92kjX0prlzuKLm2zb5542qdP43Hh/rIbFe+siO9gskWY=
Received: from BYAPR11MB3799.namprd11.prod.outlook.com (2603:10b6:a03:fb::19)
 by BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Wed, 3 Jun
 2020 00:47:20 +0000
Received: from BYAPR11MB3799.namprd11.prod.outlook.com
 ([fe80::c1fa:ce38:c280:58f6]) by BYAPR11MB3799.namprd11.prod.outlook.com
 ([fe80::c1fa:ce38:c280:58f6%3]) with mapi id 15.20.3045.024; Wed, 3 Jun 2020
 00:47:20 +0000
From: "Abodunrin, Akeem G" <akeem.g.abodunrin@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Drop i915_request.i915 backpointer
Thread-Index: AQHWOSqpQqZCZAVc/06n+Utor6y6VajGDlRQ
Date: Wed, 3 Jun 2020 00:47:20 +0000
Message-ID: <BYAPR11MB37992EB765C6984C3391BAF1A9880@BYAPR11MB3799.namprd11.prod.outlook.com>
References: <20200602220953.21178-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200602220953.21178-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: chris-wilson.co.uk; dkim=none (message not signed)
 header.d=none;chris-wilson.co.uk; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [134.134.136.216]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e295e757-5b72-448f-bad3-08d80757ac25
x-ms-traffictypediagnostic: BYAPR11MB3256:
x-microsoft-antispam-prvs: <BYAPR11MB3256AE297DB362748C9216FEA9880@BYAPR11MB3256.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 04238CD941
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SayJQOCr36TmgCdEwkb5HFr7NvxKiQgrIi9uHMR5eqqln6ou258PcS+8DhgPWrefBBFN30Rxs/QhezfzLZyTdePdIibXd1Sx3eJOH8IY+IuS0hkpyyOPY/FxyRNh7spW/ad1w/m/9UstSQz/b7lOYmPSbPEzctMtMIB449nK3Ke+mg0pC45sZZw8SFUvuJsdu76XMsImiojvPBz8nJibVgxDsQZNPsTHS7wmCJBj6w9h/v+bNr2MrP8AwAPzNC5ZndDvDjg01ktUG6pDOoGqRhHg9C+UP14oI8ewmyO+5dx/WAEPqsE4VBtPFZL55PReu1383sBBaq1rnLHKI4udVgEs0USf1ykN8+zIoXIAr/0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3799.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(396003)(346002)(366004)(136003)(376002)(76116006)(478600001)(66556008)(2906002)(66946007)(186003)(33656002)(66446008)(64756008)(26005)(71200400001)(66476007)(86362001)(8936002)(316002)(7696005)(8676002)(6506007)(83380400001)(110136005)(53546011)(52536014)(9686003)(55016002)(966005)(30864003)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: +kYgV+U019azN4q4BCPF+7wfWX8f4l7c/sumPoxwLf2hgzxNpCk1Uv0uOut7CF532cCTGQrfL6NrnooBhxU62Xzm144ZzCMYsij0kIEwxLowToUIV+VGsaA7lXcJBnItF8DJiGE4jkEtN41vnhUpENxtawp7yA64ShdtNTrid5U9Z7vMHHRt+AhEXLQ86Q5D62LbNpWBo/zchlgj0zUnx+2t4mO9+6iDyP2Yu7GBuTDhEPAog9YJ2HH34jZwf2b9h1OtiD61O6ZeWiknpptEoFNUlUsRnPDQ/GHrwzwJ08zaQ9yfAXIX2RghQPLxMEyw9u2BgzvMJdxRgfcGYvj982KRTNTuk9gablmCF3geoJ9VQetZNPXqNEBOsh1D2jImAvvtkmdqmbGbZPxrWK00Mn9ADH3fHiT56vPhMV/bh5Ysn1AKxzsJKNmrTjQyEDJjNhv4c5MgaY1vcgaOH0XcoX7ZCRS7UN1MXlVfkZIGAPUEprrHOwTW5SRwIOVW3E8j
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e295e757-5b72-448f-bad3-08d80757ac25
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2020 00:47:20.2969 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N95uTFPAAsdm6qeZL0LiTJY8znQYxNaS5T7Ew1Q3ZREG+lVA6qXvoYDejYsA/sTpXW3AaV8en15xzF44XXW2DIVEWsUR5T9bkb7vyqdM5dI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3256
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Drop i915_request.i915 backpointer
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Chris
> Wilson
> Sent: Tuesday, June 02, 2020 3:10 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Subject: [Intel-gfx] [PATCH] drm/i915: Drop i915_request.i915 backpointer
> 
> We infrequently use the direct i915 backpointer from the i915_request, so do
> we really need to waste the space in the struct for it? 8 bytes from the most
> frequently allocated struct vs an 3 bytes and pointer chasing in using rq-
> >engine->i915?
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c  |  4 ++--
>  drivers/gpu/drm/i915/gt/gen2_engine_cs.c        |  2 +-
>  drivers/gpu/drm/i915/gt/intel_context_sseu.c    |  2 +-
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c       |  6 ++----
>  drivers/gpu/drm/i915/gt/intel_lrc.c             |  6 +++---
>  drivers/gpu/drm/i915/gt/intel_ring_submission.c |  6 +++---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c     |  4 ++--
>  drivers/gpu/drm/i915/gt/selftest_engine_cs.c    |  2 +-
>  drivers/gpu/drm/i915/gt/selftest_mocs.c         |  2 +-
>  drivers/gpu/drm/i915/gt/selftest_rc6.c          |  9 ++++-----
>  drivers/gpu/drm/i915/gt/selftest_timeline.c     |  4 ++--
>  drivers/gpu/drm/i915/gvt/scheduler.c            |  4 ++--
>  drivers/gpu/drm/i915/i915_request.c             | 12 ++++++------
>  drivers/gpu/drm/i915/i915_request.h             |  3 ---
>  drivers/gpu/drm/i915/i915_trace.h               | 10 +++++-----
>  drivers/gpu/drm/i915/selftests/i915_perf.c      |  2 +-
>  drivers/gpu/drm/i915/selftests/igt_spinner.c    | 14 +++++++-------
>  17 files changed, 43 insertions(+), 49 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 219a36995b96..02a5c0ce39ca 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1910,8 +1910,8 @@ static int i915_reset_gen7_sol_offsets(struct
> i915_request *rq)
>  	u32 *cs;
>  	int i;
> 
> -	if (!IS_GEN(rq->i915, 7) || rq->engine->id != RCS0) {
> -		drm_dbg(&rq->i915->drm, "sol reset is gen7/rcs only\n");
> +	if (!IS_GEN(rq->engine->i915, 7) || rq->engine->id != RCS0) {
> +		drm_dbg(&rq->engine->i915->drm, "sol reset is gen7/rcs
> only\n");
>  		return -EINVAL;
>  	}
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
> b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
> index 8d2e85081247..3fb0dc1fb910 100644
> --- a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
> @@ -77,7 +77,7 @@ int gen4_emit_flush_rcs(struct i915_request *rq, u32
> mode)
>  	cmd = MI_FLUSH;
>  	if (mode & EMIT_INVALIDATE) {
>  		cmd |= MI_EXE_FLUSH;
> -		if (IS_G4X(rq->i915) || IS_GEN(rq->i915, 5))
> +		if (IS_G4X(rq->engine->i915) || IS_GEN(rq->engine->i915, 5))
>  			cmd |= MI_INVALIDATE_ISP;
>  	}
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_sseu.c
> b/drivers/gpu/drm/i915/gt/intel_context_sseu.c
> index 487299cb91f2..27ae48049239 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_sseu.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context_sseu.c
> @@ -30,7 +30,7 @@ static int gen8_emit_rpcs_config(struct i915_request
> *rq,
>  	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
>  	*cs++ = lower_32_bits(offset);
>  	*cs++ = upper_32_bits(offset);
> -	*cs++ = intel_sseu_make_rpcs(rq->i915, &sseu);
> +	*cs++ = intel_sseu_make_rpcs(rq->engine->i915, &sseu);
> 
>  	intel_ring_advance(rq, cs);
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index c8c14981eb5d..e37490d459c2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -661,7 +661,6 @@ static int measure_breadcrumb_dw(struct
> intel_context *ce)
>  	if (!frame)
>  		return -ENOMEM;
> 
> -	frame->rq.i915 = engine->i915;
>  	frame->rq.engine = engine;
>  	frame->rq.context = ce;
>  	rcu_assign_pointer(frame->rq.timeline, ce->timeline); @@ -1192,8
> +1191,7 @@ bool intel_engine_can_store_dword(struct intel_engine_cs
> *engine)
>  	}
>  }
> 
> -static int print_sched_attr(struct drm_i915_private *i915,
> -			    const struct i915_sched_attr *attr,
> +static int print_sched_attr(const struct i915_sched_attr *attr,
>  			    char *buf, int x, int len)
>  {
>  	if (attr->priority == I915_PRIORITY_INVALID) @@ -1213,7 +1211,7
> @@ static void print_request(struct drm_printer *m,
>  	char buf[80] = "";
>  	int x = 0;
> 
> -	x = print_sched_attr(rq->i915, &rq->sched.attr, buf, x, sizeof(buf));
> +	x = print_sched_attr(&rq->sched.attr, buf, x, sizeof(buf));
> 
>  	drm_printf(m, "%s %llx:%llx%s%s %s @ %dms: %s\n",
>  		   prefix,
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c
> b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 6fc0966b75ff..aac8da18694f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -3533,7 +3533,7 @@ static int emit_pdps(struct i915_request *rq)
>  	int err, i;
>  	u32 *cs;
> 
> -	GEM_BUG_ON(intel_vgpu_active(rq->i915));
> +	GEM_BUG_ON(intel_vgpu_active(rq->engine->i915));
> 
>  	/*
>  	 * Beware ye of the dragons, this sequence is magic!
> @@ -4512,11 +4512,11 @@ static int gen8_emit_flush_render(struct
> i915_request *request,
>  		 * On GEN9: before VF_CACHE_INVALIDATE we need to emit
> a NULL
>  		 * pipe control.
>  		 */
> -		if (IS_GEN(request->i915, 9))
> +		if (IS_GEN(request->engine->i915, 9))
>  			vf_flush_wa = true;
> 
>  		/* WaForGAMHang:kbl */
> -		if (IS_KBL_REVID(request->i915, 0, KBL_REVID_B0))
> +		if (IS_KBL_REVID(request->engine->i915, 0, KBL_REVID_B0))
>  			dc_flush_wa = true;
>  	}
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index d9c1701061b9..68a08486fc87 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -645,8 +645,8 @@ static inline int mi_set_context(struct i915_request
> *rq,
>  				 struct intel_context *ce,
>  				 u32 flags)
>  {
> -	struct drm_i915_private *i915 = rq->i915;
>  	struct intel_engine_cs *engine = rq->engine;
> +	struct drm_i915_private *i915 = engine->i915;
>  	enum intel_engine_id id;
>  	const int num_engines =
>  		IS_HASWELL(i915) ? RUNTIME_INFO(i915)->num_engines - 1 :
> 0; @@ -760,7 +760,7 @@ static inline int mi_set_context(struct i915_request
> *rq,
> 
>  static int remap_l3_slice(struct i915_request *rq, int slice)  {
> -	u32 *cs, *remap_info = rq->i915->l3_parity.remap_info[slice];
> +	u32 *cs, *remap_info = rq->engine->i915-
> >l3_parity.remap_info[slice];
>  	int i;
> 
>  	if (!remap_info)
> @@ -871,7 +871,7 @@ static int switch_context(struct i915_request *rq)
>  	void **residuals = NULL;
>  	int ret;
> 
> -	GEM_BUG_ON(HAS_EXECLISTS(rq->i915));
> +	GEM_BUG_ON(HAS_EXECLISTS(engine->i915));
> 
>  	if (engine->wa_ctx.vma && ce != engine->kernel_context) {
>  		if (engine->wa_ctx.vma->private != ce) { diff --git
> a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 94d66a9d760d..9ae903f1ab57 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1728,7 +1728,7 @@ wa_list_srm(struct i915_request *rq,
>  	    const struct i915_wa_list *wal,
>  	    struct i915_vma *vma)
>  {
> -	struct drm_i915_private *i915 = rq->i915;
> +	struct drm_i915_private *i915 = rq->engine->i915;
>  	unsigned int i, count = 0;
>  	const struct i915_wa *wa;
>  	u32 srm, *cs;
> @@ -1817,7 +1817,7 @@ static int engine_wa_list_verify(struct intel_context
> *ce,
> 
>  	err = 0;
>  	for (i = 0, wa = wal->list; i < wal->count; i++, wa++) {
> -		if (mcr_range(rq->i915, i915_mmio_reg_offset(wa->reg)))
> +		if (mcr_range(rq->engine->i915, i915_mmio_reg_offset(wa-
> >reg)))
>  			continue;
> 
>  		if (!wa_verify(wa, results[i], wal->name, from)) diff --git
> a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
> b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
> index f88e445a1cae..729c3c7b11e2 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
> @@ -49,7 +49,7 @@ static int write_timestamp(struct i915_request *rq, int
> slot)
>  		return PTR_ERR(cs);
> 
>  	cmd = MI_STORE_REGISTER_MEM | MI_USE_GGTT;
> -	if (INTEL_GEN(rq->i915) >= 8)
> +	if (INTEL_GEN(rq->engine->i915) >= 8)
>  		cmd++;
>  	*cs++ = cmd;
>  	*cs++ = i915_mmio_reg_offset(RING_TIMESTAMP(rq->engine-
> >mmio_base));
> diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c
> b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> index 8831ffee2061..7bae64018ad9 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> @@ -143,7 +143,7 @@ static int read_mocs_table(struct i915_request *rq,  {
>  	u32 addr;
> 
> -	if (HAS_GLOBAL_MOCS_REGISTERS(rq->i915))
> +	if (HAS_GLOBAL_MOCS_REGISTERS(rq->engine->i915))
>  		addr = global_mocs_offset();
>  	else
>  		addr = mocs_offset(rq->engine);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> index 2dc460624bbc..3c8434846fa1 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> @@ -132,7 +132,7 @@ static const u32 *__live_rc6_ctx(struct intel_context
> *ce)
>  	}
> 
>  	cmd = MI_STORE_REGISTER_MEM | MI_USE_GGTT;
> -	if (INTEL_GEN(rq->i915) >= 8)
> +	if (INTEL_GEN(rq->engine->i915) >= 8)
>  		cmd++;
> 
>  	*cs++ = cmd;
> @@ -197,10 +197,10 @@ int live_rc6_ctx_wa(void *arg)
>  		int pass;
> 
>  		for (pass = 0; pass < 2; pass++) {
> +			struct i915_gpu_error *error = &gt->i915->gpu_error;
>  			struct intel_context *ce;
>  			unsigned int resets =
> -				i915_reset_engine_count(&gt->i915-
> >gpu_error,
> -							engine);
> +				i915_reset_engine_count(error, engine);
>  			const u32 *res;
> 
>  			/* Use a sacrifical context */
> @@ -230,8 +230,7 @@ int live_rc6_ctx_wa(void *arg)
>  				 engine->name, READ_ONCE(*res));
> 
>  			if (resets !=
> -			    i915_reset_engine_count(&gt->i915->gpu_error,
> -						    engine)) {
> +			    i915_reset_engine_count(error, engine)) {
>  				pr_err("%s: GPU reset required\n",
>  				       engine->name);
>  				add_taint_for_CI(TAINT_WARN);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c
> b/drivers/gpu/drm/i915/gt/selftest_timeline.c
> index ef1c35073dc0..b2aad7ef046a 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
> @@ -426,12 +426,12 @@ static int emit_ggtt_store_dw(struct i915_request
> *rq, u32 addr, u32 value)
>  	if (IS_ERR(cs))
>  		return PTR_ERR(cs);
> 
> -	if (INTEL_GEN(rq->i915) >= 8) {
> +	if (INTEL_GEN(rq->engine->i915) >= 8) {
>  		*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
>  		*cs++ = addr;
>  		*cs++ = 0;
>  		*cs++ = value;
> -	} else if (INTEL_GEN(rq->i915) >= 4) {
> +	} else if (INTEL_GEN(rq->engine->i915) >= 4) {
>  		*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
>  		*cs++ = 0;
>  		*cs++ = addr;
> diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c
> b/drivers/gpu/drm/i915/gvt/scheduler.c
> index 0fb1df71c637..8fc2ad4517e9 100644
> --- a/drivers/gpu/drm/i915/gvt/scheduler.c
> +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
> @@ -348,7 +348,7 @@ static int copy_workload_to_ring_buffer(struct
> intel_vgpu_workload *workload)
>  	u32 *cs;
>  	int err;
> 
> -	if (IS_GEN(req->i915, 9) && is_inhibit_context(req->context))
> +	if (IS_GEN(req->engine->i915, 9) && is_inhibit_context(req->context))
>  		intel_vgpu_restore_inhibit_context(vgpu, req);
> 
>  	/*
> @@ -939,7 +939,7 @@ static void update_guest_context(struct
> intel_vgpu_workload *workload)
>  	context_page_num = rq->engine->context_size;
>  	context_page_num = context_page_num >> PAGE_SHIFT;
> 
> -	if (IS_BROADWELL(rq->i915) && rq->engine->id == RCS0)
> +	if (IS_BROADWELL(rq->engine->i915) && rq->engine->id == RCS0)
>  		context_page_num = 19;
> 
>  	context_base = (void *) ctx->lrc_reg_state - diff --git
> a/drivers/gpu/drm/i915/i915_request.c
> b/drivers/gpu/drm/i915/i915_request.c
> index c5d7220de529..3bb7320249ae 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -56,7 +56,7 @@ static struct i915_global_request {
> 
>  static const char *i915_fence_get_driver_name(struct dma_fence *fence)  {
> -	return dev_name(to_request(fence)->i915->drm.dev);
> +	return dev_name(to_request(fence)->engine->i915->drm.dev);
>  }
> 
>  static const char *i915_fence_get_timeline_name(struct dma_fence *fence)
> @@ -812,7 +812,6 @@ __i915_request_create(struct intel_context *ce, gfp_t
> gfp)
>  		}
>  	}
> 
> -	rq->i915 = ce->engine->i915;
>  	rq->context = ce;
>  	rq->engine = ce->engine;
>  	rq->ring = ce->ring;
> @@ -1011,12 +1010,12 @@ __emit_semaphore_wait(struct i915_request
> *to,
>  		      struct i915_request *from,
>  		      u32 seqno)
>  {
> -	const int has_token = INTEL_GEN(to->i915) >= 12;
> +	const int has_token = INTEL_GEN(to->engine->i915) >= 12;
>  	u32 hwsp_offset;
>  	int len, err;
>  	u32 *cs;
> 
> -	GEM_BUG_ON(INTEL_GEN(to->i915) < 8);
> +	GEM_BUG_ON(INTEL_GEN(to->engine->i915) < 8);
>  	GEM_BUG_ON(i915_request_has_initial_breadcrumb(to));
> 
>  	/* We need to pin the signaler's HWSP until we are finished reading.
> */ @@ -1211,7 +1210,7 @@ __i915_request_await_external(struct
> i915_request *rq, struct dma_fence *fence)  {
>  	mark_external(rq);
>  	return i915_sw_fence_await_dma_fence(&rq->submit, fence,
> -					     i915_fence_context_timeout(rq-
> >i915,
> +					     i915_fence_context_timeout(rq-
> >engine->i915,
>  									fence-
> >context),
>  					     I915_FENCE_GFP);
>  }
> @@ -1782,7 +1781,8 @@ long i915_request_wait(struct i915_request *rq,
>  	 * (bad for battery).
>  	 */
>  	if (flags & I915_WAIT_PRIORITY) {
> -		if (!i915_request_started(rq) && INTEL_GEN(rq->i915) >= 6)
> +		if (!i915_request_started(rq) &&
> +		    INTEL_GEN(rq->engine->i915) >= 6)
>  			intel_rps_boost(rq);
>  	}
> 
> diff --git a/drivers/gpu/drm/i915/i915_request.h
> b/drivers/gpu/drm/i915/i915_request.h
> index 5d4709a3dace..118ab6650d1f 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -162,9 +162,6 @@ struct i915_request {
>  	struct dma_fence fence;
>  	spinlock_t lock;
> 
> -	/** On Which ring this request was generated */
> -	struct drm_i915_private *i915;
> -
>  	/**
>  	 * Context and ring buffer related to this request
>  	 * Contexts are refcounted, so when this request is associated with a
> diff --git a/drivers/gpu/drm/i915/i915_trace.h
> b/drivers/gpu/drm/i915/i915_trace.h
> index bc854ad60954..a4addcc64978 100644
> --- a/drivers/gpu/drm/i915/i915_trace.h
> +++ b/drivers/gpu/drm/i915/i915_trace.h
> @@ -735,7 +735,7 @@ TRACE_EVENT(i915_request_queue,
>  			     ),
> 
>  	    TP_fast_assign(
> -			   __entry->dev = rq->i915->drm.primary->index;
> +			   __entry->dev = rq->engine->i915->drm.primary-
> >index;
>  			   __entry->class = rq->engine->uabi_class;
>  			   __entry->instance = rq->engine->uabi_instance;
>  			   __entry->ctx = rq->fence.context; @@ -761,7
> +761,7 @@ DECLARE_EVENT_CLASS(i915_request,
>  			     ),
> 
>  	    TP_fast_assign(
> -			   __entry->dev = rq->i915->drm.primary->index;
> +			   __entry->dev = rq->engine->i915->drm.primary-
> >index;
>  			   __entry->class = rq->engine->uabi_class;
>  			   __entry->instance = rq->engine->uabi_instance;
>  			   __entry->ctx = rq->fence.context; @@ -804,7
> +804,7 @@ TRACE_EVENT(i915_request_in,
>  			    ),
> 
>  	    TP_fast_assign(
> -			   __entry->dev = rq->i915->drm.primary->index;
> +			   __entry->dev = rq->engine->i915->drm.primary-
> >index;
>  			   __entry->class = rq->engine->uabi_class;
>  			   __entry->instance = rq->engine->uabi_instance;
>  			   __entry->ctx = rq->fence.context; @@ -833,7
> +833,7 @@ TRACE_EVENT(i915_request_out,
>  			    ),
> 
>  	    TP_fast_assign(
> -			   __entry->dev = rq->i915->drm.primary->index;
> +			   __entry->dev = rq->engine->i915->drm.primary-
> >index;
>  			   __entry->class = rq->engine->uabi_class;
>  			   __entry->instance = rq->engine->uabi_instance;
>  			   __entry->ctx = rq->fence.context; @@ -895,7
> +895,7 @@ TRACE_EVENT(i915_request_wait_begin,
>  	     * less desirable.
>  	     */
>  	    TP_fast_assign(
> -			   __entry->dev = rq->i915->drm.primary->index;
> +			   __entry->dev = rq->engine->i915->drm.primary-
> >index;
>  			   __entry->class = rq->engine->uabi_class;
>  			   __entry->instance = rq->engine->uabi_instance;
>  			   __entry->ctx = rq->fence.context; diff --git
> a/drivers/gpu/drm/i915/selftests/i915_perf.c
> b/drivers/gpu/drm/i915/selftests/i915_perf.c
> index 8eb3108f1767..be54570c407c 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_perf.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_perf.c
> @@ -162,7 +162,7 @@ static int write_timestamp(struct i915_request *rq,
> int slot)
>  		return PTR_ERR(cs);
> 
>  	len = 5;
> -	if (INTEL_GEN(rq->i915) >= 8)
> +	if (INTEL_GEN(rq->engine->i915) >= 8)
>  		len++;
> 
>  	*cs++ = GFX_OP_PIPE_CONTROL(len);
> diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c
> b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> index e35ba5f9e73f..699bfe0328fb 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> @@ -134,15 +134,15 @@ igt_spinner_create_request(struct igt_spinner
> *spin,
> 
>  	batch = spin->batch;
> 
> -	if (INTEL_GEN(rq->i915) >= 8) {
> +	if (INTEL_GEN(rq->engine->i915) >= 8) {
>  		*batch++ = MI_STORE_DWORD_IMM_GEN4;
>  		*batch++ = lower_32_bits(hws_address(hws, rq));
>  		*batch++ = upper_32_bits(hws_address(hws, rq));
> -	} else if (INTEL_GEN(rq->i915) >= 6) {
> +	} else if (INTEL_GEN(rq->engine->i915) >= 6) {
>  		*batch++ = MI_STORE_DWORD_IMM_GEN4;
>  		*batch++ = 0;
>  		*batch++ = hws_address(hws, rq);
> -	} else if (INTEL_GEN(rq->i915) >= 4) {
> +	} else if (INTEL_GEN(rq->engine->i915) >= 4) {
>  		*batch++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
>  		*batch++ = 0;
>  		*batch++ = hws_address(hws, rq);
> @@ -154,11 +154,11 @@ igt_spinner_create_request(struct igt_spinner
> *spin,
> 
>  	*batch++ = arbitration_command;
> 
> -	if (INTEL_GEN(rq->i915) >= 8)
> +	if (INTEL_GEN(rq->engine->i915) >= 8)
>  		*batch++ = MI_BATCH_BUFFER_START | BIT(8) | 1;
> -	else if (IS_HASWELL(rq->i915))
> +	else if (IS_HASWELL(rq->engine->i915))
>  		*batch++ = MI_BATCH_BUFFER_START |
> MI_BATCH_PPGTT_HSW;
> -	else if (INTEL_GEN(rq->i915) >= 6)
> +	else if (INTEL_GEN(rq->engine->i915) >= 6)
>  		*batch++ = MI_BATCH_BUFFER_START;
>  	else
>  		*batch++ = MI_BATCH_BUFFER_START | MI_BATCH_GTT;
> @@ -176,7 +176,7 @@ igt_spinner_create_request(struct igt_spinner *spin,
>  	}
> 
>  	flags = 0;
> -	if (INTEL_GEN(rq->i915) <= 5)
> +	if (INTEL_GEN(rq->engine->i915) <= 5)
>  		flags |= I915_DISPATCH_SECURE;
>  	err = engine->emit_bb_start(rq, vma->node.start, PAGE_SIZE, flags);
> 
Good concepts!
Reviewed-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>

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
