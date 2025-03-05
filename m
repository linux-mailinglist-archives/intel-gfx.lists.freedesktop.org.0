Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E09A5028A
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 15:46:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9659F10E7B9;
	Wed,  5 Mar 2025 14:46:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a4sPW5Qn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A15610E769;
 Wed,  5 Mar 2025 14:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741186015; x=1772722015;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oJ24P6UCtdeUOEUXz6S3zxfsCBi3b+MvSggJfShcIJc=;
 b=a4sPW5QnnNU1qpZaAYOqS3d0j1WYEq4tBDvwBLInHuJME9xgTUkcz341
 TzedO8E+ekSlroHPYJv5jEiMBj45/X1+fFOUbxbe4+jD5AebV9+zHG89V
 K64SK+4DhRTDOA7XtPbKgZr0lKoZqeorXZvrLAP8a3i+IDqvGLV905c27
 Hti3tu+V/gGHnfyWeDIZ9Vf3N9zDmu3oRdT8SAtmmYIllCp9RUYO5UYu0
 yF3VYAzh60202kdVCBAiVQFrQz0V7nLV0tkmVrTNemIKcvJxEH94sa/RN
 o9wqLO5pOKItMyYqNcqeIzSbUptrGKumFnnv55JnSiFztCaQdBtS3/Yig A==;
X-CSE-ConnectionGUID: H3EGAeQOR1aY9oslZY/OcA==
X-CSE-MsgGUID: fMaYh3PmT7uRMtCb143F6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="52792681"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="52792681"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 06:46:55 -0800
X-CSE-ConnectionGUID: CqFR8+EQROWBfRLZo9x25g==
X-CSE-MsgGUID: Q5T/igJDQxqosxpjTy/V9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="118724368"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 06:46:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Wed, 5 Mar 2025 06:46:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Mar 2025 06:46:51 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 06:46:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g220Off4cTvurv6J5NmjPxlCl4AXKDnoanXQXcGabeyNS98N0AhWwoFf8PuBHcBS+Ipksn4vEbqRusw7S6lCR3b4Km8rrGY3HTEw3NqN3B9PMUcSpYoDD8KV105wa67fTm9pQBZSyaMfA3fQUyIuEJUQxKySxXGW1MmPc0ZhhvMN5V+rc5c8p0TzdguMAmdaD3MsdbDuWE0F9Gor4gSNQUtB7N3g8e6TnUDhKcunmrEBLTBIlY3qTyJTmVZs95n2pn5WjUdx3agqJK3WcnF6hpqDWY0wisFT63Y10/OEPIAHyE9EZjAM3XELQSeBgo194QkdEAJr3XPrrIobt8no6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HNTATZj7AnXmRPlOw2RVT8BUcIXt4+aFmqNQedKJVb0=;
 b=H+G2QqRjD7x0ZfDPJnARgT5Rm0saHC3qrYKH1QVoOJ8BQQPdRj+DJ9AbvZ/QFFVjn7i5V9ccusze0oxBrsHsqmYC4OsYJm89aY3wmOh9dclsUpXpbWSkhTl5A4njqqqF/Wk8u+k2BuGBhOhtpuyM4MD36hxVCT7DdmO6fXzV3s8TWSoMXmL3GQrDsf/f13Lysnn5vg8Hh7x0bpnH9MhGur7pWMsJ6owKh0y2Fvsc6DTMoN0JO/KsgXMLg+ZwCA9WkD0r83nTQc0QG0dLD1jbd8ARLvhA1Q0jE4Wz5ovhiav1I3hWTmygJR2ZJ0/B4mXSYx60ySMG8+aZHZAVh0Hgng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB7994.namprd11.prod.outlook.com (2603:10b6:806:2e6::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.27; Wed, 5 Mar
 2025 14:46:05 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.025; Wed, 5 Mar 2025
 14:46:05 +0000
Message-ID: <30584dca-48ff-46f6-b72b-243b1447cb46@intel.com>
Date: Wed, 5 Mar 2025 20:15:58 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/22] drm/i915/display: Use fixed_rr timings in modeset
 sequence
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
 <20250304081948.3177034-16-ankit.k.nautiyal@intel.com>
 <Z8dLXSTwoOFdOm7a@intel.com> <5f674c8e-3ac5-4e8d-9e9b-19e59d28a96b@intel.com>
 <Z8hJWsf51NBUQG9i@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z8hJWsf51NBUQG9i@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0095.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB7994:EE_
