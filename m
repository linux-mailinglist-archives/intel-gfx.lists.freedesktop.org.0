Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28479A086EA
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 06:49:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FFAC10EFBF;
	Fri, 10 Jan 2025 05:49:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E+o43UVP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31F5F10EFBC;
 Fri, 10 Jan 2025 05:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736488143; x=1768024143;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3CU0vUqjX4VQkehPtaEusu8kd2c+naG+L5W7xoJS+ow=;
 b=E+o43UVPEG1O/SV5BZy5xgZNYTIfoey5B+evWsNDfl43QaxH3Ui3mPuf
 QPiHcQe+pmaJJzea2cUdJFtyXnvnW1dbt44b1DBuil7CpKjNYPMTOVGUC
 wfNKh7pjee7IvLADkoN8F75Kqgx8ag2opkvlycnVLsMbzPKUec9XPWsJs
 IZUprYB9SKvdq14sAcchr3iwz/Phgra+lLV24g5LuVfiukeZXxcWDkuNS
 EnAm7xjmvyftMytnrF++DBJPn17SUaezulEDz+wYDdkiMK+/b94wGr9M4
 fT9N3LFap9AAKpkdG9CPs4TMxs51nwzxzYaN0WkiSYPPf9o4sTzLo0sZg A==;
X-CSE-ConnectionGUID: Mv00JiKwQJaD2mmGYJmMsw==
X-CSE-MsgGUID: nSpYhDv0TZK/VlDDuOJJfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="37003279"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="37003279"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 21:49:03 -0800
X-CSE-ConnectionGUID: t25PLIIITQOUybw4IvCUiA==
X-CSE-MsgGUID: NYJxry/tRLee9LTDXFgUxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="104161935"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2025 21:49:03 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 9 Jan 2025 21:49:02 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 9 Jan 2025 21:49:02 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 9 Jan 2025 21:49:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SWZsY17B4NemOO9wkxTyrY4fhJGgCyoYMy3OXjFBb5cchU2SWsVcTkdcdnBipCKBXnnLDbFabZBSvfdsQZmW7tRCtS7UuD4WO1YEUWbSZDfxNb8TI5LQRFo06p3G5JRdTtVVdUk0h/qkYNIviuGzjqn7SyHTyE2F05ZY2fh7mPDhZYSMuO+mrkzkzz9Pv/PU1K3/8OSaGOHNLLkmHlZyRd8/1Wmrw9w21E6w3X/EsjXWHhBIgm4baAl+1idl4d20K6QUHARdEWG22num3FjBwVvtGbJ0IDoRxj01emiunEiD066k9Hj5igmupnqs809H7oO1AR7qdxWkpch45/RlpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=boOMJ4VuyqPE0TA0gZWVMcuWMULuo4vD0SSB8D6xH88=;
 b=vKfp/nqz24RPNzicoPPFG40mGui/f4/rucLpRVcEtmV3bv9vpUnPv899gN98vyMi5JIDazoK1pEjmrf74UjbaJjEIoZkOcwLExiK+Sq6uaynsTL1u+F6ZErR5AqWKfnANYxcT1F2kpUwEMJhxkutBoAbVtGlPqXL4rfJ234GKndoNUgWZqUAEIywzh01t755dEiRkfSP2cVm+UcgLNIAIpPhvXs0se+bZ+cP2+/gy3cUP4Jp6PVZF9cJdCHs5C6cwacYwMJQwjMOWW7F3fXYMHBVhVXqhVnh0Ew/tccdg3iTR53OgQLBuFZj7bf6m5dklq5O6RhO106QCT+gsl1zLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BN9PR11MB5257.namprd11.prod.outlook.com (2603:10b6:408:132::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.12; Fri, 10 Jan
 2025 05:48:59 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8335.011; Fri, 10 Jan 2025
 05:48:59 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH 2/5] drm/i915/snps_phy: Use HDMI PLL algorithm for DG2
Thread-Topic: [PATCH 2/5] drm/i915/snps_phy: Use HDMI PLL algorithm for DG2
Thread-Index: AQHa7S+EUiErEORD7kGCBvNZ+ysWNbMQbC6w
Date: Fri, 10 Jan 2025 05:48:59 +0000
Message-ID: <SN7PR11MB6750BE8DB6B0B5402A711DBDE31C2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240813031941.3553574-1-ankit.k.nautiyal@intel.com>
 <20240813031941.3553574-3-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240813031941.3553574-3-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BN9PR11MB5257:EE_
