Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55750CEE02F
	for <lists+intel-gfx@lfdr.de>; Fri, 02 Jan 2026 09:20:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C71B110E0CB;
	Fri,  2 Jan 2026 08:20:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k8gH/kAQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F77110E0C4
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jan 2026 08:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767342003; x=1798878003;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RlS0eHELT1pQHRzZPY6goaTar/pvWO80wT+Uh/5dvIw=;
 b=k8gH/kAQKIry51WlLI3UC6KIB4XysuZpTeAMB9r0PUbEmcV7LDQIZ7mS
 Q85njM6TEuzFWQbY/HvCofZF0qEnAFGhOOSqScuHZ6fCZOkqNGtePMcV/
 AjZTHm6+KBX2b2k2dQ4IY8Hm6o87HJiVL2KziThdB4lHVdKc6HLgWFsmI
 6cT+oFSmDTofGZZ5KYHqdlawifo7gCD5yU/PY2xzxJU7W1Zq3+C8Wd51s
 pJH/14DNqlQdw1D6b0PKbqHxRA0fvKmWpv2UlXZ4IX4hsdQ18Sw1zkjzy
 kq4x/VkfWnTTy3yvHxlLTt9C5nmtjxe4ZzHi9I8y6OTloP4cwhzwwKufM A==;
X-CSE-ConnectionGUID: bwe5oPTRRTKZf6R7f7aweA==
X-CSE-MsgGUID: DD/76INZT3q6dVpllJCOqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11658"; a="56402139"
X-IronPort-AV: E=Sophos;i="6.21,196,1763452800"; d="scan'208";a="56402139"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2026 00:20:03 -0800
X-CSE-ConnectionGUID: kxF5AdSXSXexWPhijcM/wg==
X-CSE-MsgGUID: AdiPy5bTS2OzQnUGjFgfqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,196,1763452800"; d="scan'208";a="232870964"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2026 00:20:02 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 2 Jan 2026 00:20:02 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 2 Jan 2026 00:20:02 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.18) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 2 Jan 2026 00:20:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u+nd/DI09/xTrEEHuFEoeGCU3jeqta6lbLxLu62y/AxV2w/a6QDvw3ktzAp5FXVCcTA8RSZIWpFMPc5FHq6boAdqOC1CBIbwaa+3sNz1HFlrK93nzHecoZi9si23FgZUkBRNDkspn5heQSK0BZgzi2z8A0wpTt13ibzaHQn2B/WxZrrIjPtQyEiMsRqSFl5aksPiKcTnH4d3i9wBobtjG5pkazd4nw/wUIveqY/gD50dG7AJgGTm42in0nKT8hwvU7E4PLcZit5Zkyv6P+XjD0oo3ct27PbjdMnI00lSbbcY9uxs65LX+c0jPjMx6zMaduc+SKqo296g/E92/ltJCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AAbKQiM7ZZfJ0yBZEB6J2obqx4l3/4P6daWmYJTXtT4=;
 b=KkCG228OCd1nTZdzA+IiYdrw9+zURg93bBsz42qvldXvB9B+24PRLJW1QhifFRaFyc5TXUTA5Tv9MmujFFVCPVthSJFD1JCtX94AhOROuNYJiVvB4A4uWE+Ubfirv8FmY5zDSUmJNjYKsnO9QlGR0Hn+eUxkMppfiDjRWZS2FSPNBKf2C0Tbpfcko4W/TGWz+eEYgQsbCtbQAnLrW456oErYfwxRh1OKQP9y7xPxnDHPl63csJVqtomI/G6EFcp1LN47g+HZu0pqPHD+dSWgWWCf9FvcVTQIzOx6FvZhI9/+GETbnFXX/wn1xSd+BclloZukIQt+hcXGkD5EYOmP0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA4PR11MB9372.namprd11.prod.outlook.com (2603:10b6:208:568::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Fri, 2 Jan
 2026 08:19:55 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9478.004; Fri, 2 Jan 2026
 08:19:55 +0000
Message-ID: <3a7ba5f2-25a0-46b6-81c9-55a9a5bacaea@intel.com>
Date: Fri, 2 Jan 2026 13:49:48 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] drm/i915/gvt: reduce include of gt/intel_engine_regs.h
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <cover.1767180318.git.jani.nikula@intel.com>
 <2f5440016b5d164a6f3889565761caa17cccd4b7.1767180318.git.jani.nikula@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <2f5440016b5d164a6f3889565761caa17cccd4b7.1767180318.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0240.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1f4::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA4PR11MB9372:EE_
