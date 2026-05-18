Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BooHzuoCmp/5QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 07:48:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5AB956673F
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 07:48:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2A0F10E66A;
	Mon, 18 May 2026 05:48:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b4TvXB3W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAE4610E5A4;
 Mon, 18 May 2026 05:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779083320; x=1810619320;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Rn9e5EUmq3gZFvcG9DW+PLLC7Iop6BvHI7BIgE2rqYs=;
 b=b4TvXB3WkThbJ2IgK87dNuhlQI7Xhze2AqzRFeLZtJkeE8qodJ0VLTiT
 AwcD/+bfTJglNcXWEFUWliLGNsdmTbxrO9GZe0zLS45X+5lvNdgWKmMNK
 IVD3y375mAjn/ZDRuJ5gK6LgwGuMdGLRTyworHCaZr0MvfOOIpsYBRmaP
 Vxe2hBvS5+7VnECzQSDw+1bm8QFySL+AdvmjuZJULWe2Uo/JPpREoIPEs
 Wl6Y1xa74xTrXR+cMqTj8OeO9fslR7NXSVh1NCSY9mTzP8mu9h0JMOgtx
 cVkJWchJ4SQ8SH7DNzDLHZMo9+86+VefQTnQxdvHqCnVoVdxouGsZZI3A g==;
X-CSE-ConnectionGUID: tpUlmwSkSPq/bMFY0l5KoA==
X-CSE-MsgGUID: obs2nknpSTm6jLyKlbap8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="82493168"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="82493168"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 22:48:40 -0700
X-CSE-ConnectionGUID: 3ik2lx+GRXOzcMnGJbbCMg==
X-CSE-MsgGUID: Sz2kwEE2T06AOxENyiOceQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="238438994"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 22:48:39 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 17 May 2026 22:48:38 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 17 May 2026 22:48:38 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.58) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 17 May 2026 22:48:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NCpmYZuomdeT+7O1dZRuU0F7IXlZNAvrycbTXSW4y6eCTD2uaexG0o4GDpQeuv7WmScZc25BkrFzJz1dcLNDQorhwMz8H1SQGrtHSNEYcJ51azdohFhxLtkZrctJ3sp9xpyXGTnSHBw3/2DOvZYYyj5jXAIjFo8WD9bH79S8HkaibQ7btxJV7epL0gjzH6Ipf9P0lHpbUUqYfNsSeqQKivl0g4fWbkINBXqi6aP8lW+kpJcb4bj+yBXn1BpsrSUx6o6+qZaLWraMBvU9+FWfq7F38gxnvpTw1wX5chg36zWEswgxpeLagQ8ktGDuvuhf788VmxgWkIpWHI223+sK2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LExwE47wvRY98ANK2LSRRAgqvRYefIB4KG/D/5fhlDA=;
 b=jiQLsCoDo8ct5/tjjxZ7BFkfGW8ObnrqA+gq78fjpgKqH9EhKBhUu2TO4Gt5h/bP7XDjrtyHowlSg/KY/VrtSxlCHXn9wZj2YkhUnVoGCzIOmHR3g0MgPJctLSlwvnNNGhqXKetC+zbDGdMJrGEHeh7fJfOWkctplARcWki6VlRYLbsWxuSd9jJfVrpu2TYKzTRF/wD+fDUhn19brXPKqWZK/wAl5NLz/XqZgwlX7snMsq9NC0ILj+OX+z13Zv1g+UC26fITXhnd15AwaMHqEpipSBpT7w19Am2MZ7Ad8XUgP6n1EWO52z542H9mb7p0FU7Rd/JSRMYLJzQL83hXuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by SA1PR11MB6784.namprd11.prod.outlook.com (2603:10b6:806:24c::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.21; Mon, 18 May
 2026 05:48:36 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.20.9913.009; Mon, 18 May 2026
 05:48:36 +0000
Message-ID: <b6c34b88-dbcf-43f6-a079-68c5a0487f14@intel.com>
Date: Mon, 18 May 2026 11:18:22 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] drm/i915/psr: Use DMC wakelock instead of DC state
 for VBI
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <jouni.hogander@intel.com>, <gustavo.sousa@intel.com>,
 <ankit.k.nautiyal@intel.com>
