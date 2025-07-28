Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E882B1406A
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jul 2025 18:37:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F38010E53F;
	Mon, 28 Jul 2025 16:37:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aCeUuqjr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 405C010E53D;
 Mon, 28 Jul 2025 16:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753720659; x=1785256659;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8kaa5VC2SkIqejbujamBx02+uo9DuEaeS1Qs0JDeYTc=;
 b=aCeUuqjruzb2iXirR7GSBvi0S03TJh8RCz9PHO4zrOaX1QBGuDjJKrdo
 ykxMA+HRkaOzVg6sPfhnGpd1Xv7xEqxuy09LB1QdLaDvInwoEoaJeh7nN
 kPa3hQbqpEAXKVf7sW6RQDG5EWeqB2to+CIOBI8vWKxUXPZCACgpspxX9
 se5aJ0GzRepAgSa4GFn9YvYbHyBnRGTYI/y8mBu2do4KT1/rtOx766+5k
 Ry3D+KWR61A1b3nBUdDCof0jpDjMw3W/YkBZFpUbSczgwEITGLiVblLeS
 34VN/JQ/Rx1jg7YY69QUvCsQX4Y/J3DKqvRB0zatiEUsEjOSREwIz9N87 w==;
X-CSE-ConnectionGUID: OpMqb1hJSE+eELx7s3M+uQ==
X-CSE-MsgGUID: 6w75DrzKRcartoD7NYpzxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="55055488"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="55055488"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 09:37:39 -0700
X-CSE-ConnectionGUID: zXDgU9IfR3KHdBIvQlU+Xw==
X-CSE-MsgGUID: L6XqPeWdSSu3RMTXT1Sn7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="193446627"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 09:37:38 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 09:37:38 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 28 Jul 2025 09:37:38 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.74)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 09:37:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZeLN9csDI4NOx50mG0P2QIwO5TKBCIxlR45ERHIGfTce1iizMQMZGDXZDw07ufq235eQ9upp+Oh0kE4HAly5v3wytFfcqJRZKuSZb5lQRFPFO5MwO3xVshOf7+djiwIsvpDIxY7VwvulmyM8IZjFiEHEXKhz4C4KPYTAZs92uDiecLJymDyihAzvyqZXEu2crRbdfj8E8yRf4bexr0AhFVaMrwS1UBO9cd8+RT/qQlQ1emaKKJAN0qRV/Sx47mpYVsP0iCnkrl+/map/KU12HdCod844xRkY4k3O9New+SScmgkwvKwXzKH8IERuSfyKN4DMK5mopsXfA9dWhng0DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=useKk48RyJS86ad2cTx9DaIheUAqy+2bs+m4hXVDfMQ=;
 b=e3uLqyKE4zec1nzAnpx3eltQ9FbON+OghIZwHN046v5DZvA0IR6yXEDo0WCHxRWmzY4h4JxifvucabWqqi3jt3Xl+g5Nl//f1YV6ptQ2LGCQbTaxlscILg/M5OIBoQfzX0ryKbbduJgK4nG5cy2MQXK+8BPevM7REbEDmGnIHbQGalFK8GJgEuf6pi0tlfCW03+MpQzk4xperTgB8B9y7wr2/xKYSYV001v7pAWOhDXdcnwNRvp/uCIk+E/4S5FU2T9vjYnMQ0Jn8y5KwGPY6/vTQdRsA2mdyGpr/s2zXOS47sXRGjilWh51jGnFIp1WdRDDEBwqekMC4uYUxqJFtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by BL3PR11MB6483.namprd11.prod.outlook.com (2603:10b6:208:3be::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.27; Mon, 28 Jul
 2025 16:37:21 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.8964.025; Mon, 28 Jul 2025
 16:37:21 +0000
Message-ID: <8557d51a-3ee6-4f39-9bf7-5bd3d05c524f@intel.com>
Date: Mon, 28 Jul 2025 22:07:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: Regression on linux-next (next-20250708)
Content-Language: en-GB
To: Damien Le Moal <dlemoal@kernel.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 <linux-ide@vger.kernel.org>, <mika.westerberg@intel.com>,
 <anshuman.gupta@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 <lucas.demarchi@intel.com>, Niklas Cassel <cassel@kernel.org>
