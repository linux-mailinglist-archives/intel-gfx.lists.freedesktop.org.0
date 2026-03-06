Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KAfUFXWCqmkHSwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 08:29:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCF521C777
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 08:29:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2A7910E38D;
	Fri,  6 Mar 2026 07:29:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ry1OUsMf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEFE310E38D;
 Fri,  6 Mar 2026 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772782194; x=1804318194;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=JGoh+p0uSjCKmFdrcgKdbuiGaLT+QzkVHhZ4Y3ec1u0=;
 b=Ry1OUsMf11GxwI3Bc5dLoUsKQJ4jfGXhgPAxX3TOYHz7ykRjlKvjUL2n
 I6/K6WHHGkEFKokqryQixwyZ5r3xcnwpeuQZJpImUiv+iTGKB1BWWQAId
 pbVMO8JXuY46Vvx2JheUi5p43YfSS9I9edGZau8jqdYts7QBhMZWaoxgm
 MUso4Wr2SmDFd1C7pA/Z+vsdIZ/TI9wuLYT92K1OlwslBXwst64KsWnxn
 75585/Fth0xKkfP2AD+EmweUZOoYN1oKkfOI10jGEEEHdc6zeP5U5vvhi
 UZ+I5ooQui1OreBU1RCDciET4V2t2pf1PrIlIH/20JVakMwa1VFI5BURo A==;
X-CSE-ConnectionGUID: kBinduaeQdeciYIN3uSeKQ==
X-CSE-MsgGUID: 53ERuZedTdG3prSywH69hA==
X-IronPort-AV: E=McAfee;i="6800,10657,11720"; a="73586579"
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; d="scan'208";a="73586579"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 23:29:54 -0800
X-CSE-ConnectionGUID: 9qkJLRKfTpW2xNrtdo3P8Q==
X-CSE-MsgGUID: bc3qxP1nSsixMVRmfS6IPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; d="scan'208";a="217139647"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 23:29:53 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 5 Mar 2026 23:29:47 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 5 Mar 2026 23:29:47 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.13)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 5 Mar 2026 23:29:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FTfw+i7F2L/PZYtpfiKrSwD6XoxWd59O5iQ4y3ouS1WvwH5G1L+aU5WrtaYZI2GovPS2O8jc7aRsrr1waeqiuV5XxfWpKbYeJJujbYkTFGF6xzM3uawVFvd4jykX1c0o8JQGALOI97vpHCid7IjUkRQy9KDf4JWxJFznrthPQcWVliyv+9RsGI9XA5rMEXbYQL5duqEBv/SXA1avLyecGvs/E4GlgKfqqLAXkffi+De6rGiwPHyVVNHN3tYWRIAibiF+OlVUPWzNeM0Pk37jYYMyQ1O7NxBCYtFSRICzYSjKfjqgAcA2a6dr51ZYpAUh7CWHG6hqr6Gl+A4unLKtzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ui4iPcLbGsANchcxBomLI3j55rwWBAHt/dVbp1bph2k=;
 b=cvQI9VVKiHX80Hd5hT+UwScwPENi2GdOtplUJ01IyIhE4Hxf0xGib4e4gDJoCoePpImBjn9m+5BVj0hOnEzd+e1SObRJsV/L5x4yoG8CA7RLa2m+GiYmZC7oxKM2MrixuJUfgIx1L9AIuTcnFslkniD6B/4JCMpfHFz/D/jX2kry8V4JI88WemkbhYn+2ObCvunDY6VYE6ajEMijBq6GntJOTKk386xNadKWnv2PrIooxYiq+X6fQTKSZXI0zks8zAqKxrDV+bG4uXGBE4EfxHkNoJ4eF9npXXApvM8am0P3PYPJp2TsmhAy06sN8O3wDzeJTMz/14G3HgOfqmdgug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5064.namprd11.prod.outlook.com (2603:10b6:510:3b::15)
 by DS7PR11MB8781.namprd11.prod.outlook.com (2603:10b6:8:256::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Fri, 6 Mar
 2026 07:29:45 +0000
Received: from PH0PR11MB5064.namprd11.prod.outlook.com
 ([fe80::84fe:e701:add1:4de5]) by PH0PR11MB5064.namprd11.prod.outlook.com
 ([fe80::84fe:e701:add1:4de5%6]) with mapi id 15.20.9700.003; Fri, 6 Mar 2026
 07:29:44 +0000
Date: Fri, 6 Mar 2026 07:29:33 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>, Zbigniew
 =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t] tests/intel/gem_lmem_swapping: Expect gem leak
 helper crashes
