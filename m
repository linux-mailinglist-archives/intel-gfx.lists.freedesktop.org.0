Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE55B2A2E8
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 15:03:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BD9788FB2;
	Mon, 18 Aug 2025 13:03:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lxmxfR8J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D554288FB2
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Aug 2025 13:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755522235; x=1787058235;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=BV0ZSQiD9ouutMeJ0/ehmnO0h5EpPfrXMldBowJykdM=;
 b=lxmxfR8Jaia1C3Gc7ApUTBbW5TeLwTdjjJs26h81WqO3QKRUuCrywJ9j
 KgtmJG9/23tM9rsoICCHaJGNXZxI1Ns+oqne38Z9zPSnPlGQeGkb9EOPu
 jEi8oqQpqx+LFuzobxLsJuORfox126GKrwH8ZXFrna1bpcA6MDzv1Vq5C
 XZ9s9ZwQDgcJd03C2tpPtH8vH0mye8tUxuLU6+CdC3+tmNO2GLdkfOOU7
 UhK1jPOLg3Jjkjo/c32qQPDBOG4eku/5Ujtks4ZUl+xEDEUaaUKfCqOw/
 Oc93hWfINbCi16Rx/RoTJ2qW71Lr7NcIl1Dak+WlSX04F/XXekdJBhGl4 w==;
