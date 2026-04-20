Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJubOMMV5mnCrQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 14:02:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E5842A606
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 14:02:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2D9110E514;
	Mon, 20 Apr 2026 12:02:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MwCB8Z5T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBCFD10E1F6;
 Mon, 20 Apr 2026 12:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776686523; x=1808222523;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EtinAYX6k0O9fzNpwysEg6p/+kcvlpkeQU+nnAOXmCs=;
 b=MwCB8Z5T90U51Wm2chBaEJC/rAIdY/DAbIlUC49dAyYo14XB9BJVOYn5
 2qUKHljN79tfMA0p3ktUomNjNEXV6+C6/Sbf9XcA10NUnG68upO5z6uY+
 Y/EnjfPzkPI7/EUc9zwGgULICjR7jcLNxrvQAwme7QmdFKGUusm9hH4Qb
 HmJkRltg68NwFDBGaI1xQJk6m8oWc5SFqUeq5rsCikLNHTPm3oww3r/xd
 a+BgwalIu5hn3ZWruD/3dkrGPat+3y4hQlyJ9mK7OUJcP2gyMqcQ/r4Xq
 nCYv548Aeftt8PGiQeZFGTWCVvH9kFNroKJ0loXEjfzJxmEkN6/y5G/Kt w==;
X-CSE-ConnectionGUID: dPqUFwMHQBW27hBuFO/duA==
X-CSE-MsgGUID: EEL8QaRbR3ai+jrfSvOQjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="77304993"
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="77304993"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 05:02:02 -0700
X-CSE-ConnectionGUID: fAm/9s+OQ1O1z5XdJfhw7Q==
X-CSE-MsgGUID: 6WYVyFVVSG6erTIQYo3ehg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="225210606"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 05:02:02 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 05:02:01 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 20 Apr 2026 05:02:01 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.60) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 05:02:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BT9pYhILUtCXLVb9i4CqEl6JOFyvAWr8y8/eQi+X5oNwSvk/WkpnN45BUEoIw9P6j3b3igEFDHgudZEnEkztGKbHBSxqiLFJgmyVLm7z+gJDX07a2lxVNHEtE/0DfydvdUFLs1PjEQiE6GMVs6EMrueqYvXb8Utj0b0LkfxT5JwZON18F3uO7uvkPWczcK1Eygdv4PsY0x8f41ATibP9P9wn09vxZgKea9yullIjyGQmk5CTG0Qfqnd/fkjEqtRg2qjBSaiXwK84A6RbyUZoBSbuKj0OUhQcS34Gpj7nku6UN1PjLwXeO0D0NT24QbclfZCi+QNSuvfNG+DYcD6ehg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QOG/NUup41nniR7szWe5u0AXZztCvhwRnUUkFqr+OQI=;
 b=J3hWr0VcCzYAADpM7TbfX5DmAJ8xuP2sQqiTw9ULXcbEAitlI3E75FrcscrMmkNfTJFyc2llwvTt7jDJFO1eC3DgmN9y0QaP9ddArS8/jI4brz8fuJw/t5QUYZzotUMGJlXPHcE/h2wgpIl48bySSaYsrB2XXADaOhuffB1LcmOkcYp6rCChdmkd3EKWV0mUZmyBwCCDEppBFelrOQHv0dyQaFeygZ7UbOCG5YtHZPI1EgWgIEgh4t03gm7SUeshk1jM0FdEquueCbm3eaVwrU+H9rVSgwwVK425/cO4t8V8iZuiJ5vQSEhAsWfJb1nZlqf6RP/K9Ie5o1pJyo5epw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by CY5PR11MB6391.namprd11.prod.outlook.com (2603:10b6:930:38::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.15; Mon, 20 Apr
 2026 12:01:59 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9846.007; Mon, 20 Apr 2026
 12:01:59 +0000
Message-ID: <acdc932b-db27-410b-8e80-4dd090f35270@intel.com>
Date: Mon, 20 Apr 2026 17:31:51 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/19] drm/i915/display: Remove TGL DC3CO support
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-2-dibin.moolakadan.subrahmanian@intel.com>
 <DM4PR11MB63605DB556EE3AD45279CE7DF4242@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DM4PR11MB63605DB556EE3AD45279CE7DF4242@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0123.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a7::13) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|CY5PR11MB6391:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a190d4a-0441-4a61-bb72-08de9ed4a00d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: SeYu0gSMm6GVRMaHFZCrCcG34BZXAOXiAqLmxUHS+vt/XUKnUhn/OGOcH3llDjVjqJWq9mO8ez6KtPPjAobTyqkF6Rt/Hbg5Qvbh8PLlDSkZMkJ8vVf+DT3xVNu51X51Way1vqC+a04ssaIBpIjJuaUbdoANJv82izxdRlv1Xc+zfEhAw4Jf6jH6AdllXzr3ympqfaXfHnkLhXxVPF5kVR3+SFx7AanGvaWzlhWn3Z5VL8miy6E7+jTUw274MyF5qJShuORIJhsEAMhShiGeZnYQvG55n5ANGC91ulQX27MRkZm2XZLm+NG0Fkt9UgLZCQhj3PsT08Z9zbjSmDtqz4JWbelxYabKCCEeV1k5Ji4NH2tBkMVPH3zXHFi7OQNJKXxRxi2z8EqbO2kxO2/zpsEsiE87BUMLAIjG0XVPm8oDMki+1BGd0KXY+Qx6CW1kiNIHlg/G/nVVIqkmLS8GbxfVTK7Dja9K+RJP25f3swSYdzxf5BK4vCHJoZk/rBi9cQqpUDTkVAb9JeEAwblBpJZVmIKPejH2o8UYMSscciV5+/uouU7AsrJmYcUW40JO8ZORgm3qweWuWCyH7u9wOBeW+VCCgvsVV5RGdnNNhLisLYenNjmm9MMyDy5bBWhE5KTltlWnlRxFQgRlvfSF4KM1n1WbkjJUZ15KfU/aoqQpkCdNsrrHjRbP3ewjsdJRm0FwHJmwDZ+JdSYL6Ab9qRTBPHgPnvFtS/TJHbN7GuA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TW4vRGNWaGxsV1gzU0g3elJ6R0lmMmo0Q3hMQW5rNmZjVVI0SHFUeVZNNzhq?=
 =?utf-8?B?SzFTVkQ2ekZMVXpiRy9jdXZyd2tYVGtuQ0VQek5LMGJFL1pyVnpWQXRQMG5Y?=
 =?utf-8?B?NHZhQWxNT0w3c0dlU1RVaWdWdlFPWVdmVDc4ME5YMlNVQVNWOVo0Ry96MWtq?=
 =?utf-8?B?SDY3bXRrSnFBQ2ZOdmZNRWJ3SVFlcnZFbWxVcDFaOEwybGpwU3BKSHRWUFdW?=
 =?utf-8?B?TS93VUJ0Ui9lQ25aZit4TW5CUERabHo2cVJUQUl1YWdDR2YxSVlwNVBqTjM5?=
 =?utf-8?B?Z3hJZW1YOE05M0svazZ4RFdWOVhNZncxN3ZjWVVPNzgzL2xKbk54bG9pYXBh?=
 =?utf-8?B?UG9rT1ZBVytIV1pmc1VHUFM3Smpxem0wSHFYVDFLSlJybjhycXRzQzFFdFc0?=
 =?utf-8?B?TTN6azRUQUR6RnFkbmQ3dVpiY1REdVpscHZ3dEdGL0l0SERuT0hUOU1oRVM5?=
 =?utf-8?B?QkRKaW1tVWo0V3VqWEtIQzFFZUJnbDd6OFJKSkNPODllVy95RXpySjZ1dm53?=
 =?utf-8?B?NTlaVXFkdEx2bFF0eDF3RFJNRk1pbG5SZE5sbFRrQjN4WXRpQzBvL0FuRGRV?=
 =?utf-8?B?QzdRR2V4cmRBcU04bU1UZ3VKMW44UHR5UFh5eWszbFJGOGJxOEhoL0phenp6?=
 =?utf-8?B?THhvZ0N5ZksrZ3BrTEdsTnRtVDNtSmlsSUgxNldKZ1ZuOHZJdDUyRGZ1OHdP?=
 =?utf-8?B?QjlXd1owTFRqd2JpTVlPUnhLMmNGaGtpV0ZmNXhrMzRhdThDcVdiZVJPamlR?=
 =?utf-8?B?MEl3M2lmK3hoWURDOUpOcjdKQ0pZcENoMDRLZC9oYWwxTUdFNVM1MEt1WnIy?=
 =?utf-8?B?NmlMeW9wd1NLZG45dGFpbytpQ1R1dUF0ZElWdWc3QklFQWN1UjR0SVNOOUpZ?=
 =?utf-8?B?MkZPSVgvaTZaQUVyVWgwUEdreVRWYUhXMFR6WTRzTm9ray8xWlpudFZtZDlx?=
 =?utf-8?B?MDhwQ2dLQTVNNTY0d1ZqRzNkYi9CYWhzenNRdFN2WXZycXJrVUJXRmVVTXB3?=
 =?utf-8?B?aVg1OHBKeVhiWkYva3hYRDVzRUQ3MUJnWWZLQjgvUDBuS29GTkViaUswNzRK?=
 =?utf-8?B?TXFINWtkMEgwK1Z2VldwZDJqdkU5dHBQbEdaZ3NNWTlZcEYwNVJiQk5NOFVK?=
 =?utf-8?B?NEx3Qnplcm1vWFRYSzhybTcyazFIQ0ZHcWxLY2xrTE1sbXZRdmdNZk1USkFZ?=
 =?utf-8?B?SzVyVVRiKzQrWkdsblpWZ1BDSWM2VWFaeENuNzRHL05jQ05xb1VlTGN1bVh4?=
 =?utf-8?B?OEova3JHbmlBQk8vVmpSR3VZcVVycnRoN0hTRGp2aUZPOGh5QmViam4yRUZW?=
 =?utf-8?B?UkhEbmlRMHIwRWk2dHl4emF5c1IrMzIxaGowd1FSUWxqMHBYaXJsODk0dHFV?=
 =?utf-8?B?dTR2TW5MdWpKR1cyWTB1TkdGc0FGNXp5ZVlXK1VDeGdMcjlpWE9ZdVM5KzlM?=
 =?utf-8?B?YXJGQUJ4K1dRTUFna20xelVuMm1tUFkySDBCM01lUHVOYUswS3dnV0xSeVlv?=
 =?utf-8?B?UEdIcXp1WVUrNnd0TDhDTXAyUmk3TUtzSG5HQUlSODV2aFFLTWs2MTArRnc2?=
 =?utf-8?B?WGdmd2VMb0VLb0dBbkFxcVlUaUVaVGU0NGROcGhjRjMveXgrZlRRWU43YnhN?=
 =?utf-8?B?d3N5WWFMdjZ0QWxyUXMwZ1l3TXJLQ2ZLUFpweWRvdGtkUnl1Rjd4VjZSUHh6?=
 =?utf-8?B?aUNHaHJmWkFmeUI3MXhEa3MrODhvTlA4U2tMQmZWaVBZZ3BxSkpZUVVTc0k5?=
 =?utf-8?B?b0JjNUVOeUJhWG05RnlIY0RScllxLzJBNHJJQXpuQjR2cFM5bmF6MUo0cURh?=
 =?utf-8?B?MDFKRXNHYm9FWFl5TkcxNy9BenV1dTlYWlpwcTJ0RGxFVXluZkZIRWRjMW1h?=
 =?utf-8?B?Q2pxbTVRbUJlZklRVEVTS0t3K21COWQvOWpaNVMyUjFVT0JjcEFLV1NGWkUv?=
 =?utf-8?B?TGs5NXo2MEVhL0RBQTNEUzNQWGFHU1RSUUt2UTY4U0hrSDh2REpJb1VHenhx?=
 =?utf-8?B?YWZuREdCbnpoaHBrN1l5K2JjQnI1blVKeCt0QnRCSHVXUldaNkVEWFp0a01p?=
 =?utf-8?B?MTZqS3RJS1NLdzRLb2pOS2NwcEkyMmliemE0WFQzNUgwRUpaZ2RhZHFvMXUw?=
 =?utf-8?B?aGpDSjJTODN4WStFbm52TDJiemZIQmxOeVVoZDBPYmlYaE5uZXdCZGVNc1Jl?=
 =?utf-8?B?VEEydUFmUmFDU0tJdCt6eXRmOTV4V3pKYURWMVJMamsyeUZZVEF0aXZjT3FV?=
 =?utf-8?B?MU1ZU2U5azIwK1Y1R2MrVTlpTm5mdjFtbkd4M0FMNGxIUUJPcHBYQmZVTXpm?=
 =?utf-8?B?aStYRDc0NlBqSlV3MXVuaVljZVVZQVFyRjkzV0Q2LzNuK2E4MytPZjVYUkJy?=
 =?utf-8?Q?xsIwJ+QV9FH7eUXNKa9IuMNveq/TxNGJhthrpfrZbXUl+?=
