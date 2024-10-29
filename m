Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0908C9B46B9
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 11:24:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47A6310E608;
	Tue, 29 Oct 2024 10:24:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WxwW63uk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B3B610E608
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 10:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730197475; x=1761733475;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Vvb75wThrUA/NL+IbbIwxAW+mWnaJ0AgukpK1uX55Y4=;
 b=WxwW63ukmixC4eueIgCcfMKxdU8DNFUhSKShQbt3ieCNCmL2r952k8ks
 ekXTYWLGDkTXgSiDYSrcPR/7hJwMULAVcGp56ez+FEfhMHSiD3f7Cjr0y
 CXAVvD3IFpQSn2kCPl3c0v+mD/fqgpp25iUOMzeRuB//4lUkhH6UnEcIt
 Bh7okyhOckSqcGYyeI6AXJmzDanmMUUB87TkmTR5xuWSMRFKpJlF79zY9
 hO7Igjt1gwpMPQRqTyaH26KNLYNVhzeQqC0/3wmo3a5AMvodpeWnJC5gn
 fQo+O8Hzdpwk0e9V7Q5UIDxO8tTHgFTU0o8UR/jrAlfmDSdiUsfloieEE g==;
X-CSE-ConnectionGUID: UJPlyyKAQmCE3tKaaGyfsA==
X-CSE-MsgGUID: cMDze16ORWGN2mB+0Lujyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="40412618"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="40412618"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 03:24:35 -0700
X-CSE-ConnectionGUID: BZG8mhHgSomJkbyph2yPFA==
X-CSE-MsgGUID: kgn7v4/AROiyyEtE5a5fgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="81843693"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 03:24:35 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 03:24:34 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 03:24:34 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 03:24:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xj1x3CymheR2RWY2q09Jk8mPGWgYQOf/90oyzcGFbBKkJsgNkoxHWAVFn4WYd4Zhw0Lb/IrUJKJjCRtkwPAvM8lEc7z9VzdP2fi178UodUeOQPdriFLTx01/k/299BfKDcdG7+IQEilPzzSdkeOIu0gFPtRW4Zkwu6lWaNSXZ6h1sOO/MTaReNF7JAhEgXG8MP4WA/ppCzUvm/jAe1o6dJWz2LccBu/0jAkniVmvDXJxlYzUkhTLiHA1TAyJZQGD34+gjg09bZNY8Y6VPRtQPqsJWfqdLKkNfFcalGbNjTyQBmzJHAZaqxD4Thc383iK66NlUUJst6ZLLS5AfGfdUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vvb75wThrUA/NL+IbbIwxAW+mWnaJ0AgukpK1uX55Y4=;
 b=g+dezpnU5wPN8M0JYyLiXMA6Mv85QCxoRoRGxkQOWzTD9C85/qHlcU3fYc96YF2tqRNgcb+AFV0M9SgvGGJa2u7zPByWMPcNkCerBVYM4HlcJlUvEGCpc9gKQNn3qukK1QfVRANaFCeKUFL7xcg9B/uOC1Pd1LDXSdAEftDaYQBnzwxQekAo7/qoIkjElmndu8lE3/devVyVFnuJrz91JV/xFaEVFNuJG4TjBf7fQ+z0kgnCHDPJv/+LCp68Kw56FuUuJ4KLULaK+15AGdi0Nu4BRjn75H+qlywj6cWYSwUo8E60Ieq4k9/9ic/+tE3E786ch0cShP1CC/e8M8B4Cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.23; Tue, 29 Oct
 2024 10:24:27 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8093.027; Tue, 29 Oct 2024
 10:24:27 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/i915: Implement Dbuf overlap detection feature
 starting from LNL
Thread-Topic: [PATCH] drm/i915: Implement Dbuf overlap detection feature
 starting from LNL