References: <20260430134505.1728443-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260430134505.1728443-4-dibin.moolakadan.subrahmanian@intel.com>
 <78aeb45ca7f758089337b644814d195ad2dfdbe3@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <78aeb45ca7f758089337b644814d195ad2dfdbe3@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0226.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b4::11) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|SA1PR11MB6784:EE_
X-MS-Office365-Filtering-Correlation-Id: 652ebae2-5d83-45d2-5ecc-08deb4a11a2d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|4143699003|11063799003|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: nyvvQ2ZwPj9Y8ByxEvRw2MyDHmaLRTCtXfVPRg2dH9IWokMQYesx6jpYXNWHMfAeUqbC5RUxQt872t22HXj12A0sxBgHC9EYyxMWpThYbmyqk/APph0+8o/sftF+0Crwaxpsid5AcKDGZ8H29KDn2e0d7cASI8FzX2Vy8MwB1MIVOZXRmScW85i76kbJqkWd8DD4ekOBSJ1Wl/6olyRCU4g0HVbnPNcl59m2QoMigNhzQjpgW2Q0IlGRNdTRzNNTvtoM/CNOqfeeD2zvg8/dhk+UciEH73VBYMo5Z5H58MmjQ/yePzoWilVyzGrUGgOsO2LAhoB9fUZszxeJAnZRVXMr/z//ep62ti/eFfO1NS0qndk5mUflXn7TvJM9h2F78c8k02Fln9jwnm/4qf7AIYVRO4aQ0rtboEK5ZEvpcMsvL/0ZMY/KYv96WFkmxM2jdnhUmibnWPruVxGcJ/Rq5/g0y9+jlfQ8ohmsipYuYGZN513v1tBzeT8K6ab8chIeHF8Wl6IO5sNHsxsUrJMXCI/XNjr/yNPnp4xVT5z5uWy289TLc9njuHJXBhtIu73fBw9Yn8iCgAO6pWWR2zndwfh692Wo8YFifxJQRHUyUTLucvnhmn5tvXujXglTwt3Y0/4dW7khHs9aKutYgmpp9g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(4143699003)(11063799003)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHdDdE1ERGFvbmVKQVpIS096bUxDZTRKUmUxYTQ1UHdIeVFUUW03WVFFZ1FX?=
 =?utf-8?B?SVlMS1EzMEx1SVZPQWNVdm9SVFU0Sndubk14YVhZeFN1a3l2a2lPRmxPQWJD?=
 =?utf-8?B?V1pvcjY4RG9mcDI5d2lNMldpMTZLbWRsUE1RSi81dFR5R2o2L1hiOHh0Ulph?=
 =?utf-8?B?bGtpdHc2dCs5a3hCbStaTFlnSCtNVmVuMEJXNWdTOU0rNUNaWEdGRmsySHd5?=
 =?utf-8?B?WDM0R0diMGRiR3A1bDlHZEZzY3lBakY5eXdITVh3MXArdXprazA1VWNXNzdY?=
 =?utf-8?B?SzJxT2JzYllMM1N3SndEODBYd0JFbWpGK214TUlSd3JFN3BxYUVtak5nREIw?=
 =?utf-8?B?RTJQZjNERWJ3QVE0aElDUy9DRGNZckFyWWlnMldvL3ErT3ZHcFFMWmNYVUF4?=
 =?utf-8?B?dXlBZE0zOGM3Y3U4bXV0cVJSNStEMXVORXdqdk00VzVLWnQwTXhhaW5HNlgw?=
 =?utf-8?B?QlJ3S2xmNUJ4NDc0UVl5NDYvSEdJS0hSU2lBb0JKUmxFVk1DTkxpd2NTSSti?=
 =?utf-8?B?cjdYQmpFaDlMK0t4dC9pUGN6VHZxTzBGcTM4MEx2MW5TdkdnMkRvTGtsS2Fy?=
 =?utf-8?B?NDJaT3ZIZWNHSHJXYUx3VUJocVl0UkdVYW91eklYbHB5VWMvNHNzd01kMWR4?=
 =?utf-8?B?MTZtb09tQzhENGtBU05MMEEyZnlMUURDUEEzQUwreWRQSldzNnE4dDNVRDUx?=
 =?utf-8?B?eGc5aTRSejZYOHNaZHBYMTRUNlVPSUh2WjdjWVhaMTh0MVlRd1o4YUxwZkll?=
 =?utf-8?B?UmFCdEtLaEtlWVNtWlJIUmFlRFFSblhWcU1UaTBCQi9TQlJBaHZBYmJTUURG?=
 =?utf-8?B?bDRGUWtTS2ZDU2xUNVYxVktkU2tNTjZDb0lna2lFRFY5YjEzOFFIR0Fzc1Av?=
 =?utf-8?B?OUgxNTRibmo0YnZHTmtRNUJsTEh4bnpQSGlYMDV1eFkxcjl0blM2UUl6RUs5?=
 =?utf-8?B?ZmNVVndwRi96TGFFSFRNcDhoOEp0N3YwbFUxZVNxeUNDZTk5RXFJekp3U0RQ?=
 =?utf-8?B?d1NEWnJWL3d5R0JLRmR0LzNsdVNGZWI1dVpYYUx1YU1Ud0NuTVJZUkkxM0NK?=
 =?utf-8?B?Y1FWYkI1aE5lTFdlQnBTUDIwYmgvOHRBMlMyQzcvZ0tMTWwvbDIzdHUvZkR2?=
 =?utf-8?B?M2tCZ1BCNVBMeGVZN20wK0JDZ2J5M3R3ZkNwNVAxalFDam12M202aXNRZ3dQ?=
 =?utf-8?B?Mm9vWlp5ZEhFOTNIdlkxMVNUcS8zRWd6R25Fcm9mMmFVYndUb3hHU3dQMUMy?=
 =?utf-8?B?eUtZQ2s5ZTNHMTBKWUhkVzREejR1YmxLcW5ER1ZGMnA3WGUrUXNpMzM1WkRV?=
 =?utf-8?B?Y1I0Y1FkbkFPT0NqaVBWbWZqTnMzUW5mM0lSTGxrL1NzUEhKZ0o3ZUdYY3BV?=
 =?utf-8?B?QjJEazFZVUkycExJUFYzejBQUmdZS0U5QW9TeVpXdGF3aHNYYlRqbjdpbStj?=
 =?utf-8?B?SzBnblpybXV6Z3pJaS9uNDRGbjJ5NzErQVlnYnN2M014eTE5NlBCRnBLbzh3?=
 =?utf-8?B?RTl2dGZIZW1Ka2xKa1VRTVZyUWIxMDAxT2txcWt6cWdaTzROSXFkZ1JpNzYz?=
 =?utf-8?B?aU9STFlIRzZ6bVVKY0hudk1aejBiaE9rL3pSZnVIL2d2ek1CNTVkR3lvc3gy?=
 =?utf-8?B?ZjVSNWlpRk9vOUt3dGdmSHVYbStjQ3pZK2xoTnkraVduc1hqdU4yUkJ1MXNB?=
 =?utf-8?B?dVJpOE82akhRNXBDNW55RmVmQW45Y3lvdEFIUDdtMVlmQnNpK3JybXozK1o5?=
 =?utf-8?B?LzlrT0c5d2t1NnhMQ1VDYVNIVlpHU0tYeHhRZTJCK2hQbkRnNm53Rml3aDJB?=
 =?utf-8?B?SFU4MVBUZXZ2MmFVY2ZqSzVlSGpiMVI1SmxRbjdYMFdrZHJ3NklweVFpNHpT?=
 =?utf-8?B?N2dpL1NUL2NGeExnNmJiMnNaa1hYQlVqZzRlMWIxdUhHaWlKblRlSkJCWGk5?=
 =?utf-8?B?cU83N1pOOHVsZlpMdEhwd3JDaVRSek1qTnZjbnZhQ3pqdkFKSmVqY0ZkeVN6?=
 =?utf-8?B?b2k5Q1FYaG9yajNtdUhLMytHaHArczZncC9odkY0dG5tRUNjdHREdE0yYUNZ?=
 =?utf-8?B?YjhkYTU5K0RWMXd4STB6cjVTVWtSdGwzbzZkZWpMZ205VGxvU3pUSm1PUm9L?=
 =?utf-8?B?UVl1YjRGUm9sSUNjSjhSTllPc1dZUk5pNzFaYjZ1aW43KzZSTUVnYjd3eFFu?=
 =?utf-8?B?ejBJYjgrS3JkRDFBVnJLQ2ZoNUlDMGtadjRscG84MGJKZ3lqeWNIZ3dJZEpk?=
 =?utf-8?B?ckhjV2hNUEt5TDFxMmErRjVVTk9ZdFVaSy9DSFg0cWIzdVFPeHhjVzU4bExq?=
 =?utf-8?B?OFdkdjhnS2FCVzcxSkNSK0F6VEhEQkhzN3NmOVBrWVAxUlNIWEdLZUZlZTlG?=
 =?utf-8?Q?T37O2zf18uOe/zXA5dHCWU2IqxLRlp7OYKV7f?=
