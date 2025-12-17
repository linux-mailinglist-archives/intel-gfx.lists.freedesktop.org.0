Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 226E5CC8328
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 15:31:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A116310ECFA;
	Wed, 17 Dec 2025 14:31:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BoJeTwJf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F69610ECFA;
 Wed, 17 Dec 2025 14:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765981883; x=1797517883;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=bstuIUe7n5hQSEUCvCvwkYyH/jCES+rT2Tnry92FKPU=;
 b=BoJeTwJfel0zEggJJke9/ReOjl2P6gS/WzHZvxvtudxmIA3/oXg905cJ
 hRhZ3Wi/vBOBC4ypms8hlPgr1apjsyxwd7Lih/7zTi2YJI1wEx2IJ1WRx
 UoFBqzC373gyctrU0Mh4kEB7qhNWSbftoUKhYoGb/m9i6Ze4eYjLj6+An
 0A/PBiCjNB2nGOc9jlJjWFhn6O/VtzZcgIbpklwBGdWr4geM3KObpcDnC
 y/VsdawhmlG8DQ1CVpuLB6k+zGXJgAq7FdO+y7VIXmVdGkl2GCwLokSAW
 TQr4OK5Nh+Ga5EMyloBzMYXWEfw1HY0L7hMWgcPfeZdh0c/xcc9VGlrSj g==;
X-CSE-ConnectionGUID: lDr9nnPuQhu5jT1TxQpheA==
X-CSE-MsgGUID: Tz99xefWSn+PsABJKO7pRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="70495782"
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="70495782"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 06:31:22 -0800
X-CSE-ConnectionGUID: gRsE41tdRi6nYWij0IzKug==
X-CSE-MsgGUID: tjuKCcTrROavqB46Hm3qhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="202690134"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 06:31:22 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 06:31:22 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 17 Dec 2025 06:31:22 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.31) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 06:31:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gAlpWhmCUszJwXyHk9YPGti89SSrDCOipUbsczhuTQgWzz3Q6LoSQxXX0/8RdQ3Da3mhnvpGyoA7Y3WoSaxK4FbocPSpos1Fi9wDV06MzNOn3lK5TEUPl2320Iph1zKqcZhpdZ5VRfh31CvethrvhMfvVsouNe3rIMIWcGV/T4TzG7EIHECW+iDgM1hB6xllgFvVSYzHqsdylRLncatjVJVpX6JY+1ZMNpEXgPl+qAUvx4xweyD/UfNnsvUDTVWNe8Irej+8TnEEZMLQ8jMmnhjDB+4gA28fP7649wcD55A/9ZRzX5QOxJMLKkTVn3Qa2ZABNvFj+3/7aRBcOh/r8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bstuIUe7n5hQSEUCvCvwkYyH/jCES+rT2Tnry92FKPU=;
 b=Ysd46dRuDEjJ0i7xHJSp8b/3tk+S+u9wgieeyWsr6hQGSQ8Vmf5/cr//7kFosSTWfL7RkZci/a3dbFpWqt+p4AnuU9uqKr1MYoZeQQ9A6b801jbM+uNTMzLaWOnNqiL4D204T+/OwXCo1NyYzgEp6+z+liCsfYV6v4fVcrC9D+SJjnN3NOIqorTwDy5Wnc1hK8ek/y8aY2COOfTDqZ9+ICvDuh7IXjo9YY+4x3daTM56iTKMIcyRbuKX+edlE6Dq6k42lZ1Z8B3tFuxlkOY5C2f6zvWsZ9U+qL4pA/dGAEjWfCWhn+EvTVg1GRX6LXBIAGfrtnalo2BNamCq8/GmRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DS7PR11MB6271.namprd11.prod.outlook.com (2603:10b6:8:95::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9412.13; Wed, 17 Dec 2025 14:31:18 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%5]) with mapi id 15.20.9434.001; Wed, 17 Dec 2025
 14:31:18 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH] drm/i915/display: update the wa_22014263786
Thread-Topic: [PATCH] drm/i915/display: update the wa_22014263786
Thread-Index: AQHcbpUTk32MT36Rnku5vq5Yo0z9LLUk7pSAgAD33AA=
Date: Wed, 17 Dec 2025 14:31:18 +0000
Message-ID: <df25973dab940d34d44458f4c09c777d9bac7edd.camel@intel.com>
References: <20251216140508.975258-1-vinod.govindapillai@intel.com>
 <20251216234409.GA1180203@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20251216234409.GA1180203@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DS7PR11MB6271:EE_
