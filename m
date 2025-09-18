Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 023EDB83CF3
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 11:33:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0482210E686;
	Thu, 18 Sep 2025 09:33:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fVuJQZfT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CABE10E103;
 Thu, 18 Sep 2025 09:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758187992; x=1789723992;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XmyFXqjWGIrbJQpRJI02Mjq3JkuCEf1y49s4DfQypNM=;
 b=fVuJQZfT6lawzKku+2KqZoXty1jYNFvDwvPa6bF4IQyddfNZu5ldDZBQ
 ZoJ9D60RVNC0j1la9484qkiOC1zwLboMVielueA0tcsXfT1J72GS92ZPp
 F1hImmGZ+Q+Z8B7W5b4RBAfm7B3hVj1SQVC03w21TNBgylqG1hepiSOdB
 cIDQVS8RK8jsQ8p8E//Zy3+5nJWeFUjSdrkOUzK8d+rWXEBdjlnD5Fimp
 /jqCwFdtogoZK275ltlhR//WFMTsbQb/HQlSkfNsBTSEHdM+/sXB9ab9c
 xftNaWREzOEPAuvx1E82QqkvMfMklcDcQI5IYyAOtDRhwnGTStfL+K0CI w==;
X-CSE-ConnectionGUID: yXr6FfunQnOB6SbIlHFQmw==
X-CSE-MsgGUID: wEmiahn1STSemNjRSpXXFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="48082914"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="48082914"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 02:33:12 -0700
X-CSE-ConnectionGUID: XpCFePdrTiacSN7G1hjoZw==
X-CSE-MsgGUID: we6319guR46E7hwHpReGsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="206286485"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 02:33:12 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 02:33:10 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 18 Sep 2025 02:33:10 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.36) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 02:33:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AvflW4vfEbBl439QIyfohGme+6lLzt9YcVF3hrk3AoJhVFhZmVl8usj7ZQGYydVMsHSoR3193BUPyc3AecElI1TVDP5oAu8I5M3zfZYPCzkqtuKG8uTJkO3OhGxlgk0z0xEGgXilwqNLKdNeHKDmMvn4wmnHTbFyQHayGgszwa6W2FraZgMlCYXbu1h9oPo3qfap5rX9ba69QCKiqTMPbgHwx+Dlh4PTHXy5emGOagFMEPJEWbUkYR8gTMag4taSv/qw4XGYfhO+hAKc59pREb0Z4YYZzbajDC8fBkh+FAtXInM+HVqcwAMbJMhYSC1fiYzJtOWjCoUjy6eQ6hiXyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UFPEadv3XFHpGWSxvf8CNsE2UY2BEzARphjhUrXngc4=;
 b=pX2VnyTLiR9SAcnTTqJtB3Li3raoB6qC725qI4s0ga8aDY+0qXFBNJmBBTvRToPcLk60CRB5App3z8lpw2pSJpeWCbX+5+5ABx2KXY474S7074fc8vnfgZUgrN9vIrxhyy4IHrFCG3iMVxc6h5N4jQf/Km/slzsMZvhSJruGhbELUg+TsrfRfUEQQ4s1x3lxDhoJdl4ITvCgFTGk4trwd0WLjYleV9cfZAbeWCwBvhe0bPTei5CIdjfleEKKMo9dYgd9ZfU8elG0JecjgAgdqfTGcUXExaO6OrPwdk+OwQ7DJRj2xbHgwPdOpGocApB1r0mNQOggVZ4WRDOSPJoffg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB4837.namprd11.prod.outlook.com (2603:10b6:510:41::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Thu, 18 Sep
 2025 09:33:09 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9115.020; Thu, 18 Sep 2025
 09:33:08 +0000
Message-ID: <79e9f1d5-0e23-4f2a-8961-925e1adc2788@intel.com>
Date: Thu, 18 Sep 2025 15:03:02 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] drm/i915/vrr: Move the TGL SCL manging of
 vmin/vmax/flipline deeper
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20250917203446.14374-1-ville.syrjala@linux.intel.com>
 <20250917203446.14374-6-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250917203446.14374-6-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0008.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:174::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB4837:EE_
