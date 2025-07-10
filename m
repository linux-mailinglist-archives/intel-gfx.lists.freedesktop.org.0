Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39EE6AFF829
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jul 2025 06:46:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E5A310E15E;
	Thu, 10 Jul 2025 04:46:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LE/YcYc8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36B1710E15E;
 Thu, 10 Jul 2025 04:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752122807; x=1783658807;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SqU3GhR2x4y27+EU2aJpJboB2cJx5Vakn2LkGj+IPzA=;
 b=LE/YcYc8IGooOMWpUQm9im1y88OXUn728IAQq2Ou70TekO67czoSSyiq
 2vAB8yNr3HIEaJU5ql0Qy/27qjgCJnzqiqiL4+mH/IqID1ulAMCe8ssVn
 EDe12kO5Nm3TYUbTENOw4qwwLPyJmHEFhOSmotC0nqGETnCjnwxCk0HKB
 nWryKn+1Ukclow/t6rwzoMcD0L0CQ0SEytOo0OudmzwgV3qAVwppTq+od
 1TKiW8jV0Hj5U6z9hlfAJbmG5cXFVqUN9w4d3Jdqq3bEHNsKFsnprBvN2
 ukEeJDMqE7M21nLd5yyGlR44Tkm0ZDEhl/xrNBcYDr9DwV4HB9DcEIXq8 g==;
X-CSE-ConnectionGUID: 43xMme2KTVuVtjE0s4/WOQ==
X-CSE-MsgGUID: A/EIUPXVTH2DdxcfKQeBoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11489"; a="54521336"
X-IronPort-AV: E=Sophos;i="6.16,299,1744095600"; d="scan'208";a="54521336"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 21:46:46 -0700
X-CSE-ConnectionGUID: QGRFBHaGQ6a4A7hVTKJj9Q==
X-CSE-MsgGUID: rTsc3MQTSuqFBtpNACqRwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,299,1744095600"; d="scan'208";a="156072517"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 21:46:46 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 9 Jul 2025 21:46:45 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 9 Jul 2025 21:46:45 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.47)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 9 Jul 2025 21:46:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M3z3WYJXLR8x2kx/W2XxTCO1QY6L1v1uMkk9cbaFXg96rQAYM2UB7LAJcrwlyf3MR21abgd213Qrd42WX3n52+j2yTSdirxmpoZXlI3r1jyJ8Qok6vrgIcuuD468gAvUPtgMmj9hJ379M+TVXuDJxU4o/fphKhslXizf92maHbgeKvYP8wp8MJgt4oEEZO0Ns/b6R+tZmarok2o0hUtyUYeaYvr9tbAvK4PIzZ52kyKeRZM075fYWTeZKDnxQx4Bx9v48gNv3V2xuIjU1t7AmLovO940Af6m3V5ccS0I878k0Eh1XxVqoBVkvRfpyxp2GEjWqq76EaexvZeA195gAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JkCBz4MRzuQPEUpBC0h6Rms9shW8J0FX8ySbF7dMcMc=;
 b=gGccyz+wHWYaekpIjXYtaa9Z6hdoxwxKk0Ilsl/xERCymovj/JNnQXpjneirZGM54LWPSStoTuXKE+Sd2SAf2pXPik9H3bdGhSM0nQhdTsX/ZhRsgsiNJVo1YnMiGo5Ip75Xat3mJIDyCJnptrmYgkTyN4KjXv2/XDffcmnAFvYYqhihSceF6q2tLQdRWRJMMgaJkH8dIbLkxfGTfTvFQM5e/GWxFnGWOvwaiun2YpLdbCPwKQ6YTJ6QbKShBW5dZhvJK121haYiaZCKDlJewSNm16EuBnlkq0FiSBXjlE4t95ovubf4dMb7CzhY/hiGuwSMMoH93gNCM/tYQGTtSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV2PR11MB6045.namprd11.prod.outlook.com (2603:10b6:408:17b::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.26; Thu, 10 Jul
 2025 04:46:34 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8901.024; Thu, 10 Jul 2025
 04:46:33 +0000
Message-ID: <c008a4b0-a5ed-41ef-8a16-d11b24d8718c@intel.com>
Date: Thu, 10 Jul 2025 10:16:27 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/dp: Add device specific quirk to limit eDP
 rate to HBR2
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
References: <20250709055144.879393-1-ankit.k.nautiyal@intel.com>
 <20250709055144.879393-3-ankit.k.nautiyal@intel.com>
 <aG6vYUcYjjua-P9w@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aG6vYUcYjjua-P9w@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXP287CA0011.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::24) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV2PR11MB6045:EE_