x-ms-office365-filtering-correlation-id: f222ab13-08c8-4b41-9573-08de3d78f0f1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?M3E3RzlVSU9Ea3RDOXZFWnVmd042NUxObVpNcllsYnJveDU3azJ4QkJiazVZ?=
 =?utf-8?B?cW5rVE9LRmNMZzZXdDk3T25FVm44NklaUzJzZTFnYkFpZExna3ZyWkt1R0Vm?=
 =?utf-8?B?Q3E4bWR0eFNsaUlUSzYyTUcwdnl4b043Q3pjK25rMkp2UFR1bGVrUzM5Uy9z?=
 =?utf-8?B?ZGp4dWUyeWxianIwdWRLbW94WVBHRzcxMEhaM0o5TytQYlVjLzFtRGs3WDRa?=
 =?utf-8?B?WHBMLzI2OFVsMHptMWJkY1ZOWWViOXMrYktwbFBaSG1kQ2NDNVdqVThJaFJE?=
 =?utf-8?B?OE8zMlBERkNaMVAvTEs0Yi91Y3QwY3owcnpXUDVOUUQ4NjBUN29NUWlnNHRG?=
 =?utf-8?B?blBTbVZCckZMUURMQjNPVThVY3I4eXlQZkYxelkvWmJLYWdoVGRNanRVK2Fr?=
 =?utf-8?B?MmR0YkRiaHFVdVNaT2t0MThna296ZEdmNzN4eTI3RDFxNWk3YXE0ajZUTGRo?=
 =?utf-8?B?UzhMbDdlcDcwUEI0NTZ2azJqWDNWeEd3Zk1lK2dOR3hFWTBudEpWejVxK29M?=
 =?utf-8?B?ZTFpcXRFWVljSXZNb3JiZS9JejVzaUxyV28wUnNHRk54dmdoTjZVUFFFa0Zu?=
 =?utf-8?B?aytwRFZCY2V6MFNmM1hJdGFReWpVRDM5Z056cm9oQjlrR1pRSE43Z2t3bzR2?=
 =?utf-8?B?WThhTCtaNURCM240UlA2VmFZVHJHZ1grcnNJYUtjeUJSU2haN1BMWkVnYVlU?=
 =?utf-8?B?MTRHTFNoeGJlQ3pqcVZmN0JnbUk2cnFQMnlxUlEvK3FDOVMybllWM0lmQkhq?=
 =?utf-8?B?VGpicWprNXZVZUk3a0tyUkhXaytaRVEzdW1UbGdiYUJYblI0WnJtcFlyeHBp?=
 =?utf-8?B?OGZUWjB4MTI5WUJnVTBZdUlLQVlPdVp3c0VHUE1KenVkMkttbmFtbVZWT3JH?=
 =?utf-8?B?QkoyWkpIV0EwOXpRemNNZ0x0Q2htaEhxV2xCTFVRL0ZOWGZnVWx6ZnBiV2hu?=
 =?utf-8?B?TWlxd2RTamx1eTUrR3pJclJDbEN3ZEgvVXRMTUtYUklXZi9pSUxYME42dkpp?=
 =?utf-8?B?RlJhZGdKMUNMMWpUOUNvNWRtN09sZnM4NmgyUTZBVkliVXlxYkhySjFObkJn?=
 =?utf-8?B?Zysra016OXN6eGZFeFhZUElFdkVWY2hLa1BOaTRLYzJrQTlZM0pTOEFuSkhO?=
 =?utf-8?B?U3JVWUdLNVMySHB2STRweFg2NWthejVLczdkVE1SZmlvdUJFbjl1MFVtY2I0?=
 =?utf-8?B?NlRJcWhvWEM5SnZIR096ZnVadzNSLzFzVjUwNm9wbVpwYmM1dUExUjNJY3BK?=
 =?utf-8?B?ZTgrc282bDlqOVVUeC8xUitCUWVGOWZmY2ZiOStIWndOL1lnbXpMK0U1STE4?=
 =?utf-8?B?KzY1OVFwK0tSZ0tYN0VKd1NCMldHTmpHZFg1Nmo0SitRUjA0YlJ4MjRrbUZh?=
 =?utf-8?B?Q1RoUm1waGo4MXBDdjMxbWhhbVBqdnhoY1YrcEU3S25FNmVyaTFjMGZCRUd2?=
 =?utf-8?B?L3BhaUEwcGliOHluT3ZBWmZvT1JyVXJnRVFVNG50N1RCWE16aCtDRjltYXZJ?=
 =?utf-8?B?eWJyUHovMlJrSSs2c1VxZUlyK2YvQ0JIQVNsaUxTeE1rVmovNUZoVm1BS3hE?=
 =?utf-8?B?YSt4STdNNFArS0hXNHloYXpoOXJ3NVNvaHVjQnlUZnZKdHVYTmplNC8vdDMr?=
 =?utf-8?B?dzA5RkloV1hBSURhc0NEVmpUMEZFd3pEK1VKVGpuOHJRbVEwUnZuWGEzQ0R4?=
 =?utf-8?B?bVVWWEZOVnNRQVB1aEZHTUJCdk9VMXdCOE5TMndpbTJYUHhETGxUa0dYVDBD?=
 =?utf-8?B?c2hlQStmbUhaamVMWitGeEtkempVSTAvMWxMM05tSysvVUZud0lTdFk3aXZp?=
 =?utf-8?B?VjdjQUNIYk5qY0JyR1JWaTJHYmNKcXQ5a1NCaEdHL2w3K05kdndUd0E3dXNK?=
 =?utf-8?B?VmtjeVVJTGRVeG9EOE1OSDU3MHBseEdpWSs2aUFuczN5S2NhZ290MGpGOTVM?=
 =?utf-8?B?RXNkTjhldmpzalBlNDNzNlNqTHdQZkdwd2U0WlJFQmNTcTBvUFdmbTQ4QmNW?=
 =?utf-8?B?Rk4ySmdmVkUzdU9sT3Y4ak9wcGJhcjk4VkI0Q1hmeFdJbkVDS1FKODI4T2xN?=
 =?utf-8?Q?ThKNwJ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ME56NS9rT3R6WllJQ0dFSVc4aGxod1A3dE5SN0FJb3RpK2crbUlPV0tvOEl3?=
 =?utf-8?B?czJDV2N2d09lWjNMYWZ5SmcxZk1UQUhEYmlpc2J1aHY5cVRqeGU5bzhyTVBR?=
 =?utf-8?B?RmpWN0dhYXJZRXJHVzVnKzJGSVpia3IxT2FuM09UK2ZuTW0vaS85elZEbERF?=
 =?utf-8?B?ZGNzUXlwb1lGWFYvWGViVXNWekxmbVk4eGZFUjlmak9xZXJkdmpVdG43d0xI?=
 =?utf-8?B?UVp2SktaWEF2OE1YdkhHdGNvZDBIUFEwclhNUC85MFFqdTVkWmN2b1VUaFB0?=
 =?utf-8?B?cFBoeFpiWFYzZGVwT3ZyVUh1WGRFR3VycVJ5bzFyNGU5V0JPY0FqUnFSbGlF?=
 =?utf-8?B?UWpFODBodHoreUJUU0JsVGZ1NXdJeWptOFFZOXI3YTVKZWZwcEFKWUNYVWtS?=
 =?utf-8?B?SXA0NEliT0ZFYjhlazdOMC94Tm5HcmFaL0NLWWwxVUJUR2NNTk9VK1JhSnBR?=
 =?utf-8?B?RUhTSTRvZjVhcHVJcXVDWjh2YUVpOXZxWkRrUmY5ZlkwZVJtc0toeUdxWUha?=
 =?utf-8?B?bERlb0ZKa0hmMWdPU0twcmpNbmRTVEhhL0hNQ3dDTGZhWmZ4b09LbkFMZXhC?=
 =?utf-8?B?YnFjQ3FMYkR6VGtjcFl1bkttRDZtd0NNV2hwUzVuN2dENkZOdUZ3WEZGODJi?=
 =?utf-8?B?UmZ2WnB4SS9KOE1tYmZFQWY2L1lLaDlFeUlMYmpCWmpoVzIxQlNUYXZpWjFC?=
 =?utf-8?B?RlpDNDNwQllDSmZZcEpoOTl4eHo4OU9Ia0lWU2NGWGlsSUw3U0ZsUkNRa0RX?=
 =?utf-8?B?MCtLN3FYSFM1aktGWmh5OXBVR0lZUjI3dGhwRmVMcXlEUzhYcmowbU1sOEE5?=
 =?utf-8?B?YzN0YWFwT0E4MlhFZnRuOUlTTGpnM1o0VHBQeFM0aVRGWEJ2dmRabFI1Mkxo?=
 =?utf-8?B?REM1ckZTN3NacjZ0VkJWa3RIMkYvTzRncm5IWGx3K3FnS3VaUWVWU1lrczBn?=
 =?utf-8?B?dEIvZm91RTlWZ2t2NHArZnJZUmRvNkVCM2twVlU3WkFmSWo4Vm1UbC9GTDBN?=
 =?utf-8?B?MHQwOGk2SForVFAwRUtEdzNhRTRoZlVzR1RNSzlka3ZHL0R4ZTN0ZHdlb3Mx?=
 =?utf-8?B?aFo4bDdoNTFjUFU5NjRTMzJnb0Z5VEFTRjgrQXloeVRORHA4UWYzekxjWHFr?=
 =?utf-8?B?NVBiWXBLUXhJU09pV2FVaXd0RlI4V2tQait5ckZyWFFXVHF1WTF1NnVPZGFj?=
 =?utf-8?B?RnNjeDhlcFppRjJ3NFVpN1FJOXNZaERoUE5JbGJOeWZmNmlSRG00VzEyRG5W?=
 =?utf-8?B?em82NENRM2RjcWRDdk9zS3JNc2VPWkN5Q1FOcWZuUnUrVUJDM2t4cWJZYWZ6?=
 =?utf-8?B?ZTZpeWUxSVZVYjVTQ0xNSk5jRW1IKzdOeDRXK1Jua0o5d2lFeXJ3MDExZ0pi?=
 =?utf-8?B?TlV5ZzhYb3Y3TE5CMTN1bVRKUmpvR1pmS0t4OUt5c0llRmZ0aDR0ZGR1bU5l?=
 =?utf-8?B?bGYrNWFpS3dlNUtrUkdkSFp3a0xGQlpWVVErY3JDc2dSbVFrOUtIeEtjaEpL?=
 =?utf-8?B?WWk3RFhnQ2dCNFdPMnRPcDRTV0pXdlVjRzhBaUowZG81MHpTdUJvNCsxdUUy?=
 =?utf-8?B?VjNVL2ExbzJXVUp2bXpGUThibHZkcU03UkN1d2UvSFpmMzcwamlTYXJKUDg3?=
 =?utf-8?B?Ty95TE1tZGdwUFJxdWlEWncxeHd3UWpkT1ZqS2h3Q0dLRFNMRjB4cFJKRWxI?=
 =?utf-8?B?alVpMUE0SDZJcTdXejZXZGJpbmwxR29BM2JMb3VjZ241Yk1Wb1kyK2VWNnVO?=
 =?utf-8?B?dG1YMlpWU1AwTHRDQlJtbUJhY1IrOVpjS004MXVPcmFaOVBwd3hZSjJRUEJ3?=
 =?utf-8?B?QWhndjZ2blIrR3FtZHNxTHFkTVc5NTF5VGlRclJRc3JoWTU0KzhIcnFOV29I?=
 =?utf-8?B?RUk4dGZ5eHB0K0RqUWhHdXJEVTI1NDkxN1V0b3dMTlg2UjFWS0RSd3g1NHBt?=
 =?utf-8?B?VlJnUkNTOWlqSjJ4cmp2eWpDblRhUSt4VDQvSE80dGRwc0ZqM1VIa1JrUnRO?=
 =?utf-8?B?Y3VycjlXdDJNckZiekVMY0J4d2oyb0dDdm9YMGNVcG0zaWtjY1VJOVZMNjV3?=
 =?utf-8?B?NGNnVUFGaUhaZnRuRVgrbWJMM1RnWkZQSDhDb1ZCYm11bmFIWlo4cFhFazJj?=
 =?utf-8?B?UnRsMkxQbDZOaExyUmR3c1I4QmRHcGQ3MEpaNERnblU5ajJLRytBUHlZM0w0?=
 =?utf-8?Q?f+xPhUz68MCCSbYE6XoOL+0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C34978CF6440F748AFF2EC2BF256899C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f222ab13-08c8-4b41-9573-08de3d78f0f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2025 14:31:18.0715 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8I2brhP6pylU7m/W4ohzA8joBNiTulRO7uaf3gXLw41KhAHrIsrOA6uZ3a3GOSAHNjRvQwStvKa1iUTJcwGRKLFvw5rTmV0KWDGkXk765PI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6271
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

