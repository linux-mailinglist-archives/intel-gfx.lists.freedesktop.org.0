Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD65C1D8C9
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 23:02:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CE9D10E85C;
	Wed, 29 Oct 2025 22:02:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="edgiuvEg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D67FF10E85C
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Oct 2025 22:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761775335; x=1793311335;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9cX0OsnTiI4I3lKnkPz164qPY4FFWrJNe1PsrHhbG98=;
 b=edgiuvEgJK4UrfUgH4GWprld8UPKm305IL19UOqv6zXksGxsO6jx8EFZ
 FX3VpIKs1MMzX39wVCtnCvKBq03baPGb8IR4V0Z+4WdWhwQ5Fal6X0M6b
 VFCZMvVX7qJt98Dk6yn8iX2ft2/vqgmJaHXRqezy/o+GyqgbC1lCx5y7X
 cDaBvAP9SUOMtaCNBPcRTpbJq2bRJPvMTeS1S+TXMP0jxntZpmeei/YOk
 Q1W+kQdb5WCNZ/Miyw9QyvM6M5U91+D6P3ZaJJ4HFHGG8yrSDBjv2kafZ
 MsKr0PALA9JGg7OSA3dj09YC2zNrgQlvvjLUG0AXmDF33NMYpEkuQGEUT A==;
X-CSE-ConnectionGUID: PkNEeSuoQ/CCkos2mUN8eQ==
X-CSE-MsgGUID: ANgCymjaT7eqsA7nQJZgBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="75028690"
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="75028690"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 15:02:15 -0700
X-CSE-ConnectionGUID: xtPhZV+yRp+ou1YgxJXy8w==
X-CSE-MsgGUID: IQ8CMGUJRFOGf5ieZn8awQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="222998066"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 15:02:14 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 15:02:13 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 29 Oct 2025 15:02:13 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.11) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 15:01:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZwgT6OO1HOh1YK3XoOmFqx/Pnqpol0Cp9j+C9y/SZscYbHcp7yC1OFHFmOYdZFgufgyvAULcGaa1g/jad9gkF1L6Xk38qJjpeBq3qveCMAdNazlsESo1qE6mHyBWsvWSKActnWI5OTFZH+fElbnueI7Gex86p/IYWPmIrb3y/YIKWPJ4oNl0rlYK4XusRaOaiH6DyixcJAVQVyXrlH18TtUVzV2VRie8FjjNxjXEqrQeWq55OEpcD1wTSmk4PzzIfcZvThuNmixCkH9tq1AG4I7KegC/xp94BSjnxLPkehXbkRVyJkTHfRvPQfelBc/RLH0FUL/qqaJml03QCS/pPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZMxfqWEN53jwAPvwCctjc6UhtqkILuSZEqzDba1nNPE=;
 b=xWTDrqD23BfdyBu8wWClgqcU2WrWtLAL2H/AfOwLU8DKFdq8NyPlud5aQrcYuQDLuMblkBlWADWgXBr+AcTr0mrP/Q/0wfDNVwJBosQ3P7OskWNwid1+8Sqv35rGxVbMEa8C8NDeMhzHFDfmsrf2vu4KqjD+v2Wue4jSB6TlERB8y+vELL4oJOP00Mk+syhFKI4/eYNkZlz3Ol/v23DBimb5hpAoyZXUlBGLeYuhfa/gB7Q5GQ9a71KuCnFCUcIRYoJ7tLj2gsgu4oDXE+h9s5nw391xKdRUqsIoy9GvyYF69rZREYYOAb2SatznCW68JrM2iAgDvDRr3HJQv5TReA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15)
 by CY8PR11MB7084.namprd11.prod.outlook.com (2603:10b6:930:50::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Wed, 29 Oct
 2025 22:01:40 +0000
Received: from DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543]) by DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543%7]) with mapi id 15.20.9275.013; Wed, 29 Oct 2025
 22:01:40 +0000
