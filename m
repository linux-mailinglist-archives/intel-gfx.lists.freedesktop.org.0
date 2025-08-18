Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D54B29C5D
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 10:35:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C555710E14F;
	Mon, 18 Aug 2025 08:35:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YiVlfbW1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4B4310E0DC;
 Mon, 18 Aug 2025 08:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755506144; x=1787042144;
 h=message-id:date:from:subject:to:cc:
 content-transfer-encoding:mime-version;
 bh=sgomUlbWsZyZr+Nm6pAtndXOwvCpXYsrnDa5/gCjdJE=;
 b=YiVlfbW1PrEAel04A7zxLSoU7kLnNpLYryWBscJ2ZxTJnMST3Zhv3kj1
 aXjv5jbpc1wao3AgGfsLEDpcT0OV8yUYfh/f1Pgq3Gw9P4lEXakjO4nbn
 q9TDrz7Btp8/1/VQ9dXpsfR8xTmSOAYFGjVPdo1HT2TSIX0ChglmKMRAZ
 iGhgrTHYQxy3j8mnYyAC7XpDs3NAbIN4rVimAfD5zCtAmPJpJRa4MkMz+
 6Ozndxvwhlu0kRIn+lmYgU68UXuSYqZD4xidNN3uybLR/qGDWY7M20ZD0
 gCoYRd7PkKl7DxiDN7ugCmufqCDnQvaKv5rAq6TurFqWzBWfdIibTmJ94 Q==;
X-CSE-ConnectionGUID: jg6HmVEKTz268rnq6t/gOg==
X-CSE-MsgGUID: 2WlmPxADSvGKx06p0fqHtA==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="69098143"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="69098143"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 01:35:43 -0700
X-CSE-ConnectionGUID: C0CJ0CPISc6DJAAoP3Uz2A==
X-CSE-MsgGUID: x2CoKkQ6QU2XTjeQNq2Unw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="198370491"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 01:35:43 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 01:35:43 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 18 Aug 2025 01:35:43 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.79)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 01:35:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xqH2/T7mrkX/oCoVyoYysL/3fJI1P9pCprjZr1g1akGjRubiFFTk70+gEboF0efnbSuotbeZPmg12R5ckZiaA4ya0Jr0mnrp/nV+4KeRSvMVEEaZMCgipL6do+6LvhpvfWblNJNsm+8ptLu72MurEKl2yHlWSltDyNC+2tRIWm4i1CDa+bI0iqjJ0mFooRtiUGIZH3a88BdBniBP5HU28EPptT113OeJ4NR0135eT0a4hxBRH4lNqjPY8Fjl3Xj5d5qAaVfKiWwJgegGFt0g5gHhiDUBvVpHr+vxFxoN+SSde+4I8EVW+YS6/rt/SVA8J6zFBdnNt++88IGY/V03/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AsV5eKH5qJf5UyxqX+5Vmzg2YV30e7cMZr/03hCaqNk=;
 b=Qg/NK+UriRUH9f9sQNvhWad/DlVMWFYVUrlpojiMT40kwyMiuNQfXcRkRFK8Z7VP3GMdmv5WHls4ORpCTFYgi4LVqqR8ve74dXkMrHMJJjsbfkzw7CG5fJLckpUrU94zZpCivACZWdWVBUqpUrAiSfvdVhyAGWS/gp21I1DZrH/NxXh1rZMO9PA9TdY/ivZAKTTo2SZ3iEbbvPLzZ9q0GScpJjJDcVNrVZgTAlSlGA3S5c+P6A4jtSNXErHJUpvnyo2C6qLX+bgFqp2P/qskxP3ELbKw2zoCH1dRQMX8Frsi4Lmo/5kbovkDE/nSobuaUmBmUdCFiWuvt0z7S13WLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by PH3PPFE80710477.namprd11.prod.outlook.com (2603:10b6:518:1::d5a)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Mon, 18 Aug
 2025 08:35:40 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.9031.023; Mon, 18 Aug 2025
 08:35:39 +0000
