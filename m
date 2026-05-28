Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oE0pLxUPGGrMbAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 11:47:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2984E5EFDAB
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 11:47:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E44310EF15;
	Thu, 28 May 2026 09:46:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J8CZEdge";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E12F10E27E;
 Thu, 28 May 2026 09:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779961616; x=1811497616;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LTazq3+kp/8MFv/HnzMGbZs2wasV32mrgvH1BsACAHk=;
 b=J8CZEdge+6zEUxB/Ml5SVhqzuZmNAz7BrDS5FVDzLYZWxGVs20sYY9HT
 auPP8TYW6IOahqYFf8RmxxlLPJV4aeVTRyyYfDczzPUTHVTu2w247SoUt
 xt61eCblDoa8EQrbxSmNOIhHxSLMMoIHFoBPRn+trDKWFHdwdcEGtRTX3
 YLptGB9rPH39d3ecQDqrmKJnjzLdUqHaep9UMQJbgt7nOLVu78/hVlb+E
 kzVZocNqcdHrz9M2j/ky6HY7/YS4edNUidnZ3B8OMdAABSjMM7qqDoLrj
 +8fMp2FKB3TRvd6VGpfiJBCPVOhhMnHzS0WDsb6YLmfY34pILcY4Yp3++ w==;
X-CSE-ConnectionGUID: B9i4MI3fTIi1M4wp2hbEWw==
X-CSE-MsgGUID: 8Z2bJuPtQamORsgx1jP/1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="91109483"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="91109483"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 02:46:54 -0700
X-CSE-ConnectionGUID: /TDJeqd9RqOv3ymU0zdxLw==
X-CSE-MsgGUID: kVrJC4FkTPChzeW6swtAEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="246533876"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 02:46:54 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 02:46:53 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 28 May 2026 02:46:53 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.24) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 02:46:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rcp6hp3jKTIiWh0LcxJGb8wmvQ1QReG2+CNiVbT55iMjtVI66S/yrJ2fMsS7qLEbA6HQjBbHnJx9ZT2VuOHbampkQ4rdgEtJmmaJpuqGRbCrRF8+/L7ucwaOP0L3lwPWvd+q9cenrVfpr1JkaBcgyTIkka1bQ2Z5/G4IWjmz2PhL+/kogBbj/zt9tTqgAohLioxtivuVLHt/jYxKR58GlZQ/72rKvehW+Yt299TdqfcHt3QoSZ35SVcJFr3EfzRQc2NU9Wz07MpgQCwFukSnNVnAOyvIOAHrCCLgEhi5YWqKMxn6nENXs9/FH9Bb6VPE/tJycFiQlC0JFwA6WrnTVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bt5k+uSJeIr77mPILyAugQagoVtHVy+QXRleQsrTwyA=;
 b=RGgfplcs+RkojQTpsstmX7eCoyJZSKoE6jb8K7Qc6AwCDJg1K+5LjMrK2hkykzmCBgCcvppT20e4J4ccAJNJ3TqVGeCNm50W3IzitKkX7fq8qQod/XF3e//l8ndd1zBdnNQCSKEEkoAAdUugZSwv9AWV+k4AW7sh0Uepmm8CafoRS6PsZeCR6TVahEO7s8UjVPmuyxiCVBr25cqg+8tWTAu9Qa/NtUes0uZ1X5pdXMliqjVLB0Ql279wzOxxf80LP5yE8psdiMbGM6CcfBCE7LmSGdt62DsCuWsUB0dgTLwxqzsJ3CtGUyOqPRGiQQDFG9HyjOcIqftcWZk5BY8RsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by IA1PR11MB8199.namprd11.prod.outlook.com (2603:10b6:208:455::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Thu, 28 May
 2026 09:46:49 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 09:46:49 +0000
Message-ID: <2b11a16f-27b6-4e6d-a887-b212d0a89ca7@intel.com>
Date: Thu, 28 May 2026 15:16:41 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 07/13] drm/i915/display: Add DC3CO eligibility
 computation
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <animesh.manna@intel.com>, <uma.shankar@intel.com>
References: <20260526191826.3786009-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260526191826.3786009-8-dibin.moolakadan.subrahmanian@intel.com>
 <5f8649f78febe065bb886f5318c98cabb7e44862@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <5f8649f78febe065bb886f5318c98cabb7e44862@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0332.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:222::12) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|IA1PR11MB8199:EE_
