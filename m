Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DO/Ii1Hi2kpTwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 15:56:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BA711C29C
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 15:56:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FA7210E5A8;
	Tue, 10 Feb 2026 14:56:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gh5IzQQo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B1B310E5A8
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Feb 2026 14:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770735401; x=1802271401;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=nAufR1WuMqn4Nx9KE/D9lzYDaU6E4WpRjeSg/i5G6jo=;
 b=Gh5IzQQoP5jL482gr/5oF8JgCntSojF5s2LMLicQ1babfMkxhGmvTJul
 Fz9xB0x+2Pa5C5PxVo7C10EvkAYkSARL99uy6W7MQp+DIdZUGxOdqmTgn
 8quiWxiVGJswc8CcVMyZ3kiwRDljk+Rtc6iXzPZ5Fu65KYRdfjzvlVal1
 P2+5ewGexve6mP0dnC/9ytUZEjnT0dNo2no6Zx6NA756RNVdS8MDHHKZ/
 B845L4ihVRomNVyeFE5lkiA4E7cgiFpkWuP6aO1wmBxz+7BebkBDpNAFc
 D8voepPN3V252JN6gxkZiMcgMkhl0CLV/yywRmWyJvC2O2UcUSnddCxYs w==;
X-CSE-ConnectionGUID: QHJk/FTbSh+3ptPMHdgJ8A==
X-CSE-MsgGUID: uMViPLQ2SLGnCDYl4dfCAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="97323514"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="97323514"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2026 06:56:41 -0800
X-CSE-ConnectionGUID: ijOfdqh/TY2zOv5lGBQgow==
X-CSE-MsgGUID: UxQZZvhGTAiZxar2VLijrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="216895406"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2026 06:56:41 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 10 Feb 2026 06:56:40 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 10 Feb 2026 06:56:40 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.15) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 10 Feb 2026 06:56:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A8J2Knh0GmxFvaIg1zcqz4nLHFtJcZIuuS9YgXPha+y+188j13joZd3uMmsw1U0Kr/kqaFHPVv3GxqSixWzR5JRM40hXOCMr2gCwCAwW0EzG+/NeyuEcK3SanIdTahdT5URaZl7YDY7YuLUyyBo03KdgD2Wd8xd4CHqNsPnA2gHXbS+EOJ+5VX8zxx/1lFU7/caR2CXbNReaqZ1eCZLA+dtunAi+v85qPcANsnGXOQeCtiI+2C5zGvfDASwzfXoCCLHxAcghMr5ha+eVPW3eWLacP8zYR66TjJvRS3Nl0zx4iT+q82NSX7jQuP7SrBKzdrfNXlArCejb22/F4iQ1Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YTm5XwRAAVpf0AvtngiiAZRr6ZFbuPglF87NWr+AlXo=;
 b=K0B4bDAamS30tHuv1mxFxKQF0IPBn+PTvZnHPEPxONZbexRsQAr09EpxhLx6q54J9Ld3sXxURWMeOTpHEm0qpkGUS62TPHpoRWZGZXCspRxL+BQUUfs6ehwrUZQ5yFlhg9RAiOzO7v9n91NvHMvDv2Jsb2H+eDCi+DiyD3W9LHSnGVLbGhr116VUHeTmQ8PUXz9w74iFKizunyFsUtSFSR4tXlSZeTBmKAqr7cPfwqlGz5u6iyNo7U35V9zc7wZzd8pcC2s81dsWj1CWF/8dzNAw93kgqcDaTyXMg0NBiLIgf12G7fUljHKY4X74VF2UGComSvXOVAfhmjuDXQ5Vxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA0PR11MB8397.namprd11.prod.outlook.com (2603:10b6:208:48b::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.8; Tue, 10 Feb
 2026 14:56:38 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9587.017; Tue, 10 Feb 2026
 14:56:38 +0000
Message-ID: <4893f2bc-ab25-4fd7-a064-a6af4b97b5d3@intel.com>
Date: Tue, 10 Feb 2026 20:26:31 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] drm/i915/color: Add 3D LUT to color pipeline since
 Lunar Lake.