X-CSE-ConnectionGUID: CutxksqZQGSCzmktxXFlHg==
X-CSE-MsgGUID: MS2XfqtyQIqSbMPMhc0S+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="68453366"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="68453366"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 06:03:55 -0700
X-CSE-ConnectionGUID: wGkkgJzLQHq6pxkmJ0nhww==
X-CSE-MsgGUID: +quD5H8wSEuq0hLR6OKwWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="167073018"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 06:03:54 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 06:03:54 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 18 Aug 2025 06:03:54 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.84)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 06:03:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EzYiwI7ivbX8IZqX2iNsBUV4rl3dZyT6Yet6NHYiAzHlE7nj5iq4MWZrRxFsu16PTH2BIlqSRnYHgDx9ECDOXYtPYijDiEYwPP2tFwRxZirTIqG5HQT9BPjWCO7k5QtbhWUtp4+NKl98KQIdP75TN3u+OaXvUqFslMZJ5vyAAq8mDAB4xRrN7PafUcnkrYa2ctxRaHk/qQBdLwnN2O4kdRXOBcXLJXxK0CFQ/FWfPFEjeB8qPUbcAeKQ39YmEbELSef/ZHe25Z0eH0AzzHP9yrxqH604RJueht9Q0TPxdFdo5p0u+ygapwNwRVud9sq2rKxrEhT84PNAuU4I8qZniQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IXlGuZ+oj1TwEBY1KieTAugo9oqpBJtMxlySNZh75dg=;
 b=TDGKOZ7Dq976+sMBrpB7KjG4XX7/ziFK9OqlnFPULaTS13/i0BCoXCB+A6OPMS20X2P/UyjqyAQ25y0w+VyHurWAlvdu6rbZGX6jaUuzupb9PG4Gi1Gtjs4VKLWZXRIJzSzGlBxuVXMls9HekhrAfe6QErJsLh+OYECJYUqPVfHtoydk+llYUOwBL8KMIVpKUKo7jcCqUZ0ck+6YyN0InB8hLphH+DuevUDplI5uUDaNa79+xOJgHKyS2kPweFJAM9tdrLhoH9257Q9nE3BcuzlObOYX9MzFDcpipOwtUZg1exXyLma6nyT1nBhK568z/gCsRv80peCApcEQC1h+ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA0PR11MB8398.namprd11.prod.outlook.com (2603:10b6:208:487::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Mon, 18 Aug
 2025 13:03:51 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8964.023; Mon, 18 Aug 2025
 13:03:50 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250818071605.2541523-1-jani.nikula@intel.com>
References: <20250818071605.2541523-1-jani.nikula@intel.com>
Subject: Re: [PATCH] drm/i915/switcheroo: check for NULL before dereferencing
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>, kernel test robot <lkp@intel.com>, Dan Carpenter
 <dan.carpenter@linaro.org>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 18 Aug 2025 10:03:44 -0300
Message-ID: <175552222425.2359.8280537352019435466@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0346.namprd04.prod.outlook.com
 (2603:10b6:303:8a::21) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA0PR11MB8398:EE_
X-MS-Office365-Filtering-Correlation-Id: f8ce9d40-e342-4631-b36e-08ddde57ace9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R2VoSzhkNjkyNHhWQzdDUGY4WHVrUmU0MFFCUXIwdkZrRG5uZ2FGTzRibjNF?=
 =?utf-8?B?NCtra29hSTMycjlIZ1VKWFYyOGYwa3ZSV2dGUk1YeGVVOWRxcDlsVm1mR2ZU?=
 =?utf-8?B?OTA2cm5XcDJSbE9rek5PYWxzMkFyRzRPMGlMdDN1N1ZSUjV5MGRNNTFPNmMw?=
 =?utf-8?B?MjJLNWF6YUZQSlNybG0zVXo2VExFUUxGNDYwK3hzbDFNV24wcExnRWh6NzZR?=
 =?utf-8?B?L256ejZQZnQyd0liUm5PZUFFTWo0T2d1WC92YkxjcnBza0dSNFhrUG5yMGt6?=
 =?utf-8?B?NnZKdXUrb2lDYS9ndGIzRWRmb3NEa0EvRWwxTVV4OS9qNk9pYTRNaW5zTFJr?=
 =?utf-8?B?WDB5c0JJWFZGWFNDN3J2dnlrcS9zVUhCYWtIU3VWZVNtdmdzRlBZTkNXQTRa?=
 =?utf-8?B?U0oxKzBrV0Z2K0NxM2ROdXI1aHFkRExQTGpmWEZ3NjBpNVFuaHVmT0N2SDNR?=
 =?utf-8?B?d3RnTVJsN0ZySm9yWExHWERVSTdna0IyUm5QR241RTBSUXR3bW4vSUxMV0kr?=
 =?utf-8?B?b0lHdjJtSFpQQVI1TFlid3diQmxxSlpsMHovL0JHOG5EakY1VmJ3OWZSVVNn?=
 =?utf-8?B?RUxVZ3pPM0dZU2FGbmVjbGRVY09wcmhTNnJTSjV6VFppYnVrVktqWXhrYnhn?=
 =?utf-8?B?L2dWZkUzMHNIZnpaZG8vMm4rRWZaYXBkdzAvaDI1ZmpQcDhra0pSVHV1ZGYw?=
 =?utf-8?B?czZZaXhKSWhwMExaclNEOXdTL2hYQURFRzVHQ2lMSmhzY1JIekVLdU1xUjNu?=
 =?utf-8?B?bFlmZEtnTXA3aTByelh6dnZKNUI5enpFODlNZEcvMXJUWGJXV1E3dytEZEtu?=
 =?utf-8?B?REdDdTRMWGQ2SUJ0NzQya3JaVEFwaXNWbWgzNDJlemkxa1FhOStldEo4RFlh?=
 =?utf-8?B?WlRRTXhhV1JvNm4vTDZhc2kzc0VlQU1BS0dLbnc3NkhLQlBlQ0dMZlJFVjU1?=
 =?utf-8?B?UHdLUytNZ3lvZFQySVhOcW9WWExhOE44WEVuVmVlRGV0Ti9aQ0J4UGZjaHZm?=
 =?utf-8?B?cWxVT2V0V3NvWFI2OU5uMWI3dmNUUXFVdjV4ZE4vdUg3NWVESzFoQW85NHZZ?=
 =?utf-8?B?WnZCUmJqRlZkK2RKbGVqRDNob0owSlViV1lqSHI2aUd2cHUzVDZ2b2tlUjNI?=
 =?utf-8?B?RTBub2YxZlBkSll1VGErajBjdEFhTk8wR2ZTeVVYSmtPdUNrRmFYSVIxdmR0?=
 =?utf-8?B?U1gwQVdrUEgrVVc4Vm1WeTluZ0crOWtGanI3NVVhdWdmdjQ0OXI5NW5rMXho?=
 =?utf-8?B?YkRIdmFqa2hPbTNZbWRPMXQyaVBQbmIxZEQ3UzF1d1RmRkJsRVlQRFdZVERo?=
 =?utf-8?B?QTRpM2Q5eGdza1ZHVG5EakdWaWl4SDFlUFVuYy9FMVljSFhxMk5RM2l2bHFD?=
 =?utf-8?B?cWMwTHVYa3NKbFRBWFNCb3AweGh6cHY2a092Y0xIK0tlTUlHRTJwUEozZ3FW?=
 =?utf-8?B?dEtoS0hoR0hBVWdpdWVUTFJTc3JtWjlkV1c3RWNxZ2NheGM2bUpQWWNxUktZ?=
 =?utf-8?B?QlRyUldGRWlkbzFBYVhLWUw3NmFDWDZpeDZzMWFZTFBtRmRNckVyNXE2QU5i?=
 =?utf-8?B?eEJmVEl1OWZuc2g2WG5iZ3B2b1o5bm1QUFFZVkpyTzBPN2xSbElONDZDYU5y?=
 =?utf-8?B?aCtlVlJyNW50UnhsS01DaWYycGcwMEJBcXUwaC9oaDZlTXZsMmNOWU1pMzVm?=
 =?utf-8?B?QUhweXFZRDk5NGpjUU9XbXZzODA0YWtiOHIyLzk5RXZrR3lGMk03WVVHUEJp?=
 =?utf-8?B?ZHRSSUNzQ2d1YmdXQ3hRNmg4d0gvMmhwU241ZUhycjFGci8ydXEweEl2Nmti?=
 =?utf-8?B?VDRLcUNVaFdybXhRc01OU2xaVGJHVTZncDFNdXpxZGoyalVNbU91eHRWa3pX?=
 =?utf-8?B?NFlibXNZWXdRYStEQ000NGtRUGU0REQ5cG5KcFJ1MElYdkp5eGFDU3ZQUFNL?=
 =?utf-8?Q?J06GmvrHVLM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TVg4T25RWS8xWTdKZEFGYWN1UG50NkVmUWJpaDBKcTlUWW1VWGNITTNVS2Vr?=
 =?utf-8?B?dXFpdDF4ZzhsclpKLysxZEtyUGt0V1VPM3Bqc0lOYS8xYUpFK1ZlRG1STG9W?=
 =?utf-8?B?U0VHODNSc3lVLzd0L3A3b1Y0TjZWSTlyOXZ3NXp2ZWtSN080V05ITFZtWXpT?=
 =?utf-8?B?YWZzVEtPUDJaU3IvQ3ZrbFdERGJ3eFNWbmM2bUJqcGR3Zld4bFZud3J5U2pw?=
 =?utf-8?B?anBma2RJQUxtdmxYM2tpWmNwL0owcUJLRWxPOHh3UC9BVnBOQXZvRlBib3BW?=
 =?utf-8?B?ZmtZcFhCYll0YXZHa085a1NlVHV6YUU2aHAxa2hjYTlJY2U5K2xaQjJkYXlS?=
 =?utf-8?B?T1VtZTl3MTBnZjFhR0djaWtCTGZQQ1ByYjAzeFRsM2lCQmFlOGU1czVGaC9y?=
 =?utf-8?B?RGRiZ1Rvd25jbmRmT1J6T1ZWOXVZYVg2TG9MTkZEdngxOW9LSXpTaldlSWI0?=
 =?utf-8?B?Wmh5c2dvRWtTZGZzbjFsbSt0amV2T0d1QkNBRGpTK2RwV0x4aEtzYlhDT3Mv?=
 =?utf-8?B?N3N5Ym9rZ2ZFNk9sRERaQ01XNjhsN2ZZRmdQU2NtNVpYSGlnUm95OWVNZlBx?=
 =?utf-8?B?OWRFc2luQk1SbWFoL3ZkTksvMWZXdGpZMXlqbjFtQy9nVHNaNjF3U20wZkpF?=
 =?utf-8?B?ZjJROVdMVzQ4c1VZOWE1amNXNW5CalMrM0JoMFdvZWM3UUxqdmRLTW9LSXUw?=
 =?utf-8?B?a1ZWcmNrSkZTczMxNXZlUVJJT1hMN20wTmF0Q1hmYThoclNMZ0JuQW1aUHNW?=
 =?utf-8?B?QVV5Wjc0Y2NocjM1eEdFRGVZeFhXeGd5dlIxU1JpUmgvUEhodFJuQVg3eTZm?=
 =?utf-8?B?WHdxNE5GSEhLdFVMK3VZOVlmZ2J4U2pUTzJIRko2YmZZbVBtT0krbUxLdFRp?=
 =?utf-8?B?QmM1c21sS3Z5SFNWdlkrWWlYd2VxbE90SFp5MTlkYk5qWndTV3pVb1R0bmtq?=
 =?utf-8?B?QnJQTVp2YlQyT1lyQUdGam96ekZxRFNPZU1xZDFzZGtYZ0VWYW5rOEErYnR5?=
 =?utf-8?B?UlFqOGRTZHArVXNKQkxEQ3JORFlTTElseFJ1d1JlRFBGcDMydmZVbU5WMFV5?=
 =?utf-8?B?aEJnbnlsTmlyWUV6b0VJaUVxRGx1eUV3V09aRVpManNSMU1lbUdsUzQvdW1Q?=
 =?utf-8?B?RWY4ak1KQkZ4NWR5bFluVXZ5QmhKUzBHM1RZVWRtMEV1bXJUUTBIdzRuOVp2?=
 =?utf-8?B?alN3eGY4TGlBV05DUC9HOGVsZ3U3UzN4bDZmR3ZML0lJYktScGtyQzBKdWd4?=
 =?utf-8?B?QXVLeFF2cVJrQmVlMXo3TXN1NG5tdFlaekhocmVHYTRUSlFiTWlhS2dxQ0VB?=
 =?utf-8?B?ZUYxTktXSXR0OXBrUG55cVZoV1VvM2h5TGVRRXVWRmFiOUErT3RLZXcwTUUy?=
 =?utf-8?B?WTJIVERDM01Nb29vMGMrd1lZYzNLL1NtaGNtUnkvdWsvRFdmTmp1aXkyK2RS?=
 =?utf-8?B?RDh0a2cyL2RSTUV1K2xoQ3BMR2xmYUh4T3h4T1Q5YUdCRy8vc05QZXcydmVh?=
 =?utf-8?B?eHRkZmQyRTFOVlZsUTEwMVh4V1RIMEpQR2Y2NXJySXMrTER5dGZyOTh2T1NL?=
 =?utf-8?B?YloyV1ZlR0M1Vm9uZnkwMkFlUVU5bFlKTkdaa2Y1NVdZSEVjaXpHdDlqMWxE?=
 =?utf-8?B?UVRrOVJxakJEcTduUlVmQVVoTnBwdkpIYXJCMHNjaWZJTHQrREpNaEVJSXRB?=
 =?utf-8?B?R3YyL3AvTG1LSDFVZEpzQzVoVTgrRXNZT3h6cERrTG5IOGNZMDZaZG43QWlR?=
 =?utf-8?B?YVFENCthRlRsdXNQNXNtMVVRelJtV0hrTVRjS0h3WnZTSEtFOU9YMklNVXpT?=
 =?utf-8?B?ZGcxUzRybzZpRVdMajRQd3U2RW9Sc09uNjVJbFloWXJLTGlwZC9VSzZZTng5?=
 =?utf-8?B?WFlLd1dyaHhnQXhlK09qanpUSFhpVnJTcys4NHh4K2h5UDlYcTJLMkkxckNi?=
 =?utf-8?B?cXhVTzZFQnRBZEM5SGlrdUVHNkYzMlIyZWFyT3llSmNQN1Q3cEYwT3hSZ2pk?=
 =?utf-8?B?RFFxMkcwTkcwZlVYYTE1emVNdjJlRzg2ZCtYZnk1QkJrL0dlUlRBdTFwVGJa?=
 =?utf-8?B?VjI5TVl6SnFOK0xtODg4NUlBbWk2U2gvb0tQb0drcUMyTjVLU3ZkOWFzZy9Y?=
 =?utf-8?B?Q0NXbWNXTWJjZDlGVmdQR1JtU3ZOVmJ5UTFFWUIzQXppZWRPUmtzbG5oT3dm?=
 =?utf-8?B?SWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f8ce9d40-e342-4631-b36e-08ddde57ace9
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2025 13:03:50.3046 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f2F66Ow3nTtSDvncSFiwUta8PuHYeSQJ6plMtZIEbe1JFmyI6nUPXwkJd5KjmsZ2xGnTuoWhcsVrc3Z/+ZDsAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8398
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

Quoting Jani Nikula (2025-08-18 04:16:05-03:00)
>Both i915_switcheroo_set_state() and i915_switcheroo_can_switch() check
>for i915 =3D=3D NULL. Commit d2e184f8e16a ("drm/i915/switcheroo: pass
>display to HAS_DISPLAY()") started dereferencing it before the NULL
>check. Fix it.

Hm... Did it? I think i915->display will only give you an invalid
address when i915 is NULL, but I don't think any dereferencing will
happen, because of the checks on i915.

Anyways, playing it safe here is probably a good idea. I would just
reword the commit message a bit. With that,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>
>Fixes: d2e184f8e16a ("drm/i915/switcheroo: pass display to HAS_DISPLAY()")
>Reported-by: kernel test robot <lkp@intel.com>
>Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
>Closes: https://lore.kernel.org/r/202508160035.hmzuKiww-lkp@intel.com/
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/i915_switcheroo.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_switcheroo.c b/drivers/gpu/drm/i915=
/i915_switcheroo.c
>index 231d27497706..3a95a55b2e87 100644
>--- a/drivers/gpu/drm/i915/i915_switcheroo.c
>+++ b/drivers/gpu/drm/i915/i915_switcheroo.c
>@@ -15,7 +15,7 @@ static void i915_switcheroo_set_state(struct pci_dev *pd=
ev,
>                                       enum vga_switcheroo_state state)
> {
>         struct drm_i915_private *i915 =3D pdev_to_i915(pdev);
>-        struct intel_display *display =3D i915->display;
>+        struct intel_display *display =3D i915 ? i915->display : NULL;
>         pm_message_t pmm =3D { .event =3D PM_EVENT_SUSPEND };
>=20
>         if (!i915) {
>@@ -45,7 +45,7 @@ static void i915_switcheroo_set_state(struct pci_dev *pd=
ev,
> static bool i915_switcheroo_can_switch(struct pci_dev *pdev)
> {
>         struct drm_i915_private *i915 =3D pdev_to_i915(pdev);
>-        struct intel_display *display =3D i915->display;
>+        struct intel_display *display =3D i915 ? i915->display : NULL;
>=20
>         /*
>          * FIXME: open_count is protected by drm_global_mutex but that wo=
uld lead to
>--=20
>2.47.2
>
