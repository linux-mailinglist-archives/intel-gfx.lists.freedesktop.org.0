Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF8F59B831
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 06:01:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB0D098877;
	Mon, 22 Aug 2022 04:01:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5570998863
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 04:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661140855; x=1692676855;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8EiiAzmse9/MSSPF6uC0ZD+q7AR7NBrRydVr8VMton8=;
 b=M79GYW8LoXQWmkxNHfwaPCFCpxN5PkYh+ml/aYSc1B6RiZl1D8Bfr90h
 tc6/wXmnnDy/k2SmUJonUsjfaQ2rJW788WqPLRFCTEP9Ai/Y6nDxNiP5T
 l0LYAl7T6JZmvL0aW2mn7tQbnund6VNoQyfho15sb2f500HDh2FCBXZCj
 41IUhwIL1UzVExvFdUwLxkqiBmiMEZMcLYBJ/u9RP35+I+bSys00iG4In
 scd5TMimcYVRB9OT4LE2vj6JJ7Ij6D+15k7JkoshUpJ45qwpcpAUlH61o
 3f5wP6q5+cuBH9SCw/aMbZKqz0YFuGQ4A+qdG8vT9a1fHvW+k1jHoTWZy w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="357296845"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="357296845"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2022 21:00:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="734963355"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 21 Aug 2022 21:00:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 21 Aug 2022 21:00:47 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 21 Aug 2022 21:00:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sun, 21 Aug 2022 21:00:46 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sun, 21 Aug 2022 21:00:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lhqPKOSSXxM4X2xb81VdkJsQnSRx9MiL/kWZPQl2UizUwnfPyt7r3tCMkL7Vb+VMAkK9cZZknGmvXnUAeRImBiB0I9nMqYGGTl5M59wOoUAmHbZ6/ceZggkKr3svUFSDSgQn+NpMbNF51VQ7NV3z7BMoqsqk+ppJ9G4h+FnBLWnIwzWahYfFXppmNE0FfV1l2U6JDds5FH/l7JE1l92r9KzvIsGN5UOAnfdMJQmyibPQ83M5joItHnDO00QNLVbV9MN5gr74B+fHHC3QnmXBEwbRcjC1MVFRn87nOIYtCIGa32rPbPTj4CNeipiJUi0j8WdgaRjZ/IE7rwFzcXAOrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2cGKUYhcG2qPyF0dsa+uOVyxXBHtZDkMD2woi8OOKv4=;
 b=VRTtHptCDjLM82t14Rz/9Qv50z2wPer5CRPtCV3OQuXm16ofU0SbyZ8lcEym1WT+qC74kj3i7iO9IN5fRiiZ9rBW5JjYvkWVqBs0rnxQY9D/K97xVrNLzdhr4paeNoukL4My500xQxTqOHuEtjMwaaFFo6ndOrUC3T1EbKFP2GtIdmdBYuZvjaQopHDYz22KTB3ODihlBfuVREPDlkhURYoYoxLt/7fZ5iZOO+hqfo3MVD+dkmBYAxzZ70BpZznPnDy/ZNJGR5BaWsO5q7izcO3q/mAIQNmwiSUnfOVlXEwblmIS3fkBZ3lX+PgnNKd2N+kFHNNAvQYBbKM79Gf4fQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BL1PR11MB6002.namprd11.prod.outlook.com (2603:10b6:208:386::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.22; Mon, 22 Aug
 2022 04:00:41 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::d48c:d05e:cd54:3ae1]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::d48c:d05e:cd54:3ae1%5]) with mapi id 15.20.5546.022; Mon, 22 Aug 2022
 04:00:41 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 15/39] drm/i915: move wm to display.wm
