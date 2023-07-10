Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7291974D801
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 15:44:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF40010E19F;
	Mon, 10 Jul 2023 13:44:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90E3110E19F
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 13:44:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688996674; x=1720532674;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QG38d5Aee02emYTdSVbPX2kZMEwwD1hYUmrxZCifSck=;
 b=ZqpOneTo113N80R7YPR49RwAhmEVgJ/R4HiUD311A8DYsTIE8yF8SG3q
 Kwi4BNzq5mSlsxv/brW7xJd+j8BzN4vE80iylDGjBL4WU0rvuzQ9R77n9
 QbaQQe63QQS+NDaPypA8oQJaQN3gJPt9Dhjgtm8Y4EZRFT9P0ClUV03+9
 CZmwwJeLhCtXi7Xs7okPXPx/bUlVcwxsCwYaqUNouAiJ88KND8tEe7we6
 lSSM1uQAWTgtGwTTlf7TWZDzwhnjVkxxrDXbjHZ24XKaWAE5RUVaADMc6
 uJAQTQprnYcgeXqfCDAfRvs8u5llHk1ex09Udpqacxz7/UKzXWYeUNUv/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="363212578"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="363212578"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 06:44:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="750345725"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="750345725"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 10 Jul 2023 06:44:30 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 06:44:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 10 Jul 2023 06:44:29 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 10 Jul 2023 06:44:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SBJK4+T97HH63Ll1DknuPIomnntHHYxzHDkfHjxIeYylSBPJHFPGDkQHc2Sp5PAVdvZE5UkRH2uRwFpDqFUjiQ+FaVZpBdI1OVZ3gFla8E8HgZ7Zc0s/T0CBk46WVx+g7rI/UzKVOo0xZrpVyTOHwN1rT3OPVZqVVSpOZy8DRAnlb7cQVMv9YFHwU/OVZnIjv5VBzHUqsUfAvXuNJt/alJbYqfX8GMYYsfD/3jB70bktBcJ9u+ff3bNYONZZNbfILHb9PcXhsm49xAEbmHiBX+sj6yrF6JMzpLEp5parynT2XKwJeXrzJfRJQBLExbERFEyaQMZNzJsAf40wKGTkQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t9gLBwDSQsIYJ3P9AIF3e4+i5xBi8IN2tFxfqxD5nQo=;
 b=Kbk3A1DT4EdKSH4oXLF6IfC3OyBoEWclIoOG7qBEQWYoERYAFU5u2KMCZ2/C09D3hDwUvr2OdqanfDBo7+dJTK2lWdP/0rkwdQ3NIg3kUlyWEHuJPCdUSVAmiJu80nzu10Cqa9AN+09nhnQJzmARn930h7IZhRIo8GAO/EOLXM+mIuxbtXY7QNJXpwmsZIMynD+xgSWP6QhxF9nJtO/5wcP1OW2mwNhu6GQkSLJI1HO0B7myYSLgKmT7Odq/ij0aspTvPduZ9mulGB/7X3HpwT7OpytGpVbJZcqv1sFptlO4ZkTuCY2oz+kYQOgyr7cYHfD6aNkj19jJzkj/YrPJ4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by SN7PR11MB6601.namprd11.prod.outlook.com (2603:10b6:806:273::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.31; Mon, 10 Jul
 2023 13:44:27 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::a548:a888:b9d0:fca1]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::a548:a888:b9d0:fca1%3]) with mapi id 15.20.6565.028; Mon, 10 Jul 2023
 13:44:27 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Ursulin, Tvrtko" <tvrtko.ursulin@intel.com>
Thread-Topic: [v3] drm/i915/mtl: s/MTL/METEORLAKE for platform/subplatform
 defines
Thread-Index: AQHZsx1zdcw3JnaUlkmCBTRdaWq/Na+zAgIw
Date: Mon, 10 Jul 2023 13:44:27 +0000
Message-ID: <IA1PR11MB62660C3B6D48EA16DF2E7AFFE230A@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20230616114200.3228284-12-dnyaneshwar.bhadane@intel.com>
 <20230710105815.2056018-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230710105815.2056018-1-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|SN7PR11MB6601:EE_
