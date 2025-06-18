Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE3CADEDE1
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 15:33:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CF9A10E829;
	Wed, 18 Jun 2025 13:33:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PWanwObr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2936310E828
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jun 2025 13:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750253628; x=1781789628;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UNwzDvdrp83cWCCDQFKzEWMxsgG1i52/PrUjdwYmvTY=;
 b=PWanwObrViIfdgqEmTV8obiqCq/fQ27Y4nzvuJdmFTChDHkgWqGorsHX
 +1arx/NpZwrqOxut1Nlj5OwIj8uqOt7RafEeuTP9w8EuHjCwIYkPz/vrx
 Eayjq0LYpFzaD8mm+2LArzlJ5FtZzzMotWK9k3zqI0nWZ3cYWFhFT4EV3
 iNBu/+lJcwxIAO0Won8wuJdNOaWjaZDyj4a3O/U/Krns+JLU3a4VJyxan
 54Mn2k72vB7r6fsoxfPupxbDgmJlcxEsRWsSl4YKBrWjygjs41IxBGtB5
 aX0l04PPwieBCrAbhXuVtxHT3z2+aiEOzAWljeZavmswQvOcvKw8cg7fa w==;
X-CSE-ConnectionGUID: 7NOCJLCvQmymthve1H9QQw==
X-CSE-MsgGUID: hM2mQZTWS0upa8G8JxLxNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="52612158"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="52612158"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 06:33:47 -0700
X-CSE-ConnectionGUID: V1Q77UV2SxuQXoHRi1PBXw==
X-CSE-MsgGUID: q0GZ6Z1cQEi8TzwBL6Op7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="154391815"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 06:33:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 06:33:46 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 18 Jun 2025 06:33:46 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.66) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 06:33:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oEcHojlwp2UPEggptmPA3SZLmREMjvz7KvBu6yBvlMUz7Ly87xOA1LHPiYHtrOnTQJsOifedBerg7sPMHgZ4eUGIqcd0PxfyMnFoqiw4+OuClaiCYU1Mk4xESNJSFwzhgx//j+b+XJo+tJGxIq0kxt9vhN3JL0DtyKvol5HgEykf5g+7i2HU+6l8zE4tmXlvm6lIfD41Zx6uDR8PrOfo/WLccwfDzaVHYnOOaDF4NyEpo5gPYsAFAamKfAhOkq+AeXAp2ut2cuBrpxb53LSjrqEc+X7Yx1BiqPuY2sByCPOSYsh00tTNCjIpEmvGNADvVosRFXYIvgOXh6yqu7mTug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1v5DQsYnr5LWfO1/1OmQC5r7LHbAAH0wqAmhff1BTt8=;
 b=MQHGwZUbjY+H3xQLztI8qvPgj03yEL3gcXnZRaYV9Dvldd6pfh2JLQBoPMS6TVF3eKqqBgIaym+Kpz5jdEq/kul8fnZ/qWUKDYgLzHa2MRwprrJvyokeV7bv53XQ/9y4ylc+RMaFaECYmXCtHQryxZKHi4JU+U2oiY8Z5uRf+i7DplEHAWO3OQGEo2VIEGA920p3rtRxRVc8ETto1uJdkSWZwOgMElJn9ZJGx0Jf/DZ54jhJscfI2DomOQp4NhU3xsFX65adkuiI+rsjVjeWi9t2U5zFJDDYM4EM21JiICu7Oltp++XIfVjBrhysbVLuOctpSMiXhtuA4b5KKC3z0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB6146.namprd11.prod.outlook.com (2603:10b6:208:3ee::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Wed, 18 Jun
 2025 13:33:43 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8857.016; Wed, 18 Jun 2025
 13:33:43 +0000
Message-ID: <8b7b2e44-5f04-452d-88a9-e728983d9640@intel.com>
Date: Wed, 18 Jun 2025 19:03:36 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [REGRESSION][BISECTED] intel iGPU with HDMI PLL stopped working
 at 1080p@120Hz 1efd5384
To: Jani Nikula <jani.nikula@intel.com>, Vas Novikov
 <vasya.novikov@gmail.com>, <stable@vger.kernel.org>
CC: <regressions@lists.linux.dev>, Suraj Kandpal <suraj.kandpal@intel.com>,
 Khaled Almahallawy <khaled.almahallawy@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, <intel-gfx@lists.freedesktop.org>, Christian Heusel
 <christian@heusel.eu>
References: <8d7c7958-9558-4c8a-a81a-e9310f2d8852@gmail.com>
 <afa8a7b2ced71e77655fb54f49b702c71506017d@intel.com>
 <33046593-17e3-4bdc-9d4a-94dc94ef5e81@gmail.com>
 <72c9ef36e81ddce8a9e91c5f3652489f5fa2d78d@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <72c9ef36e81ddce8a9e91c5f3652489f5fa2d78d@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TYCPR01CA0068.jpnprd01.prod.outlook.com
 (2603:1096:405:2::32) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB6146:EE_
X-MS-Office365-Filtering-Correlation-Id: dc8b24ac-25df-4f50-a9e5-08ddae6cbe8f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YjNlSE5hVTVCKzNOQi9RYmJGVkVsZ2VYRE5zN0treHV2UTliYTdlLzJXSDdC?=
 =?utf-8?B?ckxDa1NpYlRjNzdzU1ZFWnFid0JRY0E0KzRZMXhmSnpkVjJ5MkYzck1QV3lm?=
 =?utf-8?B?TVBReUt5QjlIcC93OGRIWHZwZzFtR1FOS3VoV2t1Z2ptWThUbE5jWHdhOXd5?=
 =?utf-8?B?N3k3cytKLzVCYmsxOUdmQ3B2bUdZbUdGaE1YYlYwWUNLdjQ3V01hU0EvTXpr?=
 =?utf-8?B?eGo1YWtObTg0MjR5UnpnUVQ1dzNJQkV0Q2c3ejJNcmIwY0ZEZ3BqdFBWajds?=
 =?utf-8?B?L1VKMVZQNVJhWGZsTnI4SnNYcHdwYllkVEFmWnRxQ1JabXEvSmdSUjNEYWxt?=
 =?utf-8?B?N3NaT2FzWTFPcFFESXM4WFFHZHdhYXQ1Ti9LRDVDMXBVS1IzaWZWZ3ppMVRh?=
 =?utf-8?B?RzlGSEZzcnVuRUt4dXBnNUI3a24yUlh2ZjJ1YmV5RkkwWUdoWHowUkZOSGhK?=
 =?utf-8?B?MWJmeHpzaEtjYUJEZEkvSXZqdU04L2hmQ2NYNmYzMFA4Ty82ZitIelc4VnNR?=
 =?utf-8?B?STdxSEFxK0NwTGREQUxRK2tIK1FxYk9JZjdDN0NOcXQrQi9nRGNBVTVIViti?=
 =?utf-8?B?S3pnZTZCZXFuL3lHbjZSeEEwY1A2Z1NIRVRUZ2JIMi9pT3pCckgrbkFxL3Bi?=
 =?utf-8?B?eVl3cG1lbnRYZEpBaGJBbEZLVHFhWjBpODZUd0Q5WEltbnMyaVJGUXBqelVq?=
 =?utf-8?B?QzdaOWN0WHpJWWlOQzNPdVlTVm5EU1pTek85SmQ0Z2pXMUh2bEN1TVlITHpM?=
 =?utf-8?B?WkdFYkRmY2VtTDkzTFNRUUlXMGkvSjQxRjRnQzNlamkvMnU0aENWR3VLOUxm?=
 =?utf-8?B?bW5ucjQ2ZTMwQ1NQVm56QlYrci92dE42Q2I5dGRiOHpMSTdsUTgzRHMzYWU1?=
 =?utf-8?B?ZVlneG9UZ0FhVWUzM05WRGVlUFgzNk1ScGZXOTFNa09XWjg5Uy9pSWs5SE5s?=
 =?utf-8?B?WjQ3c2k0QmJrSkFzVHNycFZkWFNveVp5enZmenh4djZsWGlFeEx6L3hjWGJE?=
 =?utf-8?B?cXJQbUxUakF0QmNya2o4a0piRFFKY1pmV3FrQXBpa2owalN4V0xTRld5RFUv?=
 =?utf-8?B?Sml0YVByclZCZVZkRnNHYmRLWEVtVVkzL20zYy9RN1BoZisrMzdQejBRK3h3?=
 =?utf-8?B?Z0dNcDhnNjNGMU1KY0xrTjRnakcwTTd0S0RqY3FFOTJNbFdPT0VHY01oTXla?=
 =?utf-8?B?VXdkNCtzRVRDT3RtdVd3MEdRWHdWeDZRU3lLQUR6c0FUMitwRWRHNHZJb1Ar?=
 =?utf-8?B?VTJzWkFJcDFpNWhNMFdKQ1crK2hYak5iTU03alNyVGFHT3p5NUJRakFBbXdp?=
 =?utf-8?B?NnlFR3hLYURiVW1KNjJWQ0JjSXppejJ1UFMrYXlPQng2OE5KMU0xSUh3SXBT?=
 =?utf-8?B?eGNBYWV5NnhqQ00xTjl6aHNNdkFMRU1wbFY3UU1DWDc5NnJaQkhCQVBVWFJW?=
 =?utf-8?B?UlhiYmZ5c3ZBMkFOTnNpNllXcmRrNzVWdm5EVUpqaDFDM0VaSjZYSmI3RTIy?=
 =?utf-8?B?ZGxJeXp4bmVKclg4TGN4cVI3b3FwQldBblYzbzFleTZqQ2lXU256MHIzdlBK?=
 =?utf-8?B?TFNuYVRaYUtZQzFuTE1zb2JyOU1GU2hQU1Zrd3B4aS94YUFwd0MvelNnZDNl?=
 =?utf-8?B?Mm5Jc2tuQjZEa3lOOU5yL3I5SzVaUG13MklQaG5ITjlTV0ErcTRWWEgyV1hS?=
 =?utf-8?B?YkUrdW1Zekh1S2RkRFdBbGY5MFpMZG1qVkpMckxJQ2prQ1V0NzhVVDRxbEsz?=
 =?utf-8?B?L3ZaMzBpRG5KSWdLODc2SUFlMU94Z216SjRDempOR05vMEpXQUhoYzZ2MDcr?=
 =?utf-8?B?M3NFeGNZVzRsamMzTGQybDIreFl2Y2ZTN21aRGpaNUN3M0NZdE5rQlZiNzVR?=
 =?utf-8?B?NU8wbzB5QndvZGZTeEVzY0NUQlpLZElYMFZQVnA5dmRmU2V3OFFCSFIraVBh?=
 =?utf-8?Q?yqO2ojJgGHw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VEpuK2E2NnM3SXZKdUU0Vys3K3k2SG5tSWw3bC81eUJvNHFKMnQxeVZjMkl4?=
 =?utf-8?B?MFpHeEEwcHpjVHI2dm10dlIxMmljQ25kQjJiakRTS3ducS9RaGNRTUJLd051?=
 =?utf-8?B?M2tFL0RiNE9Oa0UreUVWS3BoVEdMK2lGb0NYMjhTMlhJa2ZvdGNOQkxvU01x?=
 =?utf-8?B?U0cveWs5MENFYW5QUWQxak40K3VjbmVpQW1oSFkyeWx4Y0RtbW5vSWcrYllC?=
 =?utf-8?B?ZkpRTUFlckU2YUpodEp0RFcxbGFMK3U2SXB4bGFZL1BPcVpzUTFDeUd6amFZ?=
 =?utf-8?B?MmlvclF3RmNTYncvOGdhbU1neHh0cFpZTWdYOGxUYy8wY2dFc0Jla1hYdjMw?=
 =?utf-8?B?MG1NeGRqL2VzTnBQL2Y4UVhtNTJvRjFuYlRmZFdadTh6aW9MNGdNNnJ6SzRa?=
 =?utf-8?B?TEQ5bEM5c1hjdFpzQk5xNHJOTTdwT0p0dTNhTmcyaXgwU0dwTk9GSUxYRlNl?=
 =?utf-8?B?V2U4eFVWOTRSbVZlWmowVTBiNGxBdlJkT1pjdEJKUXlpUHZ2MWVXZE4wcWpQ?=
 =?utf-8?B?Nlcwb0NFMmc2azEwNlIyMm1nUFUrdHltc1ZVamtqSTJoV1c0aWliK2F4WHdj?=
 =?utf-8?B?bUV2aVJYSVF6b2c4ZVgrU2JsUWNCbXJPT1VBNW5DVldYbjhpY2plbkV5MFM1?=
 =?utf-8?B?eEpyOU9TMkRYc1NEWDVRQStCNy9MR3ZGODdvRnRMRnAyakNKa0FwSE0zcjJR?=
 =?utf-8?B?aUlPUUc1NWxkNG54c0pXMkVOd0RVVTVpc3VWN2JiK3NZaEdQMXZSSVBMaGlL?=
 =?utf-8?B?ZjUzLy9BSXM2UUhBVDgzcUkybkczSnBxQXFlQVUzOFRRTXBnaWRJVGtSdDFE?=
 =?utf-8?B?Z25KbUF4WFUxSkFaNWJQUHpwRk9GUEFiZE1yYXFGVWQ3ZE5qL2U2OVNRVHhr?=
 =?utf-8?B?RGRXSjFkV0E0R1pUU05BVFdlZ0Y0Y3dlQktmRGFBOTV5MDlzL3hWbkdld3p1?=
 =?utf-8?B?OWFzS09pNkcrNEVoOVVLb00zRTh5Qm9SQUJsdENTZVVONGZmcHlvVnUrZjQ0?=
 =?utf-8?B?VHR3bFpEd1A3M0U1TUUwU3RSa2Rac0ZkTDVQWHVhRWlPVWFSSXRIMWVoWG9O?=
 =?utf-8?B?bnVtOElGZjF5MmJLRlJ5TlU3bFM1elBpcmlyVm00TERaeE9TemIraUx6Qm9M?=
 =?utf-8?B?WjBzajRHZHRpRDNYOEV6QjJYbGR3NEJMWnc2aWthTXR2YkNqN2ZZS3ExZnRp?=
 =?utf-8?B?TXduTnMyQzBZcG9zbFdzYmZ4RFRtVXRNMVFwbml1T1BtT05Sd3hkeVgvTnM4?=
 =?utf-8?B?VkIxWUVUVmVVVFl5TTgyS3BGVGpaWlVjK3I3a2srS3FrRjBZVjYwcG9BaUli?=
 =?utf-8?B?MTYrTUtlbW9tVGxnbkk2WVQwSENubVJBZS9RWlFSTE8zcDczeVZtMllQZ3hF?=
 =?utf-8?B?cU5mR0Nnejl1YTlpckJaYWZCT2xZTGVYUElCN0tMY3F1QkRDRXBsMVhYeGV3?=
 =?utf-8?B?UVNZTVdtYlI0Zkt2QzZiVzhMVXU4RzJHZ29zbDA2dm5ObU53V0wvQVB1bUxH?=
 =?utf-8?B?YWk4MWJEVjV4SU1aOXZEdjRLbUV3L080WGdyVDNQUjBxSkd6QlFXM2I3aUJR?=
 =?utf-8?B?WEsveTIvcVBsd0tteW9FNHdaaXcxTlZHTHJSUEg5Z0x4aVR4dW1XbS8yTURM?=
 =?utf-8?B?WFFGc3FWb2NnNk1WdXNtSld4a3QwcCtGSXZPdjN6K0VEaFdtVGZjcE1iQ1BM?=
 =?utf-8?B?WkRndUpiNGlMMjZhcjJjWmlNS1lQZmhPTHFsc2FjeFEwVFBkR1FGcWhRcjZJ?=
 =?utf-8?B?R1JVM1l3MnhYRUhwZXdXQjVMWmdwWmFsVWczSXg4NXFTUkMzVHVzbEtiN1dI?=
 =?utf-8?B?SGl0Wm80dWhLaU1PMGdSYkJRMXErNzJXNU5YSHFvS1dDZmtyT0NhQXRXRTBr?=
 =?utf-8?B?akZueG9uakVJU1k1MEFsMDNqVHJ5Uzd0NEkyb285eVF5bVpNdER6SkVrLzIw?=
 =?utf-8?B?Nk9pQXozcndBSEx2TmxOcks4Q0RBZFBiRFVKeHQvQk4vQkN1YlhuQzlBc0Jk?=
 =?utf-8?B?alU0OURzWHVQR3VTVUxoQUphd2xOME5rY3lCYndIenk1djFhV2hYMEloamxV?=
 =?utf-8?B?eE9aMDBSYTN4MjUzS2hlNGsvY3A0MVRoK0ovUnN3WFdZRy9ITUlYK1dPOVN5?=
 =?utf-8?B?VHE3MzRFdGtHNmZBbE03ZlhmbVAzN3h4b0tDd0UxRmQrYWdLMWZ6UEJIcDhw?=
 =?utf-8?B?Znc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dc8b24ac-25df-4f50-a9e5-08ddae6cbe8f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2025 13:33:43.6047 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f96nRa4FaIwb0jS2U0m6ktFFI50uRwHo9RZh4ClW7vWWYI58Kb4NnS743eTLBG8Mx1OrIsoPhnUPl6M8HXuWdBfc///mNkrIxjWd54DDsOM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6146
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


On 6/17/2025 7:20 PM, Jani Nikula wrote:
> On Tue, 17 Jun 2025, Vas Novikov <vasya.novikov@gmail.com> wrote:
>> Hi Jani and everyone,
>>
>> On 17/06/2025 12.33, Jani Nikula wrote:
>>> Does [1] help?
>> The patch works. (Applied on top of 6.16.0-rc2-1.1-mainline, built by
>> Christian @gromit who helped again.)
>>
>> The patch (or the new kernel) also have a side effect of xrandr allowing
>> a completely new refresh rate, ~144Hz. This new refresh also seems to
>> work (I cannot easily disambiguate 144 versus 120, but I can tell it's
>> not 60Hz). So as far as my hardware is concerned, this patch leaves the
>> whole system working in all scenarios that I've tested.
> Thanks a lot for testing! Ankit will send a v2 of it, and I think we'll
> have it in mainline and backported to stable in a few weeks.
>
> There's no need to file that bug report, this will suffice.


Thanks Vas for reporting and testing and Christian for the help with 
bisection/builds.

Thanks Jani for first pointing out the sparse warning, and then for 
quickly pointing out the fix.

I have sent the v2 of the fix [1].

[1] 
https://lore.kernel.org/all/20250618130951.1596587-2-ankit.k.nautiyal@intel.com/

Regards,

Ankit


>
>
> BR,
> Jani.
>
>