References: <07563042-6576-41cd-9a95-de83cfc95de1@intel.com>
 <243457b5-c1f8-494a-a88a-272c535094a7@kernel.org>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <243457b5-c1f8-494a-a88a-272c535094a7@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0120.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::9) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|BL3PR11MB6483:EE_
X-MS-Office365-Filtering-Correlation-Id: 389f3f7f-d6c5-4d88-26e3-08ddcdf505fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dnJzdXlyeUVuRXlrWEE2bmgzcktZSHFtbXZJNm0rV0lua3JQZUdYbFRmVEJ0?=
 =?utf-8?B?MkptT0hYTWp5cG4zWVlQMlpTdFRMMHliRklZNkFLdnN4d0FsTlVuT2pBaXA1?=
 =?utf-8?B?NE1iOURIbEp4S2JNendRbnRZblNzUlo0cXQvTGdqdU1tb2w1ek5aWkwvOERE?=
 =?utf-8?B?TEZRb3lZTlRQUUZHazlNS2FUQ0VCUVQvS2E4MS8zNS9XempuckpLc2xTblNT?=
 =?utf-8?B?SFRaUWpvdUgxY1ZKOGIvNEo2eXJhSFpaVm1hMy8wekovUlh2WExGN1dnV3lm?=
 =?utf-8?B?S2lMeTVpU3NMcUZscXdOUTZGVUtYWHFvQkptZjFxTWF4MHk4RElrRkF3c2ti?=
 =?utf-8?B?ajRjZFFQajlHdjJTdWJKOW84alpLSTdDZzVBbTZ6UDlUVExCYkxlUm52V1hG?=
 =?utf-8?B?Wkc0V0J6UHB3MGhONmMvUytmQVBUMlVsc21ZK1pWcDJHWmhrNGg1SDZlUlNM?=
 =?utf-8?B?em1KVkVXSVZ1Z0k0Y3lRY2NZYm5FVzJDM2oxME1iYkdJR0l6L1FnNUZUK2Yz?=
 =?utf-8?B?dGVkT3NOanBqV09uQ3RGckZxdyszMDZnWlNKVlZCVDBVb1JZUk53cFNmc1Jz?=
 =?utf-8?B?MzBWcG9EYkhQNjZXaWdGbGNKcGM3TUlJaUwvTXgzWkgwMEJEUllmZ09PbENW?=
 =?utf-8?B?RWZnNnl5c3BmQWRaSUpTSzc2Mlc3K2Q3TTNrbEFZTlV2ZVh6UWNRbmZSalBx?=
 =?utf-8?B?Y2hsNmd0QzQ5Nno2cFRHa2YyZlFNaGdrZFZna3VLeVVjZG9jRkFaaWp4U0w2?=
 =?utf-8?B?SEttYTE5OXJDblZBczdzU0VFenNJU2dPMFlYbnc1Y2dZT0trQUdRSXpKZHVC?=
 =?utf-8?B?Zng1bEErdFVxQy9Rckg4dWtLUnhxWXB3YlBuYllocDNqNGk1bjcvQTVHdDNX?=
 =?utf-8?B?ajhTMkdiQmxXZDNwemNLV2hsbUZJcS9nY0JLT3ArRXRnVUo5bnptRE11azAz?=
 =?utf-8?B?TmxlL0h1S1JFOXJaMC9oQTBURzZ6T1VXbjZ5aGlXdjY4dGZOdnpMMFBCZ0tL?=
 =?utf-8?B?cUNnZ1daM21pd0VTTjJ0QUVlVWVVcE1vYlg3aEh2UDBkZlZBRVI1UTIxbE0v?=
 =?utf-8?B?NXFCUVpGRm0vMUFFczFsQWVDWS9Dakl1b3ZLanBKam4xMjNPRTQ1cGhYbTBj?=
 =?utf-8?B?OHZxZWtKUFBONVNKaWxEcUhSVmhjcDY4OW9YdE9qcmZGMkRUNGtJZ0FoK2xy?=
 =?utf-8?B?NlZacG0zNndyT2xBV1B5MWEvZFY4QkU3YWYyZGYwdFFWSGUzajlTTEQrSlZn?=
 =?utf-8?B?bmtTU3FEVEZRRDh6VE9MZ0ZTR1VWZm0xQWl3NU51OW1GR2JFUVpnQjVFc01j?=
 =?utf-8?B?dDNtSkcvMW4yTE04bVJQbWNkREcrZ2piUEV1WTIrS0owdUI0bWFaRzRqem9n?=
 =?utf-8?B?dStBUkY2bnRuQXJnNnAwYnM5dUNZT3YrK05LRGNPM0ZoZVlSUElaUUgzMm1C?=
 =?utf-8?B?STRyRXhIT3lGV0w2UXd6NzR4ZUtNN0d0Qi9Zc1JEalh1RTJHS3ZpQXBuUkF5?=
 =?utf-8?B?aFlCaFBybDZFbHpnbHJOQUZVdFpFZTNqV29aRkxVUzI1M0Vmb01MOW1PNGxq?=
 =?utf-8?B?a3ZwQi83MFU1OGRuOWZiaGdYNkkrcGpBT1N2MXlhNlB3OGtWMmVYMjdDSHdw?=
 =?utf-8?B?S2lBUlpHWksxSThGdmZVaUlKTDU2b0hTK3NwUXlBTG5lZWlUOEJjMnJOajNr?=
 =?utf-8?B?K2I3Y2N6L1huTllVK3ltKzZKeTUveFI4cjU0MnFodStpOGxFbEtPVUQ5TmRS?=
 =?utf-8?B?R3drTGp3UG04MzZ2U3R0UnVBVU1lSWhOV2ora0Z0OXJqMW5NcjFhTGM2UmMy?=
 =?utf-8?B?MGpVTE92dERHL24rVWkveVZFb0JoM0NtalQ5dElWZ056UDE0eTdjbHRSSTNM?=
 =?utf-8?B?V3F5MHkxVFJLczd4aTl1Q3N5ZEhNcFRsWm5tdnpQaW4wMzBxUzFqakxtSFNZ?=
 =?utf-8?Q?uN7STOz8J/Y=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S1dCRUJUVVQ3cm1KVzhYV0ZrcmRLQm11bHBlSGhVTURrTFd1bWJ0YWdkUTAz?=
 =?utf-8?B?Y1N0cDdYL01YMTJHbWdzZWtvcnlUb2VReHBwQkQvOEhjSzZjZGtYbUo4Qkcy?=
 =?utf-8?B?L3VJbndXOU91Y3A2dzI1NnkxTFFURDFxUkFtWnBLZWgrUHRCRlowbThaR01C?=
 =?utf-8?B?UVJuRGVKUm1TcjNZQ1drUlIrcjBiOURKcTd0MVdqemt3b1Vudzl4VGtpWUxP?=
 =?utf-8?B?Z2ZBV0JHbkM0QTNuQlIzeDdOdmlzbHRnZTJhKytrYmFuZVcvZkgzK3FYNUc0?=
 =?utf-8?B?V1hBTEFPdGljTXcramlEaDBlL1FTRWcvRjhRa3VZRnIzUXAyVUpydjBFT3FK?=
 =?utf-8?B?S3M5RUhpZjBPMGl0OTRKUlAvN29tSFgrMG5RY0R4SzJLTXhnMVdJZkg2NXVV?=
 =?utf-8?B?a2NSTzZWSzFYMjc3cUc1TXFGRFlzQzdDT0lKVVZVRTg0aWJxcVFBa1ZqbEY2?=
 =?utf-8?B?WkdnUmtWbjFjV3E4YnRUSHkwby9GN0ZsUW5KV1hUaGRQSmRuK2ZOWVhpbnJn?=
 =?utf-8?B?alRvYU5xcjJ1Z1R2MVVmVGdvbnEyaE1jQ2dadFA2RUg2TTdHNlQ3aC82Zno0?=
 =?utf-8?B?WGJ1eGtKcWFvbmF6V3hibEZ0VHcwVnh0bm5HTllIWWRmamdMNkdXZWdoNDhi?=
 =?utf-8?B?L3NxMVFESTEvZ0ZNdUFhMWY4OG9pa2ZGV244d0l2cm85bGgwc29tTkExQVRT?=
 =?utf-8?B?eksreVlITWpKQVVWTzN5YjhaVTFZTkx1aU5iZEtSbWNGWXZDbUtYdmFOcFUv?=
 =?utf-8?B?SWlWRm8wZzZsWWk3UVpMZ05VWWc2Um9LMWpWM1R4TWZXcVgvNjNQL09hMVNZ?=
 =?utf-8?B?bHdveTI0cytCMkVwYVpNdEp3QmpybHRyT1E2UDJ3YXJhM1NVZ25VY3NGT0lQ?=
 =?utf-8?B?SUdwWDlncnVGMVJFbFk2Zjl6ZkMrVVAzVlArbWlWeFZLMjhLRU5kS0M5MDl5?=
 =?utf-8?B?QkFBN1E1L0JGQU11a0RQREhzYWx0bjd1SnMwbEtnNFpXRmdaOWdPYU82dzQx?=
 =?utf-8?B?dytVb1FncEEyYWlHZDNWb1pvd3RHNVRHUE1ET1VYM1BYSGUrK05YS1hHT0dq?=
 =?utf-8?B?SS9zaUE5VXlwaVFxcDZUYVpLVEIxV0YyaWhMWXd2L0ZOb0x4anZ5c0dxb0ZF?=
 =?utf-8?B?akdtOUZJb01QaytoUnM1VTB5TWN4UUlPbVo5UXFhZmNEdTJqOGQ5YlE1Nkdz?=
 =?utf-8?B?KzcvKzFrYzE0eGdQQkw4OVQyc2RHeVBDeTJUMFYzNEFNQVRIcXlKeFM3UlFQ?=
 =?utf-8?B?QW5UV25xcmtHbEZITXZXeTlaWFhYU0VyeGNQM0VDQWtuNlMwUVltQncyemxq?=
 =?utf-8?B?M1dWNDhESW1zYzJveVBkcXVwNVlFdkNWVHlYMU8vaGJPUVZxdEVyaytINEdq?=
 =?utf-8?B?MjkvMjdEZnpMRTZTM1NlSU5vcTloaFRHY3BJWFFGUnBZTjdobStZcmw3RDlD?=
 =?utf-8?B?U28xRG51ZjJ1bUJRVWQ1cjlydnVBOGxXdDV1UEFjdUNiVnNJRlIyd2FZTG1h?=
 =?utf-8?B?Ly85Z3BLYytZalhYeVVCTzd2dllaZzEvOVd0ZUZ5cTcvNGFkb1lLS214MkZ4?=
 =?utf-8?B?eEdYSGo3WlgvR3g0amxSYzN6Mm9VOFpHaTd5bGlOa3QxM2lYeGZVSVQrZmY0?=
 =?utf-8?B?VTN3TS9ob1R3dytCMnZjVmdDVEF0Q0xmYUlOK3RqZnhmcDBrMDlBWThYQU5T?=
 =?utf-8?B?S3k3WTRsM202MTBEdGFWTjNPb2lTSEZLV1lFZkg4aW1KTFlWcmwvOGJsZ0FG?=
 =?utf-8?B?bVFtbldxRzg3Q2FCS2MybWtRZEs5NkQ5NnpvN1ljY3pGTHJUUi9mZG1tdmJn?=
 =?utf-8?B?Tk9uNnV1cllPTWxmcW1Jb1g4MG4vbVB2NXMvMDlMNk42bmJuSWR6RDBZeG9G?=
 =?utf-8?B?c0JFZnN3RVNCaGowc01BS1BaVkxSdDl3WnJ3ZVEzRi9uMjNBR0xOQW5ha1I1?=
 =?utf-8?B?UzlkS0RJUDFNa2kvMHJKZlJoeXJRWjhSR1h2aERWUmgzb1BpWE81WlBHRmtC?=
 =?utf-8?B?YXB2UVNmbzN1d3MzL1V1bUs1RHlWVytvQlhnQUQ0YkgwVnhLSVlwbDAyNitD?=
 =?utf-8?B?MEhsMXZxaTlRaW5ERkNMZVVyNzloNGJIQlpBWEllVm9jTWR2dEZPYlFCZC9G?=
 =?utf-8?B?Y25QZnQrM3dsejd1ZnpOTlQ2M25wRXBBQlY1cndpcG02anRBS1I3d0VYd0do?=
 =?utf-8?Q?OFSm1tY/IGmLki6BjHb8zXg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 389f3f7f-d6c5-4d88-26e3-08ddcdf505fa
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2025 16:37:21.0806 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qVzu2lx5uKktg0ftv+O9xYFed81zA5IpCMf7vSchjnkVOEUoCtkfeoLr+/GgkSn1vYviyMe88n6pILuOZ4GZnyVAUrRNMicXdB4LqC/6AFU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6483
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