X-MS-Office365-Filtering-Correlation-Id: ecc48b0e-bbd8-4480-6a0a-08ddbf6cbeb7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|13003099007|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K0xiUGMyVEgzWDBRR215ZGtuUTFRQmFjbzB4WDlXNCtwNFZqb3NlRDBDYlIr?=
 =?utf-8?B?OVpmZTJ6dzBlaTREVjVMaVF6Yis4R3ZKUUFpbFFNQ0RteXBwS3kxbUJoV2da?=
 =?utf-8?B?R0tWb2ZWREE3dHN0MElLTVdzbm4yckcvbnd4a1RxZXhxUm1DNVFOb244WlJ2?=
 =?utf-8?B?a2xvamQ4VzNNQjhReFpPYitWSVpJSjdBeVhXcFV0WEVxRThqYmFQZVNxSjBl?=
 =?utf-8?B?MGd3VEVpUVNQWFJlUjVyeU5UWWQzRHZmRE04VkJocHlLYnV3VTlSS1MrM3Ju?=
 =?utf-8?B?VXFpRm80WThuRXVXdkd5NThhNk40emFsUDJ1NWVxZkRoV0RCZGtyUjJ0QTBR?=
 =?utf-8?B?K1NTcHJlWS9ibXdneFF1a0JaQWdtVWJvUzRMQWlMaEMwTXpwc3dqZzZNV0Mz?=
 =?utf-8?B?bGd5WDVNL2NudXR4d3Zwb1NEZTJLNXYzbmlkS3BtYjZ6UHI4M1NBRFlncFkw?=
 =?utf-8?B?TmpNcEdnMzRjdTRJbEVOazJKNDdFVnpYTW1PQURWTjJNYWVlc0pkZE1IQlhW?=
 =?utf-8?B?eTNJOW5SemxGc0ZRNTRIUVRnNW13UWZEdmJ4WW1oZVBPdHRsKzNvenJXUmFl?=
 =?utf-8?B?bDY4ZDRwcjY0QWJ1N1U1WnNRbFR6a2YzRHBnck1pNTg0Z040akIyYUhac0Rj?=
 =?utf-8?B?UUMrY3lFUEhFMWxDR3Z0ckVLL3JHRFcySEpMcEpLcklNMDNScm1NeEFFYkdO?=
 =?utf-8?B?RUxoVmFVNVd0Z3IySDBuSmR0bE51eDlaVFBDb21MZ29WbUhuS0JpOXpGdm5I?=
 =?utf-8?B?Wkh3WkFBMm1LZnltQjEwZExQT2JiR2F6SjFWZDZHRTRPNjZ1dkZFYVNDdlBD?=
 =?utf-8?B?SVhFazEvMVZDUk9ERlgyZjMvTFo1cWJEQ1cyYXNsdFdKeFoyV1RVeGNXNFNQ?=
 =?utf-8?B?d1NLamFHNkxCVmZvZ1RNWVhBUmZtd1RiVExpQ1ZIYnd1RWtGQlBzWEs5UWhG?=
 =?utf-8?B?N0JTYzdNd0J5TlROUXpWRkpadFh4K0hLTEVlbUJjMmZlbkcrWVd4WFNiUnIw?=
 =?utf-8?B?QnpoNjVSbzIxYmcxajh2VDlSZzUreWJLb3RBaE1Dd2tFMTRkWHRMV3BGa0dR?=
 =?utf-8?B?K1E1c2FHT1k1RjgwOFUzd3BBUFVaOS9RM0FYcmZlUmRQckQvK2hFSTZSZjhS?=
 =?utf-8?B?SmZOL2d2OHdCRDI0QTUzNmxtaDc2bnMzd3Y1cXdYYmlISDZFS1V6NHBXQmk5?=
 =?utf-8?B?aG15STE0NTkrY1RLcDl2OVBuMGZyRHNod3VERlVsdWZVb2Ztbll4MERKSnZS?=
 =?utf-8?B?eStJV0JKR1kwbVhjMnkybVVxcExGUUl3UWUxTDd4Z0QxSEF6RUw1N0JsOTBE?=
 =?utf-8?B?RGFCUVRGZGliY1JUbW5VNzgyUzNBcWRkTlVYRjcrcUFSMnZMNUV0eXVOR3Rw?=
 =?utf-8?B?SHFYNENlQUVScmhBWjVkT1F6RHZQVUFwMkJkVFRpOGk3UlB5bEpwZGJCbG5h?=
 =?utf-8?B?Rk1RRktMMmVpNkVlSUV5Wjd6ZDVvbDRlMzJjM21oYnZhdnNCNzhyVTNRRGFM?=
 =?utf-8?B?alc5VXQwbURXTEJJVmUxaFdOVitBRjVKbkhhODFsNHNZWU54K3BJU29oazFh?=
 =?utf-8?B?cCtEN2UyWXBXV3RXUkp3aWczbkl5eUhzUTVWTjdNNm5oOUNMMHMyTzhiMkhC?=
 =?utf-8?B?VTFML0pEcGdtNTFwWFdMOEVVQnF3aW5XY28zR1NCRW8wU2VJUE1VT2R2TXln?=
 =?utf-8?B?NHB3Vis4Qno4ZytVRTByU2dRZWplVitVQm0zZE1kNkhYRE9VWkdNam9QdXdh?=
 =?utf-8?B?TEVhYTBNbGx0bDJaMDRrbWJpTVZJb0NZYXh6UWZWaEtvMVlGRVdYZVRTbFNF?=
 =?utf-8?Q?EgY9gaR0uLcU8dXsn55tVOGq4wvLSkzDG9C6k=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(13003099007)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y0hIc1ljMmNmUmFLZ3BWNG5BWm1KZy8zOVdHQ1FBYnBYRWxCSzN2a2lMNTZo?=
 =?utf-8?B?QnRXZFdrWEcxTmJvRGZhRmxKb3VyQ0k5Q1JGTUtoY0VuaHFmTkFOTHlQNmll?=
 =?utf-8?B?eVZtRlUrM2ExWHQyNXJwU0xWbGEwVTFhMXJkN1FWOHZkVGJjQUVOOHpIUVU1?=
 =?utf-8?B?cU9hanRwWWx3SzRORnEwTklMSmc2NVRLNmZLaXVRYVhjWGw1L3dRRFFqS2tw?=
 =?utf-8?B?dkpxRmNPWkdFd0ZvQlEvNDZ2N1pYd1dDazltZUMzT1J0QStOa1BCMGp5SWh0?=
 =?utf-8?B?RUZqc2JzK2VERFdyN2lYaEZlVEd6dGVMTWFlQ25pSTlBRzZieG9pU1pmcXZm?=
 =?utf-8?B?SjdhSTVIOWgweEQydjR6ZXRIenh3d0tnSU5VRkpGOFhrb0NVajNLRFRxaVQ3?=
 =?utf-8?B?dHRpVTI2QjFFUVY0c0k4bURwZUNyYmFTQUt2RHJaT2pwTjJjcHlLYXRldC9p?=
 =?utf-8?B?TUowalM3ZFJYd3UyeGVsaVV3QVU2Vm5HcjY0R2tNZVZscm45alUvSWxqUDF3?=
 =?utf-8?B?RFZwL0U4WWFIb1JhZWRZOUVSRlVxK0xsOXp3UUZIVnVOSHFhbFRLRTVwenRu?=
 =?utf-8?B?TytuMThqVytvT2hvZm5OQmplbVNEUGhhNS9UZTI1VGcwZE01Y0daSXhIR3p4?=
 =?utf-8?B?Ky9idCtzM0FCNjh6eWJReG9kMytSR0RvQmZod3BxYUZaQWFiZGNCTWlscm5r?=
 =?utf-8?B?WFpyU1NMUVljRVBlalhzZkU2d0M4dW9OakVuM2pDbndtT093clBJdWxXWXJS?=
 =?utf-8?B?ZVIrVTJKb0d4Z2lFczJ0dzAzTEhsckJkZ0ZWNjgxbndTajAydkVneG1aS0Zk?=
 =?utf-8?B?R3lYbnM2WkxieEpMNk56WjZQaDIxeHY2aUZnRndQWS9XamgzcU1XYVVuWWYv?=
 =?utf-8?B?TzB1MXdsWDlVUlJMZDROVjNwb1ZFc29jNVgwR1JMR2I0b3dBckZNVUVTanJl?=
 =?utf-8?B?YXZtT0NZRGtFSS80N0ZJUXZIVVBud2liZ1FKaHYyTm5jbDRhOGxvVko5Q1VE?=
 =?utf-8?B?c3lCVEhqSjM3ZXl5YnNySE5TZEZGazNvaUhLd3ZUNTI2dnpDQk5uVWpPT3Bz?=
 =?utf-8?B?Z1g4b054UWwrdlhpeDAyYmhDc3ZUYmFtUnFwdWtwY3ZhUjk2aHAwUUM0d2Nx?=
 =?utf-8?B?NUQvcTFLajJRVGFaN0VwVGZVZEszWmF6NHpNUFVNZXg4ZjhtbUE4TEErWmpD?=
 =?utf-8?B?dzRoZloreXNHcm9QVzZibTJRRitzR3VHdWhIY3h4cWVSZEs1Zkw1Smk4VmZk?=
 =?utf-8?B?ZTdXMncwKzNpSEVqQTFvNTRmei9jTE5FK2VSaFdVaTcwcEZtTEZCTk9zZ21D?=
 =?utf-8?B?cThIOHBEMHdLSXVSN1RGUHBjRmc4VFl6bjRiN3RaRWx0dlNyS1B0QklDRklE?=
 =?utf-8?B?OXpHMTJJaCtqMjdMemVLZ3Q5YThRbC9xbEFlMEQ3RmxKOXZ3Uk1BTXpEUXlB?=
 =?utf-8?B?eVN4VWY4SExKdnIxSjQ0QTZtbXp3Q0FTbnFtbEJQeTQ3RXFCRGhIbjU0SFA1?=
 =?utf-8?B?SnZlZzdvekR4Qk9WU3FKaktzWnpuem5SUGxnMklrY2xrQmo0OFhLcTVsVmZ5?=
 =?utf-8?B?Q0tvWU41WTZycGRaa3ZocWlua1JCdkxLeWlXK3hqS1R0cm1teVRFRFJEVG9S?=
 =?utf-8?B?K2tqdUhQQzIySEMwR1NtVW1RR1BMOE1QV2p2WmI2LytPejRJR3prMmd1ZE1r?=
 =?utf-8?B?dzZMaHgwQy9SRUdzbXo2Qm5DU21XNUNtN1hEc1djTldKdjB6dGpCdUlndVZE?=
 =?utf-8?B?T2V6UzRoeU5yVndPazVOQ1VKMUh5R0lLODJnTCt0eWVyV29EYzVIaEJxanZK?=
 =?utf-8?B?U2VaTEpNc3lNMGFna3ZvalNqZlNvTjY2NWpHNTJFNUY4NG1PM0Y4R1QrRnMy?=
 =?utf-8?B?SGhncFJBYThUUzlLMmFuYXhTU0FGeEk1bDlnbVNrMG5VZU41R1JWNTQ4Z1JK?=
 =?utf-8?B?MVlpcDdVMHNnQnVNbVlrVkxwYmM4a3hEZE5GY2lJL0dJdE9XTVlDUDJmN3NT?=
 =?utf-8?B?YWN6UERCdDJmVTBLOWpud1lPMzN0OUtJdjFjUnRRTGREVTdscFk5Y3ZjT2VI?=
 =?utf-8?B?YWViWWRBUkZsaFlucFJVTG5hMTkwWjdTa2ZDeFRUUTh2a1dDMEdIeUJSOHNM?=
 =?utf-8?B?NWNJVUg3ZmU3ZnY2TVczUlJLblRGUzBnaGZzMjErc2g3Rm5YR2hjYWNOUGIy?=
 =?utf-8?B?M2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ecc48b0e-bbd8-4480-6a0a-08ddbf6cbeb7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2025 04:46:33.7958 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FW2KfVjXtWT551b0hJB9ZHw+L8gjUoKrr2rvHiz3yGevMyKr6+yTzLwn7iNDedcC8fGMqEK9cq2zZzPnrfbyyPQZcq62yvwJjc+PHABKIFg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6045
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


