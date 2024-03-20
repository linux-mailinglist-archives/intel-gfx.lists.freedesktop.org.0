Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FCD880A5A
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 05:29:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95E6510E482;
	Wed, 20 Mar 2024 04:29:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mQHTIslX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA85F10E482
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 04:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710908983; x=1742444983;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pcpDBXb/eQVEmVq1RuSQT6xtFEqyXB7kYX9JiV5OqV4=;
 b=mQHTIslX7EbKjgQ/N6HP65o4K0AwPs6upQzavA99KAwq5IrAB7me325W
 EOF6jE7vRmf1H62f/LDUHZuAt512VrDxDQXRph5cpOVd4XRjNUbSKzdWc
 xHaUcBFE8/4Kxtp8XybuQH/4IY11aCmswrJZQJiFOJZ4gM+U0YfkkM0YH
 /LeF5zEj80zUNCpj9XQTwoiFCYjgsuvAtwQkrNepvQQlRmpwUmWpl4psW
 vgdgIKYdieuHd7M8hhaz85SaDuFpH4ZzsvVEpjcuWSiapbC9d9J2DMP8R
 N7N+knUbFo1g4LxuwFWms8EHBtpNVE8BRu/sv9g/JjIVNyV3Ys+o4i72N g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="9612427"
X-IronPort-AV: E=Sophos;i="6.07,139,1708416000"; 
   d="scan'208";a="9612427"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 21:29:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,139,1708416000"; d="scan'208";a="18753883"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Mar 2024 21:29:42 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 19 Mar 2024 21:29:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 19 Mar 2024 21:29:41 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 19 Mar 2024 21:29:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HycQrkyzWoX88uRF3XMaQc8FIZs8udAwZvbSr3PzdcRe4LAF9WsTcdCofzamxr/VCk938waKRmKdbA5H/1fDZ7IbA1rFPY1UfKgEBgX91yASdzoygkl0L4Vm/vS0kNwKjFci1bfb2IF0dnzP8KJaj6o8fCcYYnAFLxeQW5gdEU6C9a5OmbvgwZzIG+FLZxm3AzS7c7Y144ABxHnhW+f7Ychf/l1oAhCfiUkz0DS5x2A83ISpV8HXCzhZoDWxepgoWV9T+T1etKrAYMoFjtNQYRdkU83ztvb4AQvp5EsithYPfVMIPD48Zz/LsxNXMeM3/0dfbARUaO81QMwzYHRi9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gPEGdx7kuzuvKpb2+9iH36AL7jFuXfiMhApIbJjHcOA=;
 b=VmqxSC+TbHEOJYRQ8qjYWZci2XgWa18f5zrCIuED9wyF1oiJXnzbpX3Vy3AMT5clawjwFfYrZZi9Tw4OL0wTSHxNZBVpTmwY02QKEVMuOY+9NyNucT41CdmovpqVE25tbOQbuD5gTM3z+kPoXxicCCQzMmoPr49Ryojha+l2KHcYe1wgUOYxenFUobKfBHU88DlZU0wFlqYaUU7i/NTrDjJT0C0UBY+avlxpLR0x0tTtL0c7W861mOXOf7rsHDK3cScrfarOT6NttgT2SN0MpfzeA0hWs93rsW+DHXhBdFaOZ6tD2XTuPSgB2gZNS+SvkDNNEQpxTE0Dl6V0f81ZvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH0PR11MB5904.namprd11.prod.outlook.com (2603:10b6:510:14e::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.11; Wed, 20 Mar
 2024 04:29:38 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7409.010; Wed, 20 Mar 2024
 04:29:38 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Subject: RE: [PATCH v19 8/9] drm/i915/display: Compute vrr_vsync params
Thread-Topic: [PATCH v19 8/9] drm/i915/display: Compute vrr_vsync params
Thread-Index: AQHaeSYXrc2c7rzyckKAlj921rRtQ7FACUoQ
Date: Wed, 20 Mar 2024 04:29:38 +0000
Message-ID: <IA0PR11MB7307C1BB482C21F71753350ABA332@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240313035625.3339996-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240318111216.3715694-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240318111216.3715694-1-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|PH0PR11MB5904:EE_
x-ms-office365-filtering-correlation-id: 15ea0f4d-90e9-4f99-a94a-08dc48965acd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VlSwMRYF5IWEVhMWrifHzMnUs+jBtMGQ0IU+vl/y1wvDbiL/+GN1PaXBVz78CI0g0ZbpXMTyiC8IcCveO9wXAgoKSD9L1V0FC3nTZB1KfdstrQA37C4F+qsdRpatNxCvGKKKxgNUWprQd1v9l6ncupAtQ26LPN4dxGnWhdGPix1IucJiwqSZpkOurJuwW1FHAS7aHTY3fvCMakzrs5GQKjQYo8BD7ps+AaFRckCajlcIbVUz1aJYFrP1/4P1TOEYCixsQd1VI575RHxqdsgrhN/1MYfW0RopTyBScmyznPU7gzp1c5n8UVjLAYrYCk66eE2BrBO92G5D8GqUscE83SXxd5HloefeGsPl8PGnQBGC4KFknuU7vzSah7gZtmIwjNlD7bz/T/viGS9ZTWZZWEw4iKpbX04j4bP/KTd/MNKmFBDLMLbwaGqJm2N5FMxYHw4JhjssHkOZNk7Ttu/1GpE+R7yRsLnBLzUyU4V3oLZdxg1UNfUA73lHmX7pHAGhkYL8lN+94odZrTsOoz3Q2Tt2+08YsNicc+rrJC5XBJXA9tdPzd04LGgBT+zQoGfYGCmvAwsl/TnSOhKg3JSOX/Pqv4qfn5TcXTKG70cEi4LtSERpxje4R7MNVTwjRUgVvxrI/AR1HOao26lriR9Fo0UOG5Tf+uaKowsHe5uJRYIprjH0cIpS0ZdbGGxvAR73snOhSl53+ZpnaqZyxAGSqQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lWX17/6QHlPxz7IsLkfnQqD/j87o0eTUDqROxLm8Ru/aIodqs3MrJiSe+wsQ?=
 =?us-ascii?Q?6OBcRaHhFHe68JdWxrWIjaKVQWR7QLdBt/JjBhOHv4KMahRjL1Nm7W4IbQgy?=
 =?us-ascii?Q?zzR4+b+eL1rR7cg1bWoIRzw+Wzu2wQPD+8raGyy4cxJ6FTHagozJjuESBSCQ?=
 =?us-ascii?Q?dNKytykUQgzOvOgNmJxyrQACz1Rc6I7LSy06LGRFreevUcoMZtqhjYn/P4Mf?=
 =?us-ascii?Q?W6NKNrWq3AI00GtIGJm/YQt5lYQmPLxtdNmz+lQIQlpKUbIju/kt+nYGq34O?=
 =?us-ascii?Q?1ZH+jykif7RE18HRTntdHKXGdxShtZbJ1tzVhr4d3YanITNMqNJ/VxAqcCh5?=
 =?us-ascii?Q?Eb7ARwSIf1MkWLa6hSee3O3KSb8Ygsp0FtrkDKuQzuqeqd0dDcqWRYkapcFA?=
 =?us-ascii?Q?zwaOK6HHNwZQo9QoX+Cf70tKe+NJoOfO8QBDvTVHKXvvEcSnltKfkXYbmCcr?=
 =?us-ascii?Q?n16T834K4qtv36/m6jdu7910NPEmdWtiazyxUXE/Huio0ST451IqgEMBl3Ij?=
 =?us-ascii?Q?O8hBJqpiPJIt0s/qaRwz7/74bH78WN2zlOiy0k6egW+m76eGvMc6cuvqSo+9?=
 =?us-ascii?Q?rkUoYuyklDWP4KG8nvstMjuLMnTB4811gO+aXX72fj77wrcq7rAvK9TWdFsg?=
 =?us-ascii?Q?aKe1MDAuXUHLhT08OWxFfM8ApG3caDFqC9enkVAXmSqzdDNm9mlKGSwtYHMD?=
 =?us-ascii?Q?pOUDnXTp7zYhmit4BabonOKgyWKNRzGCxfTM7w7juBWCQCNSo7XjFozUu5ss?=
 =?us-ascii?Q?kY+GJXWTrKegH9nhSsJOiuJYtd8VHmHl1KH6SuEMfpi8Nf6fVeIZnGgoMyMW?=
 =?us-ascii?Q?QV5c3Q2Wrn1YqBnj8NHC4wIp70rQhFI7INNDKIs79EdV2ejpBoJPx/+i4eit?=
 =?us-ascii?Q?/hjtJTtFXzgTAlUWKBVmADq3qW+td9bPIHS5gelkoaOjIUWM4D26+J751TvF?=
 =?us-ascii?Q?vR0ZKg40qVWj0sMCmUh9p6jsDu7jf0MEgFDnq95qh1TwoqXp6e23i6x/cp3b?=
 =?us-ascii?Q?Yby6YydZxTtX9IHuA34IZTk4jODH68f8UKRGtjC4fCXaEITxCAuXqx8B+AC/?=
 =?us-ascii?Q?emCYVLJd6M2EK7ptiI1g72QhN5XlbNnQevaK2IhvVOep2P4WeQERSzxMjQPA?=
 =?us-ascii?Q?MgJ9yjW2GPokUTnOQaOQ/6c8eXgVAgQfEasJ/cKT8XrdeAoMm2xWjLRGIjaE?=
 =?us-ascii?Q?Zxq3drZi77s8r0t/3MT2NbOcTgdg8iOgx/ogT+XsdxqVw+5xEVR9oWl2vKK4?=
 =?us-ascii?Q?vklKTxngRKE3kPM8etXZxCzl2nubJ7Pdg6V6y1QL1w+YKFSUS1LJ7YTwIpAo?=
 =?us-ascii?Q?JZCnwHbVbRVAGWWD7UP33ez+GmrYLPz0wmP6saNAgJDo37Dgh/AP2pWavsxG?=
 =?us-ascii?Q?bc0z7Zkuv0bCekAI3MvlqiK+7S1wzlAq6Cn+9MME6CmCZagpQpFevH02LI+Z?=
 =?us-ascii?Q?8W7vVHNV3ti6la9/o8IV+bt2hgfrqqEFgXmAxDachVDtsHZTpF8mVIIo+7vU?=
 =?us-ascii?Q?k5bndx9O/7RycsPh3Qt5NObhfGAb47FdTzJOHKH0vQ/sB2TVtSI+HYsecuf7?=
 =?us-ascii?Q?ytLbeL6fXtMWH6eRZ+z8HhDqdSsbYoms0oyUGtRH?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15ea0f4d-90e9-4f99-a94a-08dc48965acd
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2024 04:29:38.5326 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y0kc6rTNXeSr0+wdLfne3gbnYowalxvA4FubO5/X5yJuM8ET5Mjqx50Y8f7xcapUoECSQnb1OU51kdqR4xMm1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5904
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
tul
> Golani
> Sent: Monday, March 18, 2024 4:42 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Subject: [PATCH v19 8/9] drm/i915/display: Compute vrr_vsync params
>=20
> Compute vrr_vsync_start/end, which sets the position for hardware to send=
 the
> Vsync at a fixed position relative to the end of the Vblank.
>=20
> --v2:
> - Updated VSYNC_START/END macros to VRR_VSYNC_START/END. (Ankit)
> - Updated bit fields of VRR_VSYNC_START/END. (Ankit)
>=20
> --v3:
> - Add PIPE_CONF_CHECK_I(vrr.vsync_start/end).
> - Read/write vrr_vsync params only when we intend to send adaptive_sync s=
dp.
>=20
> --v4:
> - Use VRR_SYNC_START/END macros correctly.
>=20
> --v5:
> - Send AS SDP only when VRR is enabled.
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  2 ++
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_vrr.c      | 33 +++++++++++++++++--
>  drivers/gpu/drm/i915/i915_reg.h               |  7 ++++
>  4 files changed, 41 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 8f1d948408d3..fed4ed18d53b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5377,6 +5377,8 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
>  		PIPE_CONF_CHECK_I(vrr.flipline);
>  		PIPE_CONF_CHECK_I(vrr.pipeline_full);
>  		PIPE_CONF_CHECK_I(vrr.guardband);
> +		PIPE_CONF_CHECK_I(vrr.vsync_start);
> +		PIPE_CONF_CHECK_I(vrr.vsync_end);
>  	}
>=20
>  #undef PIPE_CONF_CHECK_X
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 8a286751dc39..c2e08f641989 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1430,6 +1430,7 @@ struct intel_crtc_state {
>  		bool enable, in_range;
>  		u8 pipeline_full;
>  		u16 flipline, vmin, vmax, guardband;
> +		u32 vsync_end, vsync_start;
>  	} vrr;
>=20
>  	/* Stream Splitter for eDP MSO */
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index eb5bd0743902..1d53623e7e0b 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -9,6 +9,7 @@
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_vrr.h"
> +#include "intel_dp.h"
>=20
>  bool intel_vrr_is_capable(struct intel_connector *connector)  { @@ -113,=
6
> +114,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>  	struct intel_connector *connector =3D
>  		to_intel_connector(conn_state->connector);
> +	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
>  	struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
>  	const struct drm_display_info *info =3D &connector->base.display_info;
>  	int vmin, vmax;
> @@ -165,6 +167,14 @@ intel_vrr_compute_config(struct intel_crtc_state
> *crtc_state,
>  	if (crtc_state->uapi.vrr_enabled) {
>  		crtc_state->vrr.enable =3D true;
>  		crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR;
> +		if (intel_dp_as_sdp_supported(intel_dp)) {
> +			crtc_state->vrr.vsync_start =3D
> +				(crtc_state->hw.adjusted_mode.crtc_vtotal -
> +					crtc_state-
> >hw.adjusted_mode.vsync_start);
> +			crtc_state->vrr.vsync_end =3D
> +				(crtc_state->hw.adjusted_mode.crtc_vtotal -
> +					crtc_state-
> >hw.adjusted_mode.vsync_end);
> +		}
>  	}
>  }
>=20
> @@ -242,6 +252,12 @@ void intel_vrr_enable(const struct intel_crtc_state
> *crtc_state)
>  	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder),
> TRANS_PUSH_EN);
>  	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
>  		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> +
> +	if (HAS_AS_SDP(dev_priv)) {
> +		intel_de_write(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder),
> +			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
> +			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
> +	}
>  }
>=20
>  void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state) @@=
 -
