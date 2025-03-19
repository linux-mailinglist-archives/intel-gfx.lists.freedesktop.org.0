Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 377C9A685F2
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Mar 2025 08:42:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7D7310E2E1;
	Wed, 19 Mar 2025 07:42:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ecmgqNih";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E60610E2E1
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Mar 2025 07:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742370172; x=1773906172;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=P05AJ5m19AHAzMg6Aj3CSPIuyATh55oohO8k2Qv9UjQ=;
 b=ecmgqNihuqo+nXG1GG8dBJgtwGT1lxy09d97Xmc/TACR/ATtOdhBTH9Q
 oVwgo8tTC5ouCig7P6/7oiTZWAkpaUqXwOAzTcPvQlFGjlxWt9dQe6Dkb
 ET9jTsxpiQgK+VpWmyzJ5VUXPlGDdMdb3eu3U3wi5Ow+DNMNg1s+dOsbg
 t3c7U3Obh3mdX2wtDKPwGQBAHBObCQlitkovDDvzIoDfLIXwNKCVf/9rn
 aWJDf2mH/oaDmAS84CT5G+DL4bgtBfYJ105n99p8d2RTBkagRTSa0nDpy
 dVRdiH6VwETs56oRZggsl/Npv5tiMPANmnfkXg7EUUTg0vHEGQa8L9S2b g==;
