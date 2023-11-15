Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0017EC416
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 14:50:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A16510E046;
	Wed, 15 Nov 2023 13:50:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F6D110E046
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 13:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700056235; x=1731592235;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=toxSBKA3sSjG+catupfE20ON26LRNhlchhsu/Ra7MM0=;
 b=QhhgzKHiJkVdcplx4Q7bW2pDQOC2Gj/S+0vnzRGfYmRxBxUaR64LbAkb
 Tt/cmzkS76d+dtTUsLQoRt003YVE1PRsfgz+247GGrqLLruZAXXIp7mMw
 Jy9tHF58pzwmBz5z3GjqV6InsStfckuq61oT5ZFOze6X2E7JDPCoR9A7P
 FNSjGZeNzAAR3Rj4WfuhdGrVjkt4t30j1ZSjpHAN5CukTxzdqMV5q02Kp
 dK7IdcTIjKw2UIAGU+dMLN6KHaCURcQB2PI2QCtUO/zkneMFWXJSSAOyy
 hoQ9FmXfPNpXq4JLRM7owPNnRtmseIbHvC/eIegfUzvcGMjPDXm1EM2DF w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="457373877"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="457373877"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 05:50:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="1096449152"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="1096449152"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2023 05:50:34 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 15 Nov 2023 05:50:33 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 15 Nov 2023 05:50:33 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 15 Nov 2023 05:50:33 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 15 Nov 2023 05:50:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yr/vUOoz4SRQMUSBL5AUNPbxXI8drkMf74SyoJD8vukeiAUw0bt9FX3GTxOnU7U7TFJ6bDKA29gVNWscmzJZJnwtsKLF2e1qqy1tMhp8nffUvHKFmzTSCY9L2O1J4iSB/NPMSeicXXQDVlQP/NfIe+GdlFKYRFmdibkcMCY7P35ut+VtSghcYSxP0P3GgAZfMbtSZ/6AR56vxIEtLNOGXb+SuTtSpClLGjZlwoY7ZH9bVZPCGcjQj4RolVSczHwWije/SpX7H/73RFpfGODppF6RclKEZkvCs4L3pfgdSsKxcmAz2khP7gFfKbizhdqyxSPhOcBX8L/FXxQ/Axt/8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NKlR9XdLxl2lc0uYSu/kmjDay3dc6heoShE2+tuCY/M=;
 b=EFz/51R149GRDFpoxexpk1LPdBTP5WYYO+BRBNgrTQxB9WH3W0z/sZhLxHqRFvM91B4DQiYSVP78oAW+0TxjxiHCeNGzdzXKMjpS3rJhY2WWLdPXpif+V7RSoKTiYrDmC15Lp1JAAFDrS8M2ht0QMXjnCTpcgP/t84uT5bygZgUQ1yEpOhWAM6yS+T14y6aFab38H/TQCjN8X8GsVKqzyS1ZRfrmpFnOQfgRy3TkppGXJNKbp56jfd+M+ZNPYKAhnkw7hTKyhiYnjvp7ru4TZyIV1UCmLcSiUg4e7qrA/xwpFx35DKBazgnc1lmnBw741sFt7gmshchox7KC1XaxBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by MN0PR11MB6157.namprd11.prod.outlook.com (2603:10b6:208:3cb::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.17; Wed, 15 Nov
 2023 13:50:30 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::f5b4:48e7:2fb2:d788]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::f5b4:48e7:2fb2:d788%6]) with mapi id 15.20.6977.029; Wed, 15 Nov 2023
 13:50:30 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC 1/3] drm/i915: Define and compute Transcoder
 CMRR registers
Thread-Index: AQHaF44Hs5Jdp+gU/0+okzD57SUiALB7EZsAgABUmiA=
Date: Wed, 15 Nov 2023 13:50:30 +0000
Message-ID: <IA1PR11MB634838A94BD5ECA6C1D663B1B2B1A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20231115063054.3754600-1-mitulkumar.ajitkumar.golani@intel.com>
 <20231115063054.3754600-2-mitulkumar.ajitkumar.golani@intel.com>
 <87pm0bqu75.fsf@intel.com>
