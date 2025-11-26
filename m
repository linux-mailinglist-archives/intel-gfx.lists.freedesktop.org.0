Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3CCC87EA2
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 04:16:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B0EE10E0E8;
	Wed, 26 Nov 2025 03:16:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UemF3g6c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40F8C10E0E8;
 Wed, 26 Nov 2025 03:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764126981; x=1795662981;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZFn0ML0U8+eWutG+E6zmbQmBscWL127vXMNyAb7ZWDc=;
 b=UemF3g6cWuXER4CYN607cM4A0dKUVXElFcAHkolJvs3LuUL2PWDngQAe
 XtY38YvhJWUCo43668/cdR/sTUNt3j6+g0Vyj/PAWMFpzE4y5nCkC7fgI
 aWG8SRu6eGu5q4/2XZCDPgaXWJf/mg9x6MIigbQEdLBByjU3b3zhJ7W3t
 VPxM9vUIy0LS1q1jYKrFU1LUqDjaiqGig6y0Sko3apZNu7kFyRP8lVX3W
 7T4o/9KiPz00qIIMRzvHhzfJReGz0leTkgQ3r4WXYBkpAeYDurmmrxAME
 01i8OS5GhaEe1eeuTQiHwHp5bvuVHBYYZe8a0BGKwBCb1pgqRCc0swjTF Q==;
