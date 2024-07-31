Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A14D4942917
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 10:25:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EE7710E5CB;
	Wed, 31 Jul 2024 08:25:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gkpyhLDO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DDD010E5CB
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2024 08:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722414309; x=1753950309;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CKnGHX3kRz7PfUhIVLA7qyye59bVCvJX/1Z4GaRQGLw=;
 b=gkpyhLDOAXEKxG7C7d5XlnPFN3T0dnOtM12nEeT67AKH7GOL1oeMgkQZ
 igzAZLAbpewIakzGFa8Q26JUR9m03AlkRVudP+Aa/J/KRhy+EAne8ives
 8GKYERz5eIv8kVd3V5c83BkI9um4YceopiCPDLLbVpAvDsuNPBmpCIuKh
 KGemz7/o0lg+4xXxBx/tAwu42YJ28oheX2YnzvO0KhFVK5n9OO3Rbkqmh
 azDQOrXvGiXVlTF5OE62exgKDLIqaTHJHZQmu1bdwBfbzPl1saZJRWgfJ
 04KavNnkarWTICWxpY36m0AMvAvut3l8ovAbSDeyK5b76g+VSwZ2nAQI8 Q==;
X-CSE-ConnectionGUID: UaVbhTZKSmaZ3qEFAvdtxw==
X-CSE-MsgGUID: JnUb8H8sQ6mqj0GwTQ6Hzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="30901235"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="30901235"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 01:25:07 -0700
X-CSE-ConnectionGUID: slSBSDKuShiaJTus1uB/4w==
X-CSE-MsgGUID: A2xW+piPSD+q/YK6uyKN8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="54662284"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jul 2024 01:25:06 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 31 Jul 2024 01:25:05 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 31 Jul 2024 01:25:05 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 31 Jul 2024 01:25:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=do+kcjXDZxd1uQ5HyalV0C9Uccfvi4GNjFKk4HLJdTuG3GE0EpT5bn/AUw7wJtvQXnZZax37Itemq8wrQ4kkL4+kCfBTwhKSFieV725Q/lj1Yf2EcYYSfnF3K+tN117Miw+pj1RD1JHCq1YOxoVdUrJOXjAhdwe5csbe3nd/cDgPkzco9FrCJylgVKXcwWWt10DrKeR6H/kD37Y0zRffcRl8eAzjol7hzvpQ0xgfYSf6hH9DPVDjlqbmE2kqdy/BqKa63tTlnZRWJroGlW4ZuBnp4Ydu/hc6S7WnMZgLsfwVVWb2JC7mMecGHBe0HzElM/0HYCdvM3OlnB7izakgFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PFxVki48nGimLjSYcpMkE1MlmfgicSSS858CCCDO/rs=;
 b=vVxhFdT0FQHyQsGqBZBVqJcSbd0/iGBL1lzLY+I4TCeyGDQimzfnc5s+t5D0+RqnB5sBTf1ZIMmRiBLTeMbPaJE+yui3lqbkyUW6e7CdpWAqKxsrDVmO5ybmdEpNJRD1WAzDhQ8i96o88HGfcoMBFnAeJuqmQr2hmWndIr3NLAwX29gnjlOdjGNgsthdcA5Iv1htpy2V8a/xrsw9kzlC1FH/AgfH4ZK5Sa0AjC2K4jWmUI01APdKtWN9Q+NSZO7GhH0sgMw31D0lSkXyZiaa7MqH9aWvtMi7jUpFjHN+CqU9I37oKuz2RoRVlXeOag4sCdkg3I8XRWlns2R4Hd7TMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by CH3PR11MB8704.namprd11.prod.outlook.com (2603:10b6:610:1c7::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Wed, 31 Jul
 2024 08:25:02 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%6]) with mapi id 15.20.7784.020; Wed, 31 Jul 2024
 08:25:02 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 07/12] drm/i915: Add bigjoiner and uncompressed joiner hw
 readout sanity checks
Thread-Topic: [PATCH 07/12] drm/i915: Add bigjoiner and uncompressed joiner hw
 readout sanity checks
Thread-Index: AQHa2Or1vaWIDVPq/EW8xKDYF0Wx+bIQk/Dw
Date: Wed, 31 Jul 2024 08:25:02 +0000
Message-ID: <MW4PR11MB67613C5B6D0D9581468E8A4FE3B12@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
 <20240718081803.3338564-8-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240718081803.3338564-8-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|CH3PR11MB8704:EE_
