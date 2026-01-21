Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJc8JdxOcGlvXQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 04:58:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D7050B25
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 04:58:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80AA510E694;
	Wed, 21 Jan 2026 03:58:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X0Q/Ll87";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B173010E142;
 Wed, 21 Jan 2026 03:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768967898; x=1800503898;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yeo+SY0UMZAIp13Trgj/2Q5cvJGEnN3ZpuP1XiXfJwk=;
 b=X0Q/Ll87Pfn0qTxyNFR5WXxsdyOUAdpzqXO8TbxZLyrZ/ZohzlWzEW9c
 yt30lkRsLZZGKIFstBtSa/zp3l0KwnxUBOcIQp/inruvsHC6ofp5vNLYu
 fNPG3Kkg1KO+us5lryoGeTLb0LEtefxenbrZ98ClLMO21519Q5+o5rMvP
 yzypFDNfK27xceIimmFDGRK4zcGsfb53wLat9Fjx7spCwFJnU+0+aqdu0
 hwU/yGbX71+k6TGnmNIrJJz4soWd+Lt02+H51DuZ6tpESSo2E0hM7Rp7L
 0eHn5HPnJPc68ei9/V9eZsdjhPhDdJ/7Odff7l5D4YCyrkGzgfYEFm/Yk A==;
