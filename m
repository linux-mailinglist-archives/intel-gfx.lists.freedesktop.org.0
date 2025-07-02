Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE2AAF6347
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jul 2025 22:25:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBA1710E779;
	Wed,  2 Jul 2025 20:25:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="drVDvdNo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB08B10E072;
 Wed,  2 Jul 2025 20:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751487943; x=1783023943;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=tDUibQkLL2gGl1UmUoovbgXiHnVxsyBo2L4P0qkn2Io=;
 b=drVDvdNoXOnrNopVlnFaRhgtYNhyQ54qOL8jLXRW7pUZ6WCs4463Qfqq
 EG5IQbJqJTq7r/ciMZmTs4cIQu6uXdHWrRj+O+hD909dQKs5tq3cAAHLm
 vwTATN5JVYE8wELWaUIFUOL9dZqehw8lG3/4OIqLKdlSrnIKlQB3hcGho
 kIJR0hBT3uZfG+fLPPwZoOTWyYt+plzco+kau3UE9+geZ4oBSZVfjt+wf
 SP6MQwQtzqGUcBLH1T9VAsJ+5V2VKbXJIA5OcuVVLzqHGIOGiv6TqGYbg
 neQqiPRI2KCGL5QzLVTjbkVW5TWruFxdxcMclt19GG1rPz1H4pFU71LcC w==;
X-CSE-ConnectionGUID: vZ/hQm9qT869Rn+582JADA==
X-CSE-MsgGUID: 1TLdZb65Tu6FvQsOJcsf8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="64499084"
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; d="scan'208";a="64499084"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 13:25:43 -0700
X-CSE-ConnectionGUID: KzhGdcGSSpqZ6HS6ypABLw==
X-CSE-MsgGUID: OQN4CcrpTaKma/be7oGoGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; d="scan'208";a="159685743"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 13:25:43 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 13:25:42 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 2 Jul 2025 13:25:42 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.56) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 13:25:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IYMflgQ69mhztzBmLG4wh3G08tHzKX5WC3a7prqwa1q4p4e4P/uFwQ6MAgqMcrf13gaoBIXiow56+CMukldnyclkKf7B7lM/cgC8/dnLY7gGjEW7nOwDNRVZYd/diFNwIFfC8jkLgsF4SJD5VJ6248EoItJWwi4xW78415aUbzmYRCNAu8cGaFlbVfuy2JTGW/i+uBPNSsyAWBEfpBkRu5869yCJO65lL8N+xLG6qgoLMc7nyf5mR6H6bQ1STg+GRaNpfV+pRSjXt6/sBZLKadhKvLcZteig74uLJfC5I6Yo4lKB5fnyVkG5A3vjiIo9tfh8v9CrZyHfUz0Kz3ywxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m8jRm+3aFAnHy0LtKIYpP3yCMiBd2pHHw0k/AXkhDPQ=;
 b=afycdDmfTHcgK6lHBfRBesZHeJZ+mUiahaXuKlbBDR3vcGmWhANiAvgkZHcSdHNpefjO4PdIvG9bdYaSGNfsrT2heS5/3isfQyHpHoRvhMDCERvCoMUcKrSU27gD81Ppf79Hs/F8vjB3YhrFdXhUtUemiQY/JsGcFLwRSmv8/kuhOUxSxbpUXaFCONdWbCWS9apNLwe2lRuWvUT7Yep1YAY9RSNnNahwAJEfsIgRZVkon0Q5FOyfRjx1D8jxGMjmiRdgzUoBaaPANkrDU+XUil/xuqeO5is/+H+c4g4pAkrBqoOm9Wg0H8QSD1I3VVmAa2RY2aRLL4ksVp86hmoZUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by LV3PR11MB8603.namprd11.prod.outlook.com (2603:10b6:408:1b6::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.20; Wed, 2 Jul
 2025 20:25:24 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%5]) with mapi id 15.20.8857.022; Wed, 2 Jul 2025
 20:25:24 +0000
Date: Wed, 2 Jul 2025 15:25:21 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <gustavo.sousa@intel.com>, Jani Nikula
 <jani.nikula@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display_wa: Add helpers to check wa
Message-ID: <fsyfxqbrzc5zogoyqew6xs7frdosjeewl4wj43yrduaetzdtlf@wm5utoxy2xeh>
References: <20250702084620.3837426-1-ankit.k.nautiyal@intel.com>
 <20250702084620.3837426-2-ankit.k.nautiyal@intel.com>
 <aGWLMinfzWd9IkFJ@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aGWLMinfzWd9IkFJ@intel.com>
