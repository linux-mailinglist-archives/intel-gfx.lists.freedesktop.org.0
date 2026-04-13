Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMtdM2Lf3GnrXgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 14:19:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C87C3EBD05
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 14:19:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BF9D10E341;
	Mon, 13 Apr 2026 12:19:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X6GcchFg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 831F010E0D5;
 Mon, 13 Apr 2026 12:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776082782; x=1807618782;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ulF44H/yPk2sWZTJEx9sFf5F4bKgpjJjijdtYRTwibg=;
 b=X6GcchFgUbzEhZHTELEhI66Gzw4L4GIVp8d6UKNHJgyqKgccuVf+X242
 56nmRQEEQIgzyMvfY2Q3s0x0Tng7ECCDvi2oxR91aDftfVwp7xoF8LfGi
 2pbAxLYMIpUV5CiAyFY5QzzACpCo2U44sQuPUMUDE4PLVOr6mwo0jy28I
 uzmKJAgz04TSil0TJuzIUzT3aYQFq8ikkR50PF8BVJdwR/p8x+WGYcILt
 XIbr99x6Hq+a9KtqkYZVI++ihcAEjGLlXItjE6o4Sdc4KVj/ahmYPxR5w
 2nUcB/8pc1yA9A3RCgQvV1K6/UrfTmqyIlrntlmRYo2PaPP6z15ynOxTk A==;
X-CSE-ConnectionGUID: N0ObzHRuTvyrskuigCaBNQ==
X-CSE-MsgGUID: 9v+GFIJNTYOhgQqXXoNHrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="77086489"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="77086489"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 05:19:42 -0700
X-CSE-ConnectionGUID: /Do57dksQnqIh1sHfmM+Mw==
X-CSE-MsgGUID: TSVKi8MHSLyVWSCnbEXGSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="227091250"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 05:19:42 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 05:19:41 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 05:19:41 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.12) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 05:19:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iU7c5/glo80YwA5r/YlQkH4SUvw5HJ9IpnORN/acf3kZWtAIZhiF+PdylVWWgLNXDgDMjc6umaA9t1rW1YmBU0F0VqpfESC0KhYCW2mdLJV5kcu+S0+vpWzCZ9DtlAl7Wjp1xkUV/T/sFhqneocOBvPWdgUe8Bq/h6TXdb75HqN6+NwCfATRqAAmh34DJ8Q9XwWhzHUrIE9TH5itJCFb2Xs//Eczls1iDL/5tRboBuMgKOgJzU+8F2SCv51MaZrpgWJhDf4SWCUQz5kqBAGi+YPjHZ3i91QLC/db63k5W8eYoE/HQFYeaHf5bsxFk2ZRuMyeeKIaKHaz5mkzFIdNgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T3IAGuiqHBi5LEq7V996baXN4fXdkDURgg5RxlaWbfc=;
 b=bp0D+S5P52IN/5yfGeAJWwTQmha71uLXNH/dhMFjR81wuha7ZAmMD7FHRECi8eOLuk76GnjQn+CuhZLsJU+dNdwgpqtxW5lRpXmNyNnUrn5laHhqZejM27sUP7brhyIeTyfwKsWMhFXxEMZldBZoovKJorAOlVwSCLeP3e6A7zCFJ75wjfHSmZQF8o1OGNhnw6mivyIWl05vPvw6tUjjR00JRpecbltcXUsMiZoYjO7uSdSZU0rZyL2rlti09O4iM4TawptpNbaxXL/Not77Q1N89XI9kxxUwmWB7OuKqq26YZQ8om/9lOz4LAaLpd5OIesZN3T7AObSAq9/Tr9yGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by CH3PR11MB8316.namprd11.prod.outlook.com (2603:10b6:610:17b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Mon, 13 Apr
 2026 12:19:34 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9769.046; Mon, 13 Apr 2026
 12:19:34 +0000
Message-ID: <dec1d69a-5c49-4f55-b748-616fdd0ad666@intel.com>
Date: Mon, 13 Apr 2026 17:49:26 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 13/13] drm/i915/cmtg: Set target_dc_state flag for
 lobf/psr2/pr-alpm
