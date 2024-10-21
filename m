Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 705E09A690B
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 14:49:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16B3A10E4D5;
	Mon, 21 Oct 2024 12:49:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RpTq6Rev";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2BD710E4E3;
 Mon, 21 Oct 2024 12:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729514981; x=1761050981;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=uRpcpOVdRIOjqRRxbEbCzceVPb/scrpNzSGr3hCfmks=;
 b=RpTq6RevAoT4SW36Yezk37eX4e/wCrAvHzs6qkKCEOWieL1jeuVOjdvw
 zswGnTXT7HOEmePivFylVgXXZT2mRQ0s7BgiRjqFNORTdOeFiKf39ik7k
 wUpbYhLZvklymfEMUYJYe8Q97qcrTtr2/GQvSWPMefN/vFB9LGXSdEZHD
 YH6QZrX1kMXHONp2kZbcH0EUBC6cAyln/fj8koIIkfHsFLv1PKGUAc8kK
 b0abl8GYFdUhZgOuXKy2I15RH/+DYedtZ9AHHl7HALcZhcXBEbihhmmdz
 Xd0RessZZDreaWBuoAxTmxUwbvrkxfEZAmW3pfMX81q5bPpHBKPLmKJUL Q==;
X-CSE-ConnectionGUID: OVRR2YhsRVecB8ta8DIZPQ==
X-CSE-MsgGUID: 3yOAEpVDSMi8dQ9cQPiTLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40121358"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40121358"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:49:40 -0700
X-CSE-ConnectionGUID: 3jSnZqExTUG7uhUzyi9d3A==
X-CSE-MsgGUID: 0PMa7m8bQFeeZq7lCNi2Gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="79921389"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Oct 2024 05:49:39 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 21 Oct 2024 05:49:39 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 21 Oct 2024 05:49:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 21 Oct 2024 05:49:38 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 21 Oct 2024 05:49:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iUMvUkaoO0o1Gm09SrzTYurwvAN/6a6DqZ+/sIdi5op5s10a6JX8QgC2N7/rUESbWC6jJW80j/lwE1NPYThWMk53JvGmG4FFgGl9YXur7HEAcRRtpMzYF5NIU+sjLfRIyzE6Pif5upbZfpuNWNgUop40oIKK6qYqmVqQlyNBaCBp/6wNhNWr4YmHnnHvyLVB3QEP2imsTN2ZVOQ6m7x2Z+g2iOL9oZKd+CgyqEDMwqnJxE/mdiVn3VUVokrgx6QENCzQJG15jrX9mAxcOpRTIQzLmP8Z6+uTRal4/WK40l7NMhQWQMZXs52eHnKGswykRp4apk7knhyt1p3F3KGKtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J+LITJS8AoHva21c0sgSzb0w1tT1Z2iPb2yBWhQ4dqU=;
 b=YgMFBgQkzlueapXcqsHeX56JODkTRhDjAmDp8YKJvazqiLKUgkO9eyTIoWVKf6CeTNiMKLSDsTQww4RbdAIMmybQ4rpVquM+n52D/cymCaxyMxQBj/h7AIS1XiQviyvUnX7cMoy+k2HEYvDHDWfBidpuTw1//Bm3rv4dp5XDVmqIb9Ftfgu6auYiNcsJJCPQX6JVBy8OzMpWUe+gLi9jaaJzOgMFW99+m0+quO7OkF6XooSEecQ73sxB0e4r+aEeifXjTIJq5ko0TB/L7kXhIj77pcOO0lRZkr9XTPaekGJqb+IbjWmTUaZZvRYnAq+/SXMbHyKoYIXa1Pf47AaBpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB7870.namprd11.prod.outlook.com (2603:10b6:208:3f8::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.27; Mon, 21 Oct
 2024 12:49:35 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8069.027; Mon, 21 Oct 2024
 12:49:35 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241018200311.67324-3-matthew.s.atwood@intel.com>
References: <20241018200311.67324-1-matthew.s.atwood@intel.com>
 <20241018200311.67324-3-matthew.s.atwood@intel.com>
Subject: Re: [PATCH v4 2/7] drm/i915/xe3lpd: Add cdclk changes
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Radhakrishna Sripada <radhakrishna.sripada@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Mon, 21 Oct 2024 09:49:29 -0300
Message-ID: <172951496999.2472.6275666105536178497@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0376.namprd04.prod.outlook.com
 (2603:10b6:303:81::21) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB7870:EE_
