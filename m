Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D359AC808
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 12:32:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9795610E7A8;
	Wed, 23 Oct 2024 10:32:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qg2CzM+D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2922B10E01F;
 Wed, 23 Oct 2024 10:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729679545; x=1761215545;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YHDLW3/t8Caq9GKGd1naQTSOfhskYMXCXkb98uz/kb0=;
 b=Qg2CzM+DU2UeNMezIMWXI292dL2CzRuMNYyz31VMtkv+Cx1VzQz5Hu3o
 SuwQ5rrAH848ryrprkPEPChtdLqrr53MoVjrwmn4X2YUwGxy/HUwite3U
 baXBOZoOrChMXbe63Uqh06VMaITfmimQO7JytJl4HUG7KplsyUjqvvzCX
 oDIA2qg15jeobkZlbelIoIlYsxCHpX6wmRkMQW6o67u/NqoZHX9uVxCod
 IQ8L1tf53aiDG//FCjkuY1ogiU0gNaCJz/UtIbzYaaDCXeJpog5do4jTu
 OhmtE66a26Wuv9MdCvYQ6UOe9fqDth1tVTRIVzJqfiuvvogZh3N5CRS4r w==;
X-CSE-ConnectionGUID: C0/wgRDcQAWz6eGw2jC2xA==
X-CSE-MsgGUID: 2opjtS4rRvu2WzTo87Zchg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46726978"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46726978"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 03:32:24 -0700
X-CSE-ConnectionGUID: G8KJRm/OR9u1rXReIdQ76w==
X-CSE-MsgGUID: tJKUkbQZQzSlWk6KL80KPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="80081109"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 03:32:25 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 03:32:24 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 03:32:24 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 03:32:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fHhDUQfnYdD60qptPlsXCAoIRs1cMOt/POHVCJEjsb4dCJSqfhoQzkFlw53lG/6JFkQ6vxYCneYNYdcdyfWIH4AD+MR8rvSSARN2eHfIXz5fxh9SL00AKKTDC59PeXlaszNgWVSpYiKb+xYOPVDN228oIxFSCGdr4sqqzTQ1qJX3PXwC8KXdFRSA0kBb1Xlf8HPZGByeD5JNOEqSslA7bhkfHeJduGANcQWXLgkFNSDEZkDgnh3bXqaCR9ufHwY+/69W/j/MKsRlmGTkMvSbKHyv3Oq815yZOgOPveQVd6iHUgs4DUcUgzURw+3DLcIboCKE1IKT2+Wo89ScqEZUvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6xxA25RGGZklNVCAFTYgaqhOztYZENoYLdbO8L/Z0GQ=;
 b=ZxjcieOZum5hnOX1QO3Nio9ZXdOm4VkM82XsGdw6nLxs+TYHtk8W0qKKr/M4kueS4Qx5zXxAT3lN5GvML+RS4DczjCIiJekxfK7afX7jAShyo2llcJRgbBh5lpZ0DQc5Gv8HK6Af6E9QVQ6SvCbmN9YoPq5A6i/9O0myWT1Ud+fIt2VMCv6VrWc2twwrUEVBbqT9H12W4xNMxb5nq50ovZS2L/pqkzQkEMj9v4PYkPrwJL7fM+UA4DPT0OcI4R9nl10SciqP6ada/wGxgrNHKTC4eptad8is5jE/R/zTzbnExX55pwdPvH4oLtAOOhVRT/lJJfga+ZNJduwhOti6yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA1PR11MB7176.namprd11.prod.outlook.com (2603:10b6:208:418::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8069.28; Wed, 23 Oct 2024 10:32:20 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.8093.018; Wed, 23 Oct 2024
 10:32:20 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH] drm/i915: Allow fastset for change in HDR infoframe
