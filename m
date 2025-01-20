Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB48FA16D3B
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 14:16:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67A6A10E408;
	Mon, 20 Jan 2025 13:16:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PpRST6F0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ABBA10E407
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2025 13:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737379004; x=1768915004;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hyyOMoMinHt9PmG5GBCndbQceIsV+3zLHzXG6eHpwdw=;
 b=PpRST6F0i7XJOqiIFZd8qYWj1p7f34xs0iwh/439kqNGNswe3nVfwLx+
 Ix/xgwjdhzp/hCsBgD3t9jLM/7OYn0odYBdGEwj7W3CobyOBFJ75pIeAW
 ZFA73269BYTFneZt/7B3wBVlNdxQMgDjJFd1p6FoRkDMihuUlHP8oYXjY
 3h05LaLyHkPkijSmPq1L41d19SgY6xNNQTerZhauBG7Bg83dTAjK1kHUB
 lB5mxmYD3rQPzZf/b1jgp8IN+LI7gFWOqesmRn6yDnWGcj8FRO+uCBXU4
 7ST0L+l3GUpfKNFA1ks+YBZQJfV3jtySS6moKLFO+mcyoh/tImLLV9Yrc g==;
X-CSE-ConnectionGUID: clCvrQJDTdCpf7uED2oxxw==
X-CSE-MsgGUID: XNYJt3yGSo+kyOyUYVnq9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="48361403"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="48361403"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 05:16:44 -0800
X-CSE-ConnectionGUID: P6QdRcMlRLOzG3YSsH43hQ==
X-CSE-MsgGUID: SMSkNs1FSISty+rK9A/XZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="111499610"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jan 2025 05:16:44 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 20 Jan 2025 05:16:43 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 20 Jan 2025 05:16:43 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 20 Jan 2025 05:16:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kyT1TyxUzK+WUU74FpO/KqcfJ6f6MCWg5alr6dfvnnpypCk4whYU7Rt4zEh2+FIrmqaXE7jsPi20VGOq8PGVnuJV9fNLu7WAGUSPMp5JChpqv9w4pygEvRxOBRAaCXi/l9oKQit12nhQ5KiwSOb9R/tasBEM3fEAtNGRUjY+05hdePpY99qpLYDXgICIcUapzq6AfpBp9KVk6YcPCgBUYH/wqz78Cb/htUbraLJsmnmV3GXkHsVgkxVfZtwYz8Ea8ZQOcIyTlOurASGm+c/NRsSSA1l4ozNGnoFuOzpQgVYYH9OltlUmNvSsn+Q5H4ev3lsYPYeMCE5SnIqVlDhSCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YriRo1qQP8w0TCmjInkY+cdghbceAZhSsBnQ/+A+nkc=;
 b=dnqCOtuxe8QdAbHoklCAlBbhsDrT1jwrpk3nijFsz+id02CXcIjqCTzLLyZJyxoC3Y4OCXqwm51JuyauTcLLckGxluZkiiV4fWmFQ3BbMXEVe47YHEQbPJZ5f+P3mRR9IEXDmYD+CZLPnUIC+aEGZBbEUc2x2Mrk2qpDks34aZdREfwtya2VicRF59kYOR8NFw8/7XtijMBW/lkWYIDVRG/bHq0Advgkqu9Gu00BD/+bKWANjkx23BS2FtuAgI+1gr6LNYKPpOWiFw7UNFBGuiIzR9qXSGAzgHvcdAvt03h45NkRWB6kgilNfvapZ0y60o+DzWHBk8Pge1Pl8PWoRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Mon, 20 Jan
 2025 13:16:36 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%3]) with mapi id 15.20.8356.020; Mon, 20 Jan 2025
 13:16:36 +0000
Date: Mon, 20 Jan 2025 14:16:30 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
CC: <andi.shyti@intel.com>, <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4 5/8] drm/i915/selftests: fix typos in i915/selftests
 files
Message-ID: <suxgdhkrl5z4p2j3schbtwjbjvu5xirrmuxbt5rogmhyhx2a7n@ffnh7hacwhlu>
References: <20250120081517.3237326-1-nitin.r.gote@intel.com>
 <20250120081517.3237326-6-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250120081517.3237326-6-nitin.r.gote@intel.com>