Message-ID: <ed8f89a3-be5c-4bf4-97a5-886e8e3f969b@intel.com>
Date: Mon, 18 Aug 2025 14:05:33 +0530
User-Agent: Mozilla Thunderbird
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: REGRESSION on linux-next (next-20250814)
Content-Language: en-GB
To: <sunjunchao2870@gmail.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, <linux-block@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0047.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:175::9) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|PH3PPFE80710477:EE_
X-MS-Office365-Filtering-Correlation-Id: 53b0b2e7-cee1-4934-e4b8-08ddde3235ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UVhNeUxqRUlST1JubENyc0RTV21uUXp5N1VDODNRRUxCYlVsMmEvYWZ0MWxJ?=
 =?utf-8?B?UzhScHVPS2x6SXBOU1VuNVp2eHVHbGZMMytEMjFaRUdSWnhuampwdW9Ea0Yx?=
 =?utf-8?B?NEJiTUJVQUs2QzAremRDdkZoSG9JcG1uQW5WNzZDUXlsUHJ6Rzc2WWtENEZW?=
 =?utf-8?B?OWJjaFlmWXBsRHNJZlRZbkV2Yy82K25pdmZRY1Fwc0hFRjM0OW5LRjI3bGtZ?=
 =?utf-8?B?bldmWS9tdnBoUG1VL0JodjBSK1g0cUtadUJFNW5MQTNDUW9maEJpQ0NjVmFR?=
 =?utf-8?B?UG9XM2tCQ1dKWnA1a0Q4cmM4T1JHUExJaFpaRVIvYzV4eUxBMlUvY3gyRWZh?=
 =?utf-8?B?anR1VFVwS2MrVWhEVHRpemJYWDVJWGFBWUxlYVlYN0NMek5QMFo2MEVOdFFY?=
 =?utf-8?B?RjBGejBFazdCTnNaWVpHRFpkck1SRDJWdVFmSjJMSWhWL21iZldGQlR4Qnhp?=
 =?utf-8?B?bEVFSTVIeWgxQlNveWwrRkl6UGE1MEJQMHVzRUFleTE0dGlseXBkam1vK3Uw?=
 =?utf-8?B?UVJpcEt1bGt3RmJrVE0vQ0lsOTJaVmd0KzRSZHRReG1tSCsvZEJnVEhOdFhR?=
 =?utf-8?B?Q2V1YkNrTzA3NXppUllCbnlTWFAvV1YzbWh4dTg4SU81c0xKdVZkVXlyWURI?=
 =?utf-8?B?K0pqNmFIS2prcXRpWTJ0aytjdDZtR2E3c0tFbHBzSzdKQWJvSDNZSDI3K1J6?=
 =?utf-8?B?cUpnamF1QVF1eldsKzB2YlpyVmlLcGtlY28xUytPOGVwWituckxmYzdFNnla?=
 =?utf-8?B?dDRHeUo0dHh1WVArb1pyMi9uelpwTFhOOHU5U091eElsTVV6Tkw5NktDdW95?=
 =?utf-8?B?WHVDVTRIQVJXT292S3Z2elNLeXo5VTVNMFJwUmhVempic3F2YmV0b3I4ekFD?=
 =?utf-8?B?SklEZHVwbDVINm8xODltYnlLaDdwKzhxVjBPOHpYUnVFcHFQbDFJUkxoWkJX?=
 =?utf-8?B?Q2NvU2JmUEZESTlyc05TZjY3Q1hTeW05cmZ0aDlSckxZd3grZklPd01yNlND?=
 =?utf-8?B?K3V0eFQvc1NyNnJKUURKZkZrNVd1ZGJmMytKZkR1NmxVU0lTaW9PV0pqa2tp?=
 =?utf-8?B?Zm9jZ2dKN1o0ejZWMmZHMFdQZUx1Ky9nMUdvV2VpUHVwcDJjc0pnMUJMbzcz?=
 =?utf-8?B?dGFkd2dvdlJLa29tNjNOZnRrWGFVZWdDcjBDeTl3anBwb21iNTZPRm1WaXFB?=
 =?utf-8?B?em9OWkJjWlczNFRJZHNCRWI3VFJnUXVlZEU1UnpCV1BkelF5c2ZwQ2pDZHVO?=
 =?utf-8?B?Q1ZmTGNyU0ZCSTdNZlRFZkN2cXVhV1gxZFBGL0VySXdHMlE2c2Q1SWMzbW1I?=
 =?utf-8?B?aFgrSk1NRlk3aVVkZDNkZmFjTnVBSHczQ28wbk03cGJKWUdjajFiZ2VoTVBZ?=
 =?utf-8?B?UGhKYm9VRnU4UGwzNURmTFZTMFJTbG5ZaXVpUFAxVmdyaktCN3FoMVJwdEUw?=
 =?utf-8?B?KzREaXBuOXo3Q0M5Q1pjOUJ1UllHR1ExMHUyV3crM0RuWllHdUN1RktrQVpN?=
 =?utf-8?B?UlNFd0p2WU54bkZGT1FPNkEvRFczVjBsdkp5ZnF1RjVBc3czZmJQNVRLczNh?=
 =?utf-8?B?R1dvY2RFZGpWNUx2aVVUZ1dkS3RGT0p4UFVJTWY2aXFBUzZ6VlRTaGZIRlUv?=
 =?utf-8?B?WE1HcTRMWitzQWN0Q2d4UjJYUzZlaitSTVVoT2F2RS8xNk5IVndUdWNBVUQy?=
 =?utf-8?B?SC9zbUhaUkVmdjR3cjA0TFIwS2FWMlNBMTFENlNtZU9WdEZQVDMyTTdHNStp?=
 =?utf-8?B?SlJJNDdBcHNXUkYxeTZOOTRYdGhZMk9QZkREdjVpQlc1RGZkRURDRHdzSE1v?=
 =?utf-8?B?NWJoNGVlekZkVjZUaDg2aG9wVlZrejdlQk5GSGhHcEpMei8yWXNyZGFDeW85?=
 =?utf-8?Q?DZa65urxEcRuO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THRCRC8wQ3kwNGUyaDdUV0hmZ3RPMWZRbnlieDcxMWZmLzBrL1F5WU5hYkpj?=
 =?utf-8?B?b3pPZk5BdnJiMVdjekhTaHEySTM4MFYxRG5zaE95dm05ZnNnaDRKU2J1aUJJ?=
 =?utf-8?B?TnZuVHJMb0ZWcjNQNVdmMm1ZZVZ6ZEVJVjBnQzlVUTk0Qm5jSTZlOWRyK3Zh?=
 =?utf-8?B?RDJtb3hGNFNaTXpOM0g1MFZiQWVwQTA1dVdXNU9ESGZtT3hJY3dVQVkyVEg1?=
 =?utf-8?B?Z3BKbFJwaWo3Rm56RWtvbThNck1sOXBNaTlmTzFmWjFzMWdwbUcycVNTSWp5?=
 =?utf-8?B?UUZQaWovb0krMmFKbTRzbVp3dGNBa2F1c0txUEdTU1ZFTzdTRXFEa2NGMzBW?=
 =?utf-8?B?dXB5azdTQk5McEJKZ3Zja25NN2dmaWt3akJTOVBja3JFYlg2T3VhSjlyVHBw?=
 =?utf-8?B?dlhQMHdQZDlXb1dQaWtJek1ONHJuRVJYSjlvenlXcmpJSVBGMW1mQ0JNcWdi?=
 =?utf-8?B?UkhTdTA5NUg2OU5YY0huaUVKc09yZThHdlFlZlNFK3dzVENXRzluaW5tWUQy?=
 =?utf-8?B?b25vSjNoY3Jxd2Z5VnoxbS9ENTBzUC8yZklVS3RWSEhuKytEQllLd2Juc1E2?=
 =?utf-8?B?VGZsK0lFMkNnc0JIYnY3eEMxUkdUbTI5TjZ2UUw3T0o5aStScFp4bkJzdUph?=
 =?utf-8?B?Q0ZONFA1VzJaMk5jdUFUcXYrSWQrWURxNW9XMWhvRjhOQXpSeXBQblg3dk9S?=
 =?utf-8?B?TzMxK2U4bmxpclMrWitCM0sxRHFJeDQxeWNnQjA5NmduSTBRbDFZWVFRek8w?=
 =?utf-8?B?Qkt1QzNwd0lOSDMrMXNRSStvK3Z1QUovdm1RQmJSTnpaNEJiUDZiRHhnTDE2?=
 =?utf-8?B?R3hLaXhRNm82NTc2NnJOaC9ic2NZQnFaeFFjQ0lCSzUrcDMzMjBydHlzU1BB?=
 =?utf-8?B?SnJ6OXNQZWFlRXk5Tmo1d3krZGZXOVAwOWdIb2hYYTFQNXRHdkdsM2ppbzhn?=
 =?utf-8?B?VnRLNUtCTW51SmVmWEVKQVdMNnUrR1R6T252MTFDV2E5VkxEVmFoRGZFdmh1?=
 =?utf-8?B?NWNhR0pUcXhoU01oOFlVNUhSaHZUQloxZzdvYXNSOE9IQk9ldkI2YmpESTI2?=
 =?utf-8?B?Q3ozcFRhcGN2bVptZ1RYK2hGTnppWmVQbmVUa1d6UkJYdlduNG9mNW5PWHln?=
 =?utf-8?B?TFhsS2tiaDBhWGJONEU1K2RHSGFPbVFDQW1rSUsyQU1WYTN2TVdBV0F5RnND?=
 =?utf-8?B?YWJQeisyNG13aGFrOHpXUXZteE0vbWZ6dWJSRjVQT2xkdFdxM25nVXJsT2w5?=
 =?utf-8?B?RC93amthMlRzRkpJZXlCNWY1NnFMMWVzNG52Q0VVcFJVUlNqaFBrNHB5Rmcv?=
 =?utf-8?B?Y0k0c2RJM2hxSVVkSWJqQmJVeFVGUmdOK0kybENGVHBiUGNza3dXeVRnOXNV?=
 =?utf-8?B?VlNscHJLKzdSeTNGT0dMdDZPb01ab0VZaHAyclA2TGNCcTlmdWNINDR5M2xX?=
 =?utf-8?B?bkhwMWQ3NzZZQ01adGw3b2wzVzlSTXY3R0sveVFWTGNKaGdGVVJ1SXRYVytR?=
 =?utf-8?B?SjMzWXBKS01TMW5Gdml1VHNiZDdmTzZTcThra0pvNnN5aHhPTXVYVkhaNmRH?=
 =?utf-8?B?cjRFaVRTWExlRFpCbGVOeTRUTXdhYXlNSFBySFREc2U5bXZlczI1ekpPVjV2?=
 =?utf-8?B?aDMyNzhKM0NSRkNKclJjZ3drT2YyclBEbHBQNGluM0lEajJKbU82QmZmYksv?=
 =?utf-8?B?TkdKRTE4MXplWWNFY0pLbTNDT20rRG9iaTRNNk1HMnhrbGlzWTJTVUdLYnR4?=
 =?utf-8?B?aElFbC9kcXpRM3RmRTJKNDZ1T2RzR0UyT2V1eW80a3pTSmFYUnN0SjZrVnF2?=
 =?utf-8?B?T2Z1VUY2ZGRBNVhPeTFRSnU2aHgrSnViSUR1eURWeW53RVQ5blBOUWRFY1Bk?=
 =?utf-8?B?aXdHU0N1UWpTTU5BYnI1R3J6NStlazVtZVpmNWpqODRUVm1vUmFiT3l0NGJK?=
 =?utf-8?B?WlVMek5wQkJBbUNNYWNwSU5VMlhtWURuZ2dEb2JFYlBmSFBneXJQd3BxTmlD?=
 =?utf-8?B?VU5TYy9KU3F5MlpOVGx1MTZmV3dFek8vQ3ZES0Yvd1YydkRSR21PQnpkbkhG?=
 =?utf-8?B?NXRjOGlDZ3phVFNrYVkwS2crcW5wKzRYaXV3Q1UvVHFNSURXS2xuYkRHdU9w?=
 =?utf-8?B?aEdzallXYVdxUFBKOWNzcGU3VmlhWkxqWEV6eTQ3WThOVVpqdkIyL3pTbklY?=
 =?utf-8?Q?g4ygKfDz+6H9O9/ng8H8KOM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 53b0b2e7-cee1-4934-e4b8-08ddde3235ee
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2025 08:35:39.9189 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ALe5jsBbLfmNUyukInQApy4ppPCrYb729YalmHNvLnZohRXSG1AYHENF7njYVjgcT7CvgAlqxAVqblLennzcdduTMcDNqc2212NynKJYdE4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFE80710477
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

