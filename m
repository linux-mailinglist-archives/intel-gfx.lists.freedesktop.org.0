Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7113986BE6
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 07:00:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE43510E306;
	Thu, 26 Sep 2024 05:00:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CR0n8KGK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F68510E308
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 05:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727326832; x=1758862832;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UE1uuM9iFuUxVfMsbTTPZh8qJ12GXcpT0rExZ92vcPo=;
 b=CR0n8KGKQHyyQs61bYKA4ytHc7ADEE5mso7cIVXVSCXvR0tMdPDL0Q7M
 w0itJ2ZuNS5mDbcxiL5ERDCsqC7OP2j/wytLdUiwjENjHc9xEDx8Xg5V1
 Cc4kpqDbGOyhuPvTa52a0BaOsHKy3zmSJVURiwd7P6wFMF52o/AuPNyF0
 djX4vcC3SERn5LmqkEL4MePSUfEHqzfUCFJzsUQyviAQusQXn7Z0OGU0Q
 vyeKHaB3Q198dNGarVKDDIJged0Oy6qVU+GCQKvk0GUpLx0EkgUvuYKCB
 +/x3tmYRteZHmEOIfGMG3E3xabCo+3acBgihRrrFXfD1W8U9hkDmnBfjp w==;
X-CSE-ConnectionGUID: Au41rPT8QA6zw1Srtxv1Dw==
X-CSE-MsgGUID: sjkCEX2pQGWxHEJlItVqOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="36986447"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="36986447"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 22:00:10 -0700
X-CSE-ConnectionGUID: Xfb99l7oSHaSxS2+q6/hXA==
X-CSE-MsgGUID: sFNdUlyoTwuzw9O3j4Lukw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="72145279"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Sep 2024 22:00:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 22:00:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 22:00:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 25 Sep 2024 22:00:09 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 25 Sep 2024 22:00:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m010PBjATCB9+piR6wiGjWL2BxGBkDmbsy/r10F7iL8ZVn/0K9f/eP9vQQ7iWIFDL8/y/XcjBrehEoOJecE3fJ8CD+pXX71Xak2fwvECqU5K7TeWi7XmOC7JErHiSCs+/YfAoRyRovCcQlTPiDokTvbSfCePiOnJaqeTWka0mXejhrJDZUvwssY/B7Z3oiVG2q5+tvtHkzQja7gC8FimAulmsDUtJu4t50pLzMmmSCL/OSEGZA/jDLbE1rLkCScfYfSijWxf+bbXL5OeKiYth1bf3wXIOMZxCpyv07GpRcwhx79hc4JOi0dGNzSSoWmhMLuEHMG5BrH06PPwfkFA5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yn2wgRPocQEfJ1vPh915GVqKRbRQYInouWD7xxO5XNk=;
 b=CRI9dYPSTWZa2phu119UnR0p8OqLrPmKya3zZL8bOxIpM5OD8vP0sGtvNggmTBdNSPEXIqlofJPx3fbvf3sCmCVR2WqvJ20jv1jo7AaoL32klz6kgRegNDcpdEQaVeQMjtkYwyoDyRFRmj4vxcj+Uw5I5zP56yMBhwZoxh8ZsSnoO10ejKhsEpN8zBxNUGi2tWHDnwGBnhWKnwFzNvQbs6/wR2dSS3TRDFG4jj2jQ9UmztDMK/8HQRZsgw1Ad5i8OUKYYlx0z1eP8+vuoJqcRx/v8rJZSONts9hCxZe/0RvZq+unUYSBc0icigNJ6b7g90ge3GcdGn2rQEealO7inA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DM4PR11MB7277.namprd11.prod.outlook.com (2603:10b6:8:10b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Thu, 26 Sep
 2024 05:00:06 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%2]) with mapi id 15.20.8005.021; Thu, 26 Sep 2024
 05:00:06 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>
