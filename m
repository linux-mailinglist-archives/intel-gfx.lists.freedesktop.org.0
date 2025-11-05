Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF671C33ED3
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 05:26:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADD3810E079;
	Wed,  5 Nov 2025 04:26:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e+tWFsx6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 045EE10E079;
 Wed,  5 Nov 2025 04:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762316764; x=1793852764;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e8qK42iDwdpO7A9UOYv3IaYouiXHkSZWbqOSccVHOck=;
 b=e+tWFsx6f+VZ6aSH0apMdhrN5lvE47HJBl3YXb7IcImcaiqJoSL+7VGG
 0jvjBxsIwnqmZZLMk+8CwrV/Tyj8OtNB2uSV+90/6YIx6SZcNLc9tMnwo
 hmX2X93oapteWja4d2wh6sPYJwNNOp5fRDhONBfHPi7+uC8hMb2qxQnsp
 SE57PKt/gWdEGvfeSMNZkn1QnwrLuVmakpgn/oHb8o8C6SigBDWc3Id/p
 e3qTlSSMfEgs1aWuniNmgjOYdOJ4oXlllBdYejTlIJF3YIkAppSLPc14x
 vosdw0q1UsUozLIu5ViNXCu1iTe/lo5V4AQQQ1UURQ4jn9fG635Q+nKrG w==;