X-Exchange-RoutingPolicyChecked: GlKBZH1jp67sgTFFh9Kk0FGzFbgDEcpa1ww2TZ/fDokK0bL2RPJ66bT6HsHWelLARILufwT6a0E/C9hXB6By6PTJ/DoOs7c47NMV4dc58t3kx2greE19zvnIQkk2886CzC/yPH8INuMbVqKfAYuEFYuIbal/KZkYd4QxFq6fyplXR0f7gaUkRZNSl1UVReRYlorxbarxE3JF9Z2aaJxcdom9GGB/uYoxYhKAotvX1XowVDe83V9un43OqAzpg2l5LzvY1cHKkuTYjX6p2x1A0IUCalH81H67SaTqGlekgV2WvtvEzZi+U8oItyvt14YbdKUzkHnhCGvxU7lggMzWxg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 652ebae2-5d83-45d2-5ecc-08deb4a11a2d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 05:48:35.9725 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cl1Txffgom4wCA3DTcEOx9fwRm1dwgiCsjXiiymGAb8A4jrYjFwR9iYd5+Etue4VtPBeGsPDw6OLYG+hXNo6d0QzgkkYfItfH+f5MtnpM5DZb3oLz0Drdvk2vKxFSDm+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6784
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
X-Rspamd-Queue-Id: E5AB956673F
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action