Hello Julian,

Hope you are doing well. I am Chaitanya from the linux graphics team in 
Intel.

This mail is regarding a regression we are seeing in our CI runs[1] on
linux-next repository.

Since the version next-20250814 [2], we are seeing the following regression

`````````````````````````````````````````````````````````````````````````````````
<4>[   25.645493] ======================================================
<4>[   25.645497] WARNING: possible circular locking dependency detected
<5>[   25.645501] 6.17.0-rc2-next-20250818-next-20250818-g3ac864c2d9bb+ 
#1 Not tainted
<4>[   25.645506] ------------------------------------------------------
<4>[   25.645509] swapper/0/1 is trying to acquire lock:
<5>[   25.645513] ffffffff83488270 (cpu_hotplug_lock){++++}-{0:0}, at: 
static_key_slow_inc+0x12/0x30
<4>[   25.645526]
                   but task is already holding lock:
<5>[   25.645529] ffff8881063fce30 
(&q->q_usage_counter(io)){++++}-{0:0}, at: 
blk_mq_freeze_queue_nomemsave+0x12/0x30
<4>[   25.645540]
                   which lock already depends on the new lock.

<4>[   25.645545]
                   the existing dependency chain (in reverse order) is:
<5>[   25.645549]
                   -> #2 (&q->q_usage_counter(io)){++++}-{0:0}:
<5>[   25.645554]        blk_alloc_queue+0x324/0x360
<5>[   25.645560]        blk_mq_alloc_queue+0x6a/0xe0
<5>[   25.645564]        __blk_mq_alloc_disk+0x19/0x70
<5>[   25.645567]        loop_add+0x240/0x430
<5>[   25.645573]        loop_init+0xcd/0x190
<5>[   25.645576]        do_one_initcall+0x5d/0x3f0
<5>[   25.645581]        kernel_init_freeable+0x3cd/0x6a0
<5>[   25.645586]        kernel_init+0x1b/0x200
<5>[   25.645591]        ret_from_fork+0x26c/0x2e0
<5>[   25.645597]        ret_from_fork_asm+0x1a/0x30
`````````````````````````````````````````````````````````````````````````````````
Details log can be found in [3].

After bisecting the tree, the following patch [4] seems to be the first 
"bad" commit

`````````````````````````````````````````````````````````````````````````````````````````````````````````
commit 8f5845e0743bf3512b71b3cb8afe06c192d6acc4
Author: Julian Sun sunjunchao2870@gmail.com
Date:   Tue Aug 12 23:42:57 2025 +0800

     block: restore default wbt enablement
`````````````````````````````````````````````````````````````````````````````````````````````````````````

We also verified that if we revert the patch the issue is not seen.

Could you please check why the patch causes this regression and provide 
a fix if necessary?

Thank you.

Regards

Chaitanya

[1]
https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
[2] 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20250814
[3] 
https://intel-gfx-ci.01.org/tree/linux-next/next-20250818/bat-twl-1/boot0.txt
[4] 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20250818&id=8f5845e0743bf3512b71b3cb8afe06c192d6acc4
