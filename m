Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54155A5488E
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 11:58:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D0DD10E93D;
	Thu,  6 Mar 2025 10:58:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="azFNY+2H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2086C10E939;
 Thu,  6 Mar 2025 10:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741258693; x=1772794693;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hIPf2MYJwZUxHp7027M32dkSieu5hwCXv+T64ZeW83Y=;
 b=azFNY+2HNhKuf3sgqsKb7+XMN9M0AaWQiOxcq0jISTQ/FKFLCXOpV/uW
 y+euvUNgieTOckhQ0+515JLv988TQtS7vvODxWhd931mc2VYBVAjjKNLo
 EZe8d0npOegz4zPQbE6ibBX3k5AnL3yCdtvMfSw+gyyLsm+cFSlhxGmnL
 59IbCRW6k4TfjsqJdyMaPXQ0pUNES1ZO9VnXx5yyZVIkWQJIm6rJmiMZ/
 /d3kDAVdBF9Pq+M1IrY9+dke5qy/SXqVfEOABZ1ApL3QEsTWR41pE5ScM
 D4aR2plgbgAFeMnJx4MfBMtobnSvAlroZSwX1gsNy10DkUkqrGVjps6RR Q==;
X-CSE-ConnectionGUID: k/mBjcLaTn+8KczGw9Vu1A==
X-CSE-MsgGUID: MveZcOsiQ+SwNOCl9H9EgA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="53659350"
X-IronPort-AV: E=Sophos;i="6.14,225,1736841600"; d="scan'208";a="53659350"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 02:58:12 -0800
X-CSE-ConnectionGUID: iatXeYWUTpCCnLOEc+fTdA==
X-CSE-MsgGUID: AjlMT/UCTA+MPNXjGxDTbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,225,1736841600"; d="scan'208";a="149770165"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2025 02:58:13 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 6 Mar 2025 02:58:12 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 6 Mar 2025 02:58:12 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 6 Mar 2025 02:58:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jq0mDpCXOzHAvioWvw8LZGJEOTQwl0MTtohEV374/+Nyl9wAwQSNCCjAxkesaPdP35W2GXxpCdl9F4ae2stX4/GYbhLAac8mZTowZRrqbuyrp/dZ4u67+aTUzcUB0a16HDmZNXoI+OkIW85AvH4cBilEOmqeYQA2d+bUzWv6NjumqpOgryP4G4JVaDtzAqL+OhicbQCi5mP6Nh9msCTxtqH5t6z03LTm2oxwfTTc2/eSLCgLCHIPzKGhUFf/lCIZbHMnQDvmSUrwkYJ+kTmi+SSA9v3PiaibaPCZd1rH9JTVKN8tQUvi983ob+P3ZP/sGmkJQ/4d9tGqdORFlv4bXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hIPf2MYJwZUxHp7027M32dkSieu5hwCXv+T64ZeW83Y=;
 b=HR5UofggYn+zar1C46kbxfB+dCKiRfWnaI43qspeeE23PxxDvbVtzXYfiNjP8QDaum+m31zYmd1jpg1t/Qu3d9V+r2wOSdYDxARCoWpSI/Ws6lOJlbCBz7YeRdU2bK07pLJFLePtCUn7g2DgkqmCrkeM3pRpZikAfMF0N4V/RVM8yUelEyzPe7fOhtynaqatSuHFMpfDsZUvwH7CLRrR8F42tHXFZZXLYit6s+9foE5vdMVL6o8CbD8paoMJx2VRa8vrSxREK+gzx01cT1vQkLhjrj+sSAX8+GETkB8G/2awRv3K11qlmvoF3JyrdWik0a6kk7WlcKQ+xE0N1yWKYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by DS0PR11MB7357.namprd11.prod.outlook.com (2603:10b6:8:136::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.16; Thu, 6 Mar
 2025 10:58:04 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a%6]) with mapi id 15.20.8511.017; Thu, 6 Mar 2025
 10:58:04 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org" <i915-ci-infra@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkZ1bGw6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBG?=
 =?utf-8?B?aXggaGFybWZ1bGwgZHJpdmVyIHJlZ2lzdGVyL3VucmVnaXN0ZXIgYXNzeW1l?=
 =?utf-8?Q?try_(rev4)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IEZpeCBo?=
 =?utf-8?B?YXJtZnVsbCBkcml2ZXIgcmVnaXN0ZXIvdW5yZWdpc3RlciBhc3N5bWV0cnkg?=
 =?utf-8?Q?(rev4)?=