X-CSE-ConnectionGUID: INQCA4S8QPOUY6c9tx8JTg==
X-CSE-MsgGUID: IPL8Y3FKSHWxylIha8wBPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11377"; a="53757688"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="53757688"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 00:42:47 -0700
X-CSE-ConnectionGUID: nMPGVfSMRbySCLK96YEA3A==
X-CSE-MsgGUID: Uaf+tDy5RcuRAx4exWzTmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="126710584"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Mar 2025 00:42:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 19 Mar 2025 00:42:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 19 Mar 2025 00:42:46 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Mar 2025 00:42:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ED51eVxTtAvRtrjl8qzE6pFbjTeWmrHoEHdXjrmJRFAGLN+7wdVIuhtLgb6+VJNRAjscjavTshBWtgSInojNh+5YAyWB3L6fe0krExzdEIUo7brv+1AzcBvZW6I8zMLh1w5fzpsahzLuF0D/2Eh57aLgMdJ5IiFCIGXit6xdbHia5Y+kgwej5RuE2bBLt2oXrBVi7F91t6ws4Z5cFBRywNRrx3+LuFA1Jtzm8LrjJOtpowlFlYM5E/iT+BhsQHhX69Ot9Vmh9N61YdCBqhSZ6EGWMgx6fwpWcr6Rz0nuNOyvTPSID51oYce7nYGsOXYbRBFMWJmVSHSpLLfZn8tA0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P05AJ5m19AHAzMg6Aj3CSPIuyATh55oohO8k2Qv9UjQ=;
 b=uH3LDWDXcKUkGAEChqmEKrPdhG10OzEAIu6jSu85D16PaSTLUv9d/GtNnml+Cy8juWjj8T0XGTFw2FFrEiS+NX6XoB2sLnXYZvkZbPlNrbYV6NV5sbcPpXFVopZ31w5mmNlTSYKLzcZz2Dz1d9u1iopT/oUwfEXmGiV/GZeJHAMbE/kWRpiya6yoGcNPLyoc/2QdOP7WaUwQ4lF9OPHOCrC2vwnbjF8iPWY/SfDPAYFnGj/AGVlJDhxsicHS4/ak6ubfo4fSpV1G+0FmQWdtB31iJ4Fnj2mVbEyLlOR2KkUnRhcGTvXkYS2+d4RiihxRY6ZtpfrKnIrI0A88H1Dcaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB6406.namprd11.prod.outlook.com (2603:10b6:8:8b::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.34; Wed, 19 Mar 2025 07:42:25 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8534.034; Wed, 19 Mar 2025
 07:42:25 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Read panel replay source status through
 PSR2 status register
Thread-Topic: [PATCH] drm/i915/display: Read panel replay source status
 through PSR2 status register
Thread-Index: AQHbl97Bsg0x6EhqFk6+KT5b5OyGybN6FSgA
Date: Wed, 19 Mar 2025 07:42:25 +0000
Message-ID: <3c850b2b8c2a9dc31ed88db2eb0103febe16363e.camel@intel.com>
References: <20250318075859.2638954-1-animesh.manna@intel.com>
In-Reply-To: <20250318075859.2638954-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB6406:EE_
x-ms-office365-filtering-correlation-id: a17244e5-ae6f-4040-6886-08dd66b9976c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?NEdXNFZDM2o1Y0hXV1oyVVRUT0ZnMUNTTnNVMlJBQ1RrK0NPVDhGTFk2NUd3?=
 =?utf-8?B?Yk5GK1owYmppN0Vmd3U0QURwcHhLRm4vSHlwWUFSRHFIVXY2bithV0FMMEd6?=
 =?utf-8?B?Vnd5TW9lRWNid3p3YXJFUlpqQkdDbjNralR4YzlVWmdDaHEyZXo1K2pJaXRy?=
 =?utf-8?B?MlZxdEJDeGMwOHEzY0RQZS9EYWtMdmRIaXQ1V2pkSFMva1RXbjMweFlvYjh0?=
 =?utf-8?B?dUVQbTM3eXd0TVhpeFFHUTlWSzRPZHZPbE0wUEhxYjV1Y2FRNEZua21mOVdi?=
 =?utf-8?B?WHpUeng4MVVzNlBmS2Rydi9HK3lBbUptZmZSakNweDFZNlR5RVBRQUhwNmtk?=
 =?utf-8?B?UnFYcFQyemQ0dVlERHFMdFNTZ0dvY2lIdkUzemE5RXRRUnhDRy81czlNUitV?=
 =?utf-8?B?ZE0zWDlrZzg4dnpqalAzYTRZeXpEd2Ntc29VQUJOSHZFTURPVjlRU1N6QW5I?=
 =?utf-8?B?QkwvcTA1WFljREdnVTRhVFdjdnplQVMwZVBZMC9qTHpTckVsRHJhUkV6R2Nj?=
 =?utf-8?B?MWlobGVlaEtLM0I4dnhnT0pJMVFxNGc1QVJzUTdJdjIwMU02Yk1XdzdmbGcw?=
 =?utf-8?B?MUVENFpBaVM3NExuZkc2V1lTU1p3eWpVM1ArOTJjbjEwbTR6TVNDNytiK0Zm?=
 =?utf-8?B?aDhiaENVQWpzQmgwSjFkTGw5bXpEdmV1RHhhZnJ4cWtlRGRGa1A2Rk40akZt?=
 =?utf-8?B?eHJ1QXJsTmE2VXprZ2phSVZXTE4zVEo4c1J5aWlNSE9Ea3dpNG4wUE9iL2pW?=
 =?utf-8?B?cTI4QU05ODNXaVdLRjBmMHVWSE9BclNTREdocVJ6WDI4ci9qem5manY4ZFJG?=
 =?utf-8?B?QnJPVkgyS2ZwZlBwT3BOb05DQm41d0tXUmF5QnBCLzkrTXFFT3dzc212WEpM?=
 =?utf-8?B?TkdQdXU5d2hMdUhIM3VlWDlVR1htNzJnUUF5VUdLVnNtcklucS9lSnNsZnZI?=
 =?utf-8?B?WjZpVGJ2Ry9oM3h2MTlCTmxVNnJuUGZzOFNaaXBSd1RPQ0l1R29pUWFFUjFN?=
 =?utf-8?B?bE9BSnNNdlVFK3VNRjJwdEg4VWtqZHVldk1vN2RWdktBZ2cwSE53STZqY0Ji?=
 =?utf-8?B?bzJGbDREZ2Vxc2pzbS9NVkJGc2FLUDFDd2RDS0s1cUg5aUsyODFGc2Rad2Vu?=
 =?utf-8?B?WkRzdWlCQVRGeS9xdVdTZmljZXh0dy9qWHhRNEJGTDVOSElpQm1pSnovdlhs?=
 =?utf-8?B?SFZ4Y21UNTdtWWt2L2ZwSXdZbWhEUjByeEI1ZmRHTk5USTVwZlNteE9vV1BV?=
 =?utf-8?B?QUxqYmNrWkROUGZKWHJNQlM2azQvNlkzMHVvanJkc0VaVlBiVnJnRko4YWwr?=
 =?utf-8?B?b3ZFcU9DU054Z2JSeU1jSk5YQ3luRjl3VWFHUUMzcEVoekFPaytueUdjTTVC?=
 =?utf-8?B?OSt3Z2l6VFRqUEJVcDRxd0FqczVRbVQvTTA3WE5RcGNFZHdBN3o5Q0JjTnpQ?=
 =?utf-8?B?Zk9lcCtYWDhCclA4ekhVYmZBYnMzZ0xiQTkyQ0ZsbTlxVnRkUXI5K0NSRWxj?=
 =?utf-8?B?SkMxSUdLVUxITUw4ZS9rRm9CV2RtdVpDSXVqSFl1K2xGTldGMWEva2JVTDdl?=
 =?utf-8?B?N0dQSmU5WmozRHE1eWpqK2FlUis1aUJoN0l0MHhGRklieUczT3g5bU5valIv?=
 =?utf-8?B?SkNVOGF6Vmw0d292TzR1TEYzUDM1dURXSmdyTGZEWmJ6WGRZMFBrSEZybXRX?=
 =?utf-8?B?bloyZWVvSU5XSHJ1WW1vaWFrM3IzL2s1UkdLcVJ2RWpUcnRmaWgxUW11MGMv?=
 =?utf-8?B?ck1nYnUwdC8vcDVzNmNjcTl4WGxNWkJ5R0VLRUtrcEQva0g0VEZmM3NEVEJa?=
 =?utf-8?B?bGZSNlFqd3I0ZXh3aEJqcGsyK2VzajVuOGhNNnJQU3BMd0p0UWZ2TWllLzZM?=
 =?utf-8?B?amRjQnlnNzJtSmRYZ0xMaEFjVThET0hnYzJkYm1vSXVlc2pITlQ4cVBQMDZm?=
 =?utf-8?Q?0MAspq88pMmKJ01M/XSh4eMkoyCqvzbd?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?enVZQ2I3clRUUWNwTUs3ajlCSG1PQ1pMN1VhTWdjMzJRdkgydCsxN21jeVI1?=
 =?utf-8?B?M1kyc1c3YkJHK1NxaW1vUEN3T0pqUXJHWUtTMnFaajVGTjg1T1NrdFhxRWw0?=
 =?utf-8?B?TjV1ZzBITVNyZjZoU25lVkx3TllZQVVLQ0UydjNZYlZObUhRbE9MVmZrbjhC?=
 =?utf-8?B?WUFYZ1VWR09mMHNuVjBMVVhVM2o4VmxkR1M3Y1VycnB4RGJhRkMwcGdCd3Ju?=
 =?utf-8?B?aFpWUlRiVi9Yc09OZy95V3VTNm5ITDZYTyswKzRUazNDREkxRXFMTFhQVENl?=
 =?utf-8?B?N3UrZ1dGYzJFeW81SnhreXN6VkpmdVIwOFViTmh1SGxVWm9oTm04ZGFZYUJB?=
 =?utf-8?B?a1pXK0xONTd3MXBHbmlqcDVTd0dSd0VKL01hUCsyYnpxS3ZSZVZERnAzcVNQ?=
 =?utf-8?B?NUszM04ycXQ1OFhaZ0lFMkhFTzU3YjNnOGdNbFBPUDBuMmNjRGFMc0x3Q2VU?=
 =?utf-8?B?OEJKRVdBZy9UMnp0WmJsYzFydGtqWEhjazVES1ZsQnUrVEtRQnBMNk1HRDNr?=
 =?utf-8?B?VDJFSTVObm5rVjdMTmhxaDJpVjBEamJQOStVRmJmUXloNU02THdZNWZaYmJm?=
 =?utf-8?B?MHdvTFlQNEFHUE93Q3RvaW5SeWl2U0YvMVFVek5Jc0ZLc2JVV2crU3VpbXdo?=
 =?utf-8?B?QXRFSzhKTHdVN0E0RUNtWVBwVUJpVVJqbloxSDZlRjNIYWltMitYMjNjM294?=
 =?utf-8?B?MFlqbXdWSzVQV1pjeStnMUZKblk4U1hQQi9UWWREMlZmS3I1ZkV1RVBqbmk1?=
 =?utf-8?B?NTduMUhoMWVhTmthZDVCbmJOMzNYSC9xNitVSWRqYjBiZnBmTDZZcDMyNjFD?=
 =?utf-8?B?dDE1UmxhU2xoczd2TmVFMENzRHZBTlpldGkvUFFTSDJSNVVCVmtKbDBVV01B?=
 =?utf-8?B?YVNjc0w3L0lxUjNodEFxRlNLRnUrRHJYQlZSUjl3STF0a2Z2NEpYTUVld3BU?=
 =?utf-8?B?M282Tm5mSkJUUjNTa1RJYzdQaUlRT2xmVmhSU0hvVWhjWXYxRTc3Vk9QMC95?=
 =?utf-8?B?cVozeUc3WWRDb2hrN29ybDdURVVzS25XM1U4ZVlFVXhHd01uK2dySy9rK0d0?=
 =?utf-8?B?dmRFQ0lrYnoxNm1CM2xLNm9RcWlKWTUyMWdGMi9uUE1KMXd6YjZZS0FzM1Ni?=
 =?utf-8?B?SHRFbUU5TXJ5Mml5S0dCSVhUY1BjQmM1c21Vei9JTjBhZXRMcVFpWm9VTElp?=
 =?utf-8?B?bWRDZjBqMCs4bnlEeURkNXN6MEQvQ1duTnBwTW5FaWJqY2xuclZuQ0NOMVVD?=
 =?utf-8?B?MktnM3gybGpBa0Y5c0daQUdzWm5mcnJyZjZIMHUyVGxNc2tOSjhMcjNmbk1t?=
 =?utf-8?B?bkNtLzRIZXVJTTQrZEEySyt5VjVmbnRCVWFSZDZIblF6cXNFM1NvZFBGb25p?=
 =?utf-8?B?V25qT0dMRys2ek42czM0TzhzazBuRWRHRnlLSTgzUmpMN1ZHaFVmQjRCNFRZ?=
 =?utf-8?B?ZThNNEJHM0ZNWUxLUXZ4K3JDYyt5YU5qZTJneExxM0tBSnJ2NGFRTXdVSGV2?=
 =?utf-8?B?OXZPUjMyS01LbmlDcGhUZVpMMG80TVY1UjBDTk43MXgzWUJiWitRK01xajEr?=
 =?utf-8?B?QTRUL3lxV0pza3FlR2ZLQVVMM3lvNHQvQ3BOV3Z1N0dOaCtqYzRZemhSbjhY?=
 =?utf-8?B?UytGQ1NUaExXK3lwL0NqUDgyRDd5MjgyZXRZQ3MwLy96Y1hTajZNOWhoNFE3?=
 =?utf-8?B?UUdQWHdTRHVvYnp4RkYxVXp3bEp3a2pkRmFlTkJtSnBZV24rd0w5K3hLR2ls?=
 =?utf-8?B?bUdEeGhjU2N2VlpzZXY2QUdlelFOQTNXRkQzenQwUGtmL2xGbXphWnd2bHlJ?=
 =?utf-8?B?SVhsYmNHdlRHNEdKVVFzWUdhV0RQSnF6dXAxbmxJYnFVbkZ3ellGcHFDZkVW?=
 =?utf-8?B?dU1pRkJIdUJaYXpOZjhQQlVIRlNvTC9YbmhqSTdrRjFPQmtGMVJqZ1M2dWpu?=
 =?utf-8?B?UXFmajBnd0t1T0xZQWZ4TTRPVjFabUdsWWt5TUxZMy92bm5aUWk5Qm4ybWI3?=
 =?utf-8?B?WjBJdFB3KzQzMDNkU1hnL291SXREZmVFcGVlM3VndVZrVkFVeXViVW93RHZI?=
 =?utf-8?B?d1pscEVDUitNUUVJeExEZUdXS0dpSkJldVBoalZPaVhLOWpUZzNEYnZETW5o?=
 =?utf-8?B?d2VKQUpQS1ZxbVpSM1VZT3dQNW9zcmhlTzNnWnMwNTUyNWVYU2tNWHRNVXlR?=
 =?utf-8?B?VGxqZkw1T1J1MUdhOU0ra0dNWGdHRXhNSi9uNjU0ZGlvbk5KNWlCeHZZYzJ0?=
 =?utf-8?B?ZTJDdVJlMWJ4TFgwV2RVcEdDTTlBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CA81538E2F5DFC44A87784A09B56097B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a17244e5-ae6f-4040-6886-08dd66b9976c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2025 07:42:25.1624 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C859X2hR3+kV5vssv13z016izxaeHCXN/Cug50mviWx4y/EA8XTYDw7CMKw2k3Xod9Av8MzY3ZWcGOHmVn3VPWxE1wxZ1VuQctqEGJFbWzk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6406
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

T24gVHVlLCAyMDI1LTAzLTE4IGF0IDEzOjI4ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBQVEwgb253YXJkcyBnZXQgcGFuZWwgcmVwbGF5IHN0YXR1cyBmcm9tIFBTUjIgc3RhdHVzIHJl
Z2lzdGVyDQo+IGluc3RlYWQgb2YgU1JEIHN0YXR1cy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEFu
aW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91
bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4gLS0tDQo+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDQgKystLQ0KPiDCoDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggNGU5MzhiYWQ4MDhj
Li5mYjJjYzU2NzI3YWYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiBAQCAtMzYzNCw4ICszNjM0LDggQEAgcHNyX3NvdXJjZV9zdGF0dXMoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCwNCj4gc3RydWN0IHNlcV9maWxlICptKQ0KPiDCoAljb25zdCBj
aGFyICpzdGF0dXMgPSAidW5rbm93biI7DQo+IMKgCXUzMiB2YWwsIHN0YXR1c192YWw7DQo+IMKg
DQo+IC0JaWYgKGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkgJiYgKGludGVsX2RwLQ0KPiA+cHNy
LnNlbF91cGRhdGVfZW5hYmxlZCB8fA0KPiAtCQkJCQnCoCBpbnRlbF9kcC0NCj4gPnBzci5wYW5l
bF9yZXBsYXlfZW5hYmxlZCkpIHsNCj4gKwlpZiAoKGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkg
fHwgRElTUExBWV9WRVIoZGlzcGxheSkgPj0NCj4gMzApICYmDQo+ICsJwqDCoMKgIChpbnRlbF9k
cC0+cHNyLnNlbF91cGRhdGVfZW5hYmxlZCB8fCBpbnRlbF9kcC0NCj4gPnBzci5wYW5lbF9yZXBs
YXlfZW5hYmxlZCkpIHsNCj4gwqAJCXN0YXRpYyBjb25zdCBjaGFyICogY29uc3QgbGl2ZV9zdGF0
dXNbXSA9IHsNCj4gwqAJCQkiSURMRSIsDQo+IMKgCQkJIkNBUFRVUkUiLA0KDQo=
