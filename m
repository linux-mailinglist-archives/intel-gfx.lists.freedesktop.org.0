Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 438D1ABD2A5
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 11:02:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFE2810E48C;
	Tue, 20 May 2025 09:02:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Au9Fpuwg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F6FD10E43D;
 Tue, 20 May 2025 09:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747731726; x=1779267726;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=O4dL60y9DDQj0cqFomg0VCcUsf1CiPuCou49UeIIdGc=;
 b=Au9Fpuwg61aunrZnAgCgeFy3OmUlcBO75gsks39IQpnh8DUOnHwlohdH
 oDXGVlM+TU0hYLENQ7bYutPFpcVHeFrgoya8Tr0Q40txmTfL04pGrv/yE
 faQUKhQfXAwvHK/LZDAmQaqdBJ8dBTXeMBc2HSppYhQvAdGigQrilgIDP
 fRWoihYvWRJHSmoWUdTG2oI1h7187+qge13zgD01PadiYsNmiCqVEOK+v
 IP/IvKCibD5fU3R8rsQcOk+Y93sAAIwpI5ti3Pnaeyvd69nUuR66CrvmZ
 K9sog0MNW+5RmIcz34e6rBrrw+8KAOcfIdxRsn//JSmzOfwvATNoRUBab Q==;
X-CSE-ConnectionGUID: 0jRtbpRLQiiHkGKC3P07Eg==
X-CSE-MsgGUID: PErcplhlRbeiKp7C6/NVXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="49556921"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="49556921"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 02:02:06 -0700
X-CSE-ConnectionGUID: /26dWKNVRyGHfCt5U8NvzQ==
X-CSE-MsgGUID: pwmDOvh7RSiKWcK/am0C5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="144617532"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 02:02:06 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 02:02:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 02:02:05 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 02:02:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T61upQzEcOjM7/rDMtpZd04dJX31cPhRthUUoboE6sGkn5rqNMl0zuTs10I84jpSMfjuEMrWIA26TqsbaGKV75YRoML4N2/J7Scx4Tk9Hm9x0nzJGS1v4eDtJzBwK8YUnFhwACTj3kSgDU8gUNlD1hkAH9DS7yXD8wvGlI2vtZq0uyNLqAJUPpCowWNiAczivtb80vkWc2V5vRzW85Bc3XXtC0pANUfPk8j/jhDngQa/kfvUCyA/MIlmVASxSp3CbivtB83DOAkDYKQGzbWl9jCufDStDCn30XSa97imxgxWxiBRuBEMu5Lf0sfuahm0bSDghqaLIGG6tX4dN8voFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SZUC7+khwKXK9WbkmHEh5KnJutr80JrV8xLQTLkpB7I=;
 b=Tfa7eElGE8ufX4SwEC8iZPDOQaakS/N2a6Bw/C1SnQOi/rplPJ9KFfN6gyHATMYXX4rNJlNX7xlqA+dlUtdLgAXmN4eEcio3xsdi+VOHMzTRAI8kCExX3IBGgnjJCjyjrazoNm/NL32UgvGkWSppyfiBIecD4YR6iv3ag9G5cCCSBj+UJUBtEvNheSYfHo8JbBL0p5f/e7VnUmkREy+UaZ5emFEHplkREAuyWQEqtQC2kylfpkC398QoOeUi9XYMNW4RsfLZvLi1Dk6A/M176cg3nh7OjCJSvSl8o1b0826eBEy4iyCw2hpAJvF2VE5FVyaF64d8jLMTzpOaqhnAoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS4PPF6EA6DD735.namprd11.prod.outlook.com (2603:10b6:f:fc02::2d) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.32; Tue, 20 May
 2025 09:02:03 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8746.030; Tue, 20 May 2025
 09:02:03 +0000
Message-ID: <3b64095a-204b-4da4-a87e-3c6caf951cd8@intel.com>
Date: Tue, 20 May 2025 14:31:56 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/11] drm/i915/display: Add PHY_CMN1_CONTROL register
 definitions
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
 <20250502085902.154740-9-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250502085902.154740-9-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXP287CA0007.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS4PPF6EA6DD735:EE_
