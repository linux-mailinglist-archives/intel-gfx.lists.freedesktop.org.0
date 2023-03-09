Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD136B2C85
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 19:01:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 413E210E8C6;
	Thu,  9 Mar 2023 18:01:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA4FA10E8C6
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 18:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678384900; x=1709920900;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5INzvjspzGHQWJLqG671ekFlTC4q0b3+/SRlm7CVSu0=;
 b=fy7tmjbNy0aFTRh2bA+ckjBDWSgumk3M2UHI/wsLIh+vtpwIFFGBIc1L
 +leauhnJHT+jnSQri/fxK6pw0pWdhlJOdnvZ+5TX/4BTHC/8tNby4yf1l
 jTzRQhG4ZnIcHU1MqEsjj6Wd/Vc76pP59cnXvUWvYDUO2PRgJWiGD7VoO
 62Dh7jyiQfv4XztMRfG5ak+80szwP9kfjNRZ9kEaOXYxatKSyjdrGLFkq
 OEWag/RkiSUqi4deRRfKY7W1jlWX1tuh20uuRZV518GLHCjnC9wsTefpm
 QKjr0sqyEyGtSMstJcryTKCBBXhJRBlpS0OIiKqmpki6mFHwzEKQ4viwm g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="364165114"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="364165114"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 10:01:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="709938280"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="709938280"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 09 Mar 2023 10:01:10 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 10:01:10 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 10:01:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 9 Mar 2023 10:01:10 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 9 Mar 2023 10:01:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IXHwPViVFXA3J0lNhlLdNuYdW4UIxn4w7w/2OTo17roe+9J/rlUWfZ0riVGMLpdVSjgKSbvR4k+1kSWn/kVy6UYzTNIYaKG3x0JYbo0CXoZpf4wzaYg5jTSjnjFfINmj81aawHzeGrtmb1NLIgFtQhENh4fbpK3Xz47bUfyOO9coWO64Vg2Ooi1TcJDl2Va7EbHikBU1mMJ5j4nqubI2vCTzEKkLq/grABSL5U6xal/08ucqgwyw7LwUXSijHLNjBwo/GyxxRhBSCZJpA/LMUMsGblLLafKiIyLWkDwzjCB+nKEsB6eE590PCIFbsQ6lB3a6GjwYQkEX3xiyO1m7lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CVXlFXg1FKV71T5ULkyi5SNUTETSPpp+F9B92//61SQ=;
 b=UTscNNbUXMm2ORyZeufc0HumuT0qojHoEIpUOpizl9AQTNna3hmqhJUqvXthgAHl7PNcmMOBZ1GJaRwzV8PJrZQ2aQ2E8uc+/NuxzRBqEZ4zKzvsaH5XccbNA6AfQ4TsD0GW1ofHeAq1mS17NhYQPLTJ+w8r4y1BsSjlY+58ydKkzilYAwzd+Hf9TdsjeMvj1ScMbah6d6ktKcJBnF8d/8T+nn7N82Jipf5t9WytK+36p4jqteUsauCGa/CHKbpk6rg6SZfQiiyCU3wNds4/2SM/uTPY9U6tTuyFwNIyyPtntuksGSTiwKZ88YWX46sWGQ0zzWHCS/cDq9E1OFgknA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SN7PR11MB6875.namprd11.prod.outlook.com (2603:10b6:806:2a6::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Thu, 9 Mar
 2023 18:01:04 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::d95d:e1ce:3fe2:c810]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::d95d:e1ce:3fe2:c810%3]) with mapi id 15.20.6156.029; Thu, 9 Mar 2023
 18:01:04 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 1/5] drm/i915/mtl: Fix Wa_16015201720
 implementation
Thread-Index: AQHZTHoX7Zebl8vrkkGt4jkMuY0kP67yr94AgAAYHoA=
Date: Thu, 9 Mar 2023 18:01:04 +0000
Message-ID: <DM4PR11MB5971A58978662F23B9004A8A87B59@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
 <20230301201053.928709-2-radhakrishna.sripada@intel.com>
 <ZAoJkJ5VwGRiUDTD@ashyti-mobl2.lan>
