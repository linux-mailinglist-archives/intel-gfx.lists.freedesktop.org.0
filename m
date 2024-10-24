Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4A29AE2CD
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 12:41:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0666610E270;
	Thu, 24 Oct 2024 10:41:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="frUd5Fq/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07EBE10E270
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 10:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729766486; x=1761302486;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=KaUzIZxBiw9LuNaTgrMrhpbGzrCcEy585GCSB43tAXU=;
 b=frUd5Fq/OgZseFDPq3CjXSIGWALMo8N7mc2TJTFlB6RqF//0ZfoLtAZJ
 JDNyTq0t8rUJFV50OxkdWEd56GARJSqmVO8dMV76+LUtbkknqNQ5S0n8b
 qXEx6ffeo/xN11fqM//vUEhSyF1KAf6TvpALoC2X6jweVYGo0gWiTjF6v
 SyzisQATyxsCXxnvPHRUL2pTrxwyEBRC3ouO85RZ6BxBBRtfKFeaS9EXA
 FVlmtKQV5N3iu8j51jPqulkenf/7i3JrW6mer8HtLh4csixzcYy1YxxIY
 SNJDbfYPo41Lnrejcv+g8oQKEZ3sgHwi4xD5iCxvcg37EmY9ympKx9rlW w==;
X-CSE-ConnectionGUID: 0Mpv3tI3Q12WfCDDKHcKwQ==
X-CSE-MsgGUID: 9zv7ELyOScqpaXi3WdTqPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="39975791"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="39975791"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 03:41:26 -0700
X-CSE-ConnectionGUID: BD7pPS+HT5SO8yMw3MnVBQ==
X-CSE-MsgGUID: pC8ocB1ZQhu6WtrAkDphpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="85333869"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 03:41:25 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 03:41:25 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 03:41:25 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 03:41:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Tb5iJdtGKk8mlzibklEPh4SFK58IXa7fJItVcL6KU4I/HP4CaLOxfvNP8XQ5dakpa5jIH0k5OmjXtchNxwbHqCp85WoCsuQXkmzAqXtat6FEcyoeuzxEinBTPNxSNJX3aF2+7cMcQeEryOFB5nEVim+zKy/xlgDTpAzePCVo+zP5fhgk9OvA8PVcz9pXxWd8x10yeQhmm3oVNGcc+woGcd9zE5ognF/VFeSX65DBBFpKRhXC7Kkk1T10bfD1DetONMzZ8m3VUh5Fmj7XCRW9jXXAwC4V4dx4iKdmUpH6eGu3p4Hq5ZCtugFa0Tf3LEOjWRPtSyotuO0MgN4WY0BFKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KaUzIZxBiw9LuNaTgrMrhpbGzrCcEy585GCSB43tAXU=;
 b=Gx5eVezw84wqcugep7Vz9WnpmG+D5UfblWOG1/Y6fLWHQpA2lG26dzQRCcbO6NQLAiIgpwidpGkHpXqV7TWKEv+YXhRglJrKKwGnIUOkH7TEH5V4MKiihuoDVznVgXQmccxwssqRKbk92NL+Go7atzXeCj/THRnkafHppbaQhZqgcYh+2r9go2RQtv3Ka/eCKwX/SzuB2bc2D5G5hiSRIro+F01lLh5s0m/gVxHAyqJdM6SOiWWNi7s5p1lALR3k74ef1NmSCDtaogpq0WNbTr5POj+IheaBjMPFGYM11ziv/++K/4CWQ0ZcMKht40/aGOn18vJmsr9lPn/fKlTxQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH8PR11MB6877.namprd11.prod.outlook.com (2603:10b6:510:22b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.18; Thu, 24 Oct
 2024 10:41:22 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8093.014; Thu, 24 Oct 2024
 10:41:22 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/9] drm/i915: Allow async flips with render compression
 on TGL+
Thread-Topic: [PATCH 1/9] drm/i915: Allow async flips with render compression
 on TGL+
Thread-Index: AQHbGng0oH9/qGNGs0+pmu6Zyq25rLKVzZaA
Date: Thu, 24 Oct 2024 10:41:22 +0000
Message-ID: <b94128a3954a0f2165d6e1d11cd55683a8051d73.camel@intel.com>
References: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
 <20241009182207.22900-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20241009182207.22900-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH8PR11MB6877:EE_
