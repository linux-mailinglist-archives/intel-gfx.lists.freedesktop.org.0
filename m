Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rRX2How0H2rjigAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 21:52:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A586318F6
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 21:52:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=M7NrFfRV;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 379D710F569;
	Tue,  2 Jun 2026 19:52:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FC0B10F569
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2026 19:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780429962; x=1811965962;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LE/IYt1LR85ikGG/Os9lW9T9fWsp5x/qOVG2ss6F1ys=;
 b=M7NrFfRVdz9osbtaIpFTAhcn9ZAXU1mdX4swh95RQQ5SsdgnUo4b8CH4
 xr5PSfb8vld6h8rC2PwRXK8Wprxy0mvz9Fr8wRG2aVtwmYlNmadlmMmjT
 yBFTzDJsudQFD1/tRN9/qfU3TBO5XzHPVnA/bihTMozgTo9yzXZrqpQPf
 ul/Q8q62u0krWLCD4WZZ7irtejxTiAWqp6KYdYEZSjlJu1zD3AoahAceO
 P0TP0FTeGzxHJvG02a2rYdddWH5KCvA8HBOT1b8jQxtrmxO04muJOyEbG
 XCWI9PIn7SZ0IIHU59fbPATiG9BLWRoDnXxnJiZvQ81vIldw04rcd0xlD w==;
X-CSE-ConnectionGUID: RWzjEpNjSvGILBwD4Ml7RA==
X-CSE-MsgGUID: O9ttoWJqSoW5rYMOvIreyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="83809759"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="83809759"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 12:52:41 -0700
X-CSE-ConnectionGUID: OmVlLp4ESFatJtZJzeZO8A==
X-CSE-MsgGUID: w4dV9iL9SNWUBRMu+wANgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="239838032"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 12:52:40 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 12:52:40 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 2 Jun 2026 12:52:40 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.63) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 12:52:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BdV0rxxYR6GA982xvfPiKybSvWLs+8aNEG2Q06KzYJtdfZUse+RrgPy7ZJ6U4oe/UKpkkAfYwElcpX3V7+Q4GHZmJe2IrgaRSr/yJkUsYBINolojy+jlQhrqgy6n89+aeGEC4isbjhej+RJNJUxjmS87tqEzwvFtHZpZKk8YLA1tpWOYysskYLAWgUndDuPcuIEi98CPvPKQjLtXG7LSpGvx05SYyTN5F7XcUIcdrogn/DspFSPz+UxS388kLdUlcwykOpRKqJhWsZIKBsp3TZ4GQaoDgOcQ7bYv1sziQjLR2Iz4QDJrThe+iPv8vFsBT/oUII+/4y+aBjqg6aspXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mDNxVsj9yvbJKmPs2B/dylIcsfu73iPMcIAQE6R/GQg=;
 b=OKxfrbzDIa/d3lnmPYAfYUwYDxW2xpDsHvV0KOH2Gd7JQ82d29237nd6pB7xJrp1KGlp8lOS1Z1R8G//V3yRHE+h/cL13hH9/59Elaia7l5twE5K1lmxStgAdbGRZXXGqB4WTNi9v/ec9kq8xVLG2Z8JgXZMvpxLPbEJBJHWnMDNhIqF1oESL635IfAGCeMDdPKFwgeSJVBU17DRspP/FXChe+UamQndb5BCmZeF7FJk2VknX53RoihyT3tVGQX4u592hUjJe74VkVJVYX6l5k1NkOT/hStMKVzowgnbLXm0sXVLWI5T3PDDQIbGteD91MVIyNuFz7bOQJ92NpS5qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by DM3PPF17031675B.namprd11.prod.outlook.com (2603:10b6:f:fc00::f09) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Tue, 2 Jun 2026
 19:52:38 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::fce1:3bde:b383:e801]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::fce1:3bde:b383:e801%6]) with mapi id 15.21.0092.006; Tue, 2 Jun 2026
 19:52:38 +0000
