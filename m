Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E206EA421CD
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:48:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DDC010E2C7;
	Mon, 24 Feb 2025 13:48:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hUPzjEEc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6DCB10E2C5;
 Mon, 24 Feb 2025 13:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740404935; x=1771940935;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ozXqG8p0vvjm2rT0AnuP8DC0O+ZI90NJf7U4bDxNuLU=;
 b=hUPzjEEc0QO+T88/7MC7xvwBgOWfIWlsId/hVUZ9m0W3ABiBycJJfq5M
 tIEFTrr04jdFtO/ar8mgFX3MGyI4ZEyJnrRsEnR6lBytHP2UeloFT+5s5
 PKqR8fhTKcvHXgMA3ffWY0pCsy+IlwRcyD83s/7X6n2wqfTHEJpJIj0XP
 hZ3q0byI/2tO3NzFw/XH5vEDncnKcXv/TmqDqGJUYFxpmV7Ut1PYARMf/
 nrnlC+ZK8DsBQ1g0NwBsjuTt/NDlhu18Bvrgz5fkR76t8YRnDOmsWi0rk
 pqKUSetz2At+5zsaEiuEePQZ98vaFBSXgaG/9IxzZmyRSptj3l+QFy+QL g==;
X-CSE-ConnectionGUID: CQ8lVxI5QyWPKY3idVkZzQ==
X-CSE-MsgGUID: /V6bZy3SSjazak/BqIsDZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="41003704"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="41003704"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 05:48:55 -0800
X-CSE-ConnectionGUID: oJ0Vz/Y3TrWoQc2mrmvGiA==
X-CSE-MsgGUID: BXOB5mq5Sz+uk2yoWZnANA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="116050448"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 05:48:54 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 24 Feb 2025 05:48:54 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Feb 2025 05:48:54 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Feb 2025 05:48:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v1sNXWBhC9uIG4mwkQ11+RZ59oCDMNyesLWrrcJcmqoxKDTwgPgFGYGWR3fADFgYsSmsu0e350CkW3uCYjh7EMXvpoBcm+yG0J53IojpFn3uZioK9JyGgzKZjY7YRwodNkFtCRTv5f9tbAhNDF55s8xAHvTEtgHcxmOtKqU4IaBbduMsEnrYQ1OzNCGVpJj2OOmRgKdznBRaGPNRtUsYwWN9yFWjnZfJnSHrzJr1UUXj+kU4B9cEBUOzozmRCeGZWulcJcmnX2qn1rYBpoCen2y+O40V5UEy8ppMeslA2qSufAHBD3caCPAmmg25yaBFMNsSQI+nVVR6n2aItkmlAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zUzS4hcaJ6wLZcyOgSHOB68RBZg2aSHbj5CHM4BKmCo=;
 b=R/dPYrejqeOMESM5Y/YknK3xy2YCzbKc7XtEW3urs5m47x3QLNtSPnC2RjnNOzJvqUclIOkamvRonymw68lLJ9uVYqP3o12Gu7kNIE7cE9S+72fmCXznHUDg0r332LQZIlr6+slYWKIJF7ojp1wEcYU3XcN9zD6NtEdvw9cJyayCQNddM5jhSpKthFyQP0TwFFpOV9rl2u54UwLzxgc3ETgSVDMB1teZ2Ou18a4Gdx21Sr9USPntH+Ya6uXWtBEHNszqNh/nZiPj/UrkvhV4mAzQzzkSeHKN9rekC8qaueMyYZgejg3kcFAvZ9hH5u+pThFPEM/SclpHKfa17AUC4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB6661.namprd11.prod.outlook.com (2603:10b6:806:255::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Mon, 24 Feb
 2025 13:48:06 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8466.016; Mon, 24 Feb 2025
 13:48:06 +0000
Message-ID: <c60121e0-fd68-4cbf-ad49-0b86046bc213@intel.com>
Date: Mon, 24 Feb 2025 19:17:59 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/20] drm/i915/vrr: Handle joiner with vrr
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <jani.nikula@linux.intel.com>,
 <ville.syrjala@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-14-ankit.k.nautiyal@intel.com>