X-ClientProxiedBy: SJ0PR03CA0181.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::6) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|LV3PR11MB8603:EE_
X-MS-Office365-Filtering-Correlation-Id: eb895cab-5194-4475-4c77-08ddb9a6932d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?ouIQ8RHBquTNB32l1TSufef0G2kmFSW2DIT+9hcDdbE4J6ENDPj8WWjE2q?=
 =?iso-8859-1?Q?pVvPs8edAjDXicuM9fXESUyy95F5ybb1eDbJf/eW/T0/JVKi7ESLCt+9AX?=
 =?iso-8859-1?Q?cyYua3a9SBCdDL3cA40p+bPGnUDHpZCbR0dk9TtEtohVIfCGK5yii17jhi?=
 =?iso-8859-1?Q?gmfNcx+wx5RzpHxvT9jlLbi9XyK5Rt0vVcggoGWJJLfliNBz0WBFrqKMKH?=
 =?iso-8859-1?Q?2h5Y6Ks7p4W8qlDGxZnLIAqbMi4VO/M/MfFKoxUVVqh/LVZqNLmwez0zab?=
 =?iso-8859-1?Q?rnfarnLr/AZTyWqVih4XSCE84h5gp/ylk3knd6Ajmk8LRTmyVmyLhHtNuh?=
 =?iso-8859-1?Q?HQYbEgyZRl1kp3jMWp7tjbBp3NSQd1vJIvslyjDQsq64b50HJnfhEMQ8TA?=
 =?iso-8859-1?Q?L1Ekk2S5B1scLRnV46wgYIQFoFGZcVc8eoPaaEUkVNK0/zklwSZLwjun3i?=
 =?iso-8859-1?Q?h9wrzwaCTm+fZ1F2QPo/S0hc8/dhHKuvKsIF8lv2e3Z6KyDeAJ1DX5Wtbb?=
 =?iso-8859-1?Q?zPZbuCivIBG220+0u1AZeANLDoQDgDgNJO+Q7t9X3dnUkyuExRT2KxO5mz?=
 =?iso-8859-1?Q?36ZiBtmitszt82GhRnas1qkZoEY1PCbLPDc2MvacSRrfIbXdr4NInQYuKJ?=
 =?iso-8859-1?Q?l3CZjodJip/LxkKmKW/6VMaPbueWeX0JSQiVukqKoUIGrNNBjeRa5rRdhy?=
 =?iso-8859-1?Q?IpJLwfy8lvt+/uHOmSd2Q+dYA8HnXpFjRvUj7yjsu3IBxVPWR83esfwk2z?=
 =?iso-8859-1?Q?hURi+d1Wl67Z4T0ivAAuOSxEnjdUOsDkVeLPYnFgqxMzdNQymLM/FNOSFR?=
 =?iso-8859-1?Q?DMdYt15+iTH/RjwPf7nLBtyV0n8BqW+jFTDxZdyCHwUgcD8w3HSMC19Rmb?=
 =?iso-8859-1?Q?nyreMC3ilDI5DxLff/ZZDRAgc/sYPH5/Tc+0xp5gElIu3ZW4QyzgMpNhe5?=
 =?iso-8859-1?Q?yaQJlTFReO/cXmUkDKmKtP1LT6wULe/C0cl3K7DkmHP2JUJE1MIv8cCrxG?=
 =?iso-8859-1?Q?GOu+HJw8pnXl5ptwKcy48cP3CvK+li6YKBnme59mfAmCQBOcBo9mxzzAfk?=
 =?iso-8859-1?Q?T3is68g+XUmJKlhxYWV3M7OmFQ7G0LmLhKj/Dy3yhbt5jzUh4YxIdpXoGv?=
 =?iso-8859-1?Q?VK1ZJkxe3T/2s9OwqgcVfBqHUak0XJ+46VPlru9dKSNxb9wZ2xm7VH1+pJ?=
 =?iso-8859-1?Q?T3LasElvKFmsB/5P+bGEApLFPJe4kEydUi8KKW2567WgrKf2WgLMhx9iJr?=
 =?iso-8859-1?Q?YM0tndeFNk/NeZuI+i0qBWrBhg11BMiF0tuP491KkQxT22qmIoHTa4SY9m?=
 =?iso-8859-1?Q?X/RvaPLghm+JMxFKOCBU25E/z1KQ23pggAmaVzCLcCC7K+BdzcYoBA7OFE?=
 =?iso-8859-1?Q?fXLBUclWKoWJWOmeeojkBdTCxJelq8etDaCkRKD4qyL6fBN++YFCUjEhN8?=
 =?iso-8859-1?Q?2t9lyTzrVAgbOD9IiMEMhstRHw0KzvKdS81C/A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?slKc//N7K5yHZRflZVWQhIqzbOGkZzTBZqNrX3uYOElkghMkYZ4DsNKW4g?=
 =?iso-8859-1?Q?XuKFlSE/XHHeoUhYaC/3bPpCfiwn4PeyQbK8gH3RJrG+00sXKlPnxny9R0?=
 =?iso-8859-1?Q?IP0pyTP4Co6ZSrCIPj6M5UBVjKQH9AEL4L5xwR8agWHi9muLiMO+GYYXfn?=
 =?iso-8859-1?Q?2Acg8HPlkyk7qyOGPbm9m52TxoMC4woxkTqIQUIu6D+/LfNuvmhPnCEjBH?=
 =?iso-8859-1?Q?D58oxTYOp4MqnBCDwDCc2tIZYCg9lnLiDsiCArpTfRYXUKvCkTqEIPdEcq?=
 =?iso-8859-1?Q?7F7vM3oBN8kvRfZM8z005abyHxCTOTQhAnXKqO4G7170cWu02G5MiWgAOq?=
 =?iso-8859-1?Q?GzlAkrdbk4iyyXM6S2LyA1GJvinLnlWCZDE0+LJbWYOJj1LU1p1n5GRlQV?=
 =?iso-8859-1?Q?8KOz437xW/ktVeIN7TcfS+joYpfBdQwyR83qEwMXbctpPtVuEayA4KJBFF?=
 =?iso-8859-1?Q?T4FT4r9Tpka9+OG5kN0A/qDVXAtoRXOLmiD5nxPiasYhYxIQOkys0a59G6?=
 =?iso-8859-1?Q?2ftMaFWQhgMkvBepqZWzdxfZ3g3fxna/rsktpwmdKDC0eKNwC+JLEDT1kQ?=
 =?iso-8859-1?Q?1P9874mqc7AuTD9UUz6jXX5yf0IbmtIYL72oIiBdXbAtxf56UzZH8ah7jF?=
 =?iso-8859-1?Q?MCXAMBB+4CQTf5GmNoTV78cl4+xeqV91DZYCnQf3jPNXT43ivV2TffmhHg?=
 =?iso-8859-1?Q?B7kh8hHmRD5IXD/0lFwPCq1/QBal2mQyASsjIvbdHpjuZH2FQBqakl1Uyy?=
 =?iso-8859-1?Q?6p7cA3JSh5crOS5R7KE9lU0EQIgleWriR7BtY29Jjw61Cu7sUP0hGyfIeg?=
 =?iso-8859-1?Q?ZjIQJ+qmZwD+G35dOqNqIWmH7i0Tzf9D+HHrLmosOK46D9Lpd5t3LEB1a4?=
 =?iso-8859-1?Q?Zsh0hyxWU6PrSBRBHu1JIkeyg0Inw0YByEteRdbR2zgqwLY9ESRQuAnqC4?=
 =?iso-8859-1?Q?hc2jNv2VoxvqsUy0NK1o9Gg8XnVWbWxuDQwaG8jqp7ltkjK1HUyys6s6C+?=
 =?iso-8859-1?Q?dGdoKwbVwYZziZ4b0gW6/qulp20MHMTKpAoYCAH6a8TmL6aTNjrGZqIBIX?=
 =?iso-8859-1?Q?TG8KzowtsiUTrPZGjX+v7YP6usJmzTdfxF3tqZexObl3/LJ+vcrlbljnOA?=
 =?iso-8859-1?Q?Izhk3XnYl7ofQ9+uzs1k4QXFPlEtvnsgOvXnjYnYLS2J0GEmATbKvEwn6x?=
 =?iso-8859-1?Q?gPBXUrH+FctqYzwFYhkwIF0jzeSbWgq26U+xVM2YQuhCNITuSlgqR6diva?=
 =?iso-8859-1?Q?ToaTt//Ej/RvH5olg8gKUwYzgwhYx+DB7e+u5L/ZZrWvykw9P7prwEcwdP?=
 =?iso-8859-1?Q?N1d/ts1CdDCqF2SJBkd7mqAJqbeah1xQQsgh99QwNcKTW5zVN/herIv4SO?=
 =?iso-8859-1?Q?1yVjXBGCH5JCbRMvkyyyjcSekTvD4+gwRQwNz0vo+FR0BJkXQspStXNj2T?=
 =?iso-8859-1?Q?GxkG9ZKthR2l/vwJ6Pw4dokLRnXrVxcoR082U/s7nLT96mPUMrl4fKmXLD?=
 =?iso-8859-1?Q?RlqYaz/5wHuKX1lOV1FlVGiA8yZFVlo0hUHQgYyJuT8UqHhDczXlXfIgE/?=
 =?iso-8859-1?Q?OR/+QUI4vJAtXFfGah4dw8/uNEIxgNH7rOZSLAHBx60Dfc+pAnB2Mc9E/E?=
 =?iso-8859-1?Q?6E4lcNBKUL7WsegVKl6C2MBOMaODI1aMLE158dyBoxHF0mHj2Q5bUadQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eb895cab-5194-4475-4c77-08ddb9a6932d
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2025 20:25:24.3097 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r9jEnaplglEV+wE/S/N9uOTmx6RGKX/BKY/N8GGu/L2j5+yUI30jSiI2TFkBdIZLlZu43yyO+z86NzL+3RDKjQ3qUaqQSxrl8RNENgCUDnU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8603
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

