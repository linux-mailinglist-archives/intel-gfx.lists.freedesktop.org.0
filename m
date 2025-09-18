Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7ADEB83D92
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 11:41:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4564210E0EE;
	Thu, 18 Sep 2025 09:41:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YTFn20IT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EF9810E0EE;
 Thu, 18 Sep 2025 09:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758188511; x=1789724511;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AgPVIq77irHK5gjUdpXCIfSCPhXCGY1MHuN0h42fnuo=;
 b=YTFn20ITBTfAv2VHH/MFmsvf+RHNceiJ4nmmYZEkVcGxaPs07Z3Y8n72
 w3S8LYe9R/ahXPRJDEMVz3kMShVgjuBSR985XH3nbP7KyccCWgrkC824h
 YJtm4uStfpM3DQJSJXBOrbh+L1XAXjMgDYHZWm6i4VQwBrwwDhSLWdWtr
 l9s3UY2ierxkdq6e73qMFQntPWsbnGSBRdIX9p5S0uRI9WO+dw5xE79+p
 6iD2oAYfAfs8Kq1DPtX4QRMWJXPhV75UIKFG4dIoKQZw5rfv9sjJLpgsn
 e04y+qfv/GubxLH4/eQyQgh6swmXMB7N/AOwcWQZa1cNsBVb6m/Q+2EL3 w==;
X-CSE-ConnectionGUID: 7i44FTcjTQOMBQndnEtQyQ==
X-CSE-MsgGUID: adEQJdUkSVqwl2xJW9UjtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="60444535"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="60444535"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 02:41:51 -0700
X-CSE-ConnectionGUID: b8+95MqYSbi3V7He7ijFSg==
X-CSE-MsgGUID: 0uyzKIf1QN6v5ZMhJnQyUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="206442324"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 02:41:51 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 02:41:49 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 18 Sep 2025 02:41:49 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.7) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 02:41:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P8MnDSSZ0rc7hOpAI618o8eaUETlUl1r8FQiANkXGX1LgDy/UZlzJkMqEsIztF+FYgg8UFRQ+YePt3avNQb7yo92TiXlZInczAxhQvGFBWbnJA6Kldu1oAdjwoxjQkovXiCCLpUudpVe59Rq0DHdV89z0lXCBimRDUspjpdtDVC3xhfcMLW/NYbhZt4rFhpzxzhQYtLHjLdsZ2cEpbjFpcAvn8T/DpxEzF0fbFsIn5S/9MHnKHUVRqCzdS6M+YDWbBZpERr4rfRd9jXMbLS4ytyI4NcebBPgpsA2mWoKTQNT3mtVHkpF7zzY2G7LE9k5OKaCiO6jiq8vdRagsEO71Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yDoIO1h/HJVu+LvId1VXcDaL7o3UwWmeSLZ5avHjVL4=;
 b=uVdslF+Fw7JuPPYfJ/bX9lIEZ9MbrRxz2oHFLhSB6qq/gRcFmdlu+GFw9EG+YdimyuB0myqpWeIOqM8yd3GBatP2LUdq2h315/XYXHlhjPuh1Cs/GHpb+I7jdvYXkJbJ/12IkSiU2kwJ9JQcdisyjKBYGo8xfdXofh6ZsMSyQO4m/fVfDoHged3qwgry/oYpw3A8MywIJPJTjD533Wq+IkMqxrO0kvqZBQiFUGSVXIfGJOUO1CT2qV+XUU3B9P9vDFrvP4smizc72Gul3mMj+xeFvQdq1naL8Sd+QQ4rTKRFcDkhiX3mI89pqEvIWyl2LqDVWkLgY8NXddZ5Uu7uyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB5212.namprd11.prod.outlook.com (2603:10b6:806:114::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.13; Thu, 18 Sep
 2025 09:41:41 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9115.020; Thu, 18 Sep 2025
 09:41:40 +0000
Message-ID: <4495d198-c49f-429c-bb20-a95916addaea@intel.com>
Date: Thu, 18 Sep 2025 15:11:34 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] drm/i915/vrr: Annotate some functions with "hw"
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20250917203446.14374-1-ville.syrjala@linux.intel.com>
 <20250917203446.14374-5-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250917203446.14374-5-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0002.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:176::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB5212:EE_