Content-Language: en-US
In-Reply-To: <20250224061717.1095226-14-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0115.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB6661:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a7e9800-b271-4029-88b1-08dd54d9ddaf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cGhQRjRjQ3JkaHlDVkJ0Vmg0a0QyVTVsMEFOQ3ZuZytHdVJrMXVJdU5tSFJY?=
 =?utf-8?B?dSt0UWZFTzhuUVlRZkIxK2hHTzZ0SzJtUG94MmtCeTM4NjlTeEozTHpwUElw?=
 =?utf-8?B?bDFhd1BhMFpZOEZCamE3U0J3TXhWTEpRM0h0b01STDJuNGpQOXRqNnZ5U1BT?=
 =?utf-8?B?RWVyaTFIazNMaFdjUDc1WTJXTE9MM0o1T3hmbGxBRnNXVERMYVhZdnUwMHlG?=
 =?utf-8?B?RkdKdlVYVVNFU3NCK0ErTk5OemhFdlhFbUdZa2M3MmhrMEt6RklZeHk3VHRt?=
 =?utf-8?B?SVc1dWFOQzVWRDJ3bjZDWE0vMnFib1YzWWNvZ0p4a2F5dEdMZUZSVW9jNW9P?=
 =?utf-8?B?T2t2clVUY3M5aHlrZEVSTnNGZllsb2ZjdUV3UmhzbHdsbEV4bGh1cVdZcEtO?=
 =?utf-8?B?QkNTM2t4bVJNSWJ3MGxoWndvUjBtRk13ZjF0UTRGM3F1VlA2djI0cmR5amVk?=
 =?utf-8?B?a3N0QXc4aS9Pelg3cnJPTms3Ry9lRHZCelJ1V0hyOU53dHFITUxkem5JbTQ2?=
 =?utf-8?B?OVZSNk1zTWRnQWdwK1BOYUZKQWVOYVRaTEs1MWNFRDRPTWFUbzJEQmN0dWVK?=
 =?utf-8?B?Z1M4T25ydkxtRkV6eS9meDE5UzZDVklLV212aEpobGQxNEptZlBuSkFBdkVG?=
 =?utf-8?B?QkZ5Wi90V2tWa1hyU2Y2K2JRRDZPaWFKOTlwTmc2NE15K3hnYlUrb01HUUxr?=
 =?utf-8?B?cThlM3JSaUdYcjRUcWZnb1VMK3YzOWdZZjM1SCt2c0x6RjRoUVdaWWEyM0tL?=
 =?utf-8?B?VlRBTmRUcmtxQVg1TGhoMXhsbmY3UE0rYUxFYlI5SXZ5MG9NWktjR1hQVUdz?=
 =?utf-8?B?K3d3c3dVOXZZQ2IwSzd2NnlDOVlMN2plWGs1eVdwWVJlYy84ZTlrNHFVajk1?=
 =?utf-8?B?UFhTQXZVc3UyZHJ0L1Yya3dYMUdDVHB3QmlLNFgvUTVjNGlSRmM5KzZSOE5V?=
 =?utf-8?B?OTNRNHd4L2NwUXhqQnU1SzNyaFhXdXJLTGlZTFRrZnFGRm9RUEdMUHdrYXZQ?=
 =?utf-8?B?Snh4WDEraEptT29YbEVRaEM4eTk3Zm5xTkRMUXV4UGxqelpYTVFmeEJhdDZl?=
 =?utf-8?B?QytYRFZJQ1poWHFDdXp3Mi80QU0ySHIxMEVVQkZCWXhxNmVqSm13a2dkdWhX?=
 =?utf-8?B?R3RKbG5PWTBoWVZIWXdOR0l1WHpCVXBrUDVLSXlTY3pEZnVwb0plZHRSdmo3?=
 =?utf-8?B?RjVEVmNRZFJwMWllZDdBOHpWZlhqSyt3VDNvQmlNT0NQM0I1bS9lZFUvajdz?=
 =?utf-8?B?bUUrdTZDT28xRTdJdlhjazIzK2oxWStiUEZucDhuVWhlcGV5THFRd3d4NkM0?=
 =?utf-8?B?Vit1dFJqNC83cE5lSldiOURBMlVVbXQ0dmtKelliZmRiNDZRQlFXbi9jQlgz?=
 =?utf-8?B?Qjg0KzdZSlpVcjk4UWxnRnFkZkxRQVlCTnlUOXJzTmpmcUNuVEt6UmU2WTFC?=
 =?utf-8?B?MDFiMUZ5eXBQZ1hHNkhVSkpveDgreS9rWXcrSjVTQTViTVNJc2tuV0JJL01R?=
 =?utf-8?B?SGJ2TE0vak5GWkFhMGZZYmFadHlnQ1h0QmlPcytManE4NlFGRm9nQ0ZsdUd4?=
 =?utf-8?B?dU1LcDdFWE5yZEQ1d0o5S3NNR2FQQWJwYVFlVDNYeXRXZ0o3bWRDRVIvbU15?=
 =?utf-8?B?STN0eVhtU3VGRHJCTHRXNjA3bTZ3TjlacGFpcHhlQUdoS1I3RHVCbGJJUjhq?=
 =?utf-8?B?WEpsV2JTbjdtR2cxUUFlMDlFN0JZTVFVWSs0QlAzcFVsOXV2R0tMUG5QV2di?=
 =?utf-8?B?K3A3V2JUNmw1SUxUMlA1WlJTT2Y4azBCTXB1U3JpYnVMVGVBS1BlNkdyRFNt?=
 =?utf-8?B?YlhqYTVBYk9OK0JEMlFoZ2NyemFOK0xadTM0dUFSYllRZEtPemJoUW4yQkJH?=
 =?utf-8?Q?PftYU/uc1qMtl?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dXdVRG5QcG5PeVdhc0k2ZmFUMUtPQ1lJY3lub0ZJcEcwK2dySEg4TUtvdlZh?=
 =?utf-8?B?RHNPWG1idW5vTWduWndrQWozTHloQ3VObG5QUlgrTGtxV3ZsdWI0dDBvNHlO?=
 =?utf-8?B?ZlBZbEdyTXUrV1Q0Njg1SVFEVnRGRWFUcjF2Q0FpNGE2TUpwL2hCMjlvYkRQ?=
 =?utf-8?B?UGRMTXU4Z3lnd21OcGE0cFpxZ0hLWTRHTDQrcjdMdmFrVWgrTjdZSzVDRVJ6?=
 =?utf-8?B?cXBGT1I4ZEZXaU16R3Q1QnJYTDRodzIrL0M3dEs2WnZ5WXZ4RmsweHZCUVFw?=
 =?utf-8?B?ejh4N3o4MWN4MndSQkVKZkwvcTVRQWNZc3FRUjJYbDdEZkdhNUZmaThJMVNW?=
 =?utf-8?B?OWZmQUJibVdFUmxUYytxY2lSWDBMNldkaU1HQlZtQzR1RmVBbmxjOGd4TDN6?=
 =?utf-8?B?a0tKei9BRlErbWtXdmtGanZqdzFJeXhDT2Z6TTAwbmhiVk01UkJDVjQ4c2VB?=
 =?utf-8?B?TGM1cy9CVXd4WjVwSzVvVkZyblpSQS8xeDg1MUc0NThWOW05cVZMbmFFSGFR?=
 =?utf-8?B?RzVOd0Y4WHpHL1BzYmdMMmNaeExpaEc1LzN3ZG1yQkM1VlorODVycTZGQmYr?=
 =?utf-8?B?SCtEeUJSblA5VHArbDVZU1RZQlc0WEhjd3k4Nlo1NSs1TFBLa05sSUxNeVVv?=
 =?utf-8?B?SkdIZUh2MHFGQlBIbUtsRnBTOTc4VU9uc0ltMmtBN2R1ZGdMM29DOVZYM2tj?=
 =?utf-8?B?Tzg0SlJCMTh0ZlBjL2ZTR0ZrdTRuSU1xMHRSeXZCSlNjYnN0anpUZ1N1V0c0?=
 =?utf-8?B?YTF6Y0xqdW8rTnBTandjSVE5R3V1TGtPazFPRUl0aGJCZlVUUlAxWnM4V0dJ?=
 =?utf-8?B?ZVcrNzkzbDE3VC90YVlKbHM1L2JRS09yOWlCdUQ1WU9Hd2oxZU9EZm5YNUp6?=
 =?utf-8?B?ZkJIeGJXZFZmdjRJQTNkMkNDKzN2d0thVENIMmtRRkJNa2ovQVFpazRVOVBD?=
 =?utf-8?B?ZCtSbGF4NHU4ZW9wWnlxcGErMlpUNnNVdlBjOWYxSmZqOXlwL21NNlZ0TFFy?=
 =?utf-8?B?Rng2ejhlcTJoZTJHbk1jaWxBSUFBVG10YURMbE5ONjQ1SUpmU2VlUzZsVjdX?=
 =?utf-8?B?ajhwbjJqZGw3c29SUys0K2xHRjN3S21oaUkvWjlZOVAxRDZaa3V3RERLd2xs?=
 =?utf-8?B?NlhYUjVuMWJRZUhtN1RXUURZRkhOckNKV2tiMzlBdFYxT2E1U3lVZWc2YWN5?=
 =?utf-8?B?ZFdlSlhNdXBCYk9oR1FDaUJQQUZGTGJiMnRTejkvRWsyWDlCM3pETFhLUE8z?=
 =?utf-8?B?bXJ0M0xuT2ZiNEtiVkg5RlNiVmxCOGNVeHczTUlrQVQwSlJwUXBjOE9JUWhU?=
 =?utf-8?B?cURVMnp6M0pNYWV5U3dwUTRlVGhjZXM0cDRxL3crT0hvUGcwQ2w2R3FJaFRw?=
 =?utf-8?B?azRBRjlYcnNWSldFbnRmK3BVNGYvU2YycHcxQWJTN3ZFRjhtYTIwR1RheTl2?=
 =?utf-8?B?Vi9pbFZvVnB1eXUzb0pUTHBxcUxKYVJ0V3hlWW03dGloMHVCNTVxclVnRmZo?=
 =?utf-8?B?U0xRUnVybnZ5cmhvcHk3VGJUK3VyQ05aUWxmT2l2NUdIUmhTVmVjYmxVenYy?=
 =?utf-8?B?S2hnVXV2SHlUa3ZaOXJFZmZWYmszQnkvOC9hYjdzalVMa2xkQ3RXQy9UYmQz?=
 =?utf-8?B?VVZrZU94RURmTWlWTHJDMzBiZk1OOG5XblUvcTJUMlNqVHlrRUNDUkdxZUl6?=
 =?utf-8?B?Sk9EWitDYkphdUwzN3kyWDZWZ1ZXdkZxS0xGM3NiL3ZkZno4M3FNbTIzL3or?=
 =?utf-8?B?aGpDN1FZYU9WM2ZFRXdtaFpGYkRndVBMSTM2d3E3amZFb0dkQUlIOU0xWmw5?=
 =?utf-8?B?aUJxOXUvU2JpV3EzZ3Fjb05qeDlFQjBrajRPNkZhVFh3QWlVQnhuWklKSjRH?=
 =?utf-8?B?NVR2eWIrc096RFRmdFNaVUlDNlBzNU50ZERsUDRYZEVmVTcyTHFWQ3VzbjNT?=
 =?utf-8?B?TVBxYkg5NHZJU2VmdVVPY3VGem1uNUFiRmFGMmluV2VPNnJrOHVzOGRKQWVj?=
 =?utf-8?B?MmNSNjNZZkZ5bDRzUEVmWjlxUU1yOFZTcWdaRVdOWUNFQXcxcGJ5Rm5SVHFH?=
 =?utf-8?B?Q3FrbHE3aUcvOTFUdVVBR3JFc0N3Ym1DMC8zeW04NElqaElqY1daRlJlaERQ?=
 =?utf-8?B?b0UyRnVRbExoQlBBZXR5a0IzWVZJUnVGUEdHSDZLL2lvRmxKM0VEV0VHd2tR?=
 =?utf-8?B?akE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a7e9800-b271-4029-88b1-08dd54d9ddaf
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2025 13:48:06.3820 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kvBorZUl4sv/y0ySdab2V5EqZ/Wk1px7W2aXXtdo0wfMvcqKyzkVXsjfpXaeWwItHyU6JztWs+JTNBUHmH43UgbxPW1kZb7YPnG0yeFJT7U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6661
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


