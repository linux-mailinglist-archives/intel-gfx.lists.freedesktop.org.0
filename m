Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FB39FACDE
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2024 10:52:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B7A510E42D;
	Mon, 23 Dec 2024 09:52:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FwrBsMNA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C318410E235;
 Mon, 23 Dec 2024 09:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734947576; x=1766483576;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0Y2xRKXmIAJtP/R22jyePpTYIm5i/qiqtxYmgfQrnvo=;
 b=FwrBsMNAVADba3C/o3Ac9mHM7Mx91rsPHGZt959qUc1lNevu7zDOw+0z
 lCvkCVVNnJVLTKsK1JEfRmTQ6WHwHZPXOtsZYLurKIii80JGwbpMDT7xW
 xplNKzQm/IXAnBsIzlB0glgsBB/q5cQ36gL1RWT/ocqKPzXfZ5oRWdsLg
 ZPc9sW/KbMKRJGULHiDkgvV0WVk598mC4GRfjQ7EcwMgvz8JnpEFHFR4O
 d1BwwJcEF21Cp8EWFVKSVfXKiXns5M+f+Cp7WiFx5k4RxJvFi6ost8Ixo
 gX0kSr9qbkl8JKy7YRJfh7vfFRB2FdkDTnfRwRLbqlLnPCHEAb5h/liHD g==;
