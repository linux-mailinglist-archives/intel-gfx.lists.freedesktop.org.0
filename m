Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCFD93204C
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2024 08:08:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E81FE10E2E1;
	Tue, 16 Jul 2024 06:08:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mCnX3mPm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 518EF10E2E1
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2024 06:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721110101; x=1752646101;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EEjJSsSv4f6iIc/uUJIyVjqKjY4HBfhKJD96gx8lUx0=;
 b=mCnX3mPmUDBAIKpYjPn6Nu8+uNpAvzgWGH9OeCuLmE6BZGjCHMSR+4fM
 Db+li06L73qCDeuc71ga8gUAfPG9LeSNaiwY1n7NVwAEFyjYlq+p3jXml
 DcSnikmMPzG0HWKAN6anJYHurzfrZ7LILabEt/oquNPIKAz0lt5peB/p2
 rtyTcfJL/2j/cxcPwLHJeEK+FQg0xI4Ac8jf9e3Nr735KjRTUglTBJ6Ip
 C9jfIxEEXJse0FxwojjPQ1Lt3y+ppgSVXXx0AkplEsuKASHQJHZjKUFNI
 tOOFxkA99k3K8aGbE/phlDDVaexmi6grnQP4TX/cKre/KSXYDJnW3MLut w==;
X-CSE-ConnectionGUID: LIMCJBQ9QZe1T4E52+IQgw==
X-CSE-MsgGUID: Gglj2WKcRneYs7wmpqYBXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="35958575"
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="35958575"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 23:08:15 -0700
X-CSE-ConnectionGUID: x28XjijKRLiKQ4aqg+v2Ww==
X-CSE-MsgGUID: 92vRCK3ASkyUzzPl8bh5uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="49725398"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jul 2024 23:08:14 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 15 Jul 2024 23:08:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 15 Jul 2024 23:08:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 15 Jul 2024 23:08:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 15 Jul 2024 23:08:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V+cN/GkAKXP+lERElr/ODiShjykz88/GXDJNcdUlKC3gZiR2bWEoqWZa3la0hD9LCK/fQkjUZD/nRnj2BYmG/Cpavl3w0u4Z1ZE5yiOhQOPYxUbU9u2yhFOb3XQHn+AbunoDzLUSGRMaXBZUHeL3EUWa4pYHDxHKTpjgzcOV9V0UqOHdYHWVSgdHIF17OZn8jEv2lCbzeGr6zC+F7SIb7H5RE8YSBeZoVzZVsXRDMywB4Yfl5lOP+xpCU2wvy6DRXTw7LkdIkxJlsXlzXS7ZS0VUBl4WmK7BXDgPIcrfGta/LKfHUpd4coclbr4QjlVO5NAkhfWT4HRSW5/UTsCltw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P7PStthnixq2Bh4pZJfbHyZbGTC1qskG3GfiLSuFXQc=;
 b=MqC2Yw3c8v3/epf8qlFzmuAbLYHlx1Wck4jXjBMgdV2DAjDA1wnEPbXp+AgUWCaPgpkfkFgmACq8nX+O+kWm+yavWZ6Var8q2Md8Cz1MByEy4GEYMVTfhraXAcbkySBRrZo0tueVEVUyAtqc3fRRaLy1EPh2wqXABKH5asn7jAvv+QWdD7YmUwY6fa+wN/qOLEaPNUGrgLEA7wmE90xhd/S5wVQLXcvher67C/VUksCrlwBMpOVkm7L8X2aL2odFbhatV6ZNNa0DdTLfemGArDpgIyrwMSskoD28YTAwXicoObBWQSRqBk6pC7vLBAOJIx8QT6McxYUDUoKA75hEuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB6816.namprd11.prod.outlook.com (2603:10b6:a03:485::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.29; Tue, 16 Jul
 2024 06:08:11 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.7762.027; Tue, 16 Jul 2024
 06:08:11 +0000
Message-ID: <4c76c563-0c43-456b-9d08-40f77a465f6d@intel.com>
Date: Tue, 16 Jul 2024 11:38:03 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/10] drm/i915/display: Add member fixed_rr to denote
 Fixed refresh rate with VRRTG
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
References: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
 <20240709032651.1824185-3-ankit.k.nautiyal@intel.com>
 <IA1PR11MB63485D6582CBC903C5A2085BB2A22@IA1PR11MB6348.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <IA1PR11MB63485D6582CBC903C5A2085BB2A22@IA1PR11MB6348.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0143.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB6816:EE_