X-CSE-ConnectionGUID: 8/nxVARDRA6z4/WXUm8/hQ==
X-CSE-MsgGUID: +zO6KyeFRiyOfz7lTV+Xfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="75029470"
X-IronPort-AV: E=Sophos;i="6.19,280,1754982000"; d="scan'208";a="75029470"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 20:26:04 -0800
X-CSE-ConnectionGUID: H4nRFY/3Q8yjM6syQcihHA==
X-CSE-MsgGUID: 6gRJisM1SNGpodboIAorfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,280,1754982000"; d="scan'208";a="187032988"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 20:26:03 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 20:26:02 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 20:26:02 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.37) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 20:26:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CCXi73t4NMib9uyY/Af5d3pG95hRs52e6l7QshbrxaMdmtukQuzG3Je7nNLVw9xxGFCB7pDM/KpDyc5nXkwN9tWggErFMJnfSv6khHeAGBAEsP0wze7mAeejGNQVQBHHMPS1Mf4hVv9Qh8CH3wCtTvjyMKHQ7FyfEoCC1b/3lvtHHrkX1oUtmvy9pAbwZP6VbYTr2dc6XZREhCfSB1nPdGyeK9Sq/BeBhQSVAsk2qTxp+vv3RFB4/MpTZBRu0/FGKKqKeTfcDscRrTbTTlhHIpjdSEoNkV+XNOjjKANm0Dma5kxFpn6Mq046F/3ITUBPYZDojTZzot1sN6DZm4vbHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sQz6vuZXMrOXJzK130yOKHAoDqSmzFBvl64/3EI5h48=;
 b=yN89ISuqq0rfQFXCiTvhArnuW8oZ/MxMG/3yKDnjG1kVbd3SvIhuf8gJ9mGIcSZ3YjICe3qUKzgVnReUP05OLL/edDNuXS4uj5gOqJXax8IA9BUNIMnZRuqvXYROqHBita37ZpiuThQfObFFJ0Wggg8CAwCaJD86HMfbXXs1qsSsaJ1OTWxLR5c6ZyhxRZvXE91bfQTEYcLsD0mkga7uk+VG+6YjFJgThsvrD0FqqXAEKHdFMgZ/N4fiIdrluAz18HRbbWl98ojJ+x8MPhCIy3QZz7+ruxiC3Q97cbynwvYdNIAmaS5OhWk+ZwPa9JlU8MJ79DfZ5f5wxY3lflDg1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA4PR11MB9249.namprd11.prod.outlook.com (2603:10b6:208:55f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Wed, 5 Nov
 2025 04:26:00 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Wed, 5 Nov 2025
 04:26:00 +0000
Message-ID: <6487f8b2-3be4-4844-9e4d-784abecccb84@intel.com>
Date: Wed, 5 Nov 2025 09:55:50 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND, 06/22] drm/i915/vrr: Add state dump for DC Balance params
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251103053002.3002695-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251103053002.3002695-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0119.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d0::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA4PR11MB9249:EE_
X-MS-Office365-Filtering-Correlation-Id: 32198c4a-68f1-4dce-52a5-08de1c236c52
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OTVSRzQydzQzRkpxMkJaeDJSaTkrZGtXbVZYMVdoTkFPTXFHczZqL0V3S0Zu?=
 =?utf-8?B?cCt4TkxVazhtTk5WUzRLbGNERmYvQkZESnNoSEpRK1llekFXYUtuVnVHZGVV?=
 =?utf-8?B?L0dCYXFaT2VGa3dPYThhblRxYkIxWjVIcmRMeFdFRjJ2eXRZdFpQdUJRQ1JP?=
 =?utf-8?B?VmNCK002Q3BnWHZ3M0F3TFZGcWd3OEU2dlZWQ1VNRXFVM045Y1FtNmxDbEVY?=
 =?utf-8?B?VkNTNFlVejNwZERqQ2h2MUNxWmtSdWxMZk15Qy8yTlZ1NEJIK1lSYm81alRO?=
 =?utf-8?B?dWc5cFFpb09KcW9KS0RsblBxbS8reSt6eFRra01maHBiaXJXVWwzRy9vaE9V?=
 =?utf-8?B?Mm45UDQweXBiRnRlWW0yelNDS1pRSXpTa2pqRGx5WGZmNlhhbDE3TkRxYmc2?=
 =?utf-8?B?Wnlra1RHV0NCOG8yTmVxSE1tYnJWZEprb3JlOEdWVXhCNUtaRDBYdFBpQzZY?=
 =?utf-8?B?OER4UjQ2Q3pFR1RCUzdSU0hFQUFoMUVWSkxzbGM4SHJ4RFNKZjlzeStvTm9z?=
 =?utf-8?B?dE5XTldwVzAvUGZPYXlKeE1YU0lwTGFySFRkYkZTK2lrZVhwKzQ2Nks2Rlhw?=
 =?utf-8?B?ZnFjYWtKVVpZTjRiZGU3WVd4Uzl1RW5IT0VWWTluMnhkNW5GMG1oRjRPWVk4?=
 =?utf-8?B?RWFUZTBFUlIxWXZhRFlRTG1JS29zWDlrZGpZNmlkM25zUVUxSTZiYzFpQTZk?=
 =?utf-8?B?a21ZK1lWZEoxM09ad092emRYQndDSHZGS0ZpUnBUemZGdENMdy81eHF3WmRv?=
 =?utf-8?B?QkVvTUpsVURIeC9BUnUzZUNnZXlVS1FsTzlHdk1hUFl2RUxJc2l2Sm5YcWNo?=
 =?utf-8?B?czVUM3k2ZTdSQnByR25MVkl1Si9UYm96YTFSeFI2L0VsbDlibnNnQVZxQStm?=
 =?utf-8?B?cUl0YlJvMkdDRkJzKzhqYmhOM2oyVExveG1XMlpsaUprcXBwMjl3NGRMZ3Rn?=
 =?utf-8?B?Uktaam9lNlEzRGRKdDFIM1VSQTduZDZtNjNZMForUXpLdEJqNTg1cDlFREIx?=
 =?utf-8?B?Qk9ZUmFGWWdLTGIyZ2d2OW91ZkJUMFcxS2tEd2c1SkkwQlVyQkc1andhR25t?=
 =?utf-8?B?Y0xvdDM2Q3JQbGZvN1ZYZEI5NUlYdzI0c29IQmlEUEh6ZUJDaXlTZi9GVVJr?=
 =?utf-8?B?QTlleUNHMmNTbzZvdDJWbUQ5WjJpVXNQSXV5NU8zZ3VrY1UxS2w2WUtEY3VC?=
 =?utf-8?B?UUNDQzZKdThpbW9pbnBNeHE2ODZFOERPMWpYanVmNzgyMWhsbjZNcnZyYkdP?=
 =?utf-8?B?cGxqYVNNKzB4bjRnanA0UlpKTDBhYTNTa1pMMTZEMkpiVWJPQUE3RzFwTUQx?=
 =?utf-8?B?NXp3bFVkNERhVmNyaUorRkRRZXA5ampFTVpjaTNhWHp1Z2hFY2xmZzA5M2ZC?=
 =?utf-8?B?aHcxRWxMZ2I1SS93UEpJOWNKWUpNd2VQOTRtQkpyNWRDY1FLbjJQak5tTHRM?=
 =?utf-8?B?dlcvb0R5ckxjNDE0MDVONEZwQlNDWk5XR0pkVDJQak8rSzBaVG52U3RHMUxP?=
 =?utf-8?B?R2lsRGh4WTlsdXZtcEkvTXFyRjlYUDlpWUdscVNDM08wRUZEclVzVHN6clEx?=
 =?utf-8?B?cUpLeldoZTNkWHNXS2lqKzQ3NXdBT0o3c2hhK2VuSkhyNFA3L0U4Rmxkc0hZ?=
 =?utf-8?B?akw4S1FPeU1TVFlWeHBlR0xSLy82K21vblArVXlVVkRrTmc2WHA1MGhmd05Q?=
 =?utf-8?B?N2w5OHByNlQ4dVFCem1xMGJsNnRsNXBoM3ltM3ZEakFsVGgvRVJLVzFJaFRz?=
 =?utf-8?B?VlJmbHE5bExiSVdHanVrdWkrVWRKTTlyNW5MZ3paZWo3bFBaZlVmTDRrVmJp?=
 =?utf-8?B?dWhENU4vQ3dMelg0UjZTQUJYK0g1SjRtRm9hVnh4NFVGK2xCbTg0R3hQdVZt?=
 =?utf-8?B?VkxyVW9KdEJDQm84TzBMZUVsejNNOTJoN1lpWGpiNU95c3p1L0RQQWZ6UzBN?=
 =?utf-8?Q?Oa7qNHQp/cvGPlXHhIfXjsu0k9ojgwlU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z3RrTWNrUFVNM1R2VFdPdWVlNkwwa3RabTRDN083MVNJTzlpUjVVeWZHNjMy?=
 =?utf-8?B?bGJGN0FKMHVhUU9EQ054RElQY3YxRysvUis2U25ub1RiOTRWMmtERU1QM0do?=
 =?utf-8?B?N20xdDM5M2NGOC8zcFZ1MFBsU1N3eHY2azBPTmN6Z3lJeVVQM0xXa1pQMDk1?=
 =?utf-8?B?b2diQkdIRUZJcEVpVi9ub1JnaUprbUR6ZkZPMFVkdytOSjYya1U0aTRFTXlx?=
 =?utf-8?B?SDdIaFFaai9Mbkd2SEViWVRzeU9NOXE2T1lTeG1EeGdlVVNBQ3R3dG5oM1Bw?=
 =?utf-8?B?SGh4d1drVGp1elJPcXhkUy9pWWJQVGo0Y1MwYzJ2QXlVTDdPS243SFlUOGxo?=
 =?utf-8?B?L3FOMVFQdzdrQ0tid1g5V2NpTklqbWhkeFNnczN5aDNuanltcEFwWDFsYzdk?=
 =?utf-8?B?RDlNNFNKMzVia0JHbnJYV3hkQVZsK0dsUzlvZ1B5S2tXNDBtSWhib3RxU2RL?=
 =?utf-8?B?OTVvMmpRbjlEYTZwWHRkTWlZTnlSMURKcnNTV1ZJRGdOTWZRMUdpM0ZDZXc0?=
 =?utf-8?B?c1N4bXN0SjRLUmhVL0FiN0JXc2pBMDFLSVhPaVFDeEVzdDYzNGVsdWl1UXda?=
 =?utf-8?B?OVBzR01HRG1EaVkyL3B6eS8zZWtYd1dzeTl6c3hxQTZkTFlYZ1R1OWRid3h1?=
 =?utf-8?B?aldjZms5bWNVWkQwejY1OS9WemVTYjJpQUttblprRHY3bldOeG41aDdIWWZa?=
 =?utf-8?B?aEcwbFg5WlhKVzYrM3ErelV0ZTR4RWxVOVR2UTQxQUpCZ3h1QStVdzlQR2cr?=
 =?utf-8?B?SUNjVWg5dE5uOVJ1cjdWemhnSy9SNSthbHVZNklnVHV0RWVoOTlFTXM2MGxP?=
 =?utf-8?B?dHE3UmhRb2g1UTIrNnRyUHJoVGM1R1JjUUJFUmFjb3JMZlVVdjdDTEtsdWNF?=
 =?utf-8?B?ajkzVEU5SkhTM2I2aEN0MkxzczVoUGJrVVRmMUVtelpFQjRYSDVUU0w4WnQ2?=
 =?utf-8?B?TWMxbndEQi95UVhzdm5vRDl3YTk4Q3k3QlM2UlI0eElKQ0VlMUFzY2tlK1Fs?=
 =?utf-8?B?TkI2b002VTltbzJkcHp4dTJhTXlLK0R6clMwYXFpaE8wbnJXckdwSnY4MWY1?=
 =?utf-8?B?OXlXekordE90dHFmRlVYcjNyaDczQjl1Z2lLNVZ1VW02R25UVlM2dHZEQWlv?=
 =?utf-8?B?OU41OEpHaUFFNUZZY2Z6UExGUEpIclZObDlxcXNnV0F4R2ovNDRhQ3VMQ0po?=
 =?utf-8?B?THIwNUVNYTU4RGJsVlZmdjFNODgxbkVLS1JGejQzNk4vUGR0dVVuLzlEWC9Q?=
 =?utf-8?B?NG5BM0l1SVNuaDFtNlZvL2hjSTNEMFlsNFZMODlyK3pGK3BtRkw0K010L1pM?=
 =?utf-8?B?aC9vS3l1T2JUR3hmL28xbklCaUpRM0YwY1ZwZUxYdFY3NUVlcEJuT3k3S2Vs?=
 =?utf-8?B?VWs2UXBEK1RCMGQyelVzZEpIZzZjWFk0VjhBZ2Y4VG92Qlhta2NpME5TbzRF?=
 =?utf-8?B?d3N1d1N3V0hqcExBMEM5N2k4SlVsTmEwbkxGRDc1Ym1BdmZZZjRuZ1dKdTkz?=
 =?utf-8?B?WnBQNTJ3MFBrV0ZHODFTVFVlSEVwdzVsNnVNU1pYcHJTdFBzWWI0VWJtODYv?=
 =?utf-8?B?QjN1NUhTazlnQyszeThOZ0MyMUh4RW16QzNITndQblhXYjdheCtFSnBoQzhu?=
 =?utf-8?B?YTd3dkxyWDMvTmV4NUpkU01GYU5kVzdDd2h3Q1VWSU10T2VBL1R6VDQxcTRU?=
 =?utf-8?B?SkVRTUJmZm1yY1ZGdXlCSm5QaVNVWGZlY1ZuNE1MUEZQWGNPelNyVlE3OVhx?=
 =?utf-8?B?c3JQMFpPamR5WWk4dnB3ZUM4WVNGV0k2RVJzVU5zOG5FRHV3c3Bob1RKSEdV?=
 =?utf-8?B?NVV0QzdKTE1SOWZMblNXK2kyZ2FrN2dNMWliWmswa3dtR0I3elBBTHpaUVlT?=
 =?utf-8?B?WEIza3ZVM0tJT0t0YXgrRVhvKyt3N0phR2MrMmlBWTk0NXArY1ZrTUwwNGth?=
 =?utf-8?B?MExyejAxa01jTzhwdS8vcXh1d1NIK3I2U280aDF3WkRjUll0dHgrRXVRZXlP?=
 =?utf-8?B?QTBPT3pheHRUUXBtUkVUdVBqdkdjQTNiTXlPcVg0QUtPQ0hMUWFJdW93ODBn?=
 =?utf-8?B?WTdTNzBJWUlCWWladFQrTGpFZFFSd09LSUFTWWo4cnhuMVN3TXN4bHJnNHlD?=
 =?utf-8?B?OHdaTmxSdURMSXVUa2d1MGxsRk9vYXJmaWJhSlF4WkJ1Z2NLMXV2TnJ2RkZl?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 32198c4a-68f1-4dce-52a5-08de1c236c52
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 04:26:00.4787 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OPGOGnkAZB5KATawLAtbw91Wi1uwo5cA3rwqkLmhfaghoFTHMcsvkExXaTxcru/mh3G7LDSuN6KGvTJMArHkZPetrG7WysDBkONJtgSE/Fo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9249
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


