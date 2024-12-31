Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 380189FF177
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2024 20:11:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E13A010E116;
	Tue, 31 Dec 2024 19:11:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EH6q1JHU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C9CB10E116;
 Tue, 31 Dec 2024 19:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735672313; x=1767208313;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=0bihUB6A2qVVCfvxOpWQ7U4/4wB26w8DY5TAGHELqIE=;
 b=EH6q1JHUjjgedq3Mf3HEwDVAZtStVbIJMVLE9H7cCT2ncJlShZNZhcux
 zGq9NZL/Av2aB9XUsdbJ+NpajhzqIZtTXdhxhG0/M3zk5BNZDyZTkWqRU
 DtD1dqm2DChuiZo8Kys5agllERfcTTgy4It0z0f47eYdInCv1XoayM9ya
 eWaZFpQ7eYrJsrdd5cQPFiaR0vFOO3QtWQUZHsvdAYo9bV0hc5XsWtY5E
 k98YA3YKggu3U8R6AavjhQgHCj/FSL5GnnV3zf8shoFbJlt05zbjBU6ba
 xzty/WhIpS7VrPPCByrF5r4ds6p4/Gq4wP8uwVp+zcDcCy1mObw/NGJta A==;
X-CSE-ConnectionGUID: UByx7GSFS3ym/+4WcKF1RA==
X-CSE-MsgGUID: EqpjyqP7QZiO71cd1ONZNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="36067359"
X-IronPort-AV: E=Sophos;i="6.12,280,1728975600"; d="scan'208";a="36067359"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 11:11:52 -0800
X-CSE-ConnectionGUID: f+DAhcRoTym1D8lq945NtA==
X-CSE-MsgGUID: fX+tpSTGR9ehT26c1uaTaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,280,1728975600"; d="scan'208";a="100966982"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Dec 2024 11:11:48 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 31 Dec 2024 11:11:47 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 31 Dec 2024 11:11:47 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 31 Dec 2024 11:11:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wBsRN7d6tidXgSiCZ4E8ZbcAs3yT/iT7BbruXhDchPIpM8UKfdPuKCeLTISQe8kmuGoGWWBXYM32iJlW+cfXGPwLYC2zUWsDcOzSbTqNo+YLwn3VswcmG+Zc7GZ0F58DfhhZM9VJBCTf/wIUa2dCHOzo29nIQcg8j4Oj3Zi4ScdslGJdbohr/v92gbywElO4thv9jOmWzCXHWny4FVkERk5IZVU/3hgCw1ClfLBEJ7iiUKb0rN1IThC/0vsRRaksgxDBCbN6gv2EC2EKCSIc2YcHxM4t1MWWUBF9as5iuDgyE3X5GXcKXVGGlAJdj25OMaapF3SdoEfF0XOWJ5qDPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zTTndpB8DtQl/vLRr/3oQDnyakT36EAm1nXXKsJXW0s=;
 b=DVsTDNQ4/25tUKx7KoYJv8szbqKc7lMWQNJSAzn7LqXuWZCqaSkiLmKOWrK1GC0S+StStUXs2lG/O4c46FeMmKja2NSAfS6rKYTzVQOtfEloA38Ar3L2QxZ4JcX+vUs0Q48Nr+sjFEo0E9NjGbEAsnXipdUVWrxaz/sJUDYQIM/Ug4LHZ1aGlMNYGnSY4efraWwhqje3LLiaoJR2w1zAMlhrkpBChl6aWVkinh6R47JxVXRdajEFS8+uDOw5UmwhvAkRBkCiaBEGvoeGJ2EDsfaNnn1EUMBt1UARjSnZ2eY1Jd//gmuHeuet9AnlkRm3vtnymD2wpmYAJH/gZFY3WA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by LV8PR11MB8697.namprd11.prod.outlook.com (2603:10b6:408:1fe::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.11; Tue, 31 Dec
 2024 19:11:41 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8293.000; Tue, 31 Dec 2024
 19:11:41 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <10324781f9f7eae5a92506aaa7a40403efd345dd.1735662324.git.jani.nikula@intel.com>