On 7/9/2025 11:35 PM, Ville Syrjälä wrote:
> On Wed, Jul 09, 2025 at 11:21:43AM +0530, Ankit Nautiyal wrote:
>> Some ICL/TGL platforms with combo PHY ports suffer from signal integrity
>> issues at HBR3. While certain systems include a Parade PS8461 mux to
>> mitigate this, its presence cannot be reliably detected. Furthermore,
>> broken or missing VBT entries make it unsafe to rely on VBT for enforcing
>> link rate limits.
>>
>> To address this introduce a device specific quirk to cap the eDP link rate
>> to HBR2 (540000 kHz). This will override any higher advertised rates from
>> the sink or DPCD for specific devices.
>>
>> Currently, the quirk is added for Dell XPS 13 7390 2-in-1 which is reported
>> in gitlab issue #5969 [1].
>>
>> [1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
>>
>> v2: Align the quirk with the intended quirk name and refactor the
>> condition to use min(). (Jani)
>>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c     | 41 +++++++++++++++++----
>>   drivers/gpu/drm/i915/display/intel_quirks.c |  9 +++++
>>   drivers/gpu/drm/i915/display/intel_quirks.h |  1 +
>>   3 files changed, 44 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 92abf819e60e..7d2eaa0cff73 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -173,10 +173,24 @@ int intel_dp_link_symbol_clock(int rate)
>>   
>>   static int max_dprx_rate(struct intel_dp *intel_dp)
>>   {
>> +	struct intel_display *display = to_intel_display(intel_dp);
>> +	int max_rate;
>> +
>>   	if (intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
>> -		return drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
>> +		max_rate = drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
>> +	else
>> +		max_rate = drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
>> +
>> +	/*
>> +	 * Some platforms + eDP panels may not reliably support HBR3
>> +	 * due to signal integrity limitations, despite advertising it.
>> +	 * Cap the link rate to HBR2 to avoid unstable configurations for the
>> +	 * known machines.
>> +	 */
>> +	if (intel_dp_is_edp(intel_dp) && intel_has_quirk(display, QUIRK_EDP_LIMIT_RATE_HBR2))
>> +		max_rate = min(max_rate, 540000);
>>   
>> -	return drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
>> +	return max_rate;
>>   }
>>   
>>   static int max_dprx_lane_count(struct intel_dp *intel_dp)
>> @@ -4255,6 +4269,8 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
>>   static void
>>   intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>   {
>> +	struct intel_display *display = to_intel_display(intel_dp);
>> +
>>   	intel_dp->num_sink_rates = 0;
>>   
>>   	if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
>> @@ -4265,10 +4281,7 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>   				 sink_rates, sizeof(sink_rates));
>>   
>>   		for (i = 0; i < ARRAY_SIZE(sink_rates); i++) {
>> -			int val = le16_to_cpu(sink_rates[i]);
>> -
>> -			if (val == 0)
>> -				break;
>> +			int rate;
>>   
>>   			/* Value read multiplied by 200kHz gives the per-lane
>>   			 * link rate in kHz. The source rates are, however,
>> @@ -4276,7 +4289,21 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>   			 * back to symbols is
>>   			 * (val * 200kHz)*(8/10 ch. encoding)*(1/8 bit to Byte)
>>   			 */
>> -			intel_dp->sink_rates[i] = (val * 200) / 10;
>> +			rate = (le16_to_cpu(sink_rates[i]) * 200) / 10;
> Might as well drop the unnecessary parens while at it.
Right, the parens are not required, will drop it.
>
>> +
>> +			if (rate == 0)
>> +				break;
>> +
>> +			/*
>> +			 * Some platforms cannot reliably drive HBR3 rates due to PHY limitations,
>> +			 * even if the sink advertises support. Reject any sink rates above HBR2 on
>> +			 * the known machines for stable output.
>> +			 */
>> +			if (rate >= 810000 &&
>> +			    intel_has_quirk(display, QUIRK_EDP_LIMIT_RATE_HBR2))
> If the quirk sasy "HBR2" then we should probably check for >540000 instead.

I think I had earlier HBR3 in the name, but changed to HBR2.

Checking for > 540000 for ..LIMIT_RATE_HBR2 makes sense.

>
>> +				break;
>> +
>> +			intel_dp->sink_rates[i] = rate;
>>   		}
>>   		intel_dp->num_sink_rates = i;
>>   	}
>> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
>> index a32fae510ed2..d2e16b79d6be 100644
>> --- a/drivers/gpu/drm/i915/display/intel_quirks.c
>> +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
>> @@ -80,6 +80,12 @@ static void quirk_fw_sync_len(struct intel_dp *intel_dp)
>>   	drm_info(display->drm, "Applying Fast Wake sync pulse count quirk\n");
>>   }
>>   
>> +static void quirk_edp_limit_rate_hbr2(struct intel_display *display)
>> +{
>> +	intel_set_quirk(display, QUIRK_EDP_LIMIT_RATE_HBR2);
>> +	drm_info(display->drm, "Applying eDP Limit rate to HBR2 quirk\n");
>> +}
>> +
>>   struct intel_quirk {
>>   	int device;
>>   	int subsystem_vendor;
>> @@ -231,6 +237,9 @@ static struct intel_quirk intel_quirks[] = {
>>   	{ 0x3184, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
>>   	/* HP Notebook - 14-r206nv */
>>   	{ 0x0f31, 0x103c, 0x220f, quirk_invert_brightness },
>> +
>> +	/* Dell XPS 13 7390 2-in-1 */
>> +	{ 0x8a12, 0x1028, 0x08b0, quirk_edp_limit_rate_hbr2 },
> Hmm. I wonder if different modesl of that same machine might
> come with different panels, some of which might work with/need
> HBR3...
>
> But I suppose we don't have any nice way to combine different types
> of quirks (ie. PCI ID + DPCD, DMI + EDID, etc.). We should probably
> think about coming up with some kind of generic quirk framework that
> can do such things nicely.

In this specific case the Panel desc only had OUI details and device ID 
read as "ABCDEF" from DPCD.

So, I just went with device specific quirk. But you are right, we need a 
mechanism to combine quirks.

>
> Anyways I guess this is fine for now. But we might have to revise this
> later if it turns out there are other variants of that machine around.

Yes lets see, if we get further issues with different panels with same 
device id.

Thanks for the comments and suggestions, I will send the updated 
revision soon.


Regards,

Ankit

>
>>   };
>>   
>>   static const struct intel_dpcd_quirk intel_dpcd_quirks[] = {
>> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
>> index cafdebda7535..06da0e286c67 100644
>> --- a/drivers/gpu/drm/i915/display/intel_quirks.h
>> +++ b/drivers/gpu/drm/i915/display/intel_quirks.h
>> @@ -20,6 +20,7 @@ enum intel_quirk_id {
>>   	QUIRK_LVDS_SSC_DISABLE,
>>   	QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK,
>>   	QUIRK_FW_SYNC_LEN,
>> +	QUIRK_EDP_LIMIT_RATE_HBR2,
>>   };
>>   
>>   void intel_init_quirks(struct intel_display *display);
>> -- 
>> 2.45.2
