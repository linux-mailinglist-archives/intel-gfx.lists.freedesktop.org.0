Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D22874A361
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 19:45:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD1DC10E483;
	Thu,  6 Jul 2023 17:45:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0BBC10E483
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 17:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688665543; x=1720201543;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=95YLw40GLr3KFHzLpG/TbwQWo+Q0QioNtqne0OGnh1k=;
 b=fqlR6Ck7dSOAbstowux/vSmrN1+0QTtvcJ57ocLF1tK6FS4ibmYcwgdG
 TU/WUQu3nSaTy5A/iy+5gZn9YECAfFVHSc4DXDwIubitgYoqnXoDdnWEH
 Cdy/GyE5xMGJ6gLmUus15/cu1b88/CS0dJL5NVc86BBan4EPxDYOq1IKh
 vvq1TIC3WL4fONI157Rl5OVY9JC9pqrf6parPvNHi70V6ATKGderURiPB
 kUf7g3AWEsIYZChifUtsEu2Kfjl04beqNbDkxIwzYUTpj61EGzyBY2AGg
 OPHpdsoD4upXO0rygC+oSs1ELdXYHrQWoY/lLMcKIsuGblvy9qwZfUeeq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="353511292"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="353511292"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 10:45:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="749243751"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="749243751"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 06 Jul 2023 10:45:42 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 6 Jul 2023 10:45:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 6 Jul 2023 10:45:42 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 6 Jul 2023 10:45:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AJMzkwU2HLqxwUlq9uDPK84wYsscWU1G6i/VmXyvH9DY/8NqPPqqTmRjaAIqyd3kr2OHCRl7Ams1vEHGmNjaYFoLGhahq6jriUx+IP7zMFhcr8UYGFtm1KPz9zDlM+VdKwVpoc5djQPL2Qos3DLXW8HLzQcjoDMuGn2YZO9SJBZvTzE79JBrSw+M5gfHbvs6zlq6IRlOnS3IYi/4h7Jz+uPWW+dA9Nns4BoZWinT1IKZfqZg7nca1bSE792ezvCDhOP+MY11aeTeUJ+uF5LivYd8xTEh/CX6SzofZSx+TaaANSIZ9dQDeLCsfR309xNF1HiRCSSyaD8eRFoUbKP0nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nQf4n4JR/qYFz6yWuKwi8LEDGDUOHiydDArw0m0os00=;
 b=j0wE8Axypo167S9byS2zKz/ALysV6onKOeKyi5yyugHJNeIaaEDEDJr5X8pkdffbiWANfYK332sPhycMOYkMiB6ULVUi6ZnO8s5YxWHWzBwrF2NSEfFLPK51Q1tFSreTmjOchv+fAYsNmz92aDUn7KBFTE3FFxysujJGklL+0wWf7/jRA/md2u0s3ffWSCyVE8Il1kp7EzyP+SeawONV5UYAeDB30Ac9qnGZ1dA/gTQ2qlJdlBzE/841Gyzrn41hHYDiPu8txwM7+IlO93hoptMPWvw7kAEBoYlMAvovzyT24b9ezJUrz/g8b57S5bOEj+zrXADts5IFCTwtLoQS7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by CY5PR11MB6282.namprd11.prod.outlook.com (2603:10b6:930:22::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.24; Thu, 6 Jul
 2023 17:45:39 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::b4d8:c2fb:e619:5584]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::b4d8:c2fb:e619:5584%6]) with mapi id 15.20.6565.016; Thu, 6 Jul 2023
 17:45:39 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Ursulin, Tvrtko" <tvrtko.ursulin@intel.com>
Thread-Topic: [v2] drm/i915/mtl: s/MTL/METEORLAKE for platform/subplatform
 defines
Thread-Index: AQHZq0ev8hW41X/Y1kODrKM+RMk8Z6+tCl7w
Date: Thu, 6 Jul 2023 17:45:39 +0000
Message-ID: <SJ2PR11MB7715D5A0C4FB6C49FBA807D7F82CA@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230616114200.3228284-12-dnyaneshwar.bhadane@intel.com>
 <20230630114010.508930-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230630114010.508930-1-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|CY5PR11MB6282:EE_