> 258,13 +274,16 @@ void intel_vrr_disable(const struct intel_crtc_state
> *old_crtc_state)
>  	intel_de_wait_for_clear(dev_priv,
> TRANS_VRR_STATUS(cpu_transcoder),
>  				VRR_STATUS_VRR_EN_LIVE, 1000);
>  	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), 0);
> +
> +	if (HAS_AS_SDP(dev_priv))
> +		intel_de_write(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder),
> 0);
>  }
>=20
>  void intel_vrr_get_config(struct intel_crtc_state *crtc_state)  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc-
> >dev);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> -	u32 trans_vrr_ctl;
> +	u32 trans_vrr_ctl, trans_vrr_vsync;
>=20
>  	trans_vrr_ctl =3D intel_de_read(dev_priv,
> TRANS_VRR_CTL(cpu_transcoder));
>=20
> @@ -284,6 +303,16 @@ void intel_vrr_get_config(struct intel_crtc_state
> *crtc_state)
>  		crtc_state->vrr.vmin =3D intel_de_read(dev_priv,
> TRANS_VRR_VMIN(cpu_transcoder)) + 1;
>  	}
>=20
> -	if (crtc_state->vrr.enable)
> +	if (crtc_state->vrr.enable) {
>  		crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR;
> +
> +		if (HAS_AS_SDP(dev_priv)) {
> +			trans_vrr_vsync =3D
> +				intel_de_read(dev_priv,
> TRANS_VRR_VSYNC(cpu_transcoder));
> +			crtc_state->vrr.vsync_start =3D
> +				REG_FIELD_GET(VRR_VSYNC_START_MASK,
> trans_vrr_vsync);
> +			crtc_state->vrr.vsync_end =3D
> +				REG_FIELD_GET(VRR_VSYNC_END_MASK,
> trans_vrr_vsync);
> +		}
> +	}
>  }
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index 3ff6a38826cb..2ede6982175c
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2095,6 +2095,13 @@
>  #define   TRANS_PUSH_EN			REG_BIT(31)
>  #define   TRANS_PUSH_SEND		REG_BIT(30)
>=20
> +#define _TRANS_VRR_VSYNC_A		0x60078
> +#define TRANS_VRR_VSYNC(trans)		_MMIO_TRANS2(trans,
> _TRANS_VRR_VSYNC_A)
> +#define VRR_VSYNC_END_MASK		REG_GENMASK(28, 16)
> +#define VRR_VSYNC_END(vsync_end)
> 	REG_FIELD_PREP(VRR_VSYNC_END_MASK, (vsync_end))
> +#define VRR_VSYNC_START_MASK		REG_GENMASK(12, 0)
> +#define VRR_VSYNC_START(vsync_start)
> 	REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
> +
>  /* VGA port control */
>  #define ADPA			_MMIO(0x61100)
>  #define PCH_ADPA                _MMIO(0xe1100)
> --
> 2.25.1