Thread-Index: AQHbKeKyyppTabzOK0+osOsmczw9qLKdgp0AgAADD4A=
Date: Tue, 29 Oct 2024 10:24:26 +0000
Message-ID: <e15a4529c4fdb3ef77096a85b77169e8a326a212.camel@intel.com>
References: <20241029091210.99849-1-vinod.govindapillai@intel.com>
 <87msinnrnd.fsf@intel.com>
In-Reply-To: <87msinnrnd.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA3PR11MB7554:EE_
x-ms-office365-filtering-correlation-id: d97ca808-75e9-403d-17db-08dcf803dd99
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TFBJYnVvQUVTUEMvVU4weEdOQXc2Q2xYdnVyVlhWNjVtNVRoNi9COVRCUjlK?=
 =?utf-8?B?WTNLVXQ5d1cyMXBOUFZ3cWpsNkgzVW8rdlNxaDRIZ3UrWVpvU0RMTEpER2VO?=
 =?utf-8?B?UGs2WFJ0VnZtSGpxT3lGNVZaczkyMjhzaTdQRzBkM3VWL0NLajFCTnZtNWMx?=
 =?utf-8?B?ZlRtRXU0UUdVS25vZjRsSFNJZ3VRVEw4aGFOSVBaV0V0V3lPbk91c2xyMllZ?=
 =?utf-8?B?Y1ozUUxxMjF0TkEwZ2ErQlNTSFlQSGNvSEF3aVFEdlJMTy80MkI0cmhQVWZN?=
 =?utf-8?B?TTN1LzYzalpndHFsUkttc2tqTmRwdjZUVWhlcDBxYmR3MStUT3JxcUdWdml6?=
 =?utf-8?B?cHhKcWJ5NlBVc3VxYjFwT2l5UysxZlZobHkxUmFoSnpMUmlBTyt2aXBnazRS?=
 =?utf-8?B?ZnAwOERVQ29DYWhRZHZuaXJVTU9LM3c4UUEyb2dibVo5VU40SWZjb2lzT3g3?=
 =?utf-8?B?TVlPNVprWDg3QWZaZFhMR3YvMDNZTWtXRE1Ma244S0treUtaaU1hYm9BcTFD?=
 =?utf-8?B?Si8zSTNwSDNYQktFUVV3a20zOHkzS0J3L09uZ1NSUEF4OUlWTUV4OURMN1B4?=
 =?utf-8?B?TXhnN1A2ck16WFcwYklYb3dGQTUvWTBBQm96SU5PYXp5cGhoUkh3L3FNdSsw?=
 =?utf-8?B?NzJkTDNFTnMwd1VHZHU1aVRHRSt4UTUvTncvRGR4WjlaNHFiUWJBb0Vvdjl6?=
 =?utf-8?B?NzRFanprVXovcXBPQlI4dm9HaWUva1FJdEllMWU1ZVF6R1pyS1BONVFEOTk5?=
 =?utf-8?B?U3pjMDFyTk9MOGhyVVY0NWhlNFI5VHowd3JzWWt4MDFjd0pvNW96SmdyZWlt?=
 =?utf-8?B?TUVBbWJnTnFnVUhDc29US0Z1d3REam9BY1RSc0h6TzdpU3laam1iL3E3R1N6?=
 =?utf-8?B?eXJVUkloQm9DQkM2b0RtWmYxWkx3aTZ3TEliK2JMVmpmVkdOQzB2MXdVdFRa?=
 =?utf-8?B?T1c4SkNKeCtld3pzeUNkRFpOYVNWclV2VHB1WWh5d0RYcnJHbmR2R3hkdS9O?=
 =?utf-8?B?ckJqNVRuTWpwUFR3cndOdmduRjN4TXYyZVowOExuYkt4K1loanhYOXVpS2lr?=
 =?utf-8?B?Wm5nZXZjcmZ2cjJ0RVVhMDd1ZzZkNkhISVg2SmoxZ1NvQUJhWVNEL2tVNGF4?=
 =?utf-8?B?OTV1VUg0OTZKOEcwVlMxbm4wdHg4anF2ZTRUaE9DQWpRV0RuVUNGNU1Gam14?=
 =?utf-8?B?ejZJNFpSbzBFSTVGd09FT3JlT0RLSmhFRmVFUGM5RkdMc3JqT2ZZN1o5OW5t?=
 =?utf-8?B?Tmt4L1NSUmQ2UXBwRVkrZWZvU0JKTkZEY3NmajRpQU5vTkJUMEV6NWtyMU5B?=
 =?utf-8?B?aC9ad1FUaGsrNUQzWk5uUmM0b0JacFhsc002ZmFFYkwyMzJhOFFLbHJtdGF0?=
 =?utf-8?B?anNkems5ZnZSL3F1YVJ1U0taVkJoZHZOSmkvdTE2b1VXU0h6ZlVMQ2FEQUVv?=
 =?utf-8?B?ajBaQzh1KzhWSDJQb3lwNUttaTRWb3hscHlSdVJnbFMrVnhoU0pxbVgzRU9V?=
 =?utf-8?B?ckhEMGpiNzlSSEl2dHkzbDRGdWtMN2NYakp6WWhOaVV2U0FBbC9DREFUWXhw?=
 =?utf-8?B?alVZWmZSMzBJak9PU0c4bk0vRHJtTXc3ZzV5T1NGUyt3VWhVZGJiblMrdFpX?=
 =?utf-8?B?VWxBZ3FqdklET3I0Q1lNeUZsaGUzUUoyTlMyOXhhdGtNeVJ5RWd2Vi9SdXZM?=
 =?utf-8?B?dnJMUTFDbGgvVWNlWkxkN3RLdnNuVyt3MzMxcWtWU1VwTUc5NHBlNHJndCtM?=
 =?utf-8?B?Q3o1NDJZZy9oNlp1QTltZUxnWWp5OW5KZW1zMWxteHl2UEpzeUFlMmgrRVh3?=
 =?utf-8?Q?Uqw30hKkkX80bfCjvKmva5bFvF5aB1/I/vseo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L2ZPUlYxbmxhdG4vQlpGeFoxRlhhTWNFTEpEeVpJUHhDUVU0UmxvUDdQcVRn?=
 =?utf-8?B?RmNWV3NHNGRMQ0lOWkwyamNmTlRqcWp2dEhHVEN5NnJjMXdtWlo1b0lFcDV0?=
 =?utf-8?B?UEtjT2tZd3QzT1hmNFBnSTF5RUdvT3lKZVFnMjQ1WFl2RzRiRGN5UFF1emUy?=
 =?utf-8?B?WjlZY0tCR1FaK25nVHowTm05VFNpTnhKMzRMZW5HTVU3UklIUGptMFJVcjR3?=
 =?utf-8?B?Zlozd25hZ1dlakdSUnFtMVZsc3lvQWhMMktFNUJPekl3OG5UMXJWMUl1WXdE?=
 =?utf-8?B?ZzZEVDkvUTlGZlZUM2ordUx4VzFkTjl1MVBZclRwQWM4KzVVNkltUk85eFFK?=
 =?utf-8?B?eXREKzExb3BDeEc3SXZQK01jdWpqN0llMzNkNUlKaVdDVGw0aUxMTHZTYlc1?=
 =?utf-8?B?TXg0VXBGQ3hmZlg4WVBKMXRLaE9tdTFmTGZveGRidGpOS0lnTmc3Q01NdTM1?=
 =?utf-8?B?dFNudGRBdmdXdzdPZ2xtbDNXbC9yS0NnZWY5VW5ZWXQ4RmNhb2xZUnNBbTQ2?=
 =?utf-8?B?TjNKdk5Cc0hTa2dqNHY3aHluQkQ4VWgwMlMzejdlNkZ3QTE1bUdkWldtV1Zy?=
 =?utf-8?B?bVFrdzBzKy9SVjRlMjJLelY1Z0NvZ0t2bWlFdFg5S3ZHRlR0VHVUUy9GMmRm?=
 =?utf-8?B?NStibUlmMHZiQjNrWXJWRUtieTVaVlUyaStuZXhMc3RPMXI1RWNMbmdBYVhj?=
 =?utf-8?B?TmpYTnIxNVVDZVYvYzZqSHJpQ0c1cFN2ZzMzbWhWb0E2NVFRQ1dTZjJXeDhw?=
 =?utf-8?B?WWVRQXJ5ZzljTStRMFpRRFJQVFN5RGVPNTFPNDJoZC9vbkJzZVRGaXdZaFg0?=
 =?utf-8?B?ak1UUEJqNDh5R1Y3YWcwaXN1SXZjbk52NG9oS2hteU9ueDRhcHJUYmtqdGJu?=
 =?utf-8?B?ZXVqODUyY1EwN3lMdVhBNlNZeHVpKytlQlViVEVzS1ZKUVJCSlV6OVBseXlv?=
 =?utf-8?B?bTV3bkJBb3owbmNSM1k4Mm5IZHllUTFoaVNvOE5qZ1l6YWhrZGFiY0VGem5E?=
 =?utf-8?B?SUZraVowd3ppNWZ1ZFUrd0pLM2pxbTFJWVorZnNTeFVkUDdlaUdyQUdZQktm?=
 =?utf-8?B?Nm9RQ0dqenRLYk9LdkR2V2J4L3RUZkVRSnVVbmhUU0o3OEMwcmtnTVd1cE5C?=
 =?utf-8?B?a3ZvVmJuRFVJa3NzS3lMOS81Uk5EUExSMms4TVJPVmQ5emxqTFZZUWxVMUll?=
 =?utf-8?B?RWNOdG82UVptV1NtMi94bndva3dncjlGekZDRmx3ZnBaRjMwQkNQMEFMeUtB?=
 =?utf-8?B?SXZHWWZDM2hHY1J2Zk5jK0FsQ09rRFViNHhsTm1XRFVSbVB3RXpQeW8rcklJ?=
 =?utf-8?B?aGRtbFpaN1l2VndMaEk2aFJlUGp5eXJwM2Jta01YQkl3cm54WVhvamFHaVRI?=
 =?utf-8?B?dUJGWU95QlBNNTh0TFF3UUltV1NIQnVkMzZySEpVdFpNaFpmbHltRWZkRkJ4?=
 =?utf-8?B?QnpFNUtGVlovcGRZRWszK2VzTUoyRU1YN3ZyYnd3VnNUYmRqNVV3Skd1aUFO?=
 =?utf-8?B?K0w2K0pGM2EydUxRWkFsd0ZFZGxzK0x1b0d1NUg3VlhzZXVlTml5eEE0Umw0?=
 =?utf-8?B?VGNWTTd1U2tRcm9RaVFkOXQ1cHo5WEF6ZjRoc3F5SDJINjQ2Rk1RNXVsMEh0?=
 =?utf-8?B?NmJwcjhQMzJtbmlnRXVnL3VYQ0hCSEM2NnlPbVNHYXN4NWprTm5ML25mVmgr?=
 =?utf-8?B?Z2xlR3laMWErUDluYVR3RWdnVFR0Z3RWNWw4ZXcrWERGQzV1ay9HTHQwM3Ni?=
 =?utf-8?B?TGtvQUZIS2ttTERlbllTL2lKaXdYRGRWOXlkZXNydnpJTWVZaitsd3JPOW03?=
 =?utf-8?B?UjFZVjhydy9oMnpFdG45dUJWZ3djaDFCRzNaTUhTc3NYRnVWbmJkcFh3aXZJ?=
 =?utf-8?B?QW10blAwVGFkdkRrdGJPalJ1N0Z4VG5iMHpTWVlkbm9pb0RkcVNvM3hndWlG?=
 =?utf-8?B?RjVJdHFJTXFFcDYxTE5JYk5GdGQ2YzdEQzdNdUoyZ3g2RE5IR2hUekZhOE9h?=
 =?utf-8?B?MXZuTmNGTzBmVmV0TDVCclZrZDNxdENSeVlwaFgrWUxTV2d4MGozZnBsZVBN?=
 =?utf-8?B?STlqSG9MYndpc0dyb2FhR2JZQWZidHNGQjRub0hLcFJJd1I5THdFVGZVcFhz?=
 =?utf-8?B?a0UydnlGRVcvbXNNM2J3ZHQwZkNPVTV4RkM1TUdJSmlWY0IzTkxqdUNhYm9R?=
 =?utf-8?Q?QFaNfEHwI4WpkA6bGWzISlo=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <53E9D17C6CAAE14D8393D076BCF509D0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d97ca808-75e9-403d-17db-08dcf803dd99
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2024 10:24:26.5957 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8nYWhRYAD0ZnKJQmsBdn6bTXcbkkOPc3Qk8Jvf/ehxCZHMIOd9kRx1E/98oMjm9I0SWTVWdC605Nis+FuGh+/YSzuECEEwsTxdwXhdEXZvU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7554
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

