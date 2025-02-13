Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 538CCA33ACB
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 10:15:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E593610EA37;
	Thu, 13 Feb 2025 09:15:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BHKT3uQu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 690C310E2AD;
 Thu, 13 Feb 2025 09:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739438134; x=1770974134;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ap4Bca+OT8HvthvYYpxHLzscKjITjLonsIW7ZdxBBRg=;
 b=BHKT3uQumz5oAM00dNK8Oy+GAX9PMmcJwH3Ou1yN93u/wFuLbejXp/5o
 3ZniJmfxEEfEnuDxcOePziMuWfr2ojFOuM64eKPFcO4Iok7xarsElYvg+
 wCVcAEOMXw1zmrt5zyn3Sn3wl682JoB126OXU1mjUvoPykfxS2EZkKE0z
 nIhy1uTaEchXkDbav7iV0y6pdHBGIPOiBOR4mQc9fKLxNaQjZi/UJSwNL
 G2rfvGJGdR5eqnSWNVh2Y5NhePlYDp67pqcISUPZFmDVfonGhjwUIiKA3
 dsq9u8CHgwUr/gSlfX5YoGokcfyDVNHmeyhpwc03gPbUSNjdJVJ1gaHJX Q==;
X-CSE-ConnectionGUID: Ta4TeSTuS1OB7Uh9NpDt4w==
X-CSE-MsgGUID: QGszCGaNSpeo56grfvSCaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="57662332"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="57662332"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 01:15:34 -0800
X-CSE-ConnectionGUID: RRexv39ZQia71NZ3O+oYhw==
X-CSE-MsgGUID: PBmEvGnYREisKi4ghJVstA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="144033007"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2025 01:15:34 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 13 Feb 2025 01:15:33 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 13 Feb 2025 01:15:33 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 01:15:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZgKRatpkw1KMuENVQEvbPjuL/SfAY/9O7Dp/thasbZOx/7rrs4vZ8ZDaVAX6KLk+nQR+WMJ5tBkzPckOwxQ/eGY6aU5JjAVwnF1EBvE/gtHZ9yG/GZkXbH4R63oM/KC7N/Y9RZNlDZzdvOVCLbsaQjw9uHMoxYsOBU/8QVIrLpCWaeB2MM9UHPQuzu2zx+i1MIzdzufrIgdsts7A7xGnRYAGT47ZnKHVjclHWu9o/VSdXZ6eZLwQ7bMJ/T+aKvFYfbFcUb/U4dser9ycxE7c6cgrpKyNT5nrbkf0XvfmLTNmLHWJrFfpLXgaZcFXiMLT+QtVIBUZDpZsOGTYiB+R7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7fWC216bnPGNWadqyJjMESS7zh54qVg8D46PI1AkIW8=;
 b=a00vqx1LLiS9aBMxhIwreiHrrx+4woayq3cQ2q2zZZ/EAnaOCO/VI+dyz4jxu0K+5jVND6+O9LtrpXNH7dxKN/7iFMiTtCdNUkZ3lJgZywX8yJwt38Rv+J1GFOgmkVHvwsn7baXF0K2OJtA2dzNNYAwhHyQKpNb1+YV4ahCGBn//nWFvh63qbKFX2JHLdCtnSEKejRDs7uA6rJoO8fPUJYQM+dYx6ToOw8oo8ir5lI3QHV++05y5eQXC1hJ3coX4Zw+iapyZJeXdHY2lDS1pEs8r5D+98JHUC0scBIqLmeANzm3cNpDpkj7CV6GtK6N4mqxhNuy7h7VtW5aBNzrEew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS7PR11MB6013.namprd11.prod.outlook.com (2603:10b6:8:70::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Thu, 13 Feb
 2025 09:15:31 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8445.013; Thu, 13 Feb 2025
 09:15:31 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 09/14] drm/i915/display: convert
 intel_cpu_transcoder_mode_valid() to intel_display
Thread-Topic: [PATCH 09/14] drm/i915/display: convert
 intel_cpu_transcoder_mode_valid() to intel_display
