Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5B4A876A3
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 06:13:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76FFA10E46C;
	Mon, 14 Apr 2025 04:05:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AurjAZVn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D40BA10E46B;
 Mon, 14 Apr 2025 04:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744603543; x=1776139543;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=krHlZPVe2llWsIisElTePFTEGWdzIsVER2oo4koTyOc=;
 b=AurjAZVneU1CQWnW6eofL/DJrDtp8zDakwjgtO0NwXbjashp0uiBYwPN
 va9KvIh4baIjTxiL66i/peib0WHNW2E2Gx4jgQ9qlrIcwu9DapkwEMHx1
 HmKsDpSAt8FW1qiaMJKmEK6L/z4WMMhMdl8vQJTaY+yKLWAMLnXCu2UBM
 aVcuwRpHR1yqP7unEtAGtDaN5GBBKm+jfSwU44fTlZ1akaDlkvIjQCk0G
 JbQEmUKpnpvg8XoLmQSQgtgVHHSH2aBYvYu5LJZ5rc3NJ3SxO9guIsuFM
 hmxHu1NJBOCbN/alkQw/zaNuZOXGHslG33LY+V7z6QneURhA1LEOu1/V6 g==;
X-CSE-ConnectionGUID: EBYB6uWpRISqXohElErqmg==
X-CSE-MsgGUID: X9uy+wxaQcicwAy4svmJNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="45944782"
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="45944782"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2025 21:05:42 -0700
X-CSE-ConnectionGUID: yv3kyrLaRw2ojGrLt+5DSA==
X-CSE-MsgGUID: PNezj6sVR0qe+FJw+QZZRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="160684550"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2025 21:05:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 13 Apr 2025 21:05:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 13 Apr 2025 21:05:41 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 13 Apr 2025 21:05:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kSVVRds51/wZqhsQUta4AsVuuqSqIOvbjO8zZhrs2nMyRM1eIl9BEgpHj5XXIReC4WntxTByWmNcoQJFYBnKE0Qn5SU6xX04KS6QZOpKu/sOO6OKi7ffAfGwifPuRQh9rfqMg1WJaAHcn4H9q0K8Ap/f4qnozfjKCD4mPsMdIlTB9vuuXudLMtNAskeGTdCgOY89Fbl+t5OBZNjPfOu5M1NrD3nLlI2GDEc1xnOkw3K758R9xwYg3SRH0SHhcp0I06ofiS4s6k6tVmv3X+WCOIo5DAwJzjRdOssddSp4MnklyAabihD4VIMYkqRmDkYcK2Ki5rYCCmAsUpsxUYpM5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5nH5za1kAQ7jJizv4yOLVOiDuuZpjRm35epud1GoXf0=;
 b=sA2rlY1Lc/i3xGkX2eekWBii0IWYcHWVgegMxV3ETNlFsc37b4f29dFR9UwUKg92FGRwb3FGuXVq8QRRKn46R+XHurw0uVqGF9BYcx8TB3O1Uz4FJQt8NxTVCgOcYZdsg+By/qAK4U6s+r2uB0+IwyrB6t+z81uLtJr2USb3rGJKsyO2NEbO5Tpj4h46DN5OHdVGG3tf1w21ZGZhleGdzj2g1WRlxMjaNp7QsmYZ7yEedXZD7GTxNk46tP04RfehbRC50RURS/MfPiqEqdHT50Ya/09rzAL9rI7lIX9oX6h6j4uV+IQFVeEEkGT2kTSMmeOw1YD32X5STzpr9jlDzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA3PR11MB9112.namprd11.prod.outlook.com (2603:10b6:208:575::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.34; Mon, 14 Apr
 2025 04:05:39 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8632.030; Mon, 14 Apr 2025
 04:05:38 +0000
Message-ID: <64f447b4-99bf-4095-88c6-707629107772@intel.com>
Date: Mon, 14 Apr 2025 09:35:31 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/display: Add macro for checking 3 DSC engines
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>
References: <20250414024256.2782702-1-ankit.k.nautiyal@intel.com>
 <20250414024256.2782702-2-ankit.k.nautiyal@intel.com>
 <SN7PR11MB675077FC1AD909171A753B24E3B32@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <SN7PR11MB675077FC1AD909171A753B24E3B32@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0040.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA3PR11MB9112:EE_
X-MS-Office365-Filtering-Correlation-Id: 77d8aab4-b366-4fb3-0c35-08dd7b099da8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dHVjeTkxc1V3SFdSZVNSZGFvdzJpQTF4cHNTMmFWK1BPbTNyd2NlWENOM29B?=
 =?utf-8?B?emV6TlR4akQwUS9tUzBuUkI5akdMdXBUU25iWG1NZWVxd09LSE9HSGo0QUF5?=
 =?utf-8?B?cUYwTm9tMmVFTGR5M21oSjY5RE0vVnRPNWtueTFPK0NVSmNTUS9PMTVNRjZk?=
 =?utf-8?B?bS8rdERYS2l0blJMb0RiR2JjZlZ6N1lHQXNmVUFtZ1dpdk1QeGZJZmdxRFRR?=
 =?utf-8?B?N0IvdHhtTFRyRVNBdlpRTVFOT04yd3RBaXJ4dUVwL1FpQllpNVhaRUtobDAv?=
 =?utf-8?B?U0g4VWFNVzlzN1R5UjdocEdEc1dIWXF3SnY2ak1XaDZzSW1mTXhHZmppYXZI?=
 =?utf-8?B?RWNEZ21USmtSZC9ZT2VRdmtyajNscFJ1ZTlTUW5vYUFGT25xVExyWjE5c3hZ?=
 =?utf-8?B?QmRsaUdXUzRwd2hyRjNjekc4bXZQejZyUngreHQ3WjRLUWJqTll5UnJaUzdK?=
 =?utf-8?B?YnlUZG1qQUYvdnVVU1Awd3YwZzZOMXlGdk9RVU1KbVF2MW8wRi9RaVAxMlBz?=
 =?utf-8?B?MzRqODdRdERNQjU3bGdVQkt1Q2MvUElRbmNmcWZmdTRXWWNrdDMweEFLZU9I?=
 =?utf-8?B?Qm5zUHUrZlMwZkFqdVZkajcvRm5QN0N1dVpJT0dLbW1SVjVMSzk1K1h4aTI2?=
 =?utf-8?B?bTI4eUFDZGNMQnFpQlRySUZWeXMrWDlSQlliNDV2d3UvdFRRVDFSSmZJdzFF?=
 =?utf-8?B?c3hzSUNvV256T3l2YTRLT24yQVhnTXExcXJMdjBIODlYOFc0ZjRaTnF3ZjRO?=
 =?utf-8?B?YTBYRUUrUEJMR3FINXd6R2Y2aWduRDd0MjFVM1pGNllMU3VZTFVUTzBJWURJ?=
 =?utf-8?B?RDRKVFhCNDB6MG4wZ3ZhcE40WVFJV3ovZWpHWXhsbFptR01WUFNzekZKZytI?=
 =?utf-8?B?eWNOYk1RRjF0eElvdWlSSDRUcTBId3JOSDNsZEsveVNtK3hEZm1ZR016OXdl?=
 =?utf-8?B?NHRCUDhBUTV1cDdnZlF3QVhicjN2TUNVbTFrdzIxbE5WS2ltS3NIUFBzZDBK?=
 =?utf-8?B?Y01hL1A1UFU3eDcvV0xHVzQxbEdmdWI1ZFpmY3p2dlpKRGxiRlEvVk1JcFdN?=
 =?utf-8?B?OC9ZdFpFTGNIRHJJa3U2ZDRxWThSLzkyN3FjQkRPSXJjUlpMT3EvWkdDMGJx?=
 =?utf-8?B?MHAwTHBkRDFIcU5oYmNCaEVUOU9SQWwvY25XU3RTL1Ixa3VIS2VzTms2REJY?=
 =?utf-8?B?dWJjNXRPa2lFNFE3Zk1USmlEVjNINkZWbEpJei9PZ09wbUl0UUl6Rjk0b1Er?=
 =?utf-8?B?K0Z6OVk0anZhZXM3MDRFQnU1ZHFLVFVJSXowQUZjbE1HYUxNeGRjRHVnZmQ0?=
 =?utf-8?B?Q3RCUzJ6ZXZnd1VzeXhVUE4wa1pzclBOSnRQYWoyVUF4RU9kcUNZb0FVVVdk?=
 =?utf-8?B?aGJIM1VjQ0hDa0U2c2JVeVk0YVM3SmZIUVArcHQwMlJWQnJNVDdjUndCTmNQ?=
 =?utf-8?B?RWR4ZWcyZHFHTk85ampvWm4zRXNyazlwL3ZOQXJURloxeno2WUtrYjJQZEVV?=
 =?utf-8?B?dXFqbFlkd1ZaNjlLZ0llVFdFNVhTLzgrL2dnUHlVR1A4Y3RGVHQ4Tk9XN1JZ?=
 =?utf-8?B?Mng3TmtTdzFIUlEvWUdveVc3UjdtaHhaK1BkcytyUklYQ1Q3Snl0TlhWMy9V?=
 =?utf-8?B?ZU50TEdaMGVMTlJqcjl2U3hQb2ZPVDFVOTRtTmlPVmdZbVVkaWpvNU5FSnI5?=
 =?utf-8?B?bytxdXI4eHNRZ1JMU0F4UFY0TmhqaWd3SnJJa0xCMXBNMHdNTVhOSzFaTmlS?=
 =?utf-8?B?VEZsMkovNTczc3hmT1BzQjdpVlpaUVNuZHBSQ3JsOStQZnppaWdLMUVrdncx?=
 =?utf-8?B?V254cy9pdHRVOVZWZllzdWY3WmRNeVRTQ2VuK0V1ZEx5WHNmNnFBdDVXdkJv?=
 =?utf-8?B?a3hjYXVyUlQzQld0ZGdKSm5YOHUvWUdsTTFYRjFtcEd3UEE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aTVLZzNjTW0yOWh2WkMyS214SFNsUk02bkpEU1craWhWbzJLSnA4YWpNZ2hF?=
 =?utf-8?B?NDdWOUVoNFhmaHh6T0pTZGtSelB4SFd1a2NucjNBZDVsWnVpZFdWR2lmNHZM?=
 =?utf-8?B?K0huQzJmQW9VTHFMRVZyTmRMWHdMTVBrT2htd1ZobXF3SGlFVkNtcTkrS3g4?=
 =?utf-8?B?NGpVbkE3TzByY1JkOUZPYysraEpZYjZBaWxLZTVXSVpwWGU2U0x3aWZ3Q0hJ?=
 =?utf-8?B?Qmc4UUxXT2FhTXBob0dPVzkwWEJkTXZHWXJlb3BydXdwVXBQWFhIaDQ5dWJu?=
 =?utf-8?B?anBrZmZud0J3VzhNWXliWnp2QTUxM3JpRGIzQ2pXSDlHckw3ZXRZRFEwTTJS?=
 =?utf-8?B?bUhtWHYvS3YrSHhCeElGb2w5bS9OeTNCbk8zbFZFK0lEQzlseTMwbzloK0VR?=
 =?utf-8?B?blVjM29VMjhHelhvQU9UYUlVSTFERWpQWDNjNC9aTG50QkFETHlKYVluMC9m?=
 =?utf-8?B?VXJXME80TkhRblZEUGIwWVNNYTlEWlRqeDM2RDFRV2tLb1ozOG9BdlFobUFI?=
 =?utf-8?B?TG9ha3QrNjg0clphYmdDalVQUWVwS1Nuend0MzZMNE90cTVRTGVXdUw4NG91?=
 =?utf-8?B?aHVFTGpUSUlnSnJWdmVuT0pNT0EwcS8rVnhIbHZueGlzNVVzZFhEY2FFQ0xI?=
 =?utf-8?B?aE9YNWpPa1pxZWdPOWVwYzloUExxYjFLTWFnK3ZDSzFMc3JpVXNFemtqOFZF?=
 =?utf-8?B?WnhxMk5URnptYXJHU21mcHk1MWw4NWxXQ3k1bSsyRFNaVU94Mi9OZmVSSDRz?=
 =?utf-8?B?ZmVMeHVQYXI1blRKTmpTeW1FcU9OL1RwcXk4bko2RHdua0hGZ3JkalhUMEdu?=
 =?utf-8?B?KzlpV3lNQk5SZ1VSaHBmUDh1eldBVXY5M0RUYUhib2g2bkplT0RQbDgyQjRm?=
 =?utf-8?B?SkVTQURkT25URSt2ZkNuTW1yckpsRVNNd3ExaS9lRFRkOUE0MDkwcHdGaFMx?=
 =?utf-8?B?R0dVaTJiWmo0dTdPUFhUOUwrd2JQUzZETjZuTmRiOWJ6NmJpMDY0bTEzT2Vn?=
 =?utf-8?B?VitYWkhpblMwblhYNEltWENPd1lrU243a3VaSVhYUlpoU3RoaGRwM1NsL2xP?=
 =?utf-8?B?Z0l6RERqWXYwc21Bd0VpcFF6N2ZmQXVmNGUxazBidXZCb25DRG5BNlZTWTFn?=
 =?utf-8?B?eVVXQXQyNjF5TE8rMlE4N1E5bGMzTVpNY05hT2xTSHFaVXk4QzQ1b0FpNXU5?=
 =?utf-8?B?dXRDMVZKSy9oWkxmUkRkOThUVU5QaXpZcnkzZXlMMGJjV2JNWVdQSllleXh6?=
 =?utf-8?B?YkthYlduZG1BQ2poWWxvTUZHbHByRmsrbmI4b1RqTjZDS2RSbFQvUVlBb3pD?=
 =?utf-8?B?RkNiUWtXK2tUdkZqdkhxZ1l6RnY3WWVZNXcrQTdYd1o5cXUxT2FjdUxhZ01u?=
 =?utf-8?B?TWFXZEt1d09FS0htMWpMZGhta2Q5N1REZndNdEZQdDNsOURuNVUvQTkyYzBT?=
 =?utf-8?B?Yit2bHZ0VFowWmczKzZkVmhpOUplR294L2x6ZzY0aXJqTmhDNjU4dTNYTUVv?=
 =?utf-8?B?YXZZbzB4aGhmcHF5R0I5ODFSZUNSeWw1cEY2RG1uWEMyd0RkTG9TVHphbFNj?=
 =?utf-8?B?ZnlWRG5tSmJ2VFhwWmVicXhZdWhWNXBSZGdYMzRTbitYNUYrU2hMYkFVVXF1?=
 =?utf-8?B?Wis3cEswREFKbG5jZCtXcTVJbVlFRnZEN2kva05ibVlJQVpFdTFTa2diS1o5?=
 =?utf-8?B?Y2xRUWRnSUZWT2p5dXdLZGNlWG5SczhkTTRkSHRUSThPS0pnc3IvcEUrVXJw?=
 =?utf-8?B?L1E5a1JxK2dUdXo2Z2FTODE3NlZiUWdDbWxhMUd2YUVCRUFlaXJoeTBobXQ3?=
 =?utf-8?B?QXlBaHB3aDVWNGVCTVhIVVlIZzJxRWR3dzJhTTNTWFg3YTB2dGd3TGFEVWxT?=
 =?utf-8?B?VlBZZC94TUFoN1d6OFh3SDR4OTBsV00wS29FWVl3YmRXa05EdnA2ait5a0Q3?=
 =?utf-8?B?aEo2dElvSkZxdXpVSzV3bnhjdVNyUUtpb1lFaXJLM0dLY3dwaE0za2FwWjl3?=
 =?utf-8?B?eUp3d1BkcGFVT1J0RktiOUtkQzg5d1BTaFNlZ1FVL0JwNitOMlREcDN4OS8r?=
 =?utf-8?B?UHdJeUhCMDVnRXFWcTVQS3UyZG9BRVdKMUUzTkc5MW5hUXVUbnI2MHZxMEds?=
 =?utf-8?B?TWRjVDVUL0pJaGpqTWFSaHFvR0ZGVGo2U0RWbjhsNURQeUluYTNLc3dVRThm?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 77d8aab4-b366-4fb3-0c35-08dd7b099da8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2025 04:05:38.7885 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Op3/Yu1g9NtnzxwVazqm8byu7qJqFK0mG+gtkDo5JsOnLitg5eP0Lk8H4VwoU6dlwD+m7zNizco3l5ghZZw+8HFWV7KYJbJOjdQ0sRwYBoU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9112
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


On 4/14/2025 9:18 AM, Kandpal, Suraj wrote:
>
>> -----Original Message-----
>> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
>> Sent: Monday, April 14, 2025 8:13 AM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; stable@vger.kernel.org;
>> Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
>> Subject: [PATCH 1/2] drm/i915/display: Add macro for checking 3 DSC engines
>>
>> 3 DSC engines per pipe is currently supported only for BMG.
> Would it be better to have a function here which can be modified later to add more
> platforms in future if they decide to add 3 DSC engine elsewhere too?

I was thinking about it too but it seems this is not going to be 
commonly used and perhaps we can add specific platforms in the macro as 
well.


>
>> Add a macro to check whether a platform supports 3 DSC engines per pipe.
>>
>> Bspec: 50175
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
>> b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index 368b0d3417c2..1a215791d0ba 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -163,6 +163,7 @@ struct intel_display_platforms {
>>   #define HAS_DP_MST(__display)		(DISPLAY_INFO(__display)-
>>> has_dp_mst)
>>   #define HAS_DSB(__display)		(DISPLAY_INFO(__display)->has_dsb)
>>   #define HAS_DSC(__display)		(DISPLAY_RUNTIME_INFO(__display)-
>>> has_dsc)
>> +#define HAS_DSC_3ENGINES(__display)	(DISPLAY_VERx100(display) == 1401
> Shouldn't this be __display instead of just display

You are right, this should have been __display.


Regards,

Ankit

>
> Regards,
> Suraj Kandpal
>
>> && HAS_DSC(__display))
>>   #define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >= 12
>> && HAS_DSC(__display))
>>   #define HAS_FBC(__display)		(DISPLAY_RUNTIME_INFO(__display)-
>>> fbc_mask != 0)
>>   #define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >=
>> 30)
>> --
>> 2.34.1
