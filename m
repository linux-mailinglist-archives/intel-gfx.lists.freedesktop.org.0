Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52961AA41D1
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Apr 2025 06:25:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C5BF10E120;
	Wed, 30 Apr 2025 04:25:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XCnYppwA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4282A10E120;
 Wed, 30 Apr 2025 04:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745987110; x=1777523110;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=zyU9MIkeJwSZNaf9WXTW2sCDSHoAus9YVuqsTub5U70=;
 b=XCnYppwADZWm71YyeX+Qu7BiqfxTCbJvaBtitNtuNs73Biji6xEZJPCZ
 2qf/Xev1/7giX/Hoz5r9WMeW0KVPfTIanObCs9KwJ/uQku4BscBejfTX0
 86ULZgl4j9JNuW1a2ax3ATUa85h1IWljGolKM1bHoBGekG+AQ43atw5Qi
 KvGTQ/eWaT3yUMSFmBUMKdYQIyL47JCzWXjfzM9rHVIyc3CJ2xilj6eEA
 3e0B5cfReea44BlXbcot6W4dOycefR+cBC6bWqMi6lqu5X44XuN7WWpTb
 ivJSYDhvilKiEVrkxaiuLSJWra4JJta45UAu9oj8bVFM2pq2zkU5dsDQC A==;
X-CSE-ConnectionGUID: bYJBEZ8MQoaHL6abIKaReQ==
X-CSE-MsgGUID: UMYS86akSfCW5LlEWNIXMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11418"; a="46749528"
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="46749528"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 21:25:09 -0700
X-CSE-ConnectionGUID: hWRp+YT2Q6CT2zoFQz93eg==
X-CSE-MsgGUID: jcbsWYt3SyOe/RhanaE4ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="138986411"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 21:25:10 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 29 Apr 2025 21:25:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 29 Apr 2025 21:25:09 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 29 Apr 2025 21:25:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Srm2RDG/iXAEBMpSA0pQJN0lLA8ePAnqkiLPszCGO8NWBjkjybmmQayQQ++9f1qnMTrehcK22pwrBn1kWxgLLpF+WJuhhNrusOwSJ7RHngN3SbfllySo/02Mv6luXRyHAep32qnxT5otTvCRAkj8EGjyXz0pZL4FGhVaFg3azfWCHmjv5dx7C6Ay+GlywNhqY2VfQoiUqQfY53BQw3+8dEdon4wUXhBqyKfdj8fzVU8aYQvb1lUQuCao7ZzjKlDTreOy95+meAIzTm3RkCh+G9qVhs72WOy7wqaRKjg742m2TrK3CdfDWyUChtx8OucyC+Z9DnX8GrY74kJqsRll9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d44YYmwQkIcyasQIoYKP/lodhL1O1XYDtYOrUCTrwYA=;
 b=T5PikeBJ7ExWh1W8EVz5RLASXFTcXG2p8u2/hxeZNCTRuzgPr8Z7+LTe0cV2hZJWvPi0pXbUcMjc1tXBQ08fMajD20124oRk9iHQoOKWcNTavFhet5UFvTyVsTdvYYfWmXxsdBUY8R+6e8jCdEx+ZtruiknAJtHOOjPSW0581KRA7jHbG45YcmQVSq1rHNHqO+O3lEDwHLUWdOspGezhjQ3mV2foVC6A8k6X9zF8i+jN6DWTn5yF0LbZZ9EeC4M2xn6O8TK/2KYU66PJ4wgmr5OXYTF3u3Vppny5JSCgb0u5I5rdg9JtAnHoU1+gDGbeCTUO2eUJX42pfEyZrS3wSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY8PR11MB7337.namprd11.prod.outlook.com (2603:10b6:930:9d::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.19; Wed, 30 Apr
 2025 04:25:06 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8655.038; Wed, 30 Apr 2025
 04:25:06 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 07/10] drm/i915/hdcp: switch the HDCP GSC message
 interface from u8* to void*
Thread-Topic: [PATCH 07/10] drm/i915/hdcp: switch the HDCP GSC message
 interface from u8* to void*