Thread-Index: AQHbfWx7RnTkFv4NkkuByheAfEhXGLNE9LBg
Date: Thu, 13 Feb 2025 09:15:31 +0000
Message-ID: <SN7PR11MB67507D6FA513715B66D70F03E3FF2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1739378095.git.jani.nikula@intel.com>
 <f9246a00a2e7aabaffb86f863915a4307e1fd3f8.1739378095.git.jani.nikula@intel.com>
In-Reply-To: <f9246a00a2e7aabaffb86f863915a4307e1fd3f8.1739378095.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS7PR11MB6013:EE_
x-ms-office365-filtering-correlation-id: 33561161-60bb-4c72-b2a4-08dd4c0ef6d8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?QKJtuadggm+s6ZuWZL1q6XBr1UmBO2XnVB1zc1aV+yp9sBUrJRVtTQ+00ExK?=
 =?us-ascii?Q?a4JhnPXUV5+3KDddcjIUFbJRIZVIMG2JH7qRicmf5cZJ3BPC+1GwDOZyX39g?=
 =?us-ascii?Q?4dH1EQpJmsYn8CuhjvNqQgf+s6eYmeQa7y/IUnHxw9SJFF24yfLv2aIOe+Ur?=
 =?us-ascii?Q?rlypkL0viJJrZ5ZPbRKtFaDr1bKJnGvPtudo2R5xKKLhIXpf2FnbwIcyGNAB?=
 =?us-ascii?Q?q7R5CALvwMEAzOky1ZHMca6/uTPZsPO07b6+YhEFfNqWhMp+yOLA7IJcDfet?=
 =?us-ascii?Q?ATNuCANX8l4fk39Glh+vWo2eMgwuDT7Z0XHEW96Ki+G1Acx8ZxlCe7B4QBn1?=
 =?us-ascii?Q?X1wqhqmyXJ2YZkvaaU2B3Tm0csPYlYEwCVrSQyw1ANS2fKI4IM5PU/vxB455?=
 =?us-ascii?Q?SX4OXudvTrxXHmij3Xs02h3tgswAPShtlkXRmy6NRSe81xFIEa+7UF/YTWw5?=
 =?us-ascii?Q?5h4/rblXLOINtxWtJDRXmOlK31vSwgj4za4FW5iiUZCoxY9675efXypMw93L?=
 =?us-ascii?Q?2tVHkDPqAj5EY9Qx50le8wtdIVtksHLggkcdy8hhj/sdh9oEZPnKTzEhqJOa?=
 =?us-ascii?Q?8DpOr+PdmCHh4aR3TjRolAnlsIlxa4OlsDNlOhkXas0X4w3ClOIPFGX2DrZj?=
 =?us-ascii?Q?RcIzKdxLMzo+5oCfn/LlstJPwqMh3fGPSyF/sOIIasPFmhXIcBaCzvArDTTv?=
 =?us-ascii?Q?/cxrBOAm3AD7eVmEAqSF8n5/znjcDIxIqicNmh8DqAgEmgOr+0yBbEaypWJq?=
 =?us-ascii?Q?aymfPsMQD4BGNpgsHyuDqRSPCkHlurjOo63jbx16Beocc/l6QYgrTUaj6si7?=
 =?us-ascii?Q?k4AYheMwgK9egH9uyz92el/qJ2yRCNoEr39iRC0a17gTnabCjBhkpmEsmnEr?=
 =?us-ascii?Q?7N/BqSD6wVWD08AtLChXxZKgaFPM/SBZ8TNetntR5gi3mJqgpHop9bW1FgWE?=
 =?us-ascii?Q?XxxZ40We9eQKnwqRrQVP+WIO/pSrOs+h9mreXF0x5KAsHQVZtjJ6XHQY8JS0?=
 =?us-ascii?Q?Vsj63rAV2sW9HfaaFDc9l5sI7qp7RKc0Df1d2LGGssCRuXgrh4w0semCeEht?=
 =?us-ascii?Q?HMSWEMHGi3u2FLS1aLG4UT3JG8GKXxcqBfCo/xOSkIu84ngq+69MoP8Crzaj?=
 =?us-ascii?Q?AcQW6hO0vuM480LbfR497MLqbmENcR3PnBEqkS8M8OgFFJKg43ftEyhbMYgH?=
 =?us-ascii?Q?vGqMNi0sn4vnU20tibH7PFdXMQjg6GdgijUHGjbm4feQT+/7PbFN04hnaBX8?=
 =?us-ascii?Q?ncaT5kuN64bnIbNtX00RG8pLdluN+Etnaj5fwROzCKmMHKkRDKBZmepkAGJX?=
 =?us-ascii?Q?sC9+q8BJB9TEvwECLGPt7ONgBID4DVmmCcoEaSieKNNmPFwysAUnqUQHnHI5?=
 =?us-ascii?Q?NscSylEoGaatXfRs46g7A4hIi8qi1LuPf/L07V3z6w7HHnCL4vAXbmHWj40W?=
 =?us-ascii?Q?5lWENTYRL8TqycNDYEmYGWneSWENP0Hj?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?s2qNN5Yr6yHJtezW02LLCKJ0XAw8vxR37hUWmsL+MlQssoFW08w1Vwh+mi78?=
 =?us-ascii?Q?hyDC99uZ7L4biJfRKwj5odl9GeuSZmmCDyb2ayrR4uYjVAKhl5EIC7f6q27Y?=
 =?us-ascii?Q?Cg9IqptwdF4qe6NHsBX5jNU1MCf8OJqsT7lz7EVFry6YyhctEP25V/3Q7tOF?=
 =?us-ascii?Q?DQLRx7pCIMpJBSOxG0YECiwphqNY0j2ZhtW+Z5mPyENLapAAXo3DhH7wmlkj?=
 =?us-ascii?Q?jACGNOK7QavGLrwV994R4UyN4ohW09FImz9L/EzEgit1LLHjNPJHoiXe9ISN?=
 =?us-ascii?Q?rYcKuzx3l1F2gXuzvvrqA+hVUbgF/9Hcuzj0Oj6paDb7UY/PA1B+AU66FuWp?=
 =?us-ascii?Q?jxmkNqtvPUMbKR4TkEK8334Ndsp9c0lLO6JMGWMgE2pQDLzcWwnfgyd1YInS?=
 =?us-ascii?Q?NMyYD1/yQC+RuCq8HyQAV64e8c48gsBkmLlEPBe0EgiBWXXnMJeiWmDPEvRO?=
 =?us-ascii?Q?5oljbEFQ547YJTb1Z7llyVIke+1dyoKEiovssZJsg9UGQ58WSiQ9DFGvkTDm?=
 =?us-ascii?Q?wXSXJBuv7l84FTTffNB39y7x+dkp2VleNIoliDXu0OVNAkevQXfG+cyp6j0b?=
 =?us-ascii?Q?HivjlMFyj6xrhsFFad1qcjhEZCBsWIDNmGOne4nqCOxT8JiOHCMw/b31B3Fj?=
 =?us-ascii?Q?3NInKO+15mozHerefnfPSTa39e2bHOuPcU/uYkrinwUdbmViMQhcTM6HWVvm?=
 =?us-ascii?Q?we2A7bHNOklGm9TGFitnwm9Uz/EOkxttgjVhGZO3kO+m6CgN83Uip75p5Lo8?=
 =?us-ascii?Q?s2nWz3icQZl3RWg5LFi3/VQDIaMNb3kLnG4HFWuxES91WUvOqEY5EoJ6zH+P?=
 =?us-ascii?Q?koZufpZmbxxQmZsy/gGadpwfbt//F41WYE7xClCMYX0KnpQKud/8cGjOh1ei?=
 =?us-ascii?Q?ru0I7BiAL142CE2Z5H4SXtSFZusc35cDcrLkUCQVvsaTZDk5xe4K/qVh1kkE?=
 =?us-ascii?Q?LFP+VdewGjMHYKRwr/70NG5rf7dMo3jIL7l0SbGcaO3unSSBeAWf6vRXnRlT?=
 =?us-ascii?Q?YNsyoREv+3StmY5iE5kESGtDoVfsaz27Qq39cQ69/nOsCCg52samcue9mxYP?=
 =?us-ascii?Q?MeRE7QTut4e4knIrz4zIpts1lMiJuZMPsYhtWPelnGFiUBrhVJ2CaAPwV08Q?=
 =?us-ascii?Q?cWtzl+Vev43yUcYrGHcPpfag4E3r2iDRkEvM2T33nFaIYJhD1efObnmIiQqH?=
 =?us-ascii?Q?fHq/TcTXs2XJVJ0FWUD+h9gQ1qX98af5nY2EO6hr3olXq51DMGLtZP1FukcR?=
 =?us-ascii?Q?oCikFjUcFCprMq36NL3UpJ2i3M/GVU7sqfM/FdQDkKgVRslmfDBXRCtpIazy?=
 =?us-ascii?Q?aZ849EQuQqeyXQYOzwNGa3DMzolEGdIGaLRN/Jak6tjZo5m3W6I+hX1R9OtW?=
 =?us-ascii?Q?kGutAcMivqPD+3N6Cova5Z4I5dtZriHbWjdEe7jry4y4n5IIKg044ziFVWxx?=
 =?us-ascii?Q?1lcbJ0WTWqLikKVhKMWVWQX7ilrnQ/4jm1ORbrl0USkMp1R4Ku8oQ3sj8UOh?=
 =?us-ascii?Q?+ZQCKMahbDZFJ4/VjFk/UpgbcLt4gOUWr43vWeFmQpSP+yN7rxQfZfHLn5U7?=
 =?us-ascii?Q?itTruEdyWBeeVQ0wbUVn7WPh4ScDMadMH3odh4wF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33561161-60bb-4c72-b2a4-08dd4c0ef6d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2025 09:15:31.1010 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j5pksKUubIv8Gv6FVSPO63WC4mHA4p78k1PQw0zxgW3nv0wYqWPSJP6r2ZbrIS2IKEpCSCtcl4ILTdWh0MHmJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6013