x-ms-office365-filtering-correlation-id: 5df3de97-5e05-48c5-8e4c-08db814bc773
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Bea+/riR996LTy175YbfIq7G3z/rPUnUMhAIN2bfRg45fTfyger2qKTWzrf7HtxjyNHnKDtA8Dx1W8Y0/LEhCNdyMe5nxjXqF/5346IkvYBUVTIXp3mVgP5KWRn0yRHTNJanp2HpidC66qYgXH7pSC4XqqOiE7xkQ0VfsWA6IpCICMmzF5Zv7u/7BXONKOEKiQ8X+EvSPfQ7oBsZVdGuAdamP0YfLfuLT+5UMo499ag0vMgsaW+YCcKNuokaeCry+Dg0nEa79nkUhM0KBe8c77wb2pE++3RR31Xf8zTPTlb0vqx/GWxy6IGvKXQH0ITcqBJAqzFiWhLLuw3VguM4Xhy64i3mzgYHz0Gujt45kVWtSor/aDF7PXVk23vF2mrO8JM70Mnno81wtn08S6gihOWcwmU90+7hoxJa2cuweOa30yY8IyHJzZfrgPTZFqjkv2cy5tQ6g+U2a/EJFzzd5AeL5om3Nstb9QJGAoe2V8eSB+lHmjXYhxLbA2P1tsAoQCSKvgpUzrs1P/FUCHOuFMR+rEo1RBqYJfeGrtT0PR2+FerN8t93l0fV9m/9qAaQo81Tzt/xTGVUlbcH+IQvA+k7VeEhQsDMsVZXj1zSOkPPt59U0ptcQQPSEvnkqy2o
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(366004)(136003)(376002)(346002)(451199021)(33656002)(30864003)(2906002)(71200400001)(86362001)(8676002)(76116006)(8936002)(83380400001)(52536014)(66446008)(64756008)(66476007)(66946007)(66556008)(6636002)(4326008)(316002)(38070700005)(5660300002)(9686003)(6506007)(26005)(110136005)(7696005)(186003)(55236004)(53546011)(478600001)(41300700001)(122000001)(54906003)(55016003)(38100700002)(82960400001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?K0ht83pDqTFgO4O7qJPhhUZ0khWYpnJ22ucwXv+VRRWp1LCD40h71s3mqjnW?=
 =?us-ascii?Q?/7VOTf3oBreKfhBFDfQ6yN3NI5SftiX0g4UAKfeIBkKlzXjwGMG+4eu1P81x?=
 =?us-ascii?Q?3bpqqMu7MfB6rwkq8STeQbVBAL9AZEqw4IXRrYL+EDMI/0sPboMuax0FIPV7?=
 =?us-ascii?Q?HKOBF3ssR9lKY8/Gij8TfIa5/PySr1WsHKxqV5xdi1vOOOLg2y0GtwElnCQR?=
 =?us-ascii?Q?hiooln13TLKAGeY6CxHU2E3WmNxu3260H5MnCl4HBJGYwAj/tm+vK4Zt5ctM?=
 =?us-ascii?Q?r6m1/K3zYhgCDiH4CNSYt1uy8Sy0Vhm1Kebczw29pj93rZ1mt4PxVeH9I3aN?=
 =?us-ascii?Q?N/mV4X1MqGuY/8U6okK0rdYL628ypR4q4T+rGSmLpUAqdVLO6zV9P4trw2rV?=
 =?us-ascii?Q?qwKHb+gx01uhqWee2h/DcXXbC21QR/PxKNl2AzM1bESrZzQVlnVKAtQrQFir?=
 =?us-ascii?Q?qWubJ13fe+m9K9WEv0Cj0ovIAsBOG6mtszpc3BUsbf7nhgUTpujFRG2EnWEY?=
 =?us-ascii?Q?+pG6MGvYVh939Un08/oGB1ZaeR8HK919Wikmn7M31sD2kANhsymosAOgPCDI?=
 =?us-ascii?Q?qFzOx/mTDtBBDMCad9yKlkkZzhX32NL3SzVl8aG4GfGDacANly9/7+J6yY1b?=
 =?us-ascii?Q?xA2CVgR6SE3KlQaF9f6DgeIhZvSqLTOqGwECb7//ROf9gFr6PN3Jt5lv9uI3?=
 =?us-ascii?Q?nIYUBOX6C2ETsQwkMZZXSXKiHnY88ixypBOu31VjFgvhysy3e7Nf4Szogv5g?=
 =?us-ascii?Q?PHKi7yAB0xhSTwnIgq35rtTbe/AMqPInIo8UjW5MUDqdPtGAWzWlzPywsFeg?=
 =?us-ascii?Q?RNZMnqBXriagYNGadRLT9PBGiE0HHXH11MbeD/e5hOIpLgDpmu9TlPBXIyKW?=
 =?us-ascii?Q?yUGMYMb37/NllToL+CUWzRi4zhA7UG1Up0UExOqD2v/ObRWUOPUPjizXgsAs?=
 =?us-ascii?Q?XRm+QO/hSY22I6Q8pPRT1CX+uwEDhPvCiDyefboo9bUvjYZ8W2HHbAKKWNgH?=
 =?us-ascii?Q?/fCDm4mlP+GIugco8qGPT/sETFpSDXg8hVCN2ryHo2xhhmjqj7wHkncgnF7h?=
 =?us-ascii?Q?juw09OWyjjJDqXkmc062f2sYy891fBFGEvmFDhAA9Sn7ZvUWuxW4ntmFDusy?=
 =?us-ascii?Q?ve6jEYCRljNn6V5qmUzpe5fz3bY+VAwWEzH4veSBRXC4jvoaKM+60NP5V1Pa?=
 =?us-ascii?Q?I/6n/vY1rdbFFsJ/WPYh+nbIlKTAUD5SxhkkfMzsUozNr7EGBQPfpipiklnb?=
 =?us-ascii?Q?/fvz/ziZKtGf2wFzw2WTn+IEqG1gjX/BhXVFDMhp9Gu3MnsNxsiRdi0O8Dpi?=
 =?us-ascii?Q?4SMfyQ//arCmQhe3BsMfO9sgJUkoWQCuI2epxf0mN3+iYjiAqGB2f629sRAe?=
 =?us-ascii?Q?MmcH5DXp0Bo/h0HbkQCY7miLMz2mRvEw9IM2jTpbkxeXu5IryorN5mU/as+r?=
 =?us-ascii?Q?LglaMYMwwQpC1fsh1lOpC1j4LldT+MM95qWkM7GaadSLIXdSuPbUs9L4+Hh3?=
 =?us-ascii?Q?p/8Anm+bMrVpo9gO9b4Ssn3Jt7zSvdbeLRj2dLCNk/jG8H9eTcazGAcTjUyV?=
 =?us-ascii?Q?IAqlAkH36fNym3Sb+R1I0+zSTwXcs3lJZyQAfQATN6glEgKanaH9hmRPGkfy?=
 =?us-ascii?Q?ug=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5df3de97-5e05-48c5-8e4c-08db814bc773
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2023 13:44:27.1307 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QOzNQ+pWR883llCYa9ncm/bh+A9FSnbbPXnoVy62MUuo23CzXQCYWtlF5i4Jd9fPLlEGOyPokXKbgmE1a53VoZ+2+Uy6r6U+jH9aVODj4z4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6601
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v3] drm/i915/mtl: s/MTL/METEORLAKE for
 platform/subplatform defines
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
> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Sent: Monday, July 10, 2023 4:28 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Ursulin, Tvrtko <tvrtko.ursulin@intel.com>; jani.nikula@linux.intel.c=
om;
> Srivatsa, Anusha <anusha.srivatsa@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>
> Subject: [v3] drm/i915/mtl: s/MTL/METEORLAKE for platform/subplatform
> defines
>=20
> Follow consistent naming convention. Replace MTL with METEORLAKE. Added
> defines that are replacing IS_MTL_GRAPHICS_STEP with
> IS_METEORLAKE_P_GRAPHICS_STEP and IS_METEORLAKE_M_GRAPHICS_STEP.
> Also replaced IS_METEORLAKE_MEDIA_STEP instead of IS_MTL_MEDIA_STEP
> and IS_METEORLAKE_DISPLAY_STEP instead of IS_MTL_DISPLAY_STEP.
>=20
Hi Tvrtko,
Could you please give the feedback on this ? or suggestion regarding the ap=
proach.