x-ms-office365-filtering-correlation-id: d144bee4-592d-4565-0fc9-08dcf41866d7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?MHJDU05TWDF0RUxCY1JTelpXbEtPZFdvWTIvcFN6a3FicTQvVXpnTTIzTlkw?=
 =?utf-8?B?YktzZlFlekxhK0FvR2VBOG1XOERNamxaRDlRend3NHJhUy9kckRSQVNTR3Ez?=
 =?utf-8?B?NkJIZUdaMHF2Wk55N3JZZFptQitlWUlBTnhGMmhsaWpCSW8ycGcyWENtakhK?=
 =?utf-8?B?bTAwUzRlSXRrb3FqRzRvU0VnYVNhNFU4Y1hHd0VNU05yS1kwQlpQT3M0M2c4?=
 =?utf-8?B?WnRnS0JiQUFnaGdpNmxnZzJ1RUx2RWUxb000OUhVUG5LenhmUmtjMmduTjhQ?=
 =?utf-8?B?Z0lmM2ZIYWpCTXIreE9ZWURCaGJTNHNKMDBPUWJwRVo5YTdqUVVRV3cxb0FE?=
 =?utf-8?B?U2xSdlhUR2EreFY5c2NMMzExcVE2Um5LZkdKbkZpZEV6US92NEtKZzZQVytJ?=
 =?utf-8?B?dHk3Um1MV1lORHJ4SXZkeVpTdWt4TG1MRk5wbFh3SXpBcjJrMEppN3NiMG1p?=
 =?utf-8?B?ZS9WNy9BcGJvUExxbEgzZ2c0VjlGeUhTd094RkRCZ3F2eVZwb05wOENlUGFw?=
 =?utf-8?B?ZHpNNGlrS1RubUEwRHhFeUc4Wk9TMno1Z290Um8xZWF3QVNyL0poYkNJYlhw?=
 =?utf-8?B?RXhzYXdnaUU0UnNiTVAvc0p1Y1FNRVROQ1hBUDAzZ09BK2NJMVEycWhBT1hM?=
 =?utf-8?B?RFVibm42eVZNRjZHa3ZjTFhuN1Q2M0J5b1JkWWRzMmoydGUrRjVhUnpNQUk0?=
 =?utf-8?B?T3ZuemZrV0VDdzI4TUpiNzFtejR0WSszOTZXYUs2VWtLUTJUZkpva0JoQkYv?=
 =?utf-8?B?b2pteWFHVitjaWtveEhXSjRRS0JneDcrMkJyWjh1ejh1YTdmakh6cDJPYWJZ?=
 =?utf-8?B?SzhoQWg0SzQ4TTJQSy9MZjFVd21XcTZmN3RrbUdkTmVJMi9RRUlPc1FPYzJp?=
 =?utf-8?B?dEtkaFRmOG9NQzZRUWkxRXp5U2U2RWdSV0d1S0FmdW9xSzdyWUxJRUNzcCtL?=
 =?utf-8?B?NEFoRTExY2VZbFI1MWxnK21pMkloWEhGakZVb0VQd1pobGpQZ2RCdWdubm1n?=
 =?utf-8?B?QThKdEpoNGVPU0VDdlpUeGxZY2p2elllaUxUVE9mWi8zTjFDRjJVQzM0SVBr?=
 =?utf-8?B?a2JLWkl3Sk1xcmtzU2tlRXdpYndyN2VTeWZyYzgxbTUzSi8zTkd3SStDQWFN?=
 =?utf-8?B?SVIyc3RZRTJLZXZqM0NXZzQzajRCU1Bpdkt3Y3BaTys1UjhpSDd4S2k0cnlw?=
 =?utf-8?B?emdNak8yQXVFTHVyMklxNVlRMThoZ0RSYWE1V0IrSm02MFhnclZVZlpDNFV1?=
 =?utf-8?B?UmliY240M2xEcWN5c2FVd1ZFVGdGM3VrS1JVTjkwM0tnTVJlN1JYTUJsalg3?=
 =?utf-8?B?M0dpSEpzYkhwRi9qUHh5R3hGQjMyaGNoK24xRmhWMXpITjA3UVZoQzVSZEFB?=
 =?utf-8?B?UlBaeW51Wjh4Vm1JeWwwc0JiWUpWTEdZSzlMWGZCcms5OXpDNVhrbjEvcVNa?=
 =?utf-8?B?Q29uMFdTT2xiTzg1V2o2YnRnT3ZVdXlmNlNHckFoZWdDNy9GVUdwTlFIM3J4?=
 =?utf-8?B?SXNFUm51emZ1U0lyUTRCQTZ2Q2RrQklXd0UrNEg4ZDBKRFZjcmc2T05DZWw2?=
 =?utf-8?B?UFJ4L1lsYmozZWFNcGNGaytYVFNXM09jdWt3Ym4wOUR0aUhrbUNwR1V5VVcz?=
 =?utf-8?B?SllQbjF4bTdYQ3JQRmhrT1J1UUNSTnZGTGFTZ0luZW9WNjk0SGZBOHIrOHpI?=
 =?utf-8?B?WHB5YlY4Y21vQVM2MkFRTnVHdnBPSUdwMUs5VGxaWUtJTUtGaTRTUnJZemJz?=
 =?utf-8?B?RExQelJGVkVWZXg1aUlNQ3FvVE9STUJRQXdKbGM4dXcyUVBGNUkwSU1TVEZM?=
 =?utf-8?Q?ytPkQGl/02nh0cNo7U82/o8VXx9T651HH1kCg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WTBuZlUwT0ZZSkdHbkZ4WUcvVllYMTduc3Z5NEVZTE8xVUpTUUFXdm9icXlL?=
 =?utf-8?B?VkErayt0YWxDQWczR2Ruc0lJWDFrZTVkc2t5dmJhZ3ErNGRSTlNJbmMwRHdm?=
 =?utf-8?B?Q2Zjb1VrYUxaZHpDbUpDaXZieHYwY0JMWFA2c2o0ckp6cTZqU2JiOWxxa014?=
 =?utf-8?B?bC9GQ05yd2NtSlJCNDVGWjhFVSs5NnBxRk9zRGVtMnpWMkFYZWROcStPenZk?=
 =?utf-8?B?VWo3cXE1WmpZcUVQSmVSS3Z5dEZsM1NCR2Yxd3dlemVYZ2RSS3JjdC9KRUJw?=
 =?utf-8?B?cEQ1UnN0R2xLNUUrdFppQnYwQ0xmdlVibVZiRDV4ekpxQ2crRy9LcWwrd2Zn?=
 =?utf-8?B?RVZmeGdqM1k2VXBjWUlXeXE0MWxRRFluM2xhdnZJam5zcHVIcEdaZ2hnb29z?=
 =?utf-8?B?Sjd3TTJiWUEveGRoYWJYbXdVc3RDVXZVRG5qOWxOUHRJWHBieUdRRHZWcjJI?=
 =?utf-8?B?dXlhSFRhalFXU0J3ejBaaSt3UldQajJWeDljZ2U1NWU0TDUzWXM2TjlZS1BN?=
 =?utf-8?B?T3BPQnV0bG9mTm95NEhjQmdYcUE0RWpTSWFpMXRyc2RsQ3FkeDhyWDdKR2R0?=
 =?utf-8?B?aVUxN1I3N2Q2OGdxNlE2SDIxSnFGUkVHRWNjVEEwWjRGS3JzRU9GOS9nMmdD?=
 =?utf-8?B?d1Q3VzVROFRuREJJUmJsaUNYTm9sUVlrYjJIR0xZVUYyY3FYTE85ODQybTNt?=
 =?utf-8?B?a3A3TlhGVkI1VjFzSk9ZR3R5RUlhSmFVeXNDcWpDcDNzV0MwM0c2bTFUZ1NS?=
 =?utf-8?B?OUJBOXR2S1F0QTNnSzJLbDI4THpld2lsL050ZXlrRGtveStVQWFFQUx0MzUz?=
 =?utf-8?B?T3ZPUTFEbFVTY2VkVHVEYzZxN3Q0U25peDVaUFphTFl1M2szeWJDd3FHeVpl?=
 =?utf-8?B?MGVaR1hoVmcxckdNQVFaQ3c5c1lrNWY5cDF3cDRpWi9WMWw0LzgvN0hpS2ti?=
 =?utf-8?B?Nlh2M0RReVdRK25TQmdzTXh2a1AySW4vSFVnZGdXOEJKenAxbnVBb0gzbDdP?=
 =?utf-8?B?Y0Q1SDYreXJEUy9pWnJueGM3Z3ZPTXByNW9oeFF6YWdjazZtN201eW9FVWpk?=
 =?utf-8?B?NUswZjNVaS9XL0RPdzhxY1ZxaHZJSk85cjhVd25uc0JqZlpUQ1hNSllKMUNT?=
 =?utf-8?B?bXJNR1FzQmtvWGhEbUVjRHN6R0tyWVY2K01PaU9YZktQcTlCMFg2NzhCVW9G?=
 =?utf-8?B?WDVsSnBFVXMxUGcrUUY4V1hwYjVLYXFRbW41MzM1eUhSa3p0VWgrbEhaNjUr?=
 =?utf-8?B?OTJ4NGpKdVg5QVdzeFFlVE9ocyt2cWtmcXhrZDJEMjJDVmx5Sk5JdnhEZkhG?=
 =?utf-8?B?TTFKaldhaDcwUFNpdm1YWlZoRi82Z28ySGpqL21sN3hOQmFDL2FhZFJXWVRv?=
 =?utf-8?B?SU1ieHYwYlhMN1ZEWFRSdmhjMTMvV2tud0Y5bFJXYWVtall4Z1dSaTVhSHVu?=
 =?utf-8?B?N296UmJLZkFkdGNqUFJSQ3VoL0tKSVdPWWxQbmRqMjNVM3UwaGRHWjd0RmZB?=
 =?utf-8?B?WUxMTzNUb3NsejFFWjRENG04NTJPeHg0K0FGTDkyc1V5czROOW8zYkREd3l2?=
 =?utf-8?B?eGtrQVMwUWNwSWEyYWRUUXNKdTJER3hOME1DVjNyL3YzL2ErdWNjeU5ZeE5y?=
 =?utf-8?B?aE5XY1hzZFRoenJiSVBuUjBRWXZzN3RYZXBza0U0amMxam1xZjlleEtoZnly?=
 =?utf-8?B?K21kckpYcGt3NW0vTGp5cWRlYVkwSmcxTWJDcUVMclFGcXkvYUR2bGdrazBv?=
 =?utf-8?B?UUY3anRkdDBQK09YT1pRVE9lQ05iRmxHN0xjYmVyaWZLdGQ0OXppTVRXSEM5?=
 =?utf-8?B?ekNwSVpoZ2ZtNStjZ3dHbm1xMnp3UW50QWptOU55dGtsTmtBSW1UMDJzTnVS?=
 =?utf-8?B?YmV6b3FvZmRnQ3RaaWlmYnVBMGYrNHkvWnRmSkVOWTgrZUx3K2svamovRk9p?=
 =?utf-8?B?QmRiSG9NdEcyT1E0aHVsb3JYeDcwempPSVJlTlNVNVpQT2hKT0VWay9sVWJR?=
 =?utf-8?B?R1FPdXhQd1hLMTVFKzdJZHJoUUdqNXZzZUwrSk5LRnRxckNGc0RCZ0pNRHJx?=
 =?utf-8?B?NXEvMmQ5UzRaYnI2ZzlFMlhNa0RpS0pTNksza0M3NkFqcGp1cERtWEZFSUxH?=
 =?utf-8?B?VVhSUVVVTERQMFU1UWlmdDdYRjhQTlREb2FIL3ZKR3FuWER4MjVGbzF3TElF?=
 =?utf-8?B?a3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <26173EC9A7787C4B85DF40CA8734251F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d144bee4-592d-4565-0fc9-08dcf41866d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2024 10:41:22.1386 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sD0wLiPKDM13PJCepB3TwLPLaCLs5Z09JQe86gr46TNuZG6+XWdVtmP45tzcGD3RjBPTPnP7gsbYJsX2SBJHeZn/nzeMpt/wXMjta9sALLI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6877
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