X-MS-Office365-Filtering-Correlation-Id: bfc37a36-f254-4d2a-c463-08ddf69791ea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SDF0dkVaREpaSGxJWmtGakhTZ3hkdDQrQVhOQnVpT2dDV09jclJreitYR3Nn?=
 =?utf-8?B?blpJMUQzVGtQWS9RQVV5d1l0ZnQvZktaVEFNQzdHcUd2TEQzUWZ6Y3FBQzY2?=
 =?utf-8?B?d204YlhFdGpPWE1FbmVFOUc4bTZUZDg2cEZpdThKMW1lVDh6RERMLzdURGFa?=
 =?utf-8?B?UVJpODRGNXVWeVBGdEdwZmV6cERwRFk5anJzWjhEMDFrbDB2eGxQMGJLb2tj?=
 =?utf-8?B?b3o4T0lSQmszWlFZYS8zM01Mb21ldmV5L05pNDFSclhVWVJiejM5V05OUXJm?=
 =?utf-8?B?dmN4RFdscFB4bVREK0lBVm1vOXBrNmFlaFVNQTVneThOc2djVGozbUh4cDZB?=
 =?utf-8?B?YkZCOW92TmRXUTJINStFcEd1YUwxY3dLVVY3Y2RKSHNUVEh2VDdUR08wUkhM?=
 =?utf-8?B?aEt2YklxSEZxSEs3WmRxcWM4eHJCalNIQlJxVU8rdEQwUWtCMEIvTjhBbGg5?=
 =?utf-8?B?SWJiMnBTNGlyaGpvWFpGN3NJQmdTWlptTHBaYXVIdkRGQVRkN21ZUkpFcHdv?=
 =?utf-8?B?ZmJHMjlSa0l5cHo2Y0dpRXhSYTRpMm9jV2Q4OXZnYnNHSEo1UnV2N3h4LzBV?=
 =?utf-8?B?bElLNW1RWitvdXVOaGxMc2JrUmFlZ3lRWVBZWTh1anZvMk5WVnlFekZvcXdQ?=
 =?utf-8?B?ays4Tkd0R1JtTjJrYi9ZL3JDdzBmT0k3S1BQd2Q1cVg3TDRnMFdmVkhnRWx5?=
 =?utf-8?B?MEhPak51eGRHODhWU0NGVk1KRGhTVEZtU0pJbDJZL0pXSlNYc21jdnVJMktU?=
 =?utf-8?B?dml4dTQxMzF5TWRKOElJdjcxWWdlckV0a3lkQkx1Y1R2cVo2bENWUUF4a1Qy?=
 =?utf-8?B?YjNNZDgwd1RWemp3b2dYL0M4OVdoL0pTVVFRM0xzSllYL1hGUHVGMGcyaENK?=
 =?utf-8?B?eXRDTHUvYW55UjUwcHB4TVJ0Y2F6UjZwWHZzQXVwalBVeUQ0ZXkvcGFZcTM1?=
 =?utf-8?B?ajBDK2xLdVgwV0pXbnpBZmxmdUh1ZVdzNTRaNnJGTVc4YTFMVEZkVnpTaGVy?=
 =?utf-8?B?ekVSekUweFFlcG9NblVsMVZ1blJ5RWhvWFJod0dOZmFoMURIS25PMHZYaUJx?=
 =?utf-8?B?ZjNXa2hlcmdwQThTdlVXMU15SkIwMWFTd2toZFV0R0RERWJSRHAwMnVORXlI?=
 =?utf-8?B?MjY0ck5xRHRjSUxxY282LzB5aXFQRWZkQ2RzaWkwLzQ2WEo1NWJkVXNDMmN3?=
 =?utf-8?B?RFF4K2pRWHdWZmhkb04renlsQSsvTU4wUG9USE1DYkN2ZGsreWFHUFNSdGR6?=
 =?utf-8?B?TEpFaDhSVFdmeE9mQTM0bjd4UXN0d1IzZzZlT0hIcjJMM2tkSlA3aC9vK0I2?=
 =?utf-8?B?aTVYRWtIT0dQWHZTMURxQ2RiS3JGWlJOZk1JdktvdDhIZnB3NzN0NGFQZHVO?=
 =?utf-8?B?ZE4wNHpBd21iY3ZDQU03cTFOaDBTUFpYU3dxV2FFYVVwclpGTjJlbzVUSWNr?=
 =?utf-8?B?QllVYVZ1QjU0ZUFWeU9RNkVMd3E3V3U1SXVQcTlnOXNQNWxraUg3bklyRXg3?=
 =?utf-8?B?MlB0aEZMSHBIUHJlbXRKQ1loWEZyVnpSZVlDakEwcHNkNytuUGVPbFZqZmxo?=
 =?utf-8?B?cWRBeU80UXZwYjVhQzlsbTBmeFhzU3pIeUlMdVBNRjg5dG5DMmxxUGpIbW0r?=
 =?utf-8?B?c3IyZFBpV3pTbW5KRG0vTjhHUkE4ZGgya0hSaEh3ODlMRDNhVHBSTm5nVWZk?=
 =?utf-8?B?ZnRiN3hIL1JscjkxSE1qbVo0VmVBc2VCaUp5VzZqOHZUN0R6Q1N3NVJ4ZEoz?=
 =?utf-8?B?bEdpTHhWQ3hCekQvU0ZzZHpMaEFqb3RwMTYrUUNsY0ZlOUhwcW1KR3FJZmlp?=
 =?utf-8?B?TG42WmxaM2tDRUxjUFBoNm5kcUJ3dy8zemZLcmlzaHBGRWdkRFhNbjRXVmJa?=
 =?utf-8?B?QVNERmkwQ0dPa3cydHVhMWhDR2NqMUJKQjh3N1YrV0tJRk1xNG03Nmw1c2VS?=
 =?utf-8?Q?8EDWF01hIeE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RnBScjBxMmV6eDdRV3hyVDdieUswNzRXTWZtUDQ4aWVLVWNNVmxQQ0V0ZFNt?=
 =?utf-8?B?Zi85RkNUZHNvTDY2NnRxd0oxOE1QWXNiNWJEOXVveEUwbFN3czVVcFM1NGxt?=
 =?utf-8?B?dS9ZSSsxWGdWR2d0ajlzdTRvNlUydytwMEdBZCtla3MxMUI2WVJKZ1haNm9H?=
 =?utf-8?B?OTZKN0VYZDFLOCt3TEM4ZHpIMUlHeW5FNTJFRUcxWDk1SzRZb0ZJMWpVV0Vp?=
 =?utf-8?B?N2V6Sll1MXd3ZlhqZXBwd3M0eDF2OVBhZ2xLelVOQnhuZnNUbWYrK1Z2OU1j?=
 =?utf-8?B?b3VOVmR4UG9LaXdVR2dYK3FJZENUMG5wOXFrSDlvUEtyeVhKN2N3cDB5SzEy?=
 =?utf-8?B?L2l6K0tNUEx5RWxWejFlUzZGcy9WVFB1a3B6YzFPZnBFSlEvN1p3ZHBLV1hQ?=
 =?utf-8?B?L2NQWksvTzZQVUhxc3NUWXFmNGU3bXhDOXFrOUhsNEdaWjMraGM2UFZ1eDdG?=
 =?utf-8?B?am16RlRIaDZLUWNpdjJldzFBWThQMVcwU3JpV1pSN3p6cXpuQ1pRVnQvWXBj?=
 =?utf-8?B?YVo0dS9GYVVNdkd6bTJERkJ6bmRFcWVrbWtkZVNYb0dVcG1YWGg2VHF6ekIr?=
 =?utf-8?B?VkxEMDkxTGJOQ0d1dnhNWG8vZFk3OVVTbXorT2UvR0hVeEtRdG9tbDVLSjE5?=
 =?utf-8?B?RktSdFh6T2pQamFyMkt3ZGdxc1MrUWVQaVlIUjVBTzU4MGdzdkc2clJaOUJt?=
 =?utf-8?B?QXNFa09iaUxIYkxMb1pKNFNJNnFvL1JPM3dxK0NZQ3h0ZmJ5OWs4SzIvSDhx?=
 =?utf-8?B?SWJ1ekl5T0FMUllYU0NrZjNRaE5yb2JodEtUOWVZcHUrM2QzMFQxWXp4aUlJ?=
 =?utf-8?B?RnYyNG5yMHZ6RnFKM2M5bDV4VTdhcjhjNDdzeGl0WklKczJ1WnVyNUdzTERa?=
 =?utf-8?B?aDZJcmZtSm5aanI4L2lxT0k1OGQrS3c3aytFZXJOYnhZR3BRV0ZyR1RocFlU?=
 =?utf-8?B?M2pEQ2dtU3pvVHJkc1ErU010eE5jSW1rK2xjOFl3ZWRsUVo3M1J1QmNYWjVK?=
 =?utf-8?B?WnN2RCtReWtKNy9pVVBkcFUraDhscHZzR2NVQUdVTXpUbWFaY0NzcnpoeWR5?=
 =?utf-8?B?RXkyU3hPa3F5OXR6blo2eHRMbWZ1LzAzRkQvVTZZdTlYSmh3THVlY1d6RG5a?=
 =?utf-8?B?UjFIVXowQy9MdFBqU2pJbVJ4QXZsVEJzS2EvMGpMeFVjK1QxU0t3RzlLZnlz?=
 =?utf-8?B?TEdKMHRuN0NYTzlhbW1kVXFSWmNHU1BLSEJSZHo2NXRpa0lOcG9mU3FVNlNj?=
 =?utf-8?B?Rzg2RHNudDQ1Z01vRm5kS0gzb0dUMTdNaWR6RStoZEFTVmFUMFNBbHZ3RE5Q?=
 =?utf-8?B?WktteVVMSzJ2dExsRXVhNzJibHRWZmU1ZThDc3lDVDRCYUZRZmJtbXZVcUk2?=
 =?utf-8?B?Z2EwcWM4aWJNdEc4SUJmQm5QdlVFZGhCd1Ryc2JwbTZNR2RvTk1oVldya2RF?=
 =?utf-8?B?dUlhc29Sd25mYWJHSUtjYjFWMTdualhQeTBjVkYrOVBBZHBsRlRwSGE0aUdX?=
 =?utf-8?B?UGNIbmwvNnJyS244VXZXTDVjNmRaWVNqWllxZ3lER1paSWYxeUxYZFJPVk9r?=
 =?utf-8?B?Yi9KU3c4MFJFR051RUU0N3B3RDNVUkt5WDlQRmtuSmcrbi95N3lOVm1qc1py?=
 =?utf-8?B?WTBvbmJSK3JDNHZPbUEzTHBLUG9vK0RLVmxwWi9tZzhJRmFjWXhQM3h2R2VI?=
 =?utf-8?B?c3kyVmtTWXdHRkY1ay9ZWVVPaWNqb1NoWHlLNzhOTHJxR3lMNWNpLzRadEhj?=
 =?utf-8?B?Z0w4TnJmK0FhLzNuWnczVU5oUTZxVmQ3UjRucXd5SWNya1lraEppQmNUKzJn?=
 =?utf-8?B?eDdFNmhFSkV2bWdweEVDZGsyYTZaekE0QlFhL1FkNjhZdnVxbmI4UVE1QkdD?=
 =?utf-8?B?UXZxWFF5dTQzWTJGQUJCSWlBUk42cWpNQzl6ZUZGMVFjTjdWamMwbnV0REVx?=
 =?utf-8?B?WklOQ3FGRC9oZTdNaU11NWxjNUxQbCtBUzA3bzRzSmkzNjk1VWpzbFhzRUl2?=
 =?utf-8?B?Uk1xUWtCUzVpSWtOQnArczFwcWRwUFV5MEt4MGxQMWFMOER1Zmw1UU1jSExp?=
 =?utf-8?B?ajFETVUwZGczYzg2OWtNYWFuK0pWMGpYYVZma21CWjVsSUZuRis3UzdKYTlZ?=
 =?utf-8?B?TUJwSitadDZ1aFVkaFk4VWkwTnRIR2NmRWs2WFVTOEFicGt5NnRmVTIxVmw2?=
 =?utf-8?B?Z1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bfc37a36-f254-4d2a-c463-08ddf69791ea
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2025 09:41:40.8606 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n6g1ny/FG4XJvz/U7n/4W5ZDLaBicYj0TXHizT9jPuWgUqRuRVG6gKhRNbvZQNxB/wrq4Dre/hJiAllUuwdMskQeSMtdttLiT/iTeFsHmZU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5212
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