x-ms-office365-filtering-correlation-id: feaefca2-e912-44b0-98d4-08db7e48d004
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vRBgxSAnEHB5FbjVaOs4jqk0sODPBTyCH/JJYvMS1erPno7+VJV0WpOX/cZLY9IS3INOp5ODaDDT/i3c9I3BhS9wie4Gh2DvzVD/JN+3N8H7Gxsvo//S4b9RbEB+efw0wCLJzyLXWDJ9a7fbGh7jwnqnJlo5e4Aw4YKqaw8ZnbNpyc94Szoigni7iDT85IzRnPmO0xhFl8CX4MMnCz6TqsxtOcNlTD2Z6RJMIPGyxHHIzMkcZow0KWD6QC2pqtU7KQoETZ9SUkdAk1tGjU+RkFTdFyPy68cOQ3qnrE/ZM4eLBB+SfFOq1AmPsMIHU6nyS7QXBsOtjDdvNpupb1imWSm/NcdULZfC0pkcdpfTn7NSYAIrqg5RYpo3GflvwYdb6vFZC7xK5z+3I7gIFomekPN6oqscDuG6+hvGuS98THDtWeXc07IL87eOXO68tnyIk3SH3pI2rn7vDuZlX9ntc/jc9Q0gkHloEPC7sts685SD9omVls1+h0FQBFC2zgFnWHVpK/JgSnZIpFSBugnc4f3S5nmTTnAbq+JpxzIeW0Jld+5mXK5Eqkhsu+ZySH0s6KkCWB++UUVE0CUtZOdcfIOETPylwWJDIUB9dsIGJuklyCCA5Wqo1VybPYkMy7Ha
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(136003)(39860400002)(366004)(376002)(451199021)(478600001)(82960400001)(71200400001)(186003)(26005)(53546011)(9686003)(6506007)(83380400001)(7696005)(55016003)(38100700002)(4326008)(6636002)(41300700001)(30864003)(2906002)(86362001)(8676002)(8936002)(316002)(66556008)(76116006)(64756008)(66476007)(66946007)(122000001)(33656002)(110136005)(66446008)(38070700005)(52536014)(5660300002)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?z2+vyyfdnYiW/dBEhzlc/fcc++AZywaZBwKt6vZ2/uKEk5kIpHQ2h+8z1FHB?=
 =?us-ascii?Q?KzIi2G7oA9XsUwMctbs3SYlJ374OSohbNUDp86wREknbpRe+UH68a8exieZv?=
 =?us-ascii?Q?YkXGXNXfpdM4wRscn2kiyEjobeA9OquwYIqc8wMuVzGffoNF3SfgO1IvaEbq?=
 =?us-ascii?Q?xnRfrqSrl682XmetKf+SL54FWr4drZZfGc7ODjO1oFqarOiAZ8t7bIo0FG3d?=
 =?us-ascii?Q?SxhzGO8mX2qT2nz1qUIQ3nc9wQD8QoFAUKkiQBbwg78JFwakt432RtjKJvOj?=
 =?us-ascii?Q?z4YF/+eGB9zh0U86YwaF+XzTN2O6BfkyNevRGsJN4wfLTo4/8xyVZhjVuPLA?=
 =?us-ascii?Q?2a0n/rO96NB/P4zZ17DETTkNfmjLz4MMdOua8ZLaJipz/2K4swsOPrevlY8z?=
 =?us-ascii?Q?7iewx4dUSNcq3rV2qw443ochqNq0JkBBId2Iw3CmWrh7wZagmteB7E5seZSt?=
 =?us-ascii?Q?jT8HLSWI/q7LC15AxdeYGE+VpEwFrGsn/GSN92HcCxSXNG9+jlyoM57IEjBp?=
 =?us-ascii?Q?Wns2TuhIHWnVOnNyx55L+jfHul6bNRfZTbM4wTYLvyh7RRKQLszYjtgi+odT?=
 =?us-ascii?Q?ke2Ft4mA34c7/WCMiDn5LvMqJwOtI1DQ3nRGzJ1Ag//4+MbS+Xzu9skpA3q3?=
 =?us-ascii?Q?zogYvw/1jK8DbYFtJCDhcvCAblma9t/XAZTNERnAi99VqTQmd+omWuFoeo+N?=
 =?us-ascii?Q?XCpPD5yKlFl9LggOY4o075Qly4BGQYoksRZnYMrIebeqvKO08ZbhZ6sELmPG?=
 =?us-ascii?Q?CsnndjS5ypZ4d/U7anRvkQ1jtMmsavxQAU/VCAm8S35Y9tV7RR3b6KQ3UjYD?=
 =?us-ascii?Q?jbDSag8nV8Iy8hQy5JPDL0xjLX/Lk3ZKG54ff/cr6iJN3rVMFYAW3ZN4LEBT?=
 =?us-ascii?Q?j3yxlEoS2id5I5PRHA4adJ50v7T0TVSnFYJk1noondr2ofFWSlbwKtvYr1+i?=
 =?us-ascii?Q?fpI34CvzEdIWcPZUbTngTctjHerKjvrQl0E/NzEhN3esQvC+RfZ9ModTcVTM?=
 =?us-ascii?Q?sllzo8ClZnZR6aB2in+HcZM5wUlzUyKz8FSRoGVABmrd5b6O9MUxiuFehhfd?=
 =?us-ascii?Q?TqKUZPdPSwZI+mAdU+YqRLPJI8NKrE8IPtnF5Vr7WyUVk7UoaDaUJY90zkxT?=
 =?us-ascii?Q?H3grIwv9KTH28RBZNHWTvEnu+l7uvjSa1/VfHW2P9jFB9S7+b/ceWl+wu+jr?=
 =?us-ascii?Q?GrhFbSXSqWJlyo3M/VpSjP0w1E4LRHnm7pHB8l9pTuLtDL38NhXIjqr6Hd8K?=
 =?us-ascii?Q?FztBfualIfL01MJa9GEp8r0o2GJqSem6pPknodhkqorQBlodyZ0zdibf027y?=
 =?us-ascii?Q?O3UPdmcR8uQuG/cs3VCDRLjxt7XFcSY32GfGPfwodAuBssH7iaU+Ub5s02zD?=
 =?us-ascii?Q?aXjuRmEzSE1SoZDdx3wZpyDTFyktBzKvw0fgSBocINfwK9aXm+ANJoQFO02B?=
 =?us-ascii?Q?+I1YOF1bXmfaJdh5Bs/I7qbDsMN6G2GybeNpFKnoKGI+fa6FJBYUBUAd9jED?=
 =?us-ascii?Q?bnldr/zpJ+TtYaLVHCQhuZJied0eNNjIViucYpiMPXJ/+SXR3wli7ppfC2xo?=
 =?us-ascii?Q?toORKj811WdtzoLZ8mF65F39NN+UcYpc/seMwXKRNJPIXVmTbqS23hoqyehu?=
 =?us-ascii?Q?MQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: feaefca2-e912-44b0-98d4-08db7e48d004
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2023 17:45:39.5623 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CTbBLKPA4VwoONR1iYHPigplF5yFiLMdpS1flVz2+y+MZFZFtfle7BKGIJlEskPNWN4e7pJcRBzC5MkkJcR2l8IfAIxGXvHDtv7wL8/nW2Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6282
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v2] drm/i915/mtl: s/MTL/METEORLAKE for
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
> Sent: Friday, June 30, 2023 4:40 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Ursulin, Tvrtko <tvrtko.ursulin@intel.com>; jani.nikula@linux.intel.c=
om;
> Srivatsa, Anusha <anusha.srivatsa@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>
> Subject: [v2] drm/i915/mtl: s/MTL/METEORLAKE for platform/subplatform
> defines
>=20
> Follow consistent naming convention. Replace MTL with METEORLAKE. Added
> defines that are replacing IS_MTL_GRAPHICS_STEP with
> IS_METEORLAKE_P_GRAPHICS_STEP and IS_METEORLAKE_M_GRAPHICS_STEP.

The patch also changes MTL_MEDIA macros. That should be mentioned in the co=
mmit message.

> v2:
> - Replace IS_MLT_GRAPHICS_STEP with
	Typo ^ s/MLT/MTL
> IS_METEROLAKE_(P/M)_GRAPHICS_STEP (Tvrtko).
> - Changed subject prefix mtl with MTL (Anusha)
	Rewording:"mtl instead of MTL" or "use lower case instead of upper case"


Anusha
>=20
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Anusha Srivatsa <Anusha.Srivatsa@intel.com>
>=20
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