Thread-Index: AQHYrZXAdOjGSGOjrk+4L2a8PhFfHq26W9DA
Date: Mon, 22 Aug 2022 04:00:40 +0000
Message-ID: <DM6PR11MB3177BC5F3619CE969335A2CBBA719@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <d887c72572001932c4d77c8243e99bd1ca09127c.1660230121.git.jani.nikula@intel.com>
In-Reply-To: <d887c72572001932c4d77c8243e99bd1ca09127c.1660230121.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4a4a78a2-9e6e-46c0-c569-08da83f2e132
x-ms-traffictypediagnostic: BL1PR11MB6002:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QJV/cTwUWENzY3uv3HEyzHzxLUhSdUl15qc8iKQyrhRXHcnASRZgmWMq4Olz0mMWZ04Qf3zzI22xEmLspcQlsFoRdETUe1nPBj5vKIlVUDW1PDJOPsf/FBFToMOft/en2tFUlZmQigIJaszh1YtWoNkfxK1jtqUexg0NOXywFUn9lVJE+bW3rXa7z0E5uocsn5xvzvpq39in8fEvQeemK8zpjofL4pQeQrONcadeZxy+CLMJSx210P3TLCNTVuf1GcLADYTRAPGBXWgLLy+rfuULeQRufOahAdOSX43k843FPkHFykiozOtKVk6zJACPI2v5t2tU7U65FG4Ek+2wSI8Cqp1TxZCJsBOzbcIHvs55kK76QLxv3xGnQk7VXGABOSfSyLbRMGxva5JrQQklhmS9nIe8qcMxVPpiF34CWAVlTiYVQitpwmYIqBrJfffHwxma0GSra9BC8ppq4LAOkOI2Gc3Kwz8486fe9NODyRSxPaYHQYvcI8hTlVvb6Eiu79/u47bLy5AVooFYvvXHkemjuKEjrqdMBjh3F2aivcBtIy1DmfNznHpa25dLcyC5liZ25H9yVqFzWMeSlT1IZtrPhT5MZoZzCfAvoQotJoXlP0PpG6XILeiR7DjuJDeLFq3KCUHBLTfIYksbWyb5DtqOTz2OIUJ6l39WOV4++AOU0t2/bj5Pqz2J/ymm/GRoN2lFwugq0GxGDPYDSkTDn0klYi5w2T1RMb5xQ/R8e2+jO2hGZzLlJtNo0S9El83li5QQztHxdRMul+n548UCIw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(39860400002)(136003)(376002)(346002)(107886003)(6506007)(7696005)(478600001)(71200400001)(41300700001)(186003)(83380400001)(26005)(9686003)(55236004)(8936002)(53546011)(2906002)(5660300002)(52536014)(30864003)(55016003)(316002)(54906003)(110136005)(4326008)(64756008)(66446008)(66556008)(8676002)(66946007)(76116006)(66476007)(38100700002)(122000001)(86362001)(82960400001)(38070700005)(33656002)(559001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bDmSPOPHjup/sqxImd7VT15PS43w9pCreAsL2oHGniF7/znLfwaTO9VcLJeg?=
 =?us-ascii?Q?lOLxNCwQUSo9aJUjLhFqcAoyRKiIy8X7QOZD3O9wBGyd8oJcsc2Cs3q1IvUc?=
 =?us-ascii?Q?CI1S7XnyWd5sc4djdtZ3uckUKci4izRnEHsX8sEcClv4tsjCH1ofMxNqWtD1?=
 =?us-ascii?Q?Lv4n3AquFyw0Aqqtuj05XGClPcKEmQ6hM+5lQod62M5DhEC+Wp1yRMY1P50M?=
 =?us-ascii?Q?kEk1lDTXmwBrRaEhCBJ+yWqp7BA0hNc1+KJF2ptGEXI68LsdurpPMeX73lUQ?=
 =?us-ascii?Q?sqlzngtnwb/84bq4Zaicq4UO8vEZW1LMzSjbqg60pzEeRtJaZcPhKZ3g/t3F?=
 =?us-ascii?Q?/MKipSqjTC5ybZfs1VpJET83op0a81bUz/9Jl5SCpB/nPBWLw/zA7HAE77XQ?=
 =?us-ascii?Q?FDhWCWapwUKmeALkU+oppXFbxW7mceic/HslY3TiHwmOE6PhftsheYkdCcAn?=
 =?us-ascii?Q?10/CDfGH+faxhZF2SQEowughPJgtFuKdMgtY26y55NuTrVNBxtyakO3sBuPc?=
 =?us-ascii?Q?Ms24WuYuVbozrex0ylTNoQ7dpXCa/u47RbYq80Spp+/7Zq+sNbKTfRsRt0V8?=
 =?us-ascii?Q?kFtci3EOcthfIP29C5PAggBap28ITalNW1nyBOx5lJff5+ZMbSFhKt7vutSB?=
 =?us-ascii?Q?CPFZlHDM+7dPha/T/LeH2xYvXHboV4W0W8keLhoMVuoqqwL3v0EGjAaBCual?=
 =?us-ascii?Q?m/uq3h3Ek4wh1RPPZld/+iA/Gjj/LiHiBP3KYQz75nhY2uK7dRAjxJhqzrqO?=
 =?us-ascii?Q?KGbCk/9OEVnfSTHUr3S9y8+JJS8hXwCuYJ54ZYaugI5RgWvkMcbliQmL2DYd?=
 =?us-ascii?Q?Y71bAmc3khmdqQ+z6A7EuF+twoV+ilgEijwwx8L3PcvbzATcM8KxlYAqqdlB?=
 =?us-ascii?Q?wqWR8i/Zye1BBVOaQqy54lwT1hxLhfcmQ9fTFIJTro+pV9iwf9GvBNgcnaXE?=
 =?us-ascii?Q?keNV3AvELcgAKubaGXpt19mdPxuhEmBtowEgXW2dK0g8DPjfRknWYX9+wvxJ?=
 =?us-ascii?Q?BPZ5QIoLoElO387/VcOqR4QxfIb4uI/i+WSOv8pBGBM0se4CQTno7w/cTi6c?=
 =?us-ascii?Q?yB7kUol1K1qkWt4QlcfNxX1yTCM3hWY5g9rnXM1VRIbn8HIWQG8+aeYA9Axm?=
 =?us-ascii?Q?BjFAUi+O9J4vdC+2B0fce36UE4x/S6CaX3dL2b6/3bVFRr5QGfbtj/bgW/dm?=
 =?us-ascii?Q?o3Zp869B93lFAtXsxMAy8+VaUmfNCbOVlx3xLiRMir8J0nR9oK1t/52k1kCb?=
 =?us-ascii?Q?s6y/Hics9z8WUy+wuc1k3v3p56STACPdnEIhkO/xcFsUXRk09gs+TOMki09o?=
 =?us-ascii?Q?LmWGlB2hBZ5lyt+1/t1vpDcMY087Sq0sA4UeFgMRpGDo0H0BJK0qKRFMzK4O?=
 =?us-ascii?Q?n8fs5kfF6l5slCEdQBiSGDMWHlIKMB7GXijE8qQ6jNiw0PxSjtDR220AtMtN?=
 =?us-ascii?Q?By+UbQ7T+zNudWL1k4tLcGBvJ4zf5Q/gVGWlRPMNWNQith7fTlw+ORmftIRa?=
 =?us-ascii?Q?BOYZNBhOAjfUJh6tBcMon5FS61X6gvtiBWoHZs6eI6XBz7HbZSW5GfgQE5K7?=
 =?us-ascii?Q?y1ZrSoD9lERSEmH5VWYyQY6yvdZvzcL0/arqv/7g?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a4a78a2-9e6e-46c0-c569-08da83f2e132
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2022 04:00:40.9559 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uLRNxvL+p20SPm+6fwTI8z4pEZJG3s+FHB7xmau/A0FUIRiJ3qc7ysohAQDpmlvx1xsWV+TQAAsr5yBiOmwcxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6002
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 15/39] drm/i915: move wm to display.wm
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, August 11, 2022 8:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: [Intel-gfx] [PATCH 15/39] drm/i915: move wm to display.wm
>=20
> Move display related members under drm_i915_private display sub-struct.
>=20
> It's a bit arbitrary when to define a named struct for grouping, but clea=
rly
> intel_wm is big enough to warrant a separate definition.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards
Arun R Murthy
--------------------
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  38 ++++
> .../drm/i915/display/intel_display_debugfs.c  |  24 +--
>  drivers/gpu/drm/i915/i915_driver.c            |   2 +-
>  drivers/gpu/drm/i915/i915_drv.h               |  37 ----
>  drivers/gpu/drm/i915/intel_pm.c               | 166 +++++++++---------
>  5 files changed, 134 insertions(+), 133 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 71434a922695..c2a79e487ee9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -15,6 +15,7 @@
>  #include "intel_dmc.h"
>  #include "intel_dpll_mgr.h"
>  #include "intel_gmbus.h"
> +#include "intel_pm_types.h"
>=20
>  struct drm_i915_private;
>  struct i915_audio_component;
> @@ -100,6 +101,42 @@ struct intel_dpll {
>  	} ref_clks;
>  };
>=20
> +struct intel_wm {
> +	/*
> +	 * Raw watermark latency values:
> +	 * in 0.1us units for WM0,
> +	 * in 0.5us units for WM1+.
> +	 */
> +	/* primary */
> +	u16 pri_latency[5];
> +	/* sprite */
> +	u16 spr_latency[5];
> +	/* cursor */
> +	u16 cur_latency[5];
> +	/*
> +	 * Raw watermark memory latency values
> +	 * for SKL for all 8 levels
> +	 * in 1us units.
> +	 */
> +	u16 skl_latency[8];
> +
> +	/* current hardware state */
> +	union {
> +		struct ilk_wm_values hw;
> +		struct vlv_wm_values vlv;
> +		struct g4x_wm_values g4x;
> +	};
> +
> +	u8 max_level;
> +
> +	/*
> +	 * Should be held around atomic WM register writing; also
> +	 * protects * intel_crtc->wm.active and
> +	 * crtc_state->wm.need_postvbl_update.
> +	 */
> +	struct mutex wm_mutex;
> +};
> +
>  struct intel_display {
>  	/* Display functions */
>  	struct {
> @@ -167,6 +204,7 @@ struct intel_display {
>  	struct intel_audio audio;
>  	struct intel_dmc dmc;
>  	struct intel_dpll dpll;
> +	struct intel_wm wm;
>  };
>=20
>  #endif /* __INTEL_DISPLAY_CORE_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index e568590faa82..395facf6c1aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1428,9 +1428,9 @@ static int pri_wm_latency_show(struct seq_file *m,
> void *data)
>  	const u16 *latencies;
>=20
>  	if (DISPLAY_VER(dev_priv) >=3D 9)
> -		latencies =3D dev_priv->wm.skl_latency;
> +		latencies =3D dev_priv->display.wm.skl_latency;
>  	else
> -		latencies =3D dev_priv->wm.pri_latency;
> +		latencies =3D dev_priv->display.wm.pri_latency;
>=20
>  	wm_latency_show(m, latencies);
>=20
> @@ -1443,9 +1443,9 @@ static int spr_wm_latency_show(struct seq_file
> *m, void *data)
>  	const u16 *latencies;
>=20
>  	if (DISPLAY_VER(dev_priv) >=3D 9)
> -		latencies =3D dev_priv->wm.skl_latency;
> +		latencies =3D dev_priv->display.wm.skl_latency;
>  	else
> -		latencies =3D dev_priv->wm.spr_latency;
> +		latencies =3D dev_priv->display.wm.spr_latency;
>=20
>  	wm_latency_show(m, latencies);
>=20
> @@ -1458,9 +1458,9 @@ static int cur_wm_latency_show(struct seq_file
> *m, void *data)
>  	const u16 *latencies;
>=20
>  	if (DISPLAY_VER(dev_priv) >=3D 9)
> -		latencies =3D dev_priv->wm.skl_latency;
> +		latencies =3D dev_priv->display.wm.skl_latency;
>  	else
> -		latencies =3D dev_priv->wm.cur_latency;
> +		latencies =3D dev_priv->display.wm.cur_latency;
>=20
>  	wm_latency_show(m, latencies);
>=20
> @@ -1551,9 +1551,9 @@ static ssize_t pri_wm_latency_write(struct file *fi=
le,
> const char __user *ubuf,
>  	u16 *latencies;
>=20
>  	if (DISPLAY_VER(dev_priv) >=3D 9)
> -		latencies =3D dev_priv->wm.skl_latency;
> +		latencies =3D dev_priv->display.wm.skl_latency;
>  	else
> -		latencies =3D dev_priv->wm.pri_latency;
> +		latencies =3D dev_priv->display.wm.pri_latency;
>=20
>  	return wm_latency_write(file, ubuf, len, offp, latencies);  } @@ -
> 1566,9 +1566,9 @@ static ssize_t spr_wm_latency_write(struct file *file,
> const char __user *ubuf,
>  	u16 *latencies;
>=20
>  	if (DISPLAY_VER(dev_priv) >=3D 9)
> -		latencies =3D dev_priv->wm.skl_latency;
> +		latencies =3D dev_priv->display.wm.skl_latency;
>  	else
> -		latencies =3D dev_priv->wm.spr_latency;
> +		latencies =3D dev_priv->display.wm.spr_latency;
>=20
>  	return wm_latency_write(file, ubuf, len, offp, latencies);  } @@ -
> 1581,9 +1581,9 @@ static ssize_t cur_wm_latency_write(struct file *file,
> const char __user *ubuf,
>  	u16 *latencies;
>=20
>  	if (DISPLAY_VER(dev_priv) >=3D 9)
> -		latencies =3D dev_priv->wm.skl_latency;
> +		latencies =3D dev_priv->display.wm.skl_latency;
>  	else
> -		latencies =3D dev_priv->wm.cur_latency;
> +		latencies =3D dev_priv->display.wm.cur_latency;
>=20
>  	return wm_latency_write(file, ubuf, len, offp, latencies);  } diff --gi=
t
> a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 0d3993e51138..f6841c1e5f0f 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -336,7 +336,7 @@ static int i915_driver_early_probe(struct
> drm_i915_private *dev_priv)
>  	cpu_latency_qos_add_request(&dev_priv->sb_qos,
> PM_QOS_DEFAULT_VALUE);
>=20
>  	mutex_init(&dev_priv->display.audio.mutex);
> -	mutex_init(&dev_priv->wm.wm_mutex);
> +	mutex_init(&dev_priv->display.wm.wm_mutex);
>  	mutex_init(&dev_priv->display.pps.mutex);
>  	mutex_init(&dev_priv->hdcp_comp_mutex);
>=20
> diff --git a/drivers/gpu/drm/i915/i915_drv.h
> b/drivers/gpu/drm/i915/i915_drv.h index f1e47090c01e..9ee08e80f0aa
> 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -68,7 +68,6 @@
>  #include "intel_device_info.h"
>  #include "intel_memory_region.h"
>  #include "intel_pch.h"
> -#include "intel_pm_types.h"
>  #include "intel_runtime_pm.h"
>  #include "intel_step.h"
>  #include "intel_uncore.h"
> @@ -501,42 +500,6 @@ struct drm_i915_private {
>=20
>  	u32 sagv_block_time_us;
>=20
> -	struct {
> -		/*
> -		 * Raw watermark latency values:
> -		 * in 0.1us units for WM0,
> -		 * in 0.5us units for WM1+.
> -		 */
> -		/* primary */
> -		u16 pri_latency[5];
> -		/* sprite */
> -		u16 spr_latency[5];
> -		/* cursor */
> -		u16 cur_latency[5];
> -		/*
> -		 * Raw watermark memory latency values
> -		 * for SKL for all 8 levels
> -		 * in 1us units.
> -		 */
> -		u16 skl_latency[8];
> -
> -		/* current hardware state */
> -		union {
> -			struct ilk_wm_values hw;
> -			struct vlv_wm_values vlv;
> -			struct g4x_wm_values g4x;
> -		};
> -
> -		u8 max_level;
> -
> -		/*
> -		 * Should be held around atomic WM register writing; also
> -		 * protects * intel_crtc->wm.active and
> -		 * crtc_state->wm.need_postvbl_update.
> -		 */
> -		struct mutex wm_mutex;
> -	} wm;
> -
>  	struct dram_info {
>  		bool wm_lv_0_adjust_needed;
>  		u8 num_channels;
> diff --git a/drivers/gpu/drm/i915/intel_pm.c
> b/drivers/gpu/drm/i915/intel_pm.c index 5febe91e44a0..14134e57034e
> 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -468,13 +468,13 @@ bool intel_set_memory_cxsr(struct
> drm_i915_private *dev_priv, bool enable)  {
>  	bool ret;
>=20
> -	mutex_lock(&dev_priv->wm.wm_mutex);
> +	mutex_lock(&dev_priv->display.wm.wm_mutex);
>  	ret =3D _intel_set_memory_cxsr(dev_priv, enable);
>  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> -		dev_priv->wm.vlv.cxsr =3D enable;
> +		dev_priv->display.wm.vlv.cxsr =3D enable;
>  	else if (IS_G4X(dev_priv))
> -		dev_priv->wm.g4x.cxsr =3D enable;
> -	mutex_unlock(&dev_priv->wm.wm_mutex);
> +		dev_priv->display.wm.g4x.cxsr =3D enable;
> +	mutex_unlock(&dev_priv->display.wm.wm_mutex);
>=20
>  	return ret;
>  }
> @@ -834,7 +834,7 @@ static bool is_enabling(int old, int new, int thresho=
ld)
>=20
>  static int intel_wm_num_levels(struct drm_i915_private *dev_priv)  {
> -	return dev_priv->wm.max_level + 1;
> +	return dev_priv->display.wm.max_level + 1;
>  }
>=20
>  static bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_s=
tate,
> @@ -1093,11 +1093,11 @@ static void vlv_write_wm_values(struct
> drm_i915_private *dev_priv,  static void g4x_setup_wm_latency(struct
> drm_i915_private *dev_priv)  {
>  	/* all latencies in usec */
> -	dev_priv->wm.pri_latency[G4X_WM_LEVEL_NORMAL] =3D 5;
> -	dev_priv->wm.pri_latency[G4X_WM_LEVEL_SR] =3D 12;
> -	dev_priv->wm.pri_latency[G4X_WM_LEVEL_HPLL] =3D 35;
> +	dev_priv->display.wm.pri_latency[G4X_WM_LEVEL_NORMAL] =3D 5;
> +	dev_priv->display.wm.pri_latency[G4X_WM_LEVEL_SR] =3D 12;
> +	dev_priv->display.wm.pri_latency[G4X_WM_LEVEL_HPLL] =3D 35;
>=20
> -	dev_priv->wm.max_level =3D G4X_WM_LEVEL_HPLL;
> +	dev_priv->display.wm.max_level =3D G4X_WM_LEVEL_HPLL;
>  }
>=20
>  static int g4x_plane_fifo_size(enum plane_id plane_id, int level) @@ -11=
50,7
> +1150,7 @@ static u16 g4x_compute_wm(const struct intel_crtc_state
> *crtc_state,
>  	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
>  	const struct drm_display_mode *pipe_mode =3D
>  		&crtc_state->hw.pipe_mode;
> -	unsigned int latency =3D dev_priv->wm.pri_latency[level] * 10;
> +	unsigned int latency =3D dev_priv->display.wm.pri_latency[level] * 10;
>  	unsigned int pixel_rate, htotal, cpp, width, wm;
>=20
>  	if (latency =3D=3D 0)
> @@ -1324,7 +1324,7 @@ static bool g4x_raw_crtc_wm_is_valid(const struct
> intel_crtc_state *crtc_state,  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc-
> >dev);
>=20
> -	if (level > dev_priv->wm.max_level)
> +	if (level > dev_priv->display.wm.max_level)
>  		return false;
>=20
>  	return g4x_raw_plane_wm_is_valid(crtc_state, PLANE_PRIMARY,
> level) && @@ -1583,7 +1583,7 @@ static void g4x_merge_wm(struct
> drm_i915_private *dev_priv,
>=20
>  static void g4x_program_watermarks(struct drm_i915_private *dev_priv)  {
> -	struct g4x_wm_values *old_wm =3D &dev_priv->wm.g4x;
> +	struct g4x_wm_values *old_wm =3D &dev_priv->display.wm.g4x;
>  	struct g4x_wm_values new_wm =3D {};
>=20
>  	g4x_merge_wm(dev_priv, &new_wm);
> @@ -1609,10 +1609,10 @@ static void g4x_initial_watermarks(struct
> intel_atomic_state *state,
>  	const struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>=20
> -	mutex_lock(&dev_priv->wm.wm_mutex);
> +	mutex_lock(&dev_priv->display.wm.wm_mutex);
>  	crtc->wm.active.g4x =3D crtc_state->wm.g4x.intermediate;
>  	g4x_program_watermarks(dev_priv);
> -	mutex_unlock(&dev_priv->wm.wm_mutex);
> +	mutex_unlock(&dev_priv->display.wm.wm_mutex);
>  }
>=20
>  static void g4x_optimize_watermarks(struct intel_atomic_state *state, @@=
 -
> 1625,10 +1625,10 @@ static void g4x_optimize_watermarks(struct
> intel_atomic_state *state,
>  	if (!crtc_state->wm.need_postvbl_update)
>  		return;
>=20
> -	mutex_lock(&dev_priv->wm.wm_mutex);
> +	mutex_lock(&dev_priv->display.wm.wm_mutex);
>  	crtc->wm.active.g4x =3D crtc_state->wm.g4x.optimal;
>  	g4x_program_watermarks(dev_priv);
> -	mutex_unlock(&dev_priv->wm.wm_mutex);
> +	mutex_unlock(&dev_priv->display.wm.wm_mutex);
>  }
>=20
>  /* latency must be in 0.1us units. */
> @@ -1650,15 +1650,15 @@ static unsigned int vlv_wm_method2(unsigned
> int pixel_rate,  static void vlv_setup_wm_latency(struct drm_i915_private
> *dev_priv)  {
>  	/* all latencies in usec */
> -	dev_priv->wm.pri_latency[VLV_WM_LEVEL_PM2] =3D 3;
> +	dev_priv->display.wm.pri_latency[VLV_WM_LEVEL_PM2] =3D 3;
>=20
> -	dev_priv->wm.max_level =3D VLV_WM_LEVEL_PM2;
> +	dev_priv->display.wm.max_level =3D VLV_WM_LEVEL_PM2;
>=20
>  	if (IS_CHERRYVIEW(dev_priv)) {
> -		dev_priv->wm.pri_latency[VLV_WM_LEVEL_PM5] =3D 12;
> -		dev_priv->wm.pri_latency[VLV_WM_LEVEL_DDR_DVFS] =3D 33;
> +		dev_priv->display.wm.pri_latency[VLV_WM_LEVEL_PM5] =3D
> 12;
> +		dev_priv-
> >display.wm.pri_latency[VLV_WM_LEVEL_DDR_DVFS] =3D 33;
>=20
> -		dev_priv->wm.max_level =3D VLV_WM_LEVEL_DDR_DVFS;
> +		dev_priv->display.wm.max_level =3D
> VLV_WM_LEVEL_DDR_DVFS;
>  	}
>  }
>=20
> @@ -1672,7 +1672,7 @@ static u16 vlv_compute_wm_level(const struct
> intel_crtc_state *crtc_state,
>  		&crtc_state->hw.pipe_mode;
>  	unsigned int pixel_rate, htotal, cpp, width, wm;
>=20
> -	if (dev_priv->wm.pri_latency[level] =3D=3D 0)
> +	if (dev_priv->display.wm.pri_latency[level] =3D=3D 0)
>  		return USHRT_MAX;
>=20
>  	if (!intel_wm_plane_visible(crtc_state, plane_state)) @@ -1693,7
> +1693,7 @@ static u16 vlv_compute_wm_level(const struct intel_crtc_state
> *crtc_state,
>  		wm =3D 63;
>  	} else {
>  		wm =3D vlv_wm_method2(pixel_rate, htotal, width, cpp,
> -				    dev_priv->wm.pri_latency[level] * 10);
> +				    dev_priv->display.wm.pri_latency[level] *
> 10);
>  	}
>=20
>  	return min_t(unsigned int, wm, USHRT_MAX); @@ -2158,7 +2158,7
> @@ static void vlv_merge_wm(struct drm_i915_private *dev_priv,
>  	struct intel_crtc *crtc;
>  	int num_active_pipes =3D 0;
>=20
> -	wm->level =3D dev_priv->wm.max_level;
> +	wm->level =3D dev_priv->display.wm.max_level;
>  	wm->cxsr =3D true;
>=20
>  	for_each_intel_crtc(&dev_priv->drm, crtc) { @@ -2197,7 +2197,7
> @@ static void vlv_merge_wm(struct drm_i915_private *dev_priv,
>=20
>  static void vlv_program_watermarks(struct drm_i915_private *dev_priv)  {
> -	struct vlv_wm_values *old_wm =3D &dev_priv->wm.vlv;
> +	struct vlv_wm_values *old_wm =3D &dev_priv->display.wm.vlv;
>  	struct vlv_wm_values new_wm =3D {};
>=20
>  	vlv_merge_wm(dev_priv, &new_wm);
> @@ -2235,10 +2235,10 @@ static void vlv_initial_watermarks(struct
> intel_atomic_state *state,
>  	const struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>=20
> -	mutex_lock(&dev_priv->wm.wm_mutex);
> +	mutex_lock(&dev_priv->display.wm.wm_mutex);
>  	crtc->wm.active.vlv =3D crtc_state->wm.vlv.intermediate;
>  	vlv_program_watermarks(dev_priv);
> -	mutex_unlock(&dev_priv->wm.wm_mutex);
> +	mutex_unlock(&dev_priv->display.wm.wm_mutex);
>  }
>=20
>  static void vlv_optimize_watermarks(struct intel_atomic_state *state, @@=
 -
> 2251,10 +2251,10 @@ static void vlv_optimize_watermarks(struct
> intel_atomic_state *state,
>  	if (!crtc_state->wm.need_postvbl_update)
>  		return;
>=20
> -	mutex_lock(&dev_priv->wm.wm_mutex);
> +	mutex_lock(&dev_priv->display.wm.wm_mutex);
>  	crtc->wm.active.vlv =3D crtc_state->wm.vlv.optimal;
>  	vlv_program_watermarks(dev_priv);
> -	mutex_unlock(&dev_priv->wm.wm_mutex);
> +	mutex_unlock(&dev_priv->display.wm.wm_mutex);
>  }
>=20
>  static void i965_update_wm(struct drm_i915_private *dev_priv) @@ -
> 2835,9 +2835,9 @@ static void ilk_compute_wm_level(const struct
> drm_i915_private *dev_priv,
>  				 const struct intel_plane_state *curstate,
>  				 struct intel_wm_level *result)
>  {
> -	u16 pri_latency =3D dev_priv->wm.pri_latency[level];
> -	u16 spr_latency =3D dev_priv->wm.spr_latency[level];
> -	u16 cur_latency =3D dev_priv->wm.cur_latency[level];
> +	u16 pri_latency =3D dev_priv->display.wm.pri_latency[level];
> +	u16 spr_latency =3D dev_priv->display.wm.spr_latency[level];
> +	u16 cur_latency =3D dev_priv->display.wm.cur_latency[level];
>=20
>  	/* WM1+ latency values stored in 0.5us units */
>  	if (level > 0) {
> @@ -3061,18 +3061,18 @@ static void snb_wm_latency_quirk(struct
> drm_i915_private *dev_priv)
>  	 * The BIOS provided WM memory latency values are often
>  	 * inadequate for high resolution displays. Adjust them.
>  	 */
> -	changed =3D ilk_increase_wm_latency(dev_priv, dev_priv-
> >wm.pri_latency, 12);
> -	changed |=3D ilk_increase_wm_latency(dev_priv, dev_priv-
> >wm.spr_latency, 12);
> -	changed |=3D ilk_increase_wm_latency(dev_priv, dev_priv-
> >wm.cur_latency, 12);
> +	changed =3D ilk_increase_wm_latency(dev_priv, dev_priv-
> >display.wm.pri_latency, 12);
> +	changed |=3D ilk_increase_wm_latency(dev_priv, dev_priv-
> >display.wm.spr_latency, 12);
> +	changed |=3D ilk_increase_wm_latency(dev_priv,
> +dev_priv->display.wm.cur_latency, 12);
>=20
>  	if (!changed)
>  		return;
>=20
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "WM latency values increased to avoid potential
> underruns\n");
> -	intel_print_wm_latency(dev_priv, "Primary", dev_priv-
> >wm.pri_latency);
> -	intel_print_wm_latency(dev_priv, "Sprite", dev_priv-
> >wm.spr_latency);
> -	intel_print_wm_latency(dev_priv, "Cursor", dev_priv-
> >wm.cur_latency);
> +	intel_print_wm_latency(dev_priv, "Primary", dev_priv-
> >display.wm.pri_latency);
> +	intel_print_wm_latency(dev_priv, "Sprite", dev_priv-
> >display.wm.spr_latency);
> +	intel_print_wm_latency(dev_priv, "Cursor",
> +dev_priv->display.wm.cur_latency);
>  }
>=20
>  static void snb_wm_lp3_irq_quirk(struct drm_i915_private *dev_priv) @@ -
> 3088,37 +3088,37 @@ static void snb_wm_lp3_irq_quirk(struct
> drm_i915_private *dev_priv)
>  	 * interrupts only. To play it safe we disable LP3
>  	 * watermarks entirely.
>  	 */
> -	if (dev_priv->wm.pri_latency[3] =3D=3D 0 &&
> -	    dev_priv->wm.spr_latency[3] =3D=3D 0 &&
> -	    dev_priv->wm.cur_latency[3] =3D=3D 0)
> +	if (dev_priv->display.wm.pri_latency[3] =3D=3D 0 &&
> +	    dev_priv->display.wm.spr_latency[3] =3D=3D 0 &&
> +	    dev_priv->display.wm.cur_latency[3] =3D=3D 0)
>  		return;
>=20
> -	dev_priv->wm.pri_latency[3] =3D 0;
> -	dev_priv->wm.spr_latency[3] =3D 0;
> -	dev_priv->wm.cur_latency[3] =3D 0;
> +	dev_priv->display.wm.pri_latency[3] =3D 0;
> +	dev_priv->display.wm.spr_latency[3] =3D 0;
> +	dev_priv->display.wm.cur_latency[3] =3D 0;
>=20
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "LP3 watermarks disabled due to potential for lost
> interrupts\n");
> -	intel_print_wm_latency(dev_priv, "Primary", dev_priv-
> >wm.pri_latency);
> -	intel_print_wm_latency(dev_priv, "Sprite", dev_priv-
> >wm.spr_latency);
> -	intel_print_wm_latency(dev_priv, "Cursor", dev_priv-
> >wm.cur_latency);
> +	intel_print_wm_latency(dev_priv, "Primary", dev_priv-
> >display.wm.pri_latency);
> +	intel_print_wm_latency(dev_priv, "Sprite", dev_priv-
> >display.wm.spr_latency);
> +	intel_print_wm_latency(dev_priv, "Cursor",
> +dev_priv->display.wm.cur_latency);
>  }
>=20
>  static void ilk_setup_wm_latency(struct drm_i915_private *dev_priv)  {
> -	intel_read_wm_latency(dev_priv, dev_priv->wm.pri_latency);
> +	intel_read_wm_latency(dev_priv, dev_priv->display.wm.pri_latency);
>=20
> -	memcpy(dev_priv->wm.spr_latency, dev_priv->wm.pri_latency,
> -	       sizeof(dev_priv->wm.pri_latency));
> -	memcpy(dev_priv->wm.cur_latency, dev_priv->wm.pri_latency,
> -	       sizeof(dev_priv->wm.pri_latency));
> +	memcpy(dev_priv->display.wm.spr_latency, dev_priv-
> >display.wm.pri_latency,
> +	       sizeof(dev_priv->display.wm.pri_latency));
> +	memcpy(dev_priv->display.wm.cur_latency, dev_priv-
> >display.wm.pri_latency,
> +	       sizeof(dev_priv->display.wm.pri_latency));
>=20
> -	intel_fixup_spr_wm_latency(dev_priv, dev_priv->wm.spr_latency);
> -	intel_fixup_cur_wm_latency(dev_priv, dev_priv->wm.cur_latency);
> +	intel_fixup_spr_wm_latency(dev_priv, dev_priv-
> >display.wm.spr_latency);
> +	intel_fixup_cur_wm_latency(dev_priv,
> +dev_priv->display.wm.cur_latency);
>=20
> -	intel_print_wm_latency(dev_priv, "Primary", dev_priv-
> >wm.pri_latency);
> -	intel_print_wm_latency(dev_priv, "Sprite", dev_priv-
> >wm.spr_latency);
> -	intel_print_wm_latency(dev_priv, "Cursor", dev_priv-
> >wm.cur_latency);
> +	intel_print_wm_latency(dev_priv, "Primary", dev_priv-
> >display.wm.pri_latency);
> +	intel_print_wm_latency(dev_priv, "Sprite", dev_priv-
> >display.wm.spr_latency);
> +	intel_print_wm_latency(dev_priv, "Cursor",
> +dev_priv->display.wm.cur_latency);
>=20
>  	if (DISPLAY_VER(dev_priv) =3D=3D 6) {
>  		snb_wm_latency_quirk(dev_priv);
> @@ -3128,8 +3128,8 @@ static void ilk_setup_wm_latency(struct
> drm_i915_private *dev_priv)
>=20
>  static void skl_setup_wm_latency(struct drm_i915_private *dev_priv)  {
> -	intel_read_wm_latency(dev_priv, dev_priv->wm.skl_latency);
> -	intel_print_wm_latency(dev_priv, "Gen9 Plane", dev_priv-
> >wm.skl_latency);
> +	intel_read_wm_latency(dev_priv, dev_priv->display.wm.skl_latency);
> +	intel_print_wm_latency(dev_priv, "Gen9 Plane",
> +dev_priv->display.wm.skl_latency);
>  }
>=20
>  static bool ilk_validate_pipe_wm(const struct drm_i915_private *dev_priv=
,
> @@ -3386,7 +3386,7 @@ static unsigned int ilk_wm_lp_latency(struct
> drm_i915_private *dev_priv,
>  	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
>  		return 2 * level;
>  	else
> -		return dev_priv->wm.pri_latency[level];
> +		return dev_priv->display.wm.pri_latency[level];
>  }
>=20
>  static void ilk_compute_wm_results(struct drm_i915_private *dev_priv, @@
> -3538,7 +3538,7 @@ static unsigned int ilk_compute_wm_dirty(struct
> drm_i915_private *dev_priv,  static bool _ilk_disable_lp_wm(struct
> drm_i915_private *dev_priv,
>  			       unsigned int dirty)
>  {
> -	struct ilk_wm_values *previous =3D &dev_priv->wm.hw;
> +	struct ilk_wm_values *previous =3D &dev_priv->display.wm.hw;
>  	bool changed =3D false;
>=20
>  	if (dirty & WM_DIRTY_LP(3) && previous->wm_lp[2] &
> WM_LP_ENABLE) { @@ -3572,7 +3572,7 @@ static bool
> _ilk_disable_lp_wm(struct drm_i915_private *dev_priv,  static void
> ilk_write_wm_values(struct drm_i915_private *dev_priv,
>  				struct ilk_wm_values *results)
>  {
> -	struct ilk_wm_values *previous =3D &dev_priv->wm.hw;
> +	struct ilk_wm_values *previous =3D &dev_priv->display.wm.hw;
>  	unsigned int dirty;
>  	u32 val;
>=20
> @@ -3634,7 +3634,7 @@ static void ilk_write_wm_values(struct
> drm_i915_private *dev_priv,
>  	if (dirty & WM_DIRTY_LP(3) && previous->wm_lp[2] !=3D results-
> >wm_lp[2])
>  		intel_uncore_write(&dev_priv->uncore, WM3_LP_ILK,
> results->wm_lp[2]);
>=20
> -	dev_priv->wm.hw =3D *results;
> +	dev_priv->display.wm.hw =3D *results;
>  }
>=20
>  bool ilk_disable_lp_wm(struct drm_i915_private *dev_priv) @@ -4321,7
> +4321,7 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_stat=
e,
>  	drm_WARN_ON(&dev_priv->drm, ret);
>=20
>  	for (level =3D 0; level <=3D max_level; level++) {
> -		unsigned int latency =3D dev_priv->wm.skl_latency[level];
> +		unsigned int latency =3D dev_priv-
> >display.wm.skl_latency[level];
>=20
>  		skl_compute_plane_wm(crtc_state, plane, level, latency,
> &wp, &wm, &wm);
>  		if (wm.min_ddb_alloc =3D=3D U16_MAX)
> @@ -5576,7 +5576,7 @@ skl_compute_wm_levels(const struct
> intel_crtc_state *crtc_state,
>=20
>  	for (level =3D 0; level <=3D max_level; level++) {
>  		struct skl_wm_level *result =3D &levels[level];
> -		unsigned int latency =3D dev_priv->wm.skl_latency[level];
> +		unsigned int latency =3D dev_priv-
> >display.wm.skl_latency[level];
>=20
>  		skl_compute_plane_wm(crtc_state, plane, level, latency,
>  				     wm_params, result_prev, result); @@ -
> 5596,7 +5596,7 @@ static void tgl_compute_sagv_wm(const struct
> intel_crtc_state *crtc_state,
>  	unsigned int latency =3D 0;
>=20
>  	if (dev_priv->sagv_block_time_us)
> -		latency =3D dev_priv->sagv_block_time_us + dev_priv-
> >wm.skl_latency[0];
> +		latency =3D dev_priv->sagv_block_time_us +
> +dev_priv->display.wm.skl_latency[0];
>=20
>  	skl_compute_plane_wm(crtc_state, plane, 0, latency,
>  			     wm_params, &levels[0],
> @@ -6458,10 +6458,10 @@ static void ilk_initial_watermarks(struct
> intel_atomic_state *state,
>  	const struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>=20
> -	mutex_lock(&dev_priv->wm.wm_mutex);
> +	mutex_lock(&dev_priv->display.wm.wm_mutex);
>  	crtc->wm.active.ilk =3D crtc_state->wm.ilk.intermediate;
>  	ilk_program_watermarks(dev_priv);
> -	mutex_unlock(&dev_priv->wm.wm_mutex);
> +	mutex_unlock(&dev_priv->display.wm.wm_mutex);
>  }
>=20
>  static void ilk_optimize_watermarks(struct intel_atomic_state *state, @@=
 -
> 6474,10 +6474,10 @@ static void ilk_optimize_watermarks(struct
> intel_atomic_state *state,
>  	if (!crtc_state->wm.need_postvbl_update)
>  		return;
>=20
> -	mutex_lock(&dev_priv->wm.wm_mutex);
> +	mutex_lock(&dev_priv->display.wm.wm_mutex);
>  	crtc->wm.active.ilk =3D crtc_state->wm.ilk.optimal;
>  	ilk_program_watermarks(dev_priv);
> -	mutex_unlock(&dev_priv->wm.wm_mutex);
> +	mutex_unlock(&dev_priv->display.wm.wm_mutex);
>  }
>=20
>  static void skl_wm_level_from_reg_val(u32 val, struct skl_wm_level *leve=
l)
> @@ -6677,7 +6677,7 @@ static void ilk_pipe_wm_get_hw_state(struct
> intel_crtc *crtc)  {
>  	struct drm_device *dev =3D crtc->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -	struct ilk_wm_values *hw =3D &dev_priv->wm.hw;
> +	struct ilk_wm_values *hw =3D &dev_priv->display.wm.hw;
>  	struct intel_crtc_state *crtc_state =3D to_intel_crtc_state(crtc-
> >base.state);
>  	struct intel_pipe_wm *active =3D &crtc_state->wm.ilk.optimal;
>  	enum pipe pipe =3D crtc->pipe;
> @@ -6825,7 +6825,7 @@ static void vlv_read_wm_values(struct
> drm_i915_private *dev_priv,
>=20
>  void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)  {
> -	struct g4x_wm_values *wm =3D &dev_priv->wm.g4x;
> +	struct g4x_wm_values *wm =3D &dev_priv->display.wm.g4x;
>  	struct intel_crtc *crtc;
>=20
>  	g4x_read_wm_values(dev_priv, wm);
> @@ -6919,7 +6919,7 @@ void g4x_wm_sanitize(struct drm_i915_private
> *dev_priv)
>  	struct intel_plane *plane;
>  	struct intel_crtc *crtc;
>=20
> -	mutex_lock(&dev_priv->wm.wm_mutex);
> +	mutex_lock(&dev_priv->display.wm.wm_mutex);
>=20
>  	for_each_intel_plane(&dev_priv->drm, plane) {
>  		struct intel_crtc *crtc =3D
> @@ -6967,12 +6967,12 @@ void g4x_wm_sanitize(struct drm_i915_private
> *dev_priv)
>=20
>  	g4x_program_watermarks(dev_priv);
>=20
> -	mutex_unlock(&dev_priv->wm.wm_mutex);
> +	mutex_unlock(&dev_priv->display.wm.wm_mutex);
>  }
>=20
>  void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv)  {
> -	struct vlv_wm_values *wm =3D &dev_priv->wm.vlv;
> +	struct vlv_wm_values *wm =3D &dev_priv->display.wm.vlv;
>  	struct intel_crtc *crtc;
>  	u32 val;
>=20
> @@ -7006,7 +7006,7 @@ void vlv_wm_get_hw_state(struct
> drm_i915_private *dev_priv)
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "Punit not acking DDR DVFS request, "
>  				    "assuming DDR DVFS is disabled\n");
> -			dev_priv->wm.max_level =3D VLV_WM_LEVEL_PM5;
> +			dev_priv->display.wm.max_level =3D
> VLV_WM_LEVEL_PM5;
>  		} else {
>  			val =3D vlv_punit_read(dev_priv,
> PUNIT_REG_DDR_SETUP2);
>  			if ((val & FORCE_DDR_HIGH_FREQ) =3D=3D 0) @@ -7075,7
> +7075,7 @@ void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
>  	struct intel_plane *plane;
>  	struct intel_crtc *crtc;
>=20
> -	mutex_lock(&dev_priv->wm.wm_mutex);
> +	mutex_lock(&dev_priv->display.wm.wm_mutex);
>=20
>  	for_each_intel_plane(&dev_priv->drm, plane) {
>  		struct intel_crtc *crtc =3D
> @@ -7116,7 +7116,7 @@ void vlv_wm_sanitize(struct drm_i915_private
> *dev_priv)
>=20
>  	vlv_program_watermarks(dev_priv);
>=20
> -	mutex_unlock(&dev_priv->wm.wm_mutex);
> +	mutex_unlock(&dev_priv->display.wm.wm_mutex);
>  }
>=20
>  /*
> @@ -7137,7 +7137,7 @@ static void ilk_init_lp_watermarks(struct
> drm_i915_private *dev_priv)
>=20
>  void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv)  {
> -	struct ilk_wm_values *hw =3D &dev_priv->wm.hw;
> +	struct ilk_wm_values *hw =3D &dev_priv->display.wm.hw;
>  	struct intel_crtc *crtc;
>=20
>  	ilk_init_lp_watermarks(dev_priv);
> @@ -8231,10 +8231,10 @@ void intel_init_pm(struct drm_i915_private
> *dev_priv)
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
>  		ilk_setup_wm_latency(dev_priv);
>=20
> -		if ((DISPLAY_VER(dev_priv) =3D=3D 5 && dev_priv-
> >wm.pri_latency[1] &&
> -		     dev_priv->wm.spr_latency[1] && dev_priv-
> >wm.cur_latency[1]) ||
> -		    (DISPLAY_VER(dev_priv) !=3D 5 && dev_priv-
> >wm.pri_latency[0] &&
> -		     dev_priv->wm.spr_latency[0] && dev_priv-
> >wm.cur_latency[0])) {
> +		if ((DISPLAY_VER(dev_priv) =3D=3D 5 && dev_priv-
> >display.wm.pri_latency[1] &&
> +		     dev_priv->display.wm.spr_latency[1] && dev_priv-
> >display.wm.cur_latency[1]) ||
> +		    (DISPLAY_VER(dev_priv) !=3D 5 && dev_priv-
> >display.wm.pri_latency[0] &&
> +		     dev_priv->display.wm.spr_latency[0] &&
> +dev_priv->display.wm.cur_latency[0])) {
>  			dev_priv->display.funcs.wm =3D &ilk_wm_funcs;
>  		} else {
>  			drm_dbg_kms(&dev_priv->drm,
> --
> 2.34.1