On 9/18/2025 2:04 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> intel_vrr_fixed_rr_*() return values that have had the TGL
> SCL adjustment applied to them. So we should indicate that these
> values are only really useful when fed to the hardware. Add
> a "_hw_" indicator to the function names to reflect that fact.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 20 ++++++++++----------
>   1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 9cdcc2558ead..71fb64c92165 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -263,7 +263,7 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
>    * Vtotal value.
>    */
>   static
> -int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state)
> +int intel_vrr_fixed_rr_hw_vtotal(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	int crtc_vtotal = crtc_state->hw.adjusted_mode.crtc_vtotal;
> @@ -276,24 +276,24 @@ int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state)
>   }
>   
>   static
> -int intel_vrr_fixed_rr_vmax(const struct intel_crtc_state *crtc_state)
> +int intel_vrr_fixed_rr_hw_vmax(const struct intel_crtc_state *crtc_state)
>   {
> -	return intel_vrr_fixed_rr_vtotal(crtc_state);
> +	return intel_vrr_fixed_rr_hw_vtotal(crtc_state);
>   }
>   
>   static
> -int intel_vrr_fixed_rr_vmin(const struct intel_crtc_state *crtc_state)
> +int intel_vrr_fixed_rr_hw_vmin(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   
> -	return intel_vrr_fixed_rr_vtotal(crtc_state) -
> +	return intel_vrr_fixed_rr_hw_vtotal(crtc_state) -
>   		intel_vrr_flipline_offset(display);
>   }
>   
>   static
> -int intel_vrr_fixed_rr_flipline(const struct intel_crtc_state *crtc_state)
> +int intel_vrr_fixed_rr_hw_flipline(const struct intel_crtc_state *crtc_state)
>   {
> -	return intel_vrr_fixed_rr_vtotal(crtc_state);
> +	return intel_vrr_fixed_rr_hw_vtotal(crtc_state);
>   }
>   
>   void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
> @@ -305,11 +305,11 @@ void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
>   		return;
>   
>   	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
> -		       intel_vrr_fixed_rr_vmin(crtc_state) - 1);
> +		       intel_vrr_fixed_rr_hw_vmin(crtc_state) - 1);
>   	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> -		       intel_vrr_fixed_rr_vmax(crtc_state) - 1);
> +		       intel_vrr_fixed_rr_hw_vmax(crtc_state) - 1);
>   	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
> -		       intel_vrr_fixed_rr_flipline(crtc_state) - 1);
> +		       intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);
>   }
>   
>   static