Thread-Topic: [PATCH] drm/i915: Allow fastset for change in HDR infoframe
Thread-Index: AQHbJQZ25BECWO5bXUStN7HvGB1w5LKUItTQ
Date: Wed, 23 Oct 2024 10:32:20 +0000
Message-ID: <DM4PR11MB6360894AEE18D780AEBE5930F44D2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20241023044122.3889137-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20241023044122.3889137-1-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: ville.syrjala@linux.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA1PR11MB7176:EE_
x-ms-office365-filtering-correlation-id: 865a2b1f-7a73-4dee-28ca-08dcf34df96f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?HkqabhW44i7EC2x0EICeU7Xx1b3F7pM6H1+NTWEYy/GQbsdkAgBHcViaea2Q?=
 =?us-ascii?Q?B6NE5L0lT6IZV80YG+aGBaYy12eK4IQgYmwnZZfaNqobb15tDlX5wURkKK1J?=
 =?us-ascii?Q?KCDKF+MxKR2rRDkoN+01V2itEKt66D+MK6lxnvgkVAGu6t5IbhWhkvflOQM/?=
 =?us-ascii?Q?5hronr9SZq1QTI88VgWRvr+dbU4IbEkufzr1SoUOmmbg2MtdHY4BoCK3awaC?=
 =?us-ascii?Q?rNFjUtv7eqNPuLMd8AquEnzIEQTEdjkFTpoXSZoAVCpqoPcNYLDVNN5dRQO4?=
 =?us-ascii?Q?Wg9pYeYbFAjl9y1pJyr9oKsBZU04aXXyGWIbZjqlkpJ2BmFGz5rV+NY5Oi3j?=
 =?us-ascii?Q?8T2onswo5peVw5RLabkHhUOBKs24litJeakxKO/XnwCltyA0c4VU6uy17Qo8?=
 =?us-ascii?Q?VLvVkAoGBnEM0zl6S07MrpVdijOgxAZYuxDrMDwQXXe+Cw1NxZ3/ed2jJTaE?=
 =?us-ascii?Q?/ffz2l1x683JuofkrF/zPXDn+LIp3bzgnMQ5q8XNn/E4XxDUOd4tZZZV2nX0?=
 =?us-ascii?Q?8SaDLw61krxgtkMyOA4BnboiYA/DwnVy1I+4ntzkCs6kS6vksFMk8InALWxQ?=
 =?us-ascii?Q?impohinr8BQkw+1fVNoU/FkbXX1mxvDjI6PNZ5TZZqIY7Sb0v2rHcQrUg7pX?=
 =?us-ascii?Q?SQUMpD8BMpP4r7Nsrb9HYVZ0kqG3vqCWJYPmlUs8HDSOcdOLmMgG1BBJ9AJ9?=
 =?us-ascii?Q?m9yGgFVtPJ/npQI23WY8lF01MLD3BiPj5o37Ddx50f8S1VRitEh+WJo3ND8T?=
 =?us-ascii?Q?h93x9tRtTRaJXqvs8Ub5y+1Hdq5C085IlIvcue+k0a0kGQtq2hhc5WXPG/sP?=
 =?us-ascii?Q?6SAcYt8YcYl0274Xp437aRU5mY2Vz5TKsIzQH5cT3QByCk4yHOIajnHjeyGp?=
 =?us-ascii?Q?W9vRrfTPT4TbZ1hW1KQDhnbu8luYCqwHkqX0itid9B7rUHSb+9vMkZb4eDZE?=
 =?us-ascii?Q?EZGt6ikYZNipwEAlvU7mGUbxrpatUlwDxcloSjWSNGt9mYzAtrq5gJqQp6rK?=
 =?us-ascii?Q?PATkcc3wL/j9by3mT1vXY0GD97lOMh70z5kXQubj8CPblffF5HYVcVeUO7en?=
 =?us-ascii?Q?Ew+uCa/7+HlwQ3uXbKzUoT4WZSpEobSS+kJDLyntaP3HX+5M5H4uB/OZRLZb?=
 =?us-ascii?Q?qaOEa3vulcY47TD44xNR4kXcdB7GtW/S6nVvkWLgT5lLd1r2MCLp5yZxcaYy?=
 =?us-ascii?Q?TTtW1VzpcDbjLvI9HgPeoMQm5bMURF1ff+Ulf5aYcnwGI1J6h0AxVnbrKCPO?=
 =?us-ascii?Q?fHXkisC/YTNcueJGjbW9ftBIB+EyqkQ8j2z3XPxUiuUWgDVPChK5G9Dc3osm?=
 =?us-ascii?Q?jcm1qgp+L2++hdNlPDEf64wL18tVt05sEBVlkpRRbRDcX7bBaYBciWssOLSM?=
 =?us-ascii?Q?a9glwEQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BuNrI6yPeXJtHYZVUNeV6aU6xeHkSpnoijAtC+TGrilLfkaVyDjr/9/O55JH?=
 =?us-ascii?Q?74pGKndjGeAJgDdCeP8SYxRTR6tOuyJHA+JtjjNXnf17YGGb7+zB8E18jScV?=
 =?us-ascii?Q?ThAIdpCRMsHyhGxvIa0qwB9+vwUp53j8WgNgDhG3bF4i72NyJlsdQhqlXCP0?=
 =?us-ascii?Q?NV86aIloHYey/od+tRJmZ7YHc4WBg01hbNzpDNFOFyi6SQfcEP1xEUdSLKXU?=
 =?us-ascii?Q?gEvESO7qSnRfIzdeu9vfJsPvYYkOwIHlmS0FRLktuHHstL0LCRLjjIBPfbJw?=
 =?us-ascii?Q?mzCvsfthB6i5gxUDhDxA4DWqzddTeLvsOrgDclTtOj6/+K9HIhiZjDvFhhzu?=
 =?us-ascii?Q?cz3wlKJ6pRfrtikoj7Kth0jmwnhI1PEqUoStSRx5HCDUrgR4gIBBwayPjQDn?=
 =?us-ascii?Q?oBwaPApvqcyvHI0MABuP1OoN8VWKqBACJt/GE5wF0tE6ffwJjOB+jj9wDu/j?=
 =?us-ascii?Q?8ntDRBGMRNcmPf8ZYUGb3t50GaCVGVDtyOZg6TnZlGv6zofZJZ45RhUWgc9s?=
 =?us-ascii?Q?OSOqHDiiEp0MFn3PhezIhjsuMSw1rgO2CSYS7p+jpTpf+iNXZfe/qfIa1tGl?=
 =?us-ascii?Q?AWP2N1lUssA91+yBemh3vtyjnx9CA1++4pK4mXkw7uK60lgKB0Qg0C0895b1?=
 =?us-ascii?Q?VQjGu4+0wlpa24Trs6WfeSEC8e75H+9sGVwloL/WffLVUHjXgFwlnXTHKqji?=
 =?us-ascii?Q?r9d/KkmRb/kEBpiBdLT5Z1F85YBBwTJWd8uSOwCux5sd92Dr7NaRHmin2iDC?=
 =?us-ascii?Q?H6MenNik3WUiPoTcv8vPVPfTEh6P9x0nn3a9UScf4A4M/91wlItsBuL/qmJR?=
 =?us-ascii?Q?eJHqkVYD+4hln6HGStvqFYZp37ZsH9HGQU2+HgDKgSizrfDtjJL/JhaVVZjA?=
 =?us-ascii?Q?E1m2DkP+QHkx2kJcZ9iJ/pr0GFCHllDzOHGVB99PeIz7gCdgJ+4/zuBlbEfk?=
 =?us-ascii?Q?oz8+lcKSQyIrIDz47YGvLTp/pKFfcd8zwAM+ChUmwEfpGgkyRRC23aVQRgHN?=
 =?us-ascii?Q?rzDle3U0vD3az6Sycmm4g9dGHLzAgDEF6JtepzMkmVcuBVYiSfAV9vE+6X6Y?=
 =?us-ascii?Q?ZIaklsD7iS+SL51Eyn7bjc4Pr45a2sM8rjOBjoNzwLP3rBOJPSBw3nEkKQgf?=
 =?us-ascii?Q?s91gQl9oSmHVJH05twEheClInmYghh/iveBs8qGq8dgkz7A8GGfzdqtGTM12?=
 =?us-ascii?Q?Yax/F0KH7fX9bVRjXgxYbtvbxmS5WPEIXiZ3tUfxOxMdjiyAX993kCZgICmO?=
 =?us-ascii?Q?GKYpu6i/UYD6skwkEdKizdaP/Q10gj0bH50iSiOX2rnCNHkoF/Q+rhIA3stx?=
 =?us-ascii?Q?BLt7cphsMC6mOn/6qeWMAn5KYda1xARgN0kVqcIXuzBXwfdxELTtfp8cl9oG?=
 =?us-ascii?Q?Pn/V6JQvi2etuMXldavw4hIRUVGnAi2di5P73fBHDbNiTUdjl9C102YfZBWJ?=
 =?us-ascii?Q?V5fwTtWbgWZssqIN3vJV6RWwvuD3pAlTwnvUlH9fT6sMia/FPCfosIWuGP+D?=
 =?us-ascii?Q?osC0NTgokvlIRSB8p9e6MttmggLjXBQBacDz1MO/b09Sh6FaRC4gvRoYrlYP?=
 =?us-ascii?Q?Nx4m7Su/vC48kGMKSLinfxzB0HyAv8wCPo19UtQ/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 865a2b1f-7a73-4dee-28ca-08dcf34df96f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2024 10:32:20.1986 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2qPYCMEPKwAQKuqAVcbpIgsPTGtSPA/XMJT1FXRn+dl7vjEMrhBOOY3Ew7YQIHKvssdiJQxCFLBBTYyfPk55GQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7176
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
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Wednesday, October 23, 2024 10:11 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; jani.nikula@linux.intel.com;
> ville.syrjala@linux.intel.com
> Subject: [PATCH] drm/i915: Allow fastset for change in HDR infoframe
>=20
> Changes in Dynamic Range and Mastering infoframe should not trigger a ful=
l
> modeset. Therefore, allow fastset. DP SDP programming is already hooked u=
p in
> the fastset flow but HDMI AVI infoframe update is not, add it.
> Any other infoframe that can be fastset should be added to the helper
> intel_hdmi_fastset_infoframes().
>=20
> v3:
>  - Create a wrapper intel_ddi_update_pipe_hdmi to stick to
>    uniform naming (Jani)
>  - Do not disable HDMI AVI infoframe if already disabled (Uma)
>=20
> v2:
>  - Update HDMI AVI infoframe during fastset.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