X-MS-Office365-Filtering-Correlation-Id: eaa4c0b8-4196-4db7-7f2d-08dd977cfcd3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TVJKQlZBdGRuNmZ0b1owYzNpb1hZQzdNZGFlKzZSWDlRamhpUUJ3VkxBMCta?=
 =?utf-8?B?b1BqTENOcUxIMEZGZFlONFEvOWswd3Y0Mm9KZ0x0QlF6alNTRWRaYXJqYUxM?=
 =?utf-8?B?Rzk2bVArcm1aSGNmRk9xamFXb3FBNytJQmpwSzQ5Snl3YzJDRDRuR016Z3hn?=
 =?utf-8?B?NmhQbC9Od3dkZW9rYjRMNG8zVGxNYTJLeG1tck9wRHVMOVpYWlhRS2Q1WkJt?=
 =?utf-8?B?Nk5EV2RJc2VBcXFXemRnMEhBMW1UWDZYenRkL2dnT0kxdUFkbi80R3crUzEw?=
 =?utf-8?B?LzYzU1Mwa2tGTmMrb1AwTGVFTkRuR1BZZG5EdEpuMmVZM1VHekNZZHJ5OFN3?=
 =?utf-8?B?dVlORTIzOUUyOEhLZXJXUGFzdVZMYTdaTlFnSGkycnlra21wbTIwNmkvRDJ2?=
 =?utf-8?B?WmpUQnpCV3lZSjJ5VXovK05aZ1FxTnBxV3BNck5JNzQ0dXoySmw5T2M1M3cz?=
 =?utf-8?B?cndmYWI2TkNPRWtsM3NWcnM0UndCQk1CUW9pNU1Qd1VDbGw5Q2ZwQ0hWcURs?=
 =?utf-8?B?MExPZzFtTkFma2FtelFaSGIrTlhlemFjVDk3SmJKanJuOHltSjRGYmJ0ZzRx?=
 =?utf-8?B?dmRtNGp4NGNmcGVkbWNqeTE3Mmd6V1NnN2RzOFhrZ0pFcTFHb1V1Mzd6enBl?=
 =?utf-8?B?c1kwNEN3MGdzNGJ1NG1CYW9DL045ZzQ4MUhsc05zNkZiNVdiUzJOU2ZJNmgv?=
 =?utf-8?B?VDV4L2dTY20wOE1LTWNoT1gvYXVRU255VzNTdXNJVU9VKzRYRDlIcWxkWnE5?=
 =?utf-8?B?WkUrNFNZUlljMUlVdjhKOW96NXF6ajVTR0pkMjVnaEhTTXBhcndFalFzYkV1?=
 =?utf-8?B?VUdGTjIrVUpsY1ZjNXRYTDQ5ZHZyOWNyR3pXeFZrVW9Gdy9vSTYvYlBmVDhY?=
 =?utf-8?B?TzFMUUlPeVlyYmhxZW9PTVl3Qy9wT2U1Z2RFQmYrb0RYVUY1M0l6YkMzdG5l?=
 =?utf-8?B?em43cFZyRDBpZlk3SUU2RGZDRmpuUHU4Z3NQWW9uNjhGaHU4ZnBEeUlQY3VL?=
 =?utf-8?B?N2pOREw1NVVXeU5PNCtLVW9RbVZyNGpBVGhpN0ZyWXgxdGVyQmFzNFp4RXBC?=
 =?utf-8?B?L1VCMDFmUUdUUzVKVTcwR1BPcGx4YWlBMzM5ZEMvZE8vb3ZlL3ZoMCt0UHds?=
 =?utf-8?B?NTVjYmVqT1RxaWlPMENQZ1lDOVRkWWFNaHlJbGdRNlUwY2lWSTV3TmY5T1k0?=
 =?utf-8?B?WC9MeGkvWGdSZGwyejR1SkxmQnkxU0VmZXJjUXJTczVQTU91L2UwYllQMElZ?=
 =?utf-8?B?OXRYL0hIUkZpSjBFYTJaZUlpVmFRblJIZHFkT3AzNk82RWJMbmNUdzJidU9m?=
 =?utf-8?B?bDcwK0ViYm02ZTNBVlpxZysxcXUzWDV4Rk1oNjU5dktWb1djZGlrUDhtbG9h?=
 =?utf-8?B?ZGk0YXkycUs4enFmUGo2K2c1N2JvRWFNN2xIaHJYNFVrempkbWFDcy9RM0RC?=
 =?utf-8?B?WVQxMjYybXJCVDFVRCtqeTFVU0JheFppZ3RRSlRNS0M0cWlIRVNYKzRONVZ5?=
 =?utf-8?B?Z0xVbEU3bm9lYTZMOGRVTWhaWDVZS0RuMW4vVVBCdUxNWERoNFZ5M1QzZ0hU?=
 =?utf-8?B?alVTa0ZEUGoxUUw0TU5OaGJjQm1KN25VcnNCWUxhNFZIYWozOFdFZGE0VjNN?=
 =?utf-8?B?Y1RBNlE1b2M5dVRFWW1CNXhxdkgyV3RaU1FMQ3lvVy82UGRxcjhJb1dWSlc3?=
 =?utf-8?B?MXJtQURJK0Z5MHVsMjFzZW5lS2dnVXl6WGo0ODIyYW1USE5TQm1ybDBHV1Nj?=
 =?utf-8?B?VG1VKzVieWl2RUJGU2UxUWtMd2tuWWV3eHhDazA2eS9scWJEdEF3TDh2bEVt?=
 =?utf-8?B?SUFWUWlxZ0l6YjlhZW93T1VsOTlIeDhGazFsVnJ6WFNhaWJXQ29ZSnBOU0pa?=
 =?utf-8?B?YmtUSHZtV2twMkJPcmJ1TjNCSDgxWVhjNDJ3ZS9zcXNBUnJlaGtrdG1ScEsx?=
 =?utf-8?Q?J0Ff3BZgfks=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bW1PMjRtdFdUOVBoSGFGYkw0cWcrMkZBSlE3cDVuN3FGbkY0VGZtSktiTlQ3?=
 =?utf-8?B?dDc0ZVlEVFExSDNSU0xkbFJDQkErQVRBTkZMVGZqMlZZbTdib2dZOThSZkpT?=
 =?utf-8?B?TDRRNXBBSXFkL0FrWGxMTlRFZ1lWZmUxK05hQSs3cFprWXZ5Vi9QZngxblFG?=
 =?utf-8?B?QVIyZHNMRmZuUkpmbHBLWWFlT2c2bHgvTnpxa2FaNWJ2YnZ1M1ROb2xSR09k?=
 =?utf-8?B?UTk2REt3R2hqR1RXS3AydEJMUG8wWUZyTml4eHZadDkyZ1BJYVNoaVg5SHZq?=
 =?utf-8?B?c1MvbEp5VXlveUlTR3dIejM0a1RXTC8yZVJ5ZDZFRXdJbkR0NTM1anp2YzVD?=
 =?utf-8?B?MFB2ejd0cHZVbjQvaGpmMDJPWHVpbWtTREpyTTc4amtwajF1UGxmbG9IYWZ5?=
 =?utf-8?B?ZkhwVzQ1YytCeUFpUzRySm1vcU4yWG9LWm84bXd3MFRtMDNxdmhkdWxpY3JO?=
 =?utf-8?B?L3hCaFdHek1kR1c3aldPdE9MOFFuOVQ3MmxReXBrMU9rcm9KenI2aW5TeDlm?=
 =?utf-8?B?STFxYWZ0UmsxVkhtMDVzNHd5cVFwMkpWaWt1dXVLeTdtalk3YUlJdHFteTNS?=
 =?utf-8?B?ZUg5MFEwZEVFUXBFSW1weHh1TWFrdTlCY1J0Uis2dVB6OUFFMlp6TnNqc3hF?=
 =?utf-8?B?Nm1qTDFyYWJWOHdCNXRtcWZmR2dXb2xNYzI1SElJQXFTdlE5cTNjMkd5NTlQ?=
 =?utf-8?B?ZFlxb042MUcwdnIxMGpjOStFS1ZidVU5THQ3UTFuRm5jbGVHOEpkWGJkRi8y?=
 =?utf-8?B?a3NQR2s1VXVaaTZHMy9HTEYzc1BLemw2Vm5PM1d4aVF6VUJSZWFmZGd1S0ts?=
 =?utf-8?B?VFRQU09qRlIxNXFxMHQrYmUyMlRtcDZvZ0tvL1R0aGhIaC9qWWR4WnMyVXND?=
 =?utf-8?B?RGFUMG5uUXMxTVZoQVZtTG1GU1VoUXV2NEdadWZDK3llS1pYSGR6U29Yak5J?=
 =?utf-8?B?WjRJcTduVkFxV0RXKzJYSU1pWlZDemVjaVF6Z2JTa3lWWTBvWVRSeFd2TC9G?=
 =?utf-8?B?ZVhPYzZXR292WlFOdkZJU0pRMHF3NjE5b0hobk1hbmlid3VIaHI1ajJMNGMv?=
 =?utf-8?B?MkdsWVkya2dhaGM0MG9GOGVKdFVReVBTNGp0dUZQR3Y5Y0JMQTJUUGwzSVVq?=
 =?utf-8?B?THA1UXE1N24vQWltWGpiaEZjQlBVTjFaTmkrQ2xhdGhZTk1HSDFsdCt4MnVZ?=
 =?utf-8?B?MTVkNTJ2bThOeTVPSjNBNlNNcE9UbXBoRVJ4QmVWcmJJTDNCMW93c2JrL1li?=
 =?utf-8?B?SUxENW91Sld2cmpMYWE3WG83emt3VU9KZ1FOUklsNkI3cUd3TlFHS0lkeXpn?=
 =?utf-8?B?QkFIR1J3emtVdTd6S0xRVy9JaExrdUZYR3ozV3dES3R4U1JGbGhUOXcvTG84?=
 =?utf-8?B?VXZQM25RNVc3WHpJTmJ5clNueHhXWk5mQnRJY1JpY1lPSk9LbzVjN1VUQUNt?=
 =?utf-8?B?WVY3alBCeDFyOXZrU0w1cEhWR2FRYnFCRWNMbDd6NjFLZklzSk91K1U3QjYx?=
 =?utf-8?B?NGVVa3haaFJVb3VmaEdNdVE2VWhxUGJBMjE4WUZobWZlR1Z1c0taMU96ZzFQ?=
 =?utf-8?B?WVdUbjJyTVViZ3BSTTk2Z0xDVHgxMG9IckZ1Y21lNGZmb2ZKdTFaZ1pwN1o0?=
 =?utf-8?B?WGYrSDl6VGNOTkJEMHJZK20vUmpxZFpHTjdqSFJsQ2tkQ0NvTlB2K2Y0NndJ?=
 =?utf-8?B?WXdVZXVQZzdFN09ITjArdjBmclpwSjAzYW80SkJ3Q0g3WUJVZ0xFZDlQY1dx?=
 =?utf-8?B?eUs1WllCMW41VjA4TnRIbzVxSmlDalNTQVgwajdoaFYyam5LejJVSjVaamdv?=
 =?utf-8?B?VDZoZ2RES1NGam13eFZYak1zTmRKb0c2Wms4bkY2SlJmMzJzTUprYTkzMlRr?=
 =?utf-8?B?MXI5c0tTQ0t0bEY3YnVhSlRnNHltc25Qdjl1TU1HWkZ4VnNFMHNDVGlteFhW?=
 =?utf-8?B?d2tsaHRLSEN1L0M0L1RCNjVEWlRDMFJod1l1ZlhKQ2FlSmxaMTNkQnhiMmRR?=
 =?utf-8?B?WjJCUXdBcEJRK2UwZ3IrUm8wTUlrMHMyLy9Na2UreHBNME1kRlRobUkvZ1VE?=
 =?utf-8?B?K3Vod0hRZEs3KzRReGdEaThBVW5xSzEveFI2bmF2S0lqU28zNkF1b0xvL1FJ?=
 =?utf-8?B?V3F2WFVTZjJNbktNRkc5L0JwSnVzeHcvYlNEZ3FDenZuUnRNU2JNUEhHVFNV?=
 =?utf-8?B?SVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eaa4c0b8-4196-4db7-7f2d-08dd977cfcd3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2025 09:02:03.3362 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5hh275QGJBV8KpvZ8ZcgIL/KyAY9bUsd75JawzOlMHbO19QEog2pN1JoHQRlrFHFFRRQObIpR2ELiKa2UwTfk4PoD1FiH4qYxpSgMkhmTWQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF6EA6DD735
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


On 5/2/2025 2:28 PM, Jouni Högander wrote:
> Add PHY_CMN1_CONTROL register and its definitions to configure port LFPS
> sending.
>
> Bspec: 68962
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index 960f7f778fb81..94b6384cdf019 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -278,6 +278,9 @@
>   #define PHY_CX0_TX_CONTROL(tx, control)	(0x400 + ((tx) - 1) * 0x200 + (control))
>   #define   CONTROL2_DISABLE_SINGLE_TX	REG_BIT(6)
>   
> +#define PHY_CMN1_CONTROL(tx, control)	(0x800 + ((tx) - 1) * 0x200 + (control))
> +#define   CONTROL0_MAC_TRANSMIT_LFPS	REG_BIT(1)
> +
>   /* C20 Registers */
>   #define PHY_C20_WR_ADDRESS_L		0xC02
>   #define PHY_C20_WR_ADDRESS_H		0xC03