X-MS-Office365-Filtering-Correlation-Id: 5316b41a-385c-4cca-0b8b-08dca55dabb6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c29YUzlZRHVBMjhBTXp2cnRnQ2RFUWFtODJJdTFQQ1J6amFsOEtCNFdVRk42?=
 =?utf-8?B?bk4zZFJkTVJ1WUp1T09aTDdjQS9taUR4WUltUEsxcXM3VnFVMDM4UXF4OVo3?=
 =?utf-8?B?N21xMldrWm51YmxTbFc4bVpFdU1CNmxXVmsyNVVpV1U3WEJER3BMSmZnWGNQ?=
 =?utf-8?B?K3Z5Q0JIUnJzRGxvMnJ6Ym84eElIWHJ3bDVqanNtUXNyRmVYazBESkZrV2k4?=
 =?utf-8?B?SDlLR09xdjE4dk5jSXNwU1VhYVkvcTVhVzV5MGlLcUdySXNnZ09DdkVKbENZ?=
 =?utf-8?B?WmlnTHNXelpmNEdOVlBVYTZVbEdGeGcxb3BRUDkvWTd6dFdTT0RwcVBWMEZ4?=
 =?utf-8?B?UlhLZVpTelFzeVgwUWVrc2VjelB5anlYNlM5ZWJ5WkV1cElVa25DU2pybW5U?=
 =?utf-8?B?NzZFZVl0LzNSQmp1cFN1MXlDMjR2ckhHS3NpdytleFE2VFN0TGd2THNJeDQ1?=
 =?utf-8?B?YWRXR1BrS0JNNUJBTk1VbW9UbE14cGdsakpGZE5tRG1JSDhrL1B6RTA4Yjhu?=
 =?utf-8?B?S3ZMSmVRcnRodFFCVncvbTdTWC84QVVkM1ptN2w1S1h6b3hCN2Zmb1ZjOFpa?=
 =?utf-8?B?dWNJVXVvWXVoVmRWdGpxN2M4QTd0ekczeTRjMldpbVlIOVcwVUdoNnRhdE00?=
 =?utf-8?B?L0puYUdFa09aeEhiL0kzbjlUTEI0TWNIVS84UVViT3VmQ09ydHkxdUl2QTdr?=
 =?utf-8?B?SitTQjdla3BtOHBHOC9TRExzYjc5RWhMam9oeGUvK0hHNGQrOE5TN2JNVkpu?=
 =?utf-8?B?NmxoVDVYY1dvYk43MzFaK1JWN29IS0xzZWdjelB4RUhnbHBoUU5lNU1VWEgv?=
 =?utf-8?B?cUdGanZpcXpkbGNDRkFodW5heVhLSSsvUE9SdGc0MExhZmZrR0k2c2d3c0pE?=
 =?utf-8?B?U0FJVVRGWXc2d0t1WEcvaUpxd0dzeU5MSFlyYTlkS0NyUXU4NFFiejdYUGhU?=
 =?utf-8?B?WlNodlRDQUFWTXhnM3hQdEE0VURTcm53ZVgrRjA3QVFtUkwzZExWZHBUTVRh?=
 =?utf-8?B?c2Q1anlJWmNEb25mTGs3UUhXQ2dPSnZDbTdlRDZGTmFKUms4WGZJVmhIRXkx?=
 =?utf-8?B?Q0RKdTNxTXhwZjE5bm1yNGl6aVZQeVdyWTlRTU9pTlVUYnBIRzdzNGpNNWZS?=
 =?utf-8?B?MmRKZ1lGYVZkUTc5KzBTSS8rK0IwS2tRK1ZUUE9TWmNjNVloTFRZdWsxTjRK?=
 =?utf-8?B?bm0vNVN3TEdWajVqbnI1MENZdTdCb001MTBUcFprcWUzc2s5Ujl6OG5mSnRt?=
 =?utf-8?B?Z051cjAvaHFzamtPc05ZWVJwQllPU1JMcW9IZ0p2OTBCR3I3c1Q5MkoxdDRP?=
 =?utf-8?B?MjF4aVQvZGdGbXM5QTAvM29XSmFwQXQxMS9USTBPSnZGZGZWMHZNNGQ2Tllj?=
 =?utf-8?B?K0R5MUVyV3VTYXhxa01JbDc2alhsOTRsWFBrVWczNWh0VWJwa29rZG0zS1NC?=
 =?utf-8?B?b3hJOHlreTA1MkxBTDB3Rm8yMktkUmw0MkdrNGppdG5vSW5OdDgwUUhGY1kr?=
 =?utf-8?B?LzhOME5Zb1pueGxZS2JsdmpadGpmRU1rdEMva3h1UnNFL0xWVnpseFJ1SjRW?=
 =?utf-8?B?VzNVQnlpMFZUVmR6eTVPbG9uUnJxQUhkSFY4bXQ2a2xvenhyZjc1T3hKOFQz?=
 =?utf-8?B?Y2Vab3FvNXhjcTUwZnlXRnRmMDNJU0xuOEtSc1pOS0c4Um9GSnJNR1JVQjVS?=
 =?utf-8?B?c2FRVVBPd2l1LzZVaUp1eVJ5NEpZcUd0amgrb1BGTnlON0JGME9EUUpzZWlm?=
 =?utf-8?B?QnYvUk5wMFJHNUxHcXBuem1Jb04yeCtvQU9CdTdTYUlGczJXcm8zVU1tUzFM?=
 =?utf-8?B?eDVmbXpUSktidUtvR3Y5QT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OFk2cCtjZnlRdTdMQzYzTmFhWkR2TTd0c200MWhKK05zMSs0dUJRc0FXTUx1?=
 =?utf-8?B?aHV2dDI1UHBzUTFQajZKUnJxUlRVK28xaDFLSFkzUURHSCtNeHdNajlVNGk3?=
 =?utf-8?B?N3hLc3lvTEx3NWVybG1lVkU5UW1NY2xjaTNkYXdLODNqeW1ZRmtSY1NlazFz?=
 =?utf-8?B?YmxuT255YzRuQno1cWRMOU5EUVdYZTA0QjBKMGVzMis0YjQ3RG1YeDc5ZHdZ?=
 =?utf-8?B?QWZsQWQ1S1BrVjhtSVJtcFU5QW8wUGlUcE13MXArN0Y1Z0NyVlloOWJUSUg0?=
 =?utf-8?B?T2p1ZDdvRGZ1bEMzay9wQzNqWisyaFJ4WWVROWFsbTZaTkJGTDNxRS9nMmNG?=
 =?utf-8?B?NU1haEFnR0FoaXN0V1g1L0ZzWHhzbkNJNk1IaWhIMW1LS01NOEdRM1Rycnc0?=
 =?utf-8?B?QTJ6ckptQWVxc2FDL05VUktJK2VTVGZXalNCTUhUM1A3eDJDNFp6N0c3RHo0?=
 =?utf-8?B?NWZxRVlwbzRLZmNJQVVnYnJhS05xQTl5cHR3WXFyVjdMVXpkdk5iMi94dmNu?=
 =?utf-8?B?NFVsREtCSFNsSUVYUGR4T0orREI4Yzg3ZUVMSlFtYVVwNFF6elZZVFAvQ2lm?=
 =?utf-8?B?L1MxTngvd0RMaU4vWlNicHlOS2xRSWdpVzNwNzZ5bFNFN0FPS0wzcjNMNWJl?=
 =?utf-8?B?eCtDRjRhbkMxdFZiY3paekJwQlBXMzA4dzdHS3A4dllqTVlVMUhUSWkzQk5B?=
 =?utf-8?B?aDNUQTl4R2xpOFhGR2J1K2pCcjlBNUtyWUlYdjBiRmRMUll5S3FpK3RSNXNx?=
 =?utf-8?B?UEtiNTRIMC9wbWpWdTZkK0hVUVd4bWM0ZU0vSUVHN0tGZjByNDVZWStiUG1O?=
 =?utf-8?B?bm14NWpoLzlpYlo5T1JSTDNzUnpHNWFoUGhJdGo1T1piaGs3K3RyWW03Ymhl?=
 =?utf-8?B?bm1EdDE0ZWR0bldKUWEzbmV1SWFKcEU1Y1NlSDNtR1ZOV1ZiU2tYS2lSS0p1?=
 =?utf-8?B?VEQrTzlSd3FGVU5tMXl2TkhEK2RtRmVnZHRKYWZmbUJjaHgvQ0FPUmRaSHZO?=
 =?utf-8?B?ZUxVRU9qMkRrWFhSbHZYeXZ4ell6aTMyMFo1V1VHVEcwRkRrVWc0L0M5c2dT?=
 =?utf-8?B?bDZnMEZVS1pCTHo2UmdyOC9lMkxNcll3eUJnUloxTU8xWHc5YVBGY0xlQkIr?=
 =?utf-8?B?NkdZTStCY3VIemZPSmFiL2lhYmNJL0VKVUorc24zMFV5aEFIcDRYYXEzS2Jw?=
 =?utf-8?B?WDZFZllObFVnM3lTck1XMnJQMnZnZ1VUVjYrcGFOMlhWRVpXWnlPTzFSSG1u?=
 =?utf-8?B?dmJnQlZBV2p0T21KWU45K2VhUjg5UEw3amRJSDIzaDl3eHhuL1ZvZUYrYjBa?=
 =?utf-8?B?aE00dXV6R3BXQVJTNktvWktlS3VvYWhoQkU3RXhOZ3ovTnhhRnByRlM3bUoz?=
 =?utf-8?B?dm4vZ1VGWmprQ2dLaWNlSTBveFZUbHNFV3QrSjBsWmJnQVZWQjcvZVNmQ0Jz?=
 =?utf-8?B?RGtPc2RiRko2cHp0ZmsrMHRNb2lWVUdBMFNTNitEL0VackQycVNPejA2bCtN?=
 =?utf-8?B?MkE0aEw5SldLYi90OFFkelAyYURwbEFnS3pHczJUT1NlZHpqT2JTd2JRN0lX?=
 =?utf-8?B?UjlURk5ZdnRIb3JCeGZGZlgrM1NqOG4yWXIzVytHT0s1N01UTk9qMVJvWUtW?=
 =?utf-8?B?bGQvL2JxYjlISVR3YmwzQml1TGdXTGFQdnp4RC9sbk9tcFVyTm51bmJaNXBI?=
 =?utf-8?B?bTZXcElnT1pObnE5bTcxT3FQUEI3WEcwN1pHWGs2RzRlcEZJOHZZZ2EwTjN5?=
 =?utf-8?B?QXVzTXY1MWw1STBWMXJDeHh6QnFmakNLTy9NSkttdXpVcG95Sk8xK0QrUjNo?=
 =?utf-8?B?R3hDSnFSdzJLenh6TkZMR1FLVTZmWWNDSS9sT3RmV05tczhJRzIyclcraEVT?=
 =?utf-8?B?WjBsSWdxOVZYck1EZXJianhhVEVyTldVdDhoWlg4dnlSdjNKZWV2ZWdRb01i?=
 =?utf-8?B?YlZuU0pEeHdJVk4xeXEyTjNFbXNhdUZXTVZRaGY4MHhiNVRnNXFxdDNBMzBq?=
 =?utf-8?B?Si94N0d1RE5IV2svWm1IM3VsYzQybkp6WXByK2NhaFc2aDVBU0pESkdCV3Zx?=
 =?utf-8?B?NHNnVUI4Z2lvUjVJSTlBK2VuNEpUR2dYSFFmNm91Q2gvSUpwQlQrb1RuWCtJ?=
 =?utf-8?B?c3p6aG40WVRaT21NanJSNUtXSUpuakYrbUdZcXdab2t2d3JHUkYvT1Vpb3lS?=
 =?utf-8?B?L0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5316b41a-385c-4cca-0b8b-08dca55dabb6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2024 06:08:11.4516 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rsogZOcCVYAJQGieG9e2f/j5np8TByLtXSseeynGSAUo/+AJHWgx4vkNsyo9G4EDpZjJCyUxl2ULUrO2k7yljB8Sq3mZUyAfLV3BEFIqKn4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6816
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