X-ClientProxiedBy: MI1P293CA0020.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:3::18) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|CO1PR11MB5105:EE_
X-MS-Office365-Filtering-Correlation-Id: 98ca9d09-fa6e-419d-e79f-08dd3954aaa7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MmVSMHZHVFhMQTlobzN2bVhzdm0wSWFTdldpNHpTV3htODV6SHgyN0ZHWHND?=
 =?utf-8?B?MjJITmx1aFh4QWJNSEp0Q0RSSjV5SkRiSkVNWlJ1c0hnQU4wU3ZpcWRSNW4v?=
 =?utf-8?B?NnJMeUlsVWN4dFBMZmJhNmNLeW9GSFFHR2pUdTlXWUdSQkZqQlI0ZFZ1b0NI?=
 =?utf-8?B?c3RZOXhQTzBjZ1VSV0d2ZkRiYnFtQTlxdWR3clpEM1M5MlhtdXFKRVFCb0pw?=
 =?utf-8?B?SW10dWlSQXJUN292S3BCSnY1SHFROUM3bElJSm1BZjZ0NUphKzFuaXVNQVBV?=
 =?utf-8?B?Wk9XUnJZRUZzUUNBaXAxaHcvQ1kwWU00Q3VVMkxrTG5BaTlvM1ErbzhBK2V1?=
 =?utf-8?B?TEpJaXk4OFo4bndUS1hMUDRuNm5OSTg4MmFhZ0ozbXJCUi82VytPbW9kd3Nq?=
 =?utf-8?B?dTNkMWZqdUk4WXBtWlhFYjZSbjdZeFZyaUZtUFJLcWdSSkVoUGlPQ0EzS1ov?=
 =?utf-8?B?Z3ZvRFFIVDNqd0sxNS90WjNMSTYrVDRMdktIOEJ0NGxEOXo5ZGNId3lxa25s?=
 =?utf-8?B?c1BYVUUzT0U5em9uQmlxRjd0dkY4dW14ZWNnVjVaMklXdzM0TjR4bHVXVlB0?=
 =?utf-8?B?MndEMUQ3VUJFV2FyNXRaWS9MZWYvN2VZYzdDQUZLNkVCS3ltMDhUczRkTlJs?=
 =?utf-8?B?RDdyYWJnb0RLUHJmQ1A3RGord0dMc1FLdGRYQmpjcXVDVDhkUWplSGd0NVd0?=
 =?utf-8?B?NWlaRGFzWGwxTTVZT2NHUTlrV3JSOHljaGJ6aXhWNFd2eVpEbDVjREJSakg4?=
 =?utf-8?B?ekdCbnRVTjdxbTZkYzR3U01LUDNwemQ5WGFmeHhhTjFHbkE3NGFsOFJGREhH?=
 =?utf-8?B?VmxuUldoUCt3aW0yNFhHNUY2UWh1ZVY5UWEzdXpMbWtxY2N5MG0zcHlLdnl4?=
 =?utf-8?B?ZFp2RmpWb3VXRXdGT1JRa2t6V2VpYzMyUmFodFFzd0tIZG5EZFNqNnIxb1BP?=
 =?utf-8?B?d2RKVHVsaFlrYUYxWE0wY0cwUnNndDIyNElzVFlTdXpsOFJkc2VaeCtWbkd0?=
 =?utf-8?B?ZG9iOUNFdTNjQkhsY1Q0TjVsQW1RQXZUQjAzMWFyTUZrSlJkYUFFTEErdWY1?=
 =?utf-8?B?a0dxV3UxcEliKzlvNmtJdm9ZZEFBd3lheU5WakQvazJVeDJYaS9uQ2JDTTl0?=
 =?utf-8?B?RGhGeEdVUmZ1V2l3ZHZDV1psbFlTNHV0UXhGYkhjcTV6eW51VUZqdEtGZDln?=
 =?utf-8?B?YU5DVERTS3BDNWlOV202YWVocTNKdlU1MWFWUUtsUitPOEZ1UkZMRHh2Tnl3?=
 =?utf-8?B?dEs3TEVKTmZrT3FPSlJLbURYUkovYllyM0NOcHFISmozZllURGgxbStTV0o5?=
 =?utf-8?B?ZWFTVURuUXNBVGx3cDRNdXU0a0x3QVo5TGlITDdkb2hYUDRwSmJtYXJoUFdr?=
 =?utf-8?B?V2FhOUJmSGZ1MzM3c2g0dHhJZDRIZEh2Rzd3U0JPbEVvUW1USlkwaHZWU21o?=
 =?utf-8?B?MklzWVJUM0RvQVRtTjlXYzBaNjFnV3lBaFhTRm53QVRMOVhvb0dXd3pEc1Jj?=
 =?utf-8?B?aU5DN1FCYUdYOWNhVDJ0TnRINEMrdHljSDBmeStHakRxU1F6ajZ4TSswU0o2?=
 =?utf-8?B?SnFwWVZtZnRqN0U1ZmVPRGRUY0ljK1FvT2NXWlF5MjZPVjI4MXF6dDAwMjNJ?=
 =?utf-8?B?LzUyS2U2bzUvd2hyeVBTNVM0dEYxam5yd2Jkc2w4cm9seEd4SE03YmdlZjlW?=
 =?utf-8?B?Y1JYS3AxZlBjWjM4UTBDZnk2RHVMU2l3QUFNK3dQMXZaY3U0azliQmIyNHJE?=
 =?utf-8?B?eHhLaVoyTVk4T0h5V3FYRU1rN3lPeWx2aUt0Nlp0VDB3blZvVERpMC9mQmdk?=
 =?utf-8?B?OHRETjM5elorK0dabERsYXNaVjV6V0VRVjUvQTB1eEdoVDR1SG8rR0YyeFQv?=
 =?utf-8?Q?0SdLvubInK2pc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WUcvQ2dBb05CcGpYSjRXZzNjd2dEWlhldUplU0xyNUVvVlVkaytycFlhTkFY?=
 =?utf-8?B?dHlQeno1OGtTclB0S0ZXeGtqUlZMT2djU0g1YjBpa3Z6SEJuNmpaVTFlUkk3?=
 =?utf-8?B?cGtmdGRiNG4rU3NtMGZabStCaWZrRXB6dTcwbFlJZHJJL1hRQXhXcXhGSk9v?=
 =?utf-8?B?OVpGbGtObVgwVjJoRDNOSWQ1RkpCS21FVGJXVW1RTGFzZXFUbUFwZ0dwUVh5?=
 =?utf-8?B?YnFMcWhCYTVBRURVVHhKQjBPNXlmZzhGUXllVEl4REZWNytJeHVPSFBQVFc1?=
 =?utf-8?B?TEx1eUV3YlNMRDc4dUluTmxMS1JvYm1PdEJBMmxEWUw0TEgreXF1Z1FieldK?=
 =?utf-8?B?SFRZMDhhZ1B4R1hxU0VKVk1oU0hucWprUlJXa0VZZytxdVdPQzRKMy9oeGEz?=
 =?utf-8?B?QXVGc0RYckpyMVlaSWtJdk56cTlsaWptTTVWVHVzZ2h1WXR0eDRTamk1SGdO?=
 =?utf-8?B?L3BUQkZNL1JWMk5mTlc0TENnbXEwMVEzSEJiTWtJVFdOWlRRV3FNT3N4NVpw?=
 =?utf-8?B?TWhYa0JEeUMzZ1Y0VGwxNS9uSkUyMVRrdytRZzZTZmVtRzR5Sy9mbEJUMEpm?=
 =?utf-8?B?WnBTczJwb1pXTUNmVU9qU3g4S0ZpOG55anlyN0FnZFUyeTYvMWxOSE5DNTU0?=
 =?utf-8?B?dDgza0JoNzl0NlVVajd0alRQbkp5N1dxY1owMks4RENCNXFBdjQwNUc0Y3Bx?=
 =?utf-8?B?U2M0UFBtTkdRa0FjZ2ZjVVhaeXZ2VytRUEdPYzh2aEVPMjN0dUhnTkxydUlD?=
 =?utf-8?B?Y0tXajhmNW1MMjJjZ3JQdWFqbFFQRmJUeWcvZVZYSmp0Q3N5aUxPbHFNSERo?=
 =?utf-8?B?Q0ZXeTBWSzVkN0s4V0FiNWNWTkNBMEI4ZVZxNWRiSllhckl4QXcySWtzNVdp?=
 =?utf-8?B?b3BxMXFnbDBkSjNYUHNWKzYwWm40Z2xJeHNDeWtua3ZaWkw4R3JPUjhJZkEy?=
 =?utf-8?B?WjI2cDVjSTdsd3hySzVjNXFnWkptNng1eUtZZ1ROY0w3M3E2TklPMDZ0bFBT?=
 =?utf-8?B?bXhWcmw2Z3R1OW1hTlRiRDhmL0phaW9wajZpYjJXMFdnK2tyam50T3RReEhG?=
 =?utf-8?B?N2tOQ1JWWWhkNHV1ZVBwYnJZTndncDdQaDlUY0NSNG95YVRCSm03dWUzTXdL?=
 =?utf-8?B?b3ZVQ0IyYjgwZXRITkV3R280S1pyWk02YXIvVVVQQ1hMbVFKL3dYZEtNN0xw?=
 =?utf-8?B?YUJIL1FqbjRrbnptOWxaeTlvYjZMSlhidFNrK0lpUldRWkxZQkVYZFVGQVpX?=
 =?utf-8?B?eDFCSDAyaUVjWGdWaVF0ZHRqMGpGZHA4eDMwV2ladE5lMjg5dmFOdUZpcCt2?=
 =?utf-8?B?OFd3cUFGQlB1dzc4cnZqN08wMnkwbnBPZFAycGNGa2xjQkF6NXBGaDlqcHZv?=
 =?utf-8?B?WTZsUTcwNHZKbUNSK0JBQnU2ejNwWWpna1pnYlVkTGlyeWtRR05zb0xEdm9H?=
 =?utf-8?B?VzQwcTRYcU1ZRzZtT3BnWkZwWlp5ZmFDTHc1OE1RU21LNXhZbXREeDlkYjFO?=
 =?utf-8?B?aXRGTGJxQU5SSUtNRmlpTUdPNHlNdUUrTmdSYlhKZzE3U25BMjB3aG04VGRl?=
 =?utf-8?B?eDZQdjhha2ZrSmdLUVZPNjZ4M1RrT2dKdWVHTFFReTJXd05jamhPOEw2ZzJp?=
 =?utf-8?B?Z28xNlZaOU1vc3Jra010ZFJVMDhaZVhQZzVtWHZqa0t1TFlHZGxST3NwUDl1?=
 =?utf-8?B?Zk1abFcwbHBkS3hyU25ycmhhWTRHTGsrcE5jbFhsVytnZXg1SFN3USsyNDR2?=
 =?utf-8?B?QWw1MENmVU9pY3RrYU1ORTU5THR3aHdBNnpEL1AyU2o1d3JVUGJoMEhMK0hr?=
 =?utf-8?B?K0hXNHhzSjkvS1QvdDJGUUJLRnJ6bjlnVnNscml4bFZkZlR5RDVvbnpPZDJV?=
 =?utf-8?B?RDYrblpLdTBXaG1iYjlQUlZmZUg0N3V2K0FZeStQQTJxQThHN2t4VjlYRXhJ?=
 =?utf-8?B?aHlMS0VHbzhjUEUzYnp2Q3RpMG1Xc2wya2J4ZVlsWFFRV3RwL0pOOW54a0la?=
 =?utf-8?B?K2xXSGovNTV5eDNpeGszajdKODUyN3VlMnNvVEdMTWM3YnM3dGxjTG5FQmtE?=
 =?utf-8?B?Q3JlcHByYVFDT2R4MWFWN0VEc3hVQ1J3Y05UaFkwQTQyV21QcVVDeDdxOE9X?=
 =?utf-8?B?OWN6eHE5eG9GUGdpcHNJSTBna3d0WEYrQ3g2NXZxRURseWtLcTA4QUpXU25Y?=
 =?utf-8?B?SFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 98ca9d09-fa6e-419d-e79f-08dd3954aaa7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2025 13:16:36.0749 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JsuXptLjLg6oMCB9RwP6q1t5n+b3gPKwExsB75cyD9C6Oz9Yn8UAuT1cXUPTjz7V06FQwcMAMjYSQKD1LiUELGcasF35Amikc6YuZLau+0w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5105
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

Hi Nitin,

On 2025-01-20 at 13:45:14 GMT, Nitin Gote wrote:
> Fix all typos in files under drm/i915/selftests reported by codespell tool.
> 
> v2: Fix commenting style <Andi>
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

Reviewed-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>

Thanks
Krzysztof