References: <cover.1735662324.git.jani.nikula@intel.com>
 <10324781f9f7eae5a92506aaa7a40403efd345dd.1735662324.git.jani.nikula@intel.com>
Subject: Re: [PATCH 1/4] drm/i915/pmdemand: convert to_intel_pmdemand_state()
 to a function
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>, <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Tue, 31 Dec 2024 16:11:37 -0300
Message-ID: <173567229762.6883.15275451322743246609@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4P220CA0002.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::7) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|LV8PR11MB8697:EE_
X-MS-Office365-Filtering-Correlation-Id: fffae035-2038-4fa0-69b9-08dd29cef579
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NS9Kbi9wQjNkNHVzSFpTWWpBcFlVZWthTmpzT0tuUTBDZVN4WWlSOW5oL29y?=
 =?utf-8?B?QmdGN2s1Q1phOVJkMUdZKzhNOG1HdGM2dW11MUd4czJqYTZkMy9oUktmUWxM?=
 =?utf-8?B?c0tmV1dUcmdma0Nqdi9KSEU1dzlqdndqL2RUdnpKZlBVNXV4ZEVPbGVpWnc2?=
 =?utf-8?B?cDUxZXk5cDJZbm95cnJXdzNhTUd2WmVqQ0h0Z2RNb0F4dDJlYzA0b0RmWEdj?=
 =?utf-8?B?aDZEbkk1R2NJcXcrU3JVN0dRMzR3YzBqZHpjNGVLV3dZQit0dXp3SGwxR0Vh?=
 =?utf-8?B?cXNFZDlyVjIzd1M2c1MwYms1dGpRdUVncVNwNnBDQXZ5dFpSSmlVdEkyekMr?=
 =?utf-8?B?dHk0ZmlFeFZuZnFMVEdFRkxsSFpDTnI4Y1FNb3BicEt1STJSbWNmbEJrUjhs?=
 =?utf-8?B?aXBqTDc3NXhnVFV0UzlDT1Y1QjRpZzV5UlkxU3gyQUFnQURBWmd3WHhZWE1z?=
 =?utf-8?B?K3NlTVBYcTd3ajlNeVlEbmY0R0xOWUxWeU1RYjd1cStpMzdKWTRmbWovbGl5?=
 =?utf-8?B?RVBVcnlIaGtYdENQdEFYdHB0blZNOUVtZStLNGEvVVh5YU5IR095T2NMUUpP?=
 =?utf-8?B?WDJWMTMzQ0ZteUYzY2NZMHlMa1B2Z0ttVzV1U2NCcVJpT1M0VjBESTd4NEow?=
 =?utf-8?B?Y21qL3ZCeUNzcURWczZ6SUhxRlZRLzhra1hlTkJyYmdVeDJvSDkzTW8vSzYx?=
 =?utf-8?B?cjdNMEk1b3lRNzEvMEd5cmdJSitrc202SzhDSTlzOXI4NW01cXBCd3ViTkhi?=
 =?utf-8?B?VTJLRVgxeS9QWTdFVGZ5WFdBVmZTbllDNnhjRUE2elRsOTYzdTVtakpET1dk?=
 =?utf-8?B?YzZuLzJFTVhMUit4Y1F2SUdzOHcyci8yV1FzUzRaZ2oxZ3d4RzRvZFp2Qytm?=
 =?utf-8?B?cmlhSmZhQzZlSnBkc09YVEVWcWdlUk5pbzdLcGdKNDJheGlld2k2OGdHd0NT?=
 =?utf-8?B?b01SbVpDaGhGUzUvNDZzL05pVmY5MjRwUFdQOTBCY3JoRWEySk8wdTFWOTJq?=
 =?utf-8?B?akFYS0hiTEtiV1VXRmhmVXk5emRMVXNjamVrSVU1L2JCR1NmRHlDRWRWNlpr?=
 =?utf-8?B?aytDaWFzT29zUWZBYU9KWXY5SS9Vekc2QlZ6TEZpWU0vYzBUTzd2dkdMMzF3?=
 =?utf-8?B?UXRhaVlNaWkyR1AreFlLRDNJREpBS1ZCRWEwTnlQaE4vdTkzWEprUUZmN1BY?=
 =?utf-8?B?QmYvR0g3T2pyTWY3bEdHNng4MHRnWEZvQ1lvaFBOVUhVLzY2a3lCVjNQNUdp?=
 =?utf-8?B?Z2xnNkR5YTVEOFhhUEtDb0N3ODJBL0ZnWHNUdVRMT3hIcjRNQ2txK0I1OTBK?=
 =?utf-8?B?NXJGUVdTY0RLclZOZStVYTV0K2l3VlRyc2E4YXRtR25ZVHZKbklPd3NmMzRj?=
 =?utf-8?B?cTRCOG02Q0xpaTdUWUNnKzVWUXo0anFzTlI3bGwwdGJtZ0pGV0hVVkZNQitp?=
 =?utf-8?B?Y1QzUW5SY1F2R2FCTmljek9zVFdBNExUNGVjK0pEMmcyL3krRmtKT3E3c0Mr?=
 =?utf-8?B?QllFbldTTndhdk5Na2NjUmY3cGRLT214ZlltQlBiM0dUWk9saGlXMWxtU1Mr?=
 =?utf-8?B?Y1FVM21EbnJnUzNDQlNHOFprYmVJUWFDKy9RdGcrOUpid1dZYTZTV0ZtZ3ls?=
 =?utf-8?B?ZWdNcHVNZjJRODI0aFFXSUxiOTF6UjlZandZYmQ4QTdCNGNEMlU1ZUNTSW9W?=
 =?utf-8?B?RzJnVVYwcjlHdGMvTCtVdWtyVFV0emdIaVVYQUxJSXZsc3REYUFuN09zWURX?=
 =?utf-8?B?K3V4M1ZNbDBKZG44Q1lmVUlFaDhSWGRKM0FxZUkrYWdrQ2w0cEtUMVhpTVRr?=
 =?utf-8?B?Y1MrcGxleFZzVWZOSENibkoydjFySDMwSlVTZkhmd1A5UGtuQmV2YkIwZi9i?=
 =?utf-8?Q?LM+rhZDUpeH+b?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TVVwSmpoR25EL2R4Z1BpWnNJNXFuOUNzYlhzMjEzanVXWlhieDRVc0RkcW5l?=
 =?utf-8?B?Wkg0NUFiRktINU8rTkZVUUFUS1lQTVFBQkVtYkN3dlZ6V0hFOTg0NGxSMTVz?=
 =?utf-8?B?WTJUME5UNFptcWFmc0RCM1pmWG1GRmovQVhQa0lySzZySXp5aVAzTDJheWha?=
 =?utf-8?B?MkYwSEcyWlo2elNVZzNrbVNJbURwS0c0RUhpUlN3UVpyQzlaZmZtbTZoaWRK?=
 =?utf-8?B?V0JKeG9vMDQ5U2ZNSWZLWkhWUnlDczE1ellGQlF0OXB5bGVYWUhQVzExRnNR?=
 =?utf-8?B?WFNYTHk1Zk5VLzYwY3VaOUpxanpyMFowZThPK3RJTEpzT1Q5b1lONTMxM0RL?=
 =?utf-8?B?elZQWisyOWkvU205Q1pQdERvRkk5Tm5TQXQ0TC9INzV0ZnY2MFB4bVExM1hl?=
 =?utf-8?B?NDhOdjhxK3EwT09iQU42M0lLVmtqNjd1WkgyWUhCNkxxQ0dTZXhLb2xPRVRZ?=
 =?utf-8?B?V0FZclhZSzM0MDdjc2UwSmJGTDQweFBmbVRTZW1zU1E3KzcrbUFMcFZqRGlP?=
 =?utf-8?B?OWtkejJwN2lpcG4xNjFJUEpxd3J1Tk9PNlhyakY0dmRzT28rM0dCT1ZYSWhV?=
 =?utf-8?B?KytiNEE3MUlDclJ6TjgvTHQ4TzA1UVVKL1J4c1FZK2cyS3Vaa0R0SG13UTBT?=
 =?utf-8?B?RDJmQkJ0Sy9BcFR5b3RRZGc5VDFkVEZBYXBUVTJaNERUdWRtN09qcnFpOThs?=
 =?utf-8?B?QzVCNVU4S1kybHZJVm9ldjA2cmJlWFl5WFRDZ1JIdXl5alMzSGRSQkY4WHY1?=
 =?utf-8?B?YmxzYm5DdTRvYlVodHhMdFJJTWJublIzM01Qak5DOGRRZ291Zzl3eWcwdE4z?=
 =?utf-8?B?amxqRmE0S1o5cDRZazlkemNWMjE5RlhObmdoSWljSHZIRVNwNG10RGFHaXho?=
 =?utf-8?B?NXcvSGw1bWVpQitLU0tvaUhjN3ZKNE1iMGI2OGZkSmxUQ09yQjZIUkVIaXBC?=
 =?utf-8?B?WEtPUUtGbGJucHpZNXg2ajVXblpoeTRsVDRjakpVWkIwUXMzNk1kbTB3Z2JC?=
 =?utf-8?B?aWd5MXU5eStJNzJBL2I3Y050Wms4OVJadzlxcTB6ZENJV2lJdDFjc3I0MnBJ?=
 =?utf-8?B?WXNBbmFiU0lJTUgyOFZod3hSSUt4aEZNK3c3bTZML1ZueW13dEJ3MnEvZVha?=
 =?utf-8?B?dFpzcXRJYm0yWjI0VkxaVE1waytiMXJVdDFYZDFuejNzWkZWYmxRNHZ6NVJP?=
 =?utf-8?B?MWhHTjdVbXJzS0VwZ21raGR6ZUJCSGZSUmx6ZlFJc2V1S3c4NkIycXdiWXZn?=
 =?utf-8?B?bktRNDRRei9HQytIMmo4OU01eE9IaE1UUHFxUWRyTUJwdE81RGFJWWlXV1lJ?=
 =?utf-8?B?ZllLRldTbmRZdDd4clFyZS96MWpLVVhxV2R1ajFINlQ1d0hUcWduOEc0MGVE?=
 =?utf-8?B?UlpHMnQ2YlVWS2hNLzA5QXJoakZTY3BvRW9sVS9uYll4OXZRaWE4cEZ6akZ3?=
 =?utf-8?B?OHZBVjRTV214R3JIUUE5UXhlcVVlVy9MQlREWSs0bDlBVlhHVEovSE8zbmkw?=
 =?utf-8?B?QXp4cVRXeko0VitNdUtlQmJUMzFhZjZqTCtlRzh5QVFRK3FVNWxzZSs4YzBz?=
 =?utf-8?B?L042SS9OdHhYN2tKaDZpRTQ1Vm1SN3BhMmRKcmJuQ3R2YUUzT21HZHFGU3JW?=
 =?utf-8?B?YkRLeGdCUG5HY0tJSjRkaWpib1ZVU09hbWJwNU5icFQ2TW5Dc3BPcHZ4MnRn?=
 =?utf-8?B?dVVsWVFZRTBKV1ZvMHYzRS84T1pWazhIc1hQSXpZWlFNcHE3MjBFczExTXEz?=
 =?utf-8?B?S21LbHVsYWZyK281eHdFR3hhOW1Xa2U2cmd1c0o1ZlE5TVhnRVVKd2ZZZG9l?=
 =?utf-8?B?LzBaRHJ6cEc5amtSYWhDb0lQaVJFT0FsR3oyRTBidmtqOUF2TWlzSUFvNk1L?=
 =?utf-8?B?YkUwTng1dzl6T3kvOHJzUXdIUUp5bytjWFZJOTgwUHNBV01lZUdFVEw0ajhz?=
 =?utf-8?B?eTlVSEEweUQwdHNuMXBxa3VXd2ttRUVWMzFWaUxGRVMwV09hbjN5UmhiYnZW?=
 =?utf-8?B?MjNIWS9CVUdIbzVyNFhxaWhPUGZlMmVFd0ZYcTFFQ1VYcTAzcXVsYU9SR1RX?=
 =?utf-8?B?RXVHQlZ5OUltYWZXQ3NIN0YyRHNqVE40Sml1WkxaSkhqMlB4T3FRTnIzMUZh?=
 =?utf-8?B?NGg1NWoyaGZBTjByL1hLUFgvU0JOWnphNEk4VmZTVlNNNThPU09ieXhNWStU?=
 =?utf-8?B?L3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fffae035-2038-4fa0-69b9-08dd29cef579
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Dec 2024 19:11:41.7000 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3r9V8DmVZRjBdAKjJ2HL9JxONtRfha9B16XNpntibGdapiMEprOFUmdJmJPD2noK36bnM8X1w7Hz3fwG/Sfglw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8697
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