On 11/3/2025 10:59 AM, Mitul Golani wrote:
> Add state dump for dc balance params to track DC Balance
> crtc state config.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index c2a6217c2262..e09c9f872e99 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -303,6 +303,14 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>   	drm_printf(&p, "vrr: vmin vblank: %d, vmax vblank: %d, vmin vtotal: %d, vmax vtotal: %d\n",
>   		   intel_vrr_vmin_vblank_start(pipe_config), intel_vrr_vmax_vblank_start(pipe_config),
>   		   intel_vrr_vmin_vtotal(pipe_config), intel_vrr_vmax_vtotal(pipe_config));
> +	drm_printf(&p, "vrr: dc balance: %s, vmin: %d vmax: %d guardband: %d, slope: %d max increase: %d max decrease: %d Vblank target: %d\n",

nitpick: s/Vblank target/vblank target


Regards,

Ankit

> +		   str_yes_no(pipe_config->vrr.dc_balance.enable),
> +		   pipe_config->vrr.dc_balance.vmin, pipe_config->vrr.dc_balance.vmax,
> +		   pipe_config->vrr.dc_balance.guardband,
> +		   pipe_config->vrr.dc_balance.slope,
> +		   pipe_config->vrr.dc_balance.max_increase,
> +		   pipe_config->vrr.dc_balance.max_decrease,
> +		   pipe_config->vrr.dc_balance.vblank_target);
>   
>   	drm_printf(&p, "requested mode: " DRM_MODE_FMT "\n",
>   		   DRM_MODE_ARG(&pipe_config->hw.mode));
