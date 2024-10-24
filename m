Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1809AE4A2
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 14:20:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7970810E116;
	Thu, 24 Oct 2024 12:20:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dNDGPRg6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E960B10E05E;
 Thu, 24 Oct 2024 12:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729772436; x=1761308436;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hrYCx7iU3LvhgRqDWfWS2L7+K+JiklirCVv2Gg2ZGoo=;
 b=dNDGPRg6wZYBWcEdi/mop/uexegcP5+AM7Z0Q1dkLkxVQXzz0yHq97NW
 KrDQQG4GlLhypGwquCBojaliXexdcxhhju/ApJMb94eOro+K+PB+kxNKV
 CL1Owep/kriT1dPxE98NeUfcCZlsV0/tuNTj6oC0UtNLS67S1yHI13PwH
 q+T/jd4dHY1XvmaGhtUWClMkdM7YyiNxpNqsOYtFADP+MJG9W2mHVg/N8
 cbxlFDe+4QcmqEvVMc3X8x+v9tf7+tHDUb8uF50pAhj5SAOy2aXNrpYqS
 W/yMT4LSnGuC/YwZ8caroYGB6qmtjwdwWO4zA4TuIy/VO5lei4WJTJ19g A==;
X-CSE-ConnectionGUID: iCLHkyuKR0W2hk8+N3nffA==
X-CSE-MsgGUID: rGnHQKNEQoK53OG/KGYBjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29169926"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29169926"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:20:35 -0700
X-CSE-ConnectionGUID: xMFJZTPaRCefKjb086Xweg==
X-CSE-MsgGUID: MbWFoCSYT5mwLHUbmuY2HA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="80562609"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 05:20:34 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 05:20:33 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 05:20:33 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 05:20:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qCa4ShG2KM++vTmkG7kAx9AMeWM2j9Y24Ie279qdQOxvkWy76w2KtybGQZ6C6GhzS3MqXFAz9OIoxiUWTJaln0Ml6fcn8jOf96ffwP1NvhRagnIYpxBDXFPOfWi3Tjm1eaBxEa80yTEyo1VU1HcQe194oPJapPCpjlIo1NQZr7cGhfVEaQ/dn0YHQgIwBqhLVtc07YL8U1dARx4NWRqmbIBxAyTM/9te3kqU7sz261l7UoHmcandJ1Yv5EpMEsnwehkCaLGCeZ1Ina01ujs9czQz3M3tJX79kO3amtluu8Gb0cUjhAv/Y7Vxdq0fwImcS17SSuXYkzL57frWXX+jgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bBvHiMTEngBra1fQuqczk5l5uePjoFEJawD6pKXiAr8=;
 b=luaaXD+qSkiwek9s+oTcBI4t9b555VGHReeqgcO/PzuYKN9ilSDbdztIO7xSn0y/jU0gaxLmtSp0vXdJpuGJh8AWg8ZomK3vzR5Hj4TWxvG93a3Je/R5vaIEkhgX2wy2TxT0U878MfvQkmK21JhZMMahOJeQ0XRIUgeUFrbLxQ6QiMeznv19IectXxayFP/kt41U0dP4m54dY69+E1siLvWSTYEfTvSIaeOsfctgEQavCLHT4J9ZZL1gHye+tRJSTKfEgqmdsV4SLqtpasKJVk41TxPpWzoX6085lBpOFAH3mCprKI1c7Yke6etx9WO2kDJdiL+duNktgtvF3cpjoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB6968.namprd11.prod.outlook.com (2603:10b6:806:2be::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.20; Thu, 24 Oct
 2024 12:20:27 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 12:20:27 +0000
Message-ID: <f8a49bd7-dd50-422b-b79f-3c83b15b4acb@intel.com>
Date: Thu, 24 Oct 2024 17:50:21 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] drm/i915/xe3lpd: Prune modes for YUV420
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <matthew.d.roper@intel.com>
References: <20241024035552.94363-1-suraj.kandpal@intel.com>
 <20241024035552.94363-5-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241024035552.94363-5-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1P287CA0006.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::21) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB6968:EE_