Quoting Jani Nikula (2024-12-31 13:27:37-03:00)
>In preparation for making struct intel_pmdemand_state an opaque type,
>convert to_intel_pmdemand_state() to a function.
>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

This looks good to me, so

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

, but I'm also taking this opportunity to reply to your comment below.

>
>---
>
>This is the simplest change. There could be other alternatives.
>
>Outside of intel_pmdemand.c, this is only used to convert
>display.pmdemand.obj.state to struct intel_pmdemand_state *. Maybe we
>could just pass the global object or state pointer instead? Or we could
>have a function to get the current state from, say, struct
>intel_display? What we currently have is a bit cumbersome.

I like the idea of the exposed interface receiving only pointers to the
generic types and that we make the necessary conversion internally.

We currently are only using to_intel_pmdemand_state() to be able to pass
the correct argument to other functions exposed by the pmdemand header.
Not sure there is much benefit in doing that except for some level of
compile-time type-safety?

So, I would generally say:

- For functions that can operate directly on the display.*.obj member
  (e.g. hardware state readout), we just ask for the display struct
  pointer as a parameter.

- For functions that potentially add the global state to the atomic
  state, we also ask for the pointer to the atomic state.

- For functions that operate only on the state bits and that could be
  called for a state instance that could either be the current one (or
  old) or some new state during a commit, we ask for a pointer to the
  intel_global_state struct.

