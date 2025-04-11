Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50484A868E6
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Apr 2025 00:36:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E12710E13F;
	Fri, 11 Apr 2025 22:36:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DBCKSEwO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9629A10E138;
 Fri, 11 Apr 2025 22:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744411005; x=1775947005;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cfx8ivf4l4gYx1S+9mIdbeq+kBj7aFho9lhbMxCOuoE=;
 b=DBCKSEwOTdVv++Hpl4j5hdrlYtv4Pr5/thOsZrZHdi7oWLfDrpcBOf6q
 TEwHXwV3X9VAjuby2ttuD58zKxI3SD97mrwc48+lGwAsuz+FUR+GEqKnl
 Lmf74n0JX8bJFKRBxeDGZTqX4sWzh8C2FAJ98RIV7d11Lc6lGFnnV20En
 cfpfE5vdeVOr/2aFabhZBqrS8VbKVl3G1773eMYdtaT+YRvIXmATOEtMj
 rLD50puS5iteRHdcVFG0q4bnOJGDrw0tS4NiDJ8gkPBxipO4V1WU5uywm
 lAQVA0wMBSEd8L/k1wiAwMzt/wGo3pwyqlxhovGNXcvAhwRr6VTqawGoj Q==;
X-CSE-ConnectionGUID: xykYEjwrTTKkZqSzxtXOng==
X-CSE-MsgGUID: ZleUmfnNS8iA4mCsGxWEVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11401"; a="33586568"
X-IronPort-AV: E=Sophos;i="6.15,206,1739865600"; d="scan'208";a="33586568"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 15:36:45 -0700
X-CSE-ConnectionGUID: 7KHlLBwRRCyttkyvKJL+pw==
X-CSE-MsgGUID: wqovMe8oQ8O/+pbKa7VTig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,206,1739865600"; d="scan'208";a="134470506"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 15:36:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 11 Apr 2025 15:36:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 11 Apr 2025 15:36:44 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 11 Apr 2025 15:36:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ym+m1pxCTWtwFuPT6ZdkVG9XWzpb3H5+TgxAluaSeRseg+68reXGivf75mYctczo4mR44VO7qzTWKdmJQXGUOSnlxWI1tGGg8C/T/H2u/urQ/l0Pbwyr/uPqnOsMMQW4ZkBXjI0NIWhNi+t8lx+F5QYXsm8N4tVVhOzMK10GLN2Fr3LsiGLdqxhGy/GV303m4B4osMDNoWfNMN6gtzxNS7fDoF5VO+JhxsYNtaO7LuRLDvMY59O+riXXfis9j4asSrgOG7RGt4JSD8tElLOCo+uXnLs6ZHea1tfk30yZ5+XU/LiGcxutDsrOP8a5NGKXoLeI6dcl7E9Hk5ToSWnCCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6Fgll1+OQwJNu8z7OZZM6u0EbZDRS53SS8uiW0iPtPM=;
 b=ZlavKqg23rl3IHkuopWwPB7r9td+DT5Ov5a6Am5WSysuOuyORd8l46nDnxKdSF7Rtgac/ONRRUxx4wXpBJZ8TwbVpS2YcVF3I9dxQ0CQCZmOlQrMAAkUXg2n9XjBiF6zKS3pwFd0VNUXJ51P1E+n46tBkrzWNTe3IIaKlIjFcb0eAnlfYq+X3Lm56h9pWE+tF7gNILMDXq6F39dH+EhSNZR0r+LPU3P64tT4kbODmp339oTGVwgW+p8fbe4NI3uNpa1mysr+qh00nzcA240h87SebnCuMeoTIAEHVC4Kmnr6ki9TxUx9MJUWObAW5TofQ8QT1O3m4ExO7gpQ+IJe2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22)
 by DM6PR11MB4659.namprd11.prod.outlook.com (2603:10b6:5:2a5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.27; Fri, 11 Apr
 2025 22:36:41 +0000
Received: from DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1]) by DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1%5]) with mapi id 15.20.8606.029; Fri, 11 Apr 2025
 22:36:40 +0000