Date: Wed, 29 Oct 2025 15:01:33 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tursulin@ursulin.net>
CC: <intel-gfx@lists.freedesktop.org>, Ashutosh Dixit
 <ashutosh.dixit@intel.com>, <andi.shyti@kernel.org>
Subject: Re: [PATCH] drm/i915: Fix conversion between clock ticks and
 nanoseconds
Message-ID: <aQKOvaRYY4TNjn/l@soc-5CG1426VCC.clients.intel.com>
References: <20251016000350.1152382-2-umesh.nerlige.ramappa@intel.com>
 <bb365451-b451-41ef-82cd-eef8e21ead19@ursulin.net>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <bb365451-b451-41ef-82cd-eef8e21ead19@ursulin.net>
X-ClientProxiedBy: MW4PR03CA0313.namprd03.prod.outlook.com
 (2603:10b6:303:dd::18) To DS0PR11MB7408.namprd11.prod.outlook.com
 (2603:10b6:8:136::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7408:EE_|CY8PR11MB7084:EE_
X-MS-Office365-Filtering-Correlation-Id: e2228b6e-96c0-48d4-cece-08de1736bd3e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YUo4S1BzaXlGNUxiVVZBRDN2ZTFBUmljclY4NXI5dTNwc01pbnJBQ2hwNlhx?=
 =?utf-8?B?YUtmaVQxOTJVbUg3NVBmaWRvTXVJSTRTc01HV1huNzdSSFYrUFhaSDNBYjVP?=
 =?utf-8?B?QTNiUkV0bE90Ymp0bmZxSFZYSjYxQi80V3pCSVNSR2ZsNnp6cVE2bmRUYndY?=
 =?utf-8?B?b2NYdzVBZHFCSXNkbE1TRUw0Ym9mZ1dSUFQwT2VEQ1hjR3RNRzhjcHBFS21L?=
 =?utf-8?B?bHJrWUxKWGUzS0JjM0crUEc4dWxKNzIwdm5pdnJYeTFhR2dneTV3MEo2SnJy?=
 =?utf-8?B?MTBnQy93VHlFN2s2Z2FyUVlkc0wzL1FhVWRnTmphSGpUZXZRdkxtc0lHZWVR?=
 =?utf-8?B?aGpJbFI4dXNNOGR1VHljOGZWdGNZS21qUithV25TaDE5TGExcGFzalIvY3BR?=
 =?utf-8?B?NVZiMlFzam9yalJzUDNsOGJoVUN1eDgzVzk0a2VDRWxGTTNwMzZiWFZoVms4?=
 =?utf-8?B?SXphczVVNEdiMjZQNHkrRm9GdjFENDNSRG5qb2xPaUVpaXNQbmRBTjNkUnNq?=
 =?utf-8?B?eEVKTnBlYUFRbUR4SlZnKzh6aS8wRjdSNURsM3FNZzdXL3JWdDFaSnRKdmJH?=
 =?utf-8?B?K3NjYXIxeEo0ekpWZEhsUDh4OHpMYlBZUS91aDlPZ1B2dXI3TE1FYStBdHZ0?=
 =?utf-8?B?cW9IOEhDUzNmc3FwaVlpOWp0bWxRRjc4MkMybmZ2MlVnV20vZ2lEenlNNGxG?=
 =?utf-8?B?eHhtbWRSeG04QkFuVXhKUzhheDRIMFNhOHpjV2xvUENQcFFRQnMvTEN6VWJU?=
 =?utf-8?B?b2VjZlF6Z0RrRW00aUdEZmxFVkVTZ0dSYnB1V3pqcFpKb2laS2RCaUpLWXdl?=
 =?utf-8?B?LzEyUVF4OGY4amJmZUUzakYrZDZiWFBFa0NYNzR2aTNNNTZTR3JTbnBWeXJZ?=
 =?utf-8?B?M3prL1czYlAwdkVmWHloMXBqK0ljT09uVGhKQjBPTDh1OTdETDY0NVIxVHo0?=
 =?utf-8?B?b0s2ZFN1RkdnbjhrZnNjbnJJQ0daWWhOTjQ5d0VUVnhIbEM5Q0dlR0oxb1Jo?=
 =?utf-8?B?bkJPZUhSZXlodVl3Ri9XVXdCQy9jREM4VW8wdlV6UzF1YUNVMUpEOVZ5dnhP?=
 =?utf-8?B?akk5RDlpYVdQWDRzbGhXR3VNemJ1bXZJdFhHY2JzUGpnSU05ZGJrVVlSSVlC?=
 =?utf-8?B?akg5aXVYeGFHZjdSV1k2aGhEVDZrZ2Jva0FhQnk0a1VONVNxdlF2aCt5SVR4?=
 =?utf-8?B?ZnlZcXdkRW5MUGNkaG4vZ1pOdXZSSHQyeXJaZXJvdm1sQmJOSTM0L3dBQ1dr?=
 =?utf-8?B?S0tqOGR3bWZsMFIzQWthcHFsM3NOazdVT3hOSjZ4ZjEwT01Sd0JqYlQrMi9a?=
 =?utf-8?B?Wit3UGRXdTFHQnA0ck9IRGh4SmU0ak4vNXZiWEQvZXcySlFXSGM1ZDJnTTZu?=
 =?utf-8?B?QklYdjdUY2dXeUJGVEpyV2hsMkFyUllYT0ZxU0hOa3hkWUgvSVZ6NHF2dk02?=
 =?utf-8?B?cjZTWUxCYWtYZnZ2K2EzdXVtSkEyUEFlZTFDSnNXTmVuNWJmU3c4aTM1Q3ky?=
 =?utf-8?B?NjFPN2JMUHdpQ2dJa1V2djZ2eEZ1bnN5YTkybytmTFlrV2NrMGxUQ0cwcVZn?=
 =?utf-8?B?N1FjbmdLN0w5c0RCWVlBOHlsRCtYQmcvb2Z2M2Y4MldEaGh4c3VncVg5anYv?=
 =?utf-8?B?dzRkRjJBSjVmejNxZnBmbnRhaXlNL1JFMGlGS0NkZXkxcjFvNVNKdVc0QzJR?=
 =?utf-8?B?RU1uN0w4T3UvODFWbG50TVVHY1ZRVDlVYzVxZjQzT2RFODk4SzFic28zbkoy?=
 =?utf-8?B?LzhXMFUxdUZSNzNIbG9lZk51S2lZcVY0ZGlzMXRhSXFMTk14Q0hLQlAwTkgv?=
 =?utf-8?B?S3FuV1NCRzE5TjNlOFR1eWdjT0I2dDJpWWhGemlMbGNIenpHVkVrQ2FrZGc5?=
 =?utf-8?B?NjNqQUlTakIxMUkyTW44bTlIZXZZVnVJS1gzK0RqNTJHM3c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7408.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVRKWTVhbTZObVUyOVBzUXdobHdYMFFvS1NyWXQ1QS96RFdoaTd1aHNvelBi?=
 =?utf-8?B?Y0pHRGI3aEliZGRCVFA2TThYVE9TRkgxTmppTHZ6Z0tSZFgrSnZtYkoxMWNl?=
 =?utf-8?B?S2l5am1NQkxIV2tBRDNpUWY1T2FmN1ZhR0Q1by8wTU5tSnBINFhEQnZpcy9H?=
 =?utf-8?B?N2xqTTcrbS9adFF0RDM2L1RjK3E4c1lqakY2bTNMeG94VVlnaGJ0V2RCaG5J?=
 =?utf-8?B?ZE5VS1VNZXNPTGFPVWZ5OTR3RWEwdXUvKzZKankwclNSOWU5MnFYbXNtSExv?=
 =?utf-8?B?WFFlaWJtQkpqVHhTOTBUU3F5eVBUaE1YZFRBVmRQS2lMMEZxK3NWU05OTlc5?=
 =?utf-8?B?bTJQY3o5QXB1QmF2bnFwS2E3dW0raXlMQ3N3dHY4Y2JjT09VK2VKNSt4eERl?=
 =?utf-8?B?V3daS0Vsc0NuaG5WeU5Uc1BVdVNsOU1CVjAxSHltQUJkRlZNZE5UenV3ZTBY?=
 =?utf-8?B?bWoyeDR0SHRVMGRwOUwzYWtkeDYzU3N6QXVkd0Z1ZjlkQ05hM3lBUExuRVdO?=
 =?utf-8?B?TktZc09kdWwrcHgvcjZNQUpHMzlUWkdDSmFQRVhLMFpvVzlxSGt2TEQ1eUJO?=
 =?utf-8?B?OW5Hb0RJcTEyUFdUOXFVM0s2bittVkdDdWxrV1dEYjkvZ2NsUnFPVGMrZ0pj?=
 =?utf-8?B?MDMrMVRRR3l6OVkrRmlTQlQxam1abndQOTl3YUVOVFIrMlRSZmF1L0t5OUxl?=
 =?utf-8?B?ODNKbkZxS05yVm1EdlJGTU1mQW5hZ3JkK1RQSmNETzVLRms0UEtzRzl1bVFt?=
 =?utf-8?B?OFRjYkQ1bGg0WGtHc3poclZMb0xEWmdJVy9FUDlSeTg4QUxVbGN2cHlxU0kz?=
 =?utf-8?B?bHJPNUoydEFRZ29jQmZ5NyszWEU0ZGQxNndTdmJSdno2NWp5cFFhcU53Y2FS?=
 =?utf-8?B?aExmc05aZ3VUV3hDR1NwMFlSS2duZCtnRk8rWXkrODVhUHlDOVg3djFKRG9j?=
 =?utf-8?B?TmliSE1QRk15TW9WWG8yQ3B4ZHVrQ2hWd0Q5cjMrS1pBM3U4d0lGVHJrSGg5?=
 =?utf-8?B?RlRwVm1oVEkzY09WdnFPOXJ4cW1qdkZRcWV5ejNxczRwL3pHd21DK0o3SWZk?=
 =?utf-8?B?Q0FhUzhHTzRnUWNHOGVRQm5sNUE2bXZMcmZTcHRDTXhSODFiZ2EyYzNhNTlD?=
 =?utf-8?B?MnUrYS85ZGsvczhYQmFQaWlXL1BiZEFiaG1lSXB6TSt1Tkl4cG9WOFExYkFY?=
 =?utf-8?B?cllMMWMyREJiQklRYmpieTRjN1BybmpCTENXTFBtZnlmR3JGMmJ3SVZEa1F5?=
 =?utf-8?B?aEYyRVdhakxLNFR3TlNOalFjWjBRbHJDa3FLMEJBZXNjY0VqN2I3eXRGNTF6?=
 =?utf-8?B?eVhSZ2diSy9WUHkzUlY2cWw2YTc4eVFLcVlNSUdpSGk2U0FOMlpnc0szczBG?=
 =?utf-8?B?aGZUbEtOU3krY1dHOHRoUjJKN3B0cGNNV1R2ektrQkxLV0NOWStUOWFVSHVM?=
 =?utf-8?B?K3pSVmZzaTJwNG5yL0RsQVBkSkZrNno2VUJXNERKS1RMeE15Z0tzSjJubC9o?=
 =?utf-8?B?WFJqRlU3aHNnZnNaSWwzQ3h2VWFFY2gvYUdDL20yR0l5UDBQVnRNc2ROcWk4?=
 =?utf-8?B?bnlFcVdEcnlKNnY0YzZxR1kxbDNaZlU4b09JVHV6ZFZ5THdMNzNmQlFjZWNC?=
 =?utf-8?B?RHluOEtzU1laNVRBc3ltOE5lOGhNMUhBODdIbmk2RDBiQVdybXBtTkNVQitC?=
 =?utf-8?B?ZXZYQzBDOHRETm1HbFRyemk0OWVNSWYyM3lNT3RQVG9adnJQQUI0VVozeExm?=
 =?utf-8?B?Ym15SzRVTzladVdEVnZrMG5IQmdJMFlFVkIybzZTQ2FtV1RPUkVyZFBJTmwx?=
 =?utf-8?B?YXVrbmY5anZmSnlza0o2MVNjZDY0NWs4MXRJOTA4QkVWaHJZajU1YjRDRGFO?=
 =?utf-8?B?WjBmZTNVQ3RueHZaUDdLYU8xVUdZWnAvSnFDUWhqVmEzQ05hRnVaNjFGOWQ1?=
 =?utf-8?B?TTlWNzZYNUdtYmM1TWhoVDFFUjFWVk9YODB5aWowNW12bjNPcnBjK05UWmx1?=
 =?utf-8?B?c1orbDJyYkVQcFA1UmR2RXRCN25UL0VvU2tFKzRUaGVuRjRSR21DRTVXS1dY?=
 =?utf-8?B?OVJ4Ymt6dnFQN0JyUGFtU3QzSXVOK0ZFRU43WVpMakFxdE8vcjh5R2YxMkNr?=
 =?utf-8?B?Z1JIUS9PRXg0YjBhTkJmQU9WdVhCdEVueG9Zb0gvNWo0cVhiRHd6WHA5STdu?=
 =?utf-8?Q?hjIjxRMRUutptBc3SZf5q40=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e2228b6e-96c0-48d4-cece-08de1736bd3e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7408.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2025 22:01:40.5652 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3mG8ZOebL6cJjfNi27shERB37c2hvOJAC6R4FvJEvdGgkszB5YZjwpcQvDhMJesnl1gE7JeCQ7IHnEQnTu5AlUFwu/5YsFXVNAfZC9jEujg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7084
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

On Wed, Oct 29, 2025 at 11:33:20AM +0000, Tvrtko Ursulin wrote:
>
>On 16/10/2025 01:03, Umesh Nerlige Ramappa wrote:
>>When tick values are large, the multiplication by NSEC_PER_SEC is larger
>>than 64 bits and results in bad conversions.
>>
>>The issue is seen in PMU busyness counters that look like they have
>>wrapped around due to bad conversion. i915 PMU implementation returns
>>monotonically increasing counters. If a count is lesser than previous
>>one, it will only return the larger value until the smaller value
>>catches up. The user will see this as zero delta between two
>>measurements even though the engines are busy.
>>
>>Fix it by using mul_u64_u32_div()
>>
>>Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14955
>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>
>There was no need for Fixes: or cc: stable?

Oh, sorry, I missed that. Should have been both. Is it too late to do 
that now?

Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from GuC to pmu")

Thanks,
Umesh

>Regards,
>
>Tvrtko
>
>>---
>>v2:
>>- Fix divide by zero for Gen11 (Andi)
>>- Update commit message
>>
>>v3:
>>- Drop GCD and use mul_u64_u32_div() instead (Ashutosh)
>>---
>>  drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
>>index 88b147fa5cb1..c90b35881a26 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
>>+++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
>>@@ -205,7 +205,7 @@ static u64 div_u64_roundup(u64 nom, u32 den)
>>  u64 intel_gt_clock_interval_to_ns(const struct intel_gt *gt, u64 count)
>>  {
>>-	return div_u64_roundup(count * NSEC_PER_SEC, gt->clock_frequency);
>>+	return mul_u64_u32_div(count, NSEC_PER_SEC, gt->clock_frequency);
>>  }
>>  u64 intel_gt_pm_interval_to_ns(const struct intel_gt *gt, u64 count)
>>@@ -215,7 +215,7 @@ u64 intel_gt_pm_interval_to_ns(const struct intel_gt *gt, u64 count)
>>  u64 intel_gt_ns_to_clock_interval(const struct intel_gt *gt, u64 ns)
>>  {
>>-	return div_u64_roundup(gt->clock_frequency * ns, NSEC_PER_SEC);
>>+	return mul_u64_u32_div(ns, gt->clock_frequency, NSEC_PER_SEC);
>>  }
>>  u64 intel_gt_ns_to_pm_interval(const struct intel_gt *gt, u64 ns)
>