--
Gustavo Sousa

>---
> drivers/gpu/drm/i915/display/intel_pmdemand.c | 5 +++++
> drivers/gpu/drm/i915/display/intel_pmdemand.h | 3 +--
> 2 files changed, 6 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.c
>index cdd314956a31..69b40b3735b3 100644
>--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>@@ -15,6 +15,11 @@
> #include "intel_pmdemand.h"
> #include "skl_watermark.h"
>=20
>+struct intel_pmdemand_state *to_intel_pmdemand_state(struct intel_global_=
state *obj_state)
>+{
>+        return container_of(obj_state, struct intel_pmdemand_state, base)=
;
>+}
>+
> static struct intel_global_state *
> intel_pmdemand_duplicate_state(struct intel_global_obj *obj)
> {
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.h
>index a1c49efdc493..89296364ec3b 100644
>--- a/drivers/gpu/drm/i915/display/intel_pmdemand.h
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
>@@ -43,8 +43,7 @@ struct intel_pmdemand_state {
>         struct pmdemand_params params;
> };
>=20
>-#define to_intel_pmdemand_state(global_state) \
>-        container_of_const((global_state), struct intel_pmdemand_state, b=
ase)
>+struct intel_pmdemand_state *to_intel_pmdemand_state(struct intel_global_=
state *obj_state);
>=20
> void intel_pmdemand_init_early(struct drm_i915_private *i915);
> int intel_pmdemand_init(struct drm_i915_private *i915);
>--=20
>2.39.5
>
