Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD8E9960FC
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 09:36:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7586910E257;
	Wed,  9 Oct 2024 07:36:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O6NX8FUb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AF3810E257
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 07:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728459365; x=1759995365;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=sMME80FNyFv0d1wERWam8b9x58dLvQDpQKBLrXQqhZA=;
 b=O6NX8FUbn7DQuAuzVrzkokpbhMvbLVQE9HoDlHovu/szeNLP2xzVXKxU
 0/e8v857hauQ3pb2i+b7ArvAsEfLxYC1sGSuTfXuKqsqc9A3C5PYvwFtV
 /VSJPcc53CWWL3TkzmCeOuX/bhzs1qduHc3FWT+22WtOjwriAAD5PUVy7
 dKBb+L7QV3F8WmIOHZwNDRfDyOArbV/UK8ijpguYRASmj6+00+oaToY1T
 73xgw7mYSxPxT/NcN0vH7jvgLnkRVo6dcplAUMhIQRZdQaCiuHAFveQeU
 PuT9L9WAKAPzrbriHc3fxA7kWMS6k6KCMhJ1L3/R8+VVjbNQxdT17V/Dp w==;
X-CSE-ConnectionGUID: T9uQhmXKQoepLhqzpYUvOw==
X-CSE-MsgGUID: ZzEl0wJ3TAqVd/U15S/8MQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27220556"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27220556"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 00:36:05 -0700
X-CSE-ConnectionGUID: FpS/c/NeQaqfRmGZebFt1g==
X-CSE-MsgGUID: 8VLQJyARRnWLeVt8M6Eb1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76124198"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 00:36:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 00:36:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 00:36:04 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 00:36:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xk4uZvowdqb4FDnqG4qb1QtNkWpeM49hfKmlMkvd9zQCHgCNbDJBms9j3ceylf8pEGdRhgzlruBtlefUTGcq67y/mhTK1HtGxPjDRY28qt5ARpj3Te/I/uaWnRdnh2tmCpSuopQ8HoUsrAO03ED61BOnPOPKXTWBbKaiCJOxhs+7IbJ+pAI7jqprTbrka7QVNFCy7gnhdWdmoNk61qggGwti/S24xO98Qt2oFzkI1N99OSLSdcnbE4nujoAf2Lw/trNPM8JXp6vF9iMjbO0lqDZ4DGaZa8vPWlz0L0fh3dU/K/ZozAn49IHZ8NlFfxybjy6sfWUei1ytUqk3v9jozQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kO1rl0omcMb83pZl/wzzvhfpVb1FxoSasLkRSOo/swI=;
 b=MZ9TF3T2fJ34TAWA/WgcvSXFmheog06EsG97eOb2ta5ml2Hihw66KMh026BL2N9OvkdRaIqVGFOEsZfbqeaHkC7Al8KCt2HUfuWeaWmvhq19rIkKWjZDyEHOQKthxEEIjwX1mKU7Wko14NfkuEhsPrKJu7rVrfno4lu2po6vR2zuW9wPNvPe6dpXQXbvvqRF3DhJYx/IuLvtip3HIPUg83esWVKEtGL0Bwb55aKswYLS6yFEC99iIoF2XywgAvuj5X3kp6DbINuuV9UgJctw7/vS9ZaBBWos9epUlCtsuUh04xfhLy3GUOgYVcLLt8XRsyLWrlVK20BZGwManmf+Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB6974.namprd11.prod.outlook.com (2603:10b6:510:225::16)
 by MW3PR11MB4684.namprd11.prod.outlook.com (2603:10b6:303:5d::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.28; Wed, 9 Oct
 2024 07:36:02 +0000
Received: from PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::c0b4:f63a:9c33:ec4a]) by PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::c0b4:f63a:9c33:ec4a%4]) with mapi id 15.20.8026.020; Wed, 9 Oct 2024
 07:36:02 +0000
Date: Wed, 9 Oct 2024 13:05:53 +0530
From: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
To: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>, Ville
 =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <matthew.d.roper@intel.com>