Content-Language: en-GB
To: Austin Hu <austin.hu@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20260209213422.2640277-1-austin.hu@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260209213422.2640277-1-austin.hu@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0092.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::16) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|IA0PR11MB8397:EE_
X-MS-Office365-Filtering-Correlation-Id: 1044eb94-c0b8-4dac-f312-08de68b49759
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c0w5MC8zMU9odm51a1NHV1ZFUm85NXpWVklyWlUvS0tpRXE0TXQ2eWJpTXBD?=
 =?utf-8?B?cmxDUmpMM1cyUVFuamhZZnhMbDJVWVVqSHFrVERIVm0zbzVnV3ZaY3dYQW50?=
 =?utf-8?B?NkdlWGxMRzNOVjgrbW5SLzBDdUZlNndrK1p3M2c4V1ZzUENJS0JCM05xVlVy?=
 =?utf-8?B?VXN1UXBTRW9WNjNOYjVBMXZCY09hbVZvelVwd25meHRmSW9GTkxRWlFqS1hz?=
 =?utf-8?B?dGxtR21IVEsvVXczNEZGZTFhYmQvOTArek1BbGxUaUtvZ3FsQ0YzQWZiNk1z?=
 =?utf-8?B?VnE2Q1JzSzBYSk5zRnJaak9FaHZHVGd3YzJWWnJZbEtBQnN0SEp5V2c5RDhl?=
 =?utf-8?B?V0FQTVMwSkFjQkFnUG11NGNIVjJlRldnMWNjSzBxaEdzYzF5WUJVUHVLVENH?=
 =?utf-8?B?cFIyVncrTGlUQ0Z1WmR3MDNxa1VEREgycDljMllocW40MHhoZ0lUanJUV09h?=
 =?utf-8?B?R1Q5RXdEWWxLRExDQkgwRGs1ZHlMNjRnL1p5YTh0emFqanROUGVnckF3TUNp?=
 =?utf-8?B?Y3p2d1FpVlN1bTNXeGZPVUQwUjI3MXNIbEJjZnRoVWozSkhRWWNHVDFuZms1?=
 =?utf-8?B?Y25DVjhOOFhMM240YWR3b0tKTXVGSFRsQy9uYktmMS9lcUZaOVpRU2ZaMkJW?=
 =?utf-8?B?WDBLcDhjTkxVOFlWQ1FhWnVGNkJPSHF5THhsTHREYVJhV3Axd0R6MzJXRjNI?=
 =?utf-8?B?SkFWejhoN0lKOUpyeDBnRGZ4K0F0VkpJdmhpc0RrVGtEcHNkQ3RybHdFbFdj?=
 =?utf-8?B?clovVUZHRE9QQ0tyN2RLb3d1RzV5aWM4NnhROWxvWk1HTktWTDhmNVhCN1BT?=
 =?utf-8?B?cVkxRXJBTy9LYVhRb0ljYmovYW5MS1JrWDVVYVUyTVRKLytXS1puVW1wb0Q3?=
 =?utf-8?B?eVltSmt1bGNYekoxT1cyelF5aDNSRSt3M0hPTjJJSmkyejBuV3l5K2Rjeklz?=
 =?utf-8?B?MGdRaEZHRnZDbjh5OUVYOFN5QVBiUkVsUE1DM0NEZmUrZ3duK2VFUHAvNnlh?=
 =?utf-8?B?U0Jvd2xMczhUK3pzNUk4Y2kyK3dOS0VING5DRG9sZTYzclBZN0p5a0psdFNY?=
 =?utf-8?B?aS9mZyt2MXM4S21DU0cydXVFTWtTalVyZHJWVHFRVmtBVkUzRkxlUGR6YXZJ?=
 =?utf-8?B?d1pBNW1pOERnNm85TkZYUElhb2VnSDhOcHhKNGxjeUpVRnNMRnZGZFE3d2lP?=
 =?utf-8?B?UmQxMHdLRDRBUytEUTM5RHFSOWFEV2RBaUk4OVRaMEowMkQ0TXlsTVR3NmRJ?=
 =?utf-8?B?QkhzeENDeWpGZG5MU3crZ3hEbUZEZDJEdVRzNXJwRmtzQjVhWGZnMWhsWHl1?=
 =?utf-8?B?UXVnMmZjSXAwSm9rRzRoS3NtTXBBNU9YdGEwMmo1WW1kbm1HUzNLV1Uvc3Fo?=
 =?utf-8?B?WEc0MWxwZ3NuTU9jcUlSOHFaOTBQdm1SVVp4UUdXeHBTaFdhQ25xYjR5WUlS?=
 =?utf-8?B?dVpJcSs2YTFjeWV2eVBNNlEvTDNwWDVUcWxybDdETitRZW15TWcwT0xTLzdH?=
 =?utf-8?B?OER4VlR2Mzh1M2c4OHNydkNqelFlaWtiK3liUHlLWXBqNDFQRHhBaGpyOVBE?=
 =?utf-8?B?WDB4YU9ZU3d4MkVyRHBLOW4xVjkvSEFmU0h4ODdRdVk2eW9UcFpiZTZHMUNw?=
 =?utf-8?B?R0J0Y3YvUStNR0Vpd3grN3pXVDZTcXBjSExpSnhrZnFsVkNVR3FySDU5Qmtn?=
 =?utf-8?B?Y0l0Wkg3MklrVkhjdE9lck41REc5QVQyVFBPNFc3VDVsKzY4RzNYRGpYWHpF?=
 =?utf-8?B?WXNJc3NUTjFZZXlSalNkdEJtcjNZM2lwU1NXYWhFRlBGOEpGekdWMlcvbkth?=
 =?utf-8?B?Z0tZQklLQlI0VVI1bDdRdkttby9BaGI2V2R0a3FlUFZHb3dnSGFsSmZTUGpP?=
 =?utf-8?B?NW41aHcxYkhhZGhoQlNON25ZK3M2ZGhZY2ZpZXhFUkVoT2tHQ0dEMi8xOWcw?=
 =?utf-8?B?SDFCLzJmaGJ2QURVa3VDcCsyNjZrVDhiZ0ZXbzNqTXlSRVlqQXppM3FialpZ?=
 =?utf-8?B?d0lWdWl1c0Z6dXRhdDNXR1FBTU50UThBSlQ3YlR6VktZS1dmaXNvWm9kVFh2?=
 =?utf-8?B?Yi9FSEg3REVNdytHcWV3NEhXWFYzdXZ6Y2k5Ym83SzFVT1d5TER0M05NUVJE?=
 =?utf-8?Q?jndwga5tiDHwex7rqz6zJBW3m?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S1BoWEp1eUpsc2ptTkwwMm1jc1RXVmpIaU1Ec2IyMHcvejBsL29ZZnB3V0Q4?=
 =?utf-8?B?b2tYRm5lR0tWaGdGVUtFTmQ1bDN3bnRLd0tLRVltRDhSNVRaa2JkbFY3L25t?=
 =?utf-8?B?QVJhNjNiQjB4dVFUNkJ2UUYxS05tSkdyT3ZCM1ZXRzBUVjBteGIrUER4TjNk?=
 =?utf-8?B?bFFRMnh6RjdLQ2xhVndrNVJQeW91V2FzTGJTaEpNNDkvSlp5VUFnT3V5M3Ez?=
 =?utf-8?B?QXd6MUUrTFBmY0ptNTZBQXBSNTFOYjc0eGN2U1dYeEZCZ2g5TUNhV0JrVWJx?=
 =?utf-8?B?ek1Jdkh1S3Z6bktWWHl6YnpzVzJjZWVXeEJCK2cwUGVUdmI4QkVLNm1VUWZC?=
 =?utf-8?B?MWlvZm5UM3poaTcyM05LdEtiRUpHS2JhbWFkeUVtcnh4aWM0dUJaR09iYXlt?=
 =?utf-8?B?OWxKK2RxRFU2ZGdocFdWTTZJbjEyWTdsR3pRUXR5WVJjQTBza2hHNFV4dWpn?=
 =?utf-8?B?ZTU0OTMrT0NNR1hLZGxhd01aZ3d1Rko0T0I1RnFBL3k5TjV3RDhYQUM2ZlJM?=
 =?utf-8?B?Mjl3eDA5MzJOV3dRNGNwVy9nRm9lTTJjaFc2RG4vTXlhbGJhbGhMQ3hpVC9j?=
 =?utf-8?B?YlpmbDRTcGRGaHRtMXhnaVRjL0MzRFM2VGJPSzFQZkYvSDZlZHdDNElTVmVz?=
 =?utf-8?B?amFZTWlzU1BERG1NQnRyT3VtZzRTZ2t1ZlZacjJ4MktCQXFFVFJONlY2TXNJ?=
 =?utf-8?B?NTI0Q1JSdG5VVURmOTlsbElkQzB0RmNyNmphdGZVT3R5Y2Y0RE9HMSt3S09C?=
 =?utf-8?B?akQrMG90M2wyWUxSL2xDSDVmcUtNbHVvc2ZJbWNSSE5wYXc3aEFuenNQd3Uy?=
 =?utf-8?B?NE9TSUY1VkVlSGc4K1h0bEFETTFqU0c4NncxcG9vMHJHMUxGOEp1S0U0SFM5?=
 =?utf-8?B?TEFhWDdWMm5sQitkR1F3bnVTNlhoRnMrQ2k2MHVCNzlHT0lYNDdxZmd3b0t5?=
 =?utf-8?B?WnpKblJLL0x1R3gzOVJnZE0rTjJhaWJwUTJrWmtWNUxHNEtVeGpkS3dPaDFC?=
 =?utf-8?B?d3pUYXJUUWNaZDlQU3drTy9Ed2VMNWdkYUE0RVdnQW1Db296K0NEWU8zcVZp?=
 =?utf-8?B?MlpqeVUwYnJkK0RWaGpWelk4QUx1c3dycjBQZHhXYU1aMnBnRE1XSjBCdFVx?=
 =?utf-8?B?aGhQNndKeDU0ZzhlWXRYSHdpN1FVWTlROTNTQ0l4YlRSemFzbXREamN1OHVL?=
 =?utf-8?B?NjdhWXAwNllJWk8yblpEclVtU3dJWVpXL3pQMnZ4c2lBZnVhUWkrWHBYS1Ir?=
 =?utf-8?B?S25OVURNMk9WdnBwVjIzSjltMTFPOVJJZWNtVHdMd2djMUh2RnFOMmE4VkFW?=
 =?utf-8?B?WFFHNS93clF1NTMrejBsQnJnRGtKdzdFcHFxUzdOUWs1cVFwbUc0R0lGblMz?=
 =?utf-8?B?ZnFoMC9icmF5cW52aysyU1lSMGNLc0puTmhyTlROQTVuU3pxaTFWWUdRblBF?=
 =?utf-8?B?ZmxqcFRGQmJTQW9Bbk1JN2JPaStJOVdqSWdranoyR3hPT2hnYjV0TTlaME9h?=
 =?utf-8?B?QzBkU2Z1Tk1vREJZQmZUcjRnQUNKSUFaTlhHVk9xSEhPTnhXbzcyVG0xZHpl?=
 =?utf-8?B?elkrdWhMcHhLU2VyTkQzcEtIMXNKSGZqMy9qaXRXQnJwREhDZkRYTzBneTNU?=
 =?utf-8?B?cCtRYjdocExJbk9KUlk2b25vem1HZE8rcjhEVW1aTzNqUk5YQzNnZUQ4YzNu?=
 =?utf-8?B?Vy9DUUZhbDRVV1RKMlVicnJrb0NzNXlaWm90TXlQSFdGTkg5YkJ3WjA2d3Z0?=
 =?utf-8?B?SGx1dmNoWmtEYldTaWh6U0pod0F0KytPcXN0QkNMZG1QZjFrQ3hibktaY1lW?=
 =?utf-8?B?Zno0OExZSnRMVjZTcVh4YXI2QmhVcEh5aC92YjgrRUoySEtuRXUzRnBaanZq?=
 =?utf-8?B?NWNrdzJOSGQ2dlY5b0dJU0dPRG1ZMEFEYk9xNkx0c1hrY1p5NGUybUtBMUh6?=
 =?utf-8?B?MStIWllpRDhpU3dyMkgxb0FQb2pqWURsS3g0WkxjS0Z1K0drOThwM0FCTm1Q?=
 =?utf-8?B?V2d4RXBTbHM2L0o5NWFKY0FjOURVVzREd3ExVCsvOUdzN2JsaDl2NGNqaWE5?=
 =?utf-8?B?bzdWUGFPYVBXaExxNkIvbkNiM0d0YUZRdXNwOUdSVUZsRk0yY2s4RlJUT09F?=
 =?utf-8?B?UDdoM000RmY2V1BDYXg3NEsvTWI3L3FON2lJZGdEcXIzOXV0RjFnL1BYRVRF?=
 =?utf-8?B?Vi93M3hibm9YM0ptazJUOFQybzZ0a3VMNU02dUJSaTluazNGZWMvc0FWamh1?=
 =?utf-8?B?L2ZVc3UzbFB3NDdUK1AxQ3QrZEhkSWNtTlM0cUZPd3JZYTlwVVlSMDhvMjdo?=
 =?utf-8?B?czIyZkx4eWJ0b1pOUGxaWDJWc3VJYitaSDB3YXVpRnVKVEN3TTlObjg0YVBw?=
 =?utf-8?Q?pPuMvB4Kd5ir9c3M=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1044eb94-c0b8-4dac-f312-08de68b49759
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2026 14:56:37.9356 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Si9RfpxU/JXgoWB3nul4se9tzAbuP0f5Uk/mie2G/AXRPziPYrLMc2zKFf83GkLrKIga/2jXb2gj1n2aKmnCUeTI80lCQhXEmC/FQdW6gpU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8397
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:austin.hu@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D1BA711C29C
X-Rspamd-Action: no action