X-MS-Office365-Filtering-Correlation-Id: b8267552-882a-4321-404d-08dcf4263e1a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YjJrbWFyQVR4Z2pjalAwSHJ1aFdaWlMrRi83NXRBSHRWYnBMSHRuVWhpRDcw?=
 =?utf-8?B?OUZ2a09rVHJiWWJXSWo3Snlwb0w1eDg1bk9ZWElqNmNVTGNkWUVhR0ZCRG0w?=
 =?utf-8?B?cDQ4QnNLSGNiS2RDdW5EZk0xQUtTakhoUWp0bWxGblV6a0J3QVdHM3pBYnR5?=
 =?utf-8?B?eUFZcTV6VWh5L0Q3N1NEbkJ2ZGUxbVI2Y1BxdmRLTngzc09JaUJLaDNMMkFD?=
 =?utf-8?B?NGhyYnU1dHoySFJlWTllcmcwZm1sOExDUWt5aGs2QUZwNDBRWlJLRldPMy9D?=
 =?utf-8?B?MC9RV20wVEJpckQyNTRSQmNtRS9KWXNqOU43QWs0QjFBNEdHQ2ZLdlZzdFVK?=
 =?utf-8?B?N25hU25peEZwL1FEYTZRcVJTRDkzVDMyQ3Y5dXV4NzUzM1RFNGJ2aG00OXJm?=
 =?utf-8?B?SC8rNEZva2owZ0RFS29meVpSeHcwcThzdGp4b0Z6UlRTZTVXTE5seEkvbGhS?=
 =?utf-8?B?Q1JXeElCZVcydyttdmVGMEtFRXNrNldWa2V4enJRdit2aUl2a214L1I3dzdJ?=
 =?utf-8?B?K1hEcmh0aWJtNUtRcndoOGxCZXFHVXBIU0FtMDVGTlpiNUozSHlIcWhFZDk0?=
 =?utf-8?B?Z2t1YmZVSjN6ZklyRk1tMWE5MzZhS1NHeC8zcG1qdW5VSk53enkvekd6ZmVR?=
 =?utf-8?B?NDhmblhMU0JTNWVNWXdtRjF4TTVQRlBkd2Q4RXE1SnBYUXpXdlNjbzVXeTlv?=
 =?utf-8?B?cUNZTkZBVlRkNmkyVGVzL2hVRDdDZHBrWTB6TFphcy90VjdQQk9mVm9OcWhs?=
 =?utf-8?B?TXRJMUVCVXJjZDQ1eWxTdFNXWVBTN2JnMEt0WkpHd3dCdEF1b0NReWhhWXhh?=
 =?utf-8?B?WVJCQkpvZDNrM0tRSjVnM21KQUZOaksrUlBwanA1WlBwQ2xDNHk4Q3NzTDRw?=
 =?utf-8?B?c1Q3OTAwSDA4eFI1RmRFcEYvR2ZJbTdRYjM2NVFlemo5aGxINEp6QzBCNk5m?=
 =?utf-8?B?a1piSzBBWnB3NVdybjVpWkM0L3pCNlFwRmlsMTdLbHpaWTM2RHR4NnV3bjdG?=
 =?utf-8?B?QnBNODc5WVBJT3RMZ2t4czJVU3o2N3Z6aStGZ0dUTEYvSGZMUlVoaUpFQitB?=
 =?utf-8?B?Sk1maHlNVU56VXlNcUV5c0tFMkpURnVSU2s0b244TzN1RnFwUXNSdmpTWVc1?=
 =?utf-8?B?NTBnYlVmZS9GMUo3Z3hzT241dkxoeVpza2tISGpqckxhb0tFaGhYUjhaYWNq?=
 =?utf-8?B?YmdXME8yVHI0YWtkNzZaTWdQYjgxSUZBQncwNVNKN1VRMnRtbUJkLzdaSis1?=
 =?utf-8?B?c1I5UmE3UHFlbmVtKy82QUZNR2NCT0F2YWZzc2Mwc1RBTmpLWFVMbC96QXN0?=
 =?utf-8?B?dzJQa09hazNrSzcwdTBpT0V6Ky9hT2lpK253UWF2b0lUZWNjVzE0dGJPT21H?=
 =?utf-8?B?aVNXVkNLN01PWGYzLzNJYS92UjdITUVSazhKMzJPeEpVeThzRDFtT1lJZUl6?=
 =?utf-8?B?RUI3SjZGZkxEaGJaQU1RNEZYazFsSEpIS08yYWRRVXNnQW9hZGxBMFF5eHZR?=
 =?utf-8?B?YXZjTmdNRlRFQWNUV01wVHNBdnNSSmcyV3pxOW9DWWplR0FTaWxkeC9CbkxL?=
 =?utf-8?B?OWkrYzhlUklhczBMS04zU2ZyU3o3bVNZZXFCTjQzdE1ZdDM3bHAvUDM2VjNK?=
 =?utf-8?B?R1FJU0ppeHhGakdzdml4NlNwcmtYK0VuT2NLOUdlQWxoUjZoZXNXbzlzckVn?=
 =?utf-8?B?WVJ5THE0b01VWDNvWitFd3lkSm14Q3ZuM2ZzSHp4a01RTXlUZzVHQ2dlSXpk?=
 =?utf-8?Q?Ej/Tm57I88BCFsp3+jlJopPDJF3bmw1J+HuXNqA?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MUtreHpJTjAyU2hmV2pOSUg4a0p3M2kyRGt1QWh1Zk4yK1NDSGVwUUFkRlFE?=
 =?utf-8?B?Z0tLZGhMaUdKTmt0a3Q0VEMrNUNJWElYQVVqMXRxWFBPVHlRYm0wZUlUVU5q?=
 =?utf-8?B?ZnA1WmZzeUlOd2NxVFNCa0xqNFRwRUtSR1NWODFrdHJpYVdNN3lzdjM4c2hy?=
 =?utf-8?B?NXJ1cHFjbzQ1dGdjOC80MGluVE1ibWdRUTB4MFdxOWpIMDVXd1hVSU5RUjZY?=
 =?utf-8?B?NEhyaFg1ekFpY0s2ampPWFBEbmloN2NhZlNpVzNqeVRtNTB5UDkzOWNGekFi?=
 =?utf-8?B?WFBienhkZVc1b1kxdzZTWUFONFBPamNjMnhCYUtyMFJvY2RCUlhXbTV6OFVh?=
 =?utf-8?B?N1RzdlFMWWQyNENaUW1rdkV3ZFBzZTFubGRCMGNocjlTKy9QazMzeW8rL0RG?=
 =?utf-8?B?WHpnRS9FellGOVlXSHh2UzJ6OVFYY2I2Sk1IR210U09odlYxY3MzRTluSWF5?=
 =?utf-8?B?c0llNnpkdDR5b0NQM2tTOHBaWHRIR1J3dG5aYnB3eUxVaFozZ1NhN3VzejJ5?=
 =?utf-8?B?OHFDa2d1NHZnK1JBbFRDV1hubklHc1RrVEc3aW5CSC9oRElSeWg2NmpxUi9B?=
 =?utf-8?B?UWlwUXFxZGoweWM4MjBjazNIem96ZjBaczVKclFkVm1aTzJuTnJWOS80QmpV?=
 =?utf-8?B?bGpDR3c3NnJXMnVTSHpWOHhxQ2ZZOTRqUzE2djhQUVcxNlREUWQ5TWd1MUJQ?=
 =?utf-8?B?ekczVjN2b1BvdHFFN3NObnhjSmZ2aE1WRGd1Uzl0UzZUSmw3MnEwUFN1amlL?=
 =?utf-8?B?a29SVDZWMWUxOFU4NWprTmRid0xRRFBQT2xPOW5QNk9heW1JbVI0VmREalBx?=
 =?utf-8?B?cC9oWHRPd0dXZEhWc1VpRXc3ZTJxOWZZNGJIdEV6ajVHTHM1SEExODU1Zmx4?=
 =?utf-8?B?VHdSRFZsbkp2VFBkTllLNmFxMzZWOXFiTjluQk9aQWJOUXhMOFYwaEdZRHdD?=
 =?utf-8?B?WmJycGJvZDV6OUdVSUN4eWRpUGZmQjQxazRBZmRlSzkzdmdwNW5DR2NGK08r?=
 =?utf-8?B?VDFuSWt0NHVsbUliRlVFUDlMb0FzMFBLRUVJTndqSFBtREFwLzdMQkY0N05p?=
 =?utf-8?B?R2JEQnplMGxXTFp3eGhwQ0I0bjVtTzlnc2YwdmxRSW01bEY5TklSM0N2d3or?=
 =?utf-8?B?RWVRbGNjblJxbEVJY1MvdXJHcEgvekFrLzhuT2lHUkl5Vng4aGxOdE1BWEhR?=
 =?utf-8?B?WU5NNFBYRC9meXc1a3VZZzIyNzYxaW0ycU5ueTNISm90empJa1hwcVN3dUhC?=
 =?utf-8?B?WFR0K3RYM1IwSGNKb0RrYzYrUk9uK3M1SVBLWjZLY2FtVDByWEx2OWFkS05h?=
 =?utf-8?B?RzdPam5rWWVLaUxUZ1pCeVBuRU1INFB0d2VXblE0UmljZ0JiR2p0NVNmaVNZ?=
 =?utf-8?B?RUJVTWhWSW1lU3podnpBL3Z0dlFvYkRWNkFBZkphYlFIb1p3OVZhdGQ1ZmR2?=
 =?utf-8?B?RXRqWjFtTENTM2lTRXdLL2VITEVrQWxTNG5TeXM5VzhBc0xJVlFFakFneGw0?=
 =?utf-8?B?R0cveDN2UFNmRjdualY1S0c2TU1DTnFBODFiQ0NVNnRrdm1FZnZKZGlSbFAv?=
 =?utf-8?B?eUZDUEF0akN5M3FmeStNNmE2R3VGNG1tNHNWajlGMDZUSHFObFEwV1luWFEy?=
 =?utf-8?B?MzBuaHdJZ1BITUQ5YXpwdDBBV0l5eVB2SHkxSkI0dTFFRXczU1Jpdy9Xa0Fy?=
 =?utf-8?B?OFRiSjJ5YWdGdU1jbVRjTW8xZXZyb09sVFhjVGFGZm5TTWZhSkJOcTFqTVlp?=
 =?utf-8?B?MWh6RU53eXJvdEdnU1BqWmdHZHE5Z2FvcmJDTmE0c1R6MUJaRlB3UFpKWk8r?=
 =?utf-8?B?YUMwRnVZbHRXc1lreUp4dW14UjRFdXIzVDByaElXa3JRenZrak0wYWRTS0tt?=
 =?utf-8?B?WG9Udk5GNmdrbXZZR3hvV1NKQ2hUb2pTSTYwaGNobkRPRHVtaEtjOFlaZzBK?=
 =?utf-8?B?d2d6dkVCa1Z5T2NJNWdRd3hZQ00vR0xzUURmSnlCRnV1MEMzZ1NCNHo0cUsz?=
 =?utf-8?B?a2d6VFVEUjNLQlBkS2c0enlxeUE0UHNpQjNZWTVXUzFzb1ZaNXBISEVCbkRq?=
 =?utf-8?B?aWlDUHA0NjdGRCtaUW1ZclQ4T1V1b0JZK0lCeGdVT1pDdjNwSElUU2ZqZCt1?=
 =?utf-8?B?L2U4YzdzcWpiRzJ3WDBubmR0L0tpNG5oVS9GM3UyTkNnYlJXR1VSZFIrM1Na?=
 =?utf-8?B?MWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b8267552-882a-4321-404d-08dcf4263e1a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 12:20:27.1650 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CltcnIX7594fp3NQdd+PBSgu1XBoH6JDGpCc4GJE4uxPc8rQX5x+BGtFZG/WQgnpGNESnkoWqndUFbYfkygyP4Hk8vEk3b+CCC8RGbjby60=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6968
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