X-MS-Exchange-AntiSpam-MessageData-1: X7yCTYLWxpRCZw==
X-Exchange-RoutingPolicyChecked: A90G51SyWvy8Qh1acsRD3cKXNcuCp65HzffHXMnW/fLZeqWZPC2abK1tXuGqrznx3/q/mNs+dZwU5JrhV3Q2xwEWzM8aEFaSLiUwUNRutzZ0aADGfVq4NQjCIDJL+YnyGGsQbPYE+i2g1GR75Us9UUBYuY7VQDw3GauiVXdOq6Imi+8mgOMq4lPqr6yaWBleiHXmFQEfKfKJkn/W911GuSZavqUoQd74uCCSax7SgcQXtnkoVtYfmIog2GK5lvDrAJ/GG6BP6SvLUIsVw30uBcMF2I8h6uZfc+AQSH80I/sqLXvRCRWhvZtswyrCrhn4WofJTgnTPSlVmuNx/L49Cw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a190d4a-0441-4a61-bb72-08de9ed4a00d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2026 12:01:59.3505 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SniaJYAXflNz0wYK1Kca3irFYBGZWOCabLx8WFibJVPAsUmd3tJCkYWgH4nnSOwMkRzgBljZ3WPKateDciwWlN2sHdEhxU8pB/E1tPjUjafAFJXvxpoO0GWovKvb6mlX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6391
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RSPAMD_URIBL_FAIL(0.00)[dc3co_work.work:query timed out,lists.freedesktop.org:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,dc3co_work.work:url,intel.com:email,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RSPAMD_EMAILBL_FAIL(0.00)[intel-gfx.lists.freedesktop.org:query timed out];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 37E5842A606
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 14-04-2026 02:10, Shankar, Uma wrote:
>
>> -----Original Message-----
>> From: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Sent: Thursday, March 26, 2026 10:46 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
>> <suresh.kumar.kurmi@intel.com>
>> Subject: [PATCH 01/19] drm/i915/display: Remove TGL DC3CO support
>>
>> Remove all Tiger Lake DC3CO-related functions, as the feature is not enabled and
>> not used. The existing structure members are intentionally left in place and will be
>> cleaned up in subsequent patches.
>>
>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   .../i915/display/intel_display_power_well.c   |  25 ---
>>   .../drm/i915/display/intel_display_types.h    |   1 -
>>   drivers/gpu/drm/i915/display/intel_psr.c      | 163 ------------------
>>   3 files changed, 189 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> index f855f0f88694..6d5f07f7f590 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> @@ -867,23 +867,6 @@ void gen9_set_dc_state(struct intel_display *display,
>> u32 state)
>>   	power_domains->dc_state = val & mask;
>>   }
>>
>> -static void tgl_enable_dc3co(struct intel_display *display) -{
>> -	drm_dbg_kms(display->drm, "Enabling DC3CO\n");
>> -	gen9_set_dc_state(display, DC_STATE_EN_DC3CO);
>> -}
>> -
>> -static void tgl_disable_dc3co(struct intel_display *display) -{
>> -	drm_dbg_kms(display->drm, "Disabling DC3CO\n");
>> -	intel_de_rmw(display, DC_STATE_EN, DC_STATE_DC3CO_STATUS, 0);
>> -	gen9_set_dc_state(display, DC_STATE_DISABLE);
>> -	/*
>> -	 * Delay of 200us DC3CO Exit time B.Spec 49196
>> -	 */
>> -	usleep_range(200, 210);
>> -}
>> -
>>   static void assert_can_enable_dc5(struct intel_display *display)  {
>>   	enum i915_power_well_id high_pg;
>> @@ -1062,11 +1045,6 @@ void gen9_disable_dc_states(struct intel_display
>> *display)
>>   	struct intel_cdclk_config cdclk_config = {};
>>   	u32 old_state = power_domains->dc_state;
>>
>> -	if (power_domains->target_dc_state == DC_STATE_EN_DC3CO) {
>> -		tgl_disable_dc3co(display);
>> -		return;
>> -	}
>> -
>>   	if (HAS_DISPLAY(display)) {
>>   		intel_dmc_wl_get_noreg(display);
>>   		gen9_set_dc_state(display, DC_STATE_DISABLE); @@ -1115,9
>> +1093,6 @@ static void gen9_dc_off_power_well_disable(struct intel_display
>> *display,
>>   		return;
>>
>>   	switch (power_domains->target_dc_state) {
>> -	case DC_STATE_EN_DC3CO:
>> -		tgl_enable_dc3co(display);
>> -		break;
>>   	case DC_STATE_EN_UPTO_DC6:
>>   		skl_enable_dc6(display);
>>   		break;
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index b4c3d8537a99..6830f911d94d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1784,7 +1784,6 @@ struct intel_psr {
>>   	bool panel_replay_enabled;
>>   	u32 dc3co_exitline;
>>   	u32 dc3co_exit_delay;
>> -	struct delayed_work dc3co_work;
>>   	u8 entry_setup_frames;
>>
>>   	u8 io_wake_lines;
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>> b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 5041a5a138d1..29900576e117 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -85,22 +85,6 @@
>>    * issues the self-refresh re-enable code is done from a work queue, which
>>    * must be correctly synchronized/cancelled when shutting down the pipe."
>>    *
>> - * DC3CO (DC3 clock off)
>> - *
>> - * On top of PSR2, GEN12 adds a intermediate power savings state that turns
>> - * clock off automatically during PSR2 idle state.
>> - * The smaller overhead of DC3co entry/exit vs. the overhead of PSR2 deep
>> sleep
>> - * entry/exit allows the HW to enter a low-power state even when page flipping
>> - * periodically (for instance a 30fps video playback scenario).
>> - *
>> - * Every time a flips occurs PSR2 will get out of deep sleep state(if it was),
>> - * so DC3CO is enabled and tgl_dc3co_disable_work is schedule to run after 6
>> - * frames, if no other flip occurs and the function above is executed, DC3CO is
>> - * disabled and PSR2 is configured to enter deep sleep, resetting again in case
>> - * of another flip.
>> - * Front buffer modifications do not trigger DC3CO activation on purpose as it
>> - * would bring a lot of complexity and most of the moderns systems will only
>> - * use page flips.
>>    */
>>
>>   /*
>> @@ -1178,108 +1162,6 @@ static void psr2_program_idle_frames(struct intel_dp
>> *intel_dp,
>>   		     EDP_PSR2_IDLE_FRAMES(idle_frames));
>>   }
>>
>> -static void tgl_psr2_enable_dc3co(struct intel_dp *intel_dp) -{
>> -	struct intel_display *display = to_intel_display(intel_dp);
>> -
>> -	psr2_program_idle_frames(intel_dp, 0);
>> -	intel_display_power_set_target_dc_state(display,
>> DC_STATE_EN_DC3CO);
>> -}
>> -
>> -static void tgl_psr2_disable_dc3co(struct intel_dp *intel_dp) -{
>> -	struct intel_display *display = to_intel_display(intel_dp);
>> -
>> -	intel_display_power_set_target_dc_state(display,
>> DC_STATE_EN_UPTO_DC6);
>> -	psr2_program_idle_frames(intel_dp, psr_compute_idle_frames(intel_dp));
>> -}
>> -
>> -static void tgl_dc3co_disable_work(struct work_struct *work) -{
>> -	struct intel_dp *intel_dp =
>> -		container_of(work, typeof(*intel_dp), psr.dc3co_work.work);
>> -
>> -	mutex_lock(&intel_dp->psr.lock);
>> -	/* If delayed work is pending, it is not idle */
>> -	if (delayed_work_pending(&intel_dp->psr.dc3co_work))
>> -		goto unlock;
>> -
>> -	tgl_psr2_disable_dc3co(intel_dp);
>> -unlock:
>> -	mutex_unlock(&intel_dp->psr.lock);
>> -}
>> -
>> -static void tgl_disallow_dc3co_on_psr2_exit(struct intel_dp *intel_dp) -{
>> -	if (!intel_dp->psr.dc3co_exitline)
>> -		return;
>> -
>> -	cancel_delayed_work(&intel_dp->psr.dc3co_work);
>> -	/* Before PSR2 exit disallow dc3co*/
>> -	tgl_psr2_disable_dc3co(intel_dp);
>> -}
>> -
>> -static bool
>> -dc3co_is_pipe_port_compatible(struct intel_dp *intel_dp,
>> -			      struct intel_crtc_state *crtc_state)
>> -{
>> -	struct intel_display *display = to_intel_display(intel_dp);
>> -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> -	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
>> -	enum port port = dig_port->base.port;
>> -
>> -	if (display->platform.alderlake_p || DISPLAY_VER(display) >= 14)
>> -		return pipe <= PIPE_B && port <= PORT_B;
>> -	else
>> -		return pipe == PIPE_A && port == PORT_A;
>> -}
>> -
>> -static void
>> -tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
>> -				  struct intel_crtc_state *crtc_state)
>> -{
>> -	struct intel_display *display = to_intel_display(intel_dp);
>> -	const u32 crtc_vdisplay = crtc_state->uapi.adjusted_mode.crtc_vdisplay;
>> -	struct i915_power_domains *power_domains = &display->power.domains;
>> -	u32 exit_scanlines;
>> -
>> -	/*
>> -	 * FIXME: Due to the changed sequence of activating/deactivating
>> DC3CO,
>> -	 * disable DC3CO until the changed dc3co activating/deactivating
>> sequence
>> -	 * is applied. B.Specs:49196
>> -	 */
>> -	return;
>> -
>> -	/*
>> -	 * DMC's DC3CO exit mechanism has an issue with Selective Fecth
>> -	 * TODO: when the issue is addressed, this restriction should be removed.
>> -	 */
>> -	if (crtc_state->enable_psr2_sel_fetch)
>> -		return;
>> -
>> -	if (!(power_domains->allowed_dc_mask & DC_STATE_EN_DC3CO))
>> -		return;
>> -
>> -	if (!dc3co_is_pipe_port_compatible(intel_dp, crtc_state))
>> -		return;
>> -
>> -	/* Wa_16011303918:adl-p */
>> -	if (intel_display_wa(display, INTEL_DISPLAY_WA_16011303918))
>> -		return;
>> -
>> -	/*
>> -	 * DC3CO Exit time 200us B.Spec 49196
>> -	 * PSR2 transcoder Early Exit scanlines = ROUNDUP(200 / line time) + 1
>> -	 */
>> -	exit_scanlines =
>> -		intel_usecs_to_scanlines(&crtc_state->uapi.adjusted_mode, 200)
>> + 1;
>> -
>> -	if (drm_WARN_ON(display->drm, exit_scanlines > crtc_vdisplay))
>> -		return;
>> -
>> -	crtc_state->dc3co_exitline = crtc_vdisplay - exit_scanlines;
>> -}
>> -
>>   static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
>>   					      struct intel_crtc_state *crtc_state)  {
>> @@ -1622,8 +1504,6 @@ static bool intel_psr2_config_valid(struct intel_dp
>> *intel_dp,
>>   		return false;
>>   	}
>>
>> -	tgl_dc3co_exitline_compute_config(intel_dp, crtc_state);
>> -
>>   	return true;
>>   }
>>
>> @@ -2071,16 +1951,6 @@ static void intel_psr_enable_source(struct intel_dp
>> *intel_dp,
>>
>>   	psr_irq_control(intel_dp);
>>
>> -	/*
>> -	 * TODO: if future platforms supports DC3CO in more than one
>> -	 * transcoder, EXITLINE will need to be unset when disabling PSR
>> -	 */
>> -	if (intel_dp->psr.dc3co_exitline)
>> -		intel_de_rmw(display,
>> -			     TRANS_EXITLINE(display, cpu_transcoder),
>> -			     EXITLINE_MASK,
>> -			     intel_dp->psr.dc3co_exitline << EXITLINE_SHIFT |
>> EXITLINE_ENABLE);
>> -
>>   	if (HAS_PSR_HW_TRACKING(display) &&
>> HAS_PSR2_SEL_FETCH(display))
>>   		intel_de_rmw(display, CHICKEN_PAR1_1,
>> IGNORE_PSR2_HW_TRACKING,
>>   			     intel_dp->psr.psr2_sel_fetch_enabled ?
>> @@ -2258,7 +2128,6 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
>>   		intel_de_rmw(display, TRANS_DP2_CTL(intel_dp-
>>> psr.transcoder),
>>   			     TRANS_DP2_PANEL_REPLAY_ENABLE, 0);
>>   	} else if (intel_dp->psr.sel_update_enabled) {
>> -		tgl_disallow_dc3co_on_psr2_exit(intel_dp);
>>
> Nit: This leaves a blank line
>
> With above fixed, this is
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

I will remove the blank line.

>
>>   		val = intel_de_rmw(display,
>>   				   EDP_PSR2_CTL(display, cpu_transcoder), @@
>> -2401,7 +2270,6 @@ void intel_psr_disable(struct intel_dp *intel_dp,
>>
>>   	mutex_unlock(&intel_dp->psr.lock);
>>   	cancel_work_sync(&intel_dp->psr.work);
>> -	cancel_delayed_work_sync(&intel_dp->psr.dc3co_work);
>>   }
>>
>>   /**
>> @@ -2432,7 +2300,6 @@ void intel_psr_pause(struct intel_dp *intel_dp)
>>   	mutex_unlock(&psr->lock);
>>
>>   	cancel_work_sync(&psr->work);
>> -	cancel_delayed_work_sync(&psr->dc3co_work);
>>   }
>>
>>   /**
>> @@ -3568,34 +3435,6 @@ void intel_psr_invalidate(struct intel_display *display,
>>   		mutex_unlock(&intel_dp->psr.lock);
>>   	}
>>   }
>> -/*
>> - * When we will be completely rely on PSR2 S/W tracking in future,
>> - * intel_psr_flush() will invalidate and flush the PSR for ORIGIN_FLIP
>> - * event also therefore tgl_dc3co_flush_locked() require to be changed
>> - * accordingly in future.
>> - */
>> -static void
>> -tgl_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
>> -		       enum fb_op_origin origin)
>> -{
>> -	struct intel_display *display = to_intel_display(intel_dp);
>> -
>> -	if (!intel_dp->psr.dc3co_exitline || !intel_dp->psr.sel_update_enabled ||
>> -	    !intel_dp->psr.active)
>> -		return;
>> -
>> -	/*
>> -	 * At every frontbuffer flush flip event modified delay of delayed work,
>> -	 * when delayed work schedules that means display has been idle.
>> -	 */
>> -	if (!(frontbuffer_bits &
>> -	    INTEL_FRONTBUFFER_ALL_MASK(intel_dp->psr.pipe)))
>> -		return;
>> -
>> -	tgl_psr2_enable_dc3co(intel_dp);
>> -	mod_delayed_work(display->wq.unordered, &intel_dp->psr.dc3co_work,
>> -			 intel_dp->psr.dc3co_exit_delay);
>> -}
>>
>>   static void _psr_flush_handle(struct intel_dp *intel_dp)  { @@ -3682,7 +3521,6
>> @@ void intel_psr_flush(struct intel_display *display,
>>   		if (origin == ORIGIN_FLIP ||
>>   		    (origin == ORIGIN_CURSOR_UPDATE &&
>>   		     !intel_dp->psr.psr2_sel_fetch_enabled)) {
>> -			tgl_dc3co_flush_locked(intel_dp, frontbuffer_bits, origin);
>>   			goto unlock;
>>   		}
>>
>> @@ -3741,7 +3579,6 @@ void intel_psr_init(struct intel_dp *intel_dp)
>>   		intel_dp->psr.link_standby = connector->panel.vbt.psr.full_link;
>>
>>   	INIT_WORK(&intel_dp->psr.work, intel_psr_work);
>> -	INIT_DELAYED_WORK(&intel_dp->psr.dc3co_work,
>> tgl_dc3co_disable_work);
>>   	mutex_init(&intel_dp->psr.lock);
>>   }
>>
>> --
>> 2.43.0