x-ms-office365-filtering-correlation-id: 0e1227a3-f302-41aa-b7b8-08dcb13a463a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?gZ4SBiccHEMhXoNObrOLpHkm4AyB4U0uwoQkdyBfslNtHGIGPiRBF3QFhtrI?=
 =?us-ascii?Q?HuqfU79I8Eq82xJr+n3c+kaiJM2KAfpM2isKMksbuOEIS23ki0UTMjhNcH9x?=
 =?us-ascii?Q?r8ufeDPcCcG/89mbe6llbSxDvievVcOssChQ2w1SrGaq4edL5hKdOkguGpeW?=
 =?us-ascii?Q?h5H1o/Wyq2tF3y3Yc0yRgTTKziszWwBYnZE0Jd/U0MKukWC1uLxbvx/rFyQV?=
 =?us-ascii?Q?6eBlAIcsVax7J15gnPhVocoXq9b8SYKHN2MEc1oVZGbavPkksDe0nmFOWo/A?=
 =?us-ascii?Q?rwIp+g5lVA/PkYTaijcNYlHdPI9yK/5VTM9g+2QWF4DOWXAK0puKKXgTj/rC?=
 =?us-ascii?Q?1aiVT4I+PoROyGA31ed9B+cAiDWqUIjvbL3WhRynjEWGLkA6ViMU8mG4CWhc?=
 =?us-ascii?Q?+jwDqZ51AE1i82xvFIFAhXFabwhrab0I/H/eSxWmFBO3qENz9zEuJ5S5oxhi?=
 =?us-ascii?Q?baIi2IL00E5FxJVEyDdAwVMpn+eOPxHZtqzc0YnkeiRtQoJNibOxHrh+4uhe?=
 =?us-ascii?Q?836o7SY9HVai2o5+ldc+zo6SHTN4tLXqt/u12K8gn7t1gX9jKh/JUPDwg+m2?=
 =?us-ascii?Q?8RZcDe/gSUTUyry+hjsPtL0kO/NmMyPcHR1Prx3At7wuP1c4p3IgjIkFtZGc?=
 =?us-ascii?Q?Fn6dkNZeFHxVfbuntIHo1ZAixNV4VZenGienWhdoQ+VLEKbFeYZDEEaP+Dyi?=
 =?us-ascii?Q?OB6+0f007nLJHRNruNw92VB+zXzzBKX6fS0vMa3p68QSu5cn9vsUjicEKVT0?=
 =?us-ascii?Q?3rmf/0CLGDA8jTfdtkbh1LksTt4vZ+1ARJicVC2nKltwOky6vKidnW7tey7y?=
 =?us-ascii?Q?lzTgqbqVa+Ujygwww7alIlB3PSYTywQ0PxlYtr4AMZ3zp17mPc8yWKMyMiaO?=
 =?us-ascii?Q?VvVuiVakc9gMG+3y6/Q86R5qTG6Af4J2gKVNy/0IZbj3duDrrLkscDb9Ew7m?=
 =?us-ascii?Q?EmR+FKMmMbTK62KF8YHyYFkGbh4WlpICfsrrGaW9gHU4Wprl4JTNe+cMU7E+?=
 =?us-ascii?Q?uTAyMAcOAFQoW+mpTZLCPI/BaFS/AxQU/U08ClDWADZpk1q092m/DSIeP+8I?=
 =?us-ascii?Q?UOOKqeBG4Ez1Nnjfd0vnlOuR8miCZ2sSKe+b5KsJdN3zdlm8O4LzT6oBh2Kr?=
 =?us-ascii?Q?fpIetahkTUn+DSACzmKhlBM+WbKWsjH6R6b/xjPyZNZtxMT5XiUIZNCI+jkL?=
 =?us-ascii?Q?c052wvMFc/L8+o246BEQVFJf7JcvU1Y4IZuvlSUBHCNduYuQCoBWA6NGutx/?=
 =?us-ascii?Q?AGGPbbTIf27CU/jBphcskys9+7ISGtpkinkGS01XBs45FXSsnWVSu9E+STsP?=
 =?us-ascii?Q?kYbQi1ivKo/wTSBrOj8i0mIPnCRym9iO3djx/Dfey4VojyhzcDqfgiPCQLRf?=
 =?us-ascii?Q?waKn6X1fV+b/MOVNgRpU3Lgj8qTWiMw2iPZRKLXc1G6Np1J2mg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GM5aFP5ZiM9HQpBXUYM3AuNxxJD410hvPwkqdnpVc3chg7rzf0iOrzayRU7u?=
 =?us-ascii?Q?xmV61S/J1jofiiFbHck6Sok2pF/dJu4y9vJUAM0Om+SaSZKOwpVXvMs9DyEB?=
 =?us-ascii?Q?eedYvNYFFEGRthBvALTk9CzvGcvnpKBmCqzxg871nm8RPOqry0vWMqpzZsMT?=
 =?us-ascii?Q?FEADo5lCagHfnYVIs8cJwjbsxtVnsITlp7CRqedP8wJ5CcDCnF7AibuDEqYo?=
 =?us-ascii?Q?HKbDgWOTz3VW73tWLn1ROv2Xr+05O4VVQUg/UqEcdZHoUCfS/oPG50xV1B35?=
 =?us-ascii?Q?nAomV2QBkHVfHLOg0ayd5taoJmWR4jvOBOH02l9ZY2ArT3dC/3lmWO9YmXfd?=
 =?us-ascii?Q?H6L9beV3HSJ9vEy2BerCGf0P25Pwi9oYj8pIR9M6HTyAEhVUzL0RRGmSJf17?=
 =?us-ascii?Q?QdBfxhEQMc08ZrvQGWfh1k6cYgGsYsIbkwkvescES9LfZ0O/IopOdgvWPTM2?=
 =?us-ascii?Q?qjt/lcen7M/Jx6tk4auyTsewal6a9r69YQCXReflLDPjD0DTdWd9agKhwpqh?=
 =?us-ascii?Q?2dlDN/4786O6Vm3aBGmfo4LsyOnbqab4EtXg49Rv9gLdo+P4RViiccGmNS7a?=
 =?us-ascii?Q?PeL8PTYv00qWF4Z+Lk2NUolhkgAshxQvRQAzfToItDkQdtPkFMyiUXP1PI0q?=
 =?us-ascii?Q?1LXRh9p+0fe53hHxdkc62FBCDCME5a9fiGd0thiwEveJO62KEkHa5/Y/Z41v?=
 =?us-ascii?Q?bL8qYKee9U3eVw1lThkExT5cJSKPdAVLRFjkFYOpMhRuFdgMSPArezQNK4/X?=
 =?us-ascii?Q?MHtswwmmU/PaxrVH2z9642YBANWXFRZVS4oPnsbnDuutKIV+d6u/jQuHc+c7?=
 =?us-ascii?Q?alA4+Kx/dWkjGf3oiF/mCDPERsd5tXaO7Nlswn45i5H0tP0Ue0H8aI+J8UPl?=
 =?us-ascii?Q?RGMOXeZJdGDYY6iHjcakeMXS7niUh0VcsHIlw7P+SJ7QUCHMN2V/3oas843u?=
 =?us-ascii?Q?OWYE7Nc4bCfNrqde0RoTTSe5ErRM78ESNiSCDCyiBl4TO86W6a/rnkfMj7hc?=
 =?us-ascii?Q?HTIbY6il8vVFLAGNius2BExmO1PdricbBY7q0MMJ1H/n+L43nOcqPNAGsMTK?=
 =?us-ascii?Q?L6yCnLor8iuwSMj0vmdaF4OTOLyu1MZ5tK6HU06UonfDKFMIeEk9ZMF2LmLI?=
 =?us-ascii?Q?ZHWT3F9bVryiKgzyrBlxpeAJnhWHts2TMR/AZzSebcWioMOUcyaDWUI421XN?=
 =?us-ascii?Q?Ku3e5c799+gZKaLE3Asc4YFaiSKVWah6fXhfwdKp2PnTGE5JcTqwuB8p19B7?=
 =?us-ascii?Q?9fRjtQ+mKcaAjdFOT8kbFqJIjPauzOd+ybXYiTL7kiEw0/M04c4UBTRIlOPE?=
 =?us-ascii?Q?y9NkfpaHt1wnL1rl1AzWKgITKJFhEOKLlPb41z/qnvm+Fk4JAwR4tfHgHV4I?=
 =?us-ascii?Q?X2R+Js44MynUm3NDMavSeaemqhVd4Cz+hAdv0JqOcoZFCVOuuCdOeGvqRSpg?=
 =?us-ascii?Q?Y2Oh56Skemzs9PVKrYMRxZ5N6+QEiHCMNPM3SocfZpcFPOuVnIumlzqc6/2q?=
 =?us-ascii?Q?1nq4XPRjA4oB9xIfEHAWWnU9tWjBnQXhXxcmBsJZD0Ne+BqCaYkkORHsaZ6E?=
 =?us-ascii?Q?QRQTMFyRev5Wirh9ej9JU2GYPkg6MFoQs4LYDgcL?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e1227a3-f302-41aa-b7b8-08dcb13a463a
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2024 08:25:02.3668 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FB/qxLxdg8loA+cAQQgHU7k+8+hu1Hek5ar4qZEObRifQ4kdZ+ar4Z/G3wL49FoPVqBpbzKGwZTSK39fbutHkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8704
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: Thursday, July 18, 2024 1:48 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>; Saarinen, Jani
> <jani.saarinen@intel.com>; ville.syrjala@linux.intel.com
> Subject: [PATCH 07/12] drm/i915: Add bigjoiner and uncompressed joiner
> hw readout sanity checks
>=20
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>=20
> Adding sanity checks for primary and secondary bigjoiner/uncompressed
> bitmasks, should make it easier to spot possible issues.
>=20