X-CSE-ConnectionGUID: CtaW6ms9QEKp8DUAyo9QnQ==
X-CSE-MsgGUID: EOyHkGAFTj67GcZMXwWewA==
X-IronPort-AV: E=McAfee;i="6700,10204,11294"; a="57871648"
X-IronPort-AV: E=Sophos;i="6.12,256,1728975600"; d="scan'208";a="57871648"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2024 01:52:55 -0800
X-CSE-ConnectionGUID: ITjMvI2/QlyEHWqpyVgFsg==
X-CSE-MsgGUID: arsjOM/DR9W4GEQge5etNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="122441196"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Dec 2024 01:52:55 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 23 Dec 2024 01:52:54 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 23 Dec 2024 01:52:54 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 23 Dec 2024 01:52:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VzrWP1FSHzobAoDv53Yudub4LW3sKGTz+f034a/PgIcVUUrjT2vZCM5uZFdQ3LsveFcbw65x0wmmKGw+HfnWGhrN/t7ty4vTCvL9pBnm1nlgbIC3UPXEgj8ZjPKxknSG7CJeTcLcvHaPvklftZs1LUipWCamFBot9Z31RCovlKbCdvhsg46eMPF41zxId6Jt6MhtR1uqjzJPsPc3/WDDpe37gMV71lKbfM1QhNFB4Goq0ysVDw8C89KxK7JAlSrNKpnZxfDoc8vUyYKUGP6qrvGoyIHOFU5T2IceWoVwyRZdjTkXv1L4gEnDnMPTxK9a2wk2gaKlS5iBXzIOYWUQhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nVGCKpiKx1+9dm4hjwK9ZjORCfmptSOzlnLN1t8RG4E=;
 b=p1gZeTKCDMIcxmRXUBnkD0/p79/mWyF13xSsFksJ7U8oSYXoUxzDF4ql57cO4CSf0mb74QGtotprLWTc/ZX4hwiz53MHt9McpoqQs4PVgzGmymGPOT4hgKiOad83gRgz1GHJl+acdh2og3MjSpxH4xWfgRjIhVgbe5Q97nDg4U+/1mytAEyTZmqHdzKwnUdzEZbv7QMrSkLJ/hs2MaHjqoTcpaxSzh4FUfZqMlOPVmNbcZCGC6kyCM+dwCqYa8dV3I2BgxlxM3ROm+SMjbRSIKjbkeN3xUsg+5jooQd/v5gy/3RAF8mMGYwqPd+a2nCToSHR8EpZI77Dgtq2xK/o4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO1PR11MB5203.namprd11.prod.outlook.com (2603:10b6:303:98::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.20; Mon, 23 Dec
 2024 09:52:15 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8272.005; Mon, 23 Dec 2024
 09:52:15 +0000
Message-ID: <bd0d1c00-da22-44a5-b545-161546baffc3@intel.com>
Date: Mon, 23 Dec 2024 15:22:09 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC v2 4/6] drm/i915/scaler: Compute scling factors for pipe
 scaler
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20241217180710.1048355-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241217180710.1048355-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241217180710.1048355-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0181.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CO1PR11MB5203:EE_
X-MS-Office365-Filtering-Correlation-Id: cd933960-4623-4697-dec9-08dd23377b42
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dHBjRklnRHdEQWxOajBqNmlTTmFpaUd1eHU2Q2V1TnRFQVNMTGdodnR5NE1z?=
 =?utf-8?B?WW4wclNSMU9TVDc3NFZ5cFdheC9XeUZSeUJVVDlMWEZVSGVwcGFTRU9qbXpp?=
 =?utf-8?B?di92SmtaaTVQb1JicnRpY3UzN2dJakRmeXlZR3daOHd0a2UrdzNUTExIMUJl?=
 =?utf-8?B?UFc5TFMvcHp1U0g5aVpHSTlDSDNxcXRoN1ErYzhtRzZjS1Y0S3JvYkduSDlW?=
 =?utf-8?B?T2VTZ0tuZnIrMFBYZlFJWTV6aTRrcVdjam5UNWdCVGxVUzFpeS93bE4vcGVR?=
 =?utf-8?B?a3RTVGJIMVFtOGFYUHplVUF3TXJmaFRGc3N0VE9KM083NDFqenlMVytKQ3lP?=
 =?utf-8?B?S0o3czVmOE9udFp6RG8vWGd5NEVQYjYwU0JtejBpYVhQR0xPYnV2Qm9pTXEy?=
 =?utf-8?B?RHZ3QkFaVXVKN1BUd3UzQ3drVnMzOUQzMXpNOEc0QVh5SWRqdUpwNmpzeUI4?=
 =?utf-8?B?S1Y3ZkpWYk81QkRvbDVjUlhpaTFNbXpiTjBQTHVSU2wrUm1ueGtIN2xXNzhx?=
 =?utf-8?B?QXZJL1Q5QW9rWmgrS296WGdDa0Qycng5MllJQXFhTjRDc1JSK2lWQlQ2VEdo?=
 =?utf-8?B?aUxBcjFNVXhlemNZWkpTeWIrMTBqRXZ5dWY1OFN0ZTg4U00wMXd5SWpRMzZY?=
 =?utf-8?B?eHJVZm1NVVZOdjRiMlhxTEorUUxwNHkxVlhlOXNXSU9VbFI4Q0FXMkhYaXdE?=
 =?utf-8?B?dlFCVFR1VFhSdWloalBxV1F1YUdmb2ZKcEFnUThKNW5WZUlKK2JhZVhjUzhJ?=
 =?utf-8?B?UDl0SGt5Z3ZncjhYU1lnVHMyUm51aDJqYXB4M015SEtDMklISTFwY29XTlJa?=
 =?utf-8?B?S29zSjdrSWhLSXFDSVB3bWcwZTZUUGV3N1RpU1g3bE5RVlJlREJicllZM3RF?=
 =?utf-8?B?QTRWRjE4eXdFRDNTL1Vid1BldkpjMUQyZ0pueGlnMEJjSXY5RndpVm9RTksz?=
 =?utf-8?B?Zk9idHZxYThpcHUwaTJqUFZGUUlhV24ydHQwMmdSd2dLV3NWSHJ6d2JERHVW?=
 =?utf-8?B?SnluWGIzYjlucDQyWktLalNGWEMvZ1JKMGZpWG80WE1LVzFCVGZ5ZjFDN3Zh?=
 =?utf-8?B?TjJiMzY0bCtWa0tzMGR5aC82MmZXVUhrT1NDSEN0MzdSc1YwdmMxMnRzTkh2?=
 =?utf-8?B?ckpwc2NVVGpwYlh4dm1xNjk0TjFqM1d5M3hRNDZYUEJoVnFFRmtHd2VLL09X?=
 =?utf-8?B?Qk9oYi9Ja3VqNFVRWUZCSmIwMGZKVUZNOXV4MWRVUXllUkdpdm1RQnlxL1pX?=
 =?utf-8?B?NHRkVjRILytpVmVNakVabnc1a2JXZ21KWGpBTlZZODFWQy9iOWVBUE12RVBh?=
 =?utf-8?B?eDdNOFVsMzZ1WXA5ZWR6Q01CMERucWVqejhPSlQ4d3VRZThpWForRTcvTUNk?=
 =?utf-8?B?K0pmOGJUMzZYUk1KVE5sUHR1NmIrWXZBVENaNDl4NkQ3eFVWRGxwYnk3amNS?=
 =?utf-8?B?Vm9SV05NbmdLQkdYVzM2ZzZxWi81ZGw5emVrdlJxbDRSd2t5TTFyMHdDL3Bu?=
 =?utf-8?B?T0pXZ0tCRXhiQ2EvdnBnV0NmbmJob3JUMlRrUi9LU3lZUVhqS3RoUlBmY1VB?=
 =?utf-8?B?c2k1bGg4Z3VDNk5ncklzSU5EdHV0UVN0ajQrWXE4ekpMTGNUQWZRZDgrNXBz?=
 =?utf-8?B?dGNScXdUU0JBQUM1YmZtSlBCWWFYc1NyR0QrbU85WEdvSmk2TDBnRFNjalp4?=
 =?utf-8?B?Z0F4T2JiZzJ2ZFpERmw0TmVXaURUR0F1VUNOY2NpTnRiMVhCQTBkUnoxMjNF?=
 =?utf-8?B?SHdvT2haSjNlSDYwZWwrZ3NWWmI0Mk9SQTRiaVpJOUFhWmF0OXZTUVBtcUs4?=
 =?utf-8?B?M0hGcXRMS0VycjRNdjlSdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RUZDeDk2ZmZPelBMUnRieWtEemw1cEg5K3l3bldPOXVYNnBSWVQxS2ZuSmFa?=
 =?utf-8?B?dHRnN0UxaVdMbkxNdG1DR2dEbnl5Snh4SGZxTzBBU3FLYmlBdENReXlRazhy?=
 =?utf-8?B?ZzFzeVBldjRkbm9OYWdLRUlyWXJMTlFUS3dHZkJ0MmdENUYveEdScjBleU1J?=
 =?utf-8?B?OHd4R3V1bzk0bUI5SGg3d1gybDd5WVc1d0daY3U1clZXMDNUbG1OZnJUdWM4?=
 =?utf-8?B?L1NKMFZBTTc1NDBTM3g5eGlOY0pxblJ5ZXE2R1MxbmYveHE4WmFSdlNLd3h3?=
 =?utf-8?B?Q280VEFBdTVUUFdENGxaelVnVlFvRVRZUTN3eDRnVzZJaWYrMVVpTnM2NWV6?=
 =?utf-8?B?UW04YlVaUUpuelFVMlpUd3hTdGNYR1BPbFFiYzU0anRQVkxZc1cwTy9va0kw?=
 =?utf-8?B?YVp4S1JweWo0VEJ0enIyc0M3aE12WklGOXE0RFJGU1p6SnY3TUdLRHhWVGtQ?=
 =?utf-8?B?UkREVEF6am5BMGp1WE9DQjRObjFWNnNGQkNIV2FtZEJXMjFHUGVGMkxzMWdH?=
 =?utf-8?B?WWh1K0lqSVU4ZHI3VVVJUTlMcjBqR2ZJc2VIRmFXeTN1OHJIdnNwTk1EdTJz?=
 =?utf-8?B?ZUVSck41MWQ3bGtXZ2t3QU9mcm5wTEsvYVZoa3d3UlFJVjR5b3ZzR1h3c1Q2?=
 =?utf-8?B?YTJTNWtqbmxLZVJNOVpKcGc4azRHMWprUk5oSTVJdzF6YiswYzRvMDR4RlND?=
 =?utf-8?B?SEk4dUZ6R2U0WlE1dVF6dDZPTW41T3FmY2R6U1NhVkZzeEl5OW1aOU5hdGl2?=
 =?utf-8?B?dTdvS2IxMkpYb0o5ZThKaENwTHhuUDdwUFJVaXJGRVZ6ejRpa044M2NsTVBF?=
 =?utf-8?B?OFNoWERYSk9jdjRJblhKbkU2V0NTU3lrcXd2VXpLNUluWDlYd2NETlpqejlU?=
 =?utf-8?B?Vm0zbUFqR3J3K1g2U2g2OFl4dU5YcnV0c3VISWE5TVBMdUErand4czJUMytZ?=
 =?utf-8?B?VytrYXlFTU82bktOOWk1ZkNXbkFVWXFsbWhwd0llcVdNMXJWNllyMlFjVWJG?=
 =?utf-8?B?d2dKTU1jNjNLcXFYYXUwb0YrZG9GUWZNRGN6RkU4RWIvdWtUSUxnS0E4RFN1?=
 =?utf-8?B?Mk11dW50ZHdlZHN5Skl5UHJ5cFFBWmRDak5HRkFMNjhyS0xVREhyeTJlVUNO?=
 =?utf-8?B?NG04RU1Bc25PVUVEQ2IvdzNSUjdHaVFPL0RjbkoweUdsd3h5RmVzYUZyOW4x?=
 =?utf-8?B?TCtMc2NTU2h3VlNaS1B5RW5vdzBKYWpKTW0wSURPUWtYT3B0Q3BSbVhyWnVw?=
 =?utf-8?B?RUFWL2M4cEJ5dVRORHRxU0g4TDZqRjFDbllOOHFXazlBR29ZM1BHbllZNHNy?=
 =?utf-8?B?N2hRNDVQMU1WeVY1cFJPSXd4ZVhrQm9zUWdiVGlrRUl2N3RGdVA3TkNYL2RE?=
 =?utf-8?B?OUNJc1NmbHpZL1F4dHFjWFNMa0JQWjY5UVlGemlENmpuN1d1ZnpWZ3ZLNWYz?=
 =?utf-8?B?NStZb1hiVXVzaE12dlB0R0E2MDNGeUlyd1JGbk00dm9ESU9DYVpINEp6Tk1F?=
 =?utf-8?B?THlaaFdKOFE3cWh5dmJCUzRYZ3pPK0RGSDlhVzB3a3UwWWJ5bVFLSkY4ZHM4?=
 =?utf-8?B?TEVWUW0zdG5tL3VRekExQ0lxMlVneGNkbmJnekc5NC9GVlVHQjd3V2lPeDg4?=
 =?utf-8?B?WEZ6QU5yelFHRlhnclcyZVprMmFlOTdTNVUxRHFaT1l2YXNvSTNELzl4K2tZ?=
 =?utf-8?B?ckRvVFdFVkZqUUtnV3dEa1JIekF5TmhQNDdyRnJ6a291VnZwSTVjT05DZG5t?=
 =?utf-8?B?NHRXUXdQN1NJcXJQdWhyQVpJQ1hkNllVRnk2TmJKTjhFek1Md2VmUCsvWXla?=
 =?utf-8?B?OHZCLzFwWmVaNFlPN1VjbUNHZTE5emVzYy9qSDNiSlpIRVg0NlZuQitqT1BN?=
 =?utf-8?B?alRwSEptMURSUTRxRFJoL2QwU3JJU1cwSDBPK0RyNzRLdlkrZUdFN2RmZFF4?=
 =?utf-8?B?WXpWWmFRNXVhK1JQbTRvUDQ4eHRWelFXVG5tR0ZQUW1BSzhZR3NVR1hDeTNn?=
 =?utf-8?B?ZVRNWEJabjVoRjBHNmVHdjRiYlFMandWTElobFAyUk9BTVlUZWVhR2VORlN3?=
 =?utf-8?B?bFE5TFlvUEJJNVArSGpvOG5oU0pRbWkxN3IvcnU0VFRZQ2JvazF5VTdXMmZw?=
 =?utf-8?B?bXc0LzZuZDFyV08ybGsxcEc2RUZpelUyV2NTMnR5T2pTVjE2L2MvUzF6TE9r?=
 =?utf-8?B?YUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cd933960-4623-4697-dec9-08dd23377b42
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2024 09:52:15.8097 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QJrUUmhaADeZbrKgRKdMdVb9K0e1G7D3UYYn2aANM/R1Nd2WYP7TF8Xe4kNWjYX/uje1OcmV1DUagad4YNZvM9MrCXLYtq1gMUzrxeuYcQE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5203
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