On 10/24/2024 9:25 AM, Suraj Kandpal wrote:
> We only support resolution up to 4k for single pipe when using
> YUV420 format so we prune these modes and restrict the plane size
> at src.

This applies from MTL+ onwards, where the scaler can handle horizontal 
source sizes up to 4096 (Bspec: 50441).

Prior platforms support horizontal source sizes up to 5120.


For YCBCR420-only mode,  a scaler is required to downsample 444 to 420 
before sending to the sink. If there is a mode with hactive > 4096, this 
creates a problem, so pruning such modes is necessary for the platforms 
that have the above restriction.

However, if a PCON is present and can support 444 to 420 conversion, we 
can still display the mode by configuring the PCON for this conversion.

So need to capture the above reasoning, and prune such modes, if its not 
a branch device or if pcon doesnt support 444-420 conversion.

Regards,

Ankit


>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 6 ++++++
>   1 file changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index e0baad468d76..edaea5e8c53c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1373,6 +1373,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>   {
>   	struct intel_connector *connector = to_intel_connector(_connector);
>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +	enum intel_output_format sink_format;
>   	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>   	const struct drm_display_mode *fixed_mode;
>   	int target_clock = mode->clock;
> @@ -1407,6 +1408,11 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>   						     mode->hdisplay, target_clock);
>   	max_dotclk *= num_joined_pipes;
>   
> +	sink_format = intel_dp_sink_format(connector, mode);
> +	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
> +	    mode->hdisplay > 4096)
> +		return MODE_NO_420;
> +
>   	if (target_clock > max_dotclk)
>   		return MODE_CLOCK_HIGH;
>   