Message-ID: <36241b7a-21d0-453a-ae1c-c0342483d787@intel.com>
Date: Fri, 11 Apr 2025 15:36:37 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t 2/2] tests/xe_pmu: Add frequency test
To: Riana Tauro <riana.tauro@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <igt-dev@lists.freedesktop.org>
CC: Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Kamil Konieczny <kamil.konieczny@linux.intel.com>
References: <20250410013314.613109-1-vinay.belgaumkar@intel.com>
 <20250410013314.613109-3-vinay.belgaumkar@intel.com>
 <64454a6f-14f0-477b-904c-2637f78ff057@intel.com>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <64454a6f-14f0-477b-904c-2637f78ff057@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0208.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::33) To DM4PR11MB7757.namprd11.prod.outlook.com
 (2603:10b6:8:103::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7757:EE_|DM6PR11MB4659:EE_
X-MS-Office365-Filtering-Correlation-Id: f2ff658e-14ee-46d6-818e-08dd7949540d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b2ZsVWFkNjRTdVNveWxsTHI0L2h2c01EYiswQmxyU2hRNHcvQWpVeTBmRW5L?=
 =?utf-8?B?MEhtQ0FBblp3ZlRzSG1pUnZNRURMaUpJc3N5NHZxK1BPZmFwWlZKOVBzU3hl?=
 =?utf-8?B?b0o5RkFDTXVUWVFhWmVEYmttb0pTMG9tNnZUamtOYnlHTmZ6NUNkNUY0OThO?=
 =?utf-8?B?WlNoUkQ1N0VFb2JtUXRwdjdEQzBSLzNob3BJSTA5UngxS2dtenh6NEJjcEVo?=
 =?utf-8?B?WjZqa1dpUWpod1hDQnNnZk41Njd0dVlTMlhKQmI5NmhUUE9oTDRqdkRlRGV3?=
 =?utf-8?B?Y2RBZUlGd3pJY0FnRy9SVUFIaEdOeDEycmhBYkdNRVdGTE45ektjRnU4YWZK?=
 =?utf-8?B?RWZPQXVNYWVwS2FjVURCem5XNGJ6MWIwY3N3aDdPc2VSeXpRdXJZQmtybEU5?=
 =?utf-8?B?dEdkMFBFMFV0aFI2d2w4NjY5THNGVnh4ZlpoRDRjclVMS29CM0MxWGhyS2N5?=
 =?utf-8?B?U29TVnJhTzM1WXQ4QzZYNHAxS1pPODNJVExOZlJZZWN5Y3Y4bVFUdmNUSWF6?=
 =?utf-8?B?RmdzZXRSOHpickpjTU5BRkJVZHFSWXFPdDNONGN2WVptRENBUUJ4aEJpYy9z?=
 =?utf-8?B?cUQ5d3h2U0VkenhheEFnWFZ3NU9LcUR5MWpoY0RRWmErMC9qRTJtb3FvdUxh?=
 =?utf-8?B?UjNLWXpuc3JVcEk4U3R6UlVvMUdVcEVvcUQxcXNmeXorYlpBdDd3bVVJMGJE?=
 =?utf-8?B?dEkwQlVwYzhlRTg2dU1UWGxtcS9pRXZaWStISFlqTEFvUGo5Z0ttUW5OYVFY?=
 =?utf-8?B?UG94YTQvdUl1SDIvaUIrRjFqaVUrcTUwU1NJN3FMM2NEdXBRNkJNMWxKbUVV?=
 =?utf-8?B?NFIvQ1BzT3pXTzNRTmNBc2QzeVczemxnY2xLMFM5cnhZdG5tWGZtQnhGdjFI?=
 =?utf-8?B?Mll1Qk9ielFPTjZyWmRGQ1ZsZGV0WCtnOHZTRjhyUUE2cndudkdHeVQ4Wnlp?=
 =?utf-8?B?ZGY2VGtiQjRKR3Q2SW11ZmZhM2luWHRBWVNzMnhkU01SV1VQUUhlcUhETjBo?=
 =?utf-8?B?STVJK0duSWQrQWE1Sko4TWUwaEVkaFkrSFhZWm9pTCswMjI1Rk16TUJ5OThS?=
 =?utf-8?B?MjlNcVg2U05HV1FkSmtES0lndCtnUy96SWIvRmxlUkdxTjJpSWMrbmNCUmg0?=
 =?utf-8?B?TENmc0g0UkI5YWpMQ05IdCttUERvRGhlZEk0Z2FReUhaZ3JraHc1QnJuS2VY?=
 =?utf-8?B?UFVDUGhHaTU3clVkWjhObGpZd0hJZXVJTmVyNlhJSVkzYjJLR0lRZDI4S0tQ?=
 =?utf-8?B?cDUraHoyZ2Irc1graVNZK2NSZHZ5dHJNVGlNbVliVTVXM012S1pRTC8xL1R2?=
 =?utf-8?B?ZmFPRzFaUnJaQzRMKzdaTWtURjdqOGVkK3dIc2hUb3hYUlhDeFJQZDFZV3NE?=
 =?utf-8?B?QXljSlF2RUp4QjloeDZoa1Z5bFJabGNJcXpQamloR2I0dlA4MGNHMzNNWWxM?=
 =?utf-8?B?bVh0L3NZUXozL204VDVPTVl4TmJpaFg4ME44SVRQSDduaVZvcmZIRXRtYmdW?=
 =?utf-8?B?SE5obW94SVhFRGk5YSswS0IxTDh5SjJZZWx2K3hOMi9yRDdDQ25iWUlwa2ow?=
 =?utf-8?B?aktydE1XWE5yUHI4KzhjU0pDZzZ2VFMvQVBDdElvODJMb1RyekgvM1JBTVho?=
 =?utf-8?B?U3ZWNVZyKzJMVnpHUzZiTFR4WTd3QVFOK3BkNy9mM0Y1TFBmelA5bmp4Mldn?=
 =?utf-8?B?RUt1V3pxZVA5YXdqY3RGRFYzRDkvd05KRjFEd3Fsei9vSXF4ckVtdWdqS1VL?=
 =?utf-8?B?bGdXNXRad2l3NzZ0SVVkVTBVTUFOUEtVajlBTEVvTmo1Y2pCRnRQZTkwZ0lk?=
 =?utf-8?B?UklXVHB1NXhkODZRVlcwRUdjMHZXTmJQRmlCQytGQmtTOFpjN0h3RmNDRkNV?=
 =?utf-8?B?a29YWU1Ha2RaRmJhY3c1Wm55RmJONlVkYVlyVy96WUFXeHZocE9vcGNsT2gx?=
 =?utf-8?Q?UZCibLRUBEA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7757.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dHdSNWNDOTAvNFkxVWtrZTQ3cmNrSk1PQndKdmkyTC95MzJIM2VBZHdTOEov?=
 =?utf-8?B?bkhTQVRvMFRlV293UW1uMU5STDFPMHJORnFYbUJMblhrL3ZISnVJRGhjYXhu?=
 =?utf-8?B?NlFkcTBSREd6R1RTK2h6OHlPajFJYlVhKzlBUy9WR0x4YUhaSGNyMzloTUZS?=
 =?utf-8?B?ZG1GNFpubG9xbndFWDFyWnNEQ3RZbGhDSllBYStsdUhrUTc3N2VhK05tMlVX?=
 =?utf-8?B?Q1JhTko5Yktxb0RYcldOd0FaLzBCZUpnczYxeml6aTZYMTRYeXd0bXNrWmdC?=
 =?utf-8?B?bU5lcTV5U2xhazUxNitiNThiclgwWS9OZUJtdjR0MjBrVnRzRmpHSExNR2hG?=
 =?utf-8?B?QllUaGlnbzdrK1ZKbnB3UjdDdERTVTR1bzdOTmNUQjhiL1ZvQ1ZvQXFuaDZ3?=
 =?utf-8?B?ZHpyOEVOTmZ5citQeVFJcUtPVVdoRnZrVmJ6ZWdLbWdGOVBua0RPOVBocTJM?=
 =?utf-8?B?TGFvY0o2U0luS2pzUi8zcUIyUExEWUtTT043b2Q1K3NLUmJWRDhaQjZOMzBm?=
 =?utf-8?B?dWxoMExRSHJlWnl0TkdIYjI1dlo3ZGpYSmhFUkNMdW96TUQ5NWE5UzkyMzk0?=
 =?utf-8?B?MXJRYUhnallGaVRVRC9QNVRIVisrUnE3ZmJjK21GUXpoWTJmcmVLT2hIRVpq?=
 =?utf-8?B?RzFiWjlzb1Qwem0xZjZaZ2hRd21mNDVTMDdxMFIxdUNITHpvakQrRmY1SEpF?=
 =?utf-8?B?TVkwaVdWNGlpNFYvdzZWY2o4QWdPTzFsUGVGWFY0UjFUWkk2alJwNmtmUE1C?=
 =?utf-8?B?OVBCYzNubG4rN3RobllZeG5odC9JV0tHYnllSGFFQXlHeW9EbEhCMXhpajUw?=
 =?utf-8?B?VGMvazRrTXd4KzRaUFNUTWFWRWQ3NTdlMUJOM0pVMWJ5QnNseHRSRnVNNTBy?=
 =?utf-8?B?UzlmM1N1djA4N0h0Vk01T2VPUXo0M1RkdSt5L3Brb1M4MWF1dGE1REdGbG5L?=
 =?utf-8?B?clJ0UWpBc1VwbHA2QVN6dEJQRlJjTGVyZk52bGxsYzJuemtVd0FPeHlBQkpl?=
 =?utf-8?B?Y0pKbi9NV1dBS0RMY1UwajRrRzduVkUyUTRrOHh3RTNzZERjWVVVbzgzZmhR?=
 =?utf-8?B?cC9UZEJHQ2RUVFpjZDlvNnl3cUZ1K0VqSzJyRjA5YUh4MENNd1NqQVk5dXZz?=
 =?utf-8?B?bTdHZjcvSUJJeVdpUlhQUTk3MUxUb2ZlNjFScW1hMTZaSUlmaTQwdUF6Mkhh?=
 =?utf-8?B?VDFKdUFKK0Y1bktKalk5eS9wY3ZuVW9UOE1ISDZFZVcvMU5XVWpIRE9kVEZS?=
 =?utf-8?B?MkhnV0E0Uy9RQ21vZmpaeFZJVGx4akRERTJkZ29ORUlrWldqcnhnVGpReUZC?=
 =?utf-8?B?UUlOeXdUOCtxejh5US8za24vVkYvanJ4Mm5hNE9RYktVQ3ZGSGpvaTd5d25N?=
 =?utf-8?B?L1hnMUNXNTJYWUNjK2h2aDZxdmM4WjE3aEZxdm95TjdxWENOMmc0bGZwMThK?=
 =?utf-8?B?MWNhc3MvRXlNS21mSjRQZ2hzdEd4YllvUHVWVkpXQzI2K0d3dzBnSE1WTU1H?=
 =?utf-8?B?bENyYi84d2NNa3hQT0ZCUnNxOWQraWlJakF6V2NwMFRnMFdOaVkxckp1dzRt?=
 =?utf-8?B?eGJ1TUtadmdsbm9GOEN2ajhsUk5qR0k3RkUvYVhPRldidzNXSHlzb0hSSDZa?=
 =?utf-8?B?STNWZ0xNWFhKdVlBQzlWRzFTeTh5ZDQ5TDdBT25QYkNDVlBuUFFSTjJxemRs?=
 =?utf-8?B?UzVvSWpMSHpUZEtPMEZBVy9acWVuYm9PMXdKRWJXK0ZoMXRsMWlySkZCb2dP?=
 =?utf-8?B?UnhyRmpRQVJHM0lDTzNVcTdBeE1sWWxjSEhMR3lrNDlRcCtpYWcxeWk3SWJ6?=
 =?utf-8?B?WDZacmEvYzB0VzlQM1g5MVBjY2E4UTEzT1dTVzNjR2xxOC8xTW8vdmphYXZJ?=
 =?utf-8?B?bTBhN3BJWTJERXBxaWhTOE95akxHdnA1N2JJTlN3QnVhYzJoUUtNWnRPWFhV?=
 =?utf-8?B?RXYwMXRBT2ROY2pqQjl6QUh3enpYdERxTmI2OUY4VHMwUnN3YkpUdG5wQXNi?=
 =?utf-8?B?NTJpaVdoNHV2NkNzbGRDc3Y2RFI1YTVHcWU5Q29RQXI5OGJWa253WExCelBU?=
 =?utf-8?B?UVBOU0FITXYvWkJaSUVITXlYcDZuRjBLSFdUWWJkZ0FSWDBCNDh6eVJqdFo2?=
 =?utf-8?B?WXlHeTc1ZzQreVUyQy9nYVc3K1d4akRxOStNRk51MEVmcytVOEtFYUE0bTdh?=
 =?utf-8?B?MGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f2ff658e-14ee-46d6-818e-08dd7949540d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7757.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2025 22:36:40.9011 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L9DgY3FDVPtpQCiwMigIilPYP3aXaARkjPtHPsDpfr+dhyuIrfYyuypjVbAWf6DOPihq9mS+VwRrPdghpgR2YREKXUijoX1xfOrSD98CFX4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4659
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


On 4/11/2025 12:33 AM, Riana Tauro wrote:
> Hi Vinay
>
> On 4/10/2025 7:03 AM, Vinay Belgaumkar wrote:
>> Add a basic test that uses PMU to read GT actual and requested
>> frequencies while running a workload.
>>
>> v2: Rebase and comments (Riana)
>> v3: Address review comments (Kamil and Riana)
>>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Cc: Riana Tauro <riana.tauro@intel.com>
>> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>   tests/intel/xe_pmu.c | 147 +++++++++++++++++++++++++++++++++++++++++++
>>   1 file changed, 147 insertions(+)
>>
>> diff --git a/tests/intel/xe_pmu.c b/tests/intel/xe_pmu.c
>> index 175bbf374..589c7cbde 100644
>> --- a/tests/intel/xe_pmu.c
>> +++ b/tests/intel/xe_pmu.c
>> @@ -376,6 +376,94 @@ static void test_gt_c6_idle(int xe, unsigned int 
>> gt)
>>       close(pmu_fd);
>>   }
>>   +/**
>> + * SUBTEST: gt-frequency
>> + * Description: Validate we can collect accurate frequency PMU stats
>> + *        while running a workload.
>> + */
>> +static void test_gt_frequency(int fd, struct 
>> drm_xe_engine_class_instance *eci)
>> +{
>> +    struct xe_cork *cork = NULL;
>> +    uint64_t end[2], start[2];
>> +    unsigned long config_rq_freq, config_act_freq;
>> +    double min[2], max[2];
>> +    uint32_t gt = eci->gt_id;
>> +    uint32_t orig_min = xe_gt_get_freq(fd, eci->gt_id, "min");
>> +    uint32_t orig_max = xe_gt_get_freq(fd, eci->gt_id, "max");
>> +    uint32_t vm;
>> +    int pmu_fd[2];
>> +
>> +    config_rq_freq = get_event_config(gt, NULL, 
>> "gt-requested-frequency");
>> +    pmu_fd[0] = open_group(fd, config_rq_freq, -1);
>> +
>> +    config_act_freq = get_event_config(gt, NULL, 
>> "gt-actual-frequency");
>> +    pmu_fd[1] = open_group(fd, config_act_freq, pmu_fd[0]);
>> +
>> +    vm = xe_vm_create(fd, 0, 0);
>> +
>> +    cork = xe_cork_create_opts(fd, eci, vm, 1, 1);
>> +    xe_cork_sync_start(fd, cork);
>> +
>> +    /*
>> +     * Set GPU to min frequency and read PMU counters.
>> +     */
>> +    igt_assert(xe_gt_set_freq(fd, gt, "max", orig_min) > 0);
>> +    igt_assert(xe_gt_get_freq(fd, gt, "max") == orig_min);
>> +
>> +    pmu_read_multi(pmu_fd[0], 2, start);
>> +    usleep(SLEEP_DURATION * USEC_PER_SEC);
>> +    pmu_read_multi(pmu_fd[0], 2, end);
>> +
>> +    min[0] = (end[0] - start[0]);
>> +    min[1] = (end[1] - start[1]);
>> +
>> +    /*
>> +     * Set GPU to max frequency and read PMU counters.
>> +     */
>> +    igt_assert(xe_gt_set_freq(fd, gt, "max", orig_max) > 0);
>> +    igt_assert(xe_gt_get_freq(fd, gt, "max") == orig_max);
>> +    igt_assert(xe_gt_set_freq(fd, gt, "min", orig_max) > 0);
>> +    igt_assert(xe_gt_get_freq(fd, gt, "min") == orig_max);
>> +
>> +    pmu_read_multi(pmu_fd[0], 2, start);
>> +    usleep(SLEEP_DURATION * USEC_PER_SEC);
>> +    pmu_read_multi(pmu_fd[0], 2, end);
>> +
>> +    max[0] = (end[0] - start[0]);
>> +    max[1] = (end[1] - start[1]);
>> +
>> +    xe_cork_sync_end(fd, cork);
>> +
>> +    /*
>> +     * Restore min/max.
>> +     */
>> +    igt_assert(xe_gt_set_freq(fd, gt, "min", orig_min) > 0);
>> +    igt_assert(xe_gt_get_freq(fd, gt, "min") == orig_min);
>> +
>> +    igt_info("Minimum frequency: requested %.1f, actual %.1f\n",
>> +         min[0], min[1]);
>> +    igt_info("Maximum frequency: requested %.1f, actual %.1f\n",
>> +         max[0], max[1]);
>> +
>> +    close(pmu_fd[0]);
>> +    close(pmu_fd[1]);
>> +
>> +    if (cork)
>> +        xe_cork_destroy(fd, cork);
>> +
>> +    xe_vm_destroy(fd, vm);
>> +
>> +    close(pmu_fd[0]);
>> +    close(pmu_fd[1]);
>> +
>> +    assert_within_epsilon(min[0], orig_min, tolerance);
>> +    /*
>> +     * On thermally throttled devices we cannot be sure maximum 
>> frequency
>> +     * can be reached so use larger tolerance downwards.
>> +     */
>> +    assert_within_epsilon_up_down(max[0], orig_max, tolerance, 0.15f);
>> +}
>> +
>>   static unsigned int enable_and_provision_vfs(int fd)
>>   {
>>       unsigned int gt, num_vfs;
>> @@ -427,6 +515,35 @@ static void disable_vfs(int fd)
>>                  "Failed to restore sriov_drivers_autoprobe value\n");
>>   }
>>   +static void stash_gt_freq(int fd, uint32_t **stash_min, uint32_t 
>> **stash_max)
>> +{
>> +    int num_gts, gt;
>> +
>> +    num_gts = xe_number_gt(fd);
>> +
>> +    *stash_min = (uint32_t *) malloc(sizeof(uint32_t) * num_gts);
>> +    *stash_max = (uint32_t *) malloc(sizeof(uint32_t) * num_gts);
>> +
>> +    igt_skip_on(*stash_min == NULL || *stash_max == NULL);
>> +
>> +    xe_for_each_gt(fd, gt) {
>> +        *stash_min[gt] = xe_gt_get_freq(fd, gt, "min");
>> +        *stash_max[gt] = xe_gt_get_freq(fd, gt, "max");
>> +    }
>> +}
>> +
>> +static void restore_gt_freq(int fd, uint32_t *stash_min, uint32_t 
>> *stash_max)
>> +{
>> +    int gt;
>> +
>> +    xe_for_each_gt(fd, gt) {
>> +        xe_gt_set_freq(fd, gt, "max", stash_max[gt]);
>> +        xe_gt_set_freq(fd, gt, "min", stash_min[gt]);
>> +    }
>> +    free(stash_min);
>> +    free(stash_max);
>> +}
>> +
>>   igt_main
>>   {
>>       int fd, gt;
>> @@ -482,6 +599,36 @@ igt_main
>>               disable_vfs(fd);
>>       }
>>   +    igt_subtest_group {
>> +        bool has_freq0_node, needs_freq_restore = false;
>> +        uint32_t *stash_min, *stash_max;
>> +
>> +        igt_fixture {
>> +            has_freq0_node = xe_sysfs_gt_has_node(fd, 0, "freq0");
>> +        }
>> +
>> +        igt_describe("Validate PMU GT freq measured is within the 
>> tolerance");
>> +        igt_subtest_with_dynamic("gt-frequency") {
>> +            igt_skip_on(!has_freq0_node);
>> +            stash_gt_freq(fd, &stash_min, &stash_max);
>> +            needs_freq_restore = true;
>> +            xe_for_each_gt(fd, gt) {
> Since it's one test, i thought it could be something like this, to 
> avoid subtest group
>
>     int orig_min = xe_gt_get_freq(fd, gt, "min");
>     int orig_max = xe_gt_get_freq(fd, gt, "max");> +             
> igt_dynamic_f("gt%u", gt)
>> +                xe_for_each_engine(fd, eci) {
>> +                    if (gt == eci->gt_id) {
>> +                        test_gt_frequency(fd, eci);
>> +                        break;
>> +                    }
>> +                }
>         xe_gt_set_freq(fd, gt, "max", orig_max);
>         xe_gt_set_freq(fd, gt, "min", orig_min);

Didn't have subtest group before before, but fixture was needed to 
ensure freq restore happens when the test asserts due to an error. I'd 
like to be able to add more subtests at a later date as well, so keeping 
as is.

Thanks,

Vinay.

>
> But if there are additional tests planned
> Reviewed-by: Riana Tauro <riana.tauro@intel.com>>
>
>> +            }
>> +        }
>> +
>> +        igt_fixture {
>> +            if (needs_freq_restore)
>> +                restore_gt_freq(fd, stash_min, stash_max);
>> +        }
>> +    }
>> +
>>       igt_fixture {
>>           close(fd);
>>       }
>