X-MS-Office365-Filtering-Correlation-Id: 782fe0e3-7b9a-4574-137b-08ddf69660c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VEZrdi9RcjlFYmJNUEwyNzdzdnRML0Z2ZXUzUnZ2NUgzbkp5ZzY3VWx6VTFs?=
 =?utf-8?B?Y29RYWJ0enRpb21ZZ21wYzF1QjlwdUtlbHgyZnN3Q3pWclg5dUIwRkNYdm5o?=
 =?utf-8?B?ZDRaZVVQaFAzNWJvaVRIOHh1eGJpMys3aWtFR2VFcFIrRWhWZ0FMd2ptLytI?=
 =?utf-8?B?YW94bTVzbFk4SEpzaEx3Z3dvNmU4TGc4L3ZINDM5WjVteWtwU0JWbjJRNFpH?=
 =?utf-8?B?eS9zRUJQb3F6dDJsSmVGSE1SMDVNc3BNSlFLLzh5MUs5cFcwWnpqUWErRXFM?=
 =?utf-8?B?TVBXaWNhQlpEdWZGQ2MvVjhVWGRwSXA2dDdYak4yVTJLNk84ajFLQWRjVitm?=
 =?utf-8?B?c0NhaXZXKzJ1b0J1ck5Ccys4ZVl3ZVhlcDQ0M215ZDEyN0F5N2ZmMzQvYlBR?=
 =?utf-8?B?U1cyaVRCWlo0NndjSi96OEFZUzBOMElQOGtDTVVSdmttMTJpMnN4ZEJUNXBs?=
 =?utf-8?B?ODc2aTNRZzZNTXhqVUlhZVB1RTZVb0l4Q1BIZlRIVGR1NE1rMDZlcjR4dkkx?=
 =?utf-8?B?djBhamRHSFlua0I3K0NkdTJ5bUNjaGxiSERqWEFqTmtLQ1dJSmtZeG9xdnJx?=
 =?utf-8?B?SFFqdFpMbUtuTG4wdWxMNTlGL2hHNXV0M210Z200MW5pbmpqUmVKdFFMaWpk?=
 =?utf-8?B?L1FvaWJoMkFpWTBpbTFPQ2ZOM3FDaUxLK3RmcWhjcE9KcERibEU3bmtielpm?=
 =?utf-8?B?Ynd4bllyQ3BwRW5UUlBia2ZsTUtFTWJUS0dOMmxNTEpiTDZHdEI3NnN1S2JH?=
 =?utf-8?B?U2hTcGNXL0t5UW1hRmVHdEo5L0VGZTE1dXNNNHN0QzVpTDNlbmFpZy94ZTVz?=
 =?utf-8?B?UXRtT3FYUWhoRm53S3JEZTNheUZUUldZNkxIMUliYU5taU8rcTNXTzZZbWov?=
 =?utf-8?B?em5BZjZoNEt6bWRjMWhCTXJCbjF4dmFkcmdrS2FmMjJYRWYwYStDTk84T2g4?=
 =?utf-8?B?czVCN3BVZE1mU2pyaVZJTmJDUnpzYzgvOEdzOUFsOHBqRDhVbmxmMVF3alJy?=
 =?utf-8?B?SlVuS3h1dGJPVTBMdCsxZjh4M0lEZVpJSUV6Y2VUSzJFZENpcGJlSG44RUpQ?=
 =?utf-8?B?K1lwbSsrM2NOWUxLT3Y4b1EvUXYzWnlEM2pFbFh6OGc5SmpEaldZWnRRK0xq?=
 =?utf-8?B?SmZQOHJTWjIxcm5hMC9OMENkWkIvM0FpYWluSWtFMWVSaHBXcm00V0xCRG0y?=
 =?utf-8?B?OVlQdDAzMkVWbittVTcvbzlIc2VYWEIwTTBrWUkzbmJma3VtUlpab0tVbXpC?=
 =?utf-8?B?c1VOWlJuZC9BRDZOcStGN05ubGpiNFNqSTBJMnVYMzhqWUVyMzlFTVllV1N5?=
 =?utf-8?B?OTFxRnljNTRQTFVJVElkZm5IY1dIcEw0Y20xWkVlSWZaM1hPTCsrWFRtQ1Ja?=
 =?utf-8?B?UnloMFdybWJTUXk4MXh5OC9Ca0l3MUd3d2FldEdKMkxkV3IxdkUxdzlUNy9Q?=
 =?utf-8?B?d3JsZzVnYWlFNFdqcHRoU2lmQTBWM1Z4Y01tNzVQWEV2QXNrbHVXbjl3MmJq?=
 =?utf-8?B?N0ZPekdqRXBYbkNUR01odm5WcnFTdkdUM0c0MkViWmtvVk0zbFpwVVFaYmNS?=
 =?utf-8?B?aXh4RW45Y0tjamxRK2JjS2Zkd05HaU1hS2ZEZmExZUZ3TGtPa3JMZjhUM2Jy?=
 =?utf-8?B?ZmtwaCtkU3dnRVJTaWxIV2hKc1Q5aStVZ2EvL1N3OGp0NVhuRXBrWFdpWGR2?=
 =?utf-8?B?SmdQbTV1WU04QnRsQTZWZ3RMVjhIdG1INFFuVDRwZm9xZk5ncWszalZIVDgy?=
 =?utf-8?B?d3p0ZXFPUUtaNGNYSUJ1NzdjbWN0bng4ckFkbUo5U0ZzU3lyTDl1M1JJZjdw?=
 =?utf-8?B?NUdnWkF0Zzg2d1VWTUFwdUpWK2FCVDFKbWE4YXhXSDNQZkd1aVVUNklWdGJv?=
 =?utf-8?B?ZWtpVHFhVzZScWdWL2pBZ1V6QUxVRGJiR1VYUW9pQjRpdW9jMnU1REs2RjNv?=
 =?utf-8?Q?88YAA+zbW/o=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUNlc3VTdThYdmJzSE0rWDh6N0tvaXlTRitlQWhuZWc2T0p4Y2YrWEMybkdi?=
 =?utf-8?B?QXZCVVo0MCtaalJHOGN0Qmd4ZzByR2Nkb2pSWEEzSHBnSmVLbWowOUxlTExP?=
 =?utf-8?B?a3ZRbzV1WkNaWjhKdFlQVTNQcnpRWmR5QVFRelROY2xjeWpIZ0RVeW5CRXNG?=
 =?utf-8?B?N2dDS0wwMllYUjNObVNXYUErSEhQajZxaDN0bWhUMlhGcGQ0RXlkbEpFRGNH?=
 =?utf-8?B?TnlEOVpvVmJxS01iQTFWNU5DdksyT0hTbjlJcU9NbnF6OUJyZ3RteVV1dXdm?=
 =?utf-8?B?SjhLekt6OVdDVFNaSTlHeFZmR2gxZUtXS1YrRElkcGdrRjcrZVBpc2taTTB3?=
 =?utf-8?B?c3BtWjB4S0xJaWZodDZIRWw3MDBndzJrNzN4alRoUzE5NnU5a1F0RXJNTE5s?=
 =?utf-8?B?Y2dkdytuZjBHUzVzd0MvbGFXUHNMSDNQT3pRODZ6VTdyMTBNWDcyUXpnV1BH?=
 =?utf-8?B?YkU3RHNzdkpDWUJMbEZaaTRpZFRYYTN4SHgxTTAreUp3UkhHVGZueVFCSVNq?=
 =?utf-8?B?T3dvVkRjWDNqQUh5NEJyTFlCeXNkc3VvUUhKUnZPbDVGdjAxWUVsanpRR0hm?=
 =?utf-8?B?aGtYck9ya1hhMkdHMkp6VEhQRU4yVXJtQ3VDc0Z5bi9JeTV6ekN1cTd0RkxZ?=
 =?utf-8?B?YytjdmVQSmhzTng0amdZK3UyaDZVVWJ2L2RMNy9OdFZzL1QvclMxbHJienZ0?=
 =?utf-8?B?RUN2Nkp3VDNpVTdQdmpSbXI0N1NUM2VKMmFpQVRES0krbTF4bDhuSk84RVZp?=
 =?utf-8?B?NzIzS0N2Z2N0a1FRZU0wOG1QOWp5dEEwdHVtQVVqdnVPZTFJK0VYcG54RU1T?=
 =?utf-8?B?UkdXYkpXejRTNTRwQlRtQjVFMEtXelJGV05PbUZTak4vd09rWUF1L1JGSmR2?=
 =?utf-8?B?Ym03dXl1OGdtTWFEVXFBbmZHeC9FVDdwcitKaTNDK2xlQUxuQ2xUSjNiM205?=
 =?utf-8?B?UTMxL1FReDQxNjFvSVB2ZlFWcVAzSzNiN3Q1TDV2Nlg0ZGprbFdtM0hZMllp?=
 =?utf-8?B?bC9lSXJJRnIwMjVrK29BeDBIWUt4b2toWWxROE15UkgzSXlFcHIwTE9pOG5O?=
 =?utf-8?B?N2FWQVVBVHVJNTVMK1FVYTJZdThoWjdFRVBkeVliUmxaeXVleSt4angxaWVQ?=
 =?utf-8?B?aHZLbWRJUWNTZWdTMjVmeHdEQWh5SUppNkdVLzBHcWtzZzF6b0ZETzRlc2Fn?=
 =?utf-8?B?WERmUDlMREdkL1lUR3RDUjYwMkxvdGsyVVBJZUVrUnZ1Mzd1cGpyMWVTVnh2?=
 =?utf-8?B?WEh5eEEvVmo3YVpTZ0U4WnludVJ1cHhOWjFQeGJaUkpqU3Vady9aRG4vMUtB?=
 =?utf-8?B?b0tmMHdEcDVYRGdoOW9iSGdGemN6WWxWV3ljc0hDWXEyOEZKRjZRNmwwOVBp?=
 =?utf-8?B?YUtpQ1FqYlYxakFiWG5jRlR3QlZLSmFUUzYvNnVNbkhSRUVBNDUzbjQyT3lp?=
 =?utf-8?B?WEIwaFFxUHVkZ3pENDUzOVNvUTliWW1iak1rczg4Umg1aElVd1FvdmdYdnBi?=
 =?utf-8?B?SEIvRzNuUi93enlRUmlaNURFSWFvcDVTN1pzUlpkdlRvbXlyVURVSDArZ1hm?=
 =?utf-8?B?bkxqUm8rK2JGY0xrY1UvQmJFZ3R6UFpMdC9HV3RGYlF1VGJURmYvSkRhd1hM?=
 =?utf-8?B?UG0zdGwwalBXT1ErczNBc014NUxFVmNDTWpQQ2NYcW5GS2o4c3RxdnY1Qngw?=
 =?utf-8?B?UDUzMHdhNW04NU16cWlWZ21SbHVoMXdnKzlwSmQyaVpkbFNRRzMvUVRVaXZv?=
 =?utf-8?B?N1JYcWFNckU2cGZYVHNPZWFxU2pldU9COWV6RElFVnJLY3ZkV3lES1VuUTJD?=
 =?utf-8?B?WXNnOXF1VDAzY1Z4WVVlM0hpTFU3S1RCOXVQSStkS2ZtZmhLK3ViSkhFT1JV?=
 =?utf-8?B?UjVuUG83dStwdk10RHF4SUNORUV0REZQYmFYRmdsWVNvUTlIdDBVNUIxVUpi?=
 =?utf-8?B?bWxjUVZXbVBmVEdsaWxKRGlGZWx2YWlJMjFmaHlyK0kvemdtVm55VkNNZjNW?=
 =?utf-8?B?bWNuV01ZanBsdzZXUldoOFR5cEo3bUliZkFTQXV3RUdpMlI2STI0N2NBYVhV?=
 =?utf-8?B?dmQyYWhVdzltelRpL2JqODFCdmJqeXZvWkJHM3A1SUlvUnJXQXpmazREdzFK?=
 =?utf-8?B?MVFBNlA1b1RhWGJsR1BGRFhwcDNaRXpXT0F0T2RQa3REQmVVb09ablBQWko3?=
 =?utf-8?B?c2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 782fe0e3-7b9a-4574-137b-08ddf69660c4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2025 09:33:08.8908 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AOG3XvbJ+vQiIsZ8yF+wgT1QBKG97KRWdli8kYqdCBicIbNj6+KIzHaEx0LNlpWHmBhSfDmRO2QwoV/kcVpoCp1kxrgiqzyzcvZUwy7cpM4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4837
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