Thread-Index: AQHbjn1+mK754ro7akW76CLF7HRCgbNl7E4A
Date: Thu, 6 Mar 2025 10:58:04 +0000
Message-ID: <CH0PR11MB54914F6D3D605D8E1F0035B7EFCA2@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <20250305191152.164615-6-janusz.krzysztofik@linux.intel.com>
 <174122693713.65060.18275617722120852070@64e06c682a23>
 <7805494.EvYhyI6sBW@jkrzyszt-mobl2.ger.corp.intel.com>
In-Reply-To: <7805494.EvYhyI6sBW@jkrzyszt-mobl2.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|DS0PR11MB7357:EE_
x-ms-office365-filtering-correlation-id: 464e9278-d855-4384-2a61-08dd5c9dc4ff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?WWp6ZnE5OTlyeWY2M3NldGlLQmxqWjl2TnZsNkxVa255d0NMRm1uSlNXQlU2?=
 =?utf-8?B?UWlaWmxSWGhNbUpMYk1NNFA3UWpvV2pTQnEzRmRnWEpLMEpxT2hGWnZYd2NT?=
 =?utf-8?B?WklyTDN2VXFoTmpoa2Vpb2JNNVBTNmV3RDRSNFRZUnhJVGNUNFRjVWFEb3Vq?=
 =?utf-8?B?WVFJTFF4YTIxQTM2d3V5M0VNMlhFdmhVb2FwRE1jcjFZUjAwU0wxTUJGT0dj?=
 =?utf-8?B?dDZNd1ZIWjRzcU0vV0xhR1JQZjhPdXNsa2d1QzJTRmM0UWoxVnprcThES25w?=
 =?utf-8?B?bXRVOWdNQ1ZIalV6ZlhQWkFBL21XMWIzSGp2VkhzZmZTQVZmVjZJaUdUdFdL?=
 =?utf-8?B?UjBzc2ZJVGEzNklhdTNQUHNReWhpN2hPT2pwRDU1TDZXSHV1TXk3c2hLczFh?=
 =?utf-8?B?bGltK0xsaitiandLTkJoWDBMK0VjL0RRL0VIRVlUQUo3UWF6SVYvdWFJVDh0?=
 =?utf-8?B?OHVOWFA0eDhGU2xKRG9VbDUrY01PdkdVaEhXTDNiOW5WbjFQSVJIRUdhcmQ2?=
 =?utf-8?B?VzNpNStYR0dhK0FEUG5TRjRiL3NrcEdtdXF5TkdXVklXbjZOYUlONnBXaDND?=
 =?utf-8?B?OGVZK0RacHF1NGdFbVlsdHhGMkVZN3c3TVp5YkhLMWExUFRBUm1RNEp0TzI5?=
 =?utf-8?B?WDE1OXE1YktyT1ZmUnZMM2FCMU5xZFgxa0VFMTJmZmIvYXl6NjljQVZLRTcr?=
 =?utf-8?B?eG04cEN6b21GVlJVN0RTUE9Cc3NDWHMxalNkUjQ5VWVaU2VzZXFKeE9IWHhK?=
 =?utf-8?B?OVM5NmFENmZJZENlZWgwY3IzQnZaK0Nua1h0a3lKSjh4NlNUV240QkU4OXpW?=
 =?utf-8?B?RUJFMnB0ZG1HaGsrSDFtWjN5YWl6S0hmWEJyODlNbk9FakxMWTNjcVEySEdY?=
 =?utf-8?B?TEZyQ2xCRGNpUU8wNXFqbzlzRW84Wi9JeGFxS3J0dmIwUHV1cjZla3RrdjI5?=
 =?utf-8?B?RTZiV25BaXFLd2F2OWVITzBlY1d3K1p6Mk82WGkvREhuMlArV0JCYmpHb3Br?=
 =?utf-8?B?UThLbFdpbThnb1RiNFJQSjdmME1aR1R1RUxYSzcyTUZISkFlSUR4N2ZzZjMy?=
 =?utf-8?B?L3p6SVpVUHEvTkF0TWgzeVRsTXJKcnduWVZUYVZtV1JCQ0xGZ2FWMUhOQVov?=
 =?utf-8?B?OEp2VExEV2wwWFJtd21uWEw4MCtpZWxIeFA1NlJIeFJRM0t1NGIrN1F0SEw0?=
 =?utf-8?B?ZmJoYW8wRm9FaDZvMTZHUEo3cll5UnlBSzQ3ZHNpV1pRZ3ZNc3JQYVhGNDRK?=
 =?utf-8?B?RGZTd3JQa2dlSHFhS3dwc0cxOEpuQ2ZPSUtlYTB2SFpORVhUeVlsSWlqTTRD?=
 =?utf-8?B?NmVDcUEzNjhrYjYwcGVxcm44U1lWZlU0NGpVcnhhZ3JPNEo1aEZURWhYbDFN?=
 =?utf-8?B?VDBYd3IvbjRXcHI5MGFVaXVOYThFZnlHRHN1NjhFcmJsTnJtRDJIVXZuY0Rz?=
 =?utf-8?B?TG5TRU9FREdESzlKUkkxSm5qcFIxL3lmQURXK2hVdXByTFdSOVVIZ3F4ZUds?=
 =?utf-8?B?aFI4RHRwQWc4WDk0Q1JCYWJINnJFblRKcWZ2YlFIMXVyMWlsa2NnZzVOZUJ2?=
 =?utf-8?B?WVVkMFZlL3g4Sm1NSlFXeTZqY2ZmV2dIWUJJZC9qbjdxWHF2d0t5dFJ3UE1y?=
 =?utf-8?B?WExOTjVldVNXLy8ya2l2bHhWWkdxOXYxZnRwcG1sWGJWUngyRWgyL0pRRld4?=
 =?utf-8?B?TWNxRWN3cmJUV0tYNnMzTWZIRXJmdklKYVM1UTh6NkhnMmExMWJ3TDFSWE1p?=
 =?utf-8?B?VnZSZWtoOHByVkpMSG1jRmdJZ2paRlhkajBWS0xWTWtQVkt0RlZnVDYrb09B?=
 =?utf-8?B?MEZ1UkpIMlVLZGVsSmNyM0ZCWWdpYmxhOWE4anRHWHRNWGROTVJHamVvN2V2?=
 =?utf-8?B?ZXlqN1hoMnd2M3krSVNHWmVteGE1VkJIUVJPNDRKOHgzTlE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WjYxdlJxTnA4blUybXFOek5ES0p5YjU1TDVoSXNLYXNMOHFtVTJ6Z0htSDZv?=
 =?utf-8?B?S0IwVDJmc290QnRsSTFValN5dVlTUVoyak14MFVnY1RvVWxZcVRYL2hiT1Jj?=
 =?utf-8?B?aHNQZDd0OHBJTndON2RZZkl4WEczT2wzS2g2a3IxZUNXTjM0VHRWOHg4aXFK?=
 =?utf-8?B?SEVSeDZXQllvRXppVStnRG1wQ2VUM2s3MnhCbGoyT096OEdMQ0dmM0NTbTJv?=
 =?utf-8?B?eXMwRm9ZdC9KV2NvL01tWHdXdG1KanVNN3ZncnpPajUvRzRuREN3TGRtWmta?=
 =?utf-8?B?VEFjbVdLQm9GUlJFMUV5WHdISG0ycEx0RzVjem1MRUcwdGY3NXFkdEpEV3kr?=
 =?utf-8?B?WnFlYTVOd3gxOUZjbE00bXNacEFRQTl3ekwzU2I5VVRtWlVxbWpubysxbnlZ?=
 =?utf-8?B?MGVDb0tEeVhJS3RBcVlFM1o1cVJFZkRMZzFHT2w2NjdHVCtPcU1KeElKdDIw?=
 =?utf-8?B?dFc2VGQzbDB2WTdiNXZJVkw4Z3JhVVlzS2ZqZFlJRWNGdzdxMjhGU3YyTEVL?=
 =?utf-8?B?Qit0aERnZGZ0d202bEViTW1WNUhDb0J4U3F1elA4NzdvQ3RQNENXb0tSZEhx?=
 =?utf-8?B?elorTWpHcmU2blAvOWxxSGRkb2grbnA2dmNSUTQxSmcrajNJNW50MXFlbjND?=
 =?utf-8?B?ZlpxTmp0ckJDeVF3RFJ5UTNld1hOOFRta1dYR3NJQXBpcWdpLzF6Z3hIVUJm?=
 =?utf-8?B?ajE3YVBnM3d6eXRETTFYSktMb0xMMjk0cDRqTDZBRWNYYnNBRStsUGY5bUJJ?=
 =?utf-8?B?Q0IwSDlOa0p3YjFBQ1FBQmoweFI2S1FseHA2WmJkMi9rTDVmeXljazgyM09B?=
 =?utf-8?B?cHhzN1BWTW5XWHdrUlNTM3p5K200cVhKQ3FOcE5ua2VORndHd1NPcnQzSlY5?=
 =?utf-8?B?bVQ4R1VVM2pjcG4zYkxUWmR4UDdmVVQ3WjBER1k4VDR3c08vNTZaL1JFTzF4?=
 =?utf-8?B?MnRZVzdnTmxVNklkOFBlVVJneXBWRVRzdlJTM3FhdVdua2NjSkZpYXBmNjFu?=
 =?utf-8?B?VzlVWjBHamFKRlNpTFh3VzBxYzA2dHBGb1Y4ZkI4WHVTOXQ1QmpnRUxrV0pw?=
 =?utf-8?B?MzJlVWJvdmRVbDdXc25WWU1vbS9XQnM5L2RpNXlTSzhXaEpFdjlTRFZUSk1i?=
 =?utf-8?B?a3REeHV2K0huWFFiOXlnYy9tWFFUakRWa2ErbVdBbUxRakdYeDB5M1ZTLzEr?=
 =?utf-8?B?Uk5OVWJVSTFaQ3ArRFN5MXVjNmdTRzF2NDB3ODZ4M1M4SDI4S3JScEYvYlEx?=
 =?utf-8?B?cWJ1aEZpcUUzMC9ETlNKTWU2TElwVVd2ZWtNem9yQ1JKdERZZm9CdEZDTFA3?=
 =?utf-8?B?a05pUTdKMDkwUDFuVGdncld1VGtoOW41OS85b1BTWXdqSzByVGFldks2RG90?=
 =?utf-8?B?OUpUQUFhR0wzK3U2QTM1b0JkalU0VnZoNjhuOUZTbTdYdVowN3ZSWXYzdE9x?=
 =?utf-8?B?N2o3NzNRUTRJdVQ1bzh2NkNkZGozNnlhblJuQWVmNk1WcE5HWW5VazN0ZHRH?=
 =?utf-8?B?QlMrVkVrS012eEoxcGJtbVJvMUMrY0hsTkw3SjlaZE50M2hSRlhITElOV1Nw?=
 =?utf-8?B?d29ndWc4N25iemhGaVZIZW1UWGZDakE2SjNuRG5UZVRFT0ZaZ2g3OGRpVFJh?=
 =?utf-8?B?UzEyektCNGxVbHI4TFpXcGQwbmIyWDBTWnlhaHlWN2RkMHd5MXRZQUJxM0dT?=
 =?utf-8?B?U2ZSZnJYUUVtMFZmMCtEeE5LYVZIeXpPTTZSVXc2MkxjWUR6VDFaUlVrTWxy?=
 =?utf-8?B?Y2ZCWm00UnlRTFdPbm9Fbndodm80YVZZUTIwQkNsNnluWnp6VXJDaHgrZkJU?=
 =?utf-8?B?Yk5jTk51S1FkenRsbk5rTk9RdS9xalRIZEwzajM0ZTJuYzBKWnlCVmNIbFRR?=
 =?utf-8?B?bmNJbGNSeHBLaHZkdVM3elRQUFB4UHlTSnp4NjlFdmdBdGdnKzdEM29RbUlG?=
 =?utf-8?B?MVlidkJYZGRuS2RtMWFtV2tuTCt0bitYM1NKNHM5Ulhoa1dLcGdLMFVMMHl0?=
 =?utf-8?B?a1l2UjdvMFZsQVpUdG5Ic3VacHM3TVF4aEhFSHI4SHRxcnBvckRkY3hsVVI5?=
 =?utf-8?B?MXkwcXd2Z1BYNTNobStxemtGdkw0QXZZa2QwUHAxTG1xckc3MDlla1NGd211?=
 =?utf-8?Q?t2mChzo83uh3m2adxmXWtrZ1b?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 464e9278-d855-4384-2a61-08dd5c9dc4ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2025 10:58:04.0573 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ivdLW2kxdHYluY823bvvkILqXWHPj0/7agOYMvQ95MozM3e3UPnEU/s0BGPCN6FwVfxI0QtC805TMyBznwygOYh/VizdbfajRwpfqflGolU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7357
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQ0NDM2Ly0g
UmUtcmVwb3J0ZWQuDQppOTE1LkNJLkZVTEwgLSBSZS1yZXBvcnRlZC4NCg0KVGhhbmtzLA0KUmF2
YWxpLg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogSTkxNS1jaS1pbmZyYSA8
aTkxNS1jaS1pbmZyYS1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9m
IEphbnVzeiBLcnp5c3p0b2Zpaw0KU2VudDogMDYgTWFyY2ggMjAyNSAxNToyMg0KVG86IEk5MTUt
Y2ktaW5mcmFAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KU3ViamVjdDogUmU6IOKclyBpOTE1LkNJLkZ1bGw6IGZhaWx1cmUgZm9yIGRy
bS9pOTE1OiBGaXggaGFybWZ1bGwgZHJpdmVyIHJlZ2lzdGVyL3VucmVnaXN0ZXIgYXNzeW1ldHJ5
IChyZXY0KQ0KDQpIaSBJOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZywNCg0KT24g
VGh1cnNkYXksIDYgTWFyY2ggMjAyNSAwMzowODo1NyBDRVQgUGF0Y2h3b3JrIHdyb3RlOg0KPiA9
PSBTZXJpZXMgRGV0YWlscyA9PQ0KPiANCj4gU2VyaWVzOiBkcm0vaTkxNTogRml4IGhhcm1mdWxs
IGRyaXZlciByZWdpc3Rlci91bnJlZ2lzdGVyIGFzc3ltZXRyeSAocmV2NCkNCj4gVVJMICAgOiBo
dHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzE0NDQzNi8NCj4gU3RhdGUg
OiBmYWlsdXJlDQo+IA0KPiA9PSBTdW1tYXJ5ID09DQo+IA0KPiBDSSBCdWcgTG9nIC0gY2hhbmdl
cyBmcm9tIENJX0RSTV8xNjIzMV9mdWxsIC0+IFBhdGNod29ya18xNDQ0MzZ2NF9mdWxsIA0KPiA9
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQo+IA0K
PiBTdW1tYXJ5DQo+IC0tLS0tLS0NCj4gDQo+ICAgKipGQUlMVVJFKioNCj4gDQo+ICAgU2VyaW91
cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzE0NDQzNnY0X2Z1bGwgYWJz
b2x1dGVseSBuZWVkIHRvIGJlDQo+ICAgdmVyaWZpZWQgbWFudWFsbHkuDQo+ICAgDQo+ICAgSWYg
eW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRo
ZSBjaGFuZ2VzDQo+ICAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQ0NDM2djRfZnVsbCwgcGxl
YXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIChJOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZykgdG8gYWxsb3cgdGhlbQ0KPiAgIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9k
ZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLg0KPiANCj4gICANCj4g
DQo+IFBhcnRpY2lwYXRpbmcgaG9zdHMgKDEwIC0+IDEwKQ0KPiAtLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0NCj4gDQo+ICAgTm8gY2hhbmdlcyBpbiBwYXJ0aWNpcGF0aW5nIGhvc3RzDQo+
IA0KPiBQb3NzaWJsZSBuZXcgaXNzdWVzDQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gDQo+ICAg
SGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNl
ZCBpbiBQYXRjaHdvcmtfMTQ0NDM2djRfZnVsbDoNCj4gDQo+ICMjIyBJR1QgY2hhbmdlcyAjIyMN
Cj4gDQo+ICMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIw0KPiANCj4gICAqIGlndEBpOTE1
X21vZHVsZV9sb2FkQHJlbG9hZC13aXRoLWZhdWx0LWluamVjdGlvbjoNCj4gICAgIC0gc2hhcmQt
c25iOiAgICAgICAgICBbUEFTU11bMV0gLT4gW0RNRVNHLVdBUk5dWzJdDQo+ICAgIFsxXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTYyMzEvc2hhcmQt
c25iNy9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtd2l0aC1mYXVsdC1pbmplY3Rpb24uaHRt
bA0KPiAgICBbMl06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNDQ0MzZ2NC9zaGFyZC1zbmI2DQo+IC9pZ3RAaTkxNV9tb2R1bGVfbG9hZEBy
ZWxvYWQtd2l0aC1mYXVsdC1pbmplY3Rpb24uaHRtbA0KDQpUaGVyZSBpcyBhbHJlYWR5IGEgYnVn
IGZvY3VzZWQgb24gdGhpcyBrZXJuZWwgbWVzc2FnZSwNCmh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNr
dG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvOTgyMCAsIG9ubHkgZXhwZWN0aW5nIGVp
dGhlciBhYm9ydCBvciBpbmNvbXBsZXRlLCBub3QgZG1lc2ctd2FybiByZXN1bHQuDQpUaGlzIHNl
cmllcyByZXNvbHZlcyBpc3N1ZXMgc3RhbmRpbmcgYmVoaW5kIHRob3NlIGFib3J0cy9pbmNvbXBs
ZXRlcywgYnV0IGRvZXMgbm90IGFkZHJlc3MgdGhhdCBlcnJvciBtZXNzYWdlLCBsZWF2aW5nIGl0
IHVudG91Y2hlZCBzbyBub3cgZG1lc2ctd2FybiBpcyB0cmlnZ2VyZWQuICBUaGVuLCBwbGVhc2Ug
ZXh0ZW5kIGZpbHRlcnMgb2YgdGhhdCBidWcgd2l0aCBkbWVzZy13YXJuIHJlc3VsdC4gIA0KU3Vj
aCByZXBvcnRzIHdpbGwgc3RhcnQgYXBwZWFyaW5nIGluIHJlZ3VsYXIgQ0kgcnVucyBhcyBzb29u
IGFzIHRoZSBwYXRjaCBpcyBhY2NlcHRlZCBhbmQgYXBwbGllZC4NCg0KPiANCj4gICAqIGlndEBr
bXNfZmxpcEBwbGFpbi1mbGlwLWZiLXJlY3JlYXRlLWludGVycnVwdGlibGVAYS1lZHAxOg0KPiAg
ICAgLSBzaGFyZC1tdGxwOiAgICAgICAgIFtQQVNTXVszXSAtPiBbRkFJTF1bNF0NCj4gICAgWzNd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNjIzMS9z
aGFyZC1tdGxwLTQvaWd0QGttc19mbGlwQHBsYWluLWZsaXAtZmItcmVjcmVhdGUtaW50ZXJydXB0
aWJsZUBhLWVkcDEuaHRtbA0KPiAgICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDQzNnY0L3NoYXJkLW10bHAtMi9pZ3RAa21zX2ZsaXBA
cGxhaW4tZmxpcC1mYi1yZWNyZWF0ZS1pbnRlcnJ1cHRpYmxlQGEtZWRwMS5odG1sDQo+IA0KPiAg
ICogaWd0QGttc19mbGlwQHBsYWluLWZsaXAtdHMtY2hlY2staW50ZXJydXB0aWJsZUBhLWhkbWkt
YTI6DQo+ICAgICAtIHNoYXJkLXJrbDogICAgICAgICAgW1BBU1NdWzVdIC0+IFtGQUlMXVs2XQ0K
PiAgICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzE2MjMxL3NoYXJkLXJrbC01L2lndEBrbXNfZmxpcEBwbGFpbi1mbGlwLXRzLWNoZWNrLWludGVy
cnVwdGlibGVAYS1oZG1pLWEyLmh0bWwNCj4gICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQ0MzZ2NC9zaGFyZC1ya2wtMy9pZ3RAa21z
X2ZsaXBAcGxhaW4tZmxpcC10cy1jaGVjay1pbnRlcnJ1cHRpYmxlQGEtaGRtaS1hMi5odG1sDQoN
ClNpbmNlIHRoZSBzZXJpZXMgb25seSB0b3VjaGVzIGRyaXZlciB1bnJlZ2lzdGVyIHBhdGgsIGFu
ZCB0aGUgdHdvIGFib3ZlIGxpc3RlZCANCnRlc3RzIGRvbid0IGVudGVyIHRoYXQgcGF0aCwgdGhl
c2UgdHdvIGlzc3VlcyBhcmUgbm90IHJlbGF0ZWQuICBQbGVhc2UgdXBkYXRlIA0KZmlsdGVycyBh
bmQgcmUtcmVwb3J0Lg0KDQpUaGFua3MsDQpKYW51c3oNCg0KDQoNCg0K