Subject: Re: [PATCH] drm/i915: Remove unused underrun interrupt bits
Message-ID: <ZwYyWdy8m38qnxOv@bvivekan-mobl1>
References: <20240925111802.2227604-1-sai.teja.pottumuttu@intel.com>
 <ZvQYGgYQcJnXl_wg@intel.com>
 <98eef4e7-1e43-407e-8f30-b7325c738956@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <98eef4e7-1e43-407e-8f30-b7325c738956@intel.com>
X-ClientProxiedBy: MA0PR01CA0001.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::14) To PH8PR11MB6974.namprd11.prod.outlook.com
 (2603:10b6:510:225::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB6974:EE_|MW3PR11MB4684:EE_
X-MS-Office365-Filtering-Correlation-Id: 699b1fab-26c2-4b30-f64f-08dce835067e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cjFKdUZiejRSbldVSHpSd0VxY3VQa3BDWjQwN29kSGhMaEhDWDhnYWhWZlVP?=
 =?utf-8?B?NW1EbUFibCtCRXFOVCtJbUZoY1J1OHQ0N0k5eFcxNExQQ3lxSTEzRXhLM3NC?=
 =?utf-8?B?V1Y4b2J1VmJMMTNhVDFyR09iMXl4ZmVHM0pveFRPclBSTExqNTFQS0JaVXhZ?=
 =?utf-8?B?LzNkUVRHZXpZeWhuV3pDYzM3R01ZbDlYTU1UTm1pWWsxbWI2VWttYW1uYVpo?=
 =?utf-8?B?cFNVYU9STGxYWjc5QUU0RklxS0dyNlFBZjMxN0p2Sy9oS2oyTmpNQ3l3TXVR?=
 =?utf-8?B?RU15M3dqWXdlcDRPRkRZdjlZaE5GY0hqUDA5VHBNOWZOZVU2RjdkQXNJZTFm?=
 =?utf-8?B?UlJwTWJLbkNURTU0K0tNb251OVFvL1h5enNuL2Rmc0tPYnFmL2hRZjhkSjR5?=
 =?utf-8?B?cStQN012ZWtST2hKaGZqY3NtZzJvbXNOTnBZSHEzSm5BdjRMRStuMGN6SFh4?=
 =?utf-8?B?b05tazVwSlo2MHdjV0ZpZHZTSjFNUzF5RnZtTkJMbDNYZUIwd0U3L2dlRjQ1?=
 =?utf-8?B?dDE1Wk91ajF6TDQ5clpjRkxkZ3gvMXdEdnErNlR5R3V2WHBrVThxTUcycWFQ?=
 =?utf-8?B?Mk1McVk1azlhdFQ5ZHUxeThYSVFIZlVjYm5aZkU0T2ZqTURzZXUzUk9kL0tB?=
 =?utf-8?B?RUVva2wyeEVzNkZPdlNPR0VwN3NZUnZFZ0pzU2d2b3U2LzJFcHkwdjdJS2hw?=
 =?utf-8?B?QldscmRlRzVFbUdWcFI4T2pNNGU0S3FZbkVxcUhhUzhuc0FiRHB0SnBDMUll?=
 =?utf-8?B?YXdxVWxqanVNU0xVUFZrN2dOd1paZGJIYjBJSFpKcmJiSHprTnNlS21lbFRs?=
 =?utf-8?B?VE1XdmVFamZIVDQ5TUo3U0x3ZU5zMWkwU25yQk4wV2lMY3BqTmJWWkx0WTZT?=
 =?utf-8?B?UVpTK1UxOHlCWHBDR1QyUXp4dE5XdjNNK0J2VFFRQWkxYWhZY3NpUEZZazNH?=
 =?utf-8?B?ZlFNenp3UWRvV0dnWm5vZWJtdHl3ZkpUa0NudmZDamk4UHJLTmJpVjVnSlFn?=
 =?utf-8?B?NFBSM2szYWtub3h4VG5zWml5dWRYTldGZmN4YnFVTGFud3ovL0tZZ05PdHR4?=
 =?utf-8?B?bStuTWRDeGQ2OUxjRGROZmhiWjYxWTZzVXVjMUFTM3V1YTNyMWtRWVNGVVRU?=
 =?utf-8?B?S1EwbGdvdlNDK0Z4OENicFRUSXM5SWlCY1Vzb0Q5TElTWVIvVTdwVkJSSCtI?=
 =?utf-8?B?aVJKSDd4QTBUditIN2lySXpQbVZFWmlQM3hNdW5hYWRXQmFzSDI2Z0ZvWVEr?=
 =?utf-8?B?Z1FDdUdvdVNLcHdpdDNQcGEzZzhkRXYxNkZJcDk2Ti9vcWpjZkNQSGNxSy96?=
 =?utf-8?B?MGMvbFVndnEzREFFTkMxKyt6ZGtqc0ZZV2ZrZnh1WVdyV1VMeHZaKzBQa3JK?=
 =?utf-8?B?dXZKeHpGaW5RTzh1dnlNTlkxWEpES0VqWXM3OEw2UURUMUhWS1cwampMd2FG?=
 =?utf-8?B?QzJQNE91S2R2MUY2QmZ2d09ZdzYwc2pBMzErT01lUkoyN3FBc1JZd29lL2Uw?=
 =?utf-8?B?WUNKdXVObjBlQ3lSWWNQUnZQOWo0aEI5WkZRMjl4Y1lGVTlEUU01MVV0R091?=
 =?utf-8?B?bEZFS0Q3Q3pGVHZlUENTV0tmQzVxNjRjM3E2QSt2cWlTRUEvZXNjeDVBWGZQ?=
 =?utf-8?B?SEczcERJTzJGcHAvMmZ6VDBPc3FnQU1Lb2hJVTlvb2wvNGN6ZEIyOFJwRkxJ?=
 =?utf-8?B?c2ZnbnNNZjJFQTZUZVNjTWc0eFNBQ2FwTkFUeTVySVBpU2YvZEpBalV3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6974.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bzJqVlducGpzUnpMMVIwQlVFYUI4TWhpSHY3d3R1citGakhTK1Rsay9DR2JC?=
 =?utf-8?B?UXBQMGpWQjdjOGJPLzN3c3NwbWNPYjZjK21OeVcxSms3K2tmY2xOM3JER2hj?=
 =?utf-8?B?cm1OY0MycXErZ1VWVzkvSUNQTHlCQjNwdFR0QUpUa0VNVEFtSnBPVitxK2F1?=
 =?utf-8?B?MW1RVVpRYVJaZ0E4QUh1L0NIdFJKYWRpVTNWcFRkN0RpN0FrWW5rdWhDUk1H?=
 =?utf-8?B?OFhLTHErWFIyV29GMEgvZW40NDBRVlJLQzZoR3M5ZEZPR2FuVzBqYWozVURR?=
 =?utf-8?B?ckM1dXNiU05OSXViNkx6Mk5xMDdwSUtBOElzV2ZFV2NEeGI2TFZIT3RyOWor?=
 =?utf-8?B?VkF1aVFqelFnd1paVERTV3cxYWhlNmY1V1BDUGZXWExYSmcvQnJFR1k4aG0x?=
 =?utf-8?B?VFlTNFgzRVVQYzJ2UFkrM3pJcGhTcjlOS1p5SVQzaWFidmF6ZFZrR1ZNTVVO?=
 =?utf-8?B?OGJ3WHFEMjFRVmpLRS84NVY0SHlPU1VSTmt2eW1iQk1CR1UxV1M2OHMvald3?=
 =?utf-8?B?eUFIelFXQUtyV1A0Ky9GQk9XNHBKOWNzZFhaUWpDV0lramp3a2JGZDYwVEh2?=
 =?utf-8?B?UCtXKzQvczhPcUp6emV0R2VoaFc3TXZXSEhTRlVlaG83M205WFd3OGZUckpF?=
 =?utf-8?B?WHB2dnA2NGwrS05pL2VoQTBHTWsvdm4veHdRSUlMY2k1M0ZyRGdSUjJmWlVp?=
 =?utf-8?B?ZmxZKzJDZURCR3NLM1dGQnpPbVRxYVRZWnRYUUgwQW90clhQVjZveHNaUUVQ?=
 =?utf-8?B?eXlLY3IrUEU0NTUwWmdFUTVuWGk0d0NqTmJ0bDVUV2tpeEZFUjdDUXN3UkZh?=
 =?utf-8?B?Qk10c25tdklzckJvU3RPTVJSZDVVemdiQ2srRjdxQXQxbjJmQmhKQ0ZhVnNT?=
 =?utf-8?B?QU1pRE5WUXdRdHVoSUFSTk1RY0ZXRjBjWVE5YnF1djgxYzJHWFZ3eDUvS0Za?=
 =?utf-8?B?cE5zekdQcjZSQys1L1psVGpCZXQva3hWUlhrVzJWT295enhrTVFkcFo0Q0pK?=
 =?utf-8?B?MjB1blBDSXB5UytJZ3VBdXJnNWtZY2NKRmM3cXcvMCtnblRBMnZyVHQyc011?=
 =?utf-8?B?U1UrUko4YkFpZ1QyQysrQVVUZklJQ3VNTWpyNE43UzBQUTVvSUp4bmN2R25E?=
 =?utf-8?B?amxSM0NZSGpab0VRVGx0T2J4NzQzYzlkN2FvRlFKWmdpZ1R1a1RFV2c0Q0N1?=
 =?utf-8?B?YnZ2a1lsdVVqY3U2Um1xSDlqUzJTSERmdjR4MzFyYTFseHUzRkZQWSswa28r?=
 =?utf-8?B?ZEZjaUQ1MGEvQXlyYUJMU0xvVFozRlJWVWptTnhFbEkxWWhxL0sxWm96VERL?=
 =?utf-8?B?MU1BRnlITWFLWUlwS0tuTnJ2bVJtak5adFZmWEZHaDY2Z2VlbHpCTkRKQzlv?=
 =?utf-8?B?UEUrSmFML2Y5OXhHeXVrY202VDZydGxnOGRhdURKbzhyTlVPK3h6ZlBlZlNz?=
 =?utf-8?B?cUQrQmt0MUE3WWRTMTdKYkhVRXR0NUQySTZEaUduK3E0V2p3a0czdWRsRlZC?=
 =?utf-8?B?WWhpVXZwWm81VmNvMXVHTEt1d2g1ZElER296SXpOc0VPR3VxTFZ3VXhrZUg2?=
 =?utf-8?B?TVAzYzZVcWwzdmg1Z0pzWHdxck5nM3BuR3BQZlA2Rk5MUDR2SjhMdXNLcDZn?=
 =?utf-8?B?WkpuZStRYUxWNHhyUC9QV3ByL2dFbEN6TzNMREFPa3ZSM2kvVVJkR1Z1ZWli?=
 =?utf-8?B?ekdFRUJOL1hlZ1pEbWZ3bnNsMnp0WllLQmZNVnkydWp2ZnNQK3o2cCtnT05q?=
 =?utf-8?B?ekRlY2psT0JzbzUwZ2szSUJROVlEVGxNWjFRT0RKcXhkSkdzcXUyUnp6NEZ4?=
 =?utf-8?B?VERkK1FuMVlySWl1OXB2UWMyNDJ5ckFRaExSNWJEUE5pOU1vaWVzb2lRS3Zz?=
 =?utf-8?B?ZEZ4R3lPY21SVnFMQjNIVGltR2Y4djBINUtUU2ZmalFycHdYZ1BpNmR0OXpE?=
 =?utf-8?B?YWZkK3Iyd2I5bU9kUGgwNnEranhObWdEb3pyUm5vQ2d3d05ybXc2dGJhcEk5?=
 =?utf-8?B?aGhNODhFZ2drRHlVSTR5MWphZEZQRWhvcVFFMEM4NnVoNlJzczR0TTcrNERp?=
 =?utf-8?B?YmpGYWd1eVVvMCtlUy9hVVU4Unlrc0FnZXljL25UWjFmRCtvVGpLZ2I3ZWNi?=
 =?utf-8?B?YzJFeXFVMnVYOW9BeUxwRGhOMUx3YWhKcSs4RENwbkZsdkJyYzBXVkhhN1p3?=
 =?utf-8?Q?wGe7YsSd8xdMKWzuB01Qoqc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 699b1fab-26c2-4b30-f64f-08dce835067e
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6974.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2024 07:36:02.1115 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /DQxPF/qHCG5nm/B7d5YYhc0Nex1ZwVoe0tXMG59/2Roz7m/dbyntebwYLTV3YR4gnKdYYKuiAJoxYuheMElDR8+dG5zbkK2od9RKxtPpzQl59myYnwfW3jgQa71J637
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4684
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

On 26.09.2024 10:52, Pottumuttu, Sai Teja wrote:
> 
> On 25-09-2024 19:33, Ville Syrjälä wrote:
> > On Wed, Sep 25, 2024 at 04:48:02PM +0530, Sai Teja Pottumuttu wrote:
> > > Underrun recovery was defeatured and was never brought into usage.
> > > Thus we can safely remove the interrupt register bits introduced by the
> > > feature for detecting soft and hard underruns.
> > > 
> > > Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> > > ---
> > >   .../gpu/drm/i915/display/intel_display_irq.c  | 19 +++----------------
> > >   .../gpu/drm/i915/display/intel_display_irq.h  |  1 -
> > >   .../drm/i915/display/intel_fifo_underrun.c    |  5 ++---
> > There's a lot more related stuff in that file.
> 
> Assuming that you are referring to the ICL_PIPE_STATUS register and the bits
> added there to detect soft, hard, port underruns,

Is it only the underrun recovery defeatured? Do we have the reporting of
underruns caused downstream by the port/transcoder working?
Then it makes sense to me to still keep the Port/Transcoder underrun
reporting as it would help in debugging any underruns.
Still there would be stuff related to Hard/Soft underruns which can be
removed from the driver like those in function
icl_pipe_status_underrun_mask, printing of soft/hard underruns in
intel_cpu_fifo_underrun_irq_handler.

Regards,
Bala

> 
> I have not removed those bits in this patch because we are logging these
> bits in dmesg and specifically the PIPE_STATUS_PORT_UNDERRUN_XELPD, 
> PIPE_STATUS_UNDERRUN bits seems to be set always because of which "port,
> transcoder" string appears in a lot of underrun issues filed by CI. I was
> under an assumption that if we remove these bits and the log, it would
> create trouble with CI filters and we might start seeing duplicates of the
> existing issues as new issues. So, my plan was to remove those bits at some
> later point.
> 
> What would be your suggestion? Should we remove them now itself and work
> with CI to see that filters still detect the existing issues without "port,
> transcoder" as well.
> 
> > >   drivers/gpu/drm/i915/i915_reg.h               |  2 --
> > >   4 files changed, 5 insertions(+), 22 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > > index 6878dde85031..9d8a101b2415 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > > @@ -1031,17 +1031,6 @@ static u32 gen8_de_pipe_flip_done_mask(struct drm_i915_private *i915)
> > >   		return GEN8_PIPE_PRIMARY_FLIP_DONE;
> > >   }
> > > -u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *dev_priv)
> > > -{
> > > -	u32 mask = GEN8_PIPE_FIFO_UNDERRUN;
> > > -
> > > -	if (DISPLAY_VER(dev_priv) >= 13)
> > > -		mask |= XELPD_PIPE_SOFT_UNDERRUN |
> > > -			XELPD_PIPE_HARD_UNDERRUN;
> > > -
> > > -	return mask;
> > > -}
> > > -
> > >   static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_iir, u32 *pica_iir)
> > >   {
> > >   	u32 pica_ier = 0;
> > > @@ -1187,7 +1176,7 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
> > >   		if (iir & GEN8_PIPE_CDCLK_CRC_DONE)
> > >   			hsw_pipe_crc_irq_handler(dev_priv, pipe);
> > > -		if (iir & gen8_de_pipe_underrun_mask(dev_priv))
> > > +		if (iir & GEN8_PIPE_FIFO_UNDERRUN)
> > >   			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
> > >   		fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
> > > @@ -1607,8 +1596,7 @@ void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
> > >   				     u8 pipe_mask)
> > >   {
> > >   	struct intel_uncore *uncore = &dev_priv->uncore;
> > > -	u32 extra_ier = GEN8_PIPE_VBLANK |
> > > -		gen8_de_pipe_underrun_mask(dev_priv) |
> > > +	u32 extra_ier = GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
> > >   		gen8_de_pipe_flip_done_mask(dev_priv);
> > >   	enum pipe pipe;
> > > @@ -1797,8 +1785,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
> > >   			GEN12_DSB_INT(INTEL_DSB_2);
> > >   	de_pipe_enables = de_pipe_masked |
> > > -		GEN8_PIPE_VBLANK |
> > > -		gen8_de_pipe_underrun_mask(dev_priv) |
> > > +		GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
> > >   		gen8_de_pipe_flip_done_mask(dev_priv);
> > >   	de_port_enables = de_port_masked;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
> > > index 093e356a2894..1b3f559a0638 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
> > > @@ -33,7 +33,6 @@ void ibx_disable_display_interrupt(struct drm_i915_private *i915, u32 bits);
> > >   void gen8_irq_power_well_post_enable(struct drm_i915_private *i915, u8 pipe_mask);
> > >   void gen8_irq_power_well_pre_disable(struct drm_i915_private *i915, u8 pipe_mask);
> > > -u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *i915);
> > >   int i8xx_enable_vblank(struct drm_crtc *crtc);
> > >   int i915gm_enable_vblank(struct drm_crtc *crtc);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> > > index 745ce22afb89..fb01c128e1c5 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> > > @@ -209,7 +209,6 @@ static void bdw_set_fifo_underrun_reporting(struct drm_device *dev,
> > >   					    enum pipe pipe, bool enable)
> > >   {
> > >   	struct drm_i915_private *dev_priv = to_i915(dev);
> > > -	u32 mask = gen8_de_pipe_underrun_mask(dev_priv);
> > >   	if (enable) {
> > >   		if (DISPLAY_VER(dev_priv) >= 11)
> > > @@ -217,9 +216,9 @@ static void bdw_set_fifo_underrun_reporting(struct drm_device *dev,
> > >   				       ICL_PIPESTATUS(dev_priv, pipe),
> > >   				       icl_pipe_status_underrun_mask(dev_priv));
> > > -		bdw_enable_pipe_irq(dev_priv, pipe, mask);
> > > +		bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
> > >   	} else {
> > > -		bdw_disable_pipe_irq(dev_priv, pipe, mask);
> > > +		bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
> > >   	}
> > >   }
> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > > index 7396fc630e29..c379d875f432 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -2491,9 +2491,7 @@
> > >   #define  GEN12_PIPEDMC_INTERRUPT	REG_BIT(26) /* tgl+ */
> > >   #define  GEN12_PIPEDMC_FAULT		REG_BIT(25) /* tgl+ */
> > >   #define  MTL_PIPEDMC_ATS_FAULT		REG_BIT(24) /* mtl+ */
> > > -#define  XELPD_PIPE_SOFT_UNDERRUN	REG_BIT(22) /* adl/dg2+ */
> > >   #define  GEN11_PIPE_PLANE7_FAULT	REG_BIT(22) /* icl/tgl */
> > > -#define  XELPD_PIPE_HARD_UNDERRUN	REG_BIT(21) /* adl/dg2+ */
> > >   #define  GEN11_PIPE_PLANE6_FAULT	REG_BIT(21) /* icl/tgl */
> > >   #define  GEN11_PIPE_PLANE5_FAULT	REG_BIT(20) /* icl+ */
> > >   #define  GEN12_PIPE_VBLANK_UNMOD	REG_BIT(19) /* tgl+ */
> > > -- 
> > > 2.34.1