Message-ID: <3h4bvrx5anwgoyafqhc32eoa3wvhvu2p6pda7xwutj3xbqrhec@dxbqr7jw4v4m>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260302131817.3744919-2-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260302131817.3744919-2-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: DU6P191CA0011.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:540::25) To PH0PR11MB5064.namprd11.prod.outlook.com
 (2603:10b6:510:3b::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5064:EE_|DS7PR11MB8781:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f4975f6-e536-4a60-0120-08de7b522314
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: CYgctBWg2WF5EJBZ2ijdTEPMY5jGqM1DzYCD5idT0xcFfPFdBhNUq4QC4CmJBaD4RwfDiNVq7HtVoAHimw0DipcEVc6K1D18TUQVRJyVEp/EMImpH35cDSxqQraUqf4m/rthjY8SISAdjTB967Bv/4/e+Yn6YvPm2+1KaYnN0P9nFVxvB0Q8pNeTwGTtXtJvNpjburtdZZTIVP5ZzYh3hsMSpCvnmyc+fy7G2KMWcxru2VPqlOXkQAIjmHMrpaT3/0KX/2osVVYJ5ajsBpHY4CNxpUZhPBJLSnno/BlD5e3zvrr8eqKL+uj1RZ02XyX8mHdOkjg2/NglaULcrmdkcg1NPQHc0ht7+UK0dI5f1fn/3lVZA0KLNqe9A48uTUq1hMjQCc95KuMNpwJfTDsoG58urqCVL9mrCWlXeciJfQCRUR2BZSQjIhMEHm3zOwKC4a/2hLLvlWWlxoMS3P5scb51UridzvY2fJsS7w0CQKO/aBSom7IoVZIIZE0BSWP8fwhAG/F1TBGz7VnE7RcSzUvPdF6I+ejpbmARyrd/vxeQ6v3QAneY+TeKNo3nxDCTOnbBkrKAFSHJPTE3VreZ7KV5OldUcQgY8gxUyrWFJ+aORydypbkGogSUJv+KnNroyc4KKXz3CCFm5eP1Qy3Qr6jKoDvajM79aaF24w3ErOS8kPs54mfreF4numWzjBHx2ABpEegFIasKnUKp8KFK5dWQ8swhYRHWf5SeNUB0Ne8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5064.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y0FQenJSR3RUNitwbkJ0eE9NWFdURG9TTEYwSjhWdElnY25CRjdiaDJkMHFs?=
 =?utf-8?B?aWhoM1lrNXVhY3ZzVEthMENxOWxueFg0bU9UOGZSaGFERG1kd3pOYVBQKy94?=
 =?utf-8?B?enZNM05uOUc3Nms0MzZ6anV4TkRiVXNmTWFqa1M0cHJUK1pHY2xjcWwrVzF6?=
 =?utf-8?B?WGY5RTFXNjdjeFpnVXJUVm5sUmJoNXE1akRuTDJnZFI3U3dEOHQzMnZmVU43?=
 =?utf-8?B?NjZFcWNHd2lOYm9SZXFVWjZrdGE4Y3ZjQjM5WUxObWoyQkZDcXJaRllLOHoz?=
 =?utf-8?B?OTQvalBEZW9xTFNiRjJIVXFmV3k1clk3S0cycG4rK1RwcjVKMyt6UWJOS1BN?=
 =?utf-8?B?NDNmZkdoVFgzckFPaytSSkY4YW8yUmJ2aHJSQzlXYVNna3piQktIQlJ6UGly?=
 =?utf-8?B?VzRLbHE3T3gvRDlxalRaM3IwVHo0S2wwU2JYbUczY2JQU0dpbCtGcTM5S0hl?=
 =?utf-8?B?MjFYamh0ZmR6Wlk1eXQ0bzRnaDM5MTFiQUNLOVJ5clhhTjhlRHYwQVVvRkJj?=
 =?utf-8?B?QmxWejhSek5WcFJLVC9JNU93RitXcVhFR3o5SkFwVEh1bWJHMmRkTWlnNUlT?=
 =?utf-8?B?TmhvYktaZWw0SlFpd2hHVitycUZmV3lPL1htY1ltRlZFR3hUdVVnL2pXbndE?=
 =?utf-8?B?cCt0Z1d2dk16UHhweFZpSmVkWnBRM015Q0N5d0c2VnNPQ2xUNXgyZjNNSkEv?=
 =?utf-8?B?MHZOU1FkSzg0ejd6ZXM2SmgvRVVDbDlyM0szVHNpTmt6K2w3RmsxM2ttM1V5?=
 =?utf-8?B?SkUwN2V3a1F3dE9EQXkyVStpUm82cmVzOFRjREdGQ1Y0dWVZbmNwODBTR2Y1?=
 =?utf-8?B?VzlTQTZqOVN6alFLTEplcTZud20zbEc5QWtOaFJ1b0JCcWhIU09rOFBhVENk?=
 =?utf-8?B?cjJZTERZMUFuZ082RWQvRzkrZEJEdzErTlBYZGorb1NDb1Y5cFRQNVNCTDVo?=
 =?utf-8?B?ZWtldFg2QTdIdlRVYXZMY0NtMjQ1S3dvK1lzRG55MHpZY0hxU0dBRGV6VXlQ?=
 =?utf-8?B?OXBUbmVkNmtIYkRKMEovSmRNYmFGejE3RUVtMG5XTmRWWnprSWgza1lwZzR0?=
 =?utf-8?B?MXB5aEkvajhUV3RSVmg5WUgvTmF3bW9aT1lpVjJzbnRLSVFzN0RodlRFcWtP?=
 =?utf-8?B?UDIxNWhQRy8xNE1kZERvb2luSjI2Mms5S1k0VTlHRlh1TkJoU0Y1Q3l0YWE3?=
 =?utf-8?B?Z2xrQlhSaFBIRVVSV3lITTVHYUVDSW83NzlPcW16UkxMNjBzc2RkbkYwOHU5?=
 =?utf-8?B?SzlNNHliN3k0bFJXUjloMFhPWndnR2JWeHFVcmZtWVI3bVRSYkJWVTdoNndk?=
 =?utf-8?B?a3NPRitERTEzUE5kS0JnMmx6a3ZrRXpNZ25LemxMOCt0N3NCamtKZHE1S094?=
 =?utf-8?B?SHJaSXdnM2FYbHRhSG9jUUlCK2RGbWZjN2R4MitNNTZMZXBocGF5TUJuVGlF?=
 =?utf-8?B?dlMwc3ZFS09qZ2lEVVRjdGIyb2I0RU9LS3N2cXlCSUNNN3JYOVN6dHJNZFVq?=
 =?utf-8?B?enlwRzUwS21tRllMN3dRUmNxZnlLTWFrdjhHYkowY1RXSDhBWjh1QWRVcWNr?=
 =?utf-8?B?RUhETmZxaHNBblkxVFduUTUwbFUzcHhaWEMwVngrdURPekVCa3pQRWY3cjdP?=
 =?utf-8?B?NnZFQzlqTW90eUNKbmRldnhwVk5DSk4zbUhpNm56cGhmZ1c2SnBMTDg1a2dU?=
 =?utf-8?B?SWQ0N213Zm9ZTDVqaFk2dkpHSmx4K3FQekRkTk9hbUhPZVJhYXhMcTRqOThV?=
 =?utf-8?B?UWhoRmh3RmxsTXNjTkJ5SHd1Q1B3YXlRYnNPNVlpdEtYWW5vbDYxdGI0dGMr?=
 =?utf-8?B?VmxCU2o0cTIxSjgvcmpKdTdRTzVMUkcvNmNSRGlnS3pQUlpoNDJqa1dBZnRV?=
 =?utf-8?B?c2VvL2RNTTFScTYzbWsza0lVa2t6N2ZtbU1ZZm80WmRGbnpEZ3B3Ymo3UkZa?=
 =?utf-8?B?c01YYnJ3SUxvbFRyNExZRWN6ait0LzVhVXY0YjBkNjkzNkZoTjZpbG5WcG8y?=
 =?utf-8?B?eUc2cUF6UFY1dFVRYUFFb2M0QjVoTzhsR3RneFlOS0FLV0Q4L2RZbk9aaGFt?=
 =?utf-8?B?eW93VXExV2NtVnlxaTJ0dEI3UWlveUxXUmM1andReHJzTkZCSmhMcUN2UG5L?=
 =?utf-8?B?UmgwM0hzSnNLcWFBQ1VZREwxYzgwbWRQRGVXR2tSV1hmTFZHc3V1dDJmNmtr?=
 =?utf-8?B?dmFwOUVOZm1ZOGZEVVVvUlhCMXhqaGlLRm1lcTFmQ0hDclN5WHV6UXJWU3NE?=
 =?utf-8?B?U3RPcmswVUJ3MmJjc0VBRy9yMkE3ZnJBUEV0SU1ZMXB0dlZ4OUJ4MGtybGxH?=
 =?utf-8?B?dk5rNVdSbEV1ellqZ0xvdkFudU5KSWtsWVRjTFZyTi9CWmxMNzM3ZmY0d1gv?=
 =?utf-8?Q?9r514rQFZK6Er/UY=3D?=
X-Exchange-RoutingPolicyChecked: WwUlfm0KYV/LDuYXP/cJKYl0HvAhmhE7UbwNynxOgrhs13OoYG0s/Qm27BrQ75GSjOeksyohT3AowQfirQf+54LNZJ1OcH5elpQXT2RTEeTohBzbzcekML5E3ZZ+ofQ+CYEaVNq1bF9+Q0EYBx6Dw88tnega5HGwJy6nbw2jitCPJG5VfPg1EZ6qtSi3oTIpO0wjYRuK8/C8snYt/U2ryL7XGfZeqpSaQ8aFnSqMQ7kZMN+OGc7Ej1JPompwaaXDZSytJQTxcFYJ0XYURNToOCeqd5oxZ1UcVjjXwoCVWFmUEkc1vZoa3yqzm756i5kDM9uJsC+zbrfDa6477XsFqA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f4975f6-e536-4a60-0120-08de7b522314
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5064.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2026 07:29:44.8826 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b7QgdccX7F+7YvgP284aWkIUFKoCzVmU5ZeH9LRypRzAWTy8bILC3F8wRybrwSy5k+AA2B553uq0YhnEQlGtNbvCqdqoJO3cdHh8KmGYibA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8781
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
X-Rspamd-Queue-Id: AFCF521C777
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Hi Janusz,

[...]

> +static sigjmp_buf sigbus_jmp;
> +
> +static void sigbus_handler(int sig, siginfo_t *si, void *ctx)
> +{
> +	siglongjmp(sigbus_jmp, 1);
> +}
> +
>  static void gem_leak(int fd, uint64_t alloc)
>  {
>  	uint32_t handle = gem_create(fd, alloc);
>  	void *buf;
>  
>  	buf = gem_mmap_offset__fixed(fd, handle, 0, PAGE_SIZE, PROT_WRITE);
> -	memset(buf, 0, PAGE_SIZE);
> +	if (!igt_debug_on_f(sigsetjmp(sigbus_jmp, 1), "PID %d: SIGBUS caught\n", getpid()))
> +		memset(buf, 0, PAGE_SIZE);
>  	munmap(buf, PAGE_SIZE);
>  
>  	gem_madvise(fd, handle, I915_MADV_DONTNEED);
> @@ -745,8 +755,14 @@ static void test_smem_oom(int i915,
>  				}
>  			}
>  			igt_fork(child, 1) {
> +				struct sigaction sa = {
> +					.sa_sigaction = sigbus_handler,
> +					.sa_flags = SA_SIGINFO | SA_NODEFER,
> +				};
>  				int fd = drm_reopen_driver(i915);
>  
> +				sigaction(SIGBUS, &sa, NULL);
> +
>  				for (int pass = 0; pass < num_alloc; pass++) {
>  					if (READ_ONCE(*lmem_done))
>  						break;

I think this is a neat idea.
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

-- 
Best Regards,
Krzysztof