On 7/16/2024 9:33 AM, Golani, Mitulkumar Ajitkumar wrote:
>
>> -----Original Message-----
>> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
>> Sent: Tuesday, July 9, 2024 8:57 AM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: jani.nikula@linux.intel.com; ville.syrjala@linux.intel.com; Golani,
>> Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
>> Subject: [PATCH 02/10] drm/i915/display: Add member fixed_rr to denote Fixed
>> refresh rate with VRRTG
>>
>> Add fixed_rr member to struct vrr to represent the case where a fixed refresh
>> rate with VRR timing generator is required.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c       | 4 +++-
>>   drivers/gpu/drm/i915/display/intel_display_types.h | 2 +-
>>   drivers/gpu/drm/i915/display/intel_vrr.c           | 3 +++
>>   3 files changed, 7 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index c2c388212e2e..85695dc2b2e5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -1004,7 +1004,8 @@ static bool vrr_params_changed(const struct
>> intel_crtc_state *old_crtc_state,
>>   		old_crtc_state->vrr.vmin != new_crtc_state->vrr.vmin ||
>>   		old_crtc_state->vrr.vmax != new_crtc_state->vrr.vmax ||
>>   		old_crtc_state->vrr.guardband != new_crtc_state-
>>> vrr.guardband ||
>> -		old_crtc_state->vrr.pipeline_full != new_crtc_state-
>>> vrr.pipeline_full;
>> +		old_crtc_state->vrr.pipeline_full != new_crtc_state-
>>> vrr.pipeline_full ||
>> +		old_crtc_state->vrr.fixed_rr != new_crtc_state->vrr.fixed_rr;
>>   }
>>
>>   static bool cmrr_params_changed(const struct intel_crtc_state
>> *old_crtc_state, @@ -5469,6 +5470,7 @@ intel_pipe_config_compare(const
>> struct intel_crtc_state *current_config,
>>
>>   	if (!fastset) {
>>   		PIPE_CONF_CHECK_BOOL(vrr.enable);
>> +		PIPE_CONF_CHECK_BOOL(vrr.fixed_rr);
>>   		PIPE_CONF_CHECK_I(vrr.vmin);
>>   		PIPE_CONF_CHECK_I(vrr.vmax);
>>   		PIPE_CONF_CHECK_I(vrr.flipline);
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 8713835e2307..875370219892 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1407,7 +1407,7 @@ struct intel_crtc_state {
>>
>>   	/* Variable Refresh Rate state */
>>   	struct {
>> -		bool enable, in_range;
>> +		bool enable, in_range, fixed_rr;
>>   		u8 pipeline_full;
>>   		u16 flipline, vmin, vmax, guardband;
>>   		u32 vsync_end, vsync_start;
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
>> b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 5a0da64c7db3..24568dae717a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -421,6 +421,9 @@ void intel_vrr_get_config(struct intel_crtc_state
>> *crtc_state)
>>
>> TRANS_VRR_VMAX(dev_priv, cpu_transcoder)) + 1;
>>   		crtc_state->vrr.vmin = intel_de_read(dev_priv,
>>
>> TRANS_VRR_VMIN(dev_priv, cpu_transcoder)) + 1;
>> +		if (crtc_state->vrr.vmax == crtc_state->vrr.flipline &&
>> +		    crtc_state->vrr.vmin == crtc_state->vrr.flipline)
>> +			crtc_state->vrr.fixed_rr = true;
>>   	}
>>
>>   	if (crtc_state->vrr.enable) {
>> --
>> 2.40.1
> For CMRR case, when vmax=vmin=flipline is there, to avoid any state mismatch, should we consider moving this get_config along with compute part ?

Makes sense, I missed about the CMRR case. I will add this as part of 
last patch.

Regards,

Ankit

>
> Regards,
> Mitul
>
