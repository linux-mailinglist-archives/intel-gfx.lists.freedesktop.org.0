Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A038A9DB4D0
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 10:31:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EF1E10E02A;
	Thu, 28 Nov 2024 09:31:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QzYBfxVK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DEE010E02A;
 Thu, 28 Nov 2024 09:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732786265; x=1764322265;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=PcXc7GmxogMiTF7tjLKmHlUTxtSv1eKy5fL4BKM0Tnw=;
 b=QzYBfxVKq7frVTudNqxyIMmS7Y3QyFFYc3LD3jt676nw/CN+Onop4519
 6pH4j3RamSNHKg/v0tIPLVkyq99V+JWZ890aBFxZVLhsqGNyN8HQKFzWv
 q//leG1nz1LDcSVWjaaPyZjXk5LxqGoAsVdi4RGwDSfV4zX9MfY1dqaYu
 oJYOUyoEtfkx/ScEx8UeMKigRLXFHLxioZkf2jxk+8IXVUvS4W5lwULou
 zIDqHqFZOt9NbgNpeaSoY1pE5Oo1TPr76S5p7ihGMY6M1FQ0W0jM8vWS9
 YPSrMPUsYAOproyMqULy3CbrzGYEsE6rdzOF4/cpKs0ZW5w6h5gSPeMJT Q==;
X-CSE-ConnectionGUID: 9O8W9uXqQlmNdBUvt1+9iQ==
X-CSE-MsgGUID: vF1asonvQw+kUwlSuhWzhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="33140310"
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="33140310"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 01:31:04 -0800
X-CSE-ConnectionGUID: 85CPkFxkSniAJIDj70nY5g==
X-CSE-MsgGUID: UtGJMxMaRNWLoyRuiVBaog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="92514345"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Nov 2024 01:31:04 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 28 Nov 2024 01:31:04 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 28 Nov 2024 01:31:04 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 28 Nov 2024 01:31:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qmYHyMb2N8RxGghk8rLY6j/DfWF8jaewr1cxAPDYHNWrOsNczTeZgnv24CiL5okTC6HTIT3KToe70tbI8M9CCmTwLIHiy+VbwzLFKQl1NWtxNdG5v944lzMdQEsNta9YPQ8kr33UfRaPRjboZP0n8tke/xWrgkV22yxB84tNucKnMFvqoAUqVvkPq39HbkvreBg1kxyous3DdABmO+XGtTzDNVBUtI2E6FlOeARugwQ0K0hM0o/kULEU3hvAqquFryyroA68/sLcpGDTE0B/xnnVHtwEacI+AsXDK7B4bqts/TMdT8Ao4S83+PxhUxs/phr27OX5scxcL27sR10ZWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T6dWoHTS4lsIeVfZ1u8y9P/vFQfrsRN3+xTXXVNm5eI=;
 b=DJC84ChNkDH0w6nTMpNGRTIpXtxI+w295wpbZR3/tiJmdMvqiCn7UYk1Y4hXaf6v5ZtULk0lY/KHo9DHGQDGRk1K0mgEQq2JgLcv9K2fX+2R+On5qpi9vt6lbUEKm7XPOcQ3noRo7cOSfkLhjLdxvQQ4BF4Ppmjv4KNjkOFEueWonfy03gi1owHhe4pitY+amRUbahZcQDs5qNkLOHiCcoTho41Cy1U2lQofU+nf2BagSBouS/swlGzM+Tx9JrQLBjtdB1Ymf4y93Fy1nRC+zyJDgqrjmOdXbzsujf0iO29TXR4+KrVv9S6NRuEgBN6sRZ/48TngFi9ZDCCQCA+R+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by CH3PR11MB8140.namprd11.prod.outlook.com (2603:10b6:610:15b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.14; Thu, 28 Nov
 2024 09:31:02 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%7]) with mapi id 15.20.8207.010; Thu, 28 Nov 2024
 09:31:01 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [RFC v1 1/4] drm/i915/scaler: Calculate scaler prefill latency
