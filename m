Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AE5B21CCA
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Aug 2025 07:17:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0F2510E586;
	Tue, 12 Aug 2025 05:17:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DddZbo8x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E0C810E325;
 Tue, 12 Aug 2025 05:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754975827; x=1786511827;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=37JCz7/6YJLV3f4+xDM4IwQhjhuCSGsKrYv/MK23fns=;
 b=DddZbo8x1QDB7NsF3Z7urDvKJj4/b/N7XttvVDazATiwYT2WiosOJRAc
 j6D2FL2vlDJXsa3u/BXUisSnobw4D7c4sAOXuKLrsrSy0F3R2tAZsfunb
 P5Y7IyrYqZ6trhbJC53J61fFnAyFb5JBEVBzjd5hw4sbisgiAH5J4TDOO
 hx4nI8FNVCGxp0cHRab1fjLuAVcHBVt3nlIF0yMeTDJbmDbGvpsWVzl6A
 oDrSQ0lVi3OW/0vcJEie7ZbEwIoINLXzfAPp8mtViFPIQFJ45zBI5skdO
 3pHU9iSfB0pMLDB44jAXHeTh7peb4F1kYTKLR68jQC/tG5FDH0GmVb//V g==;
X-CSE-ConnectionGUID: gAQcfyWsQK+7eyvOmGXcGw==
X-CSE-MsgGUID: BQxfsel4RSWXxH00qTay9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="74689764"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="74689764"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 22:17:07 -0700
X-CSE-ConnectionGUID: 5uHLtaSORkOwCenk8jjoWw==
X-CSE-MsgGUID: 31+hj5ScSSOAf8sm8TGY5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="196946518"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 22:17:06 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 22:17:06 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 11 Aug 2025 22:17:06 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.78) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 11 Aug 2025 22:17:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tCjmi/NPRp4Un5as/ASQeOx02KjZ9n3RZBvAonfvF4arPQX+dXOo1YHvCJKfHOl9gdQow8peACQdG6L0Ef+X7EWNkTyAYgxqWslMiNpH/zDcqcbuDc6sMBzq7gQ3K6sLzVPfW7BcdzG7oDN2YkL0hE/3QRkW1PoooX2kNoUVHQ2FIojbNOH9gkcOtSDKHtN7JvUsuErkpy3I0+ow9656VQ3eszk2oRCU+mdz/isM/yrdnIQRk47a+kul1UfmJgFHiTQxyUrYsI6pUN5/d1ASxCqoN4BnQN/so9Bbn2BhoWPd7MT+c5osVgjAyTnVJYpGznoLsGVjI0TtS6kvtKgipg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=37JCz7/6YJLV3f4+xDM4IwQhjhuCSGsKrYv/MK23fns=;
 b=ZKRiH2eizHwqaSmS0zAbub+DufVc5ggHB7B7gT/pB0V8QuFEZYYurg7ENxfIJWNR3iiGXiHpi5xiT7w+LngMfKmPEgzqUL0glkUAzkOYQq8Lvzikqs6kcsyZBOpyqQt64GPGyfhwGChwQbvx2/Uc+UPPd858/8i5kxDFhn4KwliN0ZnCZkgvLBIuCiLMMgxJs0IZHurLN2LZjt1CFKpFS8nzPuL+PQDINvnacPruFOoFCOLa6rjk3U+yiI+8pugzTI4a9BQRHXa0VBPHhQU9cl5MNN0Asl1EZUVzsYhOYfBS3Oe8R8P0KUC7Nx6JWuG9ZsRikL9n1iEP2UcL/gERrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by IA0PR11MB7284.namprd11.prod.outlook.com (2603:10b6:208:438::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.22; Tue, 12 Aug
 2025 05:17:02 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a%6]) with mapi id 15.20.9009.013; Tue, 12 Aug 2025
 05:17:02 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "Illipilli, TejasreeX"
 <tejasreex.illipilli@intel.com>, "I915-ci-infra@lists.freedesktop.org"
 <I915-ci-infra@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvdGM6?=
 =?utf-8?B?IEZpeCBlbmFibGVkL2Rpc2Nvbm5lY3RlZCBEUC1hbHQgc2luayBoYW5kbGlu?=
 =?utf-8?Q?g_(rev4)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS90YzogRml4?=
 =?utf-8?B?IGVuYWJsZWQvZGlzY29ubmVjdGVkIERQLWFsdCBzaW5rIGhhbmRsaW5nIChy?=
 =?utf-8?Q?ev4)?=