On 2/24/2025 11:47 AM, Ankit Nautiyal wrote:
> Do not program transcoder registers for VRR for the secondary pipe of
> the joiner. Remove check to skip VRR for joiner case.

Missed to drop this patch as mentioned in the last version.

Will work on this after the other changes are agreed upon, so this can 
be ignored for now.


Regards,

Ankit

>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 19 ++++++++++++-------
>   1 file changed, 12 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 45efcb57c77a..30fcd1e66a12 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -345,13 +345,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>   	int vmin, vmax;
>   
> -	/*
> -	 * FIXME all joined pipes share the same transcoder.
> -	 * Need to account for that during VRR toggle/push/etc.
> -	 */
> -	if (crtc_state->joiner_pipes)
> -		return;
> -
>   	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
>   		return;
>   
> @@ -443,6 +436,9 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>   
> +	if (intel_crtc_is_joiner_secondary(crtc_state))
> +		return;
> +
>   	/*
>   	 * This bit seems to have two meanings depending on the platform:
>   	 * TGL: generate VRR "safe window" for DSB vblank waits
> @@ -494,6 +490,9 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
>   	if (!crtc_state->vrr.enable)
>   		return;
>   
> +	if (intel_crtc_is_joiner_secondary(crtc_state))
> +		return;
> +
>   	if (dsb)
>   		intel_dsb_nonpost_start(dsb);
>   
> @@ -558,6 +557,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   	if (!crtc_state->vrr.enable)
>   		return;
>   
> +	if (intel_crtc_is_joiner_secondary(crtc_state))
> +		return;
> +
>   	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>   		       crtc_state->vrr.vmin - 1);
>   	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> @@ -586,6 +588,9 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   	if (!old_crtc_state->vrr.enable)
>   		return;
>   
> +	if (intel_crtc_is_joiner_secondary(old_crtc_state))
> +		return;
> +
>   	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>   		       trans_vrr_ctl(old_crtc_state));
>   	intel_de_wait_for_clear(display,