X-CSE-ConnectionGUID: +Z2AUliISj2qER/qqNOslA==
X-CSE-MsgGUID: 0j1T0xLoRm225LjSnGmYsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="70095503"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="70095503"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 19:58:17 -0800
X-CSE-ConnectionGUID: ch4t7r0XQzCt4+i+QkqOdg==
X-CSE-MsgGUID: weSKBaBeT/uDxxGWCnxYRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="205950602"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 19:58:17 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 19:58:16 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 20 Jan 2026 19:58:16 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.29) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 19:58:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=og+Q5AcuOg1C1vqcc2E6IObe2vUvY1zJ3sQANUqLEOvfazjztZkwve4+rwXEh2DztQSnCefMNCQ8AAY1AKSNSSAiD8G2quossnXJqJwRYfDz4GvPtKUEgznpcUrrWweiRPyO3wz30InUdrsK3SloJ1tn86MeSBb9Z8yAwTyjISa6zpEeTFXzhT3ipmiISJ+UUV6gEvBvhq1YLTyrMBHDkqW9NzYaFXtrqgJx7losbywWbLsku2o+myGBN9e509E1imbtwotvC2s2DfnvivxM/4gzdMYCMa3k0zY9p8fK3ZRr7MjGmz9XFMKzNjFQyQ/ZBNyLSqHAGsAc45QE7C8sGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EVO9IPvnvZqSWuoFiZBiuN74XgtkYo7exD36u2rmB5g=;
 b=I8J01PfqFGZzmO43Q8gRTVBfw+Tvn8ywc+xNzyPmNBPZ6loMZfprtuBWybpeEA7no5CqCQpF4kYWjWhxl1+CVqyxAIFyUJ/Uwb3zG4A5wjfzpM847s6LzkW8MEmKYGtQuUWwtNnktCGlmmM6jloURVB0Q4VbB20fXEvKy4jGvP4a2k4MTEeclnZSYCfGfWaxnqnsDEab0fha8QfNmJSnGOGv1PX1BBQekP8wOPEmFvYb5OPxOJPrOvnAZyVhJmT/3wBaPVuKacgXHLwvwtb/WeePWLhkKbaaafba/Xx32dcHH2nv52Tpj4xtfI61dTsJACo8QUsBm68KKThhTqkWfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB7131.namprd11.prod.outlook.com (2603:10b6:806:2b0::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Wed, 21 Jan
 2026 03:58:08 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 03:58:08 +0000
Message-ID: <d9ed8612-34ff-4b43-b486-8fd9d27da9c8@intel.com>
Date: Wed, 21 Jan 2026 09:28:01 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/display: Disable DMG Clock Gating
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: Nemesa Garg <nemesa.garg@intel.com>
References: <20260120050033.635681-1-suraj.kandpal@intel.com>
 <20260121030257.662294-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260121030257.662294-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0054.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b8::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB7131:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b622e93-dc0e-4b17-25ab-08de58a14965
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SUkwak1vVkx5NEJzL00rOFpxbHhpNTA5Q1ZXQjJNcW9Pb0FGQmdaZVRTS2lw?=
 =?utf-8?B?Tnp3dnBQT0JCM1doZVk0c2pSZHAvY0oxdzFHWE14N3RsZk5YOTZCaTVlWVR5?=
 =?utf-8?B?Sk5FWWdWaTA1MnhPZ3d1OWFaSnpESGZZdnBpbUxIVVl4M1RUMHNEZkxGWVk2?=
 =?utf-8?B?ZU9pVFJ6cDlZSlZJL0pXRi9yeTVJbzk3dG52N1YwNzNBTTU5RnN6V0JHSUwy?=
 =?utf-8?B?UktYRHlmeTY1bm1IMGhPN0d5ejdqOW5HcjdPYnU5VFJnZkIzMVM2REJrRm5N?=
 =?utf-8?B?ZkRQTTVaUW16dmlVS3RDSE83Vnh3SG50T0t4QnRIY3R6bEgyak9PQ29mZDdJ?=
 =?utf-8?B?UXpxMnY5aUFvcHlvL25lcXltaVFoR1laMDZjT2M3d2JZeVZHVWJzdmU2YUpm?=
 =?utf-8?B?UmwycTJYNks3a3pNSjNMQkxoSmc5cE5seG9kaVVIS2RGNHdLRmxmVzhvcW1B?=
 =?utf-8?B?a0FZc1hZQXE5Z1FRV0JVZHZTbFR4UTRJdERTRXp1eWpvVG9tMnNDeHg1SW90?=
 =?utf-8?B?R1hzMDFvaC9XTmcrM3NHQVBoZmdwb2hXaC9obUdIRHIxSjRSd0hDUDY2Qk5N?=
 =?utf-8?B?WEtUblp2NUdGZHM2T0QreG9DeGh5MFpxTmFTeWNEQU5lT1I3V0tIU3FDanBq?=
 =?utf-8?B?UDAvcEJ4c3ZqRSttWFhNNktWMU5pRDRZL3NYOXlQS2U0NUpyY2xGdUlucDFy?=
 =?utf-8?B?RG5aOGdaM3dQRlJ4aWx5ZlBnL3BKQXJyNXMrZXJjWnR1TjhNWWtxdE9WU1lB?=
 =?utf-8?B?TXBQd2lybkJrMHFHWTlSbEtEYkpGSURhUGREYVNXYm02dDlWdk93dGVZbFlx?=
 =?utf-8?B?ZFJBQU5Tc09kMDRZUEcwMmc4Z1VNVVNMb0YzdkhjUUtETEwvbXpMaVVKTS9W?=
 =?utf-8?B?U1d3Q21tbjFvdFQwQzlDeWdHRXdUU0dvT2F3cWtWTk5vY0FVSFdwQjhxd2JS?=
 =?utf-8?B?ZUhwMEJydDNHNTY1c283d09zRWorR0hlVUlkVEQ1VUNkS3diNS9ldGRDclY1?=
 =?utf-8?B?Y2wxdENVOUZ3bWJ0cGNwSXVORGE4U0twNmU5ZVZXQUNCNFBNOHRSRDFlcjJR?=
 =?utf-8?B?SkxqUllpeXg0WWQ1UCt5NndYRWVUYnAzSGk4aHBIclpFMXNvOFBiZVE4bVBv?=
 =?utf-8?B?Q2tSK0JCaSs2MEZIN3E5cENvYzFid1Fwa1NRLzE5enQweWF3bnFGWnV4QUZ5?=
 =?utf-8?B?TG1IUWNSY2xTOEtCRUdyTzlkejhCeUlTTkUraERjdHA3c0I1MHlmV2lPRjNM?=
 =?utf-8?B?cWFIUXRibk9uY3FLNWxkL09LdkhTNGRZajkrR3kzaDZiRWJ5LzRpNFRiQ2x6?=
 =?utf-8?B?cUVyRTk3UGVhL0pRZkFEbi90RWdIWW81TzZZbTk0dWFYa05IRkp4amdjYnZ4?=
 =?utf-8?B?eWNlQk5qSUlWMVF0STVROVlUa2xJanpsYVBFZjdsT2ZiZEI5eENreVVPVTZo?=
 =?utf-8?B?dFpzeWF0TnBZOXNoNUY0a2hSMTlDNHRqbERpaW1kSmZ3LzFjUlNqd2NnM0ho?=
 =?utf-8?B?TDNoSFJXaC93MXJDdHlrYTVtZ09iQmZ3V3B3em9SK1lNMXdxdXVIcnE4dTVK?=
 =?utf-8?B?blRPbmtpaXRMWVlXRGYvRjJ5QngvNFFSUEQ5WlM2TXNJUGIvWTcybEFDSWw5?=
 =?utf-8?B?M2I0YitOU0VDV0pVdVNMZ0xxYnM0SENjQ1RzcGJSWUZUR1pBSHNVa0hMNlZS?=
 =?utf-8?B?WjJLVG82ZnRuTHdoNGdraW1DOTh2bm9oM0xWLytLb2w2TzNoV3ZidHd2V0M0?=
 =?utf-8?B?cHRUaUR4bStCTnpwckZWVDRqVXcxOGVzWFlnNXVyc040a1ZKQ0pXa3VXRHRw?=
 =?utf-8?B?eG5iUThqdTQ4K0hVdS9NWVJDRDQ1TVNmdDJlb1FhY3p0UW80S0M1dEhRZXpB?=
 =?utf-8?B?dXIrQlIwVG84SDRKQjExWWlBaG5PUUNEUkRJTlJIVGs0UWtzaEZBeTdFWDN5?=
 =?utf-8?B?aFBLZDNleTZ4aUlONWF0QXBYN2hwM3RsMStBVzRnVkI2RVdJbDFPNkcrd3dH?=
 =?utf-8?B?RTlKMXF1MG5kQUl6WlNobEdwSmVTQU9VeStEMkV0MXBYZ0hiRXVQVjZKMTNP?=
 =?utf-8?B?U05QN0VsUlpDNFRRakJmYnIxaDFNK1FkTTMxT0xxZ1phclJ1YzlwbG5vUnlw?=
 =?utf-8?Q?yYyo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bGtrMUZtV29lTTdGWjBuelUrTVlxM2tUZW9iMzVhcnBYRmlHKy9rK3JJa29M?=
 =?utf-8?B?cUVsZmdwUFhXODUvQk5lb0MzcERKOWdtcEtVVTZQOHp3TTh2dWhGVldSQUVL?=
 =?utf-8?B?aHdqdEVwT1B1MndOV3QyMEYySm9YU2ZmL2tYS3pFaUt6RTFHUVpPTmlwV1JY?=
 =?utf-8?B?VHlXaWhSMVdRZjJlTnhqbUhOYWpaaVkzWW11VDVQUktmc2FBaXBMWUFncjFz?=
 =?utf-8?B?OFRuWVE5QmoxRDE5ZnpVcUFVakw4eitRbzFOckc3Y3EvMDVMbFpneTdKRFJ2?=
 =?utf-8?B?QktmYXppUjQ2Rkk0WUVtZ1dGYmV2ejkwelAza3NOOFNtUC9lbFYxVjZCZXJJ?=
 =?utf-8?B?L25UdC9FVGVFcXVYbWZzbjZGR3BIWXA1Yk4wS2czbVRCSW1nOFJZMWYvQWZJ?=
 =?utf-8?B?cFRVVTBrcnUvNFFQNUxnVjJBMEszaGhJTFpuL0gwcW12aUpKeVFsSDNXRW5j?=
 =?utf-8?B?Q3FVeGZQcTlOSlVCVjExeUIyWDJMK3lLNzdibFIyV0xjM2JqMy82b0pFQnJ1?=
 =?utf-8?B?YmtQcTJqU2xBbndYU1V4SXNNYnpUNWE5aU1sQjJhSis3bkRKemVSa1BYRHlN?=
 =?utf-8?B?WEg0YkFJcy94Njl0T2wxRnk5bndVZHMrcmNZSThTVVRLanlqQzR4MnkyeVl0?=
 =?utf-8?B?ZVYrZ3N1ejBzUTlJNVlZUDI5WWF4bTNITk9CZk5vblhqZUorZEpMQnIvUUxj?=
 =?utf-8?B?VGNHVktHZW1iTncyNG9CdDk1VmYvckNLazVrTFJQT29LZnVEcTBQdlpIdXRq?=
 =?utf-8?B?WWc4Qk56NmxTWFVwTlBWTVVtOVZ6NHZURlc0OTU3bXdxZnZzUWMyUEoxQkhW?=
 =?utf-8?B?QnJVQlVFL1VwVDF0SkNKdFI5bTNwWkxRWCtRbC8yNGQrZjlyaWVZLy8ydTVL?=
 =?utf-8?B?RE95TzNOaWJZaVV6VGVSNVF4eFdEcm9JK1ZDZTE5T3pKR0gxSTNlYndMVmNM?=
 =?utf-8?B?OXYrbVJmK2ZyeHhaeFAzV3VWMnJ6aDEzdzh1UXdQYUFEbDFhQjg0bkJpK2s2?=
 =?utf-8?B?YVgzNno1Smg0YTJLMk5tU0FsTGkzTkUzVllRUW5hTFhEUGsxNnF5SFJFcjlB?=
 =?utf-8?B?N0NDdjBHMmJORzE0VUQrSVNWeWVPRXVKejJPYWxZcWRFVlVEOFhlNGNydDdE?=
 =?utf-8?B?TkhQVFMyalVpYnZZNTVndzFOd0REOXJMeWtxWDVCOHVINGhRRjJBT1dVK1ZH?=
 =?utf-8?B?NGpIbUFSN2pCK3hvYng3N04zQm05Umt4cTRtS2tTaTg1dkJycy9zQW5qanAx?=
 =?utf-8?B?SWRKSlRrL3BJTWdCS2VwdytqNGhuQURVd2VIZWlNQlBBMlFzOVlKRnpCRUF6?=
 =?utf-8?B?MVhPME5XTlZYQnRzRXZPU1Jpb1ZIZVdyTFdybHlYYnRjWVN0U3ArVTBFc2sy?=
 =?utf-8?B?RUd1V2lhUnhDZUp2NFZiMjdWS0ZBaGN0MStud1MwcCtXVld6enQwcm9tTk1t?=
 =?utf-8?B?cWZkc3dNUGtTVlZVdy8wMXhnTE4xUS84WkxST1BRanByem9Bc0F0WU9zVWxE?=
 =?utf-8?B?NmJyVVZRbjB4dnBQVlhrTVA3UXovaHFPNnpzREJZSlNwcWQwRW1mUXJ4U0V1?=
 =?utf-8?B?S2J3aXdQUkt5RjV0ZjFSYmx1S3Nsbmk5WmIxQUEwTzFDcWdkaUxHV0FGSlYw?=
 =?utf-8?B?ZVM0c3dpTE1xTGhYQmdqallsamR3cWt2TmNhZ0lOWUFodWhncFBVNlNhb1cz?=
 =?utf-8?B?elFKTHNzVkxnQ081emdiQUxnS0pEenRreU9MbTVuQUhxdGtlVm5aeXhLL2lF?=
 =?utf-8?B?TCt6SmxuRy9mVlRGQXFIQzZ5ViszSzBqVUswRjBSTkpOeE9ONkxLdmdPaWph?=
 =?utf-8?B?RGZqQysvaGk0eFBRaW8zK3FqWW8zQ3BvOFU2cVQ0U2h2STZkeWx6Q0ZaZzlr?=
 =?utf-8?B?Nzl0TFltYzZIcEhub2JZZFd3TFlWRHd0WFA2SEFxcURCWEJmRkRlMDV3VkxF?=
 =?utf-8?B?NkdlSG1YZG9xNFN0TUxJWG40YnU4SSs3SEo1VTBrMFFGYXJQZFk4UFZBTTAy?=
 =?utf-8?B?SC9SVExsK1cwMGUxUWhvanl5alJUVW9RT0JxbkRRWlM1M0dTaWVxbFRrOFZM?=
 =?utf-8?B?MTNWaTZOdG1Ga2taTjVZM0p3REtvakR0TnVrWlhNNFl1YUtId09YYUFsR05H?=
 =?utf-8?B?ekZCTVJ1YXVFQ04yTEFFcWlHRFBOTGt6dTVyWjFyWURIOEZ5ejBXcm0zei9p?=
 =?utf-8?B?U1A5K3Y1aVR3VzZUbVJqZjhNTHBVRjdyRHZQcUM0Z2ZraHc1S3lYd3RQZ3Bv?=
 =?utf-8?B?QVFLOFNwODdITGRpTE5nNGpKY1ZRLzFVQklPWWN3T2ZyYm4wUjJyNm8zUkUz?=
 =?utf-8?B?UHQvVHZsYnJZWGJPd2k4a0x5dGN4YTQxa2NXV1NkT1VzWUlnR0pmczZ4ZEt1?=
 =?utf-8?Q?Gks/IQkKTjk7NSJg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b622e93-dc0e-4b17-25ab-08de58a14965
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 03:58:08.2861 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cWQ5K31dtBzPlsYmmtasGF27wQzUQywRZQl7pNXMpeCPHkty3pMNAzdB1JkGaI/gQP01JmtAlJOdxteA25WnVLv7LTW9jHSwt2r73BiNJTo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7131
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 01D7050B25
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 1/21/2026 8:32 AM, Suraj Kandpal wrote:
> Incorrect clock is connected to DMG registers.
> Disable DMG Clock gating during display initialization.
>
> WA: 22021451799
> Bspec: 69095
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>
> v1 -> v2:
> -Remove details from comment (Nemesa)
> -Add details in commit message (Ville)
>
>   drivers/gpu/drm/i915/display/intel_modeset_setup.c | 4 ++++
>   drivers/gpu/drm/i915/i915_reg.h                    | 1 +
>   drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c | 1 +
>   3 files changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index d10cbf69a5f8..7180e54af50b 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -910,6 +910,10 @@ get_encoder_power_domains(struct intel_display *display)
>   
>   static void intel_early_display_was(struct intel_display *display)
>   {
> +	/* Wa_22021451799 */
> +	if (DISPLAY_VER(display) == 35)

I think we are now moving all display WAs into intel_display_wa.c.

So instead of the open‑coded DISPLAY_VER(display) == 35 check here, this 
should use: intel_display_needs_wa_22021451799()

Regards,

Ankit


> +		intel_de_rmw(display, GEN9_CLKGATE_DIS_0, 0, DMG_GATING_DIS);
> +
>   	/*
>   	 * Display WA #1185 WaDisableDARBFClkGating:glk,icl,ehl,tgl
>   	 * Also known as Wa_14010480278.
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 5bf3b4ab2baa..f928db78a3fa 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -763,6 +763,7 @@
>    */
>   #define GEN9_CLKGATE_DIS_0		_MMIO(0x46530)
>   #define   DARBF_GATING_DIS		REG_BIT(27)
> +#define   DMG_GATING_DIS		REG_BIT(21)
>   #define   MTL_PIPEDMC_GATING_DIS(pipe)	REG_BIT(15 - (pipe))
>   #define   PWM2_GATING_DIS		REG_BIT(14)
>   #define   PWM1_GATING_DIS		REG_BIT(13)
> diff --git a/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c b/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
> index d95786faf181..c4c4058c8ac5 100644
> --- a/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
> +++ b/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
> @@ -2923,6 +2923,7 @@ static void drm_test_check_reject_hdr_infoframe_bpc_10(struct kunit *test)
>   						&new_conn_state->hdr_output_metadata,
>   						hdr_blob->base.id,
>   						sizeof(struct hdr_output_metadata), -1,
> +						sizeof(struct hdr_output_metadata),
>   						&replaced);
>   	KUNIT_ASSERT_EQ(test, ret, 0);
>   	KUNIT_ASSERT_EQ(test, replaced, true);