X-OriginatorOrg: intel.com
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Wednesday, February 12, 2025 10:07 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 09/14] drm/i915/display: convert
> intel_cpu_transcoder_mode_valid() to intel_display
>=20
> Going forward, struct intel_display is the main display device data point=
er.
> Convert the intel_cpu_transcoder_mode_valid()() helper to struct intel_di=
splay,
> allowing further conversions elsewhere.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c       | 4 ++--
>  drivers/gpu/drm/i915/display/intel_crt.c     | 2 +-
>  drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
> drivers/gpu/drm/i915/display/intel_display.h | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c      | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  | 2 +-
>  drivers/gpu/drm/i915/display/intel_dvo.c     | 6 +++---
>  drivers/gpu/drm/i915/display/intel_hdmi.c    | 2 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c    | 6 +++---
>  drivers/gpu/drm/i915/display/intel_sdvo.c    | 3 +--
>  drivers/gpu/drm/i915/display/intel_tv.c      | 3 +--
>  drivers/gpu/drm/i915/display/vlv_dsi.c       | 6 +++---
>  12 files changed, 21 insertions(+), 23 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 0f2a19690c18..1f0ff4000658 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1460,10 +1460,10 @@ static void gen11_dsi_post_disable(struct
> intel_atomic_state *state,  static enum drm_mode_status
> gen11_dsi_mode_valid(struct drm_connector *connector,
>  						 const struct
> drm_display_mode *mode)  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->dev);
> +	struct intel_display *display =3D to_intel_display(connector->dev);
>  	enum drm_mode_status status;
>=20
> -	status =3D intel_cpu_transcoder_mode_valid(i915, mode);
> +	status =3D intel_cpu_transcoder_mode_valid(display, mode);
>  	if (status !=3D MODE_OK)
>  		return status;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c
> b/drivers/gpu/drm/i915/display/intel_crt.c
> index 8eedae1d7684..321580b095e7 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -360,7 +360,7 @@ intel_crt_mode_valid(struct drm_connector
> *connector,
>  	enum drm_mode_status status;
>  	int max_clock;
>=20
> -	status =3D intel_cpu_transcoder_mode_valid(dev_priv, mode);
> +	status =3D intel_cpu_transcoder_mode_valid(display, mode);
>  	if (status !=3D MODE_OK)
>  		return status;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index e1186f46088d..7a25c84bfbac 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8464,14 +8464,14 @@ enum drm_mode_status intel_mode_valid(struct
> drm_device *dev,
>  	return MODE_OK;
>  }
>=20
> -enum drm_mode_status intel_cpu_transcoder_mode_valid(struct
> drm_i915_private *dev_priv,
> +enum drm_mode_status intel_cpu_transcoder_mode_valid(struct
> +intel_display *display,
>  						     const struct
> drm_display_mode *mode)  {
>  	/*
>  	 * Additional transcoder timing limits,
>  	 * excluding BXT/GLK DSI transcoders.
>  	 */
> -	if (DISPLAY_VER(dev_priv) >=3D 5) {
> +	if (DISPLAY_VER(display) >=3D 5) {
>  		if (mode->hdisplay < 64 ||
>  		    mode->htotal - mode->hdisplay < 32)
>  			return MODE_H_ILLEGAL;
> @@ -8490,7 +8490,7 @@ enum drm_mode_status
> intel_cpu_transcoder_mode_valid(struct drm_i915_private *de
>  	 * Cantiga+ cannot handle modes with a hsync front porch of 0.
>  	 * WaPruneModeWithIncorrectHsyncOffset:ctg,elk,ilk,snb,ivb,vlv,hsw.
>  	 */
> -	if ((DISPLAY_VER(dev_priv) >=3D 5 || IS_G4X(dev_priv)) &&
> +	if ((DISPLAY_VER(display) >=3D 5 || display->platform.g4x) &&
>  	    mode->hsync_start =3D=3D mode->hdisplay)
>  		return MODE_H_ILLEGAL;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index 9439da737f5b..08e28ea179d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -428,7 +428,7 @@ intel_mode_valid_max_plane_size(struct
> drm_i915_private *dev_priv,
>  				const struct drm_display_mode *mode,
>  				int num_joined_pipes);
>  enum drm_mode_status
> -intel_cpu_transcoder_mode_valid(struct drm_i915_private *i915,
> +intel_cpu_transcoder_mode_valid(struct intel_display *display,
>  				const struct drm_display_mode *mode);
> enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)=
;
> bool is_trans_port_sync_mode(const struct intel_crtc_state *state); diff =
--git
> a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 9ed7d46143e9..61827b0fe95e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1407,7 +1407,7 @@ intel_dp_mode_valid(struct drm_connector
> *_connector,
>  	bool dsc =3D false;
>  	int num_joined_pipes;
>=20
> -	status =3D intel_cpu_transcoder_mode_valid(dev_priv, mode);
> +	status =3D intel_cpu_transcoder_mode_valid(display, mode);
>  	if (status !=3D MODE_OK)
>  		return status;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 459440dd6e87..38804254980b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1481,7 +1481,7 @@ mst_connector_mode_valid_ctx(struct
> drm_connector *_connector,
>  		return 0;
>  	}
>=20
> -	*status =3D intel_cpu_transcoder_mode_valid(i915, mode);
> +	*status =3D intel_cpu_transcoder_mode_valid(display, mode);
>  	if (*status !=3D MODE_OK)
>  		return 0;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c
> b/drivers/gpu/drm/i915/display/intel_dvo.c
> index 29f8788fb26a..c16fb34b737d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -219,16 +219,16 @@ static enum drm_mode_status
> intel_dvo_mode_valid(struct drm_connector *_connector,
>  		     const struct drm_display_mode *mode)  {
> +	struct intel_display *display =3D to_intel_display(_connector->dev);
>  	struct intel_connector *connector =3D to_intel_connector(_connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct intel_dvo *intel_dvo =3D intel_attached_dvo(connector);
>  	const struct drm_display_mode *fixed_mode =3D
>  		intel_panel_fixed_mode(connector, mode);
> -	int max_dotclk =3D to_i915(connector->base.dev)-
> >display.cdclk.max_dotclk_freq;
> +	int max_dotclk =3D display->cdclk.max_dotclk_freq;
>  	int target_clock =3D mode->clock;
>  	enum drm_mode_status status;
>=20
> -	status =3D intel_cpu_transcoder_mode_valid(i915, mode);
> +	status =3D intel_cpu_transcoder_mode_valid(display, mode);
>  	if (status !=3D MODE_OK)
>  		return status;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 015110fc57a2..60572deeffb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2023,7 +2023,7 @@ intel_hdmi_mode_valid(struct drm_connector
> *connector,
>  	bool ycbcr_420_only;
>  	enum intel_output_format sink_format;
>=20
> -	status =3D intel_cpu_transcoder_mode_valid(dev_priv, mode);
> +	status =3D intel_cpu_transcoder_mode_valid(display, mode);
>  	if (status !=3D MODE_OK)
>  		return status;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c
> b/drivers/gpu/drm/i915/display/intel_lvds.c
> index 6b05db2c10ba..7ed8625193fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -394,14 +394,14 @@ static enum drm_mode_status
> intel_lvds_mode_valid(struct drm_connector *_connector,
>  		      const struct drm_display_mode *mode)  {
> +	struct intel_display *display =3D to_intel_display(_connector->dev);
>  	struct intel_connector *connector =3D to_intel_connector(_connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	const struct drm_display_mode *fixed_mode =3D
>  		intel_panel_fixed_mode(connector, mode);
> -	int max_pixclk =3D to_i915(connector->base.dev)-
> >display.cdclk.max_dotclk_freq;
> +	int max_pixclk =3D display->cdclk.max_dotclk_freq;
>  	enum drm_mode_status status;
>=20
> -	status =3D intel_cpu_transcoder_mode_valid(i915, mode);
> +	status =3D intel_cpu_transcoder_mode_valid(display, mode);
>  	if (status !=3D MODE_OK)
>  		return status;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c
> b/drivers/gpu/drm/i915/display/intel_sdvo.c
> index 1ae766212e8a..6e2d9929b4d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -1943,7 +1943,6 @@ intel_sdvo_mode_valid(struct drm_connector
> *connector,
>  		      const struct drm_display_mode *mode)  {
>  	struct intel_display *display =3D to_intel_display(connector->dev);
> -	struct drm_i915_private *i915 =3D to_i915(connector->dev);
>  	struct intel_sdvo *intel_sdvo =3D
> intel_attached_sdvo(to_intel_connector(connector));
>  	struct intel_sdvo_connector *intel_sdvo_connector =3D
>  		to_intel_sdvo_connector(connector);
> @@ -1952,7 +1951,7 @@ intel_sdvo_mode_valid(struct drm_connector
> *connector,
>  	enum drm_mode_status status;
>  	int clock =3D mode->clock;
>=20
> -	status =3D intel_cpu_transcoder_mode_valid(i915, mode);
> +	status =3D intel_cpu_transcoder_mode_valid(display, mode);
>  	if (status !=3D MODE_OK)
>  		return status;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c
> b/drivers/gpu/drm/i915/display/intel_tv.c
> index 7838c92f8ded..5dbe857ea85b 100644
> --- a/drivers/gpu/drm/i915/display/intel_tv.c
> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> @@ -960,12 +960,11 @@ intel_tv_mode_valid(struct drm_connector
> *connector,
>  		    const struct drm_display_mode *mode)  {
>  	struct intel_display *display =3D to_intel_display(connector->dev);
> -	struct drm_i915_private *i915 =3D to_i915(connector->dev);
>  	const struct tv_mode *tv_mode =3D intel_tv_mode_find(connector-
> >state);
>  	int max_dotclk =3D display->cdclk.max_dotclk_freq;
>  	enum drm_mode_status status;
>=20
> -	status =3D intel_cpu_transcoder_mode_valid(i915, mode);
> +	status =3D intel_cpu_transcoder_mode_valid(display, mode);
>  	if (status !=3D MODE_OK)
>  		return status;
>=20
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c
> b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index d68876fe782c..7414794889e9 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1543,12 +1543,12 @@ static const struct drm_encoder_funcs
> intel_dsi_funcs =3D {  static enum drm_mode_status vlv_dsi_mode_valid(str=
uct
> drm_connector *connector,
>  					       const struct drm_display_mode
> *mode)  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->dev);
> +	struct intel_display *display =3D to_intel_display(connector->dev);
>=20
> -	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
> +	if (display->platform.valleyview || display->platform.cherryview) {
>  		enum drm_mode_status status;
>=20
> -		status =3D intel_cpu_transcoder_mode_valid(i915, mode);
> +		status =3D intel_cpu_transcoder_mode_valid(display, mode);
>  		if (status !=3D MODE_OK)
>  			return status;
>  	}
> --
> 2.39.5