X-MS-Office365-Filtering-Correlation-Id: e4ac00fc-a7be-4c68-daa9-08de49d7b5df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UUtKZTZwSW5ienpDNVgzWTFReTJWdWV0S1FaZnJpY1YvR1pWMzhEcmd3NW5o?=
 =?utf-8?B?Vlc5ekFDVTNFS3VpWWwwYWtISzJ1UnBvZGJUa2Q3UWQ1UEZzNE5LaFowOHBQ?=
 =?utf-8?B?WWZuZ1BwWTdvY3orbFJ0R1NVc3VRZXU2M3pFRnlmVG1UaXhlSXNhNEEzRzdR?=
 =?utf-8?B?bG1iU3NyRlZTKzZzUDY0T2VIcnVVQmVSS1RzQWs3L0kwVS9zMG12c0VzZmV3?=
 =?utf-8?B?VjdVVXEyUlZxZWNUV1Q2V3F6Z2FEUzNCckRLNGFuWVhkdkNVS1k2ZlhUNWZR?=
 =?utf-8?B?a3FOenRnSHozMENnNXMzTHNnSTJHSjlVRTVjRCtybEtSNnM2aFUzdXdJMVZ3?=
 =?utf-8?B?Qit5MUI0UHUvL2pQUmdERXBWN0k2NG1uMVI0UTRMbU9LU0RyRENwWjI0NlB0?=
 =?utf-8?B?REJzSkNjRUlaR1RCb0M3Q2xDelZ6Z0IyOUYwWVFJNzRkVjdBN1lBenhiQmdI?=
 =?utf-8?B?ZVJhSkJDSlJMSWJ3bFMwcTlvb1ppRGRjYk9WRFdLSEwrYkhTaGk4N004VlVj?=
 =?utf-8?B?MzNnL0dQT2xUTXpPOGxWQkNpRUpjUzU5UkFoa2lWNGkxM05jdis3VkN2OVQ3?=
 =?utf-8?B?NmZua2JZMWxqemluYjZJcTQwZmlCTHozZXlUcXg2cW5qOUhzMUJ4NUl0cytD?=
 =?utf-8?B?b0RQNVNTaGs2YXBmY1IwUnJoNXArUU54VzdBclFzcDNYRWM4bmtvVW90TmdZ?=
 =?utf-8?B?dGpHN1JHYVlodmcrM1diNXZsNFc1eTRVbWJ4dnZqYjVGN3NrVnZDY0FDbENG?=
 =?utf-8?B?T05xT3RmVml6cXEzd1RjQU1zR0ZFQ2tLMFU4Mi81bXFjMWFLemUvRy9CVXlS?=
 =?utf-8?B?dTRWR3NNRXBIbFhmbmk5YjFDSnUwd1VjMTZhamNVRUhuVzRNMjErY2wvTGlU?=
 =?utf-8?B?TDIvKzdtTEFqMHdMN09kQVNiOFNheHFlNUw2em9xakVwMm5uREFxa3ppUGdr?=
 =?utf-8?B?S3dac3UwSkxqYzUvOHVzWjhLWGV0QmRBVG9TZGFUTldJUWFaeUlmZjlIR3ZD?=
 =?utf-8?B?cXJFZTYyZW04MEVjWXdIWjlreU9ib1hROHBMbkYxVEZyNEttN1JUUFQxbTAx?=
 =?utf-8?B?QkxKNjFENnM5bXNEc2dSaGRxNVJSTkk0Y2dMRDBKelQ5UURNTHhvbi9UOGdu?=
 =?utf-8?B?ZDlPU0VxSTJ6V2pWUnlDMEdvZ2xETklFd3l3amw4cysrNkxTMFlXallzQnRv?=
 =?utf-8?B?RGpBQy9kRWExL0RXZEV1amJmSlJBczZEUEdvK1NVZno5YVJuZFYydEIwUnFo?=
 =?utf-8?B?amZHNVQ5eENQQWRyUHZpQ3ovRDJsLzRUOFVZZE1iR3p4VWRWTXExcU9PTkp4?=
 =?utf-8?B?ejk5UG13cVpTNERXUUMvNDZ2QzR0YXYwcUxmZHVBN1F4TWtIVGRYWXRqd0xr?=
 =?utf-8?B?Sm95RzBkcHBBVkY2ejBFSTdSRXJXM1c4V1JDa3Q1SWNqODNFR1ArWlp2cUJt?=
 =?utf-8?B?OXpidDM2LytiK3BsUHJzV2VwK2ZqRjBxdDA4UkloY1I0dGs2cnUxemR3OGpG?=
 =?utf-8?B?VWJKNDFQNXhoVXYzSUFEQ0kxMkZZeVBRckdLNHh2Uy9CdDVuanh2c1hJc1Fr?=
 =?utf-8?B?WmxDaEpERFl4QkRjYVI5b21ESXl6RjVnQ0o3bHVET2JRUTJydlcvOGQwMkdI?=
 =?utf-8?B?ekVxYjhRdVk0MzZWVjF0anFxdk5PbkpFNGs5dUhTYjZiWlM2OTRYNklmc0pB?=
 =?utf-8?B?SkFhNDJ5a0FXZWQzUkxhUDROeHEvbTljYVlocmt0OG0vU3VXWjlHUlpVZG9W?=
 =?utf-8?B?RkdOaVQzT2JJUWV5RnhPL0lyQTNnZGZkdGNHWWorVnU4WENhSWM0YUp3c0lI?=
 =?utf-8?B?dW4zaXVoNm1LZ3FmMEtYNWlSQjBEczkxbDJtWER2OU1vZ2h2U3NpY1lFbWJt?=
 =?utf-8?B?ZzJrL1FieFZUUkNXY25oeUpXcnRGME5xRnIwU1I0MUVBdEorbFRxVDdlZXF3?=
 =?utf-8?Q?ri6/nHmhWqcD4tEnrEUVbcJ2eWszvbMX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TFlrN29WZXh1bXRvSmJLTlJ0NXIyMm1KTFhjMUxZMm16Wnpkc3lSMVI3cXNN?=
 =?utf-8?B?ZVlLWEpyQkQ4WXU0bjlTbWhJUVRyOWdIcDJmU0U3bWFFSzlIWEpKRnZGWXFs?=
 =?utf-8?B?aTZFQjRLQmVicllkb3FTck5DdDJSVmsyNjVxTDJwNk1aVG16cnZQc2taQnJy?=
 =?utf-8?B?R2NBNTJKaEFOTFpqWklmMlBQT0picEpVa0pLSlVOSzZsSWRHUk45Z0FHODdo?=
 =?utf-8?B?WnNKdjNHN0grWkxURGQyTCt4SHRFV0FvcytXK3hLREVNUTNCV1d1SDJ5T1hY?=
 =?utf-8?B?ZGJrQ2FBZ1FMWDQ0NzBTTFFhOFZ4dWk5a1kwZjQvT1Y0Z3BzdGszY0RXKzlz?=
 =?utf-8?B?aFN4cTZHMzhSMGFJdHlNbnMvMEpjcHk2ekFncGdIZ01hVlg1YnpaaEx4clMz?=
 =?utf-8?B?Mkw5RXlJbUE2NU4vNGsybUsrU2lBbTFrTTIzcWdHYmJPL21yUWlRUXpQOUwz?=
 =?utf-8?B?YXJQelVicmk1d28zMHBtcHVGNHJKczhLRVpXVVJnNmZWVExDanphK1RpSVNG?=
 =?utf-8?B?cDRYa0gwQ3hxVklmSlc1SlA5Y0FmSlVVUERpMHdXaXp2YVFDWlU0cktSSEFF?=
 =?utf-8?B?QnVLNTRZYklvcGo2eVdQYlZLcU9NaU1DOGxQQi81TjFta05WUWFkaEY3NWFw?=
 =?utf-8?B?alQzZk8xcEJCNHVVbDYzQTdBRldmM09JZVE3RkZ6K3hudmZBWnFtQXk1aG1U?=
 =?utf-8?B?L0V3T2d3b0hNcVd5WktVeUtTeXc0blV6cCtYRVpOQlVoRUpSbitaN3pRelhn?=
 =?utf-8?B?UVhieVM1b2lWWU82R2FUbHRaMENUWGtVV1E4ZWdNWXRjZUt5bGJ3L2RyU0VN?=
 =?utf-8?B?NUV2MjhNbnJCOTA5OXVvczg3U0MzSDVFRzJMTCsxTzhwd2VnSDRtTHRnTHh5?=
 =?utf-8?B?T2NkV2Rpd3RSQnQyUVlvOFhmNkdKaGdWdVRTMHlsMk9uQlluVU5tdy9TaG81?=
 =?utf-8?B?NnlvY1N0K21qRitDYzgrR1R6RStmWWNMUWlkNlp6M3lrUTZBUmFYY1pqejht?=
 =?utf-8?B?TGM1Z1NoMVJvMCt0Q3BhclVSRDhXQmZYbXZpbTcrNm5VaG83Qmdabnh3TXUv?=
 =?utf-8?B?SkxxTXRlY0JjanlUalFuR3UyYUxPVEFwMHhGS1gwbWpjckRsOGFGOHh0U2Mw?=
 =?utf-8?B?NWRqSmxrcjBHYXBHb0pTb0xxWHlYOEg5ZGxVVWhlN0hBV2lXTFp5TVhaUVk1?=
 =?utf-8?B?YWtUbWYxZ3JWb2t4aXY5Y1RyMmNueTR6YTFaTmYwTEJEdXpFUzdQK2VQcmwy?=
 =?utf-8?B?ZENGY2JvSTBlRFZpajJ2NWtwM2VwQWRLVDFjRlc5NXJMM3o1ZjgvY1FoNElO?=
 =?utf-8?B?bGNBL0M4S2dNRGFRZnp5ZzJza0l5b29VUEJxb3BFMW96VkZOYTZjME1tL1Nm?=
 =?utf-8?B?WHFtWktZd2k3eG0zQTg2VFgyaDRKbWlMU1JBcGxseUorRnMzbDMwczBaNGRE?=
 =?utf-8?B?WHh2LzNhTnVxSUExTTNsYXNITDYvY3BTQXQrVXJCWkVPYXVMOXUvZmhIQlBM?=
 =?utf-8?B?KzR1dC9qMXVkRm1nNU5iV2hhMzVFZk5pTDhIYkIyR00ybnNOSjYzdUgxall3?=
 =?utf-8?B?OE13c2htcXh2STdvOEpoUEtOZHZiNEFXN28vakE1bnV2SVZZR3BnQVY4c2xE?=
 =?utf-8?B?Uk1BQjlBZzVoZGdEdWxmbzRvbmJDL3BJSE56Y0xXNzN0N2dWc3gxUjQybmdi?=
 =?utf-8?B?cEdaTVFha0dFRGhyY1RCU3dBNW5NVE1wYnpobm9sSTY2SkFreWJKQlhzbkdC?=
 =?utf-8?B?WWZYdEROQjJibWlQLzQ5clpSMkNGMExZa3dKazh1UGdYWU5BMGpVNFNUejdz?=
 =?utf-8?B?TFpFOVJSS1hkUHlxaDhFVmVUbDR4aGVuUThpUlhCT2JjaW81WkI0anVLWDlq?=
 =?utf-8?B?V1lxcDBxaTJKT2F2cEd3TVdQMFR4aFBzTXhteDhsdUt3ZW5Za2VNZ3NhaHRD?=
 =?utf-8?B?bVZKOXBjTHkwNUpBS3ZOWHFTME8zaFBzVS9OOUZhYXJsRXhVVDZpdDZ1UWJQ?=
 =?utf-8?B?SnQ3cFVJQmtoMXlwemtrdlc3aWJvcWxYQWoySmtwWjJGaDVjTDk0YzBOeTFj?=
 =?utf-8?B?ckNnaTNIQ0QvRHAwK1JRRzJBMjM4Qi9vRlg4d0NpaG1BQkV0T1FPdndZTEp3?=
 =?utf-8?B?eXZsQVhieklWV1ZKeXBLUnVndEZvY0xzZExoMVFvekV1cmw0YmNURjhHZVpw?=
 =?utf-8?B?UUJZakxMeEMxRFE2TmFLT1gwVEZLYkRRQUlidHZISHl2cHNYcDZSZWVqa004?=
 =?utf-8?B?dHc2YUZlY29oK2lYVHNNSWRnemJjTjdkV2gyeGR2YnBmWUkvRm43NktCOFEx?=
 =?utf-8?B?UDMwQktNWXNrc0Z4dUZhVEQyQW8wbitPVHg4U3NPZFJSeXdBNjI2RWx0TWVF?=
 =?utf-8?Q?vYhZIk/MJPkxwzpw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e4ac00fc-a7be-4c68-daa9-08de49d7b5df
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jan 2026 08:19:55.5339 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rIeuC74mOn+ZTCil4qco+csr3sVLbJKT/b/EZXgCVkq0wXltYnfV3lZGpqLrwC1vHs36CkKqNyW4iTusXv9hLQ8vfeVovZkLgx5vkZ2kmiU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9372
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