To: Animesh Manna <animesh.manna@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <uma.shankar@intel.com>, <jani.nikula@intel.com>
References: <20260412103712.4021213-1-animesh.manna@intel.com>
 <20260412103712.4021213-14-animesh.manna@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260412103712.4021213-14-animesh.manna@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0055.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b8::6) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|CH3PR11MB8316:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b33b5ef-f458-41fa-bc80-08de9956ebf3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: ALR89gn+iSDlFw+SYkMhkie8pyfou9tcXjdLxbYzc0mFK5ULENDDgwDtcsuoTFLafnkO0uY6Q/pbtG0wPpGqnYJFIq+Yj1y8W6QkEOEqDcYY/QarNidQYHcMvdM7ZuSKFpbz4QB3+Liq/r34QmX1Bj3me/UBmmNGFX+KBgG46awEGFO5KvtlVTph5Tb9c7nMvtwVU/y+OqVu4YskJ2jwzmHLPcck6KEJB6WMOHjsL099hKMnsvY/Ks9IiBBQusfU6wlphkRb161gdRflMI8tDBqo+uRlG9YLi468Mlibv2eyBPD4bMnj00hUI07tWT30Cb/4QeFYtkW9pGmQaLKJNFVorCYO4zGHE2KQeNw09wlUj0e7dOBWboKex0UFoYKLMSb3FatJzLgT+5C/aQ9ymwco6ksQar4SxhUdjDXqlX5ZxE2yytxjFt5GRO1OFbxLaqSf/bq2ikY+6yBPLTdD2tJwlVatn+6JZZLGjTihS7vVuVHZToF6xrkelk9HL2k0qF0h2o38S+lmovN66wLrhd4o7HOVBnb+7sM8VyOIt1sdUZuYa01Gs0BXaho0DkWS4pyiEO4kODkdzlYiY4UuYdKgzVBs/61gCwsCUyO3sAjcaxc+5OBZo3RkeW2T1PvEhwuExn8uycIYb21uxwsTUZdLozQSbuG55sohi1z+LU8jWFd9vQ1BIdxdWiy+uXHPP8BWjhHYsORDsdbfWWo4omSGPb2q5QX0m9hccsqlfj8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q1c2aExQVnpVd0ord0J1K1BraUsxRXFteTREZU5aTnpOSjNTb0poY3pVdVUz?=
 =?utf-8?B?M2RwZ1V6d0ZyY3MrSGVReXMxMC9zVG40a3Z3ZEpJaTJoS3krNFFkd3hyUlZ3?=
 =?utf-8?B?RnlEaUZ3SHNRN0Q2U0RDSFFET244VGFpZGNUN293UE91c3NCRFprbTZFaFNw?=
 =?utf-8?B?WGdreUFWem0vVlcyVDQ1Y1gyTndrNGw3NVhXT1R5M1NIVnNTUDE3Qk5uSEJi?=
 =?utf-8?B?bEtvc0kwZURUY0VQMS8zU0hkN2ROc3hMNFpDdUR5ZVJFUklJR0xNUHl5QzJt?=
 =?utf-8?B?dmttVHBnQUhoS2JpTzdXZXh3UlIzektYd0dJTklJWktBRVpvT2R6RHFJYXdH?=
 =?utf-8?B?cGtXc2MxWWZDZjhCRGt3QVg2VkJCOWVYUkxZbmdTN3pJS0lkckhZMkxDUlB2?=
 =?utf-8?B?Z01vQ1hYY1krZHo5UVo5UisyTWZzeVI3S2huTUt1UmxPM1FVd3Z1QlNUUmRk?=
 =?utf-8?B?Yk84WTh0NEhEa0o4YjQ1MmRqNWdBY0FYRnE5YkN4VTNXNTVyUEcyVWRuWFdU?=
 =?utf-8?B?dGRGY0NCUndIZjhRbHc4T2F6VHcrNE1BaWxYcG04LzJLT01udDRWVjlyclJK?=
 =?utf-8?B?WGJ1RVFGWUFaWkpZVDd3U3RoNUNlWC9wMDNtZWt0c3haT0dqQ1c3MWNuZG1I?=
 =?utf-8?B?dFJ1czZWSTVDNVlPb2VRVkV0Q1dBUTN6MkY1ZUs2M2NONjdvdjE3TC9FL3FM?=
 =?utf-8?B?cXc5Qit0d2RRRDRnTWsyanVPTFNDN2RBVzgyMk9lbWloZjBhcDczMGFHcmtB?=
 =?utf-8?B?SThmNEFhZ25yMG1qUjNLdElBVE56U0lnOXBONWNHYVdSNE83Y0tEcFlLNFlh?=
 =?utf-8?B?YWhMN2lCNXRuOHZaWW9hR2owSWxOV1o2Uk44aC9nVW9tOTZ5MlgvZU9NN212?=
 =?utf-8?B?bnNNOXZiR3RZNC8xYW9wVGtPVTBFUUs5NGdNellDNVhBNVY2UHphaVUxL1V0?=
 =?utf-8?B?U210NWk1cFRkTlZUTjIrcFJaMzRiT3A2Nk43V1A4OTExYWVlWndReTFwbmR5?=
 =?utf-8?B?WEplZkF6eVBCekJVQ0k0cWQ0K0tCYWhtMVp1NDl5T1ZIMTZHNDlFZ3hhaVVs?=
 =?utf-8?B?bFBrdTFpMEFtcGVuTDBPenRtN0EyZWU4QnpGUm5EYzNZSFAyaHhCWGJnOWNE?=
 =?utf-8?B?cXNEc2lReWdDODNuaGllTnZNanRybUYzMW1CZUdPeVZDanRyUDFBY2tQdm13?=
 =?utf-8?B?RE9pZ0ZyZ3RzcTBVa2NUL3d5YlNuZWc2T1N0MFpQV015a29sYXd4bjYxNEVK?=
 =?utf-8?B?c1VMbTQ1cDBCdEdubFg2UmxycFl2UlAvbGVTK0VOSm5ubTVhN3ppMDR4L1U1?=
 =?utf-8?B?U0FjMTUvRXUzUUxVZ05QazgwcUNKeHFXam5WZzdnQXJRbXh4WEU4TGQ2dmN3?=
 =?utf-8?B?b0Q3ZGM0NXNFMFY5SEs0VEFFVVRCV256YzY3YlFOa0VTY1k4bG16R0VHOWN3?=
 =?utf-8?B?cVVJbEgvRzFaL3ZLeGFBWnVpeHY0UjF3d3lVakFVQnI1U0pPVUZoV0VyaHRw?=
 =?utf-8?B?RU5jaHZCMTFpQzZyMVlQOUNFbWJFYjNlWUJlKzhQdDJQdGQrTGFHdStoYUZh?=
 =?utf-8?B?N0hGdEFmVlNDL0JHODc2enZRUHFsLzA2Nndub285TjZiV2hXYlVZbFFQNzg3?=
 =?utf-8?B?UHl2aEhZV1I5R2RMZzlJYTc1QUd1RnlEU1ZyOWJxTWsyK0RZNXVjeERibDk0?=
 =?utf-8?B?aEhYSjY2Qmt0RzBmTXZ1bmpzVXByTTgzOVJ1LzNzNy92bW54OFBONDdyTlpt?=
 =?utf-8?B?UE4vOWpXcHkwU3hLVldyNm15b3BjK3BoWk4xekI0b2g0bnlKNndnZVc4OXZC?=
 =?utf-8?B?di9zdFRPQURVVW04a0UxMXJBcVBOVVFlOGVMSmQ1YjQzSUZqV0hBK1Q0aUlK?=
 =?utf-8?B?L1kwV0ZPeDE1M0lxZVJOWnc3ZXdpOVFseDljamVyTktMQVRZYXZQRE13M3JH?=
 =?utf-8?B?cSsvWHdDKzBKMElxWVZsYktMTjE3Z1d1NXNNM1NxYjJMd1BvTTFkV0ZjYlVT?=
 =?utf-8?B?U0Z2Y1lIRGJEY1Bac053SDBLeFlCeWh2SWk0UklDOGpRSG9SVWVYQ0RPa3dq?=
 =?utf-8?B?d2xNNWgxMklNMzRHY0FOeEJrOFpBcVMxdm9Oc01sMXc5bUNrOHJSQkxuaVR1?=
 =?utf-8?B?T0ZuUXhhZHNWajgrMUF5VVlEUVlqU0wxaU80ZnZFM1NjKzNVWGI4bGZWZlFx?=
 =?utf-8?B?VFRCSFE3bFUzOUM1OUdZZ1pYelEvTXBVZ2lBTWduT2dGVXRPbEdSNEtWSnFP?=
 =?utf-8?B?eDc0YTh3dE9qcnlUM1JVMldvQ09HbEFFYS9YTy9CazE1ejF3KzBIRkdtdHBJ?=
 =?utf-8?B?OFZFREZTRHFrQXpmWHhVMDl1K1l3d2JFSFRTTlBkWWcwK3NPcUxza3RBUW91?=
 =?utf-8?Q?IuxLemqe2Zmq02vAa73t5WicfrAhz3nD/iZ/nPoM9UotF?=