Date: Tue, 2 Jun 2026 21:52:26 +0200
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>
Subject: Re: [RFC] drm/i915: Do not cancel live requests
Message-ID: <6eyjop6ptsosd4z6lfyvdra264wz7cj2ymlvuywbvcec4z4lyt@oqulkydzq72w>
References: <20260602121431.3321203-1-krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260602121431.3321203-1-krzysztof.karas@intel.com>
X-ClientProxiedBy: DU2PR04CA0077.eurprd04.prod.outlook.com
 (2603:10a6:10:232::22) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|DM3PPF17031675B:EE_
X-MS-Office365-Filtering-Correlation-Id: 51c5a9f6-61b7-4a63-67f4-08dec0e07f77
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|11063799006|5023799004|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: K9EobdCZcIXPdcu/gSoLnvepkUW+JA8jr2S/yx6Qwj1vizRNenMcqTX/Hj9mPEJN1EL+0irLjDGQQy5AfDRDuPGp/T0JnyuV23mFU9lHFwucuHBM3oSRV4WPDetsw8aaJgKbfThpOaUQudoRF304pgHFqy2R6WyxNQ2H5Q0aYKtK0e2t28jaLlMYxRcTu7cMhGNkLyoSTXvs+bYhrPD9vG3BDHDq/qOQp851BQKpNHCjXpjIOewy0kdKONf10wrgJGm5WvQWW10qEKzTxylBpi+nshXT/SLZycmUvCzbYOcqw1MSqpM5t8/jKwVxQ431rYEpA+pM291m9v0tYTw8HzdtyxqQaTvKWTCLc7vXwQrucW+64Zxh4d2ks/aUkzSry+6nGHom174t74+ql1U75hhXyz3ifyVgkh6OgIr9sndu+mT0FzVYA0wbyT71oKP3nLoeKm41wCWB7Tu3+75aTHYJQQTA+1l3mdyPO+reeiKgyfvhq9swSagEPTkRxZ/JRC3JUpH9XXpYqmdzqmZv4sUxvTvBTTSrhQ24tBV2E4Gbz8YBaritjAi3LxdFt/8vcqC6z7QduR20veToFWPOkN1xzBXWnEr2zXRz9PbdmEbxGqj3ZwuMpSiFG4+R/3tEVJGjyggBLAWRUn/CCM5b1KX2ArQFLoPEZ9w/0YLFTxL53cg0wCYdeNtT0eR/nzc3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(11063799006)(5023799004)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aXRqTnhxTWVPOGpvVEpiT2Z3UWgvY2hjNXJwQkxnYVdqSnVYaDdjb2xib1py?=
 =?utf-8?B?Mi90TTNNQmhSVkRIaEhyVkdkVHFITnZ3Q1djdHoyTlZiUklacTB5STJCQml5?=
 =?utf-8?B?WnFUdEZDNXRMeWVHcDJMcWtteldzNFZDQm9jM3JTVWo0Yko0b1p6WGp0UzVZ?=
 =?utf-8?B?K1k3ajdLZklWYXVCS3JLN05RTFJwV05hVjk1YThlMythYkJOdTlkV2YvcGRl?=
 =?utf-8?B?cm9IQUpkK3BUUUhIUzFtL1ZPNkdDNEk1akFXNFFtZTNhcUN6NEJtSDhEOTVD?=
 =?utf-8?B?NktjODN4a3VzdmdULzN0TllHS0V5cndhQTlCSGxDU2tHczY0Smx4TkhjN2tn?=
 =?utf-8?B?Ukk4UFprdVk1NlV6S2J6YnR3bXBmNVVWYXdiY3NOZEJVbHdnMXJhWGxrd0J6?=
 =?utf-8?B?VityVDcxZSswdk5QY0srYnA5R1BqYi9INUtza25yUWppdjZhT1dxNXR1ZVhp?=
 =?utf-8?B?eWFhMHhpMXlCd2R2WVBCSkpOek5WZUx5Wmo1TkJxMjIyWVh2MVJMZEdBWUdE?=
 =?utf-8?B?QWFQUGRvaXZyZ0VidUZ2c2NaRjR0RW85azNrT09WME9HNUp2RnByd0lMdU5F?=
 =?utf-8?B?eEREcFozTWQwZ2k1cGJwZ2NjMW53M0d2Um9iakJiRHZubXU0ZHA3M3pwcXhj?=
 =?utf-8?B?UHFqTEtOd3VZcWlZeC8vWXFhR0IvRDI3UE9aanhSb24yVFcvSHk0SDVqejFk?=
 =?utf-8?B?dTV0WVdQejQ2ZHRuUDRvaWpoVHZyZGxubGFJNHpHcFhqc21uTGJRMHNCQTYw?=
 =?utf-8?B?UjNyNmlLZE1xRS9MeTRsdUxJTExoWnZqd0t3MCtwVm56VmsxOEJmaTZZV0lB?=
 =?utf-8?B?RzA3L09jK0lMOEwyeUNzUHBPbFlwZVpxMkJRaXBUK2R4OGZWSmhwb05qMDNV?=
 =?utf-8?B?VFpMS2hBQU9MSWxJQm1MUXRVdXo1RVVJbGwrUE1ZSFgrN081QUFjMnd3aGxO?=
 =?utf-8?B?ZWpwcklEOFZpN3F3Ym5OQ0VESjVmZXpTRzUrWFlPOXloRFllZWhNSWFDTDlv?=
 =?utf-8?B?K3RrcHdqN216RjBscktFTlVjUnRPSTBQQUJabk82bVl4VmpFMzBrZ1Z3OE5i?=
 =?utf-8?B?Umt3bmx1MFBkWEduODZrVncydk9zZXdBa0IwbzRXbHhMUEVYTE9NdWRPRFJh?=
 =?utf-8?B?M0N6TW9scEp5YnMxUWJWMlo3NEM2czNvV2JOT1BpWEpjVEU0RFdpNzBQbDEz?=
 =?utf-8?B?YURKWERKUTc0UjVLSkVFczZQUmlyUFpUS29iOVFLb2pNeUpDcDhDc25mRlhk?=
 =?utf-8?B?M3hqamxUa25QVEdCZnM4Z3JhbFhVUVNQZ2l6TGlCL2RJamtacytvc2trZTM4?=
 =?utf-8?B?cVBvTVJnL1grMUFvQzBpQTVaamFVaVNORkVsWGVZVFk3MGozUkYrbkdSWUtR?=
 =?utf-8?B?MC96ODJhZnI5eStVSGQ2L05GcENxeUNOZkREUW4zbGNUNTRHL0ROK0pJdDNY?=
 =?utf-8?B?WURNVUtQWUZ2MzBKbUhmZm9neENvNFBGL3hxbEhtNXpuaGZvdEpmK1Q2SExm?=
 =?utf-8?B?TnpHYTBPQUd1dHUySUZFa09vQlR1bUw5T3hjdk9oR3hlVnNiQ0JxZjM1Sis5?=
 =?utf-8?B?UWljNlAvdVVzUWxQVUxWSGVlRkxmQU9WazFVNkVvT1FEQk9DZGpIbVZRd0NG?=
 =?utf-8?B?c2IzY3l6cmhNR1VZMEpIc0h3SDF2NjBYRUU2SEFhNjVuNFBwNGZLZEhmMndV?=
 =?utf-8?B?cEgxUm5UTUpHbXAySVBDMG1yRDhqM09iUExrQ0t4N0pKcEdhNEZoNUk1Zm84?=
 =?utf-8?B?ZXBMdVBYdFFJS0NSNTdPS0dJOEpWdWVFeXJlS1F3Ym55M1kxUXErc1BJaEx4?=
 =?utf-8?B?cHBkY2dWQ0g0UjI3elhFZ2JTbEFOcTRyRU5VWlpLMUlQZEVyTHdqaTlkK2tU?=
 =?utf-8?B?YUhjV29LK0g4Q0I4cHlPOU9vVzBjRW1LakpjNGtybXYxTEtLbkwwcUVGbFAr?=
 =?utf-8?B?ajR0MEMxMU1hai9OcW9wZERFMjRVOEliWjY4M3pzcU5OZFlQck5WUlBvUWxS?=
 =?utf-8?B?QUVZWUFTazNWMzNjczdyaXlVY29NTWF0UXJSbzRuYmphdjVQcXlSbGZXeGNL?=
 =?utf-8?B?RUxBUERRVE9lSWhlYjVrMzg3U2I2SXpmZktXYWdSZUNIdjZweHRnSFlHclFO?=
 =?utf-8?B?SGJVc3ZmQXpySkFNM210Qk8wLzNRUk1OS0N0OVd4SHBNS2hIU0JVQTRoQk1G?=
 =?utf-8?B?NWlvREJvdFVWSzBTZkNLLzZxUXJHaVJCK3pMWEhCcmVVdnU1N1J1YVFIY0JG?=
 =?utf-8?B?UzRyOXhCVE03NEZ5RXFETTdYNHlhZjN0Z1g3QjBvYkIvYW51ZGpTN0pFMTR1?=
 =?utf-8?B?VlIxdHRxSDdCa1lIVW05TEtkOGIwS2hhR1FhODB1RVZFdlBnUzM1R2ZDVHZJ?=
 =?utf-8?Q?qzve5r7gIJcOhfOo=3D?=