On 12/31/2025 4:56 PM, Jani Nikula wrote:
> Move IS_RESTORE_INHIBIT() to scheduler.c, along with the
> gt/intel_engine_regs.h include.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/gvt/handlers.c     | 1 +
>   drivers/gpu/drm/i915/gvt/mmio_context.h | 5 -----
>   drivers/gpu/drm/i915/gvt/scheduler.c    | 4 ++++
>   3 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> index 68afd9b046d4..bd20f287720f 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -61,6 +61,7 @@
>   #include "display/skl_watermark_regs.h"
>   #include "display/vlv_dsi_pll_regs.h"
>   
> +#include "gt/intel_engine_regs.h"
>   #include "gt/intel_gt_regs.h"
>   
>   #include "display_helpers.h"
> diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.h b/drivers/gpu/drm/i915/gvt/mmio_context.h
> index a821edf574dd..c0e3695e3bbe 100644
> --- a/drivers/gpu/drm/i915/gvt/mmio_context.h
> +++ b/drivers/gpu/drm/i915/gvt/mmio_context.h
> @@ -38,8 +38,6 @@
>   
>   #include <linux/types.h>
>   
> -#include "gt/intel_engine_regs.h"
> -
>   struct i915_request;
>   struct intel_context;
>   struct intel_engine_cs;
> @@ -57,7 +55,4 @@ bool is_inhibit_context(struct intel_context *ce);
>   int intel_vgpu_restore_inhibit_context(struct intel_vgpu *vgpu,
>   				       struct i915_request *req);
>   
> -#define IS_RESTORE_INHIBIT(a) \
> -	IS_MASKED_BITS_ENABLED(a, CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT)
> -
>   #endif
> diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
> index 6b5ee40a4386..15fdd514ca83 100644
> --- a/drivers/gpu/drm/i915/gvt/scheduler.c
> +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
> @@ -40,6 +40,7 @@
>   #include "gem/i915_gem_pm.h"
>   
>   #include "gt/intel_context.h"
> +#include "gt/intel_engine_regs.h"
>   #include "gt/intel_execlists_submission.h"
>   #include "gt/intel_gt_regs.h"
>   #include "gt/intel_lrc.h"
> @@ -54,6 +55,9 @@
>   #define RING_CTX_OFF(x) \
>   	offsetof(struct execlist_ring_context, x)
>   
> +#define IS_RESTORE_INHIBIT(a) \
> +	IS_MASKED_BITS_ENABLED(a, CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT)
> +
>   static void set_context_pdp_root_pointer(
>   		struct execlist_ring_context *ring_context,
>   		u32 pdp[8])