x-ms-office365-filtering-correlation-id: dfb7dff5-1a43-4146-c996-08dd313a7b07
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?VXYDmJh95X2oYy08ZR9QnJnftHF8/mS400O+cW+ufsc3p+lNrTFWwFYNAa+S?=
 =?us-ascii?Q?xIdeRsBH6EwYbbJWx53VZybD7QqkvBHiBk1flCkvPJs/kU1Qhy0BIcRrBj9G?=
 =?us-ascii?Q?txtJyd/wg0q0JgwggCCLFGaCLQNnbFgatddZyoCJFt9h14KS3ul7NlKkYm78?=
 =?us-ascii?Q?jHVQuo+t3GKGZNv6Q9D4ufn6BZmyX9HVzCYHu7Y8DRkef7RvE3QLtL9N0MNu?=
 =?us-ascii?Q?v3rGkOTgaqG35erd5mFPv68Ya7I/xCF/8+kuhpFMLP/D1sQ0dO+73Yh4YLa6?=
 =?us-ascii?Q?g51fYztth7cux0iHPnzrO60zMHD5HV4YmsKVqOR4ufnJWOZpdh0FCsqu7ovd?=
 =?us-ascii?Q?/ZSMqF/kN/2lepZehA4/zk2t/tpwK1ZRJaWy/8dZjnVQ50FXk5KqzzLyfIQm?=
 =?us-ascii?Q?JjAXoCemrMfFItXHFdbwtQNEhAAdqRipA63WIhCobJ7XisOo3OdmBUMUCosT?=
 =?us-ascii?Q?DZ2CTi0xI0H7FpAZcI0BiVrlHOUk4ngCes8T/2J8C8HXbPPHZ5nWV6YTENZ+?=
 =?us-ascii?Q?/+SBWJ//pPraKpZR4cHt3RsGcTgTiiG9DJUUBHX9IZ8Mh2PP4wkfEymi9od7?=
 =?us-ascii?Q?amskgg8LgT2jdEoZ0MXFjmJdDJ4FhsyomkNcaSooPFtQv9iUwmHuNKVwmdr5?=
 =?us-ascii?Q?83W0sNQwI3g8+n2DGGCbQDi7wxiAsOqZohbqgrbOLbzCwKhODEUkhX4cjFM9?=
 =?us-ascii?Q?48H7T9z77XbsfMdxIFJsfAftFXpI9uD546duOJH87Le2fP3pkpCBa8E20Nwy?=
 =?us-ascii?Q?IfMD2mkP9R77XEx+EHM207CHdwvGTxQqf6sK0OMVTo8XKpRnnnJGAaridKi3?=
 =?us-ascii?Q?4xhk9tZTNBJPYJls/nyCqmmkPJrmoV0/PG7cNoWAA8ypMfRULjwIs+3ktqBD?=
 =?us-ascii?Q?yUTmHntXUfZU1KUqSETvoQVgYV23YtAEDGdWegnuKpDSBA0AjrCxU9dc/Rjo?=
 =?us-ascii?Q?rXgxpRgMRCRzaW2vi7P5v7MRd1rVl0nUl9mSEqRCWavjOe12gS7azWuVFN/1?=
 =?us-ascii?Q?exU+sP1MMJNn4enIOkEO4KvPB+EXzGkMti6jViP5vIgaNZMi2PlZyLDrh4Bg?=
 =?us-ascii?Q?ST9mPJM4o+IiOdASswreuTMdpyVxs4QO5meCgaiMtJlaRplfNpmigQnXaY58?=
 =?us-ascii?Q?mHPetjbqK3ie6k21dA9uO7MC86FLXiIIFBs4VRPliKeSVvKfmsZS95Gu9WWd?=
 =?us-ascii?Q?cI5BKGei8ZOKouvxrVjZD4FyxF1X7Q1rQKm386lNsKyAVw0CdH1L+Sl9sn4M?=
 =?us-ascii?Q?jCKv125+tXO1sMIuQt0xDVERHUQ9nZZsRwXQm1wK3R/rWjpAbu+yxWnuwqYN?=
 =?us-ascii?Q?ozj7Awspa+gSqLwwTfJvdVj8D5CxRyDzgDIvGFHKtqXobX0A4PyQKfdLWu5M?=
 =?us-ascii?Q?YLBqx9MkbuOLMT5HKLjPxPLMWiczHvjTFz0BlDDZyJjQTrR0sA7o2mwLjhc5?=
 =?us-ascii?Q?pzgVmFnVg7gBu0aB1cQBA9eNkooJOpZ8?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hbHPDldNioI+/xdpP/3bppWiaAxgyVWtxQN9fpzWu1fx0REHdOrX+UjoPHGo?=
 =?us-ascii?Q?yspe6viZ9DTUpt+RQw94T8v+T35S/+PE3BxNE2PrFKFLtg38HUUVX6wsqc39?=
 =?us-ascii?Q?dsLQDOKcd4TA5jjZ6RZNP6KhYYYftvkRBTWla3F+N0W87qF9M2IKEzBBvaEA?=
 =?us-ascii?Q?cqeOwhlSmfsiuWbQEnhc3OhRMhbPTapLCZexvyNpHZzryWEeXudN101otGFQ?=
 =?us-ascii?Q?qCXZ61ck4wyAlZPJLaYWqA4/jbQ+nssmpq2SRk7RL1FNQb4k7vhvlJs9hRR+?=
 =?us-ascii?Q?JykAwghYxTvscqoIMEeTZdit2MiIO1XsFiWvHi31q9cjmVp6r6TnKc3mmlI8?=
 =?us-ascii?Q?jaLdpxa5G6WBEpn1+svowP73sKmVtPp9vdzX0rimtPQnsBcavwLsTDVR3CT8?=
 =?us-ascii?Q?0/vddHO186BvPqahvJUT+ryeHOCKJvV/iNKBNDYS9B3w/Y+7eX6pwYGHXR4G?=
 =?us-ascii?Q?kA8STYrbdpj7TLtJWUcUgjv0LZVytSE1w7TZbwRr1ZtPCaYBFGYxNPBB8Ep2?=
 =?us-ascii?Q?czcxNYlUI8viXVn8G5G/vyP2Bp/vBaeEBxYD1BuTrOXEYYI2OwMDUKqQfBpU?=
 =?us-ascii?Q?A4+GXlGSd/Y9taeFVz4UgNZH1kUM+z5uUaHmvKb1YFqoFNtugCi/uYAxxe6W?=
 =?us-ascii?Q?417GYwgWj+4wUU9EHQ1f/bq1PVWOCwsvPXs89pv2V2r4ta8I3PniKf9tPgIr?=
 =?us-ascii?Q?8yiOp9rHyM45AJkOiY5T6qtKpUrDfDUea33w5VqmZdKmJ+dlbQGtMuT6U5JI?=
 =?us-ascii?Q?aLCyd5moBccNeW2JaSohmwMJhNnbJ9h2OMkooboY7TT5rXT2xCX9QkySJoJI?=
 =?us-ascii?Q?fAmrM489wNVsHc3v9XScoaowRMB/RZMSX7ZgULo13UtBft3bXnhVjhGalp83?=
 =?us-ascii?Q?49VVzmr+g1brzAdOAYzQ9a6LHcGoHtawcaGLyi2l1jd6w99oEC5ySaCR6AC0?=
 =?us-ascii?Q?EagnYXLo4NZOoj70yw4STzSR+hef/2ePKMi1K8xB3sLBxKcl3HE/Fv+7l4Lq?=
 =?us-ascii?Q?LHzAutOsbmNL3NqF5Ti8HoKT5gC3Zqg+7e5zKaHIc8AXg/Xu3SAIBT5q2ERt?=
 =?us-ascii?Q?+6z7c1Ibl/A6PI/2/Ef9LneL57O9bYqNkhlOMWrFIrQQZNpOpchlYnPQpCZT?=
 =?us-ascii?Q?zhdEVP8+zULZOmUlqI2iQM1XwyNLOcxiF6KDOlh67uCu+Vl5UeaBiXSUxbbD?=
 =?us-ascii?Q?RiMDXfwhZaQTJxKSWyAGa9ppbsFpLSYfzTlSItmSSfM3CVVNjqUzK3CkFp4d?=
 =?us-ascii?Q?7HV9vFc6B3CKfUxCwAyZBqPH8Cx//JwzgveBsyYMw16afET4lVr0KeSCrJ1M?=
 =?us-ascii?Q?PdE/4omAGhK8LiHBBmZGv53t8x60+zQxm6AdpXTTlU9vurrqWA+6Kq9jujGl?=
 =?us-ascii?Q?Fo+cLbIdrRIR8HUeLeUT8/YQTW3Esl6XOc0AGLpJVhb23g9KNsG9SeOVJbaT?=
 =?us-ascii?Q?Pz4+8YYKdmD4MAfOyxjrAn3fuDliPEkbOlVEpH/3GLzIGaM8bMRrCuGTS86/?=
 =?us-ascii?Q?q0zpgOzAoUSpoPawFFSAqppmyRd2VRg9LmeUVeKXJ5S7tna2sNUOyoQGZoBm?=
 =?us-ascii?Q?U6NASWrgsYtZFnYX6ynCzfHUGLwJZpZZjqw5+qzX?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfb7dff5-1a43-4146-c996-08dd313a7b07
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2025 05:48:59.8417 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dFX5qlKSD95t5C5B4M588Xm7prn43NI+w/4ijFfZKhO0LPxVf7LxYNiebvmTWSeyEnFiXfu0ZWXpBOkPZVIo0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5257
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Anki=
t
> Nautiyal
> Sent: Tuesday, August 13, 2024 8:50 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: jani.nikula@linux.intel.com
> Subject: [PATCH 2/5] drm/i915/snps_phy: Use HDMI PLL algorithm for DG2
>=20
> Try SNPS_PHY HDMI alogorithm, if there are no pre-computed tables.
> Also get rid of the helper to get rate for HDMI snps phy, as we no longer
> depend only on pre-computed tables.
>=20
> v2:
> -Prefer pre-computed tables over computed values from algorithm. (Jani)
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 -
>  drivers/gpu/drm/i915/display/intel_snps_phy.c | 37 +++++--------------
> drivers/gpu/drm/i915/display/intel_snps_phy.h |  1 -
>  3 files changed, 9 insertions(+), 31 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 19498ee455fa..bed54a3588d9 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1887,8 +1887,6 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
>  	 */
>  	if (DISPLAY_VER(dev_priv) >=3D 14)
>  		return intel_cx0_phy_check_hdmi_link_rate(hdmi, clock);
> -	else if (IS_DG2(dev_priv))
> -		return intel_snps_phy_check_hdmi_link_rate(clock);
>=20
>  	return MODE_OK;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> index e6df1f92def5..e01a17be04bd 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> @@ -10,6 +10,7 @@
>  #include "intel_ddi_buf_trans.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
> +#include "intel_snps_hdmi_pll.h"
>  #include "intel_snps_phy.h"
>  #include "intel_snps_phy_regs.h"
>=20
> @@ -1787,24 +1788,9 @@ intel_mpllb_tables_get(struct intel_crtc_state
> *crtc_state,  int intel_mpllb_calc_state(struct intel_crtc_state *crtc_st=
ate,
>  			   struct intel_encoder *encoder)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	const struct intel_mpllb_state * const *tables;
>  	int i;
>=20
> -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> -		if (intel_snps_phy_check_hdmi_link_rate(crtc_state-
> >port_clock)
> -		    !=3D MODE_OK) {
> -			/*
> -			 * FIXME: Can only support fixed HDMI frequencies
> -			 * until we have a proper algorithm under a valid
> -			 * license.
> -			 */
> -			drm_dbg_kms(&i915->drm, "Can't support HDMI link
> rate %d\n",
> -				    crtc_state->port_clock);
> -			return -EINVAL;
> -		}
> -	}
> -
>  	tables =3D intel_mpllb_tables_get(crtc_state, encoder);
>  	if (!tables)
>  		return -EINVAL;
> @@ -1816,6 +1802,14 @@ int intel_mpllb_calc_state(struct intel_crtc_state
> *crtc_state,
>  		}
>  	}
>=20
> +	/* For HDMI PLLs try SNPS PHY algorithm, if there are no precomputed
> tables */
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> +		intel_snps_hdmi_pll_compute_mpllb(&crtc_state-
> >dpll_hw_state.mpllb,
> +						  crtc_state->port_clock);
> +
> +		return 0;
> +	}
> +
>  	return -EINVAL;
>  }
>=20
> @@ -1981,19 +1975,6 @@ void intel_mpllb_readout_hw_state(struct
> intel_encoder *encoder,
>  	pll_state->mpllb_div &=3D ~SNPS_PHY_MPLLB_FORCE_EN;  }
>=20
> -int intel_snps_phy_check_hdmi_link_rate(int clock) -{
> -	const struct intel_mpllb_state * const *tables =3D dg2_hdmi_tables;
> -	int i;
> -
> -	for (i =3D 0; tables[i]; i++) {
> -		if (clock =3D=3D tables[i]->clock)
> -			return MODE_OK;
> -	}
> -
> -	return MODE_CLOCK_RANGE;
> -}
> -
>  void intel_mpllb_state_verify(struct intel_atomic_state *state,
>  			      struct intel_crtc *crtc)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.h
> b/drivers/gpu/drm/i915/display/intel_snps_phy.h
> index bc08b92a7cd9..1dd564ed9fa8 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.h
> @@ -30,7 +30,6 @@ void intel_mpllb_readout_hw_state(struct
> intel_encoder *encoder,  int intel_mpllb_calc_port_clock(struct intel_enc=
oder
> *encoder,
>  				const struct intel_mpllb_state *pll_state);
>=20
> -int intel_snps_phy_check_hdmi_link_rate(int clock);  void
> intel_snps_phy_set_signal_levels(struct intel_encoder *encoder,
>  				      const struct intel_crtc_state *crtc_state);
> void intel_mpllb_state_verify(struct intel_atomic_state *state,
> --
> 2.45.2