X-MS-Office365-Filtering-Correlation-Id: 70e9c780-3dbd-4254-fb1f-08debc9e09dd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|22082099003|18002099003|11063799006|3023799007|56012099006|4143699003|6133799003;
X-Microsoft-Antispam-Message-Info: BG2q7vx/XrLfaWkpsPaeGW569ntuiNhjZWhGfEa7zNbPtI8MyBiIWXtdNsj9uQH8jfZYxXBbAroBW/xqVfa6TijCBjrq3gsUs6dpcmgPPCMSBpn6r65NF2a2t5PykFySo9nU+Aq34/Xjj9Lp+Gf/o2YzDGBAb9pOe0fpL7jELxApHuoS+QeWGlwUkc2QattUU1ti2wHQY1yPU9PYYgi0G8suQtsFvjWxFKsbM82vzBpScnQWHLxkcRqbJIHEjwxmRhnmQ2MJRES4txZ2mFB3XsKCNsAaCRyGlkYxuSOwxKpSyxjbro0DrIyDzZu4pJsXlhzsvaq+/2+5A1VxNoROsj703ayGmGeER1UtjyLEYfqPHB0zWFjGyWZDphPzhbZiuYgYNO+A76TXU8oK1FJiCRZz9EWt7WBdRwP3x6Exf8SwvC9ewR1X5a8aVGXzMZ+SHrrsLdNDI9TK3Ah7ibf2zX0AGnt58mM2Bgap8xGbU0PITqBB2u02CX7WIerb+a0k5Lb5wzGINpwBVunWuuV9dSieemuWbuaTM2/SdyTzeYXZgcECHpMnjvHnL7EZDsxhvq4+xM9LqFSjEntRNNx10nfRkDHpLtAgnkkeWX8RVt/sBOaZyciG1fuVSpJc7xDnGOS23VgE1a0BRuc2vl8eKz9XruYtaURHy2pgEYxQjRWywtPYv5BWaaZHWWqQjzRX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(18002099003)(11063799006)(3023799007)(56012099006)(4143699003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WVpiK1N1ZWhxSW11R04weEJ2cUlORXBNeXd2UklJR044d1ZPNC9ZSFZ4bU1J?=
 =?utf-8?B?di9Hd2tBOGtSSkZ4bTNnUHB1MzVYTmtJZUlaNHJ4TXUvbE1Ed1VlY1BybWk2?=
 =?utf-8?B?UVhzeC9yekRtMWQ5UTI3L1pSQVQ3OE1CbGN3a1FZbWgya1RQd2FhRS9qU28y?=
 =?utf-8?B?UWxXVXlRL0I2cVladmJWc2JSeEpuejBCVkQrc0xyWjNXOHZkYjRDQ3phQW42?=
 =?utf-8?B?VHhrbWdxYk0zWlJoRi9EQnNEVEF6SUwzemZGcVphTi9NM2M2dGJCR0dCVnd6?=
 =?utf-8?B?ZktCNHNiZ3VIUDBNWWtDSlFvS2szNys5TXdWSzREQjVPQnJNc1dvdGxLS3Fr?=
 =?utf-8?B?bnpZdXlHWFRqZXpmYXI0UllSQ2tQdHJESFRld01USUg1eXpNMUt0djFjdndr?=
 =?utf-8?B?ZDlvbEFFcnpmMCtvL1JUbWdHb0VNa3R6UDVDV3RTZk9jQm9sKytLeTJOT3ZT?=
 =?utf-8?B?YU90SEp2RC9GZUkxbS93MC9ZQ1pLdTl2SFZmOVg3N3dEeUxLRDg0N205NStD?=
 =?utf-8?B?blJCUS9PUHhHZ2NzeXVtTHcrTUJaZVpyOENRU1BseU5Jck1LWUg5a0xLd25R?=
 =?utf-8?B?Q09zM1o0YkdiS01XaVhvTk16b2Y5QXkwbzRJajk3eTQ5YVg5blZmQ2pzUGZH?=
 =?utf-8?B?SGRVRm1DZThsb29tMHZqSkdvVitWL1lCTVRmU3NacFJZMHBSSjgvZm92Qkpj?=
 =?utf-8?B?N3dFQTFodUtKT3A4ZHFVanZPMERQNVM5MGZEZTJkSnpBSk1PcUdFNlhBN1My?=
 =?utf-8?B?dDVRbENLZWhYckZnUHFHZllHelhZNkhxbU9BV1BqTmNXNjlOM0txUklRSDB0?=
 =?utf-8?B?VFBPUHcrWEdUcGJId3pOWFJyNmoyOTF5TkRMeG5DK01lUERvZzJldFp5WC9y?=
 =?utf-8?B?ME80QUV2YlJOak9rclN0eHNkK2Y0QVZldjJFMm00aGZpSmNEVFR5cndISGNW?=
 =?utf-8?B?TjN5emFKeStQVERaVFdpWDQxOE5OajdLWFdsK3RrNWN0VzAxa0V3MGpXZ2tP?=
 =?utf-8?B?L0FWWnFhQnNDUjV1WW1ELzQ4Nmd5VkQ0TlV6Q0ErSUZuM3lFam4xT2xxZGRx?=
 =?utf-8?B?OFhDMEtaV1FlcHpXczVleXg3SWNxaEJpMHpUK1hHaHY1dEd5N1czVG5HSGdK?=
 =?utf-8?B?UmdGRVZaYzVSYW1McVVqTFdFemlkOHR6U0xic2FiWGs4dkt0dTRzNEIzclZr?=
 =?utf-8?B?ZDJhelRYa0lkYmdKYmt2bGZkK1pQcG1uUVgxVXNpNEdpMEErVjNkWFdkVmZ2?=
 =?utf-8?B?enZheGdRN0dwSkRobWthL0NtQXd2SHVsZ2xMbk9rZnR0THJ5UVNDUjd4Rmti?=
 =?utf-8?B?eE1oVysza2xKZ0IzNXlQR3hhREJtQ1hmU3UrZmZRalZ5UkJZWWF0VWtYT0xk?=
 =?utf-8?B?cGZCaDVueXU0eFlPU2Vic05CaDkydFJJem1raW1ET21ET0tyWlRJU2hJcTFB?=
 =?utf-8?B?Wm5QUlpYR2hzcHA0dU8rOWwwUnk2MEZlaDJlaGVhTkZOcVRBaXBqbVJhNFJ5?=
 =?utf-8?B?T1RQazlkR0k2OERGU1pMYVdZTEZDcFB2QStIK2NSM3ova0lwU2JFWEp4Ky91?=
 =?utf-8?B?ejB5QldqMGlQWlJTRm9KU28za3c5SGwrNklZclE3RExPY2djQllIVThtb3B4?=
 =?utf-8?B?dDVGL0tLaFp6K1dIOHhoYTQvRERtc3Z6Y2FENGdIR25jaVV1cEpZd05yK3lz?=
 =?utf-8?B?TUZQbXhVYXNVeGtYWXk5eEt1SHJ2cUVlZmxmMkVTSGdYa04rRjBJL1R4OHVZ?=
 =?utf-8?B?R1psVDlHbmgzeS9WdnlEOWtIOFMzM3IzMUxzYUpZcWJ5TnQ4ejRPS2dobmFE?=
 =?utf-8?B?Zm5zaTl3SUxmSzgyaTRUeC9ZV0p6bmMwdlA4YXZpNTBoRk1ETG1ILzFuOHFW?=
 =?utf-8?B?UnU1bjZIeDZSdE5DNGZwMFlreVM3UWl1VGVXN0VsYVRvSklNV0t4QklpZitL?=
 =?utf-8?B?dnFyWkovYldWNXk0WGpMdytZQUZSVG5uRzFBRnBOQVZlQkVua21BSVYzRy9l?=
 =?utf-8?B?RVorL1puOGh3aHdtcVBpN2pxc3hwZXFzUzlXbDBvd2d6TjJVREN3b3ZUNmxO?=
 =?utf-8?B?MHgzVEtBd0pvcmhQVmphcHR2OFJ4SXMyMWdBcTFtdU96b2xYMkhTejJJRHZ2?=
 =?utf-8?B?eERzZUFaOFQ4Qm9DTUNHdEZJZ1RHUS90NUZjK1hweEZiblY3UFNjVHJKYTY2?=
 =?utf-8?B?cXpSeUxyQ0hyZlhRNnJibDZNK0I4TE90NEtMWm1pYUlPcjZLbU9ydlUyRUYy?=
 =?utf-8?B?N2wrKzFsRVZCbWRPMzFaMzdxN0NjbEFqYzFZSzA5dUVDS1U5M1dzSFc2SVhR?=
 =?utf-8?B?U2FIT3grUUlHU0xlMmp6aWY3WWRxQURrTXdHa0VYWVVkRDF0UU9QbVIzcUtU?=
 =?utf-8?Q?jJzwQxNJYcCIftZkXnLLL4uLh3DQg02U5PsIe?=
X-Exchange-RoutingPolicyChecked: qY2/8K3oXjiZ0hy33Pnh7NFwF3N/a4+ENnpptDmWxqJ7u5utwCv3WxP8lP30MaB7LQqL+fXl5y6CWhWj3EoDdV6YB8GN4IuhC04jP7isHeIpAnc4KI8kDZDdYvsDDR9+VJA1hiAYJ8SadEHl/9uDZtp26nUc7UV18KAIwqWdN6cqCmLyl3qUd7xJ8RCBKlr52pwGl/zvMp3MmBfvDWt2DSQE5nMsFmyPBwu1kEFhgRVXiXcv5LAtJ3nv0vBdWj8lcIuWZHZTFk7MiGYIn91N1ELvu/hdWlAf2uHuVwwCfNOLUBkBm2OvqUQ0i00f+wGFOA8NVvrathUsFFdkLx/N+w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 70e9c780-3dbd-4254-fb1f-08debc9e09dd
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 09:46:49.3430 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: erZs4nAD6RghOdk6TbF2uvZmJv9z4cm0DCVIiyxTxXIjAuqTN03+uVtnIISHFacZkD55+djiUjewKvmg/5k/uXfI375uuXAKuW4KbFx0cDgWt0igX7jQA03diy3iKGcy
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8199
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 2984E5EFDAB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 27-05-2026 17:58, Jani Nikula wrote:
> On Wed, 27 May 2026, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
>> Compute DC3CO eligibility during atomic_check based on
>> pipe/port constraints and runtime triggers and store
>> result in display->power.dc3co.
>>
>> When DC3CO is allowed, request DC_STATE_EN_UPTO_DC3CO and
>> reduce the DC entry delay. Otherwise, retain the existing
>> delay and set default DC_STATE_EN_UPTO_DC6.
>>
>> Changes in v2:
>> - Move dc3co state from intel_atomic_state to display->power (Uma Shankar)
>> - Use #define bitmasks instead of enum for DC3CO triggers (Jani Nikula)
>>
>> Changes in v3:
>> - Fix trigger always returning zero in intel_dc3co_compute_state().
>>
>> Changes in v4:
>> - Call intel_display_power_set_target_dc_state() only when DC3CO is
>>    supported.
>> - For Panel replay DC3CO trigger, add check for as_sdp_supported flag
>> - Add 1:1 mapping check to intel_dc3co_port_pipe_compatible for
>>    display version 35.(Uma Shankar,Animesh Manna)
>> - Add guard for intel_dc3co_compute_state()
>>
>> BSpec: 75253
>> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c  | 102 +++++++++++++++++-
>>   .../gpu/drm/i915/display/intel_display_core.h |   3 +-
>>   .../drm/i915/display/intel_display_power.c    |  30 ++++++
>>   .../drm/i915/display/intel_display_power.h    |  22 ++++
>>   4 files changed, 151 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 757a78c75bbf..375ffb329022 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -5874,6 +5874,74 @@ static bool intel_pipes_need_modeset(struct intel_atomic_state *state,
>>   	return false;
>>   }
>>   
>> +static bool intel_dc3co_port_pipe_compatible(struct intel_dp *intel_dp,
>> +					     const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> +	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
>> +	enum port port = dig_port->base.port;
>> +	int num_pipes = intel_crtc_num_joined_pipes(crtc_state);
>> +
>> +	/* Need to follow 1:1 mapping because of CMTG restriction*/
>> +	if (DISPLAY_VER(to_intel_display(crtc_state)) == 35)
>> +		return num_pipes == 1 &&
>> +		       ((pipe == PIPE_A && port == PORT_A) ||
>> +			(pipe == PIPE_B && port == PORT_B));
>> +	else
>> +		return num_pipes == 1 && pipe <= PIPE_B && port <= PORT_B;
>> +}
>> +
>> +static void intel_dc3co_compute_state(struct intel_atomic_state *state)
>> +{
>> +	struct intel_display *display = to_intel_display(state);
>> +	struct intel_crtc *crtc;
>> +	struct intel_crtc_state *crtc_state;
>> +	struct intel_encoder *encoder;
>> +	struct intel_dp *intel_dp;
>> +	u8 active_pipes = 0;
>> +	enum pipe pipe;
>> +	u32 trigger = DC3CO_TRIGGER_NONE;
>> +
>> +	if (!HAS_DC3CO(display))
>> +		return;
>> +
>> +	for_each_intel_crtc(display->drm, crtc)
>> +		active_pipes |= crtc->active ? BIT(crtc->pipe) : 0;
>> +
>> +	active_pipes = intel_calc_active_pipes(state, active_pipes);
>> +
>> +	if (hweight8(active_pipes) != 1)
>> +		goto done;
>> +
>> +	pipe = ffs(active_pipes) - 1;
>> +	crtc = intel_crtc_for_pipe(display, pipe);
>> +
>> +	crtc_state = to_intel_crtc_state(crtc->base.state);
>> +
>> +	for_each_intel_encoder_mask(display->drm, encoder,
>> +				    crtc_state->uapi.encoder_mask) {
>> +		if (encoder->type != INTEL_OUTPUT_EDP)
>> +			goto done;
>> +
>> +		intel_dp = enc_to_intel_dp(encoder);
>> +
>> +		if (!intel_dc3co_port_pipe_compatible(intel_dp, crtc_state))
>> +			goto done;
>> +	}
>> +
>> +	if (crtc_state->has_lobf)
>> +		trigger |= DC3CO_TRIGGER_LOBF;
>> +	if (crtc_state->has_panel_replay && intel_dp->as_sdp_supported)
>> +		trigger |= DC3CO_TRIGGER_PANEL_REPLAY;
>> +	if (crtc_state->has_sel_update)
>> +		trigger |= DC3CO_TRIGGER_PSR2;
>> +
>> +done:
>> +	intel_display_power_dc3co_update(display, !!trigger, trigger);
>> +	drm_dbg_kms(display->drm, "DC3CO allowed=%d trigger=0x%x\n",
>> +		    !!trigger, trigger);
>> +}
>> +
>>   static int intel_atomic_check_joiner(struct intel_atomic_state *state,
>>   				     struct intel_crtc *primary_crtc)
>>   {
>> @@ -6570,6 +6638,9 @@ int intel_atomic_check(struct drm_device *dev,
>>   				      "modeset" : "fastset");
>>   	}
>>   
>> +	if (intel_display_power_dc3co_supported(display))
>> +		intel_dc3co_compute_state(state);
>> +
>>   	return 0;
>>   
>>    fail:
>> @@ -7421,6 +7492,12 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>>   	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] = {};
>>   	struct ref_tracker *wakeref = NULL;
>>   	int i;
>> +	u32 target_dc_state;
>> +	/*
>> +	 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
>> +	 * toggling overhead at and above 60 FPS.
>> +	 */
>> +	int power_async_delay = 17;
>>   
>>   	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>>   		intel_atomic_dsb_prepare(state, crtc);
>> @@ -7627,11 +7704,26 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>>   		 */
>>   		intel_uncore_arm_unclaimed_mmio_detection(uncore);
>>   	}
>> -	/*
>> -	 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
>> -	 * toggling overhead at and above 60 FPS.
>> -	 */
>> -	intel_display_power_put_async_delay(display, POWER_DOMAIN_DC_OFF, wakeref, 17);
>> +
>> +	if (intel_display_power_dc3co_supported(display)) {
>> +		if (intel_display_power_dc3co_allowed(display)) {
>> +			/*
>> +			 * Use minimal re-enable delay to allow DC3CO entry on
>> +			 * the next idle frame, unlike the 17ms guard needed to
>> +			 * prevent DC5/DC6 toggling overhead at 60+ FPS.
>> +			 */
>> +			power_async_delay = 1;
>> +			target_dc_state = DC_STATE_EN_UPTO_DC3CO;
>> +		} else {
>> +			target_dc_state = DC_STATE_EN_UPTO_DC6;
>> +		}
>> +
>> +		intel_display_power_set_target_dc_state(display, target_dc_state);
>> +	}
>> +
>> +	intel_display_power_put_async_delay(display,
>> +					    POWER_DOMAIN_DC_OFF, wakeref, power_async_delay);
>> +
>>   	intel_display_rpm_put(display, state->wakeref);
>>   
>>   	/*
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>> index 3dc5ac75a98b..e24accf473d7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -537,7 +537,8 @@ struct intel_display {
>>   
>>   	struct {
>>   		struct i915_power_domains domains;
>> -
>> +		/* DC3CO eligibility state */
>> +		struct intel_dc3co_state dc3co;
>>   		/* Shadow for DISPLAY_PHY_CONTROL which can't be safely read */
>>   		u32 chv_phy_control;
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index 4b91747b38f1..b0f40e4233c8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -366,6 +366,35 @@ bool intel_display_power_dc3co_supported(struct intel_display *display)
>>   	return (power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC3CO) == DC_STATE_EN_UPTO_DC3CO;
>>   }
>>   
>> +void intel_display_power_dc3co_update(struct intel_display *display,
>> +				      bool allowed, u32 trigger)
>> +{
>> +	struct intel_dc3co_state *dc3co = &display->power.dc3co;
>> +
>> +	if (!HAS_DC3CO(display))
>> +		return;
>> +
>> +	mutex_lock(&dc3co->lock);
>> +	dc3co->allowed = allowed;
>> +	dc3co->trigger = trigger;
>> +	mutex_unlock(&dc3co->lock);
>> +}
>> +
>> +bool intel_display_power_dc3co_allowed(struct intel_display *display)
>> +{
>> +	struct intel_dc3co_state *dc3co = &display->power.dc3co;
>> +	bool allowed;
>> +
>> +	if (!HAS_DC3CO(display))
>> +		return false;
>> +
>> +	mutex_lock(&dc3co->lock);
>> +	allowed = dc3co->allowed;
>> +	mutex_unlock(&dc3co->lock);
>> +
>> +	return allowed;
>> +}
> There are a number of places that check for allowed() &&
> supported(). This shouldn't have to be the case. allowed() should never
> return true if !supported().

