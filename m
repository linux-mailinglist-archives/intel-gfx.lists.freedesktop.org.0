Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6426A37767
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Feb 2025 21:16:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8FBF10E15E;
	Sun, 16 Feb 2025 20:16:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sn6+qlhi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E095F10E15E;
 Sun, 16 Feb 2025 20:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739737008; x=1771273008;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=6iGvrsEGZjbLneHXzeP0qXhL+uQbwkNS/Y+YtWZfe94=;
 b=Sn6+qlhiCQmY6wkYRhDCRl+hOTLJ+eaaeK3yjy+hwGWIcDi2b71mLRzL
 5j3yyb/idbjvyne/A9nvm9OXKi/kGO0RpSV+EFhbkwiJMGM3iNo+V2JsX
 VfGBQ5HW11S3sLQPlKocCIexv+wh0kBZkedyw11P+aMCkz0cYDQ5GlGB1
 1ycM3OCN7HrVo1z01W2yb+MlUpkExTHufxy+RXxFJ1akbmSSmri196qZw
 3zu9plwnVb0FJEJ6DrgUZ1t6LceqOxJX/PY6IgEZa2qeeISaIYnuQa2nM
 eb0v1dCmPZNsusRozWvnjRSn5Pu+0lmqD7opnVWZEWFUHJcq3g8Snmn7s w==;