X-CSE-ConnectionGUID: pKw53IzVROGqWpfnteSy2Q==
X-CSE-MsgGUID: wc/u8up9QGG6mQ+r66Yfgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="66102771"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="66102771"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 19:16:21 -0800
X-CSE-ConnectionGUID: 0cofjV8sTJ+VdgXgd5XI7A==
X-CSE-MsgGUID: 5Lt7YhGWTYiQpCZMDmgUOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="192608756"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 19:16:21 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 19:16:19 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 19:16:19 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.49) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 19:16:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LYmWro/57qEkN0KCT+mXgh/0LQbrKfLy2DGif72rWOqIfPe63JZ1sTIq186yEEpb/OLla7ILm2ocC3g5B9Ln39Fw7XWkxU3ir0jCYOeMfSmSgn79H3GYdij8xdMv0rmASt8wluTywt32RBnE+SDgUHtDcjNhRgEWWoZUcXamO6pZgtXv0gjfgeH7uD6DbSnuDUrJQ6W4K3y1SgldCiBjk9k2TTl9i4GUlIibljPA7LqLSk1iqY4ZY7oKCp51iOOE8dkOh4h3v2BsSsglP2doXjgiLsU8fmi9IUPkiNsURH3Wd2EJBsYlfu+UWVe72RsxZeP9pZ1ov9rp5PpV9EIo1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O5MI/Nb+mOimVbqZ5a+JfR1TzFozBK+gkJqsQXxtSog=;
 b=b+1wz7kmOcVIQa7m0ykgpSvt7Vb7G+z16vpqZ7wQRSp1vUoOr2pXlWdz4ffYij3TgvB/8G7+G6X4F1H4rt+5viSOf+spaZ5RoDW8gkDhs9VUcbZPvtI/OKAOkSZ1g91tleClF1y+IaxjrCemjKb3JRJndzGUdpkWD6AFjWYR1gAIuACDxElQOn3HbXZbBsdnbKuHmBZBv6oM9uc7LD/idfJhBrEI3S5tjDJs/7M3AtS8SApiPO4+82lkybo6vvSmFZ3qjhH+H+tltUCj5GN9U6g1bPqDT23HDRFXVmGzCTNP+tC2I2X6+QyLDUs2tywmWoXY4kO+rMkuWOL7H2IRqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BN9PR11MB5258.namprd11.prod.outlook.com (2603:10b6:408:133::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Wed, 26 Nov
 2025 03:16:18 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 03:16:17 +0000
Message-ID: <ca3f171c-6609-4d8c-b488-924b50587f90@intel.com>
Date: Wed, 26 Nov 2025 08:46:09 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 01/18] drm/i915/display: Add source param for dc balance
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251117054442.4047665-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251117054442.4047665-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXP287CA0008.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BN9PR11MB5258:EE_
X-MS-Office365-Filtering-Correlation-Id: de10011b-d2ba-44bc-622e-08de2c9a2959
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QUVRYUpWV051Z24vMmxsemlZSkJ6M1pIdE9xV2NoeUtiQXQ2RlZFdEszbE9s?=
 =?utf-8?B?K2RiL004M1B5M1pIUFUrMHBuRmZTL2dTc1RMVzhPZGJwWU41UmEzZ0dCZjQw?=
 =?utf-8?B?RmMyR1hwRFFPUnl4eEdCaktqbTZxK3ZDdXcxZUFZRXFPRldXTmNka294T1pt?=
 =?utf-8?B?ZmxwTWd3ZlcxN1piTzVINklNMCszOFZueENxRHZnZDdXMWZ2NzN5YVB3STZp?=
 =?utf-8?B?REVndlVBZFdyVlA5VGk1bi9zWlFpbi9OZ1hoNmFYMnMrbWtvOGFXMkFnay84?=
 =?utf-8?B?aE5GZ09LemQzSGZmQ2tyTVBnZVRrdU9mblo3QWdld2lqQ0toV0REdEk3UVJ6?=
 =?utf-8?B?NTNzRUdlTUlaa0tFSmcvd1NwRHJJLzZmVTJhWlY0Zm9VakhaaC95M2tsZGlk?=
 =?utf-8?B?V0JEMVJnck1IcjdtQTNTZ2swN3BDbkFCMEk4aWhnTTR1YTlUdnQ0eWhXVG94?=
 =?utf-8?B?ZHg4MklmSEdqQmVuS0V5TTVWNWVDb25VQWthUldNTzF5eFNFWkpGU0NxVXB6?=
 =?utf-8?B?NnoxMVhFQ25NZ3RCRmI2dW5seENkWkpNYTBWYktQYWY4NDFXTG1yWnl4RTYv?=
 =?utf-8?B?MUFTejhpSGh3OUFPS2hBZDlSMFcreW5ZdzBmR2R4SGs4c2ozcWY1S3RZR1h0?=
 =?utf-8?B?Z3JXVk5rYldKMkRZRUdYbllPMDFuaGFFMHFQUTlaQXdKS1dEZDVRQ2xYUkxs?=
 =?utf-8?B?ampSZjZVUlF1TytpOGZFV3l1aWp3UVE2VGRrWkdjVFJ4a2ZtdmFoQnhaKzg2?=
 =?utf-8?B?STJta1Z3MHc0SWl6ajdKQTJrK3A1VnZ0UE1PajlsejhQUjVsWXh4K1RHMzVE?=
 =?utf-8?B?RjgyZlVxZmIxaTk0Sm1QV0JoU1lmNE01NnUxanZJZ01RTFR1Q1VYKzVKbE9Q?=
 =?utf-8?B?TkdveUtzNXdWVURRc3laUUVMWENwMVVhSENPckdxSzJiL2xYK2FTcGhOUEFW?=
 =?utf-8?B?d3JWcFJxeWM2RjNwdzEvZnRDUGx1Z1VIc2s0MDN3YzNzSjFuYzg3RFY0T3Zw?=
 =?utf-8?B?Sk5CZldjQjVJbDRjdnBDbUF5TU5lb0JjUU9udW9tWDA3T1JySTJQNThCMytB?=
 =?utf-8?B?cWxFdVZDYUh1ai9xSVNqM2poM1NSTG02dHBScTRNUE4wSkxWZzBHSS9vQitr?=
 =?utf-8?B?dFFWaWtYZ2IzRitLOUdLWU1TUkF4Z2pHZGgyNGZPWHlhVGFiZ2VwNlZuaVJP?=
 =?utf-8?B?dEdvQ1d1aFN2cmo2Rld6QjErVnRKK1FZL1EyeXYxcDNIUE5jOVpKTXJnUGIz?=
 =?utf-8?B?ZStsWWFEVTU3OU02dTFuRGpuK2Iva08rU09FWnVQbnUwSmhaTGl4Zk12ay9v?=
 =?utf-8?B?NVhIOXpxVzNsVVZxOCs3Vmh0U0Fsd2l5OE5JT1V0enJOLzU5VkFWMGc1UUp5?=
 =?utf-8?B?WlVVQ3FVM0VDK29ZQkxyVFI1cXNEU2RXUVlQVW9CUVJkUUorMS83ZVU5aG5r?=
 =?utf-8?B?dnZoNkJSdk51aVpLMEdVdHlBL2xuem5YVy9GUWNVQ1hRMVcvdzM1dE95Tmhy?=
 =?utf-8?B?WlRkaERqVEV3S29FckZPbGNLMXFGZGZpd2MzcWZYVmE2R3Buc1doby9yTkhR?=
 =?utf-8?B?RTdVc3BYQWpVc01EZjYyMXFzSUFHVVRjc1plRDdTREpXOFA4YzM5Z0hhdndn?=
 =?utf-8?B?ckVDZVVyVXp3VytLZE1PRUFBbStwSXFiamo0cGNSYnFEaXlaaEltSXBqNjFR?=
 =?utf-8?B?bWVNc3o2RncyREZFeGRCb21WcGtDbHIwcnorMVpRV1F2TXl4MGU0YlpVNTRF?=
 =?utf-8?B?a2dublR5bUY3MzhXcGk1RGhhcCtzcGU3YTgwRmRzZCtIRHplR3l1a1FtaDk1?=
 =?utf-8?B?Q25VcW5rbG5Wdjd5U2d2VWoxL3lvdXZPa294Y09Sa1RjSnNYRFprVlFBK0NL?=
 =?utf-8?B?Uk5yOVdmTlRKVGcvaityWDBqTEdtdmtISnpIb1QxbkNhczRia1piWGgrU1kv?=
 =?utf-8?Q?79cLsrKkltQ6v8DeGS0zu/7+LjZ1FRfo?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cUdySVAxNUlBZlE3YUZWLzFoeTlsU3AyaUE1N1BSY3dqbjhBeDlvQ3lZU3J6?=
 =?utf-8?B?cWdVZWhGVTQ1WUJ5cGFaYTErWWlxbExzRllJNElEa2V5NUE1eWZmVUY3eVo2?=
 =?utf-8?B?Vlc3VEFPbjF0VTRrQmQ0Zjk1RkIvNFRxTW1hMEt1MG52NEJhMTNwTUUxaWs1?=
 =?utf-8?B?a3F2bWc1bUxSdFlyMEdWRFVnNVVQOHF1c2FyY2grdGJFNVNpOE5DUERPSUNu?=
 =?utf-8?B?Mm1jeHZZNndDbFlXajF3bkxxNFZ3TXl6YUppNU5JYUZhSkVtTjdVbVBNc01j?=
 =?utf-8?B?VVk4TXdEUlZYYmMxb2xhUGhUbmZiaGozcnFZaXBHVUhpdkZJRHUrMm1OZERI?=
 =?utf-8?B?TFNUYnY3a0wrcXpFSFp4d1BMMnRlb2t1VVF3UjlPSk5JcU94Y0VJaThKLzY3?=
 =?utf-8?B?MU04SVpGUUpnM3cyaTN5ZE1FdmFNNlkwSmhIVFV1bVM1L2FMNE1HdVJkRnV1?=
 =?utf-8?B?WnY0SFZxUWV0OWtxZ0E1YnZoazJxK0pDR2lDRFV0bTJyZHhGbkhDU2w0VURZ?=
 =?utf-8?B?dXJzc0o5QnlmM2M5K2tYb1Q3YmVHcTBBWTJ0am0wTTJ5ODBibGxXdjVSZ3ls?=
 =?utf-8?B?M3MxeDFkN25pZnozNm05UDdpTVZ2ZXU1Ny9SVnVrUG52Z2RnMy9HRjZVUUJ0?=
 =?utf-8?B?SWFscTBGVHM1Ny92S1piTERmMnRBbHFtV1ZPb1lFMWZRVGNFSENZaG43Z05N?=
 =?utf-8?B?V0szb01GVlgzVjI0ZVcwZU9WcmNuLzM3MjRscWJyeTVHWnozZ1RuWkFqVEpR?=
 =?utf-8?B?WER6a2cwNnVPOEg3aEJFS2Y1SGtiTUFURkRXbkdwckhwa2d3RGZvSFJ0bHpv?=
 =?utf-8?B?elNncUs4WEFoNFhtbFNuSDBSVVY0RHYyb0Vpc3hiWkNHOXYyLzFOU1lHeWY0?=
 =?utf-8?B?M3N1VkNHSWY0UytkUTdwMzBtcVFRUDBkNEQ0RzdhSE93bVVzV3dsem9tMis2?=
 =?utf-8?B?bkRjK0VqUDJVdENNZHhadlZFYjg0d1h3UllwbkNUbURhMVRwZ2VlUzU4elV2?=
 =?utf-8?B?eCt5ZXpBekQ5YTYrR1lRcnhWVEk1dVIwWUxJSHpZQUh3R3J5OFg5RldvRnRm?=
 =?utf-8?B?UTE2N2lHbldDa1JGcE1hbU5qOTcrVGZ3b0VQNVNUSEZhOU55YUU3b0lvM3ZU?=
 =?utf-8?B?VlpJWUxuc29xOGRCeHZSNENoemszUlgraDcwWHJ3RGlMREV6OGUyd25PckFL?=
 =?utf-8?B?ZzJlNW5rMElBcXBMaEY5aDBxd2FjWkpGVzN6RmtSZC9KbzJBWXJFRDZsem5w?=
 =?utf-8?B?M2t3Sjl0VzF1ZUlYUkt1RS9uSEFzVldpbGxTeUhyYmZMYTRHSXVjdlhSdEJY?=
 =?utf-8?B?dG9lRTlkRWNKYXNacm0ydWhENFNxYnlXdklRazEyWG1rNXE1bHA4bW1wNS9E?=
 =?utf-8?B?RzQvSDZWNGxXWUJVR1RDNjl2eFlJeVlqbXcxWDFuM3FoMGhIY2JwZ2pwNmpO?=
 =?utf-8?B?dUpTM3hVeFF2MmZ0eFR4S3BzakNuc0gxVnF6R0MrTFVTdnlheFdkRGRjWkRL?=
 =?utf-8?B?QjZFaUdIcTVzeUZDZEptL2VoU1FVTnRLd2t3ZTVKaFdzQTE2Q1kxQkw0TTlu?=
 =?utf-8?B?M0Rtd3lwOHo4UVVnK1lMSjduSVFqV3U1bWd2V0lRS0IvUENJRjg3b3poVzZM?=
 =?utf-8?B?emRIVnRBeC9FMVV5TUZNZnlISmFjanFEdm9pYWlKRDU4ZE5qbHhSN2JyN0hG?=
 =?utf-8?B?VWt1UUg1czNDZHVMckdyaFpzMnZZMnU1L2lLMWlkUjhoZW9YNnFTTzBvOENh?=
 =?utf-8?B?N1NhSHd6T3R6Mmh4UUVzclNwQllFbDBHTXR5ZWwwc0Q3bFdLWTJRZFduRWpN?=
 =?utf-8?B?RTltaGNvenhEVWNhcklOdlRhWE9BWEh1b2xSQys3VWVHQ3BuSTdYcWRXcFd0?=
 =?utf-8?B?a1EvR2phK1V2Wi9LSjFhR05uRDlVYjhVU0ljbTNNVndibU44WGRYMktmZWx4?=
 =?utf-8?B?VkdLandObXFEcUZPU2VEVlVMU3RmYllVL3ZHZE0rbFhEQ0V5ZHBBNjUralhh?=
 =?utf-8?B?emx4ZHNVSldmKzhiNy9VZXN0anUxNmhocFNSRjNpNG9EOVBzY1lENG5ublZj?=
 =?utf-8?B?c0g1czhaOHpNdExZZEh2Z2J3M3lLdGk1RlIvb1ZjLzFDdCtrWmVlcFRLaVI1?=
 =?utf-8?B?QWJuR28xcGFSQ1dINVdMU0wzejF1ZGo2K0RCaUNkamRpTTBZVjFPYjRaUzVE?=
 =?utf-8?B?NWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: de10011b-d2ba-44bc-622e-08de2c9a2959
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 03:16:17.6308 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XL6mJNp7/Odzgq6pkdp5UAD6un4k1mIrsknhJd7pOf4KpxGxNOLo0iDWvJRBqPn3I8VJWMukloUSEM0Kaj4ZsvGy90tljPMuAOhoc+xvvNc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5258
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


On 11/17/2025 11:14 AM, Mitul Golani wrote:
> Add source param for dc balance enablement further, also
> add enabling restriction.

This is a bit unclear.

Regards,

Ankit


>
> --v2:
> - Arrange in alphabetic order. (Ankit)
> - Update name. (Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index b559ef43d547..7ad49e9529f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -200,6 +200,7 @@ struct intel_display_platforms {
>   #define HAS_ULTRAJOINER(__display)	(((__display)->platform.dgfx && \
>   					  DISPLAY_VER(__display) == 14) && HAS_DSC(__display))
>   #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
> +#define HAS_VRR_DC_BALANCE(__display)	(DISPLAY_VER(__display) >= 30)
>   #define INTEL_NUM_PIPES(__display)	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
>   #define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)->overlay_needs_physical)
>   #define SUPPORTS_TV(__display)		(DISPLAY_INFO(__display)->supports_tv)
