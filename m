Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FA79253A2
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2024 08:28:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45E3D10E08F;
	Wed,  3 Jul 2024 06:28:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rd/Glm5Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8092F10E048;
 Wed,  3 Jul 2024 06:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719988085; x=1751524085;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5Epz0OQuDEf7WesE6AW2mi8evdvlk4sIe3KId1E1tbo=;
 b=Rd/Glm5YI3DAtOWRMACt2zASSrp0tYYMwNdE/Q0qyJqg2Zb3gp60JPeG
 CO68WlgzVubt4dF+Z+fjy+HtCmH4kCimD5bCRcp3DzSEp2Ls9dAcjSm/I
 glYiaoR9aKUYKCWT4qiIOWJXAHSvPf08GqjI5Hy/uGhfgpwScz6XWzf81
 sJ3q6pV9nC+x6cYzRd3CfFB/7bpEve8gWEnagQEuXfp/PQe8ITcOWv3sC
 qlWFVtbMlGRnJ9zkf8lAYX5Tff5zYRoyvb72jzgwovMz9zwTsljIS8Hor
 xYEVYxCQk6AOS4gHLQRT7pLidvLBFh368UZqZDPGIbUp7P37dm75+UXVi A==;
X-CSE-ConnectionGUID: TkPKUq82SRyFQdCCW7AMGw==
X-CSE-MsgGUID: M+S19JsHRa+y31bhFiSEFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="17071272"
X-IronPort-AV: E=Sophos;i="6.09,181,1716274800"; d="scan'208";a="17071272"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 23:28:05 -0700
X-CSE-ConnectionGUID: 0A3cnBZVRM+TiN9KziywmA==
X-CSE-MsgGUID: 6ziHbCzQRAyqsYuQk5YV9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,181,1716274800"; d="scan'208";a="45922042"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Jul 2024 23:28:05 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 2 Jul 2024 23:28:04 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 2 Jul 2024 23:28:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 2 Jul 2024 23:28:04 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 2 Jul 2024 23:28:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RoCOksqlB4fs93oO4AsAsVP7BoYB1b7kxQhB8UYxBvOs+doJGfFPxNh3mF1GRH8LzCDLrcbkoDrVsjQheZOnkx2VsJwX99S6LjxgIwa//LmEWuzaGkTQY21IjWnKuNpig2doPNKchVbrZFVmczXWo+b0P2cmpBd6WM87C+K1lZfgXnKWu9J/UiwNB4xphqGeLIKtde7elVFzKI5v/+2vTNlbMLSknEl1nuwr+RQAiZPe55gsO4FXcfMW3JORtx1IjmCWRtLCl6y0dDtXkciRiKEWrOtTQ4QDkBLbvvpI2SArOdi6gAP9cXGRFqWH/Wg4nHKGVMO6DhSFaRIHKgShFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ld8k4MLQoOrXuv7QiYAMusSYS4jtI9viAHFlXBRBYp0=;
 b=FvrBdTKhH+K+B4OfX/2qTXp4MMKCY6CCXEfw9wxWxdUTd5mSx+nR7FOV+YCpoSYpCPUuy/ytVbyPTbj89QmBF/jSrNscbmEJ2q/LY0ehfRKBQdj9wOi6u7O/IzwqJvaCe36j9XDwHHw9PufxA1pfgZIZTG7wZ1nLeh5qSItX29qTUt8HC3IcU1cult4OYXzFG3/Eq17DMl2pu53wSE5qJpMBoquZzGCyhKN5VX40aQjf3pdsFog7ICSCgFRbNCdbYRK3EfLJYPx9aGUrAaTDk1fgFRw9Lugu0aVGGjBMnzUnyQ+5EZzAyBUK//oIxDjploXfitBHOdzv6Fce/EwjEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB5311.namprd11.prod.outlook.com (2603:10b6:5:392::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.23; Wed, 3 Jul
 2024 06:27:56 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7719.029; Wed, 3 Jul 2024
 06:27:56 +0000