In-Reply-To: <87pm0bqu75.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|MN0PR11MB6157:EE_
x-ms-office365-filtering-correlation-id: 1b1b256f-4d6f-47ca-6fe3-08dbe5e1d4b1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xLN8vWVBLhOOy+tk1rTKO4oSxh/GNN6aaIMrp9H8mOZ0iVm+PkWbUYjSu+AaZYIKHhqiyXaM6dzQO9WjKZVrXIzlqOxeR8+CpqdE76pZie/3wSFvwi67taoqpRONEyGGGFcboSO5u9UvPOZDy3c8WbK4qLI3p/rezlMlXCxl2obHsEHh/22yWMW5phnJ3iNRlgiARpsr6w993tofheiTb3RHKXxTSRF2fHWTlS4jJvogzOAKELdy1gh85S6iZj/77ycTev3ugtVtuiZrkBR3f0yytN2PEmZOVTndkYUZP1b2GnrLQvt2QW8IjgkyrspqxjabbMmxXyYMCLpNZx54X59aTNjnoiqTEGmoIkVYvB17QdSU8BGQxQbWgdaDuluq22BUiG16TaL4umC4/OKB1dQbpVfOUokijjYNy13wVecj5YaXOvR1g38+n7NXjKfhkR1rop9Cu7+3T2/Xobj2mqz0YhJYuF5s28PTtgGDdk4Z0IVSkwGw9sBNtjKk0wojGj+iKtGdNpERAH9wrtmw3hgPRgzVMgCpJgkX3WykoL4D9C0kP6OUF/ZP9t8gHjU8F0zU3TviAo0XRVOOcMbtwCukjVIXMprFMz0Ab2N/yAgGF6AAfih615Y2C2TvAj/b
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(346002)(39860400002)(136003)(396003)(230922051799003)(1800799009)(451199024)(64100799003)(186009)(38070700009)(55016003)(8676002)(8936002)(71200400001)(9686003)(55236004)(7696005)(2906002)(4326008)(53546011)(6506007)(83380400001)(26005)(41300700001)(38100700002)(33656002)(122000001)(82960400001)(5660300002)(52536014)(76116006)(54906003)(66946007)(316002)(64756008)(66556008)(66476007)(66446008)(110136005)(86362001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dwdu157ROi6jFbEMnkb7mosNJeekrNgm3VTbCS08/7L7OgRv+Vaogq8wlGE2?=
 =?us-ascii?Q?Y0cz+xHZjfJ1h22+GiVFpfSlQ9qQedBIUELPTCqH7Z9JTso4gmCSCXhB9Q/y?=
 =?us-ascii?Q?aAGJiJzyKLILqBlKLexNnhpNrGotFG2hTfGUIWBST3DFXZcYm0Qx4T6BxZKL?=
 =?us-ascii?Q?1ML8VU0cXT6b404tqsPlVYJys8ydU2MzlFkdxpJnSbCjcVeD6ZZJeAyc79IV?=
 =?us-ascii?Q?PFJp0gLi3QeodkClilfGRuw/9Ou3jJjeG+KxZ1kBMLVBNs5ye+A4Yv1OLBu3?=
 =?us-ascii?Q?/utxGpMG13RfzFJO3DtyzhT5UOXMXRQCk6WduIWh8wFPC2XmtNEx6VL6P3T/?=
 =?us-ascii?Q?dLJqtM1ReIQL30mKhkB2GgdQ0CFXxmo9PQ6UruDCy2wHG1wUAACm7jaKdl/c?=
 =?us-ascii?Q?kf/Wss7CNv/+00FJOdNWujnDPdkA7hykJUAnCxM0plQZBFGj5sA2nUHmtHCN?=
 =?us-ascii?Q?b8pc6sBtlLn4JOcuQFDP7pq5Nq4dyr3YYHqDmLbH9u2haRO7934rKs/yBGQy?=
 =?us-ascii?Q?/2MzwzIlnICHrNpc9C563y2OxfIKUnre9OyP3lU3n8K1W+f0w4VcG+4NRmih?=
 =?us-ascii?Q?Z9g2mO6NInlKCShrjXxoeKY0ceQvfI2a2GYWsU8qO63MU1Kf51UN1mdQY5gm?=
 =?us-ascii?Q?pzd6W+ZUvSUOoupbXE61IZ/wX2dgSyH1YsMrk76kRvtTiz+YAag9eRgBjxZk?=
 =?us-ascii?Q?FdUp6yAmnepJTfE9txwpr1mktPiNg+Inb853NMO/SPGvUu1LzK5CGTGV9Udb?=
 =?us-ascii?Q?JKmEBK2/0va2hGrVrFPYnU3VKzhTOfZY20ojjDtOMDNRmOpRlj0UKm/hDARQ?=
 =?us-ascii?Q?BLpjU9fgNNsASR2zcWd2ZsM2vvZEs1vSywObtjqYsNeAQ5YxVghoISqQa2vr?=
 =?us-ascii?Q?7uvGxIOEot+DG6aPzS7+VdKcmvz2fzavoD5808hw07n8WwjmrY+SRNSCUPDI?=
 =?us-ascii?Q?QohLx8jTHFBDY9GPBw7angdBS9Uo8YF6ZMsJsk7aKC7IlA7LYabUQUQibOWG?=
 =?us-ascii?Q?y9ODpU9cR/scXTMAqIAVr9/d3ldhIwdZhhrVyiZcpV5S766tz3zkiCSFo0tZ?=
 =?us-ascii?Q?PTQX78URSpBcKNnKRXj+no2m0IYlUu/st204capllSCaGoyWFHWHNbDAFbWg?=
 =?us-ascii?Q?PTiNssVKnTPVZaoEch79OFB/EMQWitYXQzNdi0iMFYz3zCR8kax1S2SsTYuv?=
 =?us-ascii?Q?wSpq/VvRMswbOyo7Eq2AupWET8X3l3soihvsq84j5nntMOQpjgpwD2aUDZCQ?=
 =?us-ascii?Q?R2WPt9yWcZM4nMHT+Gr3vGRe/X9lwreeYSKTWcW5lQ2cM9cJI18p7mF8ARpT?=
 =?us-ascii?Q?BrDrzirRKKK/0og+XabzFEkMDm2kD8K39KPgWPxpHASXh4UJYo5TQQwGyoPk?=
 =?us-ascii?Q?uLB1J+6SlBXJJVwvGmfDoz/y8zwQzYTW/F6sKbrwj2VRDbCtG9d+IFHUDArV?=
 =?us-ascii?Q?EQmSikEcjkrxySqYXBNk8Bd+X4p9O5zPCjTcK2OJ+ktOVsYBQzIQHit0R5eP?=
 =?us-ascii?Q?k/MMwlQqL5tdJW1EA557zUkjSgcHukEA/7ij3UpvVee1BxEh7N8Xun6LUDFB?=
 =?us-ascii?Q?8JuwH3w3CGQY3EJs/UytiU7rhkZRzUmTBg2ZZw3n8L2+F1+uw+YiuzLEi1X1?=
 =?us-ascii?Q?nyPx53VlxsXCSg4pHp9dKhE=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b1b256f-4d6f-47ca-6fe3-08dbe5e1d4b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2023 13:50:30.1561 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BrxNKsI6+uuPoezH1qjzF2YEZtMi+tfA7M7VUnArQluEpVGHXlfSyfYZES9s8xD/GoIhN8cMXcTDtNPmHpFuQHMW5MPkqoSb7SPx48syBukI3Hugq0QL31ZAvRY40BKd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6157
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 1/3] drm/i915: Define and compute Transcoder
 CMRR registers
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thanks @Jani Nikula