Thread-Topic: [RFC v1 1/4] drm/i915/scaler: Calculate scaler prefill latency
Thread-Index: AQHbNN+6Ek4W339Tx0a/f5uSOkGm77LMf9bg
Date: Thu, 28 Nov 2024 09:31:01 +0000
Message-ID: <IA1PR11MB6467AE3EEA205F79CD97B08BE3292@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20241112085039.1258860-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241112085039.1258860-2-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20241112085039.1258860-2-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|CH3PR11MB8140:EE_
x-ms-office365-filtering-correlation-id: 14a60616-1002-4ca5-8be9-08dd0f8f5fbc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|10070799003|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Ml8YRs3WukITe9YblxWe73XfRqZONjFkf0Rbr+hC3nU97c3lfk+gSEKyMuUz?=
 =?us-ascii?Q?4UKqxDV/44ksd6PYoO6KYpD+fRKXrumhtKqT5hcTzSYxRSeJ0PLmUMMLdY+F?=
 =?us-ascii?Q?zb9H/TkNywL1moljrxsu7sAXgaz68L8hpVzHqfExRJCveWg7ABUvgEgYE+ZX?=
 =?us-ascii?Q?dyFbKglplvAUEBRz8LgVVnptPF8k47WzDiwA+igsgNzsOydWtN2KhG7IPFEs?=
 =?us-ascii?Q?HF3RHp3Iyq3djbRe7RsXDGHAoIMV5C7RdAR+tPy2RX3sK3Dc8JVHOIgPAZNd?=
 =?us-ascii?Q?ql183F7SB+E4l28q+nRwnPlv+ciw6Ztc++dolnDC+YXdJrMGbX+rGli/lN2t?=
 =?us-ascii?Q?Jlrl0eJFZ+/L4NroM+ELLDFrHMnajv2E3UpOJqxm+WY36ClP0H60VXa0aVGF?=
 =?us-ascii?Q?oVdnNg4+wIgGMIUUgVNU4FCx/uM0aYKadzLak/lyuScuUlTin5TDspJ9+AYj?=
 =?us-ascii?Q?zaqaogm2cfWZTbXNsSP+ssod0AHaxz7iYfmD82oTz2HOXX7KoPhJHYPbAk1t?=
 =?us-ascii?Q?gYNsMuZDz4UNTr6XEipvdi5uPNOOz0PeVQ/fvB5OKPlSihLsqcKZE4Z5NmAi?=
 =?us-ascii?Q?BPh8QClPke1bwfYZQdrj1/wFpRR0UCz960DcllQuBgxddl+arftXWroTnPyi?=
 =?us-ascii?Q?5M70fj0UqdvLjySESPV6GlqWyr85HlDDV8Xp6oOpJ+q9zuylo1lcMZBV/OBE?=
 =?us-ascii?Q?fqFSg942VAHqevSbSPYGMV+w26eUkB35gJHGkmDOpCAzoDEh82g73fbxaJGE?=
 =?us-ascii?Q?X9zGeaqtXiwp8vdxjQC6nQdFZhqvstlT6qXWIrD+sgruQ9iAkcNYZh/rRg+h?=
 =?us-ascii?Q?6kMtPeeA54Tzp6C3atAcxayEmkT4QrifNv3sxaa4GBC3tULWY4omkFt7ZX0y?=
 =?us-ascii?Q?VfefUAKXJypTbZkcNAd4iPO/G30Q4JGGiRMVUa8DG61H8oLomMO8KLeobUn3?=
 =?us-ascii?Q?LoWrnAhNJo4gULEpgV1EzDoVWcUf8KFq2aTp+spVXTIk7twDXiWg/3gK81Fq?=
 =?us-ascii?Q?2iMh6Tt7xz8TPdO69jy+XZSd5sd3+gEUfzXDUD/tHx2ILyeJN2nGidy89wA/?=
 =?us-ascii?Q?guqr0tnpKr/7AmBzVCPL7nQiQ4wlzzNlf5VzfVXy48eaycZlUMm854SQztab?=
 =?us-ascii?Q?TsdPcyADjkgwL5+Po4nGoGdBlUZaElo95Ebi2FTFHE9F0QhgRUJORKBTvqG8?=
 =?us-ascii?Q?g1QFQ7AaKDUzU8DgvtMGAzwlsopfEHPz6wnIdHB2PgF5Cb2FVtinJC/2shcd?=
 =?us-ascii?Q?dnybLN3Qnx1isk+1un7byWytc6sh4oBRDWeAtqkylyBb7OvPXy+pNRBus/bW?=
 =?us-ascii?Q?jtZ6RbRkdUPVsaPv7gx9sxE1qOd68n/vz4p1g+AfiQJjFkWdx28LvEsFvBoI?=
 =?us-ascii?Q?uNE/aETxIgKPKRITPLSYTOKY9RooFmHkHhqSnDmbVwyv/6FDfg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zubZrzRAHVq2CM9DR8a6tvYEaBdKyCDemO3NndtJv6ZHt9Rd0PMtdrU+DghH?=
 =?us-ascii?Q?1n7aD8H8IFeVlhv1ImPYrEaTEDJVk4n3QXQP4h4erqZM7m5EUXpZoe+1w+zR?=
 =?us-ascii?Q?1Edu1lHE1y9loyAK8RyHXWh3msFXmEFVnQTlyvG9PjHPTajkNufHjMoCwH5N?=
 =?us-ascii?Q?U5nMIHYiHWE/pt91yJISvmzZTOhUAZ39fli/d52DEs1W397dqHUfrZ7nvzHu?=
 =?us-ascii?Q?2TfR1avTBqk96F7MjV16AT9Ib+6mWwIpfzXkEtzsjhMY9uQb6cQjedmlEqwu?=
 =?us-ascii?Q?nOabtJWqfUyyGYUyE35bJzXU8FtfZUQ/yrXkhe0LiWFNfIt/b568DHOHg6Pj?=
 =?us-ascii?Q?eFrPuwTFjFsM2zKCA+oQrXWuTashvgmBPFfE2TpZMM2T6cL3me8lqXvmJzUw?=
 =?us-ascii?Q?7c2wLzyMP2yvF9PAt0VZAZbIlL0yAXdJhg7DROgUffDnnP0dqarp4yiklcp7?=
 =?us-ascii?Q?LE3EwGxharELCwVLk+K1fhBPLVYTYCa5bZ86vTAqzrrVtSoSvuQcWm/hpaOo?=
 =?us-ascii?Q?hSfj0+sbUQNR+Dol5u3x4zFeTnF6LNJGsesuxCkBT1f99nRpPFTkg5DxO70i?=
 =?us-ascii?Q?OfFta+a8Ohh/aTEjQ8KiKfjYQGsbfsbd5MbKv3uxYOB1XepVnAVp3ZpaIKL8?=
 =?us-ascii?Q?m204+NSVXB6Zk1TVaZYOHlUGa7l3LQonpKzWliJoP303qlZYqR46Oyc2rWiH?=
 =?us-ascii?Q?ubf3z5Bvqyw+tA40wEnc2lXh6AOPes8iCXT2gaJnb4fddWtfWI28oimc47gS?=
 =?us-ascii?Q?N3NrHCBdmRPNDROlVQX339odI4/G/S/uZaWS6yDvLmbwh4OzMey6VrBr+4Tn?=
 =?us-ascii?Q?tRae++bGuzotFU2072s2aNHMP5uWZwcoRVvYsU0WscoGZhlAkzDiKFbCmmxg?=
 =?us-ascii?Q?AT7DLPOmg7RZcwp4YMYXvL6zSPiFx+fZHobLF/fuYJ+/IJItwvJRnXRT3mN6?=
 =?us-ascii?Q?kOQcLg10t3R2HSpMWlwY9SWulPYk72b9mqr/gVasyayI5uRtpvGdTSP8RAV/?=
 =?us-ascii?Q?AZJVTxy6mwpCsrF1fxKCMYVeLS8tWHEiK0290ZP2BlzA5yK0wdZg9ag7Xu9b?=
 =?us-ascii?Q?qPldp4XDKy3pfo5+cZpsmlnp5alsBat1zeVWEJ1gDaZ0f+LTEO8NsJULVmGt?=
 =?us-ascii?Q?gnBiNfObiVPMcrlVDJmBU/udp3fprjAlXtGWJWBibdfc2NqNVM5g/Y9xS/e/?=
 =?us-ascii?Q?BTgd5b0kNotH0cxHJXn7W0MoI2Ua24PW6B+f5fkWmTErRTsBysEC8wGgLv9/?=
 =?us-ascii?Q?J7oMpEguYe0A2mt/j6ETwP2s7TPo1RK+8q9Z4MXU73oZSRnagGbloGDvQhTw?=
 =?us-ascii?Q?pJ7Hxxd/6F5PVMYuFr3MWa9wfysdF9l+9oBgDkRPv5CDGo6xlwBY+iOmXhhg?=
 =?us-ascii?Q?6pskQsK5HsWc2wWAQa8vr03GbTyhBFzVSoDLZELfH09gaUvyLeSEIIaODhFr?=
 =?us-ascii?Q?XdO+5dgcmC+ElP4RPr0x4dKmmYdBkBapcPmZnJFjgPUT8bqPJsXc3HXKsnfc?=
 =?us-ascii?Q?tzYzu21VhnVIE8YRG/AsQf0zQWPpYI2XiHQE/HLfS8c2uKoZfjpfF61v6k5+?=
 =?us-ascii?Q?XUaEL+LQTaTGhqG1ZwvW4N9R7dCfhXcI23Ay0bv5jXcndIGQK2tw+cEcRFsW?=
 =?us-ascii?Q?IJ7dH7uVBqiUWQmU0yvy0ueTyoe098w3oOVpCP2jLCjd?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14a60616-1002-4ca5-8be9-08dd0f8f5fbc
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2024 09:31:01.7306 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /1cp+Fi+WptFeWUKx5uIepP0pHaAbmJPtNkHv1GnXrKYgfxiG7V5kh41C0LR6EnFNy1IQQG5ZjgrlUxHfELz4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8140
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
> Sent: Tuesday, November 12, 2024 2:21 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: [RFC v1 1/4] drm/i915/scaler: Calculate scaler prefill latency
>=20
> Calculate scaler prefill latency which accounts for time for each scaler =
in
> pipeline.
>=20
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 39 +++++++++++++++++++++++
> drivers/gpu/drm/i915/display/skl_scaler.h |  1 +
>  2 files changed, 40 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c
> b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 7dbc99b02eaa..eec4a5f783fa 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -6,6 +6,7 @@
>  #include "i915_reg.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
> +#include "intel_crtc.h"
>  #include "intel_fb.h"
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
> @@ -839,3 +840,41 @@ void skl_scaler_get_config(struct intel_crtc_state
> *crtc_state)
>  	else
>  		scaler_state->scaler_users &=3D ~(1 << SKL_CRTC_INDEX);  }
> +
> +int skl_calc_scaler_prefill_latency(struct intel_crtc_state
> +*crtc_state) {
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_plane *plane =3D to_intel_plane(crtc->base.primary);
> +	const struct intel_plane_state *plane_state =3D
> to_intel_plane_state(plane->base.state);
> +	struct intel_crtc_scaler_state *scaler_state =3D &crtc_state-
> >scaler_state;
> +	int scaler_prefill_latency[2];
> +	int num_scaler_in_use, count, hscale, vscale, tot_scaler_prefill_usec;
> +	int hscan_time =3D DIV_ROUND_UP(crtc_state-
> >hw.adjusted_mode.htotal * 1000,
> +				      crtc_state->hw.adjusted_mode.crtc_clock);
> +
> +	for (count =3D 0; count < crtc->num_scalers; count++)
> +		if (scaler_state->scalers[count].in_use)
> +			num_scaler_in_use++;
> +
> +	if (!num_scaler_in_use)
> +		return 0;
> +
> +	if (num_scaler_in_use =3D=3D 2) {=20
Here we should check for the scaler_id=3D=3D0 because hscale and vscale val=
ues have to be=20
computed for 1st scaler and based on this, time for second scaler will be c=
alculated.

> +		hscale =3D drm_rect_calc_hscale(&plane_state->uapi.src,
> +					      &plane_state->uapi.dst,
> +					      0, INT_MAX);
> +		vscale =3D drm_rect_calc_vscale(&plane_state->uapi.src,
> +					      &plane_state->uapi.dst,
> +					      0, INT_MAX);
Also we should check for upscale/ downscale because latency for second scal=
er is dependent on the
downscale amount.
And if first scaler is not used then you may need to consider worst case an=
d calculate the maximum downscaling factor.

Thanks and Regards,
Nemesa
> +		scaler_prefill_latency[1] =3D 4 * hscan_time * hscale * vscale;
> +	}
> +
> +	/*
> +	 * FIXME : When only 1 scaler used, 1st scaler can be
> downscale/upscale
> +	 */
> +	scaler_prefill_latency[0] =3D 4 * hscan_time;
> +	tot_scaler_prefill_usec =3D scaler_prefill_latency[0] +
> +scaler_prefill_latency[1];
> +

> +	return intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
> +					tot_scaler_prefill_usec);
> +}
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h
> b/drivers/gpu/drm/i915/display/skl_scaler.h
> index 63f93ca03c89..cd4d961d3b02 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> @@ -34,4 +34,5 @@ void skl_scaler_disable(const struct intel_crtc_state
> *old_crtc_state);
>=20
>  void skl_scaler_get_config(struct intel_crtc_state *crtc_state);
>=20
> +int skl_calc_scaler_prefill_latency(struct intel_crtc_state
> +*crtc_state);
>  #endif
> --
> 2.46.0