Use imperative here in commit meesgae  some thing like " add sanity checks.=
.."
Other than that everything else LGTM.
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 25 +++++++++++++++++++-
>  1 file changed, 24 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 4aed8117f614..59cb0d2f773b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3648,11 +3648,17 @@ static void enabled_bigjoiner_pipes(struct
> drm_i915_private *dev_priv,
>  	}
>  }
>=20
> +static u8 expected_secondary_pipes(u8 primary_pipes) {
> +	return primary_pipes << 1;
> +}
> +
>  static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>  				 u8 *primary_pipes, u8 *secondary_pipes)  {
>  	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
>  	u8 secondary_uncompressed_joiner_pipes,
> secondary_bigjoiner_pipes;
> +	u8 uncompressed_joiner_pipes, bigjoiner_pipes;
>=20
>  	enabled_uncompressed_joiner_pipes(dev_priv,
> &primary_uncompressed_joiner_pipes,
>=20
> &secondary_uncompressed_joiner_pipes);
> @@ -3660,11 +3666,28 @@ static void enabled_joiner_pipes(struct
> drm_i915_private *dev_priv,
>  	enabled_bigjoiner_pipes(dev_priv, &primary_bigjoiner_pipes,
>  				&secondary_bigjoiner_pipes);
>=20
> +	uncompressed_joiner_pipes =3D primary_uncompressed_joiner_pipes
> |
> +				    secondary_uncompressed_joiner_pipes;
> +	bigjoiner_pipes =3D primary_bigjoiner_pipes |
> secondary_bigjoiner_pipes;
> +
> +	drm_WARN(&dev_priv->drm, (uncompressed_joiner_pipes &
> bigjoiner_pipes) !=3D 0,
> +		 "Uncomressed joiner pipes(%x) and bigjoiner pipes(%x)
> can't intersect\n",
> +		 uncompressed_joiner_pipes, bigjoiner_pipes);
> +	drm_WARN(&dev_priv->drm, secondary_bigjoiner_pipes !=3D
> +		 expected_secondary_pipes(primary_bigjoiner_pipes),
> +		 "Wrong secondary bigjoiner pipes(expected %x, current
> %x)\n",
> +		 expected_secondary_pipes(primary_bigjoiner_pipes),
> +		 secondary_bigjoiner_pipes);
> +	drm_WARN(&dev_priv->drm,
> secondary_uncompressed_joiner_pipes !=3D
> +
> expected_secondary_pipes(primary_uncompressed_joiner_pipes),
> +		 "Wrong secondary uncompressed joiner pipes(expected %x,
> current %x)\n",
> +
> expected_secondary_pipes(primary_uncompressed_joiner_pipes),
> +		 secondary_uncompressed_joiner_pipes);
> +
>  	*primary_pipes =3D 0;
>  	*secondary_pipes =3D 0;
>=20
>  	*primary_pipes =3D primary_uncompressed_joiner_pipes |
> primary_bigjoiner_pipes;
> -
>  	*secondary_pipes =3D secondary_uncompressed_joiner_pipes |
> secondary_bigjoiner_pipes;  }
>=20
> --
> 2.45.2