T24gVHVlLCAyMDI1LTEyLTE2IGF0IDE1OjQ0IC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBUdWUsIERlYyAxNiwgMjAyNSBhdCAwNDowNTowOFBNICswMjAwLCBWaW5vZCBHb3ZpbmRhcGls
bGFpIHdyb3RlOg0KPiA+IEZvciBERzIsIHdhXzIyMDE0MjYzNzg2IGlzIGFwcGxpY2FibGUgb25s
eSBpZiB0aGUgbnVtYmVyIG9mIGFjdGl2ZQ0KPiA+IHBsYW5lcyBpcyBncmVhdGVyIHRoYW4gMSBp
biBwaXBlIEEgYW5kIHBpcGUgQi4gQ3Vyc29yIHBsYW5lcyBhbmQNCj4gPiBhbnkgcGxhbmVzIG9u
IHBpcGUgQyBvciBwaXBlIEQgYXJlIG5vdCBjb25zaWRlcmVkIGZvciB0aGlzLg0KPiA+IA0KPiA+
IEJzcGVjOiA1NDA3NywgNzIxOTcNCj4gPiBTaWduZWQtb2ZmLWJ5OiBWaW5vZCBHb3ZpbmRhcGls
bGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoC4uLi9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmPCoMKgIHwgMjkNCj4gPiArKysr
KysrKysrKysrKysrKystDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5jwqDCoMKgwqDCoCB8wqAgNiArKysrDQo+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDM0IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmMNCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5jDQo+ID4gaW5kZXggYTAwYWYz
OWY3NTM4Li5mZmMyMzU2MjgzYWEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuYw0KPiA+IEBAIC03LDYgKzcsNyBAQA0KPiA+
IMKgDQo+ID4gwqAjaW5jbHVkZSAiaTkxNV9yZWcuaCINCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9k
ZS5oIg0KPiA+ICsjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIg0KPiA+IMKgI2luY2x1
ZGUgImludGVsX2Rpc3BsYXlfY29yZS5oIg0KPiA+IMKgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlf
cmVncy5oIg0KPiA+IMKgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfd2EuaCINCj4gPiBAQCAtNTMs
NiArNTQsMzIgQEAgc3RhdGljIGJvb2wNCj4gPiBpbnRlbF9kaXNwbGF5X25lZWRzX3dhXzE2MDI1
NTczNTc1KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiA+IMKgCQlESVNQTEFZX1ZF
UngxMDAoZGlzcGxheSkgPT0gMzUwMDsNCj4gPiDCoH0NCj4gPiDCoA0KPiA+ICtzdGF0aWMgYm9v
bCBpbnRlbF9kaXNwbGF5X25lZWRzX3dhXzIyMDE0MjYzNzg2KHN0cnVjdA0KPiA+IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXkpDQo+ID4gK3sNCj4gPiArCWlmICghSVNfRElTUExBWV9WRVJ4MTAwKGRp
c3BsYXksIDExMDAsIDE0MDApKQ0KPiA+ICsJCXJldHVybiBmYWxzZTsNCj4gPiArDQo+ID4gKwlp
ZiAoZGlzcGxheS0+cGxhdGZvcm0uZGcyKSB7DQo+ID4gKwkJdTggcGlwZV9tYXNrID0gUElQRV9B
IHwgUElQRV9COw0KPiA+ICsJCWludCBudW1fYWN0aXZlX3BsYW5lcyA9IDA7DQo+ID4gKwkJc3Ry
dWN0IGludGVsX2NydGMgKmNydGM7DQo+ID4gKw0KPiA+ICsJCWZvcl9lYWNoX2ludGVsX2NydGNf
aW5fcGlwZV9tYXNrKGRpc3BsYXktPmRybSwNCj4gPiBjcnRjLCBwaXBlX21hc2spIHsNCj4gPiAr
CQkJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUNCj4gPiA9DQo+ID4g
KwkJCQl0b19pbnRlbF9jcnRjX3N0YXRlKGNydGMtDQo+ID4gPmJhc2Uuc3RhdGUpOw0KPiA+ICsJ
CQl1OCBhY3RpdmVfcGxhbmVzID0NCj4gPiArCQkJCWNydGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXMg
Jg0KPiA+IH5CSVQoUExBTkVfQ1VSU09SKTsNCj4gPiArDQo+ID4gKwkJCW51bV9hY3RpdmVfcGxh
bmVzICs9DQo+ID4gaHdlaWdodDgoYWN0aXZlX3BsYW5lcyk7DQo+ID4gKwkJfQ0KPiA+ICsNCj4g
PiArCQlpZiAobnVtX2FjdGl2ZV9wbGFuZXMgPD0gMSkNCj4gPiArCQkJcmV0dXJuIGZhbHNlOw0K
PiA+ICsJfQ0KPiA+ICsNCj4gPiArCXJldHVybiB0cnVlOw0KPiA+ICt9DQo+ID4gKw0KPiA+IMKg
LyoNCj4gPiDCoCAqIFdhXzE0MDExNTAzMTE3Og0KPiA+IMKgICogRml4ZXM6IEJlZm9yZSBlbmFi
bGluZyB0aGUgc2NhbGVyIERFIGZhdGFsIGVycm9yIGlzIG1hc2tlZA0KPiA+IEBAIC02OSw3ICs5
Niw3IEBAIGJvb2wgX19pbnRlbF9kaXNwbGF5X3dhKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ID4g
KmRpc3BsYXksIGVudW0gaW50ZWxfZGlzcGxheV93YSB3YSwNCj4gPiDCoAljYXNlIElOVEVMX0RJ
U1BMQVlfV0FfMTQwMTE1MDMxMTc6DQo+ID4gwqAJCXJldHVybiBESVNQTEFZX1ZFUihkaXNwbGF5
KSA9PSAxMzsNCj4gPiDCoAljYXNlIElOVEVMX0RJU1BMQVlfV0FfMjIwMTQyNjM3ODY6DQo+ID4g
LQkJcmV0dXJuIElTX0RJU1BMQVlfVkVSeDEwMChkaXNwbGF5LCAxMTAwLCAxNDAwKTsNCj4gPiAr
CQlyZXR1cm4NCj4gPiBpbnRlbF9kaXNwbGF5X25lZWRzX3dhXzIyMDE0MjYzNzg2KGRpc3BsYXkp
Ow0KPiA+IMKgCWNhc2UgSU5URUxfRElTUExBWV9XQV8xNTAxODMyNjUwNjoNCj4gPiDCoAkJcmV0
dXJuIGRpc3BsYXktPnBsYXRmb3JtLmJhdHRsZW1hZ2U7DQo+ID4gwqAJY2FzZSBJTlRFTF9ESVNQ
TEFZX1dBXzE0MDI1NzY5OTc4Og0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiYy5jDQo+ID4gaW5kZXggZmVmMmYzNWZmMWU5Li41YjBhODNjYjUzODYgMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiBAQCAt
OTQ0LDEwICs5NDQsMTYgQEAgc3RhdGljIHZvaWQNCj4gPiBpbnRlbF9mYmNfcHJvZ3JhbV93b3Jr
YXJvdW5kcyhzdHJ1Y3QgaW50ZWxfZmJjICpmYmMpDQo+ID4gwqAJICogV2FfMjIwMTQyNjM3ODYN
Cj4gPiDCoAkgKiBGaXhlczogU2NyZWVuIGZsaWNrZXIgd2l0aCBGQkMgYW5kIFBhY2thZ2UgQyBz
dGF0ZQ0KPiA+IGVuYWJsZWQNCj4gPiDCoAkgKiBXb3JrYXJvdW5kOiBGb3JjZWQgU0xCIGludmFs
aWRhdGlvbiBiZWZvcmUgc3RhcnQgb2YgbmV3DQo+ID4gZnJhbWUuDQo+ID4gKwkgKsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBGb3IgREcyLCB3YSBpcyBhcHBsaWVkIG9ubHkgaWYgdGhlIG51bWJl
cg0KPiA+IG9mIHBsYW5lcw0KPiA+ICsJICrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW4gUElQ
RSBBIGFuZCBQSVBFIEIgaXMgPiAxLiBJZiB0aGUgd2ENCj4gPiBjb25kaXRpb24gaXMNCj4gPiAr
CSAqwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG5vdCBtZXQsIHRoaXMgY2hpY2tlbiBiaXQgbXVz
dCBiZSB1bnNldCBmb3INCj4gPiBERzIuDQo+IA0KPiBJIG1pZ2h0IGJlIG1pc3JlbWVtYmVyaW5n
IHRoZSBGQkMgZmxvd3MgaW4gdGhlIGRyaXZlciBub3csIGJ1dCBJDQo+IGRvbid0DQo+IHRoaW5r
IHdlIGNvbWUgYmFjayB0byB0aGlzIHBvaW50IGFuZCByZS1ldmFsdWF0ZSB0aGUgd29ya2Fyb3Vu
ZCBvbmNlDQo+IEZCQw0KPiBoYXMgYmVlbiBlbmFibGVkIGFzIG90aGVyIHBsYW5lcyBnZXQgZW5h
YmxlZC9kaXNhYmxlZCBieSBsYXRlciBhdG9taWMNCj4gdHJhbnNhY3Rpb25zIGRvIHdlP8KgIEUu
Zy4sIGlmIHdlIGluaXRpYWxseSBqdXN0IGhhdmUgYSBzaW5nbGUgcGxhbmUNCj4gZW5hYmxlZCBv
biBwaXBlcyBBL0IsIHdlJ2xsIGFwcGx5IHRoZSB3b3JrYXJvdW5kIGFzIGV4cGVjdGVkLsKgIEJ1
dA0KPiB0aGVuDQo+IGlmIHdlIGxhdGVyIHR1cm4gb24gYW4gYWRkaXRpb25hbCBwbGFuZSBhcmUg
d2UgZ29pbmcgdG8gbm90aWNlIHRoYXQNCj4gdGhlDQo+IGNvbmRpdGlvbnMgaGF2ZSBjaGFuZ2Vk
IGFuZCB0aGF0IHdlIG5vdyBuZWVkIHRvIGRpc2FibGUgdGhlDQo+IHdvcmthcm91bmQ/DQo+IE9y
IGFsdGVybmF0aXZlbHkgaWYgd2UgaGF2ZSB0d28gcGxhbmVzIHR1cm5lZCBvbiBpbml0aWFsbHkg
KHNvDQo+IHdvcmthcm91bmQgbm90IGFwcGxpZWQpLCBidXQgdGhlbiB3ZSBkaXNhYmxlIHRoZSBv
bmUgdGhhdCBGQkMgaXNuJ3QNCj4gYm91bmQgdG8gYXJlIHdlIGdvaW5nIHRvIG5vdGljZSB0aGF0
IHdlIG5lZWQgdG8gY29tZSBiYWNrIGFuZCBhcHBseQ0KPiB0aGUNCj4gd29ya2Fyb3VuZD8NCj4g
DQo+IA0KPiBNYXR0DQoNCkhpIE1hdHQsDQoNCkFoLi4gc29ycnkuIEkgc2VudCBhIHdyb25nIHZl
cnNpb24gZm9yIHJldmlldyA6KCBUaGlzIG9uZSBpcyBhbiBlYXJsaWVyDQp2ZXJzaW9uIGFuZCBs
YXRlciBJIGNsYXJpZmllZCBmcm9tIEhXIHRlYW0gYWJvdXQgcmVzZXR0aW5nIHRoYXQgYml0IGlu
DQpjYXNlIG9mIHBsYW5lIGNvdW50IHJlZHVjZXMuIEVhcmxpZXIgdGhlIGFzc3VtcHRpb24gd2Fz
IHRoYXQgdGhpcyBiaXQNCm5lZWQgdG8gYmUgc2V0IGJlZm9yZSBlbmFibGluZyB0aGUgZmJjLsKg
DQoNCldlbGwsIGluIHRoZSBvbmUgSSB3YXMgc3VwcG9zZWQgdG8gc2VudCwgdGhpcyBXQSB3YXMg
bW92ZWQgYXMgcGFydCBvZg0KaW50ZWxfcGxhbmVfdXBkYXRlX25vYXJtKCkgbGlrZSBiZWxvdyBz
byB0aGF0IGl0IGdldHMgY2FsbGVkIGZvciBlYWNoDQpwbGFuZSB1cGRhdGVzLsKgDQoNCi0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGxhbmUuYw0KKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZS5jDQpAQCAtODU2LDkgKzg1NiwxMyBA
QCB2b2lkIGludGVsX3BsYW5lX3VwZGF0ZV9ub2FybShzdHJ1Y3QgaW50ZWxfZHNiDQoqZHNiLA0K
IA0KICAgICAgICB0cmFjZV9pbnRlbF9wbGFuZV91cGRhdGVfbm9hcm0ocGxhbmVfc3RhdGUsIGNy
dGMpOw0KIA0KLSAgICAgICBpZiAocGxhbmUtPmZiYykNCisgICAgICAgaWYgKHBsYW5lLT5mYmMp
ew0KICAgICAgICAgICAgICAgIGludGVsX2ZiY19kaXJ0eV9yZWN0X3VwZGF0ZV9ub2FybShkc2Is
IHBsYW5lKTsNCiANCisgICAgICAgICAgICAgICAvKiBUT0RPOiBjaGVjayBpZiBncm91cCB0aGVz
ZSBpbnRvDQppbnRlbF9mYmNfdXBkYXRlX25vYXJtKCk/ICovDQorICAgICAgICAgICAgICAgaW50
ZWxfZmJjX2hhbmRsZV93b3JrYXJvdW5kKGRzYiwgcGxhbmUpOw0KKyAgICAgICB9DQorDQoNCkJ1
dCBJIHNlZSB0aGF0IHRoaXMgd2lsbCBzdGlsbCBtaXNzIHRoZSBvdGhlciBwbGFuZSB1cGRhdGVz
IGFzIHRoaXMNCndpbGwgYmUgY2FsbGVkIG9ubHkgZm9yIHRoZSBwbGFuZSB1cGRhdGUgZm9yIHRo
ZSBwbGFuZSB3aXRoIHRoZSBmYmMuDQoNCkkgd2lsbCBuZWVkIHRvIHJlY2hlY2sgdGhpcyBzdGls
bCENCg0KTWF5IGJlIHNwbGl0IHRoZSB3YSBpbnRvIHBhcnRzIHdoZXJlIGludGVsX3dhXzIyMDE0
MjYzNzg2KCkgY2hlY2tzIG9uDQp0aGUgbm9uIERHMiBjYXNlIGFuZCBjYWxsIHRoYXQgYXMgcGFy
dCBvZiB0aGUgcHJvZ3JhbV93b3JrYXJvdW5kKCkgYXMNCml0IGlzIG5vdy4gQW5kIGxhdGVyIG9u
IGlmIChkZzIgJiYgbnVtYmVyIG9mIHBsYW5lcyBpbiBwaXBlIEEgYW5kIEIpDQpzZXQvcmVzZXQg
dGhpcyBiaXQgZnJvbSBpbnRlbF9hdG9taWNfY29tbWl0X3RhaWwoKT8NCg0KVGhhbmtzDQpWaW5v
ZA0KDQoNCj4gDQo+ID4gwqAJICovDQo+ID4gwqAJaWYgKGludGVsX2Rpc3BsYXlfd2EoZGlzcGxh
eSwgMjIwMTQyNjM3ODYpKQ0KPiA+IMKgCQlpbnRlbF9kZV9ybXcoZGlzcGxheSwgSUxLX0RQRkNf
Q0hJQ0tFTihmYmMtPmlkKSwNCj4gPiDCoAkJCcKgwqDCoMKgIDAsDQo+ID4gRFBGQ19DSElDS0VO
X0ZPUkNFX1NMQl9JTlZBTElEQVRJT04pOw0KPiA+ICsJZWxzZSBpZiAoZGlzcGxheS0+cGxhdGZv
cm0uZGcyKQ0KPiA+ICsJCWludGVsX2RlX3JtdyhkaXNwbGF5LCBJTEtfRFBGQ19DSElDS0VOKGZi
Yy0+aWQpLA0KPiA+ICsJCQnCoMKgwqDCoCBEUEZDX0NISUNLRU5fRk9SQ0VfU0xCX0lOVkFMSURB
VElPTiwNCj4gPiAwKTsNCj4gPiDCoA0KPiA+IMKgCS8qIHdhXzE4MDM4NTE3NTY1IERpc2FibGUg
RFBGQyBjbG9jayBnYXRpbmcgYmVmb3JlIEZCQw0KPiA+IGVuYWJsZSAqLw0KPiA+IMKgCWlmIChk
aXNwbGF5LT5wbGF0Zm9ybS5kZzIgfHwgRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTQpDQo+ID4g
LS0gDQo+ID4gMi40My4wDQo+ID4gDQo+IA0KDQo=
