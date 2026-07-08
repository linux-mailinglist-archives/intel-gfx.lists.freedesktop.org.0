Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aXRmMCsPTmqWCQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 10:49:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F14B723557
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 10:49:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Uhq38+eg;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A088710E346;
	Wed,  8 Jul 2026 08:49:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8453110E346;
 Wed,  8 Jul 2026 08:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783500583; x=1815036583;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=D/Qv1vmvGHXS+k8TPpAv5lPzrIq8xs1IDft0Hyco7Ak=;
 b=Uhq38+eg9V5cwn0YgxPesHHkFKf2dGNPNTJ9uyUlSY6OBngjLKxp74az
 FgZDpXXbq2vaf0nAL9xk7jH6lQmWipvnaqUJ/1Th3encIDnbFrLl4CQgc
 /IQg2NZgjqx/tWt0TgzJxVSIFB/aosS2eByq3U7UuhDhhqvjSF/es+3IW
 GRk49eQKqBTBX605vRkgr1bddwmYBdxXT5BzHtLsjn+NMPeuGjZWbmGv5
 vGquKuwsRNeTGXSIsgFyuICMJUsfK5DJ8Gwp7Av6Tky1XrWvSsYkxy1+E
 6+XPY+pJq5spV1cxeQcANOqVvoFgTpQL2q/Hj0a83kjapktSu0HCRSVfh Q==;
X-CSE-ConnectionGUID: WTN6VMi/S6mGJB59hmXuZw==
X-CSE-MsgGUID: ChmWyQJXTfGfQa3dedgGhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="84276462"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="84276462"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 01:49:42 -0700
X-CSE-ConnectionGUID: mOUvzPG4RnC4zNaimTK6Sw==
X-CSE-MsgGUID: 9zT0rA7MQ6Gql6BVvwuxVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="254872202"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 01:49:41 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 01:49:41 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 01:49:41 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.50) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 01:49:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p9WBVm8AqK5mfjsUdcTOCAueE/MCPH+sAPw6wP9HjXLj9AEQ6W3cJR542yHgorOaVfb3MGc1U2sJNqsYBU8WCkklm+mOAsNsbB0s41Q8hRCR/5moKypNiM353e7hkfh8vAk/2Mt9g4XPfuB11Wcsd5aGxDhouYeNZkG+JNdgfRZ8I7gI3iV50IgRakRAnadd7jAhx6a0/c3zMudBLoHo8KJdpmE8zP+KJiyB09Tv4a2BS+Fl/pY5Z4Nf2ZSHNX2b6pFLhOPuG/IaLnpi9rBBn9M3PqZ7BxuoZKUdGhgrVJafwW2W9Ae6fvhWIosP0/6zv3xh+2wMpoE22dGtDf+/Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ikovlre1PLMVwpIpZ+uSvw+lcbM4cuHwhIavMUQGHj0=;
 b=HZm6/8ZuJUKeB1twLxTx8r7lYgzLlpJpDxIVzXHFUOF+P1mLP9bBa9GoDEpkB08ZzBotGJMDv8K2UgcQOVsIALltkUumpDitfDloGxJ/U4axZ7oh1Cw29hYwE+iYeu0Ov3vbICpOAf2+T0aM4WY4jQmHDV7x3nAr3jV3/fcSkO1PhbsNL/5sf/08ze7V0H+jVIxKmRL0qjN1ujLBVHKmS4ijrLJg+GgfnLLjyVoPyB7eL16q3zQYwe9b9detu3SZQyBMoWqryr3UraXW1bBctDYo0LzU7nhrFAQ3/ldfstMZAUoJk6Q+fD+vTKute6i+ZYKriJ3jX6YtihpZhmGT7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by CY5PR11MB6511.namprd11.prod.outlook.com (2603:10b6:930:41::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Wed, 8 Jul
 2026 08:49:33 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.21.0181.008; Wed, 8 Jul 2026
 08:49:32 +0000
Message-ID: <c53c3939-2c6c-482c-aba3-62f5b0169e5a@intel.com>
Date: Wed, 8 Jul 2026 14:19:25 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt on display
 version 30+
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
References: <20260706153122.3282182-1-dibin.moolakadan.subrahmanian@intel.com>
 <DS4PPFE901A304F373618749F0401FEFCA8E3FF2@DS4PPFE901A304F.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DS4PPFE901A304F373618749F0401FEFCA8E3FF2@DS4PPFE901A304F.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0264.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:21c::12) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|CY5PR11MB6511:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a4a92ef-6089-4d5b-1547-08dedccdd46b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|366016|1800799024|376014|22082099003|18002099003|4143699003|56012099006|6133799003|11063799006;