T24gV2VkLCAyMDI0LTEwLTA5IGF0IDIxOjIxICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gTG9va3MgbGlrZSBDQ1MgKyBhc3luYyBmbGlwcyBoYXMgYmVlbiBhIHRoaW5nIGZvciBhIHdo
aWxlIG5vdy4KPiBFbmFibGUgdGhpcyBmb3IgVEdMKyByZW5kZXIgY29tcHJlc3Npb24gbW9kaWZp
ZXJzLgo+IAo+IE5vdGUgdGhhdCB3ZSBjYW4ndCB1cGRhdGUgQVVYX0RJU1QgZHVyaW5nIGFzeW5j
IGZsaXBzIHdlIG11c3QKPiBjaGVjayB0byBtYWtlIHN1cmUgaXQgcmVtYWlucyB1bmNoYW5nZWQu
Cj4gCj4gV2UgYWxzbyBjYW4ndCBkbyBjbGVhciBjb2xvci4gU3VwcG9zZWRseSB0aGVyZSB3YXMg
c29tZSBhdHRlbXB0Cj4gdG8gbWFrZSBpdCB3b3JrLCBidXQgYXBwYXJlbnRseSB0aGUgaXNzdWVz
IG9ubHkgZ290IGlyb25lZCBvdXQKPiBpbiBNVEwuIEZvciBub3cgd2UnbGwgbm90IHdvcnJ5IGFi
b3V0IGl0IGFuZCByZWZ1c2UgYXN5bmMgZmxpcHMKPiB3aXRoIGNsZWFyIGNvbG9yIG1vZGlmaWVy
cy4KPiAKPiBCc3BlYyBjbGFpbXMgdGhhdCBtZWRpYSBjb21wcmVzc2lvbiBkb2Vzbid0IHN1cHBv
cnQgYXN5bmMgZmxpcHMuCj4gQmFzZWQgb24gYSBxdWljayB0ZXN0IGl0IGRvZXMgc2VlbSB0byB3
b3JrIHRvIHNvbWUgZGVncmVlLCBidXQKPiBwZXJoYXBzIGl0IGhhcyBpc3N1ZXMgYXMgd2VsbC4g
TGV0J3MgdHJ1c3QgdGhlIHNwZWMgaGVyZSBhbmQKPiBjb250aW51ZSB0byByZWZ1c2UgYXN5bmMg
ZmxpcHMgKyBtZWRpYSBjb21wcmVzc2lvbi4KClBhdGNoIHNlZW1zIHRvIGJlIGFjY29yZGluZyB0
byBjb21taXQgbWVzc2FnZS4gQ291bGQgeW91IHBsZWFzZSBhZGQKYnNwZWMgcmVmZXJlbmNlcyBp
bnRvIGNvbW1pdCBtZXNzYWdlPwoKQlIsCgpKb3VuaSBIw7ZnYW5kZXIKCj4gCj4gU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAt
LS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jwqDCoMKg
IHwgMTQgKysrKysrKysrKysrKy0KPiDCoC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5p
dmVyc2FsX3BsYW5lLmPCoCB8IDE3ICsrKysrKysrKystLS0tLQo+IC0tCj4gwqAuLi4vZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5owqAgfMKgIDMgKysrCj4gwqAzIGZp
bGVzIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4IGUxZjYy
NTVlOTE4Yi4uMjFkNDEyYjE1OGU4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtNjUxMiw2ICs2NTEyLDkgQEAgc3RhdGljIGludCBp
bnRlbF9hc3luY19mbGlwX2NoZWNrX2h3KHN0cnVjdAo+IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsIHN0cnVjdCBpbgo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY2FzZSBJOTE1
X0ZPUk1BVF9NT0RfWV9USUxFRDoKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNh
c2UgSTkxNV9GT1JNQVRfTU9EX1lmX1RJTEVEOgo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgY2FzZSBJOTE1X0ZPUk1BVF9NT0RfNF9USUxFRDoKPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1M6Cj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNhc2UgSTkxNV9GT1JNQVRfTU9EXzRfVElM
RURfTVRMX1JDX0NDUzoKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY2FzZSBJOTE1
X0ZPUk1BVF9NT0RfNF9USUxFRF9ERzJfUkNfQ0NTOgo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgY2FzZSBJOTE1X0ZPUk1BVF9NT0RfNF9USUxFRF9CTUdfQ0NTOgo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY2FzZSBJOTE1X0ZPUk1BVF9NT0RfNF9USUxFRF9MTkxf
Q0NTOgo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJy
ZWFrOwo+IEBAIC02NTIzLDcgKzY1MjYsOCBAQCBzdGF0aWMgaW50IGludGVsX2FzeW5jX2ZsaXBf
Y2hlY2tfaHcoc3RydWN0Cj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwgc3RydWN0IGluCj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1F
SU5WQUw7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqAKPiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKG5ld19wbGFuZV9zdGF0ZS0+aHcuZmItPmZvcm1h
dC0+bnVtX3BsYW5lcyA+IDEpIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYK
PiAoaW50ZWxfZm9ybWF0X2luZm9faXNfeXV2X3NlbWlwbGFuYXIobmV3X3BsYW5lX3N0YXRlLT5o
dy5mYi0+Zm9ybWF0LAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoG5ld19wbGFuZV9zdGEKPiB0ZS0+aHcuZmItPm1vZGlmaWVyKSkgewo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kYmdfa21z
KCZpOTE1LT5kcm0sCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiW1BMQU5FOiVkOiVzXSBQbGFuYXIgZm9ybWF0
cyBkbwo+IG5vdCBzdXBwb3J0IGFzeW5jIGZsaXBzXG4iLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGxhbmUt
PmJhc2UuYmFzZS5pZCwgcGxhbmUtCj4gPmJhc2UubmFtZSk7Cj4gQEAgLTY1NjksNiArNjU3Mywx
NCBAQCBzdGF0aWMgaW50IGludGVsX2FzeW5jX2ZsaXBfY2hlY2tfaHcoc3RydWN0Cj4gaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSwgc3RydWN0IGluCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1FSU5WQUw7Cj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqAKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
aWYgKHNrbF9wbGFuZV9hdXhfZGlzdChvbGRfcGxhbmVfc3RhdGUsIDApICE9Cj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBza2xfcGxhbmVfYXV4X2Rpc3QobmV3X3BsYW5l
X3N0YXRlLCAwKSkgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIltQTEFORTolZDol
c10gQVVYX0RJU1QgY2Fubm90IGJlCj4gY2hhbmdlZCBpbiBhc3luYyBmbGlwXG4iLAo+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBwbGFuZS0+YmFzZS5iYXNlLmlkLCBwbGFuZS0KPiA+YmFzZS5uYW1lKTsKPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAtRUlOVkFM
Owo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Cj4gKwo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgaWYgKCFkcm1fcmVjdF9lcXVhbHMoJm9sZF9wbGFuZV9zdGF0ZS0+
dWFwaS5zcmMsCj4gJm5ld19wbGFuZV9zdGF0ZS0+dWFwaS5zcmMpIHx8Cj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIWRybV9yZWN0X2VxdWFscygmb2xkX3BsYW5lX3N0
YXRlLT51YXBpLmRzdCwKPiAmbmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdCkpIHsKPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2ttcygmaTkx
NS0+ZHJtLAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91
bml2ZXJzYWxfcGxhbmUuYwo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5p
dmVyc2FsX3BsYW5lLmMKPiBpbmRleCA5NTU3YjA4Y2EyZTIuLjBjMDlmNzZmODM2OSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFu
ZS5jCj4gQEAgLTUyOSwxNSArNTI5LDE4IEBAIHN0YXRpYyB1MzIgdGdsX3BsYW5lX21pbl9hbGln
bm1lbnQoc3RydWN0Cj4gaW50ZWxfcGxhbmUgKnBsYW5lLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgaWYgKElTX0FMREVSTEFLRV9QKGk5MTUpICYmIEhBU19BU1lOQ19GTElQUyhp
OTE1KSkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBy
ZXR1cm4gbXVsdCAqIDE2ICogMTAyNDsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oHJldHVybiBtdWx0ICogNCAqIDEwMjQ7Cj4gLcKgwqDCoMKgwqDCoMKgY2FzZSBJOTE1X0ZPUk1B
VF9NT0RfWV9USUxFRF9HRU4xMl9NQ19DQ1M6Cj4gwqDCoMKgwqDCoMKgwqDCoGNhc2UgSTkxNV9G
T1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTOgo+IC3CoMKgwqDCoMKgwqDCoGNhc2UgSTkx
NV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTX0NDOgo+IC3CoMKgwqDCoMKgwqDCoGNh
c2UgSTkxNV9GT1JNQVRfTU9EXzRfVElMRURfTVRMX01DX0NDUzoKPiDCoMKgwqDCoMKgwqDCoMKg
Y2FzZSBJOTE1X0ZPUk1BVF9NT0RfNF9USUxFRF9NVExfUkNfQ0NTOgo+IC3CoMKgwqDCoMKgwqDC
oGNhc2UgSTkxNV9GT1JNQVRfTU9EXzRfVElMRURfTVRMX1JDX0NDU19DQzoKPiDCoMKgwqDCoMKg
wqDCoMKgY2FzZSBJOTE1X0ZPUk1BVF9NT0RfNF9USUxFRF9ERzJfUkNfQ0NTOgo+IC3CoMKgwqDC
oMKgwqDCoGNhc2UgSTkxNV9GT1JNQVRfTU9EXzRfVElMRURfREcyX1JDX0NDU19DQzoKPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKElTX0FMREVSTEFLRV9QKGk5MTUpICYmIEhB
U19BU1lOQ19GTElQUyhpOTE1KSkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHJldHVybiBtdWx0ICogMTYgKiAxMDI0Owo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBmYWxsdGhyb3VnaDsKPiArwqDCoMKgwqDCoMKgwqBjYXNlIEk5MTVfRk9S
TUFUX01PRF9ZX1RJTEVEX0dFTjEyX01DX0NDUzoKPiArwqDCoMKgwqDCoMKgwqBjYXNlIEk5MTVf
Rk9STUFUX01PRF80X1RJTEVEX01UTF9NQ19DQ1M6Cj4gwqDCoMKgwqDCoMKgwqDCoGNhc2UgSTkx
NV9GT1JNQVRfTU9EXzRfVElMRURfREcyX01DX0NDUzoKPiArwqDCoMKgwqDCoMKgwqBjYXNlIEk5
MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDU19DQzoKPiArwqDCoMKgwqDCoMKgwqBj
YXNlIEk5MTVfRk9STUFUX01PRF80X1RJTEVEX01UTF9SQ19DQ1NfQ0M6Cj4gK8KgwqDCoMKgwqDC
oMKgY2FzZSBJOTE1X0ZPUk1BVF9NT0RfNF9USUxFRF9ERzJfUkNfQ0NTX0NDOgo+IMKgwqDCoMKg
wqDCoMKgwqBjYXNlIEk5MTVfRk9STUFUX01PRF80X1RJTEVEX0JNR19DQ1M6Cj4gwqDCoMKgwqDC
oMKgwqDCoGNhc2UgSTkxNV9GT1JNQVRfTU9EXzRfVElMRURfTE5MX0NDUzoKPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qCj4gQEAgLTExOTIsOCArMTE5NSw4IEBAIHN0YXRpYyB1
MzIgc2tsX3BsYW5lX3N1cmYoY29uc3Qgc3RydWN0Cj4gaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5l
X3N0YXRlLAo+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gcGxhbmVfc3VyZjsKPiDCoH0KPiDCoAo+
IC1zdGF0aWMgdTMyIHNrbF9wbGFuZV9hdXhfZGlzdChjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVf
c3RhdGUKPiAqcGxhbmVfc3RhdGUsCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludCBjb2xvcl9wbGFuZSkKPiArdTMyIHNrbF9wbGFu
ZV9hdXhfZGlzdChjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlLAo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50IGNvbG9yX3Bs
YW5lKQo+IMKgewo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IHRvX2k5MTUocGxhbmVfc3RhdGUtCj4gPnVhcGkucGxhbmUtPmRldik7Cj4gwqDCoMKgwqDC
oMKgwqDCoGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiID0gcGxhbmVfc3RhdGUtPmh3
LmZiOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2
ZXJzYWxfcGxhbmUuaAo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVy
c2FsX3BsYW5lLmgKPiBpbmRleCA1NDE0ODk0NzkxMzUuLjE4YjQxZDEzZjBiZCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuaAo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5o
Cj4gQEAgLTM3LDQgKzM3LDcgQEAgYm9vbCBpY2xfaXNfbnYxMl95X3BsYW5lKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlCj4gKmRldl9wcml2LAo+IMKgdTggaWNsX2hkcl9wbGFuZV9tYXNrKHZvaWQp
Owo+IMKgYm9vbCBpY2xfaXNfaGRyX3BsYW5lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwgZW51bQo+IHBsYW5lX2lkIHBsYW5lX2lkKTsKPiDCoAo+ICt1MzIgc2tsX3BsYW5lX2F1
eF9kaXN0KGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUsCj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnQgY29sb3JfcGxhbmUp
Owo+ICsKPiDCoCNlbmRpZgoK