Message-ID: <5884a05d-3971-4aaf-b0f6-0cf67724d52f@intel.com>
Date: Wed, 3 Jul 2024 11:57:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dp: Wait more before rearming FIFO underrun
 during retrain
To: <imre.deak@intel.com>, Arthur J Runyan <arthur.j.runyan@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
References: <20240626083624.4042544-1-ankit.k.nautiyal@intel.com>
 <ZnwwBZFFugbV7JPj@intel.com>
 <BYAPR11MB3013A95F661ED52F8D1AA7A0B2D62@BYAPR11MB3013.namprd11.prod.outlook.com>
 <Znw3DEQVuXkJgDeA@ideak-desk.fi.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Znw3DEQVuXkJgDeA@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0P287CA0014.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB5311:EE_
X-MS-Office365-Filtering-Correlation-Id: ba433368-1185-4dbf-abf8-08dc9b2946c7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SkFvcXQwdzZzY0hnek5nL3NHL1NJSmNMWUN6bDJaQUpEM0t0Mlg0UzBCZ2tQ?=
 =?utf-8?B?NityS05USnlXTCtLS3NGU0VtaExqOU5JZlh0dTIzWlgyQlByeUtYR3RnWjBI?=
 =?utf-8?B?VFNNMHFhaXcwamZPU3ltWGhONVB2MWJFRjA5UW5USnNzZmtHUmRGektDL1JI?=
 =?utf-8?B?N1FoRXNxYzBuWmtBeHlqMjVuWVZoZkZHVnVsNm4vWkw1cGxjVkFvWDJ1Vm5l?=
 =?utf-8?B?NTlkRFJySGxyNkxqcXFhTzFFMVRmbFVpRGVtbGxPU3JsSFRuTHgxY2dpYjVo?=
 =?utf-8?B?dGJxRjUybFY1cnVXOGdacjg2dWhzTlJ5Sm9yWEpPSDNzQXg3S2V5Z0p6dTU3?=
 =?utf-8?B?QXQrajAxZjVrZHRJakNqWjJuUEdqOGZLNnAzMjZET29OWU1tRENZY3I1VWlG?=
 =?utf-8?B?NXpSVDVFNG5OYmZaRmsrakM5YVRkQzBOQW95U00zcFpkWVVZSiswL3Rjbzcw?=
 =?utf-8?B?Q1I0SXpCb042UHlMY1pzUVZkOVdLVythWmN2SkVRSU1yaEdpQ1V0VFRIc2pn?=
 =?utf-8?B?eWtISFRIOHJoYkxIL1BGZ1hRNnZkSnUrRkFEUjJlZUgxbk5sZVlzYzlKdnNj?=
 =?utf-8?B?aGtaMng0YVV0cUhBd1FoWkRUSlN2K21vNUhRcllCWGFpRUx6V2hkTE12aE50?=
 =?utf-8?B?VDBneS9ySHBhc2xQY0RDNTJCbVp6WGplaWMxNEdaWmJ6ZGhEVjVzWVlEZksx?=
 =?utf-8?B?ZlNMeEV6YmVtcTYyZnVlUlpIOTJVc09IblJ2aGNMeFJHL2VQUjk5TUJJQ3hQ?=
 =?utf-8?B?NlFPdXpzU2kwV1NEZ3RJSTg2N0xPeU0yL2N2dy9PNnZ4Y2JSdjFkMUNHbDVT?=
 =?utf-8?B?SllacW5LYlFDK0VxUlNHZ2tyS3c2S1VpczNTb1E0b3REWUxxNTZkeEZGay9t?=
 =?utf-8?B?dWVERzZIYXU4aWNNdGt5UkQ1dE9ya2VUMEJBY0ZqRmtmbEczamFHMVZUb2tT?=
 =?utf-8?B?bEU1WThoUm8vRDhQWG41ak9hMVN6dU1HZzBsYjBVVWp3RWJHOTJSRXY0M2xW?=
 =?utf-8?B?N1BlTG5VUksvY00vWkhONHV0WlRmNDJtckRZUGE1Y2pJR2VocXNUNWtFV0Fq?=
 =?utf-8?B?Wkp1QjZOSXRWTXR2WkYyaGxNNnd6R3cyc21VRGRjUzRWMDNyQ1RCdk1UaGx3?=
 =?utf-8?B?SFA3ajY0MkZVRENCbjJsN0IrdEJkQm9HZkxXVCttNHdnM2R5U1ErUlY3aVJ3?=
 =?utf-8?B?a0o3MDJHTWhDYlBmV1MyK3cyQmQvS3owWHUrMkd2cFZvK1hqU1Y4YVpTM2tS?=
 =?utf-8?B?WWhrWncrcmZUa1FJQnhwbU5ZRFByZzZqV2Y2SndZRUxxNXhiS2VQc3pyc0tD?=
 =?utf-8?B?NHVwRzdXQitIcEZ2Ums5Rm44YjMybFBRaCsrbkdkZ2lDQS9JR3pYcktFbEhS?=
 =?utf-8?B?VkFSSXhDQjdJR0MxL1MxdVcxeHptQ0tJQlp5dW9ydkRrZmlqeUR4YnJkTE9K?=
 =?utf-8?B?Vkx3UXgyRGtpYjFzam55Nkc5RzNpemxUeHhKVDBGd0N3TTdzSFJrcVZmT1NC?=
 =?utf-8?B?T3RwZEJtV0xyUEZwQ2hEd21HOURTbGtLeWZMaUpwWjRDcmdaVXFGdGtaeG9O?=
 =?utf-8?B?UjNJZ3VtS0trakgrVlRZa0N3bWUxcWFpeGhwbzYzeXBzMU1KcGhmVWJFaVhU?=
 =?utf-8?B?NGQ2dUp5K2EzYVZPajlnbkduOVVVNHZmYkVJeDNsdzA4TE9henFiUVNmRVJX?=
 =?utf-8?B?V1BTN1M3NUFqamF6VlErcHBYaEhJekxPWE5sb0loTk1qSVlMbmpRajlUNjlO?=
 =?utf-8?Q?RF6pTeAIwSB2ncmXP8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vlk4TEpqMHdod3RPOERSWnk1ZVhMcW54T0I1QlgwVHJXd0pSTzJhV0ZvUVUv?=
 =?utf-8?B?bURhVVE4OStMcEdCNjZmOGpPaFhsQ2NwNE5DSVppbXVldWlvSXUvVW1nS0VB?=
 =?utf-8?B?S0ppUlptblcvY0Jxckp2UllFTU9oM1ZJclZDb3JZOFZqSnZidDh2cXB5Q0o2?=
 =?utf-8?B?T21NNW1yVVNBRTNVUXlWN2pHcU85TGdtNXlWZjdtNWtscGxuS1RDZGc1Y0Z4?=
 =?utf-8?B?d0FRNGRzSGhoN081N3F6RWxCSndDdXdGV3QxdXR1N01saU1NR3RxVCszb3RT?=
 =?utf-8?B?UlZyakNEMDRzTHRRSUN3TU9aZ3VYS1I1bERvUFQvZ0tlYWZBOFE1bWMwdlNy?=
 =?utf-8?B?OVhUb3pWMVBKZThvcUYvWTZLN0dESEg3YndSbUtRYVhyUHdpeWRUOTBKa0Fj?=
 =?utf-8?B?TlJhTUFnaGgydDhsNmhqdy9RSi91RzJzVitUaFRabHJXREZHbm1QbkVWTmNQ?=
 =?utf-8?B?d2xWR0p1ODBDWFF2QlMrQzVKcHhlbko0YnhsWUxMOXR1V2NXaWlVdmd1ZW5w?=
 =?utf-8?B?WkF0dlBrQ3hiaC9rU3FUcUZEY3lVdFlnaXJ4cFQvb0QwZmplTDg3cDJ5NFdS?=
 =?utf-8?B?VkFvZHk3eTNwaDYwajJYeFgvRll1Wkt5bytOOU1oNTRUdHc0aExBMUF1U3FI?=
 =?utf-8?B?STU3UEg2czNJa2pKM2F1M3BseS8zOHZEc21WaG8rTDQ0MVdzME5mdHRnWXNU?=
 =?utf-8?B?RUtzUC9VTGpFczkwenlBZDhaWVA2VTJRZXlIVy92eVlMU1pHUzJZM1ErMml1?=
 =?utf-8?B?V3daQTdIdWlCZmxxOXJibk5JQXNybVlRMWJWUHVhTjVveXJHSjlTa2xGVUR0?=
 =?utf-8?B?RjJOSTcxQmpLS1ExYldQeEFRZGw0K0Z4by9qdGRkWFQ4d2hIaURWVFBDK1p3?=
 =?utf-8?B?dDRmT0FTQlAzUlhIU1kwam51VVlYVVRxRGVaOWJKcWFERmNzZGpPS29IQTJZ?=
 =?utf-8?B?UU9mNUdDR1oxb1MyQVFVcURyU1pIME1LWXp4NmcxcHRPaWJHQ3F4aitJM0VH?=
 =?utf-8?B?T0FNMUIxelIvd3JjbjVqSUJIZ3hYUlhFQlRiZUJsK1pmVWgxcDYzWmlEa2pX?=
 =?utf-8?B?dDF1QnNCVFlQN3c1b2l0NGI3eThQTmI0UmtLazgxa0dPRGkxUTcrdWFnSTAz?=
 =?utf-8?B?aTVDWG00WUNDUTdEMlB6U1g1UHBzN3pTSW5MOWJjZ2NZY1dNWERHNkhHd1kw?=
 =?utf-8?B?a2JWYXVEdmtGSjJoaE4yNDZWTXF3UHZhczVvd2NUYXE5eG1HTEVJQ2dHbkM0?=
 =?utf-8?B?U21jdnBKclhhOFNlQmYrVHI1azZzWHB6aUR5akFxTGJsMk9xMUVhWE02cUxU?=
 =?utf-8?B?WUlhQWhHMUp4dkxXSDR6M1ZaRzJiY2luVGU3ajQvUThnS1RWSGxYRXhqNmRW?=
 =?utf-8?B?d1JZeGFNT3RwVjZua1dBMEQzYjNFamxFZG9hbzNybUxIRHVpY3EvZTNrdElD?=
 =?utf-8?B?dk9XZHVPek11cVN0c3pUTjBKQnhLdmo2bDFtS2wxVmdWRHA4UUZtVm95VWN0?=
 =?utf-8?B?QXRWNTI3QndMbk8vb0VNWGs5bnFBQml3ZFc3RUcyNURqT2Z0VUc5Y2plbzM2?=
 =?utf-8?B?bURPTUVoRmloSzBPbFYzZ0RHZ3VXbnRvb1FicEhNaGdma2swNWZYejF6cnYz?=
 =?utf-8?B?d0pTVU9WSU1UVWlwc2ZPNURkZG1mMTBYT3EwSzBUK2l4bE9GWjBncitFNlV5?=
 =?utf-8?B?MXA3WlpybmxUcmFhRTRVUERLZ0hkNUJvT2dKRWQrT2NvRE82QzZ6SEllRitx?=
 =?utf-8?B?UWxXY01YU01VTHo3aWhKbE85ZnJoU1VOWGU1c3lDMlpiUStHN3NxRW5zOGRv?=
 =?utf-8?B?VHBXYXJtZktickFzRGZ4L0NKbEswdEFXMitSeXhWM1pmc3Fyalk1WjN4M0dO?=
 =?utf-8?B?YjRSdDhwSi9oVTB4ZmZHTzdLdEt6alR2ck1vWHVLTGtWbWd4TVE3VTR6RERi?=
 =?utf-8?B?Q3FXUlBIblNuaHhxSXdZdXJmZFEzcEdidFdmdWdrTWdMelRrdUxjME5WUWhy?=
 =?utf-8?B?SkhIWkUvYWJCTURZVWNvZjBmVTY4K3JjUE5DR1c1SlA3QTVXajhUS1hWSTkx?=
 =?utf-8?B?SjExQlVjSzhIYWM1V21OSE55WWhIdUdBWXZUTTJlNlRLRXlwTnQ2cEFpUnlT?=
 =?utf-8?B?N1ZpSGFGK0FlNUh6Y0xUR0pLTG1XL0x0WVZEa2JBU1prV3N6RTByUDZ4MUc0?=
 =?utf-8?B?Y0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ba433368-1185-4dbf-abf8-08dc9b2946c7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2024 06:27:56.4418 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EqyeSNFtJQnQ7R8slKOVTGqfcWi0afLOiYAJ+Jiwdft/kbnTma+9nA8cttd3qr2DQxEy9nJpEbXoLMQhRUmxxeXjwlVUGn6eF9oa2eCliis=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5311
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