X-MS-Office365-Filtering-Correlation-Id: f8556bf2-fce7-4bfc-c156-08dd5bf474c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dzlSRmlRRU5RUFcrdlpjemxSYUI3aDRDa1U3Qm1hOG1ySVU0ZHFsbWJsWkd6?=
 =?utf-8?B?R2paZlk1SXc0V0x1M0t1dGNnRi9BMUZFc1ZPSFJLWmo1dWZhS0R6cVVqVi9T?=
 =?utf-8?B?KzVkYlZEYTR3ak5mRCs0dExOUjY3MitzYTJuZVRDbFBPZ2J1c2xtZjUvQUV6?=
 =?utf-8?B?R0JhYVprbU0wNmNMQWtTbW5ySG5zY28yR3RuVVRtdGl5QlpRU3Fxd2x3WW9s?=
 =?utf-8?B?cUd4MkJHaFd2cy9GODExVkpJZHNrRzB4ZUJ2NzRGVFFDTlhZSXFyZ01HRk1v?=
 =?utf-8?B?N2ZlNWtjdUkxbGZKTW9MNDJZelBuWnlscElVZkY5NkowdXR5bFR6bEVRcytX?=
 =?utf-8?B?MFpCSTZWL1ozU0ZCOWdQcEp5SU82TW5vQ0lMVGNJbHNEQVdCUURmajcydHdp?=
 =?utf-8?B?YmlDc04zL05qWWoxcExRTlNvVlZSQ1BKd3dxOUlpcm55VDFNVTBuZi9CK1l5?=
 =?utf-8?B?MDlkWlZDNUY4dHRIamtNNVJCcDFNZkNKQ2szVDA5azlOdDcrRmhjTkxtNmJa?=
 =?utf-8?B?d0FLaHpZNFFDMlA4Y3l0L2E4bytPTW8rSzRrOGlwWkR0VFBiZ256REdLUlNQ?=
 =?utf-8?B?a0p1NVJpWmxnTHY2ZDhiYURkVjJhVjhtTHdZRjlUWENaZWI0a0JlS1hwejdu?=
 =?utf-8?B?OURiUDhWU0p3dStlbFcrR01IWExNU2FSWVJTUGx0OW1RSTAvTklmcnJ4SHA4?=
 =?utf-8?B?QndxMEhiZU9VM1M2dzRUNFRMcGFmalM3dlZOWWkxKzlGMWpKN0E5ZUdiYjVO?=
 =?utf-8?B?amtDUUhxUFA5bkQzTE1YS0NFbzYrbmFkVVRWdUFYd2VFSTB6VlFLdStYbTly?=
 =?utf-8?B?RWNXUUFKeVBxNHhEdmJiUkx0SmZ2WjUvUEFYMDMydmdkR2lYZ3N0aGVBQVMr?=
 =?utf-8?B?Z1dkWUc3V3hpUnFBcFM0eXp3bExIVzY5cWZZTDhRTTNncjRDNk93b3NDK2lv?=
 =?utf-8?B?Q0pocytTdEE2em1NRXRQQnhqVHVpMzVFMFhTZ1lSNGRXdTM1TTdaeEYyd0FU?=
 =?utf-8?B?Ym5rUi9RT3hDTmgrcWhCU3U3Yk1CNmhGdDBYSDlXcjgyZDVKK1JJeXdiR1hv?=
 =?utf-8?B?M3VBY0dsMGJsdnJheFBNNkdCR0NQMTNueXU2WkRkby9pa0JSOXpNQ0Z4Vk43?=
 =?utf-8?B?ak8rRm9WODY5YmpKV3FGVkd5QXNJZzdySDIzM2lSNGN2MGZWeG1SMG9JNnVH?=
 =?utf-8?B?SExoMnJtMHFWdU5aRmtCUllNZnFkbXFMQWk3V09IZytVdnRLdlhIM01TYmhL?=
 =?utf-8?B?bFJqWHRKU0lWUUVWZUp4SWtyRHpTTlFxQ2JIQXNmc0Z4M1RRRUx0M09KWTZD?=
 =?utf-8?B?NTA5RXRZelZBeVNxSWhtV2tFOEpmVFlIOVVpaUNUSXMrcXk2QTFYalZ0SWpv?=
 =?utf-8?B?dlgrMDhldEcrR2JYMndpenBGMUd3WGJVZ3VHbkZBRzQyYzFMRkFNM3pFYzBK?=
 =?utf-8?B?RVhuVW1MN29WZTBpTU1veFNGSVowRlJ1SUNVaEc2Rzc0TU11UmJ0UnZ0WDFW?=
 =?utf-8?B?M1l3V2xBdjdHZW9kYzliVnNwSi9kdmpkb1JwdzNBQ0lHQXNwSWZyME56Ym42?=
 =?utf-8?B?RHVaRW5lS1dzQUlBbDZjS0RBVlNhQVFqclpKbUo0L0hhTzU4a2lsdGlsYlNX?=
 =?utf-8?B?QU5jVkE4VXZrUGczbXZXZlptN0VGd3JzbmtKSHo1THloUHZ1QnRvQ0RJbU1s?=
 =?utf-8?B?TTFlN1hkWVBjbkJ2RlFtRkw3TmJiYS8vYXVwemlHbThiM0JCdk9VYUgzdmFC?=
 =?utf-8?B?MllNbHE2Q1hkWHVPV0N5SFMzbkpLd2p3OFgvdFZZMDlQQTNodjFkZ3NkMzZZ?=
 =?utf-8?B?YkJnVCsrY0g2M1hwbGhQNThmWXNicThFYjhPVmdsT2NMTm4vNElVcFBmajRK?=
 =?utf-8?Q?gdwAwkh59KcEN?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UEtRZ0JLTmRnNVFOcklqL0NCMHVXNFVJd1dOd1NOSnFFTkJ5cGJTMW9UREhD?=
 =?utf-8?B?RTRKNGdDOG42U2Z6Wk5ybmRUNVlFKzNFcU02cG9RWFJUcFViUDN2cGdLVlpm?=
 =?utf-8?B?L21LKzZHZ0gxd0RJajlFL3MrMndldkcyOHFxa25tU29VTkU2cnprSmNqMmpN?=
 =?utf-8?B?MUd2K2crdWxjcXoyU2xoYXllMFAzRmNWa1Bsb3c2R2xlVkpiV2xMbTN2RE1p?=
 =?utf-8?B?WkJHeml6TjBTaXZPQ0pYcXYveUdFTkFZNVl5bVNoQmFhdEY2MERyWk5FMkg1?=
 =?utf-8?B?QkJjUjVVcjdNUzJhdFdObTB2VGdwU1d1WVVrOEIyWnNYSTB5aStYckZVdXpM?=
 =?utf-8?B?T3ovQW91dGVsUHhmRnFQd25ZZjYvNnI3ZjM0WitMZnVsQkFKbmRtRlBRY2Vj?=
 =?utf-8?B?N09ydmE1MXMvZUNMNjdLeTgvdnVUT2poRHNWRTVtcUVxYlM0M3F4UGJyMTRU?=
 =?utf-8?B?S2ZhbC91WFJYK2FmVi8wa3JEMUJKWFkxOWdsZ1ZQUVhaWVR0VldHOVMzZWdF?=
 =?utf-8?B?aXVYOU9kL09jQmJzY2gyV3dCaXprVXVneDhtRjVzL0RUc09Sd1ZzbU1GODhO?=
 =?utf-8?B?M1AxSnduUU55cFljaWNHTG8vaEVxcVVwK3JWNW04VEtmSkNNWjJWZHltNm9S?=
 =?utf-8?B?YVNwS0d3cWY4RW9JRVl5REhoS3ZIVTFlRGtObmdmRTJDN1gvaWhvZk9KUWpF?=
 =?utf-8?B?N2ZLb1BtN3l1bEtHcWpoQlVmRHYyUUFiSDd2dDRKcW9ENWVwTmd6b09oZWJC?=
 =?utf-8?B?V0pkT2FiOEVWVGRsaG5uWUgySE9lL3ZGV0xsM2VZeEljYzZGVVYycXdUc3FJ?=
 =?utf-8?B?QmlzcW92a2NnYUxSODJaTjdCVzVNajVKOWlocXdRNUphZXNZeURUMGZOdVBl?=
 =?utf-8?B?dEVTejZTM0xMa1NFNVVRTTBHczhVaEJNdHVtVTNYL1NDRWFBZHpSSmNEWFI4?=
 =?utf-8?B?YmFZYnNGVzVKOXE5ZnlTdEgzUWxNVEdTMjJ5enhZUGRCYWVjTkJ5SHVWSlZu?=
 =?utf-8?B?ZCtxYnpSenQwdWFlUTUwRk03ekpuUkFXQ2ZkTUozRWRwVDVOOHFtQTlhT05n?=
 =?utf-8?B?QXJ2eVV6Q1FVUThiTVdKM0dYNWtBbGtnZTZnZXdvWHJmeVZ3bU9oS3JYYW9y?=
 =?utf-8?B?Mzg2dUtxOFVlcnNaRVVTd1NWSFA2ZFFjNHZzWlJUUHMwb1Ruang2R3RCZ1dT?=
 =?utf-8?B?TDZkdGo4dVdyYWlPblJueWdGWG5PWk9ia3dxM1lJQzBKTU1seFlRUEUxbWZT?=
 =?utf-8?B?dU1XVVR3NkRsa0JuM3pHNTErdmQ2Ymd1MFJmNHU0WHVvbUs2ZGdYTmVjeERQ?=
 =?utf-8?B?cnBYL3JFcHZzdVdGeDZlTlR5VTdIMDliaEY5b0VaUlNjdU1STlRobFVjWlZW?=
 =?utf-8?B?aERXVDJ6SlBLOFYrZDVOQzREM2ZOQmRWOHprOTZBd21EV0U1RGVuVzB6Y1dy?=
 =?utf-8?B?ZG9HeEplcFFWUHlGb295d1RlbzBENGRrVkMvK2I0VEVVSGdsYncvdVlMYitK?=
 =?utf-8?B?eDFncUFlKytSdUlBSS9wUVB0MGt3NWZLSFo0S2I0RmJuUTMwNmFoVFBOWVF0?=
 =?utf-8?B?TXZWdlBIckQ3Z296SDlUaHJIUGw2MmJlNDZBN016alRqWmJTTCtRcGRLZ25i?=
 =?utf-8?B?amZoMlZQRmtPenVQYlZOam0xOU9EY2RHY2xSU1RJUzk4N0lDWFJ1UkhZSzlC?=
 =?utf-8?B?TWUvdENyL0IrZlpPaVBJQ3c1RlVwaXhZSzd2WS9jT0l6NmxQQzNmb0RUczlo?=
 =?utf-8?B?SXkxMnlMaXM4Tm1OUTF0YnZ5dG95OVQ3b2Z0Nk12SW1BMmx5Zkw0eGNsV0Vt?=
 =?utf-8?B?c084OVlyWTZRL1c4d2Q0b2x3T2xoSXA4RE9maDVpQ3R2QnVGYno5TUljRzVQ?=
 =?utf-8?B?Z3pkbDltSXQvR2tCbDZ4T3gwRGRrQzZDOWR1VlpDWVU5TllnS2RyTnhwZ2Z6?=
 =?utf-8?B?Zk9uTkdPaE1ZTFF5ek8yVmJiVUQ5UGxzdzBVeGZzcXdEcmJVL0sxaEFuL080?=
 =?utf-8?B?YklyVnBrV2VROU5uUzUxTzJDY0lZT1RkNzJ5YXdNanIyeDVjZG1wNGRrMDRW?=
 =?utf-8?B?Zm1CbWplbXd5bzBJa2lsUk1aeGFTMWxMRUlYUWVtUGJhdm1TejNYdDNod1Iv?=
 =?utf-8?B?L3dFQTYyc2oybkNROUl6VC84d3UrdE1BOUk4L2N2TWFITTc1Rm1UeWtQYkww?=
 =?utf-8?B?QVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f8556bf2-fce7-4bfc-c156-08dd5bf474c2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2025 14:46:04.9193 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +C/LghVVZcL7Q6tkp5/thhKZ7lJwfhbbr5NU6tUWWlqWs1LG/LmBlZn5yhFriQuq2IyT4S2QmOp48tSoS9dwMQE0H/8/LSkiOStMm5GIFiA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7994
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