On 7/25/2025 4:03 PM, Damien Le Moal wrote:
> On 7/25/25 15:43, Borah, Chaitanya Kumar wrote:
>> Hello Damien,
>>
>> Hope you are doing well. I am Chaitanya from the linux graphics team in
>> Intel.
>>
>> This mail is regarding a regression we are seeing in our CI runs[1] on
>> linux-next repository.
>>
>> Since the version next-20250708 [2], we are seeing the following regression
>>
>> `````````````````````````````````````````````````````````````````````````````````
>> (kms_pm_rpm:5821) igt_pm-CRITICAL: Test assertion failure function
>> __igt_pm_enable_sata_link_power_management, file ../lib/igt_pm.c:392:
>>
>> (kms_pm_rpm:5821) igt_pm-CRITICAL: Failed assertion: write(fd,
>> "min_power\n", strlen("min_power\n")) == strlen("min_power\n")
>>
>> (kms_pm_rpm:5821) igt_pm-CRITICAL: Last errno: 95, Operation not supported
>>
>> (kms_pm_rpm:5821) igt_pm-CRITICAL: error: -1 != 10
>>
>> Test kms_pm_rpm failed.
>> `````````````````````````````````````````````````````````````````````````````````
>> Details log can be found in [3].
>>
>> After bisecting the tree, the following patch [4] seems to be the first
>> "bad" commit
>>
>> `````````````````````````````````````````````````````````````````````````````````````````````````````````
>> commit 4edf1505b76d30e1e1e283d431e4f84ad01ddcef
>>
>> Author: Damien Le Moal dlemoal@kernel.org
>>
>> Date:   Tue Jul 1 21:53:18 2025 +0900
>>
>>
>>       ata: ahci: Disallow LPM policy control for external ports
>> `````````````````````````````````````````````````````````````````````````````````````````````````````````
>>
>> For some context in our kms_pm_rpm tests, we enable min_power policy for
>> SATA so that we can reach deep runtime power states and restore the
>> original policy after finishing. [5][6]
>>
>> IIUC, the above change is based on spec and not something which can be
>> reverted. So as I see it, we have to drop this code path for external
>> ports. However I am not sure if we can achieve deep power states without
>> enforcing it through the sysfs entry.
> 
> I am not entirely sure what you mean with the last sentence above, but for
> external ports, LPM cannot be used if you want to keep the port hotplug
> capability alive and working. Without keeping such port at max power state, we
> cannot detect hotplug events (which is super annoying when you have e.g. a
> server with front loading drive bays allowing swapping drives without shutting
> the machine down).
> 
>> Atleast for the basic-rte subtest, the test passes if we comment out the
>> functions controlling the SATA ports. We will need more testing to
>> determine if this approach work. Any thoughts on it?
> 
> Niklas and I actually suspected that we would be getting "complaints" about this
> change. Well... We did :)
> 
> The problem really is that external ports have never been properly handled by
> libata so SATA hot-plugging never really worked reliably. Patches queued up for
> 6.17 before this patch prevent the kernel from changing the power state of
> external port. And this patch was introduced after seeing systemd.udevd setting
> external ports power state to min_power or lower states, thus breaking again the
> hotplug capability.
> 
> The error you are seeing is thus entirely correct and expected.
> 
> The question is though: do we want the user to "ignore" hotplug capability and
> instead priviledge low power states. I guess we should have such capability.
> 

Atleast a case can be made for debugging and testing use-cases.

>> Also, are there other ways to detect a port is external other than
>> receiving EOPNOTSUPP on the sysfs write?
> 
> There is not. But it would be easy to add a sysfs port attribute, e.g.
> /sys/class/ata_port/ata1/external which says "0" for regular ports and "1" for
> external ports. We could also make this attribute writable in the case of
> external port so that doing:
> 
> echo 0 > /sys/class/ata_port/ata1/external
> 
> forces the kernel to ignore the external nature of the port and allow user
> control of the port/device LPM state.
> 
> Would that work for your case ?
> 

Something like this should solve our problem.

Regards

Chaitanya