In-Reply-To: <ZAoJkJ5VwGRiUDTD@ashyti-mobl2.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|SN7PR11MB6875:EE_
x-ms-office365-filtering-correlation-id: 3d890831-bdba-4973-68f8-08db20c83fed
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6sGFJPa4zVfVe/iM7oN4qLDWcBnSgw6GsfPV0nAUxttEwcwhnqNkDlddfzepvccL26WoX4jhT/zzuMgccD+HP0xhLsF8hwDqFy3iOecyq9qvVSuOFInZtapxnurN0pkXwgKv4qCpo93Edul6CkMc0JL+GOWb9zBI3EA0rUku7Vk6NQDlIv+moQjn+Ed7hC8QldGH66MwYz3kzUjsNPTHIql2lwraPdRAtsuWWikLlligEXNWFWnMMnh3yrqul6/yQ5j9pN1wwTatpNxNfauSWthR759F71LEVTvyKYCZGBvYcurKd1vKJXgiW1RpLQCMfSZUMU2b0ZPSOmv86dMPITegc2//eJBkczUJkU7q7e7k6eTNyWk4XxWwafkPCA892VBy4F6pT8EOI9QS8vYYRLBUy5sAJwAJDsTJuJF2WZW+QC1GuaDTp8rKhpnE0b1vUxbIigjN0jyE7e0oFxDy5TUH6L11Neaq4V3MJS/eFnnSnXg7YR0DMBhtvOfuoeP/jCxtxKWxSU+uegghftbU5VdMSuJ6Ao/o9UEiTqFNZI3cSomMbESVVoxa5iT0aJvrTd/6fL2ZLuaD7VLMtcBpiAMAp5OHcmjUlOcklp+300pWvr10bAJ95dCGSTCROOI6HEqoKIPueT/uTvK2s9Oiu9pyE88PB3J626GSFqDL90BEXyZUXLLSAtcdLjD2veB1Wsd7D6obwYEdtawG0vHmMw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(376002)(39860400002)(366004)(346002)(136003)(451199018)(83380400001)(2906002)(66946007)(66556008)(478600001)(7696005)(66446008)(71200400001)(76116006)(66476007)(8676002)(6916009)(4326008)(41300700001)(5660300002)(186003)(64756008)(9686003)(26005)(122000001)(53546011)(8936002)(82960400001)(52536014)(38100700002)(54906003)(33656002)(6506007)(316002)(55016003)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3LWhBTz4AIRwfktnO9sj7rOTgk/S1PIwWC3U+CgIfvb6Tr7Hp9EXQriGfutp?=
 =?us-ascii?Q?WArtcIGfd4C0Wsh53ik3sdy8dxyyKKGFacaNUlM1I2u2Ea6kohC0kAF3blIt?=
 =?us-ascii?Q?9761CxX5xU94khjr0RCj0eTi5rY3GQ9jkkp7OkVFBU9Ex/DYASLRouLgd1HM?=
 =?us-ascii?Q?UGaEL42ERrtmd9RkEUowHSdNXxWBPoWX01D+2ZscNA5F/qphz58zdmf28vjO?=
 =?us-ascii?Q?TEfwHzve3U1JsnlFdst9WXZYr7oBH8NxEvMGs39/83JxUahimqSxe8j4kAv/?=
 =?us-ascii?Q?79hQHuUXCLxbIbNy8CXpmEC0EeiHxBnlpn4amIN9iB2c6bl5h3EIjxFcpc+8?=
 =?us-ascii?Q?hesZzWZAPQhm+imECAL/GZg2KyYll51J53SIbDNA3H6OcagqY0cn2hhWqfiO?=
 =?us-ascii?Q?2cEzL5pe9z+I36kXflAMoXeSeXXNpUXqGP11frs/H2uNyvn/QOwbNWRC5WQb?=
 =?us-ascii?Q?cycil/jjy4StUJAaVvU2F3JUgcl9EDACGSVo3f18K6KkV6aZuT27X7EfiSh9?=
 =?us-ascii?Q?fs+bhxVt4+c85ZlCra9ePRPequDSKZg1jSI0hg3rLr8i4nEb7vsal95CA1SZ?=
 =?us-ascii?Q?rgIRvdUHYicDmNGOlm4MU7yaSwEj1Z6SFkkjZR8hBJiUAAGBTEAIVQitQwh0?=
 =?us-ascii?Q?wReZDBmY6bNA4eCDBNkmeQQOTOJM4RGjYEDU5g8jTrth6ly6OoEUYDdWkDW5?=
 =?us-ascii?Q?qX7bYc9BqCjRdlrQwEdt6jwymVFl8x7riTOa/L7e/Fi3+cqPU9G+BXgioDw5?=
 =?us-ascii?Q?4bUtWujomSd9Un4FMQrFUl1WBrW8x50owfEVSJmrSkjQhFYa/5iRLfAKuD12?=
 =?us-ascii?Q?nOmXOL3Vt3adkeYkQFnZbbhdz/WTrDnbYWuzjUHBAmwPQvj3bJ59iUTtXqBY?=
 =?us-ascii?Q?oObCF7MjLNJMZlkpZT78jTjFZzQ7yEWJLpmjqq1qIBrVYwDk2ZUwH+okYIlB?=
 =?us-ascii?Q?tuXeU+Y/oxZMCuD+DhllTBQGNAOlgXWxubuhiQlK0PuF2mGIkVUZeKtvYpR1?=
 =?us-ascii?Q?bkg3TcFSlQHQGMXdSfMukq1rDIL+a+sKVKk1bvZ775DY2teN4RusM+goiw/b?=
 =?us-ascii?Q?hpmAqM0008IIW/g9PR3oRWmLD2fLf+C5R79/QLCZ5yBrAwL1zMyvqByX1oea?=
 =?us-ascii?Q?Z00AiYhGAcPJoyszBDdpzyr2YuqACkoThWabBeB9TwYDwsqMOaLVinzQNTLK?=
 =?us-ascii?Q?yvx34Cb9Qkl49D/nuIr6Wp5PbvPZo6hs/zZEUkXWBjBwFIJYusMZ4C46+E4X?=
 =?us-ascii?Q?PfmBgivPk67vZ504U3Pykn+YxpPY4Lcvv12P72SnvSrreREd+yNcfEbdeX0e?=
 =?us-ascii?Q?cNKqJYXIZvsem7lUqW00hyWKEuaPzSjkPYvP5zn9Pf/PdTfXjE+azm+que47?=
 =?us-ascii?Q?O89MGDPwAk9GYYObt+4DwO/lh6/MbthuBzqGA7zj/IPYu/MraJ7do2Lw3h6s?=
 =?us-ascii?Q?rUUZagzYMXEGDgCYB1P3Y/zFqOmquHaTGyYbAQKu8HfdYd/PMfpWMH64erHF?=
 =?us-ascii?Q?I6/mDjyktYTjIcS1jTrz465O97aELYSqLz0YFLCiCaTfBD2Va2WaHw4tMFSF?=
 =?us-ascii?Q?iNq1EfwePwB5tDE4QKOs1mqBsnibiR1e0PeVpsZb7wPt6GWKOU1FBSM5sC7K?=
 =?us-ascii?Q?eQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d890831-bdba-4973-68f8-08db20c83fed
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2023 18:01:04.0503 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LU6SH1+H7X0TucvuD+rCvueS0Ub5zn0jnTDi4rXkx4Lme6Y4KzAjYtIGY/+aWTZoZ4+avDmkX0Mz4BbRpqsxpAC7gGQFZ2cNHpseHLif4KM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6875
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/5] drm/i915/mtl: Fix Wa_16015201720
 implementation
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andi,