On 12-05-2026 16:41, Jani Nikula wrote:
> On Thu, 30 Apr 2026, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
>> Use the DMC wakelock mechanism for preventing DC entry.
>> platforms without wakelock support will continue to use
>> set_target_dc_state() to disable DC entry during active vblank.
> Why? Every commit message needs to answer the question *why*. I can
> match the "what" above with the code, but it doesn't explain at all why
> we should make this change.

Thank you for the review. I will update the commit message to explain why.

> BR,
> Jani.
>
>
>> Changes in v2:
>> - Use intel_dmc_wl_supported() instead of
>>    DISPLAY_VER check (Gustavo Sousa).
>>
>> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/work_items/2296
>> Fixes: acfc688bc51b ("drm/i915/dmc: Reduce wakelock hold time")
>> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_psr.c | 26 +++++++++++++++---------
>>   1 file changed, 16 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 9acd47392192..5b48a677bf39 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -4151,16 +4151,22 @@ void intel_psr_notify_vblank_enable_disable(struct intel_display *display,
>>   		mutex_unlock(&intel_dp->psr.lock);
>>   		break;
>>   	}
>> -
>> -	/*
>> -	 * NOTE: intel_display_power_set_target_dc_state is used
>> -	 * only by PSR * code for DC3CO handling. DC3CO target
>> -	 * state is currently disabled in * PSR code. If DC3CO
>> -	 * is taken into use we need take that into account here
>> -	 * as well.
>> -	 */
>> -	intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
>> -						DC_STATE_EN_UPTO_DC6);
>> +	if (!intel_dmc_wl_supported(display)) {
>> +		/*
>> +		 * NOTE: intel_display_power_set_target_dc_state is used
>> +		 * only by PSR code for DC3CO handling. DC3CO target
>> +		 * state is currently disabled in PSR code. If DC3CO
>> +		 * is taken into use we need take that into account here
>> +		 * as well.
>> +		 */
>> +		intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
>> +							DC_STATE_EN_UPTO_DC6);
>> +	} else {
>> +		if (enable)
>> +			intel_dmc_wl_get_noreg(display);
>> +		else
>> +			intel_dmc_wl_put_noreg(display);
>> +	}
>>   }
>>   
>>   static void
