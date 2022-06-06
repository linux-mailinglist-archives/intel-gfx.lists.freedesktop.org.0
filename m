Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B155253E453
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jun 2022 14:21:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFB1510FB9D;
	Mon,  6 Jun 2022 12:21:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 017F310FB9D
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jun 2022 12:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654518070; x=1686054070;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=FaiookeZOIuhYH+km5rZb0PfGYrG/NCi4vbbR0zNsXI=;
 b=KgM3Bgd4vlBb697q8QO5pW1jf3qluk74gG/2D+q4HbVLqXJrhCliy0IC
 okHKp84yqsrqM8gAv1FYT2iJckn0ZGP0mt5tDVVRqbYOkyA/SOlVb/u7d
 oW7baA0yB3ZljaxYsMk7dlK8TTWYbKhlSHq5viLlrGy6EE80t0JSH/x3W
 XY59wwlouPY5ikw7DOfDsW+N4qHYunOle7ca3uNwz331qQeELOAJ9c2+r
 H4DuurR3YjJK8u3GczBWeBTUupPwWk7Ut6P3Prs9xgg3FpbgHfzhgI4Ho
 nUioHykcysfnUDl2AruC0w+ZavROqbH8mvSqplIoU2W/bsLBdPxxwN66H Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10369"; a="258962436"
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="258962436"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 05:21:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="682225570"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga002.fm.intel.com with ESMTP; 06 Jun 2022 05:21:01 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 6 Jun 2022 05:21:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 6 Jun 2022 05:21:01 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2308.027;
 Mon, 6 Jun 2022 05:21:01 -0700
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dg2: Add Wa_14015795083
Thread-Index: AQHYeWsoOdnQ8NPmhU6ns3yixjq5qq1Cf7uA///NAlA=
Date: Mon, 6 Jun 2022 12:21:00 +0000
Message-ID: <27fa4eb534cf469595ee8b6ab783c351@intel.com>
References: <20220606060324.1618-1-anshuman.gupta@intel.com>
 <8735ginquc.fsf@intel.com>
In-Reply-To: <8735ginquc.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Add Wa_14015795083
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, June 6, 2022 1:53 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Add Wa_14015795083
>=20
> On Mon, 06 Jun 2022, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> > i915 must disable Render DOP clock gating globally.
> >
> > B.Spec: 52621
>=20
> Please use
>=20
> Bspec:
Thanks for pointing out, will fix this.
Regards,
Anshuman Gupta.
>=20
> BR,
> Jani.
>=20
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Cc: Badal Nilawar <badal.nilawar@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
> >  2 files changed, 6 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > index 58e9b464d564..55a291ab5536 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > @@ -630,6 +630,7 @@
> >
> >  #define GEN7_MISCCPCTL				_MMIO(0x9424)
> >  #define   GEN7_DOP_CLOCK_GATE_ENABLE		(1 << 0)
> > +#define   GEN12_DOP_CLOCK_GATE_RENDER_ENABLE    (1 << 1)
> >  #define   GEN8_DOP_CLOCK_GATE_CFCLK_ENABLE	(1 << 2)
> >  #define   GEN8_DOP_CLOCK_GATE_GUC_ENABLE	(1 << 4)
> >  #define   GEN8_DOP_CLOCK_GATE_MEDIA_ENABLE	(1 << 6)
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index a604bc7c0701..b957dec64eee 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -1489,6 +1489,11 @@ dg2_gt_workarounds_init(struct intel_gt *gt,
> struct i915_wa_list *wal)
> >  	 * performance guide section.
> >  	 */
> >  	wa_write_or(wal, GEN12_SQCM, EN_32B_ACCESS);
> > +
> > +	/*
> > +	 * Wa_14015795083
> > +	 */
> > +	wa_write_clr(wal, GEN7_MISCCPCTL,
> GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
> >  }
> >
> >  static void
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
