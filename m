Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E67DFB5008F
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 17:02:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F14B10E732;
	Tue,  9 Sep 2025 15:02:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kqQBpLlY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 480A310E799;
 Tue,  9 Sep 2025 15:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757430144; x=1788966144;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ozSrjFS1l4Eflg/p+mcZ4nphOzaYoNuz3EApdEiX4+o=;
 b=kqQBpLlYA6greTi/60s4VTk+tAjbmKZV7oisgIOctFjpnHrbgZwlOIn0
 FIPAAwcIk35y+Hc3byzRtltxISnbPLoLLLSuQKTmNyDj+9EAUc7FrjA0h
 52/tQWEFek5mBxWBaYUoIMDZLOAT/Z0gZTpZITS4CTqHzuNnCa4O+ZrE2
 nBW8zBH30qiPNrM8QeUntT9sPEfjC0sd8gZNTzRL/yEyk+d+daYJmulC3
 ih39UIQTXfpDVh4xRXWssDeidlqpZP3AMhUyTJTWQsJ+7Yfjc2hpt0RSv
 tQNOrsKX658iSrwRwA0MiTXs8D4RKezLi6Po3SmT+PfZSnqYVIOmasSH6 w==;
X-CSE-ConnectionGUID: vDPIIE5MQjW7R3/YI2LO1w==
X-CSE-MsgGUID: pj402NApTAesc0Ns1HVCNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11548"; a="70816316"
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="70816316"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 08:02:24 -0700
X-CSE-ConnectionGUID: 9gK+jt1QR8qLikDayd8Ytw==
X-CSE-MsgGUID: D81oGY1jRraLID6ry75DcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="177400497"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 08:02:23 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 08:02:23 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 9 Sep 2025 08:02:23 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.42)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 08:02:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cz5HfeJhPHkQLV27zpUaslOvcaqTyMRwxL/Yo+NmeZ9wVnx77VYyWELcoEdpwXXsnbFsVervOnnY6jif6f4QXEikzegMACTHgnoMNwh17zseiUVaO2mfykgV91PpGZHXij+7PIsij7x6ZHiAbuj7Q7CduSU4YRos4uztFeAHLxYTWV2uoaSrRdUCxd6l3e4mLokIUDvdHRbyPntjMv+/9lhxHubsFJiPibhXIPmts3IJ8M9MKHgZjZz2OLRIw/f7fa3fTbi0z7H1Pyihpg02NMZyIan81pMsBXxCrygvoQeETusggfKZu9Zemji9O2KSaKFqgp0dCSFN4USQkHEClw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bCDYd6knNycPWEiviF10KH2Qd/zJByQC1wrBTxpZaOw=;
 b=ih+kcfiZyj5kOtzvh71ShZgB51pU+vLZ2F8gACESvQK1wECP8RRb3orxPlfnrDUaDaWmR6mENUWJ87XJY8ic90jPw1pLqt02CJyD8tWqOVGyGwSPdOSBmZ34RPAMxUMPj9gPQiDm5WkhJRpCEUASROM2bsQ1de+0D3jvkKmYxSUOoL1Q6YLyTjf7lidMHGSCxK3CltB5oxbLBcs/pFpQZ71qqveCQ4n6tNEzc39FBy0+yPt/hJlgyXmCzXfUKP6h/veaQCPnUia+qlyNTllsArftTw/xtKTu6lqttd53/VQMTW1ZP9dh2epxcf13mdmFqLsv9ewUAOiLoyJHKNaqnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL3PR11MB6482.namprd11.prod.outlook.com (2603:10b6:208:3bd::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Tue, 9 Sep
 2025 15:02:18 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 15:02:18 +0000
Message-ID: <39f9b204-817a-4911-837a-7f5be94d2a0f@intel.com>
Date: Tue, 9 Sep 2025 20:32:11 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/14] drm/i915/vrr: Use static guardband to support
 seamless LRR switching
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
References: <20250907073241.19632-1-ankit.k.nautiyal@intel.com>
 <20250907073241.19632-13-ankit.k.nautiyal@intel.com>
 <aL8HmW0mXKvHNGF5@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aL8HmW0mXKvHNGF5@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0052.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL3PR11MB6482:EE_