On 6/26/2024 9:13 PM, Imre Deak wrote:
> Atm the link on DP-SST is retrained without a full modeset, which
> probably causes an underrun. This was originally done for simplicity,
> the underrun not causing further known issues. The plan is to retrain
> the link with a full modeset instead on DP-SST as well, similarly to how
> this is done on DP-MST already:
>
> https://github.com/ideak/linux/commits/sst-modeset-retrain

Thanks Imre, I validated with the given patches from link above, we are 
not seeing the underruns with these.

We can drop my patch and perhaps you can float your changes for review.

Regards,

Ankit

>
> On Wed, Jun 26, 2024 at 03:18:32PM +0000, Runyan, Arthur J wrote:
>> There is no underrun expected (that I know of) when coming out of
>> training on recent product generations.  You should undo this masking
>> and debug.
>>
>> -----Original Message-----
>> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
>> Sent: Wednesday, June 26, 2024 8:13 AM
>> To: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Runyan, Arthur J <arthur.j.runyan@intel.com>
>> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Subject: Re: [PATCH] drm/i915/dp: Wait more before rearming FIFO underrun during retrain
>>
>> On Wed, Jun 26, 2024 at 02:06:24PM +0530, Ankit Nautiyal wrote:
>>> During Link re-training reporting underrun is disabled and then
>>> renabled after re-training is completed. For BMG its seen that we get
>>> FIFO underrun just after the retraining is completed and the underrun
>>> reporting is re-enabled.
>>> Add one more intel_crtc_wait_for_next_vblank before re-arming the
>>> underruns.
>> Cc: Arthur Runyan <arthur.j.runyan@intel.com>
>>
>> Art, any new workaround in BMG for this issue?
>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++++-
>>>   1 file changed, 6 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index 3903f6ead6e6..25af51499383 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -5325,7 +5325,12 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
>>>   		const struct intel_crtc_state *crtc_state =
>>>   			to_intel_crtc_state(crtc->base.state);
>>>   
>>> -		/* Keep underrun reporting disabled until things are stable */
>>> +		/*
>>> +		 * Keep underrun reporting disabled until things are stable.
>>> +		 * Wait for some more time, as we see (at least on BMG) that
>>> +		 * underrun gets reported just after the reporting is enabled.
>>> +		 */
>>> +		intel_crtc_wait_for_next_vblank(crtc);
>>>   		intel_crtc_wait_for_next_vblank(crtc);
>>>   
>>>   		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, true);
>>> --
>>> 2.40.1
>>>