typo in subject : 'scaling'

On 12/17/2024 11:37 PM, Mitul Golani wrote:
> Compute scaling factors and scaler user for pipe scaler if
> perticular scaler user is pipe scaler.
typo: particular
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_scaler.c | 37 ++++++++++++++++++++---
>   1 file changed, 33 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 1c65b53b45f0..1a4aba434d8c 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -319,6 +319,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
>   					&crtc_state->scaler_state;
>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>   	u32 mode;
> +	int hscale, vscale, user;
>   
>   	if (*scaler_id < 0)
>   		*scaler_id = intel_allocate_scaler(scaler_state, crtc);
> @@ -375,7 +376,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
>   		const struct drm_framebuffer *fb = plane_state->hw.fb;
>   		const struct drm_rect *src = &plane_state->uapi.src;
>   		const struct drm_rect *dst = &plane_state->uapi.dst;
> -		int hscale, vscale, max_vscale, max_hscale;
> +		int max_vscale, max_hscale;
>   
>   		/*
>   		 * FIXME: When two scalers are needed, but only one of
> @@ -426,11 +427,39 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
>   			return -EINVAL;
>   		}
>   
> -		scaler_state->scalers[*scaler_id].hscale = hscale;
> -		scaler_state->scalers[*scaler_id].vscale = vscale;
> -		scaler_state->scalers[*scaler_id].user = SKL_PLANE_SCALER;
> +		user = SKL_PLANE_SCALER;
>   	}
>   
> +	if (crtc_state->pch_pfit.enabled) {
> +		struct drm_rect src;
> +		int hscale, vscale;
> +
> +		drm_rect_init(&src, 0, 0,
> +			      drm_rect_width(&crtc_state->pipe_src) << 16,
> +			      drm_rect_height(&crtc_state->pipe_src) << 16);
> +
> +		hscale = drm_rect_calc_hscale(&src, &crtc_state->pch_pfit.dst,
> +					      0, INT_MAX);
> +		vscale = drm_rect_calc_vscale(&src, &crtc_state->pch_pfit.dst,
> +					      0, INT_MAX);
> +
> +		if (hscale < 0 || vscale < 0) {
> +			drm_dbg_kms(display->drm,
> +				    "Scaler %d doesn't support required plane scaling\n",

typo: pipe scaling.

There is a #FIXME to check scalar factors for pfit, so with this we can 
remove that.

There are some considerations for joiner, there are patches for that in 
review. [1]

[1]  https://patchwork.freedesktop.org/series/136561/


Regards,

Ankit

> +				    *scaler_id);
> +			drm_rect_debug_print("src: ", &src, true);
> +			drm_rect_debug_print("dst: ", &crtc_state->pch_pfit.dst, false);
> +
> +			return -EINVAL;
> +		}
> +
> +		user = SKL_PIPE_SCALER;
> +	}
> +
> +	scaler_state->scalers[*scaler_id].hscale = hscale;
> +	scaler_state->scalers[*scaler_id].vscale = vscale;
> +	scaler_state->scalers[*scaler_id].user = user;
> +
>   	drm_dbg_kms(display->drm, "Attached scaler id %u.%u to %s:%d\n",
>   		    crtc->pipe, *scaler_id, name, idx);
>   	scaler_state->scalers[*scaler_id].mode = mode;