Subject: RE: [PATCH] drm/i915/vdsc: Add bpc check in intel_dsc_compute_params
Thread-Topic: [PATCH] drm/i915/vdsc: Add bpc check in intel_dsc_compute_params
Thread-Index: AQHbD824ic6NImfw80Sd0te/XysAA7Jpgfag
Date: Thu, 26 Sep 2024 05:00:05 +0000
Message-ID: <SJ1PR11MB6129BEE34AAB31767B505C66B96A2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240926043332.1284692-2-suraj.kandpal@intel.com>
In-Reply-To: <20240926043332.1284692-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DM4PR11MB7277:EE_
x-ms-office365-filtering-correlation-id: edb725aa-cb04-4935-3749-08dcdde81688
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?IWr8Lrr5Z+hpubG/0UlfzFmhBwO5K2Vr36YgIlB/FPtbsisdnhp2Z/XJYA1A?=
 =?us-ascii?Q?aPUDD9CGn+MGGDajqj7ugRAHY0H+imbPIe2O9vxhUHaRMOlGMnOhg8ZWVgkO?=
 =?us-ascii?Q?tWbFuIvcZ1OYN+/Jem5z94c5UwVOlhoO7UoZyOqmxpVuHgDAOwzQRQKEkQve?=
 =?us-ascii?Q?6I7y6ItAxuJiANUGPNaXOBG8AgXvwdUrDgBHr7hbmYUKbIisy5tPqtmTVNDv?=
 =?us-ascii?Q?bh9FiqKiIC8e1P616oU3+QBP7ueBV4XoMbvstjs4/iqgx3ZK29HUNy+nnb/F?=
 =?us-ascii?Q?1bSlnGvOhWO+1FxZodmpGWFrybFIreJici7e2wxbyKyc4xbXB0eBe4BSnkVo?=
 =?us-ascii?Q?Gen2BOEq0bjOzJazTq3VY39QzdfeaL77lfUUwDbOAxHxRC2U4egErxVPd3Vd?=
 =?us-ascii?Q?bVtMCBZUFmqn/dEEtDFXdCCJFhfONxG8eja5gARda50DrvyLyHlHnF6daXXC?=
 =?us-ascii?Q?YUcsnycagbnTUjlYwSc73X7YTnLEKeLmUO5L+kYjuWoN51KX9fyxMpH2UaZB?=
 =?us-ascii?Q?l97fwOy4mIsr3mzxs11/VRcXTcR51J879HoET42q5KgDl2PbYYd0P12TSRfF?=
 =?us-ascii?Q?IXZST23w3Bp3TqJcfCzP9P4HvrT8JysBAQEdfRDD+/9X6o2ZGHmh1ImEX9ek?=
 =?us-ascii?Q?4QjdkLeCDgOn6RjuBMgsPBYUqHl0QTTnBz0KC0Lwgrw/dY8tiOLJaeA8eqlL?=
 =?us-ascii?Q?+wM87nwknh1b+tANOLnYx5cQBkNrdUlFcgh/PpQfLAGTV3wIy8hMRUslWEL0?=
 =?us-ascii?Q?ELLJ2LDt0HXhJiYa5e0u2egJ7Aeu1T096bcMt+p9tTlyz7tfn4aUZtqEFJYh?=
 =?us-ascii?Q?w/rJ08v9Y4GAx6On1bEhvKM6fnAny3zwtyiacoufM8VIISx11fTfbpdGh2g2?=
 =?us-ascii?Q?xQhPGYgNEGUQsslAn9cdmaJgRvLQiNQnGVm+LfVEXgP5HSOnz5ztLVJdyg2Z?=
 =?us-ascii?Q?0tPH5Tn0yNk3erFy6CFNjyutsChSVLTNNVq1T4LoQRl4HajtLZebpSI4U16V?=
 =?us-ascii?Q?/f8fdK9MSWW7MCGFzff2IOXJjxadCUgiJYhiMwaVv2pJf5yKlZ/zciy/sV6R?=
 =?us-ascii?Q?Lm9mBh6oIgEcal5iflaNq2evT3uZSNJovB3OtUXWTUGhWOCQnAIq+nd+fdIB?=
 =?us-ascii?Q?KRl4OPA2zWSNRs0TDFs2aFDl6EpXGsb90o5gqi2smjiJTswh/zSjqQyYEvmS?=
 =?us-ascii?Q?MPtClhIlmiDkFIC8ohfVc8MuHfWZv0J+hXjMvH5cLa0zsBwuVA+qLqZ0kAHP?=
 =?us-ascii?Q?xWZY533Z+5fD4X55sz+avb6xCl/LFEUTshF4luAGxjHV881mLQ3YyXiY4gae?=
 =?us-ascii?Q?CgvfrnM4tuammwtaUhXiWcdcYnBdXfD4yuJsgnxXRniE9w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yvCqVP8D7iiF003cuEp3rj0wtZlGeS/8T0asIbEpGtofWyuLDoYUS2a7USwy?=
 =?us-ascii?Q?wZfAL1vUPXjpFWbyfEe+DPzJO3T0GINtBU6GqCNPOZRnSPm/bbk6+VnN/H7A?=
 =?us-ascii?Q?dozSbBXrMP4UtTJ1puaMCikIFI1TfJv+6vHI8jwvQz1SfcPyRCbUTCQL+Bsw?=
 =?us-ascii?Q?cLo2dh39Ic/I7YummSYSmWiRsh4ems7xoyAsr/P3qP7M3Qkq/xXoPsrgkuqm?=
 =?us-ascii?Q?BR151dF4tX0iqvLPidQbqYXZApNiJ78ZQ9VjRFSxz4G/KH6vBpN4IVr+dl8b?=
 =?us-ascii?Q?JCGqxfgTcRVSPDkvrEPGdgo5WwldauIcapypeie/vgs5SIkCdfmMcgzVBY47?=
 =?us-ascii?Q?UDQo8ajYdPoAa+CyIyzWTz7vyD1lRWlPM6QFWpSxAHQX3JZhOv+gKuJeFKqA?=
 =?us-ascii?Q?34Mp7TX7yq0P8gndw2a6Y9D1oZfxtyptWX3vQejEgE5qEg2t+Bj80zCW6Wz1?=
 =?us-ascii?Q?5G2i0hfNEruF5dgAz17ad3rRaNv3S2C6InVu2bkqwN/DR/XlX9j4wbOQw40N?=
 =?us-ascii?Q?Sy6Oh9JVPjozO/EDbJDez8upMQuox9/p9HU9LKo+4SMKmzxN23+FoVn+DCcP?=
 =?us-ascii?Q?ZajpwtVO0QsGwU0FmqxPs0tdDLQDnjDrUYlt4mmgZxzIgjW87e48xu4zoSed?=
 =?us-ascii?Q?wPOkDnCt9s3JbWtflUoVqUC1Dcc3vkO6lmo5A/1H2BQ0+J6JtjvYAGhv2ema?=
 =?us-ascii?Q?qqU3+ZkJkkDYPLqlBbZQ+H2tR5NPLQ5Xx87FPgLllXt0kHV+/T00JoySdcy1?=
 =?us-ascii?Q?UoFs6b3qIXbJggp1xHtkY0CPNYl4c830xET50jlrSSUzlpVkEYtj78LzQqSP?=
 =?us-ascii?Q?qA30HGJrovTmzTdeZvn3Y0KMfUW/bZDt7yzj5uu8lPz8KN7Qr2egeyfhvR0F?=
 =?us-ascii?Q?Lqq2Yov+Mys7Ypph5eLncnKt3uNpHOMLHSzzkEs3LFGbcRIi7R2nkwiFhGXr?=
 =?us-ascii?Q?/FekQm4TwIJbISuEfmckGIsaWIUl81/gvTXn+8CapsuMS3eQ8Heb5UKj9wEI?=
 =?us-ascii?Q?HgdBwFDTxGK0ICMcgCV0qzgMZgNx2bRleytcQSfA6/b3VsBAjeY5aM2Ezk9Y?=
 =?us-ascii?Q?1VXwJnpIcJi4awtxoLQVn5DwfZGgXqURCbf6c0D/ni5NRqe+Q+qZDQQQQX6o?=
 =?us-ascii?Q?uI9Tw+nrvqKNQzG5HG6/yfsF8PY4x3MyBNOd0nI11nfKiX6FouaWhVOJRe3w?=
 =?us-ascii?Q?6uElrMwsb7J3BLQgqj3FWgFVjvU3k3RUDu8Gn2tvZ24I77+TCvs7uXanP/Vr?=
 =?us-ascii?Q?VHuy1pR2q2pFQIz4AiyWWPRXfnzfsmlyA83YQtjJ2qaQH1lb4YnyTw2+pu1E?=
 =?us-ascii?Q?DqdH2iHXvGupPxb/q0uN3dByXHiKLK3YJuabsPcGoDECtzk171l/FEnEF1w0?=
 =?us-ascii?Q?3GQXryMpGAjc3HqEtTAwn6iLcJyheuy68Q6UOVik8Oq7TgaxiRUij45aGX5b?=
 =?us-ascii?Q?qvwCRjwYFVDdK0o1KiYcRqz3sdYeEExD425PDsnqhsatrv02tOzmaaVW+NlD?=
 =?us-ascii?Q?J9n7FE85EufEibLEOPPKTPN6yB//ZgyVUYTSJoQfIj3ft2JH9dgp27YFhcZ7?=
 =?us-ascii?Q?olwrDUqaqHdZQ5IwHB6d6vrSquazyKINe+eQO1Dg6cPu8oLsaAION/tzW+zY?=
 =?us-ascii?Q?gQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: edb725aa-cb04-4935-3749-08dcdde81688
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2024 05:00:05.9666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wgmon9j67EGE5QrylHNtzT+dtetWgxp/nvdc7BEX/Lzl5x3GKvyZFg3VSDjsP4e8ILKZcqQ9W6Wu3luXTDqqxeWkqbAcJIqCajUewoyqfmU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7277
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

Hello Suraj

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Thursday, September 26, 2024 10:04 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/vdsc: Add bpc check in
> intel_dsc_compute_params
>=20
> DSC does not support bpc under 8. Return an error if that happens to be t=
he
> case.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 8158e3702ed5..39bf8bee106c 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -297,6 +297,11 @@ int intel_dsc_compute_params(struct
> intel_crtc_state *pipe_config)
>=20
>  	vdsc_cfg->bits_per_pixel =3D pipe_config->dsc.compressed_bpp_x16;
>=20
> +	if (vdsc_cfg->bites_per_pixel < 8) {

Typo: bits_per_pixel

Any Bspec link for this limitation?

Regards

Chaitanya

> +		drm_dbg_kms(&dev_priv->drm, "DSC bpc requirements not
> met\n");
> +		return -EINVAL;
> +	}
> +
>  	/*
>  	 * According to DSC 1.2 specs in Section 4.1 if native_420 is set
>  	 * we need to double the current bpp.
> --
> 2.43.2