X-MS-Office365-Filtering-Correlation-Id: 525ffd4f-6772-4af8-2a94-08dcf1ced10e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QVRLVWpxd3VuMmNYOHdNVzdRQ3hxaGJpdjhDMy9FZ1BNY1ZpTGZpY3A1VERM?=
 =?utf-8?B?citHdlpMVVhweDVLSlVyRWFpL1F3SUdrRGdFdUgwenRqWThQSjBQdEtidVkr?=
 =?utf-8?B?cHFTWVRTMnpOSEVVdjZob21wdVBydHZRNXJOUzV6VTRBMU83L045UW1RVzlB?=
 =?utf-8?B?RGZPRjZXL3A1TnV2Vm9NQURLOHVaT2o0Y3V0d0FMM0xsZlphUlRnQjZYbEkx?=
 =?utf-8?B?N05ZV3VTbjlhRmtmQU1lK2c0cDBmM1ZxNnZUTU5oVjB4bUVoZGwwanpMMW1L?=
 =?utf-8?B?SW9wWElWcG53Zld6a05mSW1GTkFRSng4bWdFbHVPWnZPcGprQmJQbExWdXAw?=
 =?utf-8?B?dW9Ga1VJdVQyZmIrM3BZTWVsWHJTcnNjT28zWkw3TTZuT3lmQkZXdmdBZm8z?=
 =?utf-8?B?YXRwMG53V01sT1JSRzhQRk54Z05WM24wcjNtck51dHdMS29XMXVtOGx0aHYy?=
 =?utf-8?B?cjh4L0ltQWdJVkR3RjdDbDlIVlhueUh1UGVzQXljanZteEZ2U1lBNEkxMllu?=
 =?utf-8?B?bStqcDNnNno0ZllQa3VOR3l5RGd0bE9icjJJV1VUTVN1aFlmSWszRGJrVGtN?=
 =?utf-8?B?SUxJbjBVVisrQTN5S1Zkc3V0d2NLRjdMUW9JU1VJc0xoeUh6dW9qVXhRMjdR?=
 =?utf-8?B?dzR4T1RLM1dEK3EwcEtLdDRnY0FxUkdoQ3RaOEdIMHVBRzlYeU1lM2g4YnVk?=
 =?utf-8?B?YjhtbTlkSGpyYkZIYis1Kzh6SHlDYUdISVl1bWNueTJCOTgrZ056OGRhUGtn?=
 =?utf-8?B?VGdaelBBblZKL04wcVBscDBaUnpPcXV4YldoeU5rWnVOU2JQUStQOVErZU1v?=
 =?utf-8?B?T0hKRnJVQXhnenFYVkJVYlArdURmRXFFeXAxVnlzZTRjQWVPM3RvQm1Da3Ja?=
 =?utf-8?B?QU81TitZWHFxWllzM29WclVQci9PR3FNVzByN1pDT2lsU3M1eThpVm1Zbm81?=
 =?utf-8?B?RGRYK2Fyb2JIZlEzK1duaG42S1ExTmY4VEp4bkFtbDZxRVRWeGIzRUVhdCtN?=
 =?utf-8?B?WlR3VHVkajA0VFdGRUdNSHRwNUJ4bUM3d2R6ejhwQXY5eEtQR3YwZ0UyVXVq?=
 =?utf-8?B?aXlPYXV0cWlzTXAwY2hkSjlWMCtEdGdsUjRMTTN2TEhqUWNPNHpVWkJEakd3?=
 =?utf-8?B?dG1nMzBnTExZM1VUTWp3M0NRdExMVlltelMxbmNERDQrVVdFalM0cE80NVo1?=
 =?utf-8?B?QVVtUG8yUXhVUVpGaVZwdTY4ZWNKTVhZRnhkZitUN0JGN1Z6RUFkNXNrWWZs?=
 =?utf-8?B?bFE0bXRCd0laN2xxdEU1WG5Nd0FnWktXT2xtYXBMN3RKZm16bHBHeG10T0JO?=
 =?utf-8?B?akU2a1UvclZTRml6WGZobVRUQmcxZXlpMnFuYUxBU1B4eUJkcndqZWhsVXlk?=
 =?utf-8?B?c29PZHRPZDBRanROd2xUVTBTdUFTY0V0Tmw1a25WOC9wK3NtMVcvTzJuY2hX?=
 =?utf-8?B?ODhsN3c2TjBEZGdvN09BYWtZY1h0aGZoS2hqWnoxc0JJcW9sWnBickswcTRD?=
 =?utf-8?B?eWRld1ZQVmtKS1BYYXFIcUNTaHBKcE9OQXhHWHkvOTNRdDJ5MmdDaUhPanJD?=
 =?utf-8?B?T2Mwbk8wQW9KcGJkNDR2VzJKaDFvSzBEY3RpNmdHVU5JM0NXZzlzbFNFeGJG?=
 =?utf-8?B?YktQcGk3b1llRTJMMlJGUnptZnF2OWRLNkY5L0V2bWx4NUltZWtaTXBjbk9a?=
 =?utf-8?B?V1dMKzc1UjhBSnFnbWFXR3kwYmRrVktQSWEyMjY4RUtIbm5jZmdmaUxwcHVL?=
 =?utf-8?Q?bqhb7iElpZ+yuyvwgHCQ/k4eGHLbCNeE6R4GhA9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NlJ3alV0L0lKZm5MNHN2Y2ZzUmF6dnNZUWEyT1grbG9HMTUzRFhIeGJNVkF2?=
 =?utf-8?B?ZDlpbXlWdVA4NXVzYWU5d3hrdzF6OVNNQWZoei9yc1FTMkVqNmNKN1FYUW11?=
 =?utf-8?B?RWt1MFUwb01DNDUrVGk0YSs3Ulc2WVduWVRaOVU2TjF2VGVJYWhaRTNpVEh2?=
 =?utf-8?B?TXZWZUNlNE0wK2NEWkpIdWZuck52bkdEMVFQV29mRmI4dUlWYmczaXN2R3Zl?=
 =?utf-8?B?STZsbzZ4VkoydjRLSFF2MzAvL3ZWV3ltemhtRC9UcHErbytjb0F3TUwreEMr?=
 =?utf-8?B?UDVKWjdlZVRqZFBCVGVkaHhpVU1xbjd6c1Z1SjVYdHhoa05ZQkJybitzcjNq?=
 =?utf-8?B?ZEgxRHpMZkVacnFDMG0vbkZKL29nZ1c3MTkrNmJkcW1tUURaTGkwZVcyYWhs?=
 =?utf-8?B?cnhPY1ZaMlBkMzNkaXZpSHVNZUo0cUFiUDFqV1FFemNJSnlwamZITFRIRW5j?=
 =?utf-8?B?a0JlMGRFVlpaQmtzeGU1NzV6WVdYQ2pmQW03dlhEcllKMXlZbVArbCs2dVlX?=
 =?utf-8?B?aXJpaml0L1Z0eTFVNisyaWtXRllpY21FN0N3WVY3cjVlaE1yMGZOa2tDOWV2?=
 =?utf-8?B?VEk0dkhSYWpBQklVT09ScExzTG5wK3Zxd1VEaUprYUNQVzdhaU9WRWVPLzJ0?=
 =?utf-8?B?RHVVVFR5MktLbUZUTDk1aDB3ZmdXWkJCQmJTYjVuZm5nS0lxcUN3cEVxRFBi?=
 =?utf-8?B?T1VLZE5sZjVONmdHRFlhbGwzU1EvajJrME4wZnJGWFF1OFUwQlJsVHRaSVRX?=
 =?utf-8?B?T2tEYVlqNUpXSEM2bnVKQUR3emZEUEErZGNnTk5IK256R25ybG9qTTdDcDdr?=
 =?utf-8?B?WjkwUEFWNHlleGV6ejFkM0ZKUnU0ZXV6WEJxV0RpRWUyVmZoZW9EV2xabU5o?=
 =?utf-8?B?RGxFcm5xVmpJeGRGM3JiT293TjNSK1NGa0JoVFAveGdRT2lvTjBrMkdoZUFy?=
 =?utf-8?B?c0I0UW5HdWNJckM2YkhwZ08ydk4zdFJ1dU1jQnozRURaL29SQm9sdUlkU084?=
 =?utf-8?B?VldIckIzTXpoM2hoVEdyTE5qN01BRFFDbjZkN3JMN2NqKzN1WkJrZy9zeWM3?=
 =?utf-8?B?Rk9uRkdxbkVSYzhRS0FrcFFVS3AzbnhpbjZMNWFYZTdkODR6MGJ1QkpoM0l5?=
 =?utf-8?B?RFphYWZMbzVJVFF6U3RHYlI2c3k1SXg2RkJrZ0t0N2R5K1VtbGZRU2UxSmtG?=
 =?utf-8?B?NzBSWk5IWjc5MFVxSnkrRFVkU2g3ZS9SOU01M3UzNjFOUHJvRERPemh1V3lV?=
 =?utf-8?B?TnUyZHNoRDlFVm1RNnJLWUVVVE1yNlFtN0VvZWUrM0dIMHJwcVhuSUVGNzJR?=
 =?utf-8?B?b2FOdDJZemxIb3RhRjVVbFZ0a0ZFYUVYVVIyVm9LSG9WelovYUdIZk9nOHJq?=
 =?utf-8?B?aEVkNXB3bjZ4eWVSaURvZHVERzJrZlZyTWwyNVEwQWFFcU5WNDFJbHRYMTZk?=
 =?utf-8?B?cUN6aU1ZZE5WSDZDV1pkelFJbnBTcmY3OUV6ejFlSFVWSGc2MlFvM21oM0s0?=
 =?utf-8?B?Y0c2UWZ5QStNMEp1akcvayt5QWJ6NWpneGZEZGxJR09ST1BUNFhUVmJhVXBN?=
 =?utf-8?B?YnFuZVFsRnh4UTdKem4yTGRHd21TN3pPcVcremhONjZuUnVvYTJRZ1BTNnlp?=
 =?utf-8?B?a1hwTm82cy8xVjk3THBrNlhucTArMHY2WjZxV3RQMWsrUUF3bVpON3FidUw2?=
 =?utf-8?B?RkNITkZId2JuUnF2UkZ5WHZsY1Z5S21MZnpHTlp0L2JuN3VJUkt3Vm91a2xa?=
 =?utf-8?B?L2E2UEplZnI3NTBWY1VyVXdLelRwVi9BSFV3a3QzNzRzdzFSdG1EY3UyNlVn?=
 =?utf-8?B?YWo1LzhYdzNEaFFvQ21oQmNyS2dLYk4wN2xiZlV0TUlmWGorTzRtNVBxQ1pR?=
 =?utf-8?B?TVgrbThFSjhoUDRtUHdYNVNVU1IxcExYOTAycG9wT3NUSXJKMi9PYnRWa0FY?=
 =?utf-8?B?RTRLVkxRcWF0TVRqNzNtUTB2NkM2dW1uc0h3MGhac2wxbnRVU3ZSRHZLNkNK?=
 =?utf-8?B?ZkIrNVh2ckFKQWp3SHhuT0J4RTIyL3RwNGpxWHRlTjE0eU9kMkRidy9sbkY1?=
 =?utf-8?B?eTRSdHNmaDlZRVV3bHkxQ0w1VkR5LzMwek9Va05VUWZxMVZwQzViWnhHYlNN?=
 =?utf-8?B?YlgyaTFVSFh4S0dsbXA4ZmoxUit2RXRjRjhMTHZjNVJGbjVhLytpaWpvRUVq?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 525ffd4f-6772-4af8-2a94-08dcf1ced10e
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2024 12:49:35.4133 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xZlVUgKSkM37Fwhk6VPVSD7WP17Tr6obx857edghwHJwa4uPt0oIK8MQXbp5ZibUNM65uXNXxGhG7Efc4/75AQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7870
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

