Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF809BB5763
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Oct 2025 23:22:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC4F010E855;
	Thu,  2 Oct 2025 21:22:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U5no/PUe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 934EC10E853;
 Thu,  2 Oct 2025 21:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759440148; x=1790976148;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=n78w0gMS/K8+fevCIxPGp4KuCWGB1SMDHaOYUfXKTek=;
 b=U5no/PUeurnYDhg2IrwtV39qoHbWajc1XMhhWwj3mEzlPGhE9WyT4u7i
 ufpF2EeHO3NQaFqBxZwTIJr+j13KeOpBtp2T6y5JfkmmkleVi7TyEmjb+
 ognmnHKjSv0sbC7KiUuUfT/J/UplnxxLKVtURrW0CEVjY/fEQj57Yc/tI
 0jwSDERUMvTq2fMazE7VzfPOImMCgFliaeRkLHBN2WBxQ8y1G+e7A0/Cd
 Pka+kUSlLLMLd2oM44wbRV/Jh0lO7e9mCaBNiOfzpvVlp92onIcVYHNHJ
 MCq71JISxZf0E2f9uWCH56H9MCnvuDKmI3KPogE1KdUXL/5v7XYtnOt9C w==;
X-CSE-ConnectionGUID: Yhosj2dARgedljXl9vccXg==
X-CSE-MsgGUID: XkXYDlHtRWa21Mar7Fvx7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11570"; a="49288881"
X-IronPort-AV: E=Sophos;i="6.18,310,1751266800"; d="scan'208";a="49288881"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 14:22:28 -0700
X-CSE-ConnectionGUID: tqUViUC7Q6uBw9mzCmuJ1A==
X-CSE-MsgGUID: wgaN/iHVTQ+R5A5Rg1HzmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,310,1751266800"; d="scan'208";a="216257511"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 14:22:28 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 2 Oct 2025 14:22:27 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 2 Oct 2025 14:22:27 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.30) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 2 Oct 2025 14:22:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jipa0P6uOow0X+vh6PL1cUq7WvLq+HqdzPnZ846EXs+uJBC/S9haK94JO9NSFtcQ3GUwb+gIRts/el+hPn2X3RSkX5GGHktUA+jcJMNNXYV8FzRDCR8YCOGeDhVBrzkpJ0Hic+njtcf6YA0LJ0c0K283FZB8rSU6elmOz3NaE7UGBL02WRZabdqW6dco7eBxLRDTxPgdDNaIr1ocZcjc1Rkw78LS1JhvwN2DVmQamQ7p5h0fjoXfAlX8+oQG3lazsA15+MS7QQL+ldb8Y7LIWyN3LCYsTME2nJUsKH1k7/AxoGpXW0eOF+uja8bMNu1qQWT7FKv9O57KL8xfTqGNQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wm8su6J2f9wZYzdqa+zqLAtilBICl03vU3Q/EdQjIBI=;
 b=AfHOULKcI9kBJPZYuMJedc/0DS3wasj6rOP32OmKPhCZUlFBkUT4sFfQG+CkkpgtGkX4ZkRtS7fxrkYBNCkXqvXv2g3OTBTyx0YzjCSmijH5jP/7aZc23DnTNPdFtqSWBqHHjjHVp1C5sJJlmyY5m2CiMWYY+BVjK2TzR3OJP1wZpcqvYRdqeTNaLqGZ27c4tPwbX5Lsfe67ko6M9R7XQ3AvpeDKZJpSjBZFE0ak0ydtwgsKt7bu2UkyoKiT9dAV5HOnYatBUapQaIYmU5gKpe8xbZ3R+ALhS6DoOsXQmkeQUnrMDj5m9806KOdyZi43CTXUVzlSdxPgs0KQVtEVmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CH3PR11MB7674.namprd11.prod.outlook.com (2603:10b6:610:12b::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.18; Thu, 2 Oct
 2025 21:22:24 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9160.015; Thu, 2 Oct 2025
 21:22:24 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <175935475311.384040.13013904055961672446@1538d3639d33>
References: <20251001-pica-power-before-aux-v2-0-6308df4de5a8@intel.com>
 <175935475311.384040.13013904055961672446@1538d3639d33>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.Full: failure for drm/i915/display:
 Enable PICA power before AUX (rev2)
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: <I915-ci-infra@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Date: Thu, 2 Oct 2025 18:22:19 -0300
Message-ID: <175944013912.1952.13588539910323325711@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BY3PR05CA0003.namprd05.prod.outlook.com
 (2603:10b6:a03:254::8) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CH3PR11MB7674:EE_
X-MS-Office365-Filtering-Correlation-Id: b4c9fa08-b6f1-4f75-0360-08de01f9c77c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MHpsaGNjRnozNStGcUVMbjZ1ZzFiUDFZb2JWd3BCS1JWcGRPZ0RPVlJrNHAv?=
 =?utf-8?B?TGk5cGJGcmtTa1R4d1JjbjZjL2VzMzV4NnhmdCtsRGF6a1ZKTjNPMG45S212?=
 =?utf-8?B?QkFId0Q1V2FzQ05tZ2c2dHhHNDJjS2dOSFBodzZoMEYxaGFxY3QvSk11V2FB?=
 =?utf-8?B?SForMVFIaU54RCszTGxXbWR0SzVUNjM3Z3BuQzZyb2hjV29xM1VuRkFoSTh5?=
 =?utf-8?B?QktkYmJVRThEeklla3lPWDhMMUhTbWpRK1AxdE9zRkFEb3d4ODE0MDNaUFJz?=
 =?utf-8?B?K05JWUlEUDZZKzJxU011a1EvVzAzQzRPNDlsS3RieGNIODFUd3NXU1FRZmxW?=
 =?utf-8?B?aFZVTFR4NFMxNXVBOVZFeWUwMGVzZzFxNktRazQxMUowQ1VsamVCY3pyQkNn?=
 =?utf-8?B?REZOL3JMaTIwYm5tV1AvN3pIeVQwcCt1QTlFc2xxYmJqQzJWYzg3YkFRd1JB?=
 =?utf-8?B?V3p2L3hDNmViaVZ1NWhUVTEvYTlOSS9LLys5WWtSaGx6VmF4YmRIMXlZYnRG?=
 =?utf-8?B?YW10TWpSSGZhS0xuOXNtS3VXOUltVTZPUnJtRTJlemVzS2lzS0tmbkpQNEZU?=
 =?utf-8?B?dkY5Ri93Qkt1ZEpPVkFNRjlFNmRnUkMrOE9YMFhMSEgxc00zSktkWWtXZTJU?=
 =?utf-8?B?cVc0aHZ0OFNyQ0J6akFjbW1JdmVYY0dnL0tLYWlnUitHQ0xKbjdoTlFia3lh?=
 =?utf-8?B?eUxLK2dNb2xZV3BwNmx1d0dDRVk5VXNKVjU3djJIeEdjczNKSjJGbXlNQUJq?=
 =?utf-8?B?RnZ3WFlZOUQ5RFZyb0ZoUW9OQzFnOFh4OFZwUnlVNkhiUFFGUHRwY1hpYWhz?=
 =?utf-8?B?SU0xN0NBR3pIbnhzckpERmZCcDBHb1V5TUxKSTJXdERiTlVZVkd3bVVZa2Vm?=
 =?utf-8?B?cHdLRmpPVHozWDFRc0p3ZHlMbHRWZDEzdlJBUHFFOGxQRk9ERUYvZG9zSXZV?=
 =?utf-8?B?b21ZR0E1eXQ5M0ZESVhnZ1NIbnZpTyt4azNqSUdGUVlzZlRzTVRhcDBuaHZ5?=
 =?utf-8?B?SGdpc25nNlN1NHNNT0NtWUVLZXVzN00zQjB0SkZpWERxNldCbTE3bWZxbjF4?=
 =?utf-8?B?NXExL01uVlN1M1BlQ1Jid0hqSnBYbFhNWENjUmxoTkJSbm41MGpaNFZ0UGd6?=
 =?utf-8?B?QWhZOVo1R3crZThBV3VMOFN2cUFTQjZHTVpPOHEyRUZMNzBWeG90R2JCN0xz?=
 =?utf-8?B?emRiRElaS001Qnpra3l4enRQeExDM2grdkk4bi8xRUVSdFBJQWlMb216VWt6?=
 =?utf-8?B?WldlbGxoZ2Ezak9KVm9GSUdrQTlOUzJmZkNjckp6eDdPc3RiQUNWazFvRlQ3?=
 =?utf-8?B?VDB1YW1oZi9jMWMzcG90RjBDdTZwdklzUXYrWHppU3VTV1pBeXdJSThTZnp2?=
 =?utf-8?B?elQ4UlpCUnl6R0NGOXZ4Z2NvemNid3ZOUHRsUHNCL3ZON3phd090NStZMXNz?=
 =?utf-8?B?LytIbmxzYWZ6SkN3ZHZhUk15V0VYUE5SazdQNUZUcklpdUpyQnBzVmZjeDdE?=
 =?utf-8?B?NktGclppN1RWQUNBZm9HVGtEcGo0aUkxdG9HRFFDNkFFa3dWM0VsYVVNdDRF?=
 =?utf-8?B?Z3UzTTZRTXVKZENVRG04dmRGbHlBUGNqSWc1Z1ordm1URmVoVDVPNUtqTnhr?=
 =?utf-8?B?NUY3eCt5a1ZZblp1cDk3R2dEUFhjMzlSdTZ5LzY1NFFvNVZRSDdnTk9mUFMv?=
 =?utf-8?B?S0hvOHRaeTBzb0JHTzVIMmVMcVlBR1FRMmhmSGt0eFRQeU9jS0ZBL2lWVTBE?=
 =?utf-8?B?VUVsYUtJTjRXSmZlOGRsdUQyemVnb1oxcG9RSHgyQmtPY1RKeXQ5Y0xIQStx?=
 =?utf-8?B?VU5sQlgxd2tBSXkycHJNb203UE1RMnhNMjVnMDRrVTJXMmdYOUdSVEtLYkJN?=
 =?utf-8?B?bDdTVzFqa1FwdU5JaTgwNGx6SnQySmJxa3YyTXc0OEdSS3c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VUlsOHB3aEdjNXBUYmN4VmN0NUFZc2JtMVd4eHBXM2N6WDNtekxKc1JFcmpD?=
 =?utf-8?B?em9ldmorOGpIUUNEU2Z3YkFySjQvUTJDdVRUT0xDd05kMlU1Z083TTdCc1Bs?=
 =?utf-8?B?dVNoSTdWSlF6YUdqTkwxYVcwT0lOelRpOXJTZitDUC9zbUF0MTFHdHZ5eDVJ?=
 =?utf-8?B?VHZZd1NhQkh5WGhucDRPZkh4emV6QUhjRDVXVll3NDhPUEZCNXlTL2hSdnI3?=
 =?utf-8?B?aTlCS1E2YlRoaVFwblgyb2hmS3ZzSzY3SE5RUmVXTkxpMzRpMitRVzZIUFRs?=
 =?utf-8?B?aDdGY1prVHhzN3ZUTmlhWFRnVHhUSFhtVEZ1bS9qMkRYd21rZ1RRWmJ5NzlX?=
 =?utf-8?B?Ylk4aUp0dWh0Q3htTE9ZRXVmelNMcWx1NEIzc2NqejM1amwrbXJzSG9iMVV6?=
 =?utf-8?B?WjZKQjZBaEpBQU5oRldGT3NyWFpUdXhId2lTaXl0ampDblhKK2RlWS95aXRL?=
 =?utf-8?B?ZW9IaXdUZEhMay80SUlPdlpRdXlDZ1RGbThqS1h2SXkvRUlOc3k4UTNneGk4?=
 =?utf-8?B?M2Y0YkFocit0dVJEL2hTRjRXMGZ0dUdwUng5WjZLbURYMEhFOUp4TEU3NG5w?=
 =?utf-8?B?MVR4QmRCQ2dYdnhVUjZacEd4UkloczJMQ1poQ29VeTEwN0wrR3czVjMvREtG?=
 =?utf-8?B?THhLbGFaeXNId2cwN0tqY0FZUjRMZXV1Zkt2c0tMb0szSkdodFNpeDNTZFkv?=
 =?utf-8?B?TFlzK3ZPRXNWUHRTNGhKVUZaSVVFYWMzUU1ITncxNzBhVEs4cC83cDdBRWhR?=
 =?utf-8?B?NVZ1cXZxRjBoTk5xeFNFZHZucCtvcW11dkVpTW11Y0VYUi8rUEwyR216WmIv?=
 =?utf-8?B?V2ovUnhSUG1lbkg1ZTZyeWNYTnJsQ0lrenFoQlRSYklBWlViZ1FGQURTL1NT?=
 =?utf-8?B?TlV4aHpPV0doWkoxWUIrK2EzamxTRVZ6U0tMSDROQkVCQ2MyWFcwNGpHUHV4?=
 =?utf-8?B?UnlSZ3JTWUoyUTNHdE5Gd3lFNnNQanRDQm9MMjlIQlJTelgxdXpqRkhwRFV6?=
 =?utf-8?B?a2N5OVVESXphMVo3Nkg0UUcycHI1OUlNT1RtanMzbkw3Q3NkQXY4L3ExMEVz?=
 =?utf-8?B?YW1JeDBhN1lRVmVWQVYrbUd3VkxuMENmWXREZjBWWHVOZFVxbXgrZHIyWHpC?=
 =?utf-8?B?TDV6cnBOLzIvN3owMksvY2NzTmRXN2JBcUpnZTdVKzRGaW9EWEs0amxqYzNm?=
 =?utf-8?B?VDRFWjVocnlRRWlqWGRaQkpIKzlha251R3B5YS9wYzYrenh6bmJ1S2swcnpC?=
 =?utf-8?B?UXVIUTNmbW9RODBCalJpbTFVb3ZESTlOQ0ZDOUVmcHZISzJaSmpQQjd4QTFQ?=
 =?utf-8?B?ZDY3dlFPVTIzUWhaenl1Q0lJZHZJSnNKY2RCcHZVWm1LTlNKdlRXekU5ZUhQ?=
 =?utf-8?B?a1N1WFhqRWU5Z1hWc2tVMGlwaVVOaVZBeEtsQm9vR0xEeDd5VWdSOFVEYXpB?=
 =?utf-8?B?a2d1WDF0RXZNdkpFbisyckwzZmY4VGdra1dBb2dNbUR3NTR0dkRHR3YvS3Ns?=
 =?utf-8?B?SEIzUmhpUVJMdUlBQzQzUVhoZjBsVzZkRXhSaWx3T25DOEFuR09UNGIvcXNu?=
 =?utf-8?B?UllYdHdSYWZEY1NTTFU1Q1Myb3BnMkJvMFA3elNjOUYxcUptaTVQYnAwaDd0?=
 =?utf-8?B?ektrWnhtLzMzemlmSC81dlhsNmVCbWJjSUJscXdLcm1vdS9XRUs2VW1yRkQr?=
 =?utf-8?B?VTFkUW1GdWg3a3hYaEplUlhiRmN3UVF4a28wcHJ6ZDZwTm9saTRKb1hNVXYz?=
 =?utf-8?B?MHZLNFlieEFBdHNLTnF2OFdTU2t0bmRRdkp2M1YyLzNQNnBiekdJYUo1NlhL?=
 =?utf-8?B?ZVZSZmRpZ2FUYnBuM0FMVVVaWlFwaHBlSkMrK2xEd3liU2RDVFNiUUhRbERC?=
 =?utf-8?B?WnhKcTV1NWhKNGRzWHhhZmJPbDhBSnp3ZURYeEh6bGtqbFUvV3o5NU8rcTND?=
 =?utf-8?B?bFZVKzZ6RGRMcFdjSWZPZ1U1TjdiN2tQS0FwK3NuYjlwVFVWbytmL0w2Z0hi?=
 =?utf-8?B?dkZYazdOU3hkc3VOVTdTeW80NnBVbmgzWlpWcGdKcFlhV2NpOGRmcU9NaDVG?=
 =?utf-8?B?UlJWbVBkcFFMQXl2SDJqa3JYZHNkN0ZmMUQ2QkRjSGhzVmFtWTNzSC9GL1p2?=
 =?utf-8?B?TW5VeXhaSW5GZm56dmJETDl6UjNrTFJOdmp0amluUUxTRldWVnVFa3IzUzE5?=
 =?utf-8?B?aEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b4c9fa08-b6f1-4f75-0360-08de01f9c77c
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2025 21:22:24.0211 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oVI04Mz70i5oLMJH7fZNVVC/FsQ0FYgEWW5FHTt0gXYoijm1eqO2bjJjqAi8I/2ZRgBgbjdgtx1yUWb9f+nMFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7674
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

Quoting Patchwork (2025-10-01 18:39:13-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: drm/i915/display: Enable PICA power before AUX (rev2)
>URL   : https://patchwork.freedesktop.org/series/154963/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_17294_full -> Patchwork_154963v2_full
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_154963v2_full absolutely n=
eed to be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_154963v2_full, please notify your bug team (I915=
-ci-infra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
> =20
>
>Participating hosts (11 -> 11)
>------------------------------
>
>  No changes in participating hosts
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
154963v2_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@kms_async_flips@async-flip-suspend-resume@pipe-b-hdmi-a-1:
>    - shard-tglu-1:       NOTRUN -> [DMESG-FAIL][1]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154963v2/shard-=
tglu-1/igt@kms_async_flips@async-flip-suspend-resume@pipe-b-hdmi-a-1.html
>

The failure above is unrelated to this series: the changes do not target
platforms prior to LNL and AUX power is only relevant to DP and eDP.

--
Gustavo Sousa
