Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 467CCAD702E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 14:23:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBC1110E80C;
	Thu, 12 Jun 2025 12:23:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eSJeYXNT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24F0510E80C;
 Thu, 12 Jun 2025 12:23:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749731021; x=1781267021;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=z8QkOXQ8IWsjb7dQ3ovU20reG6QDOGbWy+n0N6DbdLs=;
 b=eSJeYXNTtaRLXQzOpd/sGp3lMdcUyA7XLMijmILrzL/gtnol+/jz/J3+
 lSN+4/ZBfIViOXMreFFN7+q9mOFNWfsGhTjWTHJq+nXzUobVoRV+0jNN3
 mhG/LbbBcPRdtfup/aGR9/wSvJmpVVdGmCa+0e6bUIrF2GGD9igAznBmg
 wLbW94dWk3aJlz69oeNGwi83YNMJtc9UE3u81zUM/sjNE+jDKut7Ynu4i
 NtOYCvlhh62E9jrioHCrJ01krNMoM2uvLB1Q8qyw3amwSTfBFaJhiVKLD
 yGMTfJzp78rqc1Qi7E7Tp2jTX4hXAMIoYMuYCQncgGl/+uhfaIrINWzCy Q==;
X-CSE-ConnectionGUID: aiuWto6SQAiVDqFyA4AakA==
X-CSE-MsgGUID: KwEA50ioSkSsfgguAl3lxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="62557212"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="62557212"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:23:41 -0700
X-CSE-ConnectionGUID: FjfsmwUmRQGWi7d4rJrtNQ==
X-CSE-MsgGUID: CLsJcabRQ5ajL5mmgZxtow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="152650328"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:23:40 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 05:23:39 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 12 Jun 2025 05:23:39 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.74) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 05:23:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DIfklfF1I2cfXB/J5CCGNuRqzHXr1MseiHuWOeHh3n2L2iHZgza3d7scNptJPE3RWpsaFKPusS3hboJY55EhGGH1zw39xLZ21Ip2ayPDnT5rh4/2IM0o/80NO4XgMuHvyD5zkfq4t4OqS27kk4S2opDh+C8PH5gW5MKgx9fxXe/zj4o0IqgkW46/mAcKAnitjEsf5/zfIKABDZuJiBsQju2oFhCLDjEcVQYXRzQghDNj5qqfWdZOfarDfrQorXhFTOTuqEXDKrL6Ya0MshG2VU76nBqSzFY0VAoXUW3b85xBA6p2b3mKWUBvrtckDugOxSoObjBMNB2zLxh//JY54w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9mNGPDtl/p0UOfQbqGZOAmdWZE8Mu4/q18ews6mzsfg=;
 b=K3Ihm6UINddXbUzfk/d1fDJucxJVSLQuOiEo7qZBmE62KjO7BRwQNvDPNjjzLH0kJKIwMGDgTyuDhuPVqD/F5YMZQOG+urj/ihfes98ZUSW/Uq1ecjh1/eTtJAIRFOPdSV9uaSmHASnHsi9jV+14+X3R7C0n9hhyD/ChfJY0Vro4Xv7LJjGJNh4jZm8XjMb6kMgeBSe91GuSYJ7dLaZC1U0ftosU5nmD8xPksMD7MHzNjcPKFsz7FxRohat+dmpukO1S3NUjSnQryD/iRj355K5hUPDftpzEEjUwZKGnNuKV3h4iEQevkdwvtm/WADZAo2+gTBfef3pmYERnob4P8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ2PR11MB8567.namprd11.prod.outlook.com (2603:10b6:a03:568::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.29; Thu, 12 Jun
 2025 12:23:37 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8813.024; Thu, 12 Jun 2025
 12:23:37 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ef3559ac492408fed826102e0094b4e2ad0c3492.1749728173.git.jani.nikula@intel.com>
References: <cover.1749728173.git.jani.nikula@intel.com>
 <ef3559ac492408fed826102e0094b4e2ad0c3492.1749728173.git.jani.nikula@intel.com>
Subject: Re: [RESEND 2/5] drm/i915/plane: drop atomic from
 intel_atomic_plane_check_clipping()
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: <jani.nikula@intel.com>
Date: Thu, 12 Jun 2025 09:23:32 -0300
Message-ID: <174973101256.14553.5982943454853103029@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0154.namprd04.prod.outlook.com
 (2603:10b6:303:85::9) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ2PR11MB8567:EE_
X-MS-Office365-Filtering-Correlation-Id: 4cd33f0c-9a56-41b5-2bba-08dda9abf4de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|366016|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MlNmSTRERGI2cTBXdWRpdjhQTUovdHRBKzFYdnB4a2xVa0FRZmhESnpYbVNX?=
 =?utf-8?B?N2ZxNTJkZmJzbTlhOXJsdUllY2U1a1BKcWYzREhoT0dXeTVLQldpVUNzQkI5?=
 =?utf-8?B?L3d5Q2QzOS82eHlNMWpuaS9LdDMrNllKMk9NL011c0RJMlV3SlhZejNzMFdB?=
 =?utf-8?B?aGpCR24zcFArWWcyM0JXU05vYkp2WEJGQldVVEtUV2JLQmErVnd1bFdvWWx5?=
 =?utf-8?B?TGY4S0kweW8ydC9ZWXY4dWZWeC9pSFBicnkvRmZ3RkVWdGVjTER4bWFmT1Ir?=
 =?utf-8?B?dnhPeXJnQlZ1aDRsTWRzdEpCT3Z4WkVaVFFGazIwUDlYbjV2WUxGZ01veDZU?=
 =?utf-8?B?Ym4yZ0I2V0lNY0pXTG9BVERrbEhpMk0wTDR6MTcrYzJLVzBHaDhRejRQVEwy?=
 =?utf-8?B?NVYyUzY3SWg0SzlOd0V3aTBZdTAxcC92WDdYeEYvUGlVS3hUbmN4L1NNYUpt?=
 =?utf-8?B?WUVlbnFwNDg4amJ2b1NBdmNyc3FXZ1V1SnM3YWp6dzBuYkl6Y29nRzE2Q1BU?=
 =?utf-8?B?RTlSYVovTExzNWFQY2w2RUNqUmJSZ3NKNlM4WjBJV25xT1hVd3Y3Q084UUI5?=
 =?utf-8?B?Zy90eDBzVCtiKy9jMllidWYvQ1NrR0o1WU1sVnFtVU9HRDUxQnJwS3RkZVBw?=
 =?utf-8?B?N041R2J5OXhyM3RlZXRDa1dpdm50RkxyZkNoek56TGUzZHk3Z25yNnFhWjBY?=
 =?utf-8?B?ODJwdVVxeUkxNDdGeHdZZk5uWUowcE0xZnBiOEp1Nlh6QlBLdE5mbHAvNEpT?=
 =?utf-8?B?d2dnWVpQNDJaL3l0OW5KY2dJM3VuSlZCdFREZFduZmlwUHNBRG9XWm45dEZF?=
 =?utf-8?B?THBmK2J2emNxTTlEYSt3NkcyaVY0bUZxTXB5djlpWlB5Z3NTa2xnR3dPY0dG?=
 =?utf-8?B?VzZHKzdyK292ckpKdzVEaTVlemNQSEhQT2t1MkNVS3FVVEQ3UmZiclJvMjhq?=
 =?utf-8?B?OWNydnpmWXdYc1VOdEJEUW1sUUxoUzZ3ajhpQ25nWUh1MXU5VXpFajhWSk51?=
 =?utf-8?B?dit4eXY2bnhSY3BNejBNbzFMZWtmcmVZVWpDeUhLMkdQeWZPdGlOMllIUGVW?=
 =?utf-8?B?L0RyWGEvRDVXcFZuV3Y4am5rRE1XWGJaNURKNzFwMDVXZm9RaDZrTjlURXNO?=
 =?utf-8?B?U1BndUs1TU5MZHQrdHlXUHZ1R2dkUlNza1kyYXlMTlRlUmxSU2UvdWJ5ZStN?=
 =?utf-8?B?aktLeUhKbTdmVjd2ZE9xU3doN3J2UVJORVpiNkNNbFFrRjJxTUxUa3lXRU9x?=
 =?utf-8?B?NFpFZ0MzL1E5RXZRWnJnRjBzbmJiU0hpdHYvK0RMOFdLMFQ4ZFdNS3ZDeFFr?=
 =?utf-8?B?VjZPY2RjbzNHcGo0Z0NodVhNUUpJZExsRG0weFFwOFk4eTVtMHk0WlVGWjFO?=
 =?utf-8?B?RXdvUkpMVzVxTHBtWC9IRTc1bU9VMVhiRldGTzBEa0l0NWFJUFRlaEhLNzdl?=
 =?utf-8?B?cWpFMGhzMTZORUlwQzI0b3ZmMHpKSGNVTVo3YjgyNmtESVhPM1EzQmU2OUg1?=
 =?utf-8?B?ZFhWTXVWaG5CQjg2eTg5cTBINUo5Y0w4bE5HZFBwU2VFaHRjaFdpS2VHOWZp?=
 =?utf-8?B?SVdGaTJXUmpGemlPMmtZUlJkMGxiNUFCYk5ERnZWbWtZV09OdjhlL09nSFVH?=
 =?utf-8?B?bGVHUDFUbCswd1kxY0dPa2VlYTBYMTBKMHk5dHdCTnRMUHNscDRFNUxlVmdn?=
 =?utf-8?B?ZlkxOGdZN1VCQS85WkZIRWtwellPRkFiUmNMU3pnYlk3cXpTaWJCUElkZUNa?=
 =?utf-8?B?RCtqNVFyaEVIOTlKbzlhbjcySmJIZVhmNkkvbWtlOE1ZeGVuVUE3V085dlhH?=
 =?utf-8?B?Y2pUTXJ6aEhjMzEzZWtmdnJtNlBxRVdGcjlNeWV3NVk2S3ZhNy9zYVREbHF4?=
 =?utf-8?B?K1VVeEJhUExpVlZYUzlqNkNzNStuU2R4TXZyU2VNaFNOQWdkbVVteWlYYmZs?=
 =?utf-8?B?eEZ4M1RxaW8zRG8vSFVPTEUxSlhiYUZmQXFldHdxOVBma24xdjcvUSthZm5V?=
 =?utf-8?B?K0xzRHNpSGtnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGlOTkRycDZBY3J0Y3BDaDgrWG1UbWlMSVJTTkRwNFAxTjdpYjNYOHJaNUdZ?=
 =?utf-8?B?T1RxRDRRaVI5STZTbmJJZVlPSUtWRWgxOEIrM21qM1hCZk9veWhIRDFHVkx6?=
 =?utf-8?B?VWJOR1M5V0xoTHpYWnFVdDdFcSs3dGhuRUQySThjdDVTaGMwU1BnSENBMVli?=
 =?utf-8?B?NDJxSE1JNkoxTU1YMGpSYUN1d3JFN1VYNVlqcjFMT2ZoV0lRT3ZOR3JZTkpN?=
 =?utf-8?B?Z2JVSmlhWGJlZUZqSlBzZE9aS2N5V1lrd3ZQK1lhZVVieXBLVmxKVVR6eWJD?=
 =?utf-8?B?dEg1K0hVNC8zeXFSMjlFelBZanJDa3dteEkxUUkrSEc5K3Q5dDdtNWdzUFh3?=
 =?utf-8?B?TEU0VXhjMjdCWDNwSnRWK2dlZXhlazYya0lqaTBtMUN2eDNHdmR5eGxUZnFD?=
 =?utf-8?B?eENXSGdIZjNmRGh3NGwzWktNZk5kSXAxSjVKMllyS0RwNVcwVnNhOTJDOWRY?=
 =?utf-8?B?ako2S2dYQWFLTFgzdWhRdkMybFQ4OS8zdm8vbVJ3TVJrT3VEcmh2QlQ3U2xv?=
 =?utf-8?B?OFBuRGRGbjUzYXVKdTBTTkpMZ0VvdThVRTI4dVZ6T1BKUjJMNjFaYTdQZ2dX?=
 =?utf-8?B?K3hqVnE4cVVicldrc1ZBMVVEeG9JS1BkbjdNTWV3Vzc4WmVqU2xvbkpLM2ho?=
 =?utf-8?B?TW5USFNtMHlVTEViVzFyOVJHbVgyUnorOVhzVXB0UWZZTnh4aXdaV00yeDl3?=
 =?utf-8?B?RS9oN1ltNFRqSGp0c0VEakdKb056RGxMTS96bEtUN3FLMmcyNFpWaEdUQ0xX?=
 =?utf-8?B?OExOSDB1d2RpT2FvbUhvOTZTZE5uTWlGaDJ4UWw0bkpBc1hwaUxNRUJGeUpI?=
 =?utf-8?B?RHFuaGhyQTB5WmNwV2NjNnh4TnpsMzlYbDBEb0F6OFpVS2JUQ1J2YTI1cDhZ?=
 =?utf-8?B?ZDFzYnRaUDRQWjdBY3BMVDNZSGpQcDRqT0Z3WkhsQnRoR2xhQno5VXN3dzdT?=
 =?utf-8?B?MmczMGE0OVUyVXMraVIvenRxRUErYjY5eXh0S0ZsTzQ5a2JYSWt5UmNlYWRW?=
 =?utf-8?B?SXg3OFhvNzllNFZHMlEzbWVLMmpGU3pzWFZrY3JDQSs0OEY2d0Y5S3MzV3BM?=
 =?utf-8?B?dFZ6b0tPRkVvRVRPSFUzcHlnS0E5U2NJQ2w3QWRlUWdWOVFGcWJZa2k4ZnFQ?=
 =?utf-8?B?OWtKY2RaeWNiUndqa3ptV1B4VHdvMlpLSEo4SWxmTW4xOC92L1p0WVE5V1lX?=
 =?utf-8?B?d0o4VFk0NU1zTGR0b1kxTHZla2t0Vk8xZ01SUmh4dzgvZXo1VzE0THRCaWNK?=
 =?utf-8?B?anl2Z3djbGlDSEZRaEhaUHdkcEFKY0pXc3o3NDF5czQ1QUludSt0UFpWTE5p?=
 =?utf-8?B?QlNoUklCKzVqN0pBcnl1c25oSVEvNTd1TU10Z3lobVRKSVkxSnBxVHIrYjJy?=
 =?utf-8?B?MmtPNjhhVkE1aE1Ca0Z1MXF0SlBFWnBpYWxva1VjUlpQRjRtSnFjUkNmajA4?=
 =?utf-8?B?U044TGRVOWUxTFEyWkJmOXd3L0NUNmRNSFBvUE1tREIyS2NrS0NmcFZYVjVX?=
 =?utf-8?B?ZEJ3UGFYOEs0TGlmQ1U0dU5rWi9oYTNDMFZJd25EZDJSUDhZalhtT1NGaWh1?=
 =?utf-8?B?SitXdE5TeUQyUXJJMTk4M0dKS1MwVms2SVY3QVBzb0NyWXVxZGgwS28rVmR6?=
 =?utf-8?B?end5WEl1aWR3NmtXRHZqT0VpZXZLMEJXUUFTbFJOZUovckNEdDRNOTkyOEd1?=
 =?utf-8?B?MWNpeWNOTFZxNjBPS2JieC84MWkwZjhmbkEwd2pNQ3RONHBjbmFob0Q0T2Jy?=
 =?utf-8?B?S2UzTkdydExQN3diWEVzSFBlVmJwSWR2OVU2M1NEdHNjMUpkUSt1eSsvZWMw?=
 =?utf-8?B?WXhCL0lzNnlOTUd6UUNZT1pUWXhGWGhSZ2VKZnBGdU5ENUxWK1U2bnFOUzl5?=
 =?utf-8?B?M2k3RldQbC9NZ0pUQkxJa092MEhCUU1zTmJsaitaTHMzUDlvZEErM3JpQ2RD?=
 =?utf-8?B?NVZhVnJYVDljSnc5OHBHWWJKK2JUV3lkaWxxUGx2VTZ6L3hNQXJMRWVYOC9E?=
 =?utf-8?B?c3NyelFMaVc4OXpUclJsY3UyMEpBNG45eXNuK0xLWVN2dC9WVlRhTEw2TmJp?=
 =?utf-8?B?ajQzQ1A0WFRWTkwzMXhRdmdNS25TMzl3VmNUWTdDcUhySXpZZmVGdk14UE9V?=
 =?utf-8?B?THdqMG0waEFLLzJsaW9BeDFISlFVSGZsbG9leHRYbTNGeW9iMlpONjhMUFBD?=
 =?utf-8?B?MWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cd33f0c-9a56-41b5-2bba-08dda9abf4de
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2025 12:23:37.1993 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D+Y4xsm9ev4Ns5G16hGpXv1L9xDCPWw92aYA0dJ/EO3Ckmu+EK/AAvVByT4o4ta9yIqBto3uRRuX7h80PLBqiQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8567
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

Quoting Jani Nikula (2025-06-12 08:37:08-03:00)
>Align with intel_plane_check_src_coordinates(). The "atomic" is
>superfluous.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/i9xx_plane.c          |  8 ++++----
> drivers/gpu/drm/i915/display/intel_cursor.c        |  8 ++++----
> drivers/gpu/drm/i915/display/intel_plane.c         |  8 ++++----
> drivers/gpu/drm/i915/display/intel_plane.h         |  8 ++++----
> drivers/gpu/drm/i915/display/intel_sprite.c        | 12 ++++++------
> drivers/gpu/drm/i915/display/skl_universal_plane.c |  4 ++--
> 6 files changed, 24 insertions(+), 24 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i=
915/display/i9xx_plane.c
>index eba8eb745aa7..ac84558006c7 100644
>--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
>+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
>@@ -336,10 +336,10 @@ i9xx_plane_check(struct intel_crtc_state *crtc_state=
,
>         if (ret)
>                 return ret;
>=20
>-        ret =3D intel_atomic_plane_check_clipping(plane_state, crtc_state=
,
>-                                                DRM_PLANE_NO_SCALING,
>-                                                DRM_PLANE_NO_SCALING,
>-                                                i9xx_plane_has_windowing(=
plane));
>+        ret =3D intel_plane_check_clipping(plane_state, crtc_state,
>+                                         DRM_PLANE_NO_SCALING,
>+                                         DRM_PLANE_NO_SCALING,
>+                                         i9xx_plane_has_windowing(plane))=
;
>         if (ret)
>                 return ret;
>=20
>diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm=
/i915/display/intel_cursor.c
>index 27d86549af2c..198e69efe9ac 100644
>--- a/drivers/gpu/drm/i915/display/intel_cursor.c
>+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
>@@ -158,10 +158,10 @@ static int intel_check_cursor(struct intel_crtc_stat=
e *crtc_state,
>                 return -EINVAL;
>         }
>=20
>-        ret =3D intel_atomic_plane_check_clipping(plane_state, crtc_state=
,
>-                                                DRM_PLANE_NO_SCALING,
>-                                                DRM_PLANE_NO_SCALING,
>-                                                true);
>+        ret =3D intel_plane_check_clipping(plane_state, crtc_state,
>+                                         DRM_PLANE_NO_SCALING,
>+                                         DRM_PLANE_NO_SCALING,
>+                                         true);
>         if (ret)
>                 return ret;
>=20
>diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/=
i915/display/intel_plane.c
>index f079963c5dff..f68432d28d36 100644
>--- a/drivers/gpu/drm/i915/display/intel_plane.c
>+++ b/drivers/gpu/drm/i915/display/intel_plane.c
>@@ -983,10 +983,10 @@ void intel_crtc_planes_update_arm(struct intel_dsb *=
dsb,
>                 i9xx_crtc_planes_update_arm(dsb, state, crtc);
> }
>=20
>-int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_sta=
te,
>-                                      struct intel_crtc_state *crtc_state=
,
>-                                      int min_scale, int max_scale,
>-                                      bool can_position)
>+int intel_plane_check_clipping(struct intel_plane_state *plane_state,
>+                               struct intel_crtc_state *crtc_state,
>+                               int min_scale, int max_scale,
>+                               bool can_position)
> {
>         struct intel_display *display =3D to_intel_display(plane_state);
>         struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.pl=
ane);
>diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/=
i915/display/intel_plane.h
>index 1dd32586ac16..10a94b9a135c 100644
>--- a/drivers/gpu/drm/i915/display/intel_plane.h
>+++ b/drivers/gpu/drm/i915/display/intel_plane.h
>@@ -74,10 +74,10 @@ int intel_plane_atomic_check(struct intel_atomic_state=
 *state,
> int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
>                                struct intel_plane *plane,
>                                bool *need_cdclk_calc);
>-int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_sta=
te,
>-                                      struct intel_crtc_state *crtc_state=
,
>-                                      int min_scale, int max_scale,
>-                                      bool can_position);
>+int intel_plane_check_clipping(struct intel_plane_state *plane_state,
>+                               struct intel_crtc_state *crtc_state,
>+                               int min_scale, int max_scale,
>+                               bool can_position);
> int intel_plane_check_src_coordinates(struct intel_plane_state *plane_sta=
te);
> void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
>                                struct intel_plane_state *plane_state);
>diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm=
/i915/display/intel_sprite.c
>index db0c48d0c743..e6844df837af 100644
>--- a/drivers/gpu/drm/i915/display/intel_sprite.c
>+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
>@@ -1366,8 +1366,8 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state=
,
>                 }
>         }
>=20
>-        ret =3D intel_atomic_plane_check_clipping(plane_state, crtc_state=
,
>-                                                min_scale, max_scale, tru=
e);
>+        ret =3D intel_plane_check_clipping(plane_state, crtc_state,
>+                                         min_scale, max_scale, true);
>         if (ret)
>                 return ret;
>=20
>@@ -1421,10 +1421,10 @@ vlv_sprite_check(struct intel_crtc_state *crtc_sta=
te,
>         if (ret)
>                 return ret;
>=20
>-        ret =3D intel_atomic_plane_check_clipping(plane_state, crtc_state=
,
>-                                                DRM_PLANE_NO_SCALING,
>-                                                DRM_PLANE_NO_SCALING,
>-                                                true);
>+        ret =3D intel_plane_check_clipping(plane_state, crtc_state,
>+                                         DRM_PLANE_NO_SCALING,
>+                                         DRM_PLANE_NO_SCALING,
>+                                         true);
>         if (ret)
>                 return ret;
>=20
>diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/=
gpu/drm/i915/display/skl_universal_plane.c
>index 9c8dac97cc40..68f18f18bacd 100644
>--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>@@ -2327,8 +2327,8 @@ static int skl_plane_check(struct intel_crtc_state *=
crtc_state,
>                 max_scale =3D skl_plane_max_scale(display, fb);
>         }
>=20
>-        ret =3D intel_atomic_plane_check_clipping(plane_state, crtc_state=
,
>-                                                min_scale, max_scale, tru=
e);
>+        ret =3D intel_plane_check_clipping(plane_state, crtc_state,
>+                                         min_scale, max_scale, true);
>         if (ret)
>                 return ret;
>=20
>--=20
>2.39.5
>