Quoting Matt Atwood (2024-10-18 17:03:06-03:00)
>From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>
>Xe3_LPD has new max cdclk of 691200 which requires reusing the lnl table
>and modify/add higher frequencies. Updating the max cdclk supported by
>the platform and voltage_level determination is also updated.
>
>There are minor changes in cdclk programming sequence compared to lnl,
>where programming cd2x divider needs to be skipped. This is already handle=
d
>by the calculations in existing code.
>
>v2: update tables
>v3: xe3lpd doesnt supply the power control unit the voltage index
>
>Bspec: 68861, 68863, 68864
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Re-adding my r-b[1] here:

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

[1] https://lore.kernel.org/all/172909183684.4147.5683276375084691858@gjsou=
sa-mobl2/

>---
> drivers/gpu/drm/i915/display/intel_cdclk.c | 59 +++++++++++++++++++++-
> 1 file changed, 57 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/=
i915/display/intel_cdclk.c
>index fa1c2012b10c..96523526a2c3 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -1468,6 +1468,39 @@ static const struct intel_cdclk_vals xe2hpd_cdclk_t=
able[] =3D {
>         {}
> };
>=20
>+static const struct intel_cdclk_vals xe3lpd_cdclk_table[] =3D {
>+        { .refclk =3D 38400, .cdclk =3D 153600, .ratio =3D 16, .waveform =
=3D 0xaaaa },
>+        { .refclk =3D 38400, .cdclk =3D 172800, .ratio =3D 16, .waveform =
=3D 0xad5a },
>+        { .refclk =3D 38400, .cdclk =3D 192000, .ratio =3D 16, .waveform =
=3D 0xb6b6 },
>+        { .refclk =3D 38400, .cdclk =3D 211200, .ratio =3D 16, .waveform =
=3D 0xdbb6 },
>+        { .refclk =3D 38400, .cdclk =3D 230400, .ratio =3D 16, .waveform =
=3D 0xeeee },
>+        { .refclk =3D 38400, .cdclk =3D 249600, .ratio =3D 16, .waveform =
=3D 0xf7de },
>+        { .refclk =3D 38400, .cdclk =3D 268800, .ratio =3D 16, .waveform =
=3D 0xfefe },
>+        { .refclk =3D 38400, .cdclk =3D 288000, .ratio =3D 16, .waveform =
=3D 0xfffe },
>+        { .refclk =3D 38400, .cdclk =3D 307200, .ratio =3D 16, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 326400, .ratio =3D 17, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 345600, .ratio =3D 18, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 364800, .ratio =3D 19, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 384000, .ratio =3D 20, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 403200, .ratio =3D 21, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 422400, .ratio =3D 22, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 441600, .ratio =3D 23, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 460800, .ratio =3D 24, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 480000, .ratio =3D 25, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 499200, .ratio =3D 26, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 518400, .ratio =3D 27, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 537600, .ratio =3D 28, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 556800, .ratio =3D 29, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 576000, .ratio =3D 30, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 595200, .ratio =3D 31, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 614400, .ratio =3D 32, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 633600, .ratio =3D 33, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 652800, .ratio =3D 34, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 672000, .ratio =3D 35, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 691200, .ratio =3D 36, .waveform =
=3D 0xffff },
>+        {}
>+};
>+
> static const int cdclk_squash_len =3D 16;
>=20
> static int cdclk_squash_divider(u16 waveform)
>@@ -1594,6 +1627,16 @@ static u8 rplu_calc_voltage_level(int cdclk)
>                                   rplu_voltage_level_max_cdclk);
> }
>=20
>+static u8 xe3lpd_calc_voltage_level(int cdclk)
>+{
>+        /*
>+         * Starting with xe3lpd power controller does not need the voltag=
e
>+         * index when doing the modeset update. This function is best lef=
t
>+         * defined but returning 0 to the mask.
>+         */
>+        return 0;
>+}
>+
> static void icl_readout_refclk(struct intel_display *display,
>                                struct intel_cdclk_config *cdclk_config)
> {
>@@ -3437,7 +3480,9 @@ void intel_update_max_cdclk(struct intel_display *di=
splay)
> {
>         struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>=20
>-        if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
>+        if (DISPLAY_VER(display) >=3D 30) {
>+                display->cdclk.max_cdclk_freq =3D 691200;
>+        } else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
>                 if (display->cdclk.hw.ref =3D=3D 24000)
>                         display->cdclk.max_cdclk_freq =3D 552000;
>                 else
>@@ -3650,6 +3695,13 @@ void intel_cdclk_debugfs_register(struct intel_disp=
lay *display)
>                             display, &i915_cdclk_info_fops);
> }
>=20
>+static const struct intel_cdclk_funcs xe3lpd_cdclk_funcs =3D {
>+        .get_cdclk =3D bxt_get_cdclk,
>+        .set_cdclk =3D bxt_set_cdclk,
>+        .modeset_calc_cdclk =3D bxt_modeset_calc_cdclk,
>+        .calc_voltage_level =3D xe3lpd_calc_voltage_level,
>+};
>+
> static const struct intel_cdclk_funcs rplu_cdclk_funcs =3D {
>         .get_cdclk =3D bxt_get_cdclk,
>         .set_cdclk =3D bxt_set_cdclk,
>@@ -3794,7 +3846,10 @@ void intel_init_cdclk_hooks(struct intel_display *d=
isplay)
> {
>         struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>=20
>-        if (DISPLAY_VER(display) >=3D 20) {
>+        if (DISPLAY_VER(display) >=3D 30) {
>+                display->funcs.cdclk =3D &xe3lpd_cdclk_funcs;
>+                display->cdclk.table =3D xe3lpd_cdclk_table;
>+        } else if (DISPLAY_VER(display) >=3D 20) {
>                 display->funcs.cdclk =3D &rplu_cdclk_funcs;
>                 display->cdclk.table =3D xe2lpd_cdclk_table;
>         } else if (DISPLAY_VER_FULL(display) >=3D IP_VER(14, 1)) {
>--=20
>2.45.0
>