X-Exchange-RoutingPolicyChecked: KANnNtxpPwOyOo7WA0pxbEEf0a9AQlnGiTVQRf7lXLHUfMbqxE+PbB9XkmoiZFTboEBoVyNS126JtZvGv8pjzKG8JX3WVa9LdiievFFAHQXLkGU14A/jWzNUEufzNhfSojpmMZH0mwx6tEJUOwAfYeIpMDV9hzN9DqjeVYsldwE4TKQ3szxwNajG58kqi1YwN0ZxQcPWN6naBhSRkBb8fTIF92/qJ9w1Od887h95I+8ZMsFUHBxMhHbCh65ORLcP9OSfUUgJWGMkBAZqYmknFurtjnLoDfSXDrIL9mDRKzCNZ/GPLFyeOOIVvR6p5dLy+WkGgJEcmnYb6c9O5mJbqA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 51c5a9f6-61b7-4a63-67f4-08dec0e07f77
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2026 19:52:37.9265 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iBSoA0uAXhoWGcLGL0tjFggoH0msxOJKVUrz6tArhBFJYVWV+F2Amaj6xz97KmIysgkuN+vNrwhcAJAepJ8ASR8+J7PhxCUfsAwkJR+nOrA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF17031675B
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
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.karas@intel.com,m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:janusz.krzysztofik@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[krzysztof.niemiec@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,watchdog.link:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.niemiec@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D8A586318F6

Hi Krzysztof,

On 2026-06-02 at 12:14:31 GMT, Krzysztof Karas wrote:
> Currently, requests are considered expired after a certain
> amount of time runs out (DRM_I915_REQUEST_TIMEOUT). The logic
> outright cancels such requests, without regard to them being
> processed or preempted. This behavior may be observed with long
> running workloads, which are being processed, albeit very
> slowly.
> 
> Amend the problem by adding a set of time related fields to
> i915 request structure and using them to calculate actual
> work time the request consumed on the GPU.
> 
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_requests.c |  7 +++++++
>  drivers/gpu/drm/i915/i915_request.c         | 10 ++++++++++
>  drivers/gpu/drm/i915/i915_request.h         |  3 +++
>  3 files changed, 20 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> index 93298820bee2..24f8d02e6abb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> @@ -249,10 +249,17 @@ void intel_gt_watchdog_work(struct work_struct *work)
>  
>  	llist_for_each_entry_safe(rq, rn, first, watchdog.link) {
>  		if (!i915_request_completed(rq)) {
> +			ktime_t timeout = rq->context->watchdog.timeout_us * NSEC_PER_USEC;
> +			ktime_t total = rq->watchdog.total_run_time;
>  			struct dma_fence *f = &rq->fence;
>  			const char __rcu *timeline;
>  			const char __rcu *driver;
>  
> +			if (i915_request_is_running(rq) ||
> +			    (i915_request_started(rq) && total < timeout)) {
> +				continue;
> +			}
> +
>  			rcu_read_lock();
>  			driver = dma_fence_driver_name(f);
>  			timeline = dma_fence_timeline_name(f);
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index d2c7b1090df0..697976f3c7fa 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -676,6 +676,7 @@ bool __i915_request_submit(struct i915_request *request)
>  active:
>  	clear_bit(I915_FENCE_FLAG_PQUEUE, &request->fence.flags);
>  	set_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags);
> +	request->watchdog.running_since = ktime_get();
>  
>  	/*
>  	 * XXX Rollback bonded-execution on __i915_request_unsubmit()?
> @@ -731,6 +732,15 @@ void __i915_request_unsubmit(struct i915_request *request)
>  	 */
>  	GEM_BUG_ON(!test_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags));
>  	clear_bit_unlock(I915_FENCE_FLAG_ACTIVE, &request->fence.flags);
> +	if (ktime_to_ns(request->watchdog.running_since)) {
> +		ktime_t now = ktime_get();
> +
> +		request->watchdog.total_run_time =
> +			ktime_add(request->watchdog.total_run_time,
> +				  ktime_sub(now, request->watchdog.running_since));
> +		request->watchdog.preempted_at = now;
> +		request->watchdog.running_since = 0;
> +	}

Can a request that's not already on the GPU be passed into _unsubmit()
again? Otherwise setting running_since to 0 is not needed, because it's
gonna get overwritten in _submit() anyway.

>  	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags))
>  		i915_request_cancel_breadcrumb(request);
>  
> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> index b09135301f39..48b619ca6bf4 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -325,6 +325,9 @@ struct i915_request {
>  	struct i915_request_watchdog {
>  		struct llist_node link;
>  		struct hrtimer timer;
> +		ktime_t running_since;
> +		ktime_t preempted_at;
> +		ktime_t total_run_time;
>  	} watchdog;
>  

The preempted_at variable is currently not needed, as it's only ever
written to and never read from in this patch.

The running_since = 0 trick in _unsubmit() used to filter out the
requests that have been passed to it but haven't actually advanced seems
a bit hacky at first glance, assuming it's needed. It does make sense
if you know that running_since > 0 if the request is active and = 0
otherwise after reading the code a bit, but it's not readily apparent
to me.

Something like the following would be clearer to me, however please do
judge yourself and check with others whether it is actually more readable.

You could keep track of the most recent time of being given GPU time
(running_since) and the most recent preemption (preempted_at). If
running_since > preempted_at, that means the request has actually
advanced, since it has been _submit()ed after the most recent _unsubmit().
Conversely, if preempted_at > running_since, then _unsubmit() has been
called after the most recent _submit(), so the request couldn't have been
active.

So something along these lines:

in _submit() (I'm omitting the struct stuff for brevity)

	running_since = ktime_get();

in _unsubmit()

	/* "if the most recent submit was after the most recent preemption" */
	if (running_since > preempted_at) { /* possibly >= instead? */
		preempted_at = ktime_get();

		total_run_time = ktime_add(total_run_time,
					   ktime_sub(preempted_at, running_since));
					   /* the block of time between
					    * activation and preemption
					    */
	}

This along with renaming the variables to something like (running_at,
preempted_at) / (running_since, preempted_since) for symmetry.

Thanks
Krzysztof

> -- 
> 2.34.1
> 