X-MS-Exchange-AntiSpam-MessageData-1: JcpZT37OymF20A==
X-Exchange-RoutingPolicyChecked: cI5+5MT1xy34ajNcoUrtKztaGMvxZXbAAz6VzmU95+ku1aBamEwPXUAmNOM2Ue5ggiZgQqUMB9xihosAXVoLklNSa73koN/WAlvzDdvzE2CP3v/4nLQ0c1WzIM6mAASwpnPhDUvJRgXlAZ3Sa4WtWwi/6baFUycZpVg85Y6xmGQPQ4nBEe6ai1DxbPssiqjW6Lu9062j9Eefg21ALHqpHiUuWTu2c4fgg8f5EAeM1Tp6bKHEe7ILWjY+n9XThb7vw4naDcJHf/poZx6r4VvObo+10UUw7l6UCc1y1KM9hkEHxfRvBqLNJI7LN8JIz0IXSn36ZTFNyYJ2jSFhiuQJCQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b33b5ef-f458-41fa-bc80-08de9956ebf3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2026 12:19:34.2009 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7008pFkfuJzrkz7BiK38TYaSYbfDo+22xeyrBqy3wJptWcey4/QR9xtg/Vkc9hkb1gW9rYKAbjZlWnNbL3v/mhn0IZGK2sCjlaeR0J74WpV3lLO8y34nhz4JbSfK0mgg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8316
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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
X-Rspamd-Queue-Id: 3C87C3EBD05
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 12-04-2026 16:07, Animesh Manna wrote:
> Set the target_dc_state in specific scenarios such as LOBF/PSR2/PR-ALPM,
> where DC3CO enablement will be targeted, allowing CMTG to be programmed.
> DC3CO enablement will be implemented in a separate patch series.
>
> Note: This patch currently added to test cmtg and need to revisit once
> DC3co enablement design in finilized.
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index b8b6d62fb275..5de6cfde8bf5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -7342,6 +7342,7 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
>   				 struct intel_crtc_state *crtc_state,
>   				 struct drm_connector_state *conn_state)
>   {
> +	struct intel_display *display = to_intel_display(crtc_state);
>   	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>   	int ret;
>   
> @@ -7353,6 +7354,13 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
>   
>   	intel_alpm_lobf_compute_config_late(intel_dp, crtc_state);
>   
> +	if (DISPLAY_VER(display) >= 35 && intel_dp_is_edp(intel_dp) &&
> +	    (crtc_state->has_lobf || crtc_state->has_sel_update ||
> +	     crtc_state->has_panel_replay))
> +		intel_display_power_set_target_dc_state(display, DC_STATE_EN_DC3CO);
> +	else
> +		intel_display_power_set_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
> +
>   	return 0;
>   }
>   

I have two concerns here:

1. intel_dp_compute_config_late() is part of the atomic check path. Calling
intel_display_power_set_target_dc_state() here introduces a global power
policy side effect during state computation. This is also the wrong phase
to potentially wake the display (refer intel_display_power_set_target_dc_state()),
since the atomic check path should not affect runtime power state. Normally,
the display is woken up in intel_atomic_commit_tail().

2. The target DC state is a global display power decision and should not be
derived directly from a single crtc_state. This should be computed after
considering all active CRTCs in the atomic state.