X-Microsoft-Antispam-Message-Info: JR2EDX9ci3BKhDpZ3s5N+by2EfOFChdeowA6PIWKBlbsyAnrVuoKMjN3KawxG/mALFcPUzdrbtbvo+aaKWnUUu7auKsVqvEneJz4GYYP/HloSJRgS+y3EsH3Dp3idJ1f5Wc4yiPD7I7oPaTJ2FGNCcv2q2SlCOyRGQXShOgwF/Gtmg+ppwO/uQCKpX/a5UFbltBJ+TRe0dDlz228pw462iHJpnfFWdUjSLPHhABHRI7/iSXXc0PSmeQ9Q+fK7OYB3W2heOGyvins+OSyLIAT0MudoO76UxoFBwF7eOmpljnrYrgcmqAnxhGVWn9RluKLIb+M8+v0RcXIKxyd2EeqrK8JUrNkPHdlsoXcu9+1U3Hk1SLz/oPeEpLGbku2Hn0ByPm6BuW2iVUP+cG7gTBnHzHbN/ojeuQ6eYtMxn6iaMqp4pPJEZXoPV9J1Ixiqu1lJYPITTj/Ivb5CuZjPXh/o3Fb+X6KpqUXcxLiPg+JEz7jZ1N0UdVkLxPje2gbS8kqxOZiptN6tKRdvIWZ2eaaiiCiTIiHLUl0ufz5x0oHeTcnb1VoptHUluNrjeLoVuT9OIkhQSMf6/tbzBLrQUuUgX+1c2gk1iAEYBjjNw6U6bnVFmqMW++kcQtW8npknOdD+iC2DZRGNS2+kzzm/PQdv1Sbm4f9218F+hXZPNNnUTI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(1800799024)(376014)(22082099003)(18002099003)(4143699003)(56012099006)(6133799003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MHFmUDcxUTVsc1o4U0dlSko3bUZkRWlueGdrcXJEVGpxSm5oRm9nL09iNmFo?=
 =?utf-8?B?SXRodWtnZmFuZElwVEV6T20vVVMwT245UDJwYWxWVDZScDMyVHk3VzAwNTgz?=
 =?utf-8?B?WHlramJXamxWLzdEKzdmb3FVTmNzM0VKN3ZubUFtNnk0bDUwL2g0YUx1U0gr?=
 =?utf-8?B?eDJlTXkxdjd6MEtxSGpXUklQN2FKbDloYm4vbFY0cDJGMWs1b3VWM25wc2Fz?=
 =?utf-8?B?S0Z6VS9NVDNNdW43VUhMcWY4c0hWRFF5YXB5amtlTTI4eDI1YzRuKzFiN2N3?=
 =?utf-8?B?eFI2YkJxaHR5ZFhSMGNLbU51SnFjNFlTb0FybjFtNVlLTzRpU01rbzZqM3dG?=
 =?utf-8?B?U3dWZVZ3UFV1OGlFU3FGYVAyL0NIcFk4ZHdtWVdhWjdFVXgvYXVSMy9pN0Jy?=
 =?utf-8?B?VWlSblFjN0ZMVStmMGVvKzVIcmk1bzA0UFZ2ajF2REpuUW02d2czM1RNSWsv?=
 =?utf-8?B?VzZ6a203MG1DV0F6TjMzMkI2bnU2Uy9hZzQwWHZMTmpKMCtXWVpOS0ljNDB0?=
 =?utf-8?B?NDhtUUQyb29HSEVWaDJNVHhvNnJ5TVhFdU1QR1lMRUY4UjhoeUREbkc2cUxr?=
 =?utf-8?B?OXNBYVk1YnZsZnQrSjkza3NUZE1CU3ViRHpEdUdOK0ZDRmtLMEVCRm9EQmtQ?=
 =?utf-8?B?T0FQQ3BiWEJtaXFqRlVGZHA3N2lBTk9FMkNDYm1ZcmJzNjRwS2V1QTdHQjc4?=
 =?utf-8?B?TlJvZkM0N3NkMUhsTEhZaUlqNG8vRzR3SFNnT21TeFZwcHNxRjNiNzVKNE0x?=
 =?utf-8?B?cFZmZ2VtQk5vS3Y0aHJTK3d5MDdudms5YkZRenZaYlJzKytpRlhkMXM2YU1t?=
 =?utf-8?B?K1VNNlNrNVduQmNIYng4a3hWTGx6cHlDWnlKa0dzME9QK2duVjlNTVA1Ulo4?=
 =?utf-8?B?NGI2MXZKbFg4eUg1UllzeG9FYitDM3RiNUxTdUNoZ3VnTlozSUpNSk9MdDBw?=
 =?utf-8?B?WmVzb2VsczgvNHJsaWR0V0FUYU45Rmo3MzlBa3l1eFBOc29hazZyL1ZoaWxR?=
 =?utf-8?B?OFVtdGI4YkZsWHBBT1hnSk5MR01nNkRwOHNhMGRYZGpUYnpUK1RvZU9CbU02?=
 =?utf-8?B?d0ptN2xRaGlZRDYwcHUwUlJ0a2RTZFRWVHVzM1hseWJGTUcydmRjb3VoRnhi?=
 =?utf-8?B?NTZxVEFXbEFkUk1qbkVZSzltTnVGSEt4cHpINEduQm52YXFibXhyY1BuOUpP?=
 =?utf-8?B?Vm83blNocGczZEJ6UCsvOWdVZ2JtdUxORFhwSDdBc0tZcmdVK2Qvb1NOcXdB?=
 =?utf-8?B?WEUvbE1sazBFYm40ZDRGMzlzdG84MkFSd1d0Y0FSampSYyszYXBZVHlWZVN0?=
 =?utf-8?B?NzZtei9YdEdQV3V4MENtbkVHRFF5Q21wMGwvQnJwUXlJdVFCZWN0cUJTVEFG?=
 =?utf-8?B?UGFwZmdmWUxkY1ZOVktJYUh4WWdxSk9RQ0JyMXZEL0dmM1Z6RjF4S3dhaDAz?=
 =?utf-8?B?SEtvbWNMaHdsMzJiSE9vbm16b0xpQkphMFhkYmxCdXc0RlBjem5XUENJbmhs?=
 =?utf-8?B?Mnl2Q2hvTldKM0IyTjhwOVhxMGhneTRMWTMwK2VGU1VtSzNtUnlMZzJCMmE3?=
 =?utf-8?B?ZnA5U0pLcy9ZVTFzVjdiVHN2TzUzUHQrOG52ZFAyMFo1OEk2ZlV1WmM4RnZQ?=
 =?utf-8?B?M3IrbnQ5VDNMc3VXVHpLMkVJaEJPZWNVOUFZVW5wYU15QmFORlZwa29Qbjhs?=
 =?utf-8?B?YVZyMjZ0bFVWRjV4YzF2SnloSFFTYWk3K0oxcEdicDB0Q0xQOC96SHhuMGNB?=
 =?utf-8?B?WWVRdk45OWVqTzRWK01vVkpBMC9Qek5ONnJHUDJ1Z3FCbEN1RXhrbHdhTDZ2?=
 =?utf-8?B?dUlFM0dRaDdxc3NzdWdBaUovMm9mbCtPWHVOd0VMbzBENW9kR1NHT25IeFNX?=
 =?utf-8?B?Y0twa1FZQXFJaHpWU3VPT0U0YXY1N3pjOGNmNXJUNWhyQmswVlgyTDNnRGpN?=
 =?utf-8?B?TVJQMUJXdlFBbm1GUmNqOUYwWWFPbWlkQ3ZjVjExRVRZaEIvampzSkFLNm93?=
 =?utf-8?B?OXo3ZHlsbExXSDkwNkYzdnorTGM3ck10Vk5Uc1VCdUJRNWY5REcyVGgxOWtF?=
 =?utf-8?B?cTAwTVAxTTAzV1dSZ0lLcjhxdGV5TVNqQ0hrelBGL0sxbHN0UXZxaFdZdENJ?=
 =?utf-8?B?QWpjemVwVDllekY4Rmd0WUlsV0t6MWYrZU9LUjdRWXVtMG9KUXpLY2tVaWdZ?=
 =?utf-8?B?Z0p0NC9JRk0zMnUweGlHOXptL2V3S3Q5VHM3NWlaWnJUM0xNaElUMUowY0hW?=
 =?utf-8?B?ZzdyR3NGZFd0aG1uTEFvb3NBNXFOc2gzanpEN21EUHpxaEwxLy9Hbk1IYmhS?=
 =?utf-8?B?MkdmM015Y3JyZmZCL2s3d1lHb29WZHpSZHlEUGtqbUhKbkx4RGVMaWQxVlJL?=
 =?utf-8?Q?pUEn+HQEiVB1WFnoxPq5JwfK5OHbC3eZXSenmwQScW2vW?=
X-MS-Exchange-AntiSpam-MessageData-1: 4sGHoADn5gjRZg==
X-Exchange-RoutingPolicyChecked: cNnOEIH6mOYZxah8X246rrw5OWoNn7iCaE5BRrkgLHoatpEADm1F24eVKdGR/bjvEXnkBPDGH0fbdT761X5VC1WrV2JLQDGZKENFmGACQQO0DlrtEa9JFRnhZ8d35GyLl+JL5YUJyBh67r/qDvMMVMrEjh+akcESbatLVpDRmlqyOrLt9Ly8EA4+/2jFOLbXR7Athfu2dx4UaFQt3A0V9waqHCwKsD2hf05T4Cm5GjtaXE3Rw82Nah0IOV+a/7i+ug/g0qpnwN5Jd7ODvcZCo+aPKC0lruaFLpQ3kkR7A8wBiXHVe4rt9kadcoR2SYORi3v+79yrE9R27sI0+71fPw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a4a92ef-6089-4d5b-1547-08dedccdd46b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2026 08:49:32.7577 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KQABo06M5aJ58kPfI0XRXHt8xqbZg3eWLPGOGw80+yQ1R1wydQ6QY3jCYZIOJny4Btx24QcAL7uqkOyd7sppX6W71WT7/qJvnNQN0tydulRgCczYu2vmWCgrfL+0lN/1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6511
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F14B723557

On 7/8/2026 9:33 AM, Kandpal, Suraj wrote:
>
>> -----Original Message-----
>> From: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Sent: Monday, July 6, 2026 9:01 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>
>> Subject: [PATCH] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt on display
>> version 30+
>>
>> Enable PIPEDMC_ERROR alongside the existing PIPEDMC_GTT_FAULT and
>> PIPEDMC_ATS_FAULT interrupt bits for display version 30+.
>>
>> kms_pm_dc IGT test on PTL does not trigger the spurious interrupts that were
>> previously a concern.
> This part about the IGT test can be omitted from commit message

Thanks for the review .
Will remove the IGT reference from commit message in the next version.

>
>   Enable the interrupt so pipe DMC errors are reported by
>> intel_pipedmc_irq_handler().
>>
>> Bspec: 70296
>> Suggested-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
> With above fixed
> LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dmc.c | 10 ++++++----
>>   1 file changed, 6 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
>> b/drivers/gpu/drm/i915/display/intel_dmc.c
>> index 11f5dbf91e68..a191eee240d9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> @@ -505,14 +505,16 @@ static void pipedmc_clock_gating_wa(struct
>> intel_display *display, bool enable)
>>
>>   static u32 pipedmc_interrupt_mask(struct intel_display *display)  {
>> -	/*
>> -	 * TODO: Check if PIPEDMC_ERROR bit enabling causes errors
>> -	 * on PTL, enable it if validation passes
>> -	 */
>>   	if (DISPLAY_VER(display) >= 35)
>>   		return PIPEDMC_FLIPQ_PROG_DONE |
>>   			PIPEDMC_ERROR;
>>
>> +	if (DISPLAY_VER(display) >= 30)
>> +		return PIPEDMC_FLIPQ_PROG_DONE |
>> +			PIPEDMC_GTT_FAULT |
>> +			PIPEDMC_ATS_FAULT |
>> +			PIPEDMC_ERROR;
>> +
>>   	/*
>>   	 * FIXME PIPEDMC_ERROR not enabled for now due to LNL pipe B
>>   	 * triggering it during the first DC state transition. Figure
>> --
>> 2.43.0