> v2:
> - Replace IS_MTL_GRAPHICS_STEP with
> IS_METEROLAKE_(P/M)_GRAPHICS_STEP (Tvrtko).
> - Changed subject prefix mtl instead of MTL (Anusha)
> v3:
> - Updated the commit message. (Anusha)
>=20
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Anusha Srivatsa <Anusha.Srivatsa@intel.com>
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      | 10 ++---
>  .../drm/i915/display/skl_universal_plane.c    |  4 +-
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  8 ++--
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
>  .../drm/i915/gt/intel_execlists_submission.c  |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  4 +-
>  drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
>  drivers/gpu/drm/i915/gt/intel_rc6.c           |  2 +-
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 44 +++++++++----------
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  4 +-
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  4 +-
>  drivers/gpu/drm/i915/i915_drv.h               | 15 +++++--
>  drivers/gpu/drm/i915/i915_perf.c              |  4 +-
>  15 files changed, 60 insertions(+), 51 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 7f8b2d7713c7..6358a8b26172 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1093,7 +1093,7 @@ static int intel_fbc_check_plane(struct
> intel_atomic_state *state,
>=20
>  	/* Wa_14016291713 */
>  	if ((IS_DISPLAY_VER(i915, 12, 13) ||
> -	     IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
> +	     IS_METEORLAKE_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
>  	    crtc_state->has_psr) {
>  		plane_state->no_fbc_reason =3D "PSR1 enabled
> (Wa_14016291713)";
>  		return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> index f7608d363634..8c3158b188ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> @@ -92,7 +92,7 @@ int intel_pmdemand_init(struct drm_i915_private *i915)
>  				     &pmdemand_state->base,
>  				     &intel_pmdemand_funcs);
>=20
> -	if (IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
> +	if (IS_METEORLAKE_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
>  		/* Wa_14016740474 */
>  		intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0,
> DMD_RSP_TIMEOUT_DISABLE);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 62151abe4748..ecd4e36119b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1247,7 +1247,7 @@ static void wm_optimization_wa(struct intel_dp
> *intel_dp,
>  	bool set_wa_bit =3D false;
>=20
>  	/* Wa_14015648006 */
> -	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> +	if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
>  	    IS_DISPLAY_VER(dev_priv, 11, 13))
>  		set_wa_bit |=3D crtc_state->wm_level_disabled;
>=20
> @@ -1320,7 +1320,7 @@ static void intel_psr_enable_source(struct intel_dp
> *intel_dp,
>  		 * All supported adlp panels have 1-based X granularity, this may
>  		 * cause issues if non-supported panels are used.
>  		 */
> -		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> +		if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0,
> STEP_B0))
>  			intel_de_rmw(dev_priv,
> MTL_CHICKEN_TRANS(cpu_transcoder), 0,
>  				     ADLP_1_BASED_X_GRANULARITY);
>  		else if (IS_ALDERLAKE_P(dev_priv))
> @@ -1328,7 +1328,7 @@ static void intel_psr_enable_source(struct intel_dp
> *intel_dp,
>  				     ADLP_1_BASED_X_GRANULARITY);
>=20
>  		/* Wa_16012604467:adlp,mtl[a0,b0] */
> -		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> +		if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0,
> STEP_B0))
>  			intel_de_rmw(dev_priv,
>  				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder),
> 0,
>=20
> MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
> @@ -1489,7 +1489,7 @@ static void intel_psr_disable_locked(struct intel_d=
p
> *intel_dp)
>=20
>  	if (intel_dp->psr.psr2_enabled) {
>  		/* Wa_16012604467:adlp,mtl[a0,b0] */
> -		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> +		if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0,
> STEP_B0))
>  			intel_de_rmw(dev_priv,
>  				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder),
>=20
> MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0); @@ -1963,7 +1963,7 @@
> int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  		goto skip_sel_fetch_set_loop;
>=20
>  	/* Wa_14014971492 */
> -	if ((IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> +	if ((IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
>  	     IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
>  	    crtc_state->splitter.enable)
>  		pipe_clip.y1 =3D 0;
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 636a88827a8f..cf1bcc6bff08 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2169,8 +2169,8 @@ static bool skl_plane_has_rc_ccs(struct
> drm_i915_private *i915,
>  				 enum pipe pipe, enum plane_id plane_id)  {
>  	/* Wa_14017240301 */
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
>  		return false;
>=20
>  	/* Wa_22011186057 */
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index 3173e811463d..26656d4be61e 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -180,8 +180,8 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u3=
2
> *cs, const i915_reg_t inv  static int mtl_dummy_pipe_control(struct
> i915_request *rq)  {
>  	/* Wa_14016712196 */
> -	if (IS_MTL_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0, STEP_B0)) {
> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(rq->engine->i915, STEP_A0,
> STEP_B0) ||
> +	    IS_METEORLAKE_P_GRAPHICS_STEP(rq->engine->i915, STEP_A0,
> STEP_B0))
> +{
>  		u32 *cs;
>=20
>  		/* dummy PIPE_CONTROL + depth flush */ @@ -765,8 +765,8
> @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>  		     PIPE_CONTROL_FLUSH_ENABLE);
>=20
>  	/* Wa_14016712196 */
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
>  		/* dummy PIPE_CONTROL + depth flush */
>  		cs =3D gen12_emit_pipe_control(cs, 0,
>=20
> PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0); diff --git
> a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 0aff5bb13c53..df4883764ad4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1616,7 +1616,7 @@ static int __intel_engine_stop_cs(struct
> intel_engine_cs *engine,
>  	 * Wa_22011802037: Prior to doing a reset, ensure CS is
>  	 * stopped, set ring stop bit and prefetch disable bit to halt CS
>  	 */
> -	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(engine->i915, STEP_A0,
> STEP_B0) ||
>  	    (GRAPHICS_VER(engine->i915) >=3D 11 &&
>  	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
>  		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine-
> >mmio_base),
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 2ebd937f3b4c..802b31ad982e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -3001,7 +3001,7 @@ static void execlists_reset_prepare(struct
> intel_engine_cs *engine)
>  	 * Wa_22011802037: In addition to stopping the cs, we need
>  	 * to wait for any pending mi force wakeups
>  	 */
> -	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(engine->i915, STEP_A0,
> STEP_B0) ||
>  	    (GRAPHICS_VER(engine->i915) >=3D 11 &&
>  	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
>  		intel_engine_wait_for_pending_mi_fw(engine);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> index 0b414eae1683..e30b56be0cb8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> @@ -166,8 +166,8 @@ void intel_gt_mcr_init(struct intel_gt *gt)
>  		gt->steering_table[OADDRM] =3D
> xelpmp_oaddrm_steering_table;
>  	} else if (GRAPHICS_VER_FULL(i915) >=3D IP_VER(12, 70)) {
>  		/* Wa_14016747170 */
> -		if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -		    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +		if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0,
> STEP_B0) ||
> +		    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0,
> STEP_B0))
>  			fuse =3D REG_FIELD_GET(MTL_GT_L3_EXC_MASK,
>  					     intel_uncore_read(gt->uncore,
>=20
> MTL_GT_ACTIVITY_FACTOR)); diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.=
c
> b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index a4ec20aaafe2..80608090fb1e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1370,8 +1370,8 @@ gen12_emit_indirect_ctx_rcs(const struct
> intel_context *ce, u32 *cs)
>  					      cs, GEN12_GFX_CCS_AUX_NV);
>=20
>  	/* Wa_16014892111 */
> -	if (IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP_B0) ||
> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(ce->engine->i915, STEP_A0,
> STEP_B0) ||
> +	    IS_METEORLAKE_P_GRAPHICS_STEP(ce->engine->i915, STEP_A0,
> STEP_B0)
> +||
>  	    IS_DG2(ce->engine->i915))
>  		cs =3D dg2_emit_draw_watermark_setting(cs);
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c
> b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index 58bb1c55294c..cc8b09b8a7fa 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -526,7 +526,7 @@ static bool rc6_supported(struct intel_rc6 *rc6)
>  		return false;
>  	}
>=20
> -	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
> +	if (IS_METEORLAKE_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
>  	    gt->type =3D=3D GT_MEDIA) {
>  		drm_notice(&i915->drm,
>  			   "Media RC6 disabled on A step\n"); diff --git
> a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index bb948ffc95ca..f840376f107f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -819,8 +819,8 @@ static void mtl_ctx_gt_tuning_init(struct intel_engin=
e_cs
> *engine,
>=20
>  	dg2_ctx_gt_tuning_init(engine, wal);
>=20
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_B0, STEP_FOREVER)
> ||
> +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_B0, STEP_FOREVER))
>  		wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0,
> false);  }
>=20
> @@ -831,8 +831,8 @@ static void mtl_ctx_workarounds_init(struct
> intel_engine_cs *engine,
>=20
>  	mtl_ctx_gt_tuning_init(engine, wal);
>=20
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
>  		/* Wa_14014947963 */
>  		wa_masked_field_set(wal, VF_PREEMPTION,
>  				    PREEMPTION_VERTEX_COUNT, 0x4000);
> @@ -1716,8 +1716,8 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, stru=
ct
> i915_wa_list *wal)
>  	/* Wa_22016670082 */
>  	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
>=20
> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_B0) ||
> +	    IS_METEORLAKE_P_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_B0)) {
>  		/* Wa_14014830051 */
>  		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
>=20
> @@ -2413,15 +2413,15 @@ rcs_engine_wa_init(struct intel_engine_cs *engine=
,
> struct i915_wa_list *wal)  {
>  	struct drm_i915_private *i915 =3D engine->i915;
>=20
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
>  		/* Wa_22014600077 */
>  		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
>  				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
>  	}
>=20
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>  	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>  	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
>  		/* Wa_1509727124 */
> @@ -2431,7 +2431,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine,
> struct i915_wa_list *wal)
>=20
>  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>  	    IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
> +	    IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
>  		/* Wa_22012856258 */
>  		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
>  				 GEN12_DISABLE_READ_SUPPRESSION);
> @@ -3016,13 +3016,13 @@ general_render_compute_wa_init(struct
> intel_engine_cs *engine, struct i915_wa_li
>=20
> GEN11_INDIRECT_STATE_BASE_ADDR_OVERRIDE);
>  	}
>=20
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_B0, STEP_FOREVER)
> ||
> +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_B0, STEP_FOREVER))
>  		/* Wa_14017856879 */
>  		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3,
> MTL_DISABLE_FIX_FOR_EOT_FLUSH);
>=20
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
>  		/*
>  		 * Wa_14017066071
>  		 * Wa_14017654203
> @@ -3030,13 +3030,13 @@ general_render_compute_wa_init(struct
> intel_engine_cs *engine, struct i915_wa_li
>  		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
>  				 MTL_DISABLE_SAMPLER_SC_OOO);
>=20
> -	if (IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +	if (IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
>  		/* Wa_22015279794 */
>  		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
>  				 DISABLE_PREFETCH_INTO_IC);
>=20
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>  	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>  	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
>  		/* Wa_22013037850 */
> @@ -3044,16 +3044,16 @@ general_render_compute_wa_init(struct
> intel_engine_cs *engine, struct i915_wa_li
>  				DISABLE_128B_EVICTION_COMMAND_UDW);
>  	}
>=20
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>  	    IS_PONTEVECCHIO(i915) ||
>  	    IS_DG2(i915)) {
>  		/* Wa_22014226127 */
>  		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
> DISABLE_D8_D16_COASLESCE);
>  	}
>=20
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>  	    IS_DG2(i915)) {
>  		/* Wa_18017747507 */
>  		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN,
> POLYGON_TRIFAN_LINELOOP_DISABLE); diff --git
> a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 2eb891b270ae..c8e2a110b833 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -277,7 +277,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>  		flags |=3D GUC_WA_GAM_CREDITS;
>=20
>  	/* Wa_14014475959 */
> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_B0) ||
>  	    IS_DG2(gt->i915))
>  		flags |=3D GUC_WA_HOLD_CCS_SWITCHOUT;
>=20
> @@ -292,7 +292,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>  		flags |=3D GUC_WA_DUAL_QUEUE;
>=20
>  	/* Wa_22011802037: graphics version 11/12 */
> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_B0) ||
>  	    (GRAPHICS_VER(gt->i915) >=3D 11 &&
>  	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 70)))
>  		flags |=3D GUC_WA_PRE_PARSER;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index a0e3ef1c65d2..6f0e07c4488e 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1658,7 +1658,7 @@ static void guc_engine_reset_prepare(struct
> intel_engine_cs *engine)
>  	 * Wa_22011802037: In addition to stopping the cs, we need
>  	 * to wait for any pending mi force wakeups
>  	 */
> -	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(engine->i915, STEP_A0,
> STEP_B0) ||
>  	    (GRAPHICS_VER(engine->i915) >=3D 11 &&
>  	     GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70))) {
>  		intel_engine_stop_cs(engine);
> @@ -4267,7 +4267,7 @@ static void guc_default_vfuncs(struct intel_engine_=
cs
> *engine)
>=20
>  	/* Wa_14014475959:dg2 */
>  	if (engine->class =3D=3D COMPUTE_CLASS)
> -		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0,
> STEP_B0) ||
> +		if (IS_METEORLAKE_M_GRAPHICS_STEP(engine->i915,
> STEP_A0, STEP_B0) ||
>  		    IS_DG2(engine->i915))
>  			engine->flags |=3D
> I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
>=20
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index deb5b9064621..8b4cc3f4df1f 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -688,15 +688,24 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,  #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
>  	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
>=20
> -#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
> +#define IS_METEORLAKE_GRAPHICS_STEP(__i915, variant, since, until) \
>  	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE,
> INTEL_SUBPLATFORM_##variant) && \
>  	 IS_GRAPHICS_STEP(__i915, since, until))
>=20
> -#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
> +#define IS_METEORLAKE_P_GRAPHICS_STEP(__i915, since, until) \
> +	(IS_METEORLAKE_P(__i915) && \
> +	 IS_GRAPHICS_STEP(__i915, since, until))
> +
> +#define IS_METEORLAKE_M_GRAPHICS_STEP(__i915, since, until) \
> +	(IS_METEORLAKE_M(__i915) && \
> +	 IS_GRAPHICS_STEP(__i915, since, until))
> +
> +
> +#define IS_METEORLAKE_DISPLAY_STEP(__i915, since, until) \
>  	(IS_METEORLAKE(__i915) && \
>  	 IS_DISPLAY_STEP(__i915, since, until))
>=20
> -#define IS_MTL_MEDIA_STEP(__i915, since, until) \
> +#define IS_METEORLAKE_MEDIA_STEP(__i915, since, until) \
>  	(IS_METEORLAKE(__i915) && \
>  	 IS_MEDIA_STEP(__i915, since, until))
>=20
> diff --git a/drivers/gpu/drm/i915/i915_perf.c
> b/drivers/gpu/drm/i915/i915_perf.c
> index 0a111b281578..e943ffbaecbc 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -4214,7 +4214,7 @@ static int read_properties_unlocked(struct i915_per=
f
> *perf,
>  	 * C6 disable in BIOS. Fail if Media C6 is enabled on steppings where
> OAM
>  	 * does not work as expected.
>  	 */
> -	if (IS_MTL_MEDIA_STEP(props->engine->i915, STEP_A0, STEP_C0) &&
> +	if (IS_METEORLAKE_MEDIA_STEP(props->engine->i915, STEP_A0,
> STEP_C0) &&
>  	    props->engine->oa_group->type =3D=3D TYPE_OAM &&
>  	    intel_check_bios_c6_setup(&props->engine->gt->rc6)) {
>  		drm_dbg(&perf->i915->drm,
> @@ -5322,7 +5322,7 @@ int i915_perf_ioctl_version(struct drm_i915_private
> *i915)
>  	 * C6 disable in BIOS. If Media C6 is enabled in BIOS, return version 6
>  	 * to indicate that OA media is not supported.
>  	 */
> -	if (IS_MTL_MEDIA_STEP(i915, STEP_A0, STEP_C0)) {
> +	if (IS_METEORLAKE_MEDIA_STEP(i915, STEP_A0, STEP_C0)) {
>  		struct intel_gt *gt;
>  		int i;
>=20
> --
> 2.34.1