T24gVHVlLCAyMDI0LTEwLTI5IGF0IDEyOjEzICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBP
biBUdWUsIDI5IE9jdCAyMDI0LCBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGls
bGFpQGludGVsLmNvbT4gd3JvdGU6Cj4gPiBGcm9tOiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFu
aXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KPiA+IAo+ID4gRnJvbSBMTkwgb253YXJkcyB0aGVy
ZSBpcyBhIG5ldyBoYXJkd2FyZSBmZWF0dXJlLCB3aGljaAo+ID4gYWxsb3dzIHRvIGRldGVjdCBp
ZiB0aGUgZHJpdmVyIHdyb25nbHkgYWxsb2NhdGVkIERCdWYKPiA+IGVudHJpZXMgYW5kIHRoZXkg
aGFwcGVuIHRvIG92ZXJsYXAuIElmIGVuYWJsZWQgdGhpcyB3aWxsCj4gPiBjYXVzZSBhIHNwZWNp
ZmljIGludGVycnVwdCB0byBvY2N1ci4KPiA+IFdlIG5vdyBoYW5kbGUgaXQgaW4gdGhlIGRyaXZl
ciwgYnkgd3JpdGluZyBjb3JyZXNwb25kZW50Cj4gPiBlcnJvciBtZXNzYWdlIHRvIGtlcm5lbCBs
b2cuCj4gPiAKPiA+IHYyOiBJbml0aWFsaXplIGRidWYgb3ZlcmxhcCBmbGFnIGluIHJ1bnRpbWVf
ZGVmYXVsdHMgKEphbmkgTmlrdWxhKQo+ID4gCj4gPiB2MzogVW5tYXNrIHRoZSBvdmVybGFwIGRl
dGVjdGlvbiBpbnRlcnJ1cHQgKFVtYSkKPiA+IAo+ID4gdjQ6IHVzZSBkaXNwbGF5IG92ZXIgaTkx
NSAoSmFuaSBOaWt1bGEpCj4gPiAKPiA+IEJzcGVjOiA2OTQ1MAo+ID4gU2lnbmVkLW9mZi1ieTog
U3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGlu
dGVsLmNvbT4KPiA+IC0tLQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfZGV2aWNlLmMgfMKgIDUgKysrKysKPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oIHzCoCAyICsrCj4gPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9pcnEuY8KgwqDCoCB8IDEwICsrKysrKysr
KysKPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDIgKysKPiA+IMKgNCBmaWxlcyBjaGFuZ2VkLCAx
OSBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jCj4gPiBpbmRleCBhYTIyMTg5ZTM4NTMu
LjE2ZTA0OGI4MzAxNCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jCj4gPiBAQCAtMTIyNyw2ICsxMjI3LDcgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kaXNwbGF5X2RldmljZV9pbmZvIHhlMl9scGRfZGlz
cGxheSA9IHsKPiA+IMKgwqDCoMKgwqDCoMKgwqAuX19ydW50aW1lX2RlZmF1bHRzLmZiY19tYXNr
ID0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgQklUKElOVEVMX0ZCQ19BKSB8
IEJJVChJTlRFTF9GQkNfQikgfAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBC
SVQoSU5URUxfRkJDX0MpIHwgQklUKElOVEVMX0ZCQ19EKSwKPiA+ICvCoMKgwqDCoMKgwqDCoC5f
X3J1bnRpbWVfZGVmYXVsdHMuaGFzX2RidWZfb3ZlcmxhcF9kZXRlY3Rpb24gPSB0cnVlLAo+ID4g
wqB9Owo+ID4gwqAKPiA+IMKgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kaXNwbGF5X2Rldmlj
ZV9pbmZvIHhlMl9ocGRfZGlzcGxheSA9IHsKPiA+IEBAIC0xNjY4LDYgKzE2NjksMTAgQEAgc3Rh
dGljIHZvaWQgX19pbnRlbF9kaXNwbGF5X2RldmljZV9pbmZvX3J1bnRpbWVfaW5pdChzdHJ1Y3QK
PiA+IGRybV9pOTE1X3ByaXZhdGUgKmk5Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGlmIChJU19ESVNQTEFZX1ZFUihpOTE1LCAxMCwgMTIpICYmCj4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoZGZzbSAmIEdMS19ERlNNX0RJU1BMQVlfRFNDX0RJ
U0FCTEUpKQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgZGlzcGxheV9ydW50aW1lLT5oYXNfZHNjID0gMDsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMjAgJiYKPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKGRmc20gJiBYRTJMUERfREZTTV9E
QlVGX09WRVJMQVBfRElTQUJMRSkpCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGRpc3BsYXlfcnVudGltZS0+aGFzX2RidWZfb3ZlcmxhcF9kZXRlY3Rp
b24gPSBmYWxzZTsKPiA+IMKgwqDCoMKgwqDCoMKgwqB9Cj4gPiDCoAo+ID4gwqDCoMKgwqDCoMKg
wqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAyMCkgewo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaAo+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgKPiA+IGluZGV4
IDA3MWEzNmI1MWY3OS4uNmJmNTY3MmQ4NzRkIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgKPiA+IEBAIC0xMjUs
NiArMTI1LDcgQEAgZW51bSBpbnRlbF9kaXNwbGF5X3N1YnBsYXRmb3JtIHsKPiA+IMKgI2RlZmlu
ZSBIQVNfQ0RDTEtfU1FVQVNIKGk5MTUpwqDCoMKgwqDCoMKgwqDCoMKgKERJU1BMQVlfSU5GTyhp
OTE1KS0+aGFzX2NkY2xrX3NxdWFzaCkKPiA+IMKgI2RlZmluZSBIQVNfQ1VSX0ZCQyhpOTE1KcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAoIUhBU19HTUNIKGk5MTUpICYmIElTX0RJU1BMQVlf
VkVSKGk5MTUsIDcsIDEzKSkKPiA+IMKgI2RlZmluZSBIQVNfRDEyX1BMQU5FX01JTklNSVpBVElP
TihpOTE1KSAoSVNfUk9DS0VUTEFLRShpOTE1KSB8fCBJU19BTERFUkxBS0VfUyhpOTE1KSkKPiA+
ICsjZGVmaW5lIEhBU19EQlVGX09WRVJMQVBfREVURUNUSU9OKF9faTkxNSkgKERJU1BMQVlfUlVO
VElNRV9JTkZPKF9faTkxNSktCj4gPiA+aGFzX2RidWZfb3ZlcmxhcF9kZXRlY3Rpb24pCj4gPiDC
oCNkZWZpbmUgSEFTX0RESShpOTE1KcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oChESVNQTEFZX0lORk8oaTkxNSktPmhhc19kZGkpCj4gPiDCoCNkZWZpbmUgSEFTX0RJU1BMQVko
aTkxNSnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKERJU1BMQVlfUlVOVElNRV9JTkZPKGk5
MTUpLT5waXBlX21hc2sgIT0gMCkKPiA+IMKgI2RlZmluZSBIQVNfRE1DKGk5MTUpwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKERJU1BMQVlfUlVOVElNRV9JTkZPKGk5MTUpLT5o
YXNfZG1jKQo+ID4gQEAgLTIzMiw2ICsyMzMsNyBAQCBzdHJ1Y3QgaW50ZWxfZGlzcGxheV9ydW50
aW1lX2luZm8gewo+ID4gwqDCoMKgwqDCoMKgwqDCoGJvb2wgaGFzX2hkY3A7Cj4gPiDCoMKgwqDC
oMKgwqDCoMKgYm9vbCBoYXNfZG1jOwo+ID4gwqDCoMKgwqDCoMKgwqDCoGJvb2wgaGFzX2RzYzsK
PiA+ICvCoMKgwqDCoMKgwqDCoGJvb2wgaGFzX2RidWZfb3ZlcmxhcF9kZXRlY3Rpb247Cj4gPiDC
oH07Cj4gPiDCoAo+ID4gwqBzdHJ1Y3QgaW50ZWxfZGlzcGxheV9kZXZpY2VfaW5mbyB7Cj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2ly
cS5jCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9pcnEu
Ywo+ID4gaW5kZXggYTRmNDJlZDNmMjFhLi5iMDhlOTMwMWQ2M2UgMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMKPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9pcnEuYwo+ID4gQEAg
LTkwMiw2ICs5MDIsMTMgQEAgZ2VuOF9kZV9taXNjX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwgdTMyIGlpcikKPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3Qg
aW50ZWxfZGlzcGxheSAqZGlzcGxheSA9ICZkZXZfcHJpdi0+ZGlzcGxheTsKPiA+IMKgwqDCoMKg
wqDCoMKgwqBib29sIGZvdW5kID0gZmFsc2U7Cj4gPiDCoAo+ID4gK8KgwqDCoMKgwqDCoMKgaWYg
KEhBU19EQlVGX09WRVJMQVBfREVURUNUSU9OKGRpc3BsYXkpKSB7Cj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgaWYgKGlpciAmIFhFMkxQRF9EQlVGX09WRVJMQVBfREVURUNURUQp
IHsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJt
X3dhcm4oJmRldl9wcml2LT5kcm0swqAgIkRCdWYgb3ZlcmxhcCBkZXRlY3RlZFxuIik7Cj4gCj4g
SGVyZSB0b28gZGlzcGxheS0+ZHJtIGluc3RlYWQgb2YgJmRldl9wcml2LT5kcm0uCj4gCj4gSSdt
IHN1cmUgdGhpcyBmZWVscyBsaWtlIG5pdHBpY2tpbmcsIGJ1dCB0aGUgcG9pbnQgaXMsICphbGwq
IG9mIHRoZXNlCj4gd2lsbCBoYXZlIHRvIGJlIGNvbnZlcnRlZCB0byBkaXNwbGF5LT5kcm0gc29v
bmVyIHJhdGhlciB0aGFuCj4gbGF0ZXIuIEFkZGluZyBuZXcgb25lcyB0byBjb252ZXJ0IGlzIGp1
c3QgZXh0cmEgY2h1cm4uCgpBaC4uIHNvcnJ5ISBNeSBiYWQhIEkgbWlzc2VkIHRoYXQhIEkgd2ls
bCBmaXggdGhhdCEKCkJSClZpbm9kCgo+IAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBmb3VuZCA9IHRydWU7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgfQo+ID4gK8KgwqDCoMKgwqDCoMKgfQo+ID4gKwo+ID4gwqDCoMKgwqDCoMKg
wqDCoGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTQpIHsKPiA+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgaWYgKGlpciAmIChYRUxQRFBfUE1ERU1BTkRfUlNQIHwKPiA+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgWEVMUERQ
X1BNREVNQU5EX1JTUFRPVVRfRVJSKSkgewo+ID4gQEAgLTE3ODksNiArMTc5Niw5IEBAIHZvaWQg
Z2VuOF9kZV9pcnFfcG9zdGluc3RhbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZGVf
cG9ydF9tYXNrZWQgfD0gRFNJMF9URSB8IERTSTFfVEU7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgfQo+
ID4gwqAKPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChIQVNfREJVRl9PVkVSTEFQX0RFVEVDVElPTihk
aXNwbGF5KSkKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkZV9taXNjX21hc2tl
ZCB8PSBYRTJMUERfREJVRl9PVkVSTEFQX0RFVEVDVEVEOwo+ID4gKwo+ID4gwqDCoMKgwqDCoMKg
wqDCoGlmIChIQVNfRFNCKGRldl9wcml2KSkKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgZGVfcGlwZV9tYXNrZWQgfD0gR0VOMTJfRFNCX0lOVChJTlRFTF9EU0JfMCkgfAo+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgR0VOMTJfRFNC
X0lOVChJTlRFTF9EU0JfMSkgfAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gPiBpbmRleCA0
MDVmNDA5ZTk3NjEuLjMyN2QxYWEzZjIxMSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgKPiA+IEBAIC0yNTg5LDYgKzI1ODksNyBAQAo+ID4gwqAjZGVmaW5lwqAgR0VOOF9ERV9NSVND
X0dTRcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBSRUdfQklUKDI3KQo+ID4gwqAjZGVmaW5l
wqAgR0VOOF9ERV9FRFBfUFNSwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgUkVHX0JJVCgx
OSkKPiA+IMKgI2RlZmluZcKgIFhFTFBEUF9QTURFTUFORF9SU1DCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgUkVHX0JJVCgzKQo+ID4gKyNkZWZpbmXCoCBYRTJMUERfREJVRl9PVkVSTEFQX0RFVEVDVEVE
wqDCoFJFR19CSVQoMSkKPiA+IMKgCj4gPiDCoCNkZWZpbmUgR0VOOF9ERV9NSVNDX0lSUV9SRUdT
wqDCoMKgwqDCoMKgwqDCoMKgwqBJOTE1X0lSUV9SRUdTKEdFTjhfREVfTUlTQ19JTVIsIFwKPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgR0VOOF9E
RV9NSVNDX0lFUiwgXAo+ID4gQEAgLTI4OTQsNiArMjg5NSw3IEBACj4gPiDCoCNkZWZpbmXCoMKg
IFNLTF9ERlNNX1BJUEVfQ19ESVNBQkxFwqDCoMKgwqDCoMKgKDEgPDwgMjgpCj4gPiDCoCNkZWZp
bmXCoMKgIFRHTF9ERlNNX1BJUEVfRF9ESVNBQkxFwqDCoMKgwqDCoMKgKDEgPDwgMjIpCj4gPiDC
oCNkZWZpbmXCoMKgIEdMS19ERlNNX0RJU1BMQVlfRFNDX0RJU0FCTEXCoCgxIDw8IDcpCj4gPiAr
I2RlZmluZcKgwqAgWEUyTFBEX0RGU01fREJVRl9PVkVSTEFQX0RJU0FCTEXCoMKgwqDCoMKgKDEg
PDwgMykKPiA+IMKgCj4gPiDCoCNkZWZpbmUgWEUyTFBEX0RFX0NBUMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoF9NTUlPKDB4NDExMDApCj4gPiDCoCNkZWZpbmXCoMKgIFhFMkxQ
RF9ERV9DQVBfM0RMVVRfTUFTS8KgwqDCoMKgwqBSRUdfR0VOTUFTSygzMSwgMzApCj4gCgo=