Thread-Index: AQHcCtFEG8/QXmeDDkGfBGLMtyFPzrRedr/w
Date: Tue, 12 Aug 2025 05:17:02 +0000
Message-ID: <CH0PR11MB5491CAFBFB801C6B029215E0EF2BA@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <20250811080152.906216-1-imre.deak@intel.com>
 <175490280808.225841.18271231768889882943@1538d3639d33>
 <aJoGgIX-VPN4_lSt@ideak-desk>
In-Reply-To: <aJoGgIX-VPN4_lSt@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|IA0PR11MB7284:EE_
x-ms-office365-filtering-correlation-id: abe64459-9d82-44b2-d5f5-08ddd95f789c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|13003099007|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?L3NpYSs0cDJYd21hTmVCRWt1dlkrTjB5WVhjRU5RTTFEZXZPUng0Yk1yc1VP?=
 =?utf-8?B?MDNrTWJBbTNNOTBmSTJYNzg0WmU3SHM5VCtpd08yWUxqRDdiLzc2R0l6WHZO?=
 =?utf-8?B?ZXFlNFZZZ1ZZM0JtbjdFK09TTVo1Q2w0VFlZKzFKRHpLUG5uOFlFeFRrRGx5?=
 =?utf-8?B?K2E0Y3dqZkxWbkM2dmVEYU10N1RvRTRJRFpTNy9DdXJHbDB4VEhVbERqdVBh?=
 =?utf-8?B?eHJNZ1NxR1F0aG1YRHE3eW15c0p0by9TdW9oVlh3aDdVZlh1eVJsR2FLSWF6?=
 =?utf-8?B?QjBZQ0tDRE0zMFo0R1J6b0lJWlVQMHBWbkFTUy9qaGpXWm5jbXIxT1lKOVZR?=
 =?utf-8?B?b1N2clhUa2ZYTU44aEFCYjRYWEM4UXhDN3M1WFRJU2dxOHI3OThBM2M0czVl?=
 =?utf-8?B?RlNjZHNVYU1zNXAxWVBIQXhBcWVoM0o3RVdvR3lOcjdDY2FuMDcwMGNxelRw?=
 =?utf-8?B?cGhVQkprTHM5a2cwR1NQVVQyK1JGV09IaStXUlNGWUNrYmRVSDVCVW1TOEFM?=
 =?utf-8?B?TnZVclhrTUo5Y1YxRG1BUkJJT0RJY2VCRWhCUVZmNkZuL3V3ak5ha2FRYmRp?=
 =?utf-8?B?dUhyTy9Jem1xdFMyT1F3UnVGV2hORlQ1ZDZwQ1M3L1RzeGdwbVhWOG5xakY3?=
 =?utf-8?B?VEphTy9uN042UFd4Y0FIVTkrcE53R2FUb2dPZEVUQXRxU2xpZFF5SmREMWxN?=
 =?utf-8?B?N2ZSWkI3dEZOdGxZby9aTURDZ1hjNU11Y0pwS0JNUzA3K1JNQkdTMXI5LzZL?=
 =?utf-8?B?cFEzeEM3N2tBblVxd1l4Zi9wR0VVdTRGNzRVNXJydUZDdVJVOWY3bDZBQ1FX?=
 =?utf-8?B?ZTR0STRQQ05PZklTcnV2akFpNUxXWmVtT3N3dytnb0ZmbDhmbFQ1aHZxY2J5?=
 =?utf-8?B?MjhVdGN4cnlkMjVrSFk0czhobnc1NjAwZ3NoVWNRb0hzTjBWc1ZmMkwvbDFM?=
 =?utf-8?B?dnlTTFJMalljbHltM2tLbUlRbm85RlBmclN3dmRPM3d2aHU3QjZKSHVrQm5J?=
 =?utf-8?B?eHRpMHdQeFRCNTF3dWprc1Njam9HblFiY1RKZmZobDVlYjVCSDBUR3M3Z05i?=
 =?utf-8?B?cFY1NmVlbENoNFlQeFdJdUVCamVKU0ZQRG0xUnFSMXFiNzlYRWxSQzBzL1pP?=
 =?utf-8?B?RWNZcEtGV0dST1ZxdnA4c1krRU1NZnNFZllWQlplMHB4cndWVGJGcm9WZ0sx?=
 =?utf-8?B?ZjRDaGFFQmpBTU4vMGxEWFI5MEJSOFo3M29raFU2MFRpdHRGUmN4Y2NIOWYy?=
 =?utf-8?B?SzdJNnJJK0lEeEZsQWx6YURCT0pBQW9uOUhEZ0tmQ3Z4Z3I5V1BSV1FNV1ZE?=
 =?utf-8?B?OW9TOGJQTm5wZ21hRUlQVTl0NWNjUzRIOWtxWHEydk1PcmptZ1BTZ01OazRm?=
 =?utf-8?B?dUF5NUFHUE1BWUkrR0h1cTZweEVZLzBUaUp0bHQwSURGRjV2bVlydUxhM1M5?=
 =?utf-8?B?WEdQMWZRZkN3NGJ2Tk1tSVN3OEc2SnB5cWZFYWxwdHF4TFU4eEJMcWV0TThW?=
 =?utf-8?B?QXptaWZjRi9VVlNCdUd1MHQ3d01Rdm5NdGx3SWhNcEVoNlVVbXMwcmxnNlNs?=
 =?utf-8?B?MnJHMVpMRW1xcHhyM2txUzl0NmxGVEUzWjFlZXF5QUUwSzZla3oydTBzRnE5?=
 =?utf-8?B?ZkFSamx2Q1dRNnlmemJUTVZuVVo3UGdUNGN5SUdzZjhaTjFNZU9YcktUR0x6?=
 =?utf-8?B?d09zbFlSZGx3NjgxY1FXL014QzBxYXcvcHE2QkdIZjN2RTM5dkUvZ3p3ZU5l?=
 =?utf-8?B?YnVFTnFxVUwwWWdFREg2cWsvVUdCSTVzbmdRUGN4MnBveDBtSHFaMFI5TG1O?=
 =?utf-8?B?SVBGREhLb2xhR2drcVp1ZkpIbnlnRE14YTNqd1dvV0NVTUhnQThLRzB3ai9L?=
 =?utf-8?B?TFN1cUlZVEcxdEcyQTFaZ2VqL3c0TGpwZHV4RC9XNXRpZEhyVENJVXRVd1FB?=
 =?utf-8?Q?sqnjvXMs06c=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(13003099007)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZVV0Z3k3R2g0OHJGeUlmTGJvTUVmbEd5QXE5M3pNY2oyeis5OGFsc0hHZTA0?=
 =?utf-8?B?ZUxia2hmQ1M3cFk4U1UvZ2M4aE9vWlowa3dRWXMrTWRoeWZTckl4RHFhak96?=
 =?utf-8?B?VTdnS2h4cVhINnNKcmY1UkdneTJsb2pEMkFJaXdLS3hCdTdTY0IxeTA0T3Ba?=
 =?utf-8?B?U2tCakwzVXcyTzJyTDhkUWM3c3pOSU1PalVKekF5ZXJnVm5RMnZnWVdDMUxG?=
 =?utf-8?B?ajNaVkpEOCtEYkRQZDNFbzF1REc3UTZON2NiU01jR04yVi9NS05rempmMTdU?=
 =?utf-8?B?bmE5L0h4S2JkbVNQdDR3ZjZKaVUwZG5LMHY4U1VvdzdDdklXTVRIWWhaQUFu?=
 =?utf-8?B?MUxMc2JxeXhCeWI0MS9hL1REc2o1bzRLeEtFcC9ZMnVUVEYvTkNrWEdDeTZP?=
 =?utf-8?B?ZW1nMVJDZERPL21wUXY3UU16TmNoYUJFME5xOGpjd1pmcDY0RE5sSUNObDNr?=
 =?utf-8?B?M1JaY3FZZVhERDh5bGFVcWxlbGkvQlJWS25ueE1KdkNuQ2RIU080cTFCOXkz?=
 =?utf-8?B?RVdyK291UE0rTzlla2ZoRmE5OEtuZExORDVhWDVsTkhabk4rNGhEM2JTNFhw?=
 =?utf-8?B?aFlqZElIRWNUM0kxa0xyM1NYSUd6UWhXMFpDRE0zdmRYVE85Yzg0Zkwwazh1?=
 =?utf-8?B?TUFXelRyNitTa1FTMEMyaDc2QVJOakttdEVKcXBFMnFrWmRtS09kTUFtTHNI?=
 =?utf-8?B?YW0yNngrYUdqY084UFNxcyt0SFc2aklScnNKUUYwT291b1ozKy8yRERZZFhy?=
 =?utf-8?B?UGlYWmVHRUtGR3dwd3F2R2dQMzFyZmpoTkk3S0RBbStqR0ZjTU5EQklaMkdq?=
 =?utf-8?B?MThvYkZqeDk3RGE4THpKdWVtWDQvdzZ6bWNGMks0OVVtYWhZbmxBQ3JiM2Fx?=
 =?utf-8?B?UDlURXBhOUtxbW9LY1hKTTVRTS9ISDlwaDBmdDFyM1RCckdjZjdwNUxmdHpo?=
 =?utf-8?B?UmFyV25hbG9DcmZVMVpqWmFNZmxBRDQ3ZDRQMGwwd041cUhzU3VYaWVRVnVy?=
 =?utf-8?B?NWlOaG1rWjFocTJsUE16RFpxQ2xON1BRMjFBOFZlUXpWU25jSTgyU2R0TmRn?=
 =?utf-8?B?dGE4RDQvSFhsbEo2US9wMEU3c1lHeVUxSWxXSUNtV3I0OW54dG9XcTlENmxk?=
 =?utf-8?B?dnlTZ245WVJmLzBRTzdJS0dQRWRsMlp1N1Zia21zN0l6STJ3V2VWUFZIMHdV?=
 =?utf-8?B?Vm9mRyttQ0U0bktTZ2dkejZDVzVob2lWVXJUVU5FSWo5RmpxNGV3QlJJYjVY?=
 =?utf-8?B?cnN5VTlkRmZsUmRzR01hNk14V21kb0MrVnNlV3NLaTZBd2FSakYvRnlFOVhQ?=
 =?utf-8?B?ampIWVk3aDVENVEwc0FQaWpyRFdlelppNlNtVmZWVC9zY1d2SDFOdXdGZUtI?=
 =?utf-8?B?TWh4WURYL0xHUG1yWU9hdi8vclI0ZHNTL2x4ejRWVEpOd2JURFFyN1BJRjBu?=
 =?utf-8?B?eWlaOWhYejNZdU1qOWY5T1l6WnpUcUpxRVA2MGdEY2R0Mjdkd0QraGdZQkxU?=
 =?utf-8?B?MHFhclIvRkdvM0FFaHdhWEwyUzdKRW0yVTBWTFB5OTUzZzkvV3kwb2N3QkFj?=
 =?utf-8?B?R2Qrc3plVExSM2JqWUQwOWhnUHNWWmI2anpXWVowL1VNWUpqVkVJVkNITERo?=
 =?utf-8?B?K2ZnYlQ2b2tuL3hTSGN6dXo3eTRoejZxZmhNbThFdnlhTWF1SFZ4QlVGWGZT?=
 =?utf-8?B?Z2ZYSUs5QmIrV1NEcG5BU05kT2gyWXBvaEppT0VxeU8vM3Y5dXFJU1RBclpQ?=
 =?utf-8?B?OEM4VEd4Mk1POTh5YW5FSG12NzFCWW1wM1Z4eDNOd0Y5Y0xkTk9tZ3JsUnp3?=
 =?utf-8?B?RnNCTmVRSFRxbnplOFR0QTNscUYrNjgyK1hYS2dTRXg2SFFNMllxamdkeWx3?=
 =?utf-8?B?eDQ0a09hNG1yY3UrU0pDdEt4MVR3RXJZMU5yU0c4WjJSSWY0bXJNQXp2UUwx?=
 =?utf-8?B?NTByNTkwak5wS01aUjhSYXJKYkRMMG5VeldzamxrMWU5Rmo5a0Q3Z0V1dWk5?=
 =?utf-8?B?ci9OTGtUaHpOY3dhYTBIdXlQU2JJSDFybGJiRUFnUlI2c3Y0NC9sT1dHcVpx?=
 =?utf-8?B?ejFjT1JxZG9GbTR4S0ZvN2VxdUNMSnE1VTNXTEtwODBRakhNTk12eWl6N1du?=
 =?utf-8?Q?2A3DQ1OZCnIfR8BOMmjm3U16Y?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abe64459-9d82-44b2-d5f5-08ddd95f789c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2025 05:17:02.4767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zSol1O+KmV9moBUqIxPCe5/BY4HDVsyZFU7kDt2zTC/gf2CQga1hYG9xP6hinGfSLUUcV0F2TLOeQRTpxgdzFzSWCNEqyoFQ24fi4Ga2Vr4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7284
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTUyNTE1Lw0K
aTkxNS5DSS5CQVQgLSBSZS1yZXBvcnRlZC4NCg0KVGhhbmtzLA0KUmF2YWxpLg0KDQotLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogRGVhaywgSW1yZSA8aW1yZS5kZWFrQGludGVsLmNv
bT4gDQpTZW50OiAxMSBBdWd1c3QgMjAyNSAyMDozNQ0KVG86IFJhdmFsaSwgSnVwYWxseVggPGp1
cGFsbHl4LnJhdmFsaUBpbnRlbC5jb20+OyBJbGxpcGlsbGksIFRlamFzcmVlWCA8dGVqYXNyZWV4
LmlsbGlwaWxsaUBpbnRlbC5jb20+OyBJOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNClN1YmplY3Q6IFJlOiDinJcg
aTkxNS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1L3RjOiBGaXggZW5hYmxlZC9kaXNjb25u
ZWN0ZWQgRFAtYWx0IHNpbmsgaGFuZGxpbmcgKHJldjQpDQoNCkhpIENJIHRlYW0sDQoNCmNvdWxk
IHlvdSBwbGVhc2UgcmUtcmVwb3J0IHRoaXMgcmVzdWx0Pw0KDQpUaGUgZmFpbHVyZSBpcyB1bnJl
bGF0ZWQsIHNlZSB0aGUgZGV0YWlscyBiZWxvdy4NCg0KT24gTW9uLCBBdWcgMTEsIDIwMjUgYXQg
MDk6MDA6MDhBTSArMDAwMCwgUGF0Y2h3b3JrIHdyb3RlOg0KPiA9PSBTZXJpZXMgRGV0YWlscyA9
PQ0KPiANCj4gU2VyaWVzOiBkcm0vaTkxNS90YzogRml4IGVuYWJsZWQvZGlzY29ubmVjdGVkIERQ
LWFsdCBzaW5rIGhhbmRsaW5nIChyZXY0KQ0KPiBVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZy
ZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTUyNTE1Lw0KPiBTdGF0ZSA6IGZhaWx1cmUNCj4gDQo+ID09
IFN1bW1hcnkgPT0NCj4gDQo+IENJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzE2OTc1
IC0+IFBhdGNod29ya18xNTI1MTV2NCANCj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PQ0KPiANCj4gU3VtbWFyeQ0KPiAtLS0tLS0tDQo+IA0KPiAg
ICoqRkFJTFVSRSoqDQo+IA0KPiAgIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRo
IFBhdGNod29ya18xNTI1MTV2NCBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUNCj4gICB2ZXJpZmllZCBt
YW51YWxseS4NCj4gICANCj4gICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2
ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMNCj4gICBpbnRyb2R1Y2VkIGluIFBhdGNo
d29ya18xNTI1MTV2NCwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIChJOTE1LWNpLWluZnJh
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZykgdG8gYWxsb3cgdGhlbQ0KPiAgIHRvIGRvY3VtZW50IHRo
aXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGlu
IENJLg0KPiANCj4gICBFeHRlcm5hbCBVUkw6IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI1MTV2NC9pbmRleC5odG1sDQo+IA0KPiBQYXJ0
aWNpcGF0aW5nIGhvc3RzICg0MyAtPiA0MykNCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tDQo+IA0KPiAgIE5vIGNoYW5nZXMgaW4gcGFydGljaXBhdGluZyBob3N0cw0KPiANCj4gUG9z
c2libGUgbmV3IGlzc3Vlcw0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tDQo+IA0KPiAgIEhlcmUgYXJl
IHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0
Y2h3b3JrXzE1MjUxNXY0Og0KPiANCj4gIyMjIElHVCBjaGFuZ2VzICMjIw0KPiANCj4gIyMjIyBQ
b3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjDQo+IA0KPiAgICogaWd0QGNvcmVfaG90dW5wbHVnQHVu
YmluZC1yZWJpbmQ6DQo+ICAgICAtIGZpLWtibC03NTY3dTogICAgICAgW1BBU1NdWzFdIC0+IFtB
Qk9SVF1bMl0NCj4gICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV8xNjk3NS9maS1rYmwtNzU2N3UvaWd0QGNvcmVfaG90dW5wbHVnQHVuYmluZC1y
ZWJpbmQuaHRtbA0KPiAgICBbMl06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNTI1MTV2NC9maS1rYmwtNzU2DQo+IDd1L2lndEBjb3JlX2hv
dHVucGx1Z0B1bmJpbmQtcmViaW5kLmh0bWwNCg0Ka2JsIGRvZXNuJ3QgaGF2ZSBUeXBlQyBjb25u
ZWN0b3JzLCBzbyB0aGUgY2hhbmdlcyBpbiB0aGUgcGF0Y2hzZXQgYXJlIHVucmVsYXRlZCB0byB0
aGlzIGZhaWx1cmUuDQoNClRoZSBmYWlsdXJlIGlzOg0KPDQ+IFsxNjMuNzkxNjA5XSBXQVJOSU5H
OiBDUFU6IDAgUElEOiA1NzY4IGF0IC4vaW5jbHVkZS9saW51eC9zY2hlZC5oOjIxODUgX193d19t
dXRleF93b3VuZCsweGI5LzB4MTYwDQoNCmFuZCBsb29rcyB0byBiZSByZWxhdGVkIHRvOg0KaHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xNDgw
NA0KDQo+IA0KPiAgICogaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQ6DQo+ICAgICAtIGZp
LXRnbC0xMTE1ZzQ6ICAgICAgW1BBU1NdWzNdIC0+IFtBQk9SVF1bNF0NCj4gICAgWzNdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNjk3NS9maS10Z2wt
MTExNWc0L2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwNCj4gICAgWzRdOiANCj4g
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyNTE1
djQvZmktdGdsLTExMQ0KPiA1ZzQvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbA0K
DQp0Z2wgZG9lcyBoYXZlIFR5cGVDIGNvbm5lY3RvcnMsIGhvd2V2ZXIgbm90aGluZyBpcyBjb25u
ZWN0ZWQgb24gdGhvc2UsIHNvIG5vbmUgb2YgdGhlIFR5cGVDIGNoYW5nZXMgaW4gdGhlIHBhdGNo
c2V0IHNob3VsZCBoYXZlIGFuIGVmZmVjdCAodGhleSBvbmx5IG1hdHRlciBpZiBhIHNpbmsgZ290
IGV2ZXIgY29ubmVjdGVkIG9uIGEgVHlwZUMgY29ubmVjdG9yKS4NCg0KSXQgbG9va3MgdG8gYmUg
dGhlIHNhbWUgd3dfbXV0ZXgoKSBpc3N1ZSBhYm92ZS4NCg0KPiBLbm93biBpc3N1ZXMNCj4gLS0t
LS0tLS0tLS0tDQo+IA0KPiAgIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29y
a18xNTI1MTV2NCB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6DQo+IA0KPiAjIyMgSUdUIGNo
YW5nZXMgIyMjDQo+IA0KPiAjIyMjIElzc3VlcyBoaXQgIyMjIw0KPiANCj4gICAqIGlndEBnZW1f
ZXhlY19mZW5jZUBuYi1hd2FpdEB2ZWNzMDoNCj4gICAgIC0gYmF0LXJwbHMtNDogICAgICAgICBb
UEFTU11bNV0gLT4gW0RNRVNHLVdBUk5dWzZdIChbaTkxNSMxMzQwMF0pICsyIG90aGVyIHRlc3Rz
IGRtZXNnLXdhcm4NCj4gICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV8xNjk3NS9iYXQtcnBscy00L2lndEBnZW1fZXhlY19mZW5jZUBuYi1hd2Fp
dEB2ZWNzMC5odG1sDQo+ICAgIFs2XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MjUxNXY0L2JhdC1ycGxzLTQNCj4gL2lndEBnZW1fZXhl
Y19mZW5jZUBuYi1hd2FpdEB2ZWNzMC5odG1sDQo+IA0KPiAgICogaWd0QGdlbV9sbWVtX3N3YXBw
aW5nQGJhc2ljOg0KPiAgICAgLSBmaS1ic3ctbjMwNTA6ICAgICAgIE5PVFJVTiAtPiBbU0tJUF1b
N10gKzMgb3RoZXIgdGVzdHMgc2tpcA0KPiAgICBbN106IA0KPiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI1MTV2NC9maS1ic3ctbjMwDQo+IDUw
L2lndEBnZW1fbG1lbV9zd2FwcGluZ0BiYXNpYy5odG1sDQo+IA0KPiAgICogaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZToNCj4gICAgIC0gYmF0LWpzbC0xOiAgICAgICAgICBbUEFTU11bOF0gLT4gW0RN
RVNHLVdBUk5dWzldIChbaTkxNSMxMzgyN10pICsxIG90aGVyIHRlc3QgZG1lc2ctd2Fybg0KPiAg
ICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE2
OTc1L2JhdC1qc2wtMS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlLmh0bWwNCj4gICAgWzldOiANCj4g
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyNTE1
djQvYmF0LWpzbC0xLw0KPiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlLmh0bWwNCj4gDQo+ICAgDQo+
ICMjIyMgUG9zc2libGUgZml4ZXMgIyMjIw0KPiANCj4gICAqIGlndEBjb3JlX2hvdHVucGx1Z0B1
bmJpbmQtcmViaW5kOg0KPiAgICAgLSBmaS1ic3ctbjMwNTA6ICAgICAgIFtBQk9SVF1bMTBdIC0+
IFtQQVNTXVsxMV0NCj4gICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fMTY5NzUvZmktYnN3LW4zMDUwL2lndEBjb3JlX2hvdHVucGx1Z0B1bmJp
bmQtcmViaW5kLmh0bWwNCj4gICAgWzExXTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MjUxNXY0L2ZpLWJzdy1uMzANCj4gNTAvaWd0QGNv
cmVfaG90dW5wbHVnQHVuYmluZC1yZWJpbmQuaHRtbA0KPiANCj4gICAqIGlndEBnZW1fZXhlY19w
YXJhbGxlbEBlbmdpbmVzQGZkczoNCj4gICAgIC0gYmF0LXJwbHMtNDogICAgICAgICBbRE1FU0ct
V0FSTl1bMTJdIChbaTkxNSMxMzQwMF0pIC0+IFtQQVNTXVsxM10gKzEgb3RoZXIgdGVzdCBwYXNz
DQo+ICAgIFsxMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzE2OTc1L2JhdC1ycGxzLTQvaWd0QGdlbV9leGVjX3BhcmFsbGVsQGVuZ2luZXNAZmRzLmh0
bWwNCj4gICAgWzEzXTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE1MjUxNXY0L2JhdC1ycGxzLTQNCj4gL2lndEBnZW1fZXhlY19wYXJhbGxl
bEBlbmdpbmVzQGZkcy5odG1sDQo+IA0KPiAgICogaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxv
YWQ6DQo+ICAgICAtIGJhdC1hcmxzLTU6ICAgICAgICAgW0FCT1JUXVsxNF0gLT4gW1BBU1NdWzE1
XQ0KPiAgICBbMTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV8xNjk3NS9iYXQtYXJscy01L2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwN
Cj4gICAgWzE1XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE1MjUxNXY0L2JhdC1hcmxzLTUNCj4gL2lndEBpOTE1X3BtX3JwbUBtb2R1bGUt
cmVsb2FkLmh0bWwNCj4gDQo+ICAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRz
Og0KPiAgICAgLSBiYXQtZGcyLTk6ICAgICAgICAgIFtETUVTRy1GQUlMXVsxNl0gKFtpOTE1IzEy
MDYxXSkgLT4gW1BBU1NdWzE3XSArMSBvdGhlciB0ZXN0IHBhc3MNCj4gICAgWzE2XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTY5NzUvYmF0LWRnMi05
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAd29ya2Fyb3VuZHMuaHRtbA0KPiAgICBbMTddOiANCj4g
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyNTE1
djQvYmF0LWRnMi05Lw0KPiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWwN
Cj4gDQo+ICAgDQo+ICAgW2k5MTUjMTIwNjFdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEyMDYxDQo+ICAgW2k5MTUjMTM0MDBdOiBodHRw
czovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEzNDAw
DQo+ICAgW2k5MTUjMTM4MjddOiANCj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMzgyNw0KPiANCj4gDQo+IEJ1aWxkIGNoYW5nZXMNCj4g
LS0tLS0tLS0tLS0tLQ0KPiANCj4gICAqIExpbnV4OiBDSV9EUk1fMTY5NzUgLT4gUGF0Y2h3b3Jr
XzE1MjUxNXY0DQo+IA0KPiAgIENJLTIwMTkwNTI5OiAyMDE5MDUyOQ0KPiAgIENJX0RSTV8xNjk3
NTogYjAzNTRmNDJmMGI3MDUyNjgyYmZjYzJmNTNiMGFhMDIzYjZmNjhkOCBAIGdpdDovL2Fub25n
aXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eA0KPiAgIElHVF84NDg5OiA0OTcyMDIwZWEw
ZjNkMGFjOGEwZDdkZDRmNTQxOTExOWIxYjMwOTk1IEAgaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0
b3Aub3JnL2RybS9pZ3QtZ3B1LXRvb2xzLmdpdA0KPiAgIFBhdGNod29ya18xNTI1MTV2NDogYjAz
NTRmNDJmMGI3MDUyNjgyYmZjYzJmNTNiMGFhMDIzYjZmNjhkOCBAIA0KPiBnaXQ6Ly9hbm9uZ2l0
LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4gDQo+ID09IExvZ3MgPT0NCj4gDQo+IEZv
ciBtb3JlIGRldGFpbHMgc2VlOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTUyNTE1djQvaW5kZXguaHRtbA0K