X-MS-Office365-Filtering-Correlation-Id: 70b4232e-bf60-4ddb-8dff-08ddefb1de85
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZkdmTDIxSExISVFpNUhZbksxQ1I5M2oxbzdxdkN1dk1zOVh6Sm5HUzVGRDRZ?=
 =?utf-8?B?dGVKOE1GbDhsMGx3dEhYYy9BVkpvaERmc2RHdFhpb3QrR3NHQmhZMTNkbnVQ?=
 =?utf-8?B?U2VLWURHeEtvRkx2VWxPYlNxOWF5c29iQ3o5RUtGVU52dTRBZ1RSR2hINnpP?=
 =?utf-8?B?TGhrNkFVV2xWVi9yN1ljYnBsK05wQmNqTTJEZDRVWENpMm42bE0yOFg5Qkhp?=
 =?utf-8?B?MUJLOVV1ZmNVSkxWQzBlZ2t2OVBQOHBqQzZIbkFYWkVxSmdJZ2Y2QjZOcExG?=
 =?utf-8?B?b3h6MU9CZ1lKeDhOQTJTYUVHc1dlT08wZ0dTOXlpT1h5T2I2UE91T2R4SFNl?=
 =?utf-8?B?U0RQY2Q5QWF0MmhZM296dnVpL2RTNXJiWk9qQ0pIVUF5SXUyaU54dnl2elpL?=
 =?utf-8?B?QmFpMEF6eU0zazFMWS9QVEROSTF4aVFVZXQ0ZnhNd1RBendkNzNBcFNKNEgy?=
 =?utf-8?B?cTNvdWtNaVZ0NzZhTnhuM3J6QlNTVURxZlJOZmNWVkNJYjVFMEt2TWVrbDB5?=
 =?utf-8?B?NEkwd1hOWXJZd0xYUC9MZ1B3SzVKejBjb2dONjY4cXBVd3ZwWi8vUUxDcnZP?=
 =?utf-8?B?ZkEzUmFZZ2NiMC9aaVZFM0RheUUveDhqTHk0TjErVjVUNzFDUHVTWU5QUWQw?=
 =?utf-8?B?R2JrV0RtSjZ2YWhISHFIUkU1T3c5WDdFOTkvY0pUejl5YjRRWkFLV05HTU9W?=
 =?utf-8?B?UVBSdXpWbkNVRjdCYysyYkdWRWpyZSt1SStSaHAwNE5pMGkyaFNMaERXVTBV?=
 =?utf-8?B?eENQY1NpcG5rSW1WaXdBaXpEaVAzaGt0TFJYV21kMjVJcGdIcXJmaFJCZDBz?=
 =?utf-8?B?UTJ3bmdaeXdxY1ZZcU8waWd2YUwrSUo0NVF6dzEzYUNEdjE1cTVvRlBQR1RS?=
 =?utf-8?B?cEZ5YXZxSlM4WHNmcDExWUtzT3EyV2tPd0RpOVRmMyttRWkxdUU2a1R2eUti?=
 =?utf-8?B?UmxiM25VTCtsZitqWDB0Y2E5c0pwMXlscHZHZmREeGQ1YlRyUXJyN2FqWk5V?=
 =?utf-8?B?aFluYWJudExQeVFVUmtTKy9nRWx5djdiWXhHbm1JTXQvT1BoZFN0T056c2Zx?=
 =?utf-8?B?UWRNZXhPaHhuOTlpb0h3eWp1OTlrOTlGQ0JNWmFjSkVMT3FabzVhaXgxRU83?=
 =?utf-8?B?dEV1VnovdThoOVZCQW8zekhPN2JGN2dEWnRFWktwaWpsNHRjOVZBRmZPV1FM?=
 =?utf-8?B?c0Y2WFg1eWUxeTd5d0QrTzUxRmpoNEwzOHpwSW5OdjhYNnlJcDNkWmFPQ0lE?=
 =?utf-8?B?TUR1T3N0RGVCWUx5Rks4ZytyUXNIMTZZdEVWY0Z4RitnamI0TWZsVWZ2Z3Nq?=
 =?utf-8?B?ZmNMVkVzQyt4OEprQVFDMzlaN01aL3NvQm9rN2hoT2ljSE9sVHE4dWJqVTJJ?=
 =?utf-8?B?bGp6Sm05Q2lta09CQXhWdUtKVWZ3S0l4N2tzTFpsZWVIaGZabWFqc1ZkMVJ4?=
 =?utf-8?B?MDNKSGpFU3ovUmUyNkFFa3BMS1EyUGFNaVpBR2RsRjNWSGh2dzJWU1UxejdK?=
 =?utf-8?B?d1cwUDVOZjc5TGZEUWs0ZW9RTnQ5dE9MQll1RGE5ZVR2WEZWUGpzZmxXTDQ4?=
 =?utf-8?B?NEg0MktBRUNqSlk2a1hVbms4K3plSzR0QlFWRjA2SDVXMFp4QXFRUHZ1VzRv?=
 =?utf-8?B?aVhlMThWQ0o1d0hHb0ZQTVhub09ZeHc2SjNJdGwzOW9yRmQxNWgrQ1owb2xX?=
 =?utf-8?B?L1UzY2orVzJ1UGRLYlFLRDhnRXFpd2EwdlllOE1XclVwcmN1M21RamRSRjJZ?=
 =?utf-8?B?UEw5SThNYnRaREdEWGdVVWhVOUo0ZVUzc2FhTmp6T1plOGRMWndrZUtiVXps?=
 =?utf-8?B?SHJWYlVBWVFiKzVTbTZhVHJJRkU2ZVdlQXo1ZjU2aDVXbzVLTjRmYll4NGZk?=
 =?utf-8?B?bTNmeGc3Qzd3Vkt6dEhWZVgvWDFGVkdwWlpZaXk2QUQ1QVJLQmFvL01HY2Rw?=
 =?utf-8?Q?kMHhVSpRn98=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RFpJTDhyenZnazVZd2N5WHZDVVZSTjUvQ0hkR3FoQ0s1S29rY2doNUNpQjA2?=
 =?utf-8?B?SWMrWEkybkhMS2Q5MEdkU1FrNS9yNjRheVUrVFBzY0c5TFF3SWY5UlluSWtD?=
 =?utf-8?B?TUhrcTh6VldWSmdlRk9INzk2NVdBZHpBVElMTlZ1Z0pDczVoOTNiUHJKS0F1?=
 =?utf-8?B?VXJNSWpxdjB1dThRdlFxemxEaGc0M0xiaWlZYWI2R2VYWEdYWjJIMEczM0dP?=
 =?utf-8?B?UmlPSjBQRWtQSWlmckY1c05oNGdJcWNqUzZNTzNqZXFnV2NGZDUrRmxTQmFr?=
 =?utf-8?B?QjgrMUpVa1ZObTdIaVZzOXhmNkU2Ukxpd1QwcVBWU2FBb3N6ZEJyN3d4dTBu?=
 =?utf-8?B?ZUpaUUxQVHJRR254SGprWEh1c1Vnemc2aEhnRkQvT0xaNVl5Y0diZG55S1RQ?=
 =?utf-8?B?ZTZ1YlcwMHFYanJDaEoyM1JpQm5aa1VubFdDdW5rVmZOelJ1RCtoTnhQRUw2?=
 =?utf-8?B?L1B5YVh5cHZUZE8zNVNrWkE1M1lWODhydU9uaFg4d0ZQRnNmdzhZMk9Sb1l0?=
 =?utf-8?B?dHQ4WER3SlJLODRUOE4zcjdRN0phMDNqU0xjSjVOWFA2TG1qSmFIMENnMStO?=
 =?utf-8?B?WUNBblZNdFhzYTIva2todk82V3VJYXBuVkFJbmwxL0w2R0RHQ1dGOUpTM3lZ?=
 =?utf-8?B?RTY3Q2w1MVBBODk2QW4vU001U0kvbldrOGpkckx5S1ZlaThuVHVnNk42cnhH?=
 =?utf-8?B?WGx2VGQyZSszN3g5TXRHaXMwdXNnZ29YN1VFTEZkbXhyL09DSFNFd3FCUFRN?=
 =?utf-8?B?c3NJN3pYaVpidTVyOFVFd3Y5aDFibi95eVJ4VzV5SWl5REQxSUIzL3ZoSHBp?=
 =?utf-8?B?YVF6Qmt4TDY0cUlUOW5MeVVDbFpIYjc0ZzJBTE51R1lLWktFTHVndWd0QXVE?=
 =?utf-8?B?bHZtVXZsME5lcCtFNmgzeW51YWlCcldrUFUwMHFGOUpXYnhNNmhZME5DV1Fn?=
 =?utf-8?B?SGZ0NkFHMzZTZTAyWE1rOTdRZWdFV0Frb1E1VHh0VmEzS0JTZGoxYjVEYktY?=
 =?utf-8?B?aFE1czVpcE9IU2hzdVpDVlJWTzN6RFdjc3plcG53ek8vaFVZWDZ4WUpkZjhD?=
 =?utf-8?B?LzdmRUNsWEU0N21mOVVRT1Znb0hxeDJ4UDR6b013M0NIci9sNlZvVTdZZ2Ir?=
 =?utf-8?B?THNRN0JPR29qVTlzd1pUUVZ3T1lPaUxDWEZ4NHZvblV6aUtDeGxUWjZBQVh4?=
 =?utf-8?B?K3N4dElSdXJVYVpFdG5zZFhWY0cyOTRqZnh1Y3pVVmVGNWFZek05a2FIS3JJ?=
 =?utf-8?B?OFJMbmFRUzhOWE92dnNSc1dQdGZ5eXhXS2hoQTJ0RjlEK1F3RWhycnJSYUx2?=
 =?utf-8?B?bFdkN3RlM0xmN0xVVzcvcWRTaWFFRXFqUTBVdnRjdERGR3N4eS9xTllyMGpT?=
 =?utf-8?B?bW9mVDF0Wk0xN0hGalRqbUVoNUUrN2dNcU9SMDZnQ0dXQ2dKOFg5NnpmeXd4?=
 =?utf-8?B?MmJvL2RWY0dXQlZwNm9qU0d2aDBxK3M1Y1R3Q04yQXc2STFpZ0dGUVBvQmRY?=
 =?utf-8?B?NzlCVEFLU2J6ZFg3VDNJTjJveERtdGhSaS9MbTJHZDI1OGFKZ041S2Y5TWFP?=
 =?utf-8?B?WkNNTjc2OG5oTnFRMk1lK0FzNDhqYVlDVTN0VHdnODliVHdTaXNabm94UExq?=
 =?utf-8?B?dXJ4NjZzL0NFeGNCNER0c240VG1mQ1pZeS90Q3hQU0ovZ0ZyVUxmSjh4TzFi?=
 =?utf-8?B?SUZXVkIzVDMvNlpzOXFER2U5SjZ6S2ZiM3kzTkJqSFFabytHUXp6TEw0NkZP?=
 =?utf-8?B?bmJEcHd2eG10bkpFMkNFck1BTmF6OVZ0cVZoQVVjcEJ0M2xGU0lkazNXMnA3?=
 =?utf-8?B?TllNcmNETXduNmIwOUhvakMzNmdvdEw4R0J6RTlXM21ySm1zRWR1cTU2bHRC?=
 =?utf-8?B?QUcwemRoWVZOVFNkUm5LZVM0a1NlQlZLN1hpQnFRdFljVHNzaUNRdFJ5Q0ps?=
 =?utf-8?B?MlNVWXlFVi9kRlBKTndBVWx2UmNMTFFKaE5XNllnZlBVUVZQWjEyWG5LWms2?=
 =?utf-8?B?SS9oWTBjc2c0TEN5dkIrZ21JOUJweTBEVU5oZmxvaGZsUW53VkQzcm9JQ2RP?=
 =?utf-8?B?OWVBY1hrVzZpVDJZdWoxS0NXdVZmZ3hBOXdyWkNIK1djWTB5K2JEQ3NiVVdo?=
 =?utf-8?B?d1d4Q2twdjVvdDY1TDJqMjFHSisrem1ZYUtRTWhteWxWRXkzTjFBc05SdHAx?=
 =?utf-8?B?S3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 70b4232e-bf60-4ddb-8dff-08ddefb1de85
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2025 15:02:18.2013 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5HUrY/hHzYLkr0g2Qaz9XsKrNSDvNhIIlz/5seZUZWlYPh7lzCkPAqx2WpMb1feLWyEGa7O1fco24FLY4YgLZO6ttxEw2AOFYo8D7ra9kGI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6482
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