X-CSE-ConnectionGUID: j05cGytwT2C+aLbbtspmkg==
X-CSE-MsgGUID: Og4HwNrvS6Gzs1tENjlYlQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11347"; a="51402441"
X-IronPort-AV: E=Sophos;i="6.13,291,1732608000"; d="scan'208";a="51402441"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2025 12:16:48 -0800
X-CSE-ConnectionGUID: l7y89sylQLWkNIN49+I5ZA==
X-CSE-MsgGUID: GZqxv/M5RYWvkNkUarJukw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,291,1732608000"; d="scan'208";a="114572306"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Feb 2025 12:16:48 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sun, 16 Feb 2025 12:16:46 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 16 Feb 2025 12:16:46 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 16 Feb 2025 12:16:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WMfZSHcUSwYdKhPUutEWI2hK4oBmISyz3S2qas6XjGw7YW4ZMFNr8w5lRDy4t7Xg0oiDXKqC1cHn+/uOwZ1NeiTJJTFsGzXXqpIrbSuaXXOC8PrKHHFjyelZxXFCro0EDPVarXYXIPnemfZhD7caqvkFvRO+8Wz179O4glW8BkUzS+ZgwDZBXHfl0yTeuyWDbtt6AEZCUmYuad9ZcEdAl3Lq/EMN75Yf0qhgyoZ9Ndpswohv6nDIVYSTDAXJfaQxYpIk2AiwY9o/Zc3UnXeoGxJHNQdSFmZTMY6cvZ0XlJor8MbTYjudt95AIwI5jObQkehgPPhhlU7pdZnqjch7vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6iGvrsEGZjbLneHXzeP0qXhL+uQbwkNS/Y+YtWZfe94=;
 b=rIQuFSDKXp9TcER64K/QpM1qp1YVHoSd2OatGSis4aX0DMZIpndp0hVgg6fvvp36S/6HXWMZnpCnnvbFjPaXbixLYudr+6H68ctNJFZb3JLafixF6uvjTQwpzK6j52rw4O3HNe0EGmOcQ2mwr/6o2HDxl4kk71RpdlZHAuABpZ8laDYtXM6PktyzpMvN9Pt2AU5rIDxUH5T3+uEwE4BqilY2jv6tC+37bfI7FZCaHDZgJakWdICpCnjyBM9xxc4z8ffgCt15Dcvg+g1yina+i4O2c0zCG6nGwOJBfJ87fDTwNT7yOIwWfA+/T/EPP/S4/RZkSCyTs1nF1fBR/EA2bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CO1PR11MB4915.namprd11.prod.outlook.com (2603:10b6:303:93::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.14; Sun, 16 Feb
 2025 20:16:44 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8445.017; Sun, 16 Feb 2025
 20:16:44 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Saarinen, Jani" <jani.saarinen@intel.com>, "Reddy Guddati, Santhosh"
 <santhosh.reddy.guddati@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>
Subject: Re: [PATCH v1 8/8] drm/i915/fbc: handle dirty rect coords for the
 first frame
Thread-Topic: [PATCH v1 8/8] drm/i915/fbc: handle dirty rect coords for the
 first frame
Thread-Index: AQHbgK6toyIk7loGaUeVKWvnl1mTNbNKXgUA
Date: Sun, 16 Feb 2025 20:16:44 +0000
Message-ID: <ec66cadd32ae2be4a944f845b7dc84a11e058487.camel@intel.com>
References: <20250213132559.136815-1-vinod.govindapillai@intel.com>
 <20250216200906.266532-1-vinod.govindapillai@intel.com>
In-Reply-To: <20250216200906.266532-1-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CO1PR11MB4915:EE_
x-ms-office365-filtering-correlation-id: 52041b87-547b-40e9-c4e9-08dd4ec6d52d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?czVNN0xjSkk3UU43dTBTNmlVT0FhSWkvK0hJUGNrUUlNeVQwYU1lcGZjdURV?=
 =?utf-8?B?QnZYTy9NbzhqL0drWnpsV25lSnlRR3Uza0pXTVJBaXYzZU9sc3dIVkEwZTFD?=
 =?utf-8?B?Lzl2Q0lvVFM1L3czTzdBa1R5eUFzRzdVRHJsR216RnQrN0szUzQ3QjZQd0VR?=
 =?utf-8?B?M1VWSnhBMG5LUjZzR3ZuUmVBS2tzOEYzZFNDZE1VOHhJZDdFZzQ5YkRrQ0JV?=
 =?utf-8?B?QnpjZFVJdUZ1OGJWdGxUMWF2aHZCa1E2cS9zK2daSjBCYlVuMS9UY2tFYlM2?=
 =?utf-8?B?bkxMZThhMHp6ZWhGNk44c2k4YitsY1czRUtCNkZUZ1podmN0OVBHeXBLS09t?=
 =?utf-8?B?MG1ySnc5OStNcCtZem1hTmhseExLc1M2aGlNWHdKK3o3TzZiYjVldS9kVlNN?=
 =?utf-8?B?QUVXVE5JU21OQ2MrdlM2NHF3bXlRZkU1blpJRUZZZSswbVFSY1hjd1Q5T0NO?=
 =?utf-8?B?SHcrUUNSS3k2SDdjVlhublc1QVNjbElEOTRwT2l4S2dmcjRSTUZlOTRHbHdl?=
 =?utf-8?B?aFFOZGRyak9UUCswM2FRNGVnWmNwNEpkUmMzNVJWNXJ2ZW81Q2lIRjJhclkx?=
 =?utf-8?B?L3ZSenlrSG43eEFQYmptNUJuTTVYbWU4SklwNVQ0aTlEQ0p4NmQxZzFYZXhV?=
 =?utf-8?B?bFJ6V1pML1lqL0RVYlVYUnVFZ1owajNFOW4xSGRpRzF3NitXNEs3Rit6dm9v?=
 =?utf-8?B?aGtGeWQ0UWx4UUVQZFEybTJPWmJuczBaUkVNYzBuWk0yeGRscE42NXBTYVFo?=
 =?utf-8?B?V0RkeUpUSUZCeHVhWUpZQVpUNlprNjU1MUx0SnFiZkgyTnZ1NDlLU0kyVk55?=
 =?utf-8?B?aXRIZ1RtNjJnNUhiK1RNZUk3RlJERHRwbUk0VHRBVEwybmd5MDlHOHZ3MjZO?=
 =?utf-8?B?ZEUreE9vN3NOMEZIRjBOa3UybklzU3FKVHBXVEI4SW9TYmFCK3V0MUpUSzA3?=
 =?utf-8?B?OEp6aGZQcnYvZ1huUE1NRXpwSUN4K09xSVBtQmx5MVhNWXNpRXhTZ2psd2tm?=
 =?utf-8?B?ei9kalk2RWZpTWhMbnpWUzB4UWVQMmxFVmZETVg1akJkWXJ6MzliN1UwRUpm?=
 =?utf-8?B?c3dHMmRObjgyNEtyMEZ6TWVpTmpOemMycmhhQUMzQWZVZXVUUXVDTFdycS9K?=
 =?utf-8?B?SGhTM0YzTys4ZlovWVF2c0hrcFFuSFZ1UmpQUWVmM0VrMkxJeVlVWWZGUTht?=
 =?utf-8?B?dVl4UGpMdjR6K3pDUURlMVRsUHhCMDcyYlBzYTV5NXJnU2ZodXdtQndVVTFh?=
 =?utf-8?B?cTFWVEpFQng5c2xRQ1ZLREtWTENxQlRDRktGOUV4c09Cek1RcThBUDZhZVFT?=
 =?utf-8?B?SWU3TUdpT0tCMUE0QUJHNkcyYnRLMGRiVENsc2kvNUR2cUFFTGo4cXRXRmI2?=
 =?utf-8?B?Tjd1d0VGaVhyWjlVa3UwbzVZcm9oMEZqL3RZejRoKzRaL1lGTnVjZ3BEdGRT?=
 =?utf-8?B?UFZsY0gvSG5oTEQwdDdkeEF0eExvNjBlbTMzT2xQUllWT29QSkFJMUErdng5?=
 =?utf-8?B?RUlROHNhdURIZC93Y1lreXZ0aUhwVmxvZWkveXI1ekp6WTNoeldZNFZMdHhG?=
 =?utf-8?B?TjBxcXFIY25OUnppb2NXeFpJWUQzbGxRYnUrSjZGQjh2RjVxSEpGSWdWUis0?=
 =?utf-8?B?Wm1wYWJSSkhvMU45NmhFYXJxR3dSbjBBZEtEVUVvSk5ZRW9DZ2RjK3JyWEF3?=
 =?utf-8?B?WUJPMmkvYThBYU9CRSs3dnZORTdRQllQWmxtY0h3a3lua2oxQzBsUnE0d0ZK?=
 =?utf-8?B?OTFQenl0YTMwV3o2RWdGU1doNTByeTdHempSMzRDelN0Mm5LYjhTb0R0VzBO?=
 =?utf-8?B?YXh5bGNnS00wUXdDc3JXa0VKV2dLaFUvZkNHUmtYODIrT3drODdFU1VzV2FH?=
 =?utf-8?B?a0hiOFVWcXM0NWdvalc4cXN6SEdqMHhhNnlYL2lvNHRzN0Z0NzZFOS9rME5G?=
 =?utf-8?Q?TBXLDvHaAkxfCD3h58YF/l0YSl/ekY2v?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T1FWcjVXWmVUSHl5YXpCWFpDWE8xenFvM21wcUFsYWVXZ0FHY01SRFFxNEZB?=
 =?utf-8?B?UUpJVlNIaEUwcmpmeW9lc2JPQmVnOFBSQmJBN2FOdnRCVW5XdTlMSU42ZGN6?=
 =?utf-8?B?SS8rVmZTZVBMS2FxKy9FSkl4SzMybmJQSW55NmplTkFoZy9nWVE3b25yRFZH?=
 =?utf-8?B?UUJhVGJZaWhYbERKRmxrSnFMMEZkc04rb3hwTjQza3lqMisza2MzN1RUTDdM?=
 =?utf-8?B?ZVpyQkhya2tsRm8zdEwzS0k4Rm9zcVppTWVZdjZTQStVYmYxWnlFOVRmT3NL?=
 =?utf-8?B?Nm5EYlVPNHV5YnRvemZEalREamlnbnpUQ2ZydEdGSTVEczgvQkJXV1hGYjBF?=
 =?utf-8?B?UlVYNFdrdXdzcGFHdEEvaStuVndqK3U0VVJDc1RGMHZUdTFEVWpuRlRHcm44?=
 =?utf-8?B?OERja0oyaVNUN2VoM0NCeEdrTVd4TENjRHVMNzNtek1PUXo4L0REc2VjUUw4?=
 =?utf-8?B?d2tYZW9FLzVhenlnNCtzTFhmM29LRFVBQlJzakFXcElXSmF0NEoyc2crMTVo?=
 =?utf-8?B?T0phSWZNUHlEMVB4NkREYkpOSjNjbWZWTmNNdmZ3VGtlNDdjVXdCTXVZcGpM?=
 =?utf-8?B?RHphRHl2RE9lQklHYlpiVTJJMFdCQ1k1Mzc2MHM4TTFnQ29SMTJtK0J2Q0Q3?=
 =?utf-8?B?MkYxUXVjdVh3QW5mRE85MHBYQTZEWTFnSURlaGU0UHVGVnRISVZNNVVKVDVB?=
 =?utf-8?B?T0svK2tNYU9QbVlEaTJYMUZWSjIyeW42Z3ovcUpaNllZLzFxNUtXbmEvTTAv?=
 =?utf-8?B?QmhvNmVSeFlyNGIrSDRLQkhGb2hiWFA1R25mNHJWck9OOVZxckpKM2V0SExN?=
 =?utf-8?B?N1lJTExydzJPV1p0UVltUTJUd1NmUWFzOWRkd2QvTlVZbklib09BclRZTFFC?=
 =?utf-8?B?OXBMelVTN254NmJTNG9rN2dDNWpJUlB2UDBBSVhSSmNwSEtUL3BoWCtGQmtu?=
 =?utf-8?B?alEvSEk5anVTQU05TTFzYjg3UU5jVVo3TUQ4ZnVybmp4MUlLSjVydVI2Z0lU?=
 =?utf-8?B?TVV2bzVzbGlxbTZENW13cHBBdDROZjA4OVQ1bVhaT2JEY2pDQTZMbnpHdWEw?=
 =?utf-8?B?dmREc3llakR0ZHBZRVQwczZtSnQwRHBiZ1Y4RzVMSnpyV1pVMjBrcUY0Vkc5?=
 =?utf-8?B?RjJzbEZuekdmbW9OaDRiSHlzRXFXTzBiVzE1VFdKL2VnQzBieGwrdlI1bits?=
 =?utf-8?B?SVkwNTEvdVphR2V0Tmd3L0g5NjAzazBsbHdrNHJNSTdiUDhVVElVUFg1Mkc3?=
 =?utf-8?B?T0V4SSt3a2pmdXFmRXVSaTAyT2tKNlEvTEdUNkc3WmVnS0hzdnhINkJZOE4v?=
 =?utf-8?B?RmFaUWxwV0l2MDF1QmJMNmNoV2VrSnNzY2VBZ09KbnNXRUw5bndpUnRHYUl4?=
 =?utf-8?B?SzJ6QVZhVzJEQ1FTdzFYbGhHaEdFMkNJYStINHJJUU1GeWpNQXN6TGNkRXJI?=
 =?utf-8?B?N2NUaStnM0NmVTdLcmd3c25XUzhFc0xkcmlRZzFJZ3hHMDJXMy9SY0tiZ3pV?=
 =?utf-8?B?eEI5Q1k0eFhGbEh1MmR3Mk9EQjJnMmtSOUlOejdFeGc3dDFaeGFDUHJDUlpt?=
 =?utf-8?B?L1pZOVZOcFZBKzNZYitDN0Y1WnNjN3AvcGNKVVNlR1laQXY1b09hbEkwWWdt?=
 =?utf-8?B?WDlLWWI0Umx0NXJac2JoL1Y0ZkNSRWUrM2JML0VMM3FncitXeHF6Wmpmb0N4?=
 =?utf-8?B?bjRIZTN2R21QWVV2VUN5WnU4dFEraE9LVm1rZ0djQlJnREpzcXZ2dnFMQmVw?=
 =?utf-8?B?NExlSTk0U2JZQmJKVW5QTjFLcmgxcENMZ2lES2k2cVc0UDNxZkxrMGtyNCtE?=
 =?utf-8?B?Q3dlZVVaVmdsbUN3U1hsUlhYRUkxZDZraVVuUE9CbWwzUHI5UXRrZGdISzd6?=
 =?utf-8?B?ekl4c0JjOG1YSzJEZmZ2S2FSdXlEUFdtSmkxUGFVNmFlYWxUZ3V6TkpsRnFn?=
 =?utf-8?B?Z1hIaVcvcllneWhjcGhxbWNwTFVCdzk4WUtacGtycDZJMzlCdEtZdkQrQStj?=
 =?utf-8?B?dk8rSG9Fb21VTU9VUWtBd0ZEQzBIK1lnczlOOTBmVEpTVmtsSUlVSExjTGE4?=
 =?utf-8?B?TEtKMExJNFBZS05seVl0SituMWYwdUllQUw2QWJWTUJ5TXpGWVVTNzlKUVor?=
 =?utf-8?B?YmVnZUlJcTdxNXBGcTNNWUpzL1JITWhkaSs3eHNFM0s5eW1JV3NST29sVVBS?=
 =?utf-8?Q?VFJASQpjys8vdhfpN19HxIw=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <32204826894CC848901870D5CCEC9B39@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52041b87-547b-40e9-c4e9-08dd4ec6d52d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2025 20:16:44.3472 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CU1ES4w0CdZUgKK1WaAo51SBmtubhkoWe/MyvdBibkvyA/wH+SO3WPU7TQfAVmgpmeuLjVeBqnIq1/OnvuqeGW5Gh6v1M2Vf3wuUJVipdVI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4915
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

SGkgVmlsbGUsDQoNCkR1cmluZyBzb21lIHRlc3RpbmcgSSBub3RpY2VkIHRoYXQgZm9yIHRoZSB2
ZXJ5IGZpcnN0IGZyYW1lIHdoaWxlIGVuYWJsaW5nIHdlIHdvdWxkbnQgaGF2ZSBleGVjdXRlZA0K
dGhlIGludGVsX2ZiY19wcmVwYXJlX2RpcnR5X3JlY3QoKSBhcyBmYmNfc3RhdGUtPnBsYW5lIHdp
bGwgYmUgTlVMTC4gU28gd2Ugd2lsbCBlbmQtdXAgcHJvZ3JhbW1pbmcNCndyb25nIHZhbHVlcyBm
b3IgdGhlIGZpcnN0IGZyYW1lLiBBbmQgZm9yIHRoZSB2ZXJ5IGZpcnN0IGZyYW1lIGFmdGVyIHRo
ZSBib290IGl0IHdpbGwgYmUgY29tcGxldGVseQ0KYm9ndXMhIEFkZGVkIHRoaXMgcGF0Y2ggdG8g
dGhlIGxpc3QgYW5kIGlmIHlvdSBjb3VsZCBBY2sgdGhpcywgdGhlbiBJIGNhbiBzcXVhc2ggdGhp
cyBwYXRjaCB0byB0aGUNCmZiYyBkaXJ0eSByZWN0IHBhdGNoIChwYXRjaCA2KSBpbiB0aGUgbGlz
dA0KDQpCcg0KVmlub2QNCg0KDQpPbiBTdW4sIDIwMjUtMDItMTYgYXQgMjI6MDkgKzAyMDAsIFZp
bm9kIEdvdmluZGFwaWxsYWkgd3JvdGU6DQo+IER1cmluZyBlbmFibGlnIEZCQywgZm9yIHRoZSB2
ZXJ5IGZpcnN0IGZyYW1lLCB0aGUgcHJlcGFyZSBkaXJ0eQ0KPiByZWN0IHJvdXRpbmUgd291bGRu
dCBoYXZlIGV4ZWN1dGVkIGFzIGF0IHRoYXQgdGltZSB0aGUgcGxhbmUNCj4gcmVmZXJlbmNlIGlu
IHRoZSBmYmNfc3RhdGUgd291bGQgYmUgTlVMTC4gU28gdGhpcyBjb3VsZCBtYWtlDQo+IGRyaXZl
ciBwcm9ncmFtIHNvbWUgaW52YWxpZCBlbnRyaWVzIGFzIHRoZSBkYW1hZ2UgYXJlYS4gVGhvdWdo
DQo+IGZiYyBodyBpZ25vcmVzIHRoZSBkaXJ0eSByZWN0IHZhbHVlcyBwcm9ncmFtbWVkIGZvciB0
aGUgZmlyc3QNCj4gZnJhbWUgYWZ0ZXIgZW5hYmxpbmcgRkJDLCBkcml2ZXIgbXVzdCBlbnN1cmUg
dGhhdCB2YWxpZCBkaXJ0eQ0KPiByZWN0IGNvb3JkcyBhcmUgcHJvZ3JhbW1lZC4gU28gZW5zdXJl
IHRoYXQgZm9yIHRoZSBmaXJzdCBmcmFtZQ0KPiBwcmVwYXJlIGRpcnR5IHJlY3QgaXMgY2FsbGVk
IGF0IHRoZSB0aW1lIGVuYWJsaW5nIEZCQy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbm9kIEdv
dmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgOSArKysrKysrKysNCj4g
wqAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gaW5kZXggNjIyMmVlYTRiMWNlLi4yMWZkNTdjN2Yx
NjMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJj
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBA
QCAtMTIzMCw2ICsxMjMwLDggQEAgaW50ZWxfZmJjX2RpcnR5X3JlY3RfdXBkYXRlKHN0cnVjdCBp
bnRlbF9kc2IgKmRzYiwgc3RydWN0IGludGVsX2ZiYyAqZmJjKQ0KPiDCoA0KPiDCoAlsb2NrZGVw
X2Fzc2VydF9oZWxkKCZmYmMtPmxvY2spOw0KPiDCoA0KPiArCWRybV9XQVJOX09OKGRpc3BsYXkt
PmRybSwgZmJjX2RpcnR5X3JlY3QtPnkyID09IDApOw0KPiArDQo+IMKgCWludGVsX2RlX3dyaXRl
X2RzYihkaXNwbGF5LCBkc2IsIFhFM19GQkNfRElSVFlfUkVDVChmYmMtPmlkKSwNCj4gwqAJCQnC
oMKgIEZCQ19ESVJUWV9SRUNUX1NUQVJUX0xJTkUoZmJjX2RpcnR5X3JlY3QtPnkxKSB8DQo+IMKg
CQkJwqDCoCBGQkNfRElSVFlfUkVDVF9FTkRfTElORShmYmNfZGlydHlfcmVjdC0+eTIgLSAxKSk7
DQo+IEBAIC0xMzEzLDYgKzEzMTUsMTMgQEAgc3RhdGljIHZvaWQgaW50ZWxfZmJjX3VwZGF0ZV9z
dGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gwqAJV0FSTl9PTihwbGFu
ZV9zdGF0ZS0+bm9fZmJjX3JlYXNvbik7DQo+IMKgCVdBUk5fT04oZmJjX3N0YXRlLT5wbGFuZSAm
JiBmYmNfc3RhdGUtPnBsYW5lICE9IHBsYW5lKTsNCj4gwqANCj4gKwkvKg0KPiArCSAqIEZvciB0
aGUgdmVyeSBmaXJzdCBmcmFtZSB3aGlsZSBlbmFibGluZyBGQkMsIGVuc3VyZSB0aGF0IHdlIGhh
dmUgYQ0KPiArCSAqIHZhbGlkIGRpcnR5IHJlY3QgY29vcmRzLg0KPiArCSAqLw0KPiArCWlmIChI
QVNfRkJDX0RJUlRZX1JFQ1QoZGlzcGxheSkgJiYgIWZiY19zdGF0ZS0+cGxhbmUpDQo+ICsJCV9f
aW50ZWxfZmJjX3ByZXBhcmVfZGlydHlfcmVjdChwbGFuZV9zdGF0ZSk7DQo+ICsNCj4gwqAJZmJj
X3N0YXRlLT5wbGFuZSA9IHBsYW5lOw0KPiDCoA0KPiDCoAkvKiBGQkMxIGNvbXByZXNzaW9uIGlu
dGVydmFsOiBhcmJpdHJhcnkgY2hvaWNlIG9mIDEgc2Vjb25kICovDQoNCg==