On 9/18/2025 2:04 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Currently our crtc_state->vrr.{vmin.vmax,flipline} are mangled on
> TGL to account for the SCL delay (the hardware requires this mangling
> or the actual vtotals will become incorrect).

Please correct me if I am wrong:

For display < 13  VRR hardware inserts one extra scanline just after 
vactive. So we need to have flipline, vmax, vmin vtotal shifted by 1. 
This is computed in intel_vrr_extra_vblank_delay()

For display < 13 hardware expects flipline >= vmin (so we add flipline + 
1, not related to vblank delay.

For some platforms intel_psr_min_vblank_delay() of 1 is required so that 
moves the vblank start with this amount. we can account for this delay 
by intel_vrr_real_vblank_delay().

So for the SCL delay mentioned here should'nt we 
use intel_vrr_extra_vblank_delay() in the computation below?


Regards,

Ankit



> Unfortunately this
> means that one can't simply use these values directly in many places,
> and instead we always have to go through functions that undo the
> damage first. This is all rather fragile.
>
> Simplify our lives a bit by hiding this mangling deeper inside
> the low level VRR code, leaving the number stored in the crtc
> state actually something that humans can use.
>
> This does introduce a dependdency as intel_vrr_get_config()
> will now need to know the SCL value, which is read out in
> intel_get_transcoder_timings(). I suppose we could simply
> duplicate the SCL readout in both places should this become
> a real hinderance. For now just leave a note around the
> intel_get_transcoder_timings() call to remind us.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c |  4 ++
>   drivers/gpu/drm/i915/display/intel_vrr.c     | 76 +++++++++++---------
>   2 files changed, 47 insertions(+), 33 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index f4124c79bc83..18b9baa96241 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3901,6 +3901,10 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>   		pipe_config->framestart_delay = 1;
>   	}
>   
> +	/*
> +	 * intel_vrr_get_config() depends on TRANS_SET_CONTEXT_LATENCY
> +	 * readout done by intel_get_transcoder_timings().
> +	 */
>   	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
>   	    DISPLAY_VER(display) >= 11)
>   		intel_get_transcoder_timings(crtc, pipe_config);
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 71fb64c92165..71a985d00604 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -156,25 +156,13 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
>   
>   int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
>   {
> -	struct intel_display *display = to_intel_display(crtc_state);
> -
>   	/* Min vblank actually determined by flipline */
> -	if (DISPLAY_VER(display) >= 13)
> -		return intel_vrr_vmin_flipline(crtc_state);
> -	else
> -		return intel_vrr_vmin_flipline(crtc_state) +
> -			intel_vrr_real_vblank_delay(crtc_state);
> +	return intel_vrr_vmin_flipline(crtc_state);
>   }
>   
>   int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
>   {
> -	struct intel_display *display = to_intel_display(crtc_state);
> -
> -	if (DISPLAY_VER(display) >= 13)
> -		return crtc_state->vrr.vmax;
> -	else
> -		return crtc_state->vrr.vmax +
> -			intel_vrr_real_vblank_delay(crtc_state);
> +	return crtc_state->vrr.vmax;
>   }
>   
>   int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
> @@ -258,6 +246,21 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
>   	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   }
>   
> +static int intel_vrr_hw_value(const struct intel_crtc_state *crtc_state,
> +			      int value)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	/*
> +	 * On TGL vmin/vmax/flipline also need to be
> +	 * adjusted by the SCL to maintain correct vtotals.
> +	 */
> +	if (DISPLAY_VER(display) >= 13)
> +		return value;
> +	else
> +		return value - intel_vrr_real_vblank_delay(crtc_state);
> +}
> +
>   /*
>    * For fixed refresh rate mode Vmin, Vmax and Flipline all are set to
>    * Vtotal value.
> @@ -265,14 +268,7 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
>   static
>   int intel_vrr_fixed_rr_hw_vtotal(const struct intel_crtc_state *crtc_state)
>   {
> -	struct intel_display *display = to_intel_display(crtc_state);
> -	int crtc_vtotal = crtc_state->hw.adjusted_mode.crtc_vtotal;
> -
> -	if (DISPLAY_VER(display) >= 13)
> -		return crtc_vtotal;
> -	else
> -		return crtc_vtotal -
> -			intel_vrr_real_vblank_delay(crtc_state);
> +	return intel_vrr_hw_value(crtc_state, crtc_state->hw.adjusted_mode.crtc_vtotal);
>   }
>   
>   static
> @@ -441,14 +437,6 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>   		crtc_state->vrr.pipeline_full =
>   			intel_vrr_guardband_to_pipeline_full(crtc_state,
>   							     crtc_state->vrr.guardband);
> -
> -		/*
> -		 * vmin/vmax/flipline also need to be adjusted by
> -		 * the vblank delay to maintain correct vtotals.
> -		 */
> -		crtc_state->vrr.vmin -= intel_vrr_real_vblank_delay(crtc_state);
> -		crtc_state->vrr.vmax -= intel_vrr_real_vblank_delay(crtc_state);
> -		crtc_state->vrr.flipline -= intel_vrr_real_vblank_delay(crtc_state);
>   	}
>   }
>   
> @@ -607,6 +595,21 @@ void intel_vrr_set_db_point_and_transmission_line(const struct intel_crtc_state
>   			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
>   }
>   
> +static int intel_vrr_hw_vmin(const struct intel_crtc_state *crtc_state)
> +{
> +	return intel_vrr_hw_value(crtc_state, crtc_state->vrr.vmin);
> +}
> +
> +static int intel_vrr_hw_vmax(const struct intel_crtc_state *crtc_state)
> +{
> +	return intel_vrr_hw_value(crtc_state, crtc_state->vrr.vmax);
> +}
> +
> +static int intel_vrr_hw_flipline(const struct intel_crtc_state *crtc_state)
> +{
> +	return intel_vrr_hw_value(crtc_state, crtc_state->vrr.flipline);
> +}
> +
>   void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> @@ -616,11 +619,11 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   		return;
>   
>   	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
> -		       crtc_state->vrr.vmin - 1);
> +		       intel_vrr_hw_vmin(crtc_state) - 1);
>   	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> -		       crtc_state->vrr.vmax - 1);
> +		       intel_vrr_hw_vmax(crtc_state) - 1);
>   	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
> -		       crtc_state->vrr.flipline - 1);
> +		       intel_vrr_hw_flipline(crtc_state) - 1);
>   
>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>   		       TRANS_PUSH_EN);
> @@ -754,6 +757,13 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   		crtc_state->vrr.vmin = intel_de_read(display,
>   						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
>   
> +		if (DISPLAY_VER(display) < 13) {
> +			/* undo what intel_vrr_hw_value() does when writing the values */
> +			crtc_state->vrr.flipline += intel_vrr_real_vblank_delay(crtc_state);
> +			crtc_state->vrr.vmax += intel_vrr_real_vblank_delay(crtc_state);
> +			crtc_state->vrr.vmin += intel_vrr_real_vblank_delay(crtc_state);
> +		}
> +
>   		/*
>   		 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
>   		 * bits are not filled. Since for these platforms TRAN_VMIN is always