@ville.syrjala@linux.intel.com Can you also check once and suggest if this =
is the right way to go.

Regards,
Uma Shankar

> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 11 +++++++++
>  drivers/gpu/drm/i915/display/intel_display.c |  3 ++-
>  drivers/gpu/drm/i915/display/intel_hdmi.c    | 24 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_hdmi.h    |  3 +++
>  4 files changed, 40 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index ff4c633c8546..0935f06a6a33 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3478,6 +3478,13 @@ static void intel_ddi_update_pipe_dp(struct
> intel_atomic_state *state,
>  	drm_connector_update_privacy_screen(conn_state);
>  }
>=20
> +static void intel_ddi_update_pipe_hdmi(struct intel_encoder *encoder,
> +				       const struct intel_crtc_state *crtc_state,
> +				       const struct drm_connector_state
> *conn_state) {
> +	intel_hdmi_fastset_infoframes(encoder, crtc_state, conn_state); }
> +
>  void intel_ddi_update_pipe(struct intel_atomic_state *state,
>  			   struct intel_encoder *encoder,
>  			   const struct intel_crtc_state *crtc_state, @@ -3489,6
> +3496,10 @@ void intel_ddi_update_pipe(struct intel_atomic_state *state,
>  		intel_ddi_update_pipe_dp(state, encoder, crtc_state,
>  					 conn_state);
>=20
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +		intel_ddi_update_pipe_hdmi(encoder, crtc_state,
> +					   conn_state);
> +
>  	intel_hdcp_update_pipe(state, encoder, crtc_state, conn_state);  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index ef1436146325..af5062456750 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5701,7 +5701,8 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
>  	PIPE_CONF_CHECK_INFOFRAME(avi);
>  	PIPE_CONF_CHECK_INFOFRAME(spd);
>  	PIPE_CONF_CHECK_INFOFRAME(hdmi);
> -	PIPE_CONF_CHECK_INFOFRAME(drm);
> +	if (!fastset)
> +		PIPE_CONF_CHECK_INFOFRAME(drm);
>  	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
>  	PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 72ac910bf6ec..9487210dae7e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1211,6 +1211,30 @@ static void vlv_set_infoframes(struct intel_encode=
r
> *encoder,
>  			      &crtc_state->infoframes.hdmi);  }
>=20
> +void intel_hdmi_fastset_infoframes(struct intel_encoder *encoder,
> +				   const struct intel_crtc_state *crtc_state,
> +				   const struct drm_connector_state
> *conn_state) {
> +	struct intel_display *display =3D to_intel_display(encoder);
> +	i915_reg_t reg =3D HSW_TVIDEO_DIP_CTL(display,
> +					    crtc_state->cpu_transcoder);
> +	u32 val =3D intel_de_read(display, reg);
> +
> +	if ((crtc_state->infoframes.enable &
> +		intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_DRM))
> =3D=3D 0 &&
> +			(val & VIDEO_DIP_ENABLE_DRM_GLK) =3D=3D 0)
> +		return;
> +
> +	val &=3D ~(VIDEO_DIP_ENABLE_DRM_GLK);
> +
> +	intel_de_write(display, reg, val);
> +	intel_de_posting_read(display, reg);
> +
> +	intel_write_infoframe(encoder, crtc_state,
> +			      HDMI_INFOFRAME_TYPE_DRM,
> +			      &crtc_state->infoframes.drm);
> +}
> +
>  static void hsw_set_infoframes(struct intel_encoder *encoder,
>  			       bool enable,
>  			       const struct intel_crtc_state *crtc_state, diff --git
> a/drivers/gpu/drm/i915/display/intel_hdmi.h
> b/drivers/gpu/drm/i915/display/intel_hdmi.h
> index 9b97623665c5..466f48df8a74 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
> @@ -42,6 +42,9 @@ u32 intel_hdmi_infoframes_enabled(struct intel_encoder
> *encoder,
>  u32 intel_hdmi_infoframe_enable(unsigned int type);  void
> intel_hdmi_read_gcp_infoframe(struct intel_encoder *encoder,
>  				   struct intel_crtc_state *crtc_state);
> +void intel_hdmi_fastset_infoframes(struct intel_encoder *encoder,
> +				   const struct intel_crtc_state *crtc_state,
> +				   const struct drm_connector_state
> *conn_state);
>  void intel_read_infoframe(struct intel_encoder *encoder,
>  			  const struct intel_crtc_state *crtc_state,
>  			  enum hdmi_infoframe_type type,
> --
> 2.25.1

