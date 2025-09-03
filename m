Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FCEB41C8E
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 13:03:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F4A110E763;
	Wed,  3 Sep 2025 11:03:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ejQY3+Nt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3205A10E763;
 Wed,  3 Sep 2025 11:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756897424; x=1788433424;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jvADcyBBFM/qToyF/oJd2RXipXNhfC84AShTi4Dd62E=;
 b=ejQY3+NtuwFyJLR9bGCblZw+S8GJjxis4sMiAwMLE5bwh3EBVgRvRNcg
 Omh0M4cLqE6fDalX0Ay/kBEC4N3kMeioOFkUpZ8acut6AWDvI2pwLk078
 ugp90Ib94AgCLuNtz2KwbmMUOD4QUnYRmQjRNAKfGeNObuC4fHFTmRx8P
 FcTg97n9eWzW51Nc8ZvAQRQQwxgX4xwnVgH2Y9g4K3Q2S0DbFMTSWO4It
 oMuFKRegHYY43+f0Vv6xmtUj/MSduMH2uauU0sp3RvNsNx7ofmgEifvhz
 HTQ/5zfH9ZvIEqjMvJgjliuEvRan+F77tsJkuIgvfB1YeOvijA6ChXY/z A==;
X-CSE-ConnectionGUID: vlV4LdTDSCKVtaMubBHsyQ==
X-CSE-MsgGUID: hScSlE7sQVmZKucL2RXs5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="69819400"
X-IronPort-AV: E=Sophos;i="6.18,235,1751266800"; d="scan'208";a="69819400"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 04:03:44 -0700
X-CSE-ConnectionGUID: CNsYmgWUQBWlkWK5rwJ8og==
X-CSE-MsgGUID: pjo1ALiFTIG/BvdS8xemWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,235,1751266800"; d="scan'208";a="171129171"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 04:03:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 04:03:43 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 04:03:43 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.44)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 04:03:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G9giRz++ewXwV7FRZmBov2HSwxaWQo+3oYNme+z9eoAVMj9W+oNUYC7EaDCI0OCrH/IalZXpnPvozLzunOcYpKVf5iOmhk55q5SfTitwZL+XquZ3SgRaViBNNlzDElTU09LwnK73KRGUosacDh4baVa2Llwrj2J8EgM0uyr0BHjpwgP6aykei8Du6WWEPIN0PYvrqW2lMOkxdlIF1A7RPfQjhxcCHinDThNmkCTyoNn7ZloKb7R7hyYlBHYPAi4ks2M5Yi/vTTfiiYn5OvKTqnQcSGoQ6TLyGRWu5U9YCPbKAxAvO+m8rq1lez2HGytqT+zygmn81OoNbGhGjDfPSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i7tqFMWOKyLkQBZ5968oUKGJX+at9J3oJGQdCKvuNSQ=;
 b=qhcqvuuN88dhFwdjDgFaCQ7xAeLVaV0Ylxr0/564REPzRG823EHiqFjPG1YMRCbNk3luX75aFl23iE1gN9+J3XFbIXES1KMTy7Fy7nLu4Zt7SHgIJgFgB/2tkm2oS8DFod7ihB38rzylshYTG0e5uLSfYcY3sBSOsvFTKD1TassbBWWwIVc3w1lm6Ya/kwWxviZ+4OObFNrKYalAaW1/35IqZbB7j83qDtMOT9kGIzXDBR4cizzlyfIE4p+Zt12ZFIe8i0nvVJjfB86/sImJ8zvUBUovXS1dZYb1nnMdHmNRanm1+mrARjxtCt+pftZc6QFs+ZrXal+bhCwOPpLA1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH3PR11MB8706.namprd11.prod.outlook.com (2603:10b6:610:1d1::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Wed, 3 Sep
 2025 11:03:41 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9052.013; Wed, 3 Sep 2025
 11:03:40 +0000
Message-ID: <87d7d004-fee8-4c9f-a701-b670de963dd6@intel.com>
Date: Wed, 3 Sep 2025 16:33:34 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/hdmi: Fix potential overflow while using
 intel_encoder_to_tc
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250903035022.3654997-1-ankit.k.nautiyal@intel.com>
 <29e10fcd0e9bf9e995739cf53ae8f49544ebb06a@intel.com>
 <bdeae305-c155-4a6e-9d6f-32f44d425ebf@intel.com>
 <f39482b5b85dfe3e89328ce32ada5f931ed34519@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <f39482b5b85dfe3e89328ce32ada5f931ed34519@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0036.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH3PR11MB8706:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f4b250a-3e29-44e8-3056-08ddead98a48
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OFNNRERhWTlWRno2Q3hrdFdLdFptQXR3dW4wdDZ1akl4clhmcWtpTGhjdUFF?=
 =?utf-8?B?WWpacGF5Y0hoc3VRa1lXSHRCbERFM2h4RHptYU9KZVQ2TW5OSWxFeWE2bUdV?=
 =?utf-8?B?bjY0Uk5teEpGcCtRT21tMEh4V2FaYTd5eVFUVjAwUld4blE1L0FyMDdEQ3or?=
 =?utf-8?B?MXRhTCsxcitTTC9UeklRaklkQ0kzSkNzcVZYcWE5b3NiNENVUXRUaHRRTk5u?=
 =?utf-8?B?SllZWGEzS3krTHd6S2N3Mmp4OVphQ2JOd1ExY3hHTm1uVGxMczc1K01vZzZV?=
 =?utf-8?B?L3prc2tJZ25hS1ZHOGpiYXVwRE03dWZyTlNOU1ZvYWI2aE9aQ0d3QTFzdmhn?=
 =?utf-8?B?T1p1T2g1b2NadW9QRjBJOUNQRmdra1VvaDZhYUxyam1ZejRWdEdhb0E0N0ZU?=
 =?utf-8?B?YW41b1pKRVpuRkZ2eG50bThuTzlnbFZPRVp5SGp1bnZYbnd5TWVmY2p6SXl1?=
 =?utf-8?B?TVJ6c3FSUFR6TFNHQWwzbk5VMk1hM2twYXpMd0ZNdWRIOVladGpuZjNOdDFL?=
 =?utf-8?B?U1JXTVFKV080RGVaNGY2ODM2bW9XWGdwd3ZneG1ZOS9kU01MaGUrQjY3S1di?=
 =?utf-8?B?bWo2UUs0VzFrblRqcGNRYXpvWGlHUmdqeCtBN00wc2EwY2xTUTVTRXp0c1pr?=
 =?utf-8?B?VklVUi9qTlBnWGJvSnFOQWJDbVlRTkswS1VZY1BoUTdublJRLy94eDhNMU1v?=
 =?utf-8?B?SDVZZmRWeXBVR3NSMGQrOGNKbFJEbnBJQktZa1BQc3RmMzNPNWV5RjhDdytP?=
 =?utf-8?B?bFFrejR3Y3RMZFRoU0JnYlZJbHJzcGtmaVhvQmVhbEd2NElOYWVDczVJTEly?=
 =?utf-8?B?THBJMlI5UE9SWXRreWZickxPdlJrTk55TERlc0taR2E2RDc0dXUrU2c4UlQw?=
 =?utf-8?B?MHV0RzBKbXhOcFJ4RUpGdi9tQ1EwbmpRaHRoNisrdjQvYUF6bHM4R2JScjd3?=
 =?utf-8?B?ZTF1YnBLR2ZFSVl2bDM0NWJTQ1U0YWRKZEYwSFgrZG94NGJtbDFVRlJjTDYw?=
 =?utf-8?B?NnY0cFR4MHhoSzlaaHRGMmZQT0l3VlBwSlc5SWk1Q1AxYTUvaER0NGpYOTBX?=
 =?utf-8?B?VkExMnZMdVhncTJQN0EzdjBaMSs2WDlTYnhXcTVVWDBRM3dBQmN6c0VFMmtO?=
 =?utf-8?B?TXFiQlZSdVBlRVUyQVAvSFgycm9TWmNLVlJXT1NBQndCbnh3U0l2dGZiQ1Z4?=
 =?utf-8?B?QWkrTk9yOG54bTRVTjhXend0NUlvZitUUDRwc3J0OWh1UFhmeHpCNGc1M0NX?=
 =?utf-8?B?ZHcrMnpGdTQwMGhRREQ1alBWbTVNWnlUSEZBWVdDYWVBTmZhdnl5WkpRbmEr?=
 =?utf-8?B?ZmJiNXBOdjQ4ejhPMlFPWDlxU2c0em8xVnpBaGMzUVB1T3Q0S2dzZHVUVlRm?=
 =?utf-8?B?RzBoVk9WVEJJRnBaNTh5REFsa1RUdDZJM1F4OStJSHBKdFlDYTlock5jdm9k?=
 =?utf-8?B?RVAwM0NBNG5FYnJFR095L1lXRGd3SXBvLytlVmdDZTFaNXF5M0ZWNFprc2hj?=
 =?utf-8?B?d1VuNzZIWmlZaVFmQ0tEbGtMZDF3M2VaSy9FQ2ZQejJaRmZjbHF0cFZaTEho?=
 =?utf-8?B?Yllnd2FEU2V3Tkp1ZkZPTXFGcDg3MGxVRHhqOXhoUlNjSkM4SUI1Wm9jWWRi?=
 =?utf-8?B?Nk5xdksrNHk4aUFUS2c3RzBuUzR3QUlXbXRWRFpxV3RyV1BiSER3MHI1Mmhp?=
 =?utf-8?B?ZVZCRmV4eDFwbGFyQXBENWVQWmR2QTUwOEoxOGgvV1k0WEpINjMyWUNJdU5p?=
 =?utf-8?B?MENubW1sS2JLSEdCZFUrM3ZwMHB4bEZNS0YzLytIWk9lTitGdVJTQ1E3eXBh?=
 =?utf-8?B?TjR0ZEwyb2dwUDdJNFhBUHloSEdPTEFtRWZTeEJHQkNQekZuU2FoaTg1NEk5?=
 =?utf-8?B?NEhKNFR5dzh6STdNMW9UTkU2UytqQzk2ZTlLazdxQ3pSR0ZteW8rTGlBOUlU?=
 =?utf-8?Q?xoT3LQdwYLo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TEcxZk5xSWFNM1BoZUluWWxYek9TNFZVRzFBVWFuRjEvRXhLbnZTKzVPbEhn?=
 =?utf-8?B?dkJuTUt4a2tLQ25DSFhDejFuaGdMSkJtRHc4UnBld0ZPaXlCd0MwcHpKYzcy?=
 =?utf-8?B?dTFEWExTSnM5ZjJ5OUszQld4YW56UU40N1dUdGlkdFhPaitrOTFtWWlRaDFj?=
 =?utf-8?B?NUJZNnl4WlZCYUlOZ3pNSDhlUjlGUG93b1hxSmx1NVR4M2llcHB4Y04rZTV1?=
 =?utf-8?B?azdvd2hOUVEvRG5oVnp4TDlxL0JXZG13NTNwTmtGeTlCZmZ5SlR2NnJLS0xF?=
 =?utf-8?B?VkRLbU1SdmZ4Z2NMdnllSVBjTngwdXNFMEdmTFpGRy9qV2w4eVBQcFV2NFJQ?=
 =?utf-8?B?VkNIUUZYWjNRbEtKYnJWbWlGTXRqcGw0SHJQbHI5NCtJWXR0WThocjdkVGZm?=
 =?utf-8?B?d0wrMUEyK3hoZWhXOUE0RzIrVXdaamZ0aHdFR0V6UGxNdDNNK3MrcURkYy9P?=
 =?utf-8?B?NkErQjlvQ1ppUVlCRXdXQjJtU0NGQ2tTT2Uyak9RaUFCRjFLV0plSERGUG05?=
 =?utf-8?B?akVHNDhaRDRGbW5FNEFqMzZTelViTDkvbkRrK0JwWnFKQXhOODRrdFBUNU9T?=
 =?utf-8?B?WnJYRGk0a0FGanFOdkViSzVneGRoWUxGS0o5OVFWenZKZisrRTMwanpMZFF6?=
 =?utf-8?B?QUJLclliNU4yOWU1N1AvclZTdWR5UURMQ1dadnV3L0dLL2FHdENFWXhDbCtz?=
 =?utf-8?B?VmNuOWZyUTJoVjVLNmkvNHE4RldBZVBwcW8wdVFaRHVGWEM5QnFFYTBNVVFK?=
 =?utf-8?B?U1ZHZC9DdkliN0oxVTJhejI5djMwcDRNZUM4elc0ZDVCTGtRbFRsREFoRlBJ?=
 =?utf-8?B?WmlZRnNmS2hlUmVHL1RzVDJjNEFkS1VmYVJYSUlodzNYOEtJSC80bnZtc1pR?=
 =?utf-8?B?by9QVFNId2NqdVloejhuZWZLcGlQRzVTS1VJRE1zbUVJZExrV2Nia3NERndj?=
 =?utf-8?B?Q3BoUGNUYzM1WDh5WFZqZkpxdHFJbFM1c2N6VFJsL2dFUlBTT1RQVHVQelpU?=
 =?utf-8?B?STVRQzliSWZkRWxZaGVHOEFsZmdCVGVOOEVhNkpiQXVjS3gxdi9sNXFCNDB3?=
 =?utf-8?B?aWM5c2g5djM4dnpNZHVxN09nOC8rbmZEcnl0eWhCTDlaZFlzMmIrNXBReHZj?=
 =?utf-8?B?Mks2Rlhzc3lsZTdIOElqdnhnRFZ6eU9Fc2I1bCtCckN6VU9KUHhTQ3hoNTJi?=
 =?utf-8?B?VFdHeGV4TUNhV2FjVHUrUWdGeE1HaGU5dTl6aVp1bXZKM3RKWnFmQlZ4c2pz?=
 =?utf-8?B?d3R1dHptdG1OZUlOOHlVT1Y4L1dPbzZ5ampacWt2cWY3Sjg3NldYUVFtcHM1?=
 =?utf-8?B?OXlvZjhqcUprcmZYbUJQYVZCQVZRdzY4a3BYRUlMSVlWRzFHWjlTS1pVNEk1?=
 =?utf-8?B?d1locGxoZk5GS1BBanhhcnYvREJhNFI1bC9jbS9vWXFJdTRVK1lpa0RsQnE1?=
 =?utf-8?B?eXFNYm1paHZ3SWRCa2U5V3JoWnY2Tm9ra3RUcjVqN2FsM0txVWZvcVR5ckFh?=
 =?utf-8?B?ek1Kc2xGdFQ5Tmlyb0JyMkZUeUNESWl2OTVBTVdLQjNtTGY0MEVlVzVQaDMv?=
 =?utf-8?B?aDdVekU5cHZsV0huTHh4cC9LcEVtUzFqU0poL1ZYTWVjWXZKNkw4THRKb2Js?=
 =?utf-8?B?b0tUbnBuVi84aVV0T3ZnRFB2OG92b3NTcEdZd1dRbGVUS1orU3MyS24wNHVD?=
 =?utf-8?B?ZXNvaW9BeGZ4SU5hWU1nZ1F6MEpxRnpjejBnUldYbTVmSitocVpnNnd3TFB0?=
 =?utf-8?B?ay9NY0F1aHJGUUJBNWk1YWh5WWhCM2JGbzdyWkRlc3RrcmRWK09SMWFLTVZu?=
 =?utf-8?B?ak5DV3ZCWnZEUkxNSC9Wem5PMlJpUncxcVZHUGUxbGRxdWpPWGo1L2hvNVhI?=
 =?utf-8?B?UkNOTHhreTFtV2FSTXRjbnlhUTZUYndXeGRZd2RUMWs0NkdHOTcrL21XY1Jm?=
 =?utf-8?B?REdVM0pDV3FRVkdYekdVNFVRbzBaa2ZVeklwTlVWS0c5cjdydnNUY0ZZdGRE?=
 =?utf-8?B?Ukh3Z09qdlVmT2VJalBEN3BrM2s3K3k3SU04NXNpVURydzZIbUxxNGtXd21u?=
 =?utf-8?B?N1hwR3VGRGQvVDkrNjZ1QXM1dzUveDFNNU1Cd1R0UEc1Rk1qTW1wTWo3NlpR?=
 =?utf-8?B?ajBCTkhrU3ArWFJSSkhnaUVaSHV5WEkyME1BQUliMkQ4TEgrTGJiM3BTalVo?=
 =?utf-8?B?dUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f4b250a-3e29-44e8-3056-08ddead98a48
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2025 11:03:40.8646 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sybT8BIRhwoqA2zPC+6Ad9/biN2MLvl5FCrjnISwOLWL3t2uZ444H6ahh5uss8uYCf8Nxc5byUBU0zZgTvI2rPdv1VDPHdzTOHtBhXMR+iw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8706
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


On 9/3/2025 3:46 PM, Jani Nikula wrote:
> On Wed, 03 Sep 2025, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
>> On 9/3/2025 1:07 PM, Jani Nikula wrote:
>>> On Wed, 03 Sep 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>>> The helper intel_encoder_to_tc() can potentially return TC_PORT_NONE
>>>> (-1) and cause overflow while computing ddc pins in
>>>> icl_encoder_to_ddc_pin().
>>>>
>>>> Check for TC_PORT_NONE before deriving the ddc pins for TC port.
>>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_hdmi.c | 12 +++++++++---
>>>>    1 file changed, 9 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>>>> index cbee628eb26b..85f70cedc40c 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>>>> @@ -2791,10 +2791,16 @@ static u8 icl_encoder_to_ddc_pin(struct intel_encoder *encoder)
>>>>    	struct intel_display *display = to_intel_display(encoder);
>>>>    	enum port port = encoder->port;
>>>>    
>>>> -	if (intel_encoder_is_combo(encoder))
>>>> +	if (intel_encoder_is_combo(encoder)) {
>>>>    		return GMBUS_PIN_1_BXT + port;
>>>> -	else if (intel_encoder_is_tc(encoder))
>>>> -		return GMBUS_PIN_9_TC1_ICP + intel_encoder_to_tc(encoder);
>>>> +	} else if (intel_encoder_is_tc(encoder)) {
>>>> +		enum tc_port tc_port = intel_encoder_to_tc(encoder);
>>> intel_encoder_to_tc() can only return TC_PORT_NONE if intel_phy_is_tc()
>>> == false. But intel_encoder_is_tc() just above means intel_phy_is_tc()
>>> == true.
>>>
>>> This case can't happen, it's a static analyzer being overzealous.
>> Agreed, in this case tc_port is valid, I can see that now.
>>
>>
>>> Adding checks like this to please a static analyzer leads to misery,
>>> because it adds unnecessary code to maintain, and it will never be run.
>>>
>>> I think it would be more interesting to make intel_port_to_tc() WARN on
>>> !intel_phy_is_tc(), return a bogus >= 0 port, and ensure all callers
>>> only call it on TC ports.
>> Hmm.. I can try this out. Can change intel_port_to_tc() as suggested and
>> ensure the callers call intel_phy_is_tc(),
>>
>> before calling intel_port_to_tc()/intel_encoder_to_tc().
>>
>> There are few places where the callers of intel_port_to_tc() and
>> intel_encoder_to_tc() specifically check for TC_PORT_NONE,
>>
>> so those places need to be changed as well.
>>
>>
>> Thanks for the suggestions and comments. I will drop this patch, and
>> will prepare for the suggested changes.
> I think with those changes you can eradicate TC_PORT_NONE altogether,
> and get rid of a whole class of static analyzer warnings. And the code
> becomes cleaner all around.
>
> I've had this patch [1] for more than a year, maybe finally time to
> merge it as prep work. You'll need to add tc checks in there, so it's
> cleaner to lift it from intel_ddi_init(). And you can have separate code
> paths for tc and non-tc, making the whole thing much cleaner I think.
>
> BR,
> Jani.
>
>
> [1] https://lore.kernel.org/r/20250903101050.3671305-1-jani.nikula@intel.com

Great, this will indeed help, I was thinking about how to clean this up 
before starting, and this makes it much cleaner.

Removing need for TC_PORT_NONE will further simplify things : just check 
if intel_phy_is_tc() is true, then print the TC-style name otherwise, 
use the regular DDI port format.

Thanks again for the guidance.

Regards,

Ankit


>
>
>> Regards,
>>
>> Ankit
>>
>>> This obviously leads to issues if it happens, but hey, it shouldn't
>>> happen, and intel_encoder_to_tc() returning TC_PORT_NONE is *already*
>>> such a case. Just move it to lower levels.
>>>
>>> If we start checking for every impossible situation, and propagating
>>> errors for them, our codebase will be 90% error handling.
>>>
>>>
>>> BR,
>>> Jani.
>>>
>>>
>>>> +
>>>> +		if (tc_port != TC_PORT_NONE)
>>>> +			return GMBUS_PIN_9_TC1_ICP + tc_port;
>>>> +
>>>> +		drm_WARN(display->drm, 1, "Invalid TC port\n");
>>>> +	}
>>>>    
>>>>    	drm_WARN(display->drm, 1, "Unknown port:%c\n", port_name(port));
>>>>    	return GMBUS_PIN_2_BXT;