Thread-Index: AQHbtVPVFE/zQTfmW0+PfAp9y3MxIbO7pONg
Date: Wed, 30 Apr 2025 04:25:05 +0000
Message-ID: <SN7PR11MB6750728AE86187CEA89F8309E3832@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1745524803.git.jani.nikula@intel.com>
 <ea005adb713e85b797d83204c80de0a2a8e5ab47.1745524803.git.jani.nikula@intel.com>
In-Reply-To: <ea005adb713e85b797d83204c80de0a2a8e5ab47.1745524803.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY8PR11MB7337:EE_
x-ms-office365-filtering-correlation-id: 40d60335-1ee1-4604-024e-08dd879efc16
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ndxAln8NL3rZ3UCh9T6oP6yZfrkx6mvwee3ib5FDNJdZYN+eqt4b0b3RNwyY?=
 =?us-ascii?Q?gyMIJvm5zC3++oGSxUS4Y93ff3N1gFRIqRti+fDoEu9NJTnB6mjML7LhSKed?=
 =?us-ascii?Q?WWIFZ554O5Xl/ZRLThQsGlhiu9LFwjdt8P7U5sXF5CDRf4hbGdpdac1/puMv?=
 =?us-ascii?Q?STjCQ0RpuBHBigNmzSp2tliifUjsmYq2pmIUfKFZyR6iJc8DVZZNnIzjOfKb?=
 =?us-ascii?Q?AvvQXxduhgeOc5hZxkFo9e1LWZWfx1J49W72BavGsU1zgqrfdYi9AaWL8iMj?=
 =?us-ascii?Q?XvoeMrG6XG9MjISG6vOvcSmmyX77tui25I1NHY+or/Oa+ubem/q1Gtp4sc5d?=
 =?us-ascii?Q?Ax1KGSuVnnHcfurxdbb1YrbJnJxXKL3tbB84inFuFyi0ys8BoSoP49N6ROGt?=
 =?us-ascii?Q?ExRBIYJgbI05Br1jPtNRP0V1/hiiSP3MIhWqUR806Nw/tVvMi/LK3FZaiplL?=
 =?us-ascii?Q?hLiZdsS1g/BC/uNgLr2VZOvdpu+e9Nxljo/YgcNcYEED8ZZQenCDoxRNpqzm?=
 =?us-ascii?Q?FftkFB2AA8VVjrg1UFiBkzcXhhLEnX0nOAGlLQPzDQC8ycNURcfMDc410vrz?=
 =?us-ascii?Q?UxcGsC+MTRjVzeiE1NJfRvDWcKJyI+HS6U7/MWm5uIOVzB2jtzJWNSR6EhWP?=
 =?us-ascii?Q?QwXxxbkbrg3HIxT3+3594H1q7cWHJ9YUOD0Q/OyKgygqWcERc3v/dodYj/KS?=
 =?us-ascii?Q?/K73KFKaW3a8+VCPvTzTwWQ0+G3F79+2yNJxceIpNvn/xbgHYnCt/a97IyMH?=
 =?us-ascii?Q?2hXF+sUDhVXqMdIx5lRZvkTxNHfhPDb9fKf+1fRcCAwCOA2o1OOaXnshlwkc?=
 =?us-ascii?Q?rghJ7b9jDOnpn7G+eh2F/qRIQ/gP1CJUkzOlGX2GU/byN6Swiz/c1w1LXTg6?=
 =?us-ascii?Q?xDwUHcbIJZMkDQrI3xjV3nSLWCTXMM0NwSmPycfIe5uE1I2ZAMWEOYXTpyo2?=
 =?us-ascii?Q?b3xhCXZ1l3kWIlqu3PzaFPRk3VArg/TCuW/pnhnojPx15J6hqQ1HLI5E9x3J?=
 =?us-ascii?Q?S4GuxLn2beiPV/fGsPhps2PnHefwwNMLNLTDv8aVtgT+oiYXuIIUUAPEzyiI?=
 =?us-ascii?Q?FrWWTriMMQs5nD/rSxu8+ko03fB7PGEnjvZCZp/KBc1zqdNbmdChWRNMD77l?=
 =?us-ascii?Q?1mFHCG5QrNIn/Gk8vlfhcLuQL52VGa8d78SYotDJ2I/u4zJENpWG4rBjmQWs?=
 =?us-ascii?Q?EP/GqSLhpoji3XLW390nL3whuizA9ThecrUJ7uxNl2yDy9Ycqibe8nj6wBdo?=
 =?us-ascii?Q?hcU70/FMLhMMK1o0TYllHaxKaH8YbcMFHAOBG2pl1lHCxmv4bxHxKvA2623S?=
 =?us-ascii?Q?IsynQdZZ8Wio54PBUSv4mDItzsmxiY2L5YxJ9WK9pkAumsD9s7WPavdamb+o?=
 =?us-ascii?Q?GHBe44UcsEfqwpWnre9rtAb4vCyXs0AwZAJzkXSsfMGi7bGLA3RY0dNrOJxB?=
 =?us-ascii?Q?kICcYxVm8czizWySLN7gszNDOPGETySLyfQy8NDVDe+CtqVPn+7tOBvAsIah?=
 =?us-ascii?Q?ELXpzXTClI+2Ksw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bar9kNQkSSfVSy8KBmKgTeF87/h33JhLkm9WEJlbuBMbQEkjVAhNjoNupw+d?=
 =?us-ascii?Q?Pn5Vy+8tAIwgolpQYzezZ0sJ0ja/DKBSWChJj4lL4xbY+usi+vZSVzoACN8f?=
 =?us-ascii?Q?qsY57ux9SfK6pKE7VhR3tLqs6/UhYqJBMMe3DZeleyNGB4SGFGLLeyx8u9Wg?=
 =?us-ascii?Q?pDcy5rspMn+zMU+Pdh5bdTcbBrb+//j1DOrxHrqDJRxVAyWTMnVy9s2w3okh?=
 =?us-ascii?Q?bS6cUv5Xwk46FW0grCKGnJTe2FloQedXC1g5+Dv+kifX/hGUO6Oz7VjzzAKS?=
 =?us-ascii?Q?P8bh8QrSbF9hLTByLUIHmaeovjY0A+GvTJQ4DEyRTuhuS84eEwwXNUpHYr2K?=
 =?us-ascii?Q?frPq8HvMZUqHL1HaVeW1AbPP4W+JwYIuTjnpqmfR3CvPh4yiEQ/6eCLdzKCa?=
 =?us-ascii?Q?531RX8KuXHM/Dbstrtfh/L/XNKK9CdApxZWIbVWRt3Csd5IpYc/aYCt+KLLb?=
 =?us-ascii?Q?uGK67ErAzLx7zmqJrKbR/IpvAOHEnI4nk7hxQyhLXPxOY3nYpSYkstk1eUgk?=
 =?us-ascii?Q?BZFTaiEGvLPtQrbdf/as4Es7MRY+r9D4y9qm9mAeqrNtGsgU11vTlExKKvau?=
 =?us-ascii?Q?K/g6T6eoTYlAHrm7dqd1egB1vTLkejzSl6PrTqHijm2gliOPyaATSFOoljl1?=
 =?us-ascii?Q?tUvxb9T2wMYuOWVKBvZQSD6+dhendWCc8DztlGpNczqvG2y+Tgl4aie1ypUL?=
 =?us-ascii?Q?MJXUJBlZL/viX7aX0zi9tHqEREo8bHHUR+bhIB/qSoLotXlTlSfwj2hyK/OM?=
 =?us-ascii?Q?0sVhbXlhAQlzLAIl0099pfm6vzw+nBqmgKy2+7dX7Xutf3fZCdaYta6uh5Vf?=
 =?us-ascii?Q?vvDcVgk04JI50P/mhm7Qyc5tPZ6z0R+kXH1ryJ0Y7XNSQggOFK8h8LIjZJTH?=
 =?us-ascii?Q?FRVNWCJhmWVLUD3ZFTxtVztNs8G8qR+KFo8hb1X0TQcEvp5sVVUjsqaYNUtW?=
 =?us-ascii?Q?EADzC1dpzCQIFvzOYh7HFYp1yerzP8JzYIfxFaOixxeei5l7C13QjxqKNLzm?=
 =?us-ascii?Q?9YznliUr5NEM48msqmcXw7/8GgWWojCPRpCipR2tWOnc5CfghdOIevQ8y6zk?=
 =?us-ascii?Q?GM4HhKPT7MQug4CCW+c1VuAiNHO+PYUAn+IYNMc8Q44ReZey/H5mK4icLuhI?=
 =?us-ascii?Q?8n0fuYaKt38NVAgY9Lhl9Bu8OKP/IW4au90bkOpNdav6EKuCYilxCPl9ds9/?=
 =?us-ascii?Q?koE11GlRMg1gRN2WiE7NB3ix994LRQmFnKROmzKOJeag0WYNjMvnGVYS08kC?=
 =?us-ascii?Q?bLBra7ylIaGehIaEZqNoh4b3iMGb+mFXc1GnS4F7VCvao5wVnefKi/7zRQHM?=
 =?us-ascii?Q?AigB4TF4vL03ULcmCfXtqFBejHxVpnZjWCW/qpaKAuOtVAZBw/LRsgAA1zD0?=
 =?us-ascii?Q?eewyKsaqvNzXTqkfj+q47nAjJmHtyHa0Tq4Q5xY4G8CTNIkrrZsoV459/MMh?=
 =?us-ascii?Q?ii/B86SgVM0O3nw1TVHv/AouE+ua4JEDUD7J0ei8ziprNMeJQQEf48kRSpJY?=
 =?us-ascii?Q?d10B8BQkH6l1HWiWo0gsTecL20DlUIES+vn1f850uD5o6kG7fkoWeQCKRWc4?=
 =?us-ascii?Q?jwAED/mal24DmQDaefml719wllxAIomRwneUwL/b?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40d60335-1ee1-4604-024e-08dd879efc16
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2025 04:25:05.9724 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uJUkUY9iClwEa9W8MgyzgO9m42UKiuLYutoXDhdMqduH3xL38SiJm4vZDG9f9jbF3C2bS2hiOkRDQEMgBpeEdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7337
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Friday, April 25, 2025 1:32 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 07/10] drm/i915/hdcp: switch the HDCP GSC message interfa=
ce
> from u8* to void*
>=20
> The in/out buffers are just opaque data, and don't need to be considered =
u8*.
> Switching to void* lets us drop a ton of unnecessary casts.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c |  4 +-
> drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  4 +-
> .../drm/i915/display/intel_hdcp_gsc_message.c | 44 +++++++++----------
>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      |  4 +-
>  4 files changed, 28 insertions(+), 28 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 77c4df6c6181..1ea2c7204444 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -174,8 +174,8 @@ static int intel_gsc_send_sync(struct drm_i915_privat=
e
> *i915,
>   * will follow
>   */
>  ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context *gsc_conte=
xt,
> -				u8 *msg_in, size_t msg_in_len,
> -				u8 *msg_out, size_t msg_out_len)
> +				void *msg_in, size_t msg_in_len,
> +				void *msg_out, size_t msg_out_len)
>  {
>  	struct drm_i915_private *i915 =3D gsc_context->i915;
>  	struct intel_gt *gt =3D i915->media_gt;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> index 7133e631a938..fbef56db54f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> @@ -14,8 +14,8 @@ struct intel_hdcp_gsc_context;
>=20
>  bool intel_hdcp_gsc_cs_required(struct intel_display *display);  ssize_t
> intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context *gsc_context,
> -				u8 *msg_in, size_t msg_in_len,
> -				u8 *msg_out, size_t msg_out_len);
> +				void *msg_in, size_t msg_in_len,
> +				void *msg_out, size_t msg_out_len);
>  bool intel_hdcp_gsc_check_status(struct intel_display *display);
>=20
>  struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct
> intel_display *display); diff --git
> a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> index d87f61d773ca..4226e8705d2b 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> @@ -44,9 +44,9 @@ intel_hdcp_gsc_initiate_session(struct device *dev, str=
uct
> hdcp_port_data *data,
>  	session_init_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
>  	session_init_in.protocol =3D data->protocol;
>=20
> -	byte =3D intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&session_init_in,
> +	byte =3D intel_hdcp_gsc_msg_send(gsc_context, &session_init_in,
>  				       sizeof(session_init_in),
> -				       (u8 *)&session_init_out,
> +				       &session_init_out,
>  				       sizeof(session_init_out));
>  	if (byte < 0) {
>  		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed.
> %zd\n", byte); @@ -106,9 +106,9 @@
> intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct device *dev,
>  	memcpy(verify_rxcert_in.r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN);
>  	memcpy(verify_rxcert_in.rx_caps, rx_cert->rx_caps,
> HDCP_2_2_RXCAPS_LEN);
>=20
> -	byte =3D intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&verify_rxcert_in,
> +	byte =3D intel_hdcp_gsc_msg_send(gsc_context, &verify_rxcert_in,
>  				       sizeof(verify_rxcert_in),
> -				       (u8 *)&verify_rxcert_out,
> +				       &verify_rxcert_out,
>  				       sizeof(verify_rxcert_out));
>  	if (byte < 0) {
>  		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed:
> %zd\n", byte); @@ -169,9 +169,9 @@ intel_hdcp_gsc_verify_hprime(struct
> device *dev, struct hdcp_port_data *data,
>  	memcpy(send_hprime_in.h_prime, rx_hprime->h_prime,
>  	       HDCP_2_2_H_PRIME_LEN);
>=20
> -	byte =3D intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&send_hprime_in,
> +	byte =3D intel_hdcp_gsc_msg_send(gsc_context, &send_hprime_in,
>  				       sizeof(send_hprime_in),
> -				       (u8 *)&send_hprime_out,
> +				       &send_hprime_out,
>  				       sizeof(send_hprime_out));
>  	if (byte < 0) {
>  		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed.
> %zd\n", byte); @@ -220,9 +220,9 @@ intel_hdcp_gsc_store_pairing_info(stru=
ct
> device *dev, struct hdcp_port_data *dat
>  	memcpy(pairing_info_in.e_kh_km, pairing_info->e_kh_km,
>  	       HDCP_2_2_E_KH_KM_LEN);
>=20
> -	byte =3D intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&pairing_info_in,
> +	byte =3D intel_hdcp_gsc_msg_send(gsc_context, &pairing_info_in,
>  				       sizeof(pairing_info_in),
> -				       (u8 *)&pairing_info_out,
> +				       &pairing_info_out,
>  				       sizeof(pairing_info_out));
>  	if (byte < 0) {
>  		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed.
> %zd\n", byte); @@ -269,8 +269,8 @@
> intel_hdcp_gsc_initiate_locality_check(struct device *dev,
>  	lc_init_in.port.physical_port =3D (u8)data->hdcp_ddi;
>  	lc_init_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
>=20
> -	byte =3D intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&lc_init_in,
> sizeof(lc_init_in),
> -				       (u8 *)&lc_init_out, sizeof(lc_init_out));
> +	byte =3D intel_hdcp_gsc_msg_send(gsc_context, &lc_init_in,
> sizeof(lc_init_in),
> +				       &lc_init_out, sizeof(lc_init_out));
>  	if (byte < 0) {
>  		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed.
> %zd\n", byte);
>  		return byte;
> @@ -321,9 +321,9 @@ intel_hdcp_gsc_verify_lprime(struct device *dev, stru=
ct
> hdcp_port_data *data,
>  	memcpy(verify_lprime_in.l_prime, rx_lprime->l_prime,
>  	       HDCP_2_2_L_PRIME_LEN);
>=20
> -	byte =3D intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&verify_lprime_in,
> +	byte =3D intel_hdcp_gsc_msg_send(gsc_context, &verify_lprime_in,
>  				       sizeof(verify_lprime_in),
> -				       (u8 *)&verify_lprime_out,
> +				       &verify_lprime_out,
>  				       sizeof(verify_lprime_out));
>  	if (byte < 0) {
>  		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed.
> %zd\n", byte); @@ -370,8 +370,8 @@ intel_hdcp_gsc_get_session_key(struct
> device *dev,
>  	get_skey_in.port.physical_port =3D (u8)data->hdcp_ddi;
>  	get_skey_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
>=20
> -	byte =3D intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&get_skey_in,
> sizeof(get_skey_in),
> -				       (u8 *)&get_skey_out,
> sizeof(get_skey_out));
> +	byte =3D intel_hdcp_gsc_msg_send(gsc_context, &get_skey_in,
> sizeof(get_skey_in),
> +				       &get_skey_out, sizeof(get_skey_out));
>  	if (byte < 0) {
>  		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed.
> %zd\n", byte);
>  		return byte;
> @@ -434,9 +434,9 @@
> intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,
>  	memcpy(verify_repeater_in.receiver_ids, rep_topology->receiver_ids,
>  	       HDCP_2_2_RECEIVER_IDS_MAX_LEN);
>=20
> -	byte =3D intel_hdcp_gsc_msg_send(gsc_context, (u8
> *)&verify_repeater_in,
> +	byte =3D intel_hdcp_gsc_msg_send(gsc_context, &verify_repeater_in,
>  				       sizeof(verify_repeater_in),
> -				       (u8 *)&verify_repeater_out,
> +				       &verify_repeater_out,
>  				       sizeof(verify_repeater_out));
>  	if (byte < 0) {
>  		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed.
> %zd\n", byte); @@ -504,8 +504,8 @@ intel_hdcp_gsc_verify_mprime(struct
> device *dev,
>=20
>  	verify_mprime_in->k =3D cpu_to_be16(data->k);
>=20
> -	byte =3D intel_hdcp_gsc_msg_send(gsc_context, (u8 *)verify_mprime_in,
> cmd_size,
> -				       (u8 *)&verify_mprime_out,
> +	byte =3D intel_hdcp_gsc_msg_send(gsc_context, verify_mprime_in,
> cmd_size,
> +				       &verify_mprime_out,
>  				       sizeof(verify_mprime_out));
>  	kfree(verify_mprime_in);
>  	if (byte < 0) {
> @@ -552,9 +552,9 @@ static int intel_hdcp_gsc_enable_authentication(struc=
t
> device *dev,
>  	enable_auth_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
>  	enable_auth_in.stream_type =3D data->streams[0].stream_type;
>=20
> -	byte =3D intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&enable_auth_in,
> +	byte =3D intel_hdcp_gsc_msg_send(gsc_context, &enable_auth_in,
>  				       sizeof(enable_auth_in),
> -				       (u8 *)&enable_auth_out,
> +				       &enable_auth_out,
>  				       sizeof(enable_auth_out));
>  	if (byte < 0) {
>  		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed.
> %zd\n", byte); @@ -599,9 +599,9 @@ intel_hdcp_gsc_close_session(struct
> device *dev, struct hdcp_port_data *data)
>  	session_close_in.port.physical_port =3D (u8)data->hdcp_ddi;
>  	session_close_in.port.attached_transcoder =3D (u8)data-
> >hdcp_transcoder;
>=20
> -	byte =3D intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&session_close_in,
> +	byte =3D intel_hdcp_gsc_msg_send(gsc_context, &session_close_in,
>  				       sizeof(session_close_in),
> -				       (u8 *)&session_close_out,
> +				       &session_close_out,
>  				       sizeof(session_close_out));
>  	if (byte < 0) {
>  		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed.
> %zd\n", byte); diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index 7b8237a5aeee..7712d53627f0 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -161,8 +161,8 @@ static int xe_gsc_send_sync(struct xe_device *xe,  }
>=20
>  ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context *gsc_conte=
xt,
> -				u8 *msg_in, size_t msg_in_len,
> -				u8 *msg_out, size_t msg_out_len)
> +				void *msg_in, size_t msg_in_len,
> +				void *msg_out, size_t msg_out_len)
>  {
>  	struct xe_device *xe =3D gsc_context->xe;
>  	const size_t max_msg_size =3D PAGE_SIZE - HDCP_GSC_HEADER_SIZE;
> --
> 2.39.5