On 9/8/2025 10:13 PM, Ville Syrjälä wrote:
> On Sun, Sep 07, 2025 at 01:02:39PM +0530, Ankit Nautiyal wrote:
>> In the current VRR implementation, vrr.vmin and vrr.guardband are set such
>> that they do not need to change when switching from fixed refresh rate to
>> variable refresh rate. Specifically, vrr.guardband is always set to match
>> the vblank length. This approach works for most cases, but not for LRR,
>> where the guardband would need to change while the VRR timing generator is
>> still active.
>>
>> With the VRR TG always active, live updates to guardband are unsafe and not
>> recommended. To ensure hardware safety, guardband was moved out of the
>> !fastset block, meaning any change now requires a full modeset.
>> This breaks seamless LRR switching, which was previously supported.
>>
>> Since the problem arises from guardband being matched to the vblank length,
>> solution is to use a minimal, sufficient static value, instead. So we use a
>> static guardband defined during mode-set that fits within the smallest
>> expected vblank and remains unchanged in case of features like LRR where
>> vtotal changes. To compute this minimum guardband we take into account
>> latencies/delays due to different features as mentioned in the Bspec.
>>
>> v2:
>> -Use helpers for dsc/scaler prefill latencies. (Mitul)
>> -Account for pkgc latency and take max of pkgc and sagv latencies.
>> v3: Use new helper for PSR2/Panel Replay latency.
>> v4: Avoid re-setting the Vmin/Flipline for optimized guardband.
>>
>> Bspec: 70151
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> (#v3)
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c |   2 +-
>>   drivers/gpu/drm/i915/display/intel_vrr.c     | 127 ++++++++++++++++++-
>>   drivers/gpu/drm/i915/display/intel_vrr.h     |   3 +-
>>   3 files changed, 128 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index fb072275b1c7..3fa94675d5e1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -4902,7 +4902,6 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
>>   	struct drm_connector *connector;
>>   	int i;
>>   
>> -	intel_vrr_compute_config_late(crtc_state);
>>   
>>   	for_each_new_connector_in_state(&state->base, connector,
>>   					conn_state, i) {
>> @@ -4914,6 +4913,7 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
>>   		    !encoder->compute_config_late)
>>   			continue;
>>   
>> +		intel_vrr_compute_config_late(crtc_state, conn_state);
>>   		ret = encoder->compute_config_late(encoder, crtc_state,
>>   						   conn_state);
>>   		if (ret)
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 855974174afd..fff684eb2514 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -6,12 +6,15 @@
>>   
>>   #include <drm/drm_print.h>
>>   
>> +#include "intel_alpm.h"
>>   #include "intel_de.h"
>>   #include "intel_display_regs.h"
>>   #include "intel_display_types.h"
>>   #include "intel_dp.h"
>>   #include "intel_vrr.h"
>>   #include "intel_vrr_regs.h"
>> +#include "skl_scaler.h"
>> +#include "skl_watermark.h"
>>   
>>   #define FIXED_POINT_PRECISION		100
>>   #define CMRR_PRECISION_TOLERANCE	10
>> @@ -413,15 +416,135 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   	}
>>   }
>>   
>> -void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>> +static
>> +int scaler_prefill_latency(struct intel_crtc_state *crtc_state, int linetime_us)
>> +{
>> +	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
>> +	u64 hscale_k, vscale_k;
>> +	int cdclk_adjustment;
>> +	int num_scaler_users;
>> +
>> +	/*
>> +	 * Assuming:
>> +	 * Both scaler enabled.
>> +	 * scaler 1 downscaling factor as 2 x 2 (Horiz x Vert)
>> +	 * scaler 2 downscaling factor as 2 x 1 (Horiz x Vert)
>> +	 * Cdclk Adjustment : 1
>> +	 */
>> +	num_scaler_users = 2;
>> +	hscale_k = 2 * 1000;
>> +	vscale_k = 2 * 1000;
>> +	cdclk_adjustment = 1;
>> +
>> +	return intel_vrr_guardband_scaler_latency(num_scaler_users, hscale_k, vscale_k,
>> +						  chroma_downscaling_factor,
>> +						  cdclk_adjustment,
>> +						  linetime_us);
>> +}
>> +
>> +static
>> +int dsc_prefill_latency(struct intel_crtc_state *crtc_state, int linetime_us)
>> +{
>> +#define MAX_SCALERS 2
>> +	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
>> +	u64 hscale_k[MAX_SCALERS], vscale_k[MAX_SCALERS];
>> +	int cdclk_adjustment;
>> +	int num_scaler_users;
>> +
>> +	/*
>> +	 * Assuming:
>> +	 * Both scaler enabled.
>> +	 * scaler 1 downscaling factor as 2 x 2 (Horiz x Vert)
>> +	 * scaler 2 downscaling factor as 2 x 1 (Horiz x Vert)
>> +	 * Cdclk Adjustment : 1
>> +	 */
>> +	num_scaler_users = MAX_SCALERS;
>> +	hscale_k[0] = 2 * 1000;
>> +	vscale_k[0] = 2 * 1000;
>> +	hscale_k[1] = 2 * 1000;
>> +	vscale_k[1] = 1 * 1000;
>> +
>> +	cdclk_adjustment = 1;
>> +
>> +	return intel_vrr_guardband_dsc_latency(num_scaler_users, hscale_k, vscale_k,
>> +					       chroma_downscaling_factor,
>> +					       cdclk_adjustment,
>> +					       linetime_us);
>> +}
>> +
>> +static
>> +int intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state,
>> +				struct intel_connector *connector)
>> +{
>> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	int dsc_prefill_time = 0;
>> +	int psr2_pr_latency = 0;
>> +	int scaler_prefill_time;
>> +	int wm0_prefill_time;
>> +	int pkgc_max_latency;
>> +	int sagv_latency;
>> +	int sdp_latency = 0;
>> +	int guardband_us;
>> +	int linetime_us;
>> +	int guardband;
>> +	int pm_delay;
>> +
>> +	linetime_us = DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
>> +				   adjusted_mode->crtc_clock);
>> +
>> +	pkgc_max_latency = skl_watermark_max_latency(display, 1);
>> +	sagv_latency = display->sagv.block_time_us;
>> +
>> +	/* Assuming max wm0 lines = 4 */
>> +	wm0_prefill_time = 4 * linetime_us + 20;
>> +
>> +	scaler_prefill_time = scaler_prefill_latency(crtc_state, linetime_us);
>> +
>> +	if (crtc_state->dsc.compression_enable)
>> +		dsc_prefill_time = dsc_prefill_latency(crtc_state, linetime_us);
>> +
>> +	pm_delay = crtc_state->framestart_delay +
>> +		   max(sagv_latency, pkgc_max_latency) +
>> +		   wm0_prefill_time +
>> +		   scaler_prefill_time +
>> +		   dsc_prefill_time;
>> +
>> +	switch (connector->base.connector_type) {
>> +	case DRM_MODE_CONNECTOR_eDP:
>> +	case DRM_MODE_CONNECTOR_DisplayPort:
>> +		psr2_pr_latency = intel_alpm_compute_max_link_wake_latency(crtc_state, true);
>> +		sdp_latency = intel_dp_compute_sdp_latency(crtc_state, true);
>> +		break;
>> +	default:
>> +		break;
>> +	}
>> +
>> +	guardband_us = max(sdp_latency, psr2_pr_latency);
>> +	guardband_us = max(guardband_us, pm_delay);
>> +
>> +	guardband = DIV_ROUND_UP(guardband_us, linetime_us);
>> +
>> +	/* guardband cannot be more than the Vmax vblank */
>> +	guardband = min(guardband, crtc_state->vrr.vmax - adjusted_mode->crtc_vblank_start);
>> +
>> +	return guardband;
>> +}
>> +
>> +void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state,
>> +				   struct drm_connector_state *conn_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>> +	struct intel_connector *connector =
>> +		to_intel_connector(conn_state->connector);
>>   
>>   	if (!intel_vrr_possible(crtc_state))
>>   		return;
>>   
>> -	if (DISPLAY_VER(display) >= 13) {
>> +	if (intel_vrr_always_use_vrr_tg(display)) {
>> +		crtc_state->vrr.guardband = intel_vrr_compute_guardband(crtc_state, connector);
> This all looks to be in the wrong place. It needs to be done as part of
> intel_crtc_compute_vblank_delay() which then updates crtc_vblank_start
> to reflect reality instead of leaving some incorrect junk in there.
> Presumably that is why you also had to do that
> intel_dsb_wait_for_delayed_vblank() hack.

Hi Ville,

Thanks for for the comments.

Looks like intel_crtc_compute_vblank_delay() indeed is the place to add 
the vblank_delay and get the crtc_vblank_start point to the delayed vblank.

But I think, there are couple of things need to take care with this change:
1) The SCL currently is derived from crtc_vblank_start - vdisplay, which 
is ~1 with guradband = vblank length.
With modified crtc_vblank_start, this will become huge so perhaps we 
need to set it to 1?

2) The intel_dsb_wait_vblank_delay() (which inturn uses 
intel_vrr_real_vblank_delay() for vrr case) also computes a fixed delay 
based on (crtc_vblank_start - vdisplay) lines
Instead of this should we not use intel_dsb_wait_scanline_in() to wait 
only till scanline reaches in range  [flipline decision boundary, vmax 
decision boundary]?

Let me know what you think, I can send a follow-up patch with the 
suggested changes.

Regards,
Ankit


>
>> +	} else if (DISPLAY_VER(display) >= 13) {
>>   		crtc_state->vrr.guardband =
>>   			crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
>>   	} else {
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
>> index 950041647e47..362638fd0d66 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>> @@ -21,7 +21,8 @@ bool intel_vrr_possible(const struct intel_crtc_state *crtc_state);
>>   void intel_vrr_check_modeset(struct intel_atomic_state *state);
>>   void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   			      struct drm_connector_state *conn_state);
>> -void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state);
>> +void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state,
>> +				   struct drm_connector_state *conn_state);
>>   void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
>>   void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
>>   void intel_vrr_send_push(struct intel_dsb *dsb,
>> -- 
>> 2.45.2