> -----Original Message-----
> From: Andi Shyti <andi.shyti@linux.intel.com>
> Sent: Thursday, March 9, 2023 8:30 AM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: Re: [Intel-gfx] [PATCH v3 1/5] drm/i915/mtl: Fix Wa_16015201720
> implementation
>=20
> Hi Radhakrishna,
>=20
> On Wed, Mar 01, 2023 at 12:10:49PM -0800, Radhakrishna Sripada wrote:
> > The commit 2357f2b271ad ("drm/i915/mtl: Initial display workarounds")
> > extended the workaround Wa_16015201720 to MTL. However the registers
> > that the original WA implemented moved for MTL.
> >
> > Implement the workaround with the correct register.
> >
> > v3: Skip clock gating for pipe C, D DMC's and fix the title
> >
> > Fixes: 2357f2b271ad ("drm/i915/mtl: Initial display workarounds")
> > Cc: Matt Atwood <matthew.s.atwood@intel.com>
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc.c | 26 +++++++++++++++++++-----
> >  drivers/gpu/drm/i915/i915_reg.h          | 10 ++++++---
> >  2 files changed, 28 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index f70ada2357dc..b4283cf319f2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -389,15 +389,12 @@ static void disable_all_event_handlers(struct
> drm_i915_private *i915)
> >  	}
> >  }
> >
> > -static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, boo=
l
> enable)
> > +static void adlp_pipedmc_clock_gating_wa(struct drm_i915_private *i915=
,
> bool enable)
> >  {
> >  	enum pipe pipe;
> >
> > -	if (DISPLAY_VER(i915) < 13)
> > -		return;
> > -
>=20
> Why is this not needed anyomore?
With the check below while calling the function the check here becomes redu=
ndant.

>=20
> >  	/*
> > -	 * Wa_16015201720:adl-p,dg2, mtl
> > +	 * Wa_16015201720:adl-p,dg2
> >  	 * The WA requires clock gating to be disabled all the time
> >  	 * for pipe A and B.
> >  	 * For pipe C and D clock gating needs to be disabled only
> > @@ -413,6 +410,25 @@ static void pipedmc_clock_gating_wa(struct
> drm_i915_private *i915, bool enable)
> >  				     PIPEDMC_GATING_DIS, 0);
> >  }
> >
> > +static void mtl_pipedmc_clock_gating_wa(struct drm_i915_private *i915)
> > +{
> > +	/*
> > +	 * Wa_16015201720
> > +	 * The WA requires clock gating to be disabled all the time
> > +	 * for pipe A and B.
> > +	 */
> > +	intel_de_rmw(i915, GEN9_CLKGATE_DIS_0, 0,
> > +		     MTL_PIPEDMC_GATING_DIS_A |
> MTL_PIPEDMC_GATING_DIS_B);
> > +}
> > +
> > +static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, boo=
l
> enable)
> > +{
> > +	if (DISPLAY_VER(i915) >=3D 14 && enable)
> > +		return mtl_pipedmc_clock_gating_wa(i915);
> > +	else if (DISPLAY_VER(i915) =3D=3D 13)
> > +		return adlp_pipedmc_clock_gating_wa(i915, enable);
>=20
> don't you get an error here? Please don't return anything.
Addressed based on review comments from Matt Roper.
>=20
> > +}
> > +
> >  void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pi=
pe)
> >  {
> >  	enum intel_dmc_id dmc_id =3D PIPE_TO_DMC_ID(pipe);
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h
> > index c1efa655fb68..7c9ac5b43831 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -1794,9 +1794,13 @@
> >   * GEN9 clock gating regs
> >   */
> >  #define GEN9_CLKGATE_DIS_0		_MMIO(0x46530)
> > -#define   DARBF_GATING_DIS		(1 << 27)
> > -#define   PWM2_GATING_DIS		(1 << 14)
> > -#define   PWM1_GATING_DIS		(1 << 13)
> > +#define   DARBF_GATING_DIS		REG_BIT(27)
> > +#define   MTL_PIPEDMC_GATING_DIS_A	REG_BIT(15)
> > +#define   MTL_PIPEDMC_GATING_DIS_B	REG_BIT(14)
>=20
> you could eventually use a GENMASK here and it can be:
We may have to play with individual pipes here and b-spec defines them as
Individual bits. So leaving them as is.
>=20
> #define   MTL_PIPEDMC_GATING_DIS	REG_GENMASK(15, 14)
>=20
> > +#define   PWM2_GATING_DIS		REG_BIT(14)
> > +#define   MTL_PIPEDMC_GATING_DIS_C	REG_BIT(13)
>=20
> Is this needed?
Below

>=20
> > +#define   PWM1_GATING_DIS		REG_BIT(13)
> > +#define   MTL_PIPEDMC_GATING_DIS_D	REG_BIT(12)
>=20
> Is this needed?
Removed MTL_PIPEDMC_GATING_DIS_D and MTL_PIPEDMC_GATING_DIS_C
Based on review feedback from MattR.


Since most of the comments aligned with Matt's suggestion pushed with Matt'=
s r-b.

Thanks you for the review.

-Radhakrishna Sripada
>=20
> Thanks,
> Andi
>=20
> >  #define GEN9_CLKGATE_DIS_3		_MMIO(0x46538)
> >  #define   TGL_VRH_GATING_DIS		REG_BIT(31)
> > --
> > 2.34.1