Hello Austin,

On 2/10/2026 3:04 AM, Austin Hu wrote:
> Verified on PTL, where IGT case kms_color_pipeline passes for PipeA
> and PipeB.

Though I am replying to this patch. My thoughts are for the overall series.

3DLUT cannot be added to *PLANE* color pipeline for platforms before 
NVL. This gives the user-space false information that 3D LUT operates in 
the pre-blend pipeline while it actually lies in the post-blend pipeline.

It will be eventually added to *PIPE* color pipeline in works here[1].

Regarding exposing the 3DLUT on multiple planes (and on the CRTC), since 
there is only one 3DLUT per pipe, we need to reject userspace requests 
that attempt to enable the 3DLUT simultaneously at different stages of 
the pipeline. To keep things simple, we exposed the 3DLUT only on the 
primary plane. More details can be found in [2]. This will change once 
the 3DLUT is also exposed through the *PIPE* color pipeline.

[1] 
https://lore.kernel.org/dri-devel/20251223-mtk-post-blend-color-pipeline-v3-0-7d969f9a37a0@collabora.com/
[2] 
https://lore.kernel.org/dri-devel/31921238-6621-40d5-94b5-8ba3e5f9d40c@intel.com/

==
Chaitanya

> 
> Signed-off-by: Austin Hu <austin.hu@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color_pipeline.c | 5 ++---
>   drivers/gpu/drm/i915/display/intel_display_device.c | 6 ++++++
>   drivers/gpu/drm/i915/display/intel_display_device.h | 2 ++
>   drivers/gpu/drm/i915/display/intel_display_regs.h   | 1 +
>   4 files changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color_pipeline.c b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> index 04af552b3..d26b0f134 100644
> --- a/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> +++ b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> @@ -47,9 +47,8 @@ int _intel_color_pipeline_plane_init(struct drm_plane *plane, struct drm_prop_en
>   	drm_colorop_set_next_property(prev_op, &colorop->base);
>   	prev_op = &colorop->base;
>   
> -	if (DISPLAY_VER(display) >= 35 &&
> -	    intel_color_crtc_has_3dlut(display, pipe) &&
> -	    plane->type == DRM_PLANE_TYPE_PRIMARY) {
> +	if ((DISPLAY_VER(display) >= 15) && HAS_3D_LUT(display) &&
> +			intel_color_crtc_has_3dlut(display, pipe)) {
>   		colorop = intel_colorop_create(INTEL_PLANE_CB_3DLUT);
>   
>   		ret = drm_plane_colorop_3dlut_init(dev, &colorop->base, plane, 17,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 471f236c9..423f99a75 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1908,6 +1908,12 @@ static void __intel_display_device_info_runtime_init(struct intel_display *displ
>   				if (display_runtime->num_scalers[pipe])
>   					display_runtime->num_scalers[pipe] = 1;
>   		}
> +
> +		if (REG_FIELD_GET(XE2LPD_DE_CAP_3DLUT_MASK, cap) ==
> +		    XE2LPD_DE_CAP_3DLUT_REMOVED)
> +			display_runtime->has_3d_lut = false;
> +		else
> +			display_runtime->has_3d_lut = true;
>   	}
>   
>   	if (DISPLAY_VER(display) >= 30)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index e84c190dc..f91ccca6b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -173,6 +173,7 @@ struct intel_display_platforms {
>   #define HAS_DSC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dsc)
>   #define HAS_DSC_3ENGINES(__display)	(DISPLAY_VERx100(__display) == 1401 && HAS_DSC(__display))
>   #define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >= 12 && HAS_DSC(__display))
> +#define HAS_3D_LUT(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_3d_lut)
>   #define HAS_FBC(__display)		(DISPLAY_RUNTIME_INFO(__display)->fbc_mask != 0)
>   #define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >= 30)
>   #define HAS_FBC_SYS_CACHE(__display)	(DISPLAY_VER(__display) >= 35 && !(__display)->platform.dgfx)
> @@ -302,6 +303,7 @@ struct intel_display_runtime_info {
>   	bool has_hdcp;
>   	bool has_dmc;
>   	bool has_dsc;
> +	bool has_3d_lut;
>   	bool edp_typec_support;
>   	bool has_dbuf_overlap_detection;
>   };
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 9740f32ce..75fc7748a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -1554,6 +1554,7 @@
>   
>   #define XE2LPD_DE_CAP			_MMIO(0x41100)
>   #define   XE2LPD_DE_CAP_3DLUT_MASK	REG_GENMASK(31, 30)
> +#define   XE2LPD_DE_CAP_3DLUT_REMOVED	1
>   #define   XE2LPD_DE_CAP_DSC_MASK	REG_GENMASK(29, 28)
>   #define   XE2LPD_DE_CAP_DSC_REMOVED	1
>   #define   XE2LPD_DE_CAP_SCALER_MASK	REG_GENMASK(27, 26)