On Wed, Jul 02, 2025 at 10:40:34PM +0300, Ville Syrjälä wrote:
>On Wed, Jul 02, 2025 at 02:16:18PM +0530, Ankit Nautiyal wrote:
>> Introduce a generic helper to check display workarounds using an enum.
>>
>> Convert Wa_16023588340 to use the new interface, simplifying WA checks
>> and making future additions easier.
>>
>> v2: Use drm_WARN instead of MISSING_CASE and simplify intel_display_wa
>> macro. (Jani)
>>
>> Suggested-by: Jani Nikula <jani.nikula@intel.com>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_wa.c | 15 +++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_display_wa.h |  9 +++++++++
>>  drivers/gpu/drm/i915/display/intel_fbc.c        |  2 +-
>>  3 files changed, 25 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
>> index f57280e9d041..f5e8d58d9a68 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>> @@ -3,6 +3,8 @@
>>   * Copyright © 2023 Intel Corporation
>>   */
>>
>> +#include "drm/drm_print.h"
>> +
>>  #include "i915_reg.h"
>>  #include "intel_de.h"
>>  #include "intel_display_core.h"
>> @@ -39,3 +41,16 @@ void intel_display_wa_apply(struct intel_display *display)
>>  	else if (DISPLAY_VER(display) == 11)
>>  		gen11_display_wa_apply(display);
>>  }
>> +
>> +bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa)
>> +{
>> +	switch (wa) {
>> +	case INTEL_DISPLAY_WA_16023588340:
>> +		return intel_display_needs_wa_16023588340(display);
>> +	default:
>> +		drm_WARN(display->drm, 1, "Missing Wa number: %d\n", wa);
>> +		break;
>> +	}
>> +
>> +	return false;
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
>> index babd9d16603d..146ee70d66f7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>> @@ -21,4 +21,13 @@ static inline bool intel_display_needs_wa_16023588340(struct intel_display *disp
>>  bool intel_display_needs_wa_16023588340(struct intel_display *display);
>>  #endif
>>
>> +enum intel_display_wa {
>> +	INTEL_DISPLAY_WA_16023588340,
>
>How is anyone supposed to keep track of these random numbers
>and what they mean?

they mean there's a h/w workaround that requires that and this is the id
if you need to find more details about it or what platforms/IPs use
that.

>
>The only time I want to see these numbers is if I really have to
>open the spec/hsd for it to double check some details. Othwerwise
>it just seems like pointless noise that makes it harder to follow
>the code/figure out what the heck is going on.

what is the alternative? The current status quo checking by platform
and/or IP version, dissociated from the WA numbers?

Lucas De Marchi

>
>> +};
>> +
>> +bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa);
>> +
>> +#define intel_display_wa(__display, __wa) \
>> +	__intel_display_wa((__display), INTEL_DISPLAY_WA_##__wa)
>> +
>>  #endif
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
>> index 6e26cb4c5724..e2e03af520b2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> @@ -1464,7 +1464,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>>  		return 0;
>>  	}
>>
>> -	if (intel_display_needs_wa_16023588340(display)) {
>> +	if (intel_display_wa(display, 16023588340)) {
>>  		plane_state->no_fbc_reason = "Wa_16023588340";
>
>This here for instance is completely useless. I have no idea what that
>w/a is about or why it requires FBC to be disabled. And if I jump into
>intel_display_needs_wa_16023588340() I am none the wiser.
>
>>  		return 0;
>>  	}
>> --
>> 2.45.2
>
>-- 
>Ville Syrjälä
>Intel