Addressed all review comments.

Regards,
Mitul

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, November 15, 2023 2:17 PM
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: Syrjala, Ville <ville.syrjala@intel.com>
> Subject: Re: [Intel-gfx] [RFC 1/3] drm/i915: Define and compute Transcode=
r
> CMRR registers
>=20
> On Wed, 15 Nov 2023, Mitul Golani
> <mitulkumar.ajitkumar.golani@intel.com> wrote:
> > Add register definitions for Transcoder Fixed Average Vtotal mode/CMRR
> > function, with the necessary bitfields.
> > Compute these registers when CMRR is enabled, extending Adaptive
> > refresh rate capabilities.
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  | 23 ++++++++++++++++-
> >  .../drm/i915/display/intel_display_types.h    |  6 +++++
> >  drivers/gpu/drm/i915/display/intel_vrr.c      | 25 ++++++++++++++++++-
> >  drivers/gpu/drm/i915/i915_reg.h               | 14 +++++++++++
> >  4 files changed, 66 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 125903007a29..f99d2de840bc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -921,6 +921,13 @@ static bool vrr_params_changed(const struct
> intel_crtc_state *old_crtc_state,
> >  		old_crtc_state->vrr.pipeline_full !=3D
> > new_crtc_state->vrr.pipeline_full;
> >  }
> >
> > +static bool cmrr_params_changed(const struct intel_crtc_state
> *old_crtc_state,
> > +				const struct intel_crtc_state *new_crtc_state)
> {
> > +	return old_crtc_state->cmrr.cmrr_m !=3D new_crtc_state-
> >cmrr.cmrr_m ||
> > +		old_crtc_state->cmrr.cmrr_n !=3D new_crtc_state-
> >cmrr.cmrr_n; }
> > +
> >  static bool vrr_enabling(const struct intel_crtc_state *old_crtc_state=
,
> >  			 const struct intel_crtc_state *new_crtc_state)  { @@
> -5067,6
> > +5074,16 @@ intel_pipe_config_compare(const struct intel_crtc_state
> *current_config,
> >  	} \
> >  } while (0)
> >
> > +#define PIPE_CONF_CHECK_LLI(name) do { \
> > +	if (current_config->name !=3D pipe_config->name) { \
> > +		pipe_config_mismatch(fastset, crtc, __stringify(name), \
> > +				     "(expected %lli, found %lli)", \
> > +				     current_config->name, \
> > +				     pipe_config->name); \
> > +		ret =3D false; \
> > +	} \
> > +} while (0)
> > +
> >  #define PIPE_CONF_CHECK_BOOL(name) do { \
> >  	if (current_config->name !=3D pipe_config->name) { \
> >  		pipe_config_mismatch(fastset, crtc,  __stringify(name), \ @@
> > -5447,10 +5464,13 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
> >  		PIPE_CONF_CHECK_I(vrr.flipline);
> >  		PIPE_CONF_CHECK_I(vrr.pipeline_full);
> >  		PIPE_CONF_CHECK_I(vrr.guardband);
> > +		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
> > +		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
> >  	}
> >
> >  #undef PIPE_CONF_CHECK_X
> >  #undef PIPE_CONF_CHECK_I
> > +#undef PIPE_CONF_CHECK_LLI
> >  #undef PIPE_CONF_CHECK_BOOL
> >  #undef PIPE_CONF_CHECK_BOOL_INCOMPLETE  #undef
> PIPE_CONF_CHECK_P @@
> > -6790,7 +6810,8 @@ static void intel_pre_update_crtc(struct
> intel_atomic_state *state,
> >  		    intel_crtc_needs_fastset(new_crtc_state))
> >  			icl_set_pipe_chicken(new_crtc_state);
> >
> > -		if (vrr_params_changed(old_crtc_state, new_crtc_state))
> > +		if (vrr_params_changed(old_crtc_state, new_crtc_state) ||
> > +		    cmrr_params_changed(old_crtc_state, new_crtc_state))
> >  			intel_vrr_set_transcoder_timings(new_crtc_state);
> >  	}
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 9a44350ba05d..e42a0807227b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1406,6 +1406,12 @@ struct intel_crtc_state {
> >  		u16 flipline, vmin, vmax, guardband;
> >  	} vrr;
> >
> > +	/* Content Match Refresh Rate state */
> > +	struct {
> > +		bool enable;
> > +		u64 cmrr_n, cmrr_m;
> > +	} cmrr;
> > +
> >  	/* Stream Splitter for eDP MSO */
> >  	struct {
> >  		bool enable;
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> > b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index 5d905f932cb4..4aeccbbf1d2a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -199,6 +199,19 @@ void intel_vrr_set_transcoder_timings(const struct
> intel_crtc_state *crtc_state)
> >  		return;
> >  	}
> >
> > +	if (crtc_state->cmrr.enable) {
> > +		intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
> > +			       VRR_CTL_CMRR_ENABLE |
> trans_vrr_ctl(crtc_state));
> > +		intel_de_write(dev_priv,
> TRANS_CMRR_M_HI(cpu_transcoder),
> > +			       upper_32_bits(crtc_state->cmrr.cmrr_m));
> > +		intel_de_write(dev_priv,
> TRANS_CMRR_M_LO(cpu_transcoder),
> > +			       lower_32_bits(crtc_state->cmrr.cmrr_m));
> > +		intel_de_write(dev_priv,
> TRANS_CMRR_N_HI(cpu_transcoder),
> > +			       upper_32_bits(crtc_state->cmrr.cmrr_n));
> > +		intel_de_write(dev_priv,
> TRANS_CMRR_N_LO(cpu_transcoder),
> > +			       lower_32_bits(crtc_state->cmrr.cmrr_n));
> > +	}
> > +
> >  	intel_de_write(dev_priv, TRANS_VRR_VMIN(cpu_transcoder),
> crtc_state->vrr.vmin - 1);
> >  	intel_de_write(dev_priv, TRANS_VRR_VMAX(cpu_transcoder),
> crtc_state->vrr.vmax - 1);
> >  	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
> > trans_vrr_ctl(crtc_state)); @@ -263,12 +276,22 @@ void
> > intel_vrr_get_config(struct intel_crtc_state *crtc_state)  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc-
> >dev);
> >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > -	u32 trans_vrr_ctl;
> > +	u32 trans_vrr_ctl, cmrr_m_hi, cmrr_m_lo, cmrr_n_hi, cmrr_n_lo;
> >
> >  	trans_vrr_ctl =3D intel_de_read(dev_priv,
> > TRANS_VRR_CTL(cpu_transcoder));
> >
> >  	crtc_state->vrr.enable =3D trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
> >
> > +	if (crtc_state->cmrr.enable) {
> > +		cmrr_n_hi =3D intel_de_read(dev_priv,
> TRANS_CMRR_N_HI(cpu_transcoder));
> > +		cmrr_n_lo =3D intel_de_read(dev_priv,
> TRANS_CMRR_N_LO(cpu_transcoder));
> > +		cmrr_m_hi =3D intel_de_read(dev_priv,
> TRANS_CMRR_M_HI(cpu_transcoder));
> > +		cmrr_m_lo =3D intel_de_read(dev_priv,
> > +TRANS_CMRR_M_LO(cpu_transcoder));
> > +
> > +		crtc_state->cmrr.cmrr_n =3D ((u64)cmrr_n_hi << 32) |
> (u64)cmrr_n_lo;
> > +		crtc_state->cmrr.cmrr_m =3D ((u64)cmrr_m_hi << 32) |
> (u64)cmrr_m_lo;
>=20
> See intel_de_read64_2x32().
>=20
> > +	}
> > +
> >  	if (DISPLAY_VER(dev_priv) >=3D 13)
> >  		crtc_state->vrr.guardband =3D
> >
> 	REG_FIELD_GET(XELPD_VRR_CTL_VRR_GUARDBAND_MASK,
> trans_vrr_ctl);
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 135e8d8dbdf0..8554083ebf98
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -2013,6 +2013,7 @@
> >  #define   VRR_CTL_VRR_ENABLE			REG_BIT(31)
> >  #define   VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
> >  #define   VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
> > +#define   VRR_CTL_CMRR_ENABLE			REG_BIT(27)
> >  #define   VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
> >  #define   VRR_CTL_PIPELINE_FULL(x)
> 	REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
> >  #define   VRR_CTL_PIPELINE_FULL_OVERRIDE	REG_BIT(0)
> > @@ -2089,6 +2090,19 @@
> >  #define TRANS_VRR_STATUS2(trans)	_MMIO_TRANS2(trans,
> _TRANS_VRR_STATUS2_A)
> >  #define   VRR_STATUS2_VERT_LN_CNT_MASK	REG_GENMASK(19, 0)
> >
> > +#define _TRANS_CMRR_M_HI_A		0x604F4
> > +#define TRANS_CMRR_M_HI(trans)		_MMIO_TRANS2(trans, \
> > +					_TRANS_CMRR_M_HI_A)
> > +#define	_TRANS_CMRR_N_HI_A		0x604FC
> > +#define TRANS_CMRR_N_HI(trans)		_MMIO_TRANS2(trans, \
> > +					_TRANS_CMRR_N_HI_A)
> > +#define	_TRANS_CMRR_M_LO_A		0x604F0
> > +#define TRANS_CMRR_M_LO(trans)		_MMIO_TRANS2(trans, \
> > +					_TRANS_CMRR_M_LO_A)
> > +#define	_TRANS_CMRR_N_LO_A		0x604F8
> > +#define TRANS_CMRR_N_LO(trans)		_MMIO_TRANS2(trans, \
> > +					_TRANS_CMRR_N_LO_A)
>=20
> Please fix indent, and order based on register offset. That'll also group=
 by
> M/N not by HI/LO.
>=20
> > +
> >  #define _TRANS_PUSH_A			0x60A70
> >  #define _TRANS_PUSH_B			0x61A70
> >  #define _TRANS_PUSH_C			0x62A70
>=20
> --
> Jani Nikula, Intel