On 3/5/2025 6:23 PM, Ville Syrjälä wrote:
> On Wed, Mar 05, 2025 at 02:11:21PM +0530, Nautiyal, Ankit K wrote:
>> On 3/5/2025 12:20 AM, Ville Syrjälä wrote:
>>> On Tue, Mar 04, 2025 at 01:49:41PM +0530, Ankit Nautiyal wrote:
>>>> During modeset enable sequence, program the fixed timings, and turn on the
>>>> VRR Timing Generator (VRR TG) for platforms that always use VRR TG.
>>>>
>>>> For this intel_vrr_set_transcoder now always programs fixed timings.
>>>> Later if vrr timings are required, vrr_enable() will switch
>>>> to the real VRR timings.
>>>>
>>>> For platforms that will always use VRR TG, the VRR_CTL Enable bit is set
>>>> and reset in the transcoder enable/disable path.
>>>>
>>>> v2: Update intel_vrr_set_transcoder_timings for fixed_rr.
>>>> v3: Update intel_set_transcoder_timings_lrr for fixed_rr. (Ville)
>>>> v4: Have separate functions to enable/disable VRR CTL
>>>> v5:
>>>> -For platforms that do not always have VRRTG on, do write bits other
>>>> than enable bit and also use write the TRANS_VRR_PUSH register. (Ville)
>>>> -Avoid writing trans_ctl_vrr if !vrr_possible().
>>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_ddi.c    |  5 ++
>>>>    drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++
>>>>    drivers/gpu/drm/i915/display/intel_vrr.c    | 59 ++++++++++++++++-----
>>>>    drivers/gpu/drm/i915/display/intel_vrr.h    |  3 ++
>>>>    4 files changed, 57 insertions(+), 14 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>>>> index 20fc258a4d6d..6f083c28c455 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>>>> @@ -78,6 +78,7 @@
>>>>    #include "intel_tc.h"
>>>>    #include "intel_vdsc.h"
>>>>    #include "intel_vdsc_regs.h"
>>>> +#include "intel_vrr.h"
>>>>    #include "skl_scaler.h"
>>>>    #include "skl_universal_plane.h"
>>>>    
>>>> @@ -3273,6 +3274,8 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
>>>>    				   const struct intel_crtc_state *old_crtc_state,
>>>>    				   const struct drm_connector_state *old_conn_state)
>>>>    {
>>>> +	intel_vrr_transcoder_disable(old_crtc_state);
>>>> +
>>> This isn't symmetric with the enable. If we do the enable just after
>>> intel_ddi_enable_transcoder_func() then I would like to see the disable
>>> done just before intel_ddi_disable_transcoder_func().
>> Yes you are right. But as per bspec it seems enable and disable
>> sequences are different.
>> For enable the sequence is: TRANS_DDI_FUNC_CTL -> VRR_CTL ->TRANS_CONF
>>
>> But as per bspec: 49190, and 68849for Disable it is: VRR_CTL ->
>> TRANS_CONF -> TRANS_DDI_FUNC_CTL
> I don't think that part applies to PTL anymore. In fact looks like
> there's no VRR disable step listed anymore listed. But I think we
> should have one, and the symmetric spot to enable makes most sense
> to me.

Good point. The step is removed for PTL, but can still see in LNL.

Makes sense to have it symmetrical to enable case.

I will make the suggested change.


>
>> Though I am following the spec, I am getting issues in the disabling
>> part. Specifically WARN : pipe_off wait timed out for some platforms as
>> flagged by the CI BAT failures.
> Hmm. I think the hardware should have swithed over to the
> legacy timing generator at that point since the transcoder
> was still active. So not sure what's causing the timeout.
>
> Did you have the TRANS_VTOTAL=0 patch included in those tests?

Oh Yes I had included that patch. That is one of the thing that might be 
the cause. I can get rid of that.

On PTL it wasnt giving an issue on local testing (with few tests, not at 
all as comprehensive as in CI)


Thanks & Regards,

Ankit

>
>> I can try the change you mentioned to see if it helps.
>>
>>
>>>>    	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
>>>>    		intel_ddi_post_disable_hdmi_or_sst(state, encoder, old_crtc_state,
>>>>    						   old_conn_state);
>>>> @@ -3521,6 +3524,8 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
>>>>    
>>>>    	intel_ddi_enable_transcoder_func(encoder, crtc_state);
>>>>    
>>>> +	intel_vrr_transcoder_enable(crtc_state);
>>>> +
>>>>    	/* Enable/Disable DP2.0 SDP split config before transcoder */
>>>>    	intel_audio_sdp_split_update(crtc_state);
>>>>    
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>>> index bd47cf127b4c..7dbc9b3bdbe4 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>>> @@ -1049,6 +1049,8 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
>>>>    		intel_crtc_vblank_off(old_pipe_crtc_state);
>>>>    	}
>>>>    
>>>> +	intel_vrr_transcoder_disable(old_crtc_state);
>>>> +
>>> Same here.
>>>
>>>>    	intel_disable_transcoder(old_crtc_state);
>>>>    
>>>>    	drm_dp_remove_payload_part1(&intel_dp->mst.mgr, new_mst_state, new_payload);
>>>> @@ -1326,6 +1328,8 @@ static void mst_stream_enable(struct intel_atomic_state *state,
>>>>    
>>>>    	intel_ddi_enable_transcoder_func(encoder, pipe_config);
>>>>    
>>>> +	intel_vrr_transcoder_enable(pipe_config);
>>>> +
>>>>    	intel_ddi_clear_act_sent(encoder, pipe_config);
>>>>    
>>>>    	intel_de_rmw(display, TRANS_DDI_FUNC_CTL(display, trans), 0,
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>>>> index c1387d3f60b2..97040ab9ed86 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>>>> @@ -456,12 +456,6 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>>>    		intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
>>>>    			     0, PIPE_VBLANK_WITH_DELAY);
>>>>    
>>>> -	if (!intel_vrr_possible(crtc_state)) {
>>>> -		intel_de_write(display,
>>>> -			       TRANS_VRR_CTL(display, cpu_transcoder), 0);
>>>> -		return;
>>>> -	}
>>>> -
>>>>    	if (crtc_state->cmrr.enable) {
>>>>    		intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
>>>>    			       upper_32_bits(crtc_state->cmrr.cmrr_m));
>>>> @@ -473,14 +467,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>>>    			       lower_32_bits(crtc_state->cmrr.cmrr_n));
>>>>    	}
>>>>    
>>>> -	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>>>> -		       crtc_state->vrr.vmin - 1);
>>>> -	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>>>> -		       crtc_state->vrr.vmax - 1);
>>>> -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>>> -		       trans_vrr_ctl(crtc_state));
>>>> -	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>>>> -		       crtc_state->vrr.flipline - 1);
>>>> +	intel_vrr_set_fixed_rr_timings(crtc_state);
>>>>    
>>>>    	if (HAS_AS_SDP(display))
>>>>    		intel_de_write(display,
>>>> @@ -614,6 +601,50 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>>>>    	intel_vrr_set_fixed_rr_timings(old_crtc_state);
>>>>    }
>>>>    
>>>> +void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
>>>> +{
>>>> +	struct intel_display *display = to_intel_display(crtc_state);
>>>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>>> +
>>>> +	if (!HAS_VRR(display))
>>>> +		return;
>>>> +
>>>> +	if (!intel_vrr_possible(crtc_state))
>>>> +		return;
>>>> +
>>>> +	if (!intel_vrr_always_use_vrr_tg(display)) {
>>>> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>>> +			       trans_vrr_ctl(crtc_state));
>>>> +		return;
>>>> +	}
>>>> +
>>>> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>>> +		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>>>> +
>>>> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>>>> +		       TRANS_PUSH_EN);
>>> IIRC push should generally be set before the VRR_CTL enable.
>>> Perhaps doesn't matter here, since the transcoder is still
>>> not enabled, but would be nice to be consistent with intel_vrr_enable().
>> You are right will change this.
>>
>>
>>>> +}
>>>> +
>>>> +void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
>>>> +{
>>>> +	struct intel_display *display = to_intel_display(crtc_state);
>>>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>>> +
>>>> +	if (!HAS_VRR(display))
>>>> +		return;
>>>> +
>>>> +	if (!intel_vrr_possible(crtc_state))
>>>> +		return;
>>>> +
>>>> +	if (!intel_vrr_always_use_vrr_tg(display)) {
>>>> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>>> +			       trans_vrr_ctl(crtc_state));
>>>> +		return;
>>>> +	}
>>>> +
>>>> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), 0);
>>> Should probably clear the push enable for good measure too.
>> Will clear the push enable, while disabling.
>>
>>
>> PS: I had tried both with and without clearing the PUSH enable after
>> disabling VRR, but the "pipe_off wait timed out" persisted.
>>
>>
>>>> +}
>>>> +
>>>>    static
>>>>    bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
>>>>    {
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
>>>> index 514822577e8a..c81f98f83b58 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>>>> @@ -12,6 +12,7 @@ struct drm_connector_state;
>>>>    struct intel_atomic_state;
>>>>    struct intel_connector;
>>>>    struct intel_crtc_state;
>>>> +struct intel_display;
>>> Leftover from some other change?
>> Sorry about this , it was indeed leftover from other patch.
>>
>>
>> Regards,
>>
>> Ankit
>>
>>>>    struct intel_dsb;
>>>>    
>>>>    bool intel_vrr_is_capable(struct intel_connector *connector);
>>>> @@ -35,5 +36,7 @@ int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
>>>>    int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
>>>>    int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
>>>>    int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
>>>> +void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
>>>> +void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>>>>    
>>>>    #endif /* __INTEL_VRR_H__ */
>>>> -- 
>>>> 2.45.2