Agreed. I will add the supported()
check inside intel_display_power_dc3co_allowed() and clean up the redundant checks

>
>> +
>>   static void __async_put_domains_mask(struct i915_power_domains *power_domains,
>>   				     struct intel_power_domain_mask *mask)
>>   {
>> @@ -1045,6 +1074,7 @@ int intel_power_domains_init(struct intel_display *display)
>>   		sanitize_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
>>   
>>   	mutex_init(&power_domains->lock);
>> +	mutex_init(&display->power.dc3co.lock);
>>   
>>   	INIT_DELAYED_WORK(&power_domains->async_put_work,
>>   			  intel_display_power_put_async_work);
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
>> index 05880e9da89f..0b1a06f88ae5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>> @@ -131,6 +131,25 @@ struct intel_power_domain_mask {
>>   	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
>>   };
>>   
>> +/*
>> + * DC3CO enabling triggers (bitmask).
>> + * DC3CO may be enabled when at least one of these triggers is active.
>> + * Additional constraints may still apply.
>> + */
>> +#define DC3CO_TRIGGER_NONE		(0)
>> +#define DC3CO_TRIGGER_PSR2		BIT(0)
>> +#define DC3CO_TRIGGER_LOBF		BIT(1)
>> +#define DC3CO_TRIGGER_PANEL_REPLAY	BIT(2)
>> +#define DC3CO_TRIGGER_ALL		(DC3CO_TRIGGER_PSR2 | \
>> +					 DC3CO_TRIGGER_LOBF | \
>> +					 DC3CO_TRIGGER_PANEL_REPLAY)
>> +
>> +struct intel_dc3co_state {
>> +	struct mutex lock; /* Protects allowed and trigger fields */
>> +	bool allowed; /* DC3CO eligibility result */
>> +	u32 trigger; /* Bitmask of active DC3CO triggers */
>> +};
>> +
>>   struct i915_power_domains {
>>   	/*
>>   	 * Power wells needed for initialization at driver init and suspend
>> @@ -187,6 +206,9 @@ void intel_display_power_set_target_dc_state(struct intel_display *display,
>>   					     u32 state);
>>   u32 intel_display_power_get_current_dc_state(struct intel_display *display);
>>   bool intel_display_power_dc3co_supported(struct intel_display *display);
>> +void intel_display_power_dc3co_update(struct intel_display *display,
>> +				      bool allowed, u32 trigger);
>> +bool intel_display_power_dc3co_allowed(struct intel_display *display);
>>   
>>   bool intel_display_power_is_enabled(struct intel_display *display,
>>   				    enum intel_display_power_domain domain);
