Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C12C06AA0
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 16:17:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6B8510EAA3;
	Fri, 24 Oct 2025 14:17:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="To408OVd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8D7210E1F9;
 Fri, 24 Oct 2025 14:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761315433; x=1792851433;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nE289fP5Bawp48nDcFU92Xhk++aCBi8ztgXL++Pagg8=;
 b=To408OVdVo3fjMORIdIjaMRcIznsYXcTqgRjqFd2ciosjYULPZqZLJkJ
 R2ERLt2uVGrCizieiFsI/AbsB6ndmyxKeakaN3GYoGpEL5BnZl/+G8xXy
 OMpvFm5xAPRpETpuMk4mBVpN7V3sYVZU7OEsF5oerO2tSdbmRn/4oBqqV
 3MjbJbQCeX13zs5fYqn1GBm8Pj9eCCbHvgw7iIv0LzipiR9C5otbGGP+A
 csz9DTiy2tHlRyLEj8K8sG/6UcCUVKAFb8VLShccrOprrPLGWG2WFI8rW
 HxE10ws0vHjeAmrDoBh0BFSqohaVvs8fB4ekA5/kgiGyM96B3ckxvfc7D Q==;
X-CSE-ConnectionGUID: 34AeJYZsSI2tjIVqa42vYQ==
X-CSE-MsgGUID: fBMK8ocFTMa2pylxb74eXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="67331610"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="67331610"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 07:17:12 -0700
X-CSE-ConnectionGUID: y3wQK9L3RUartNuBoHC5rg==
X-CSE-MsgGUID: cdVdgfWNTeyDHFsxilfWSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="215096466"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 07:17:13 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 07:17:12 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 07:17:12 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.42) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 07:17:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lV5puv0kzLvK6vv6gYnr/J4MNDRZ6RxaCzg4duefNqDEZ5rG5yR+i6YgszCk86fxLkLNVo1k8+rkuN11BLN/cuA5dzo5FW5qGAPWg5FhtVZjpOQsOW3AhAk8NM3xbkDlnGgdnJSBQUvDwpZ9wSjees4XoPR7USvlbZGS1ptIWrKrKZ7GlIw43P2Kre+t46urhNcbzWIfIC60prZbWsD+EUcyS7gMbkYlu17ZpdDeyN32HHguba+GxTh4yXz3rSiDsyFcK3xmKeWfJpFCJzDY8AR1xp/T4MV8P0eiaw2i2Y3sfoG9RfsDuyaoT5socbrpJjOrR1VH1f3VH9NVeEH/RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GWRsOdWQW+u9vhJeDFKdkaeDNOHBmyNkEcN4JwOz4iw=;
 b=V2BuZOY0SMOICAi95Z9WBCVYG3a4FdqlMMNjmX4dd1lF2dV+vD0RFhOjxBzXl175c4fRMZ5fgfk3UFWEuOQpbaIIdWN9M2ApywpTSZdBM4LXeNAGZ6V/+BFBRgraUR8adLp1hux5gOHFkIkLLkioLCSEbgaRAbzDZiR+aVuIOXWfNu/nSaQsMypwUnFRui2OWOjuJVNFt9u8951AWmmCTnUg5haZD4FywgTMvDS0pFroENWEU7oMhLESTLvuPDNE8zN9pEo5wHiXqxee9jDrDQg9jUdAgy97WyqaYQ9kkjdvUyGcBku2l9SV2hGYL7SO4a9IlD44cjymGpxg4B+pYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW3PR11MB4651.namprd11.prod.outlook.com (2603:10b6:303:2c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 14:17:09 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 14:17:09 +0000
Message-ID: <0c760ed0-d581-4eaf-8631-b21bb6140aa7@intel.com>
Date: Fri, 24 Oct 2025 19:47:03 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 18/22] drm/i915/vrr: s/crtc_state/old_crtc_state/ in
 intel_vrr_transcoder_disable()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
 <20251020185038.4272-19-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251020185038.4272-19-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0224.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b4::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW3PR11MB4651:EE_
X-MS-Office365-Filtering-Correlation-Id: d8aa9018-6641-4db5-38bd-08de13080471
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ckxOTG9yMGdBcDUrMXlZMzNuTGczOUNpUzJ6UUI2T2loanhGeHVSQURqYVB1?=
 =?utf-8?B?K3d4djRkVXFRN25XNldQRXZRalIrMWIwZCtQb0hLcEh4V0Z3WVd3YVk5Nnpu?=
 =?utf-8?B?S3B2Tk44SW9LcFJzWnkvWlgxQWxXYkMvSEU2cXFGYVVpZWpiVExRYTNja1VO?=
 =?utf-8?B?MWxVbG0zYi9GTURnVE5Wa1ViZ1Z3bjAweVlHdklYNzBMM3JpUkhkdC8wUzlo?=
 =?utf-8?B?Q2pza3d3R2tIanJ6R3Y0VXIvYTEzSUkwU1VXb3JsSVZjYjJrcDNvTmQybUYv?=
 =?utf-8?B?MjcwemhEUFFJY3YzckdGYUdsRUVKeTNaRk0yQk9sc2NZYVJqY2dvMUNYbHRH?=
 =?utf-8?B?Q3FUVjNCM21SRnpSYVlad040U0p3VUR0R0NESkwwOFVHNnJBbXRrSTlpckZ5?=
 =?utf-8?B?ZnNrY1NVWHRwU3R1TERLanp5TXRsRkdNV3BibjRXdWh0d1BRTi9NMVk2VUlx?=
 =?utf-8?B?aHhNdlJGaG4zR2RaWjFjUjBMNWRRUU9veE5VZlFxUThraVJYN015Ukh6cGJU?=
 =?utf-8?B?MkVCQ0sxYTlJWWJGc0NpT1QrSmh0cCtOcFFjUm84YmE2cXlLOUx6Q0cvb1Zl?=
 =?utf-8?B?WnJVYVRWYTQyRXNwTU00OUREUDNCbkUzcHFxSmlVVENNTmdwUjk5MitQcXZh?=
 =?utf-8?B?M1JVV0ZvdnByZkNHcFppVkV6S1RBTmNlRWxoTk5qQ0RmZGdmM0lGVk5VWkJM?=
 =?utf-8?B?S1RNRDdDRG0vSUNGUHlWVHNSU2NrcE1jb0tBRStSM2JYbWNuMmRoSjV1cWtY?=
 =?utf-8?B?SkxvNlVDS24rNkZWNkZsTFJ2OXNaZUdtcytzTGFiZllDQ0h6L2FUbFJxYm5C?=
 =?utf-8?B?ZTZZZVQ3S0JWenZZVFQwYVJoK2xQck5nWFo3anQvcHdqc09wRU1sMVRBM1Jn?=
 =?utf-8?B?VUJVamZIUkpoVGVZVGtuZFlldHc4Q2w2Smo1QXhsd0dmZXhZeGtyRkNKczBn?=
 =?utf-8?B?RS9kZ3ZGQm1oQklOK0s4bGl1SnNqM0haT2QzRkFJbXh4blozSFVzTFBqNFd0?=
 =?utf-8?B?UytpY3U4N1BJRFBHdDA1Q20rQk9XZEc0WGNHTWliQlFhRDRFcUVuT01FSkN5?=
 =?utf-8?B?c0lZUlpRR1VEcUoxSDllNXpiQ0d1SFNUMlBHc3ZCcndscTAvVG9sRnd6cGY5?=
 =?utf-8?B?ZDB0enAzWnRkQ1EvdUlicHAxU1BYbmlIM2p2cllSRXFrTmpoZUtjeVc1bFhu?=
 =?utf-8?B?T2lRTTVuQXBoZnptbTJMNmg4cUlZQUVUeHFLVDhVYUlOMEFSRFA3MHFjQ1Q3?=
 =?utf-8?B?bUJVWUV2UTJDbEdJUk45cUIrUGordWNvZUVxb1NrVWdoVjM5WmdCaW51VzJI?=
 =?utf-8?B?UlBja0NzYTJjc3AxbXRqOTZMN0VvOXIvUVc0Zkh3MVNHamVYNWpQcEdoRTdw?=
 =?utf-8?B?RjlwdDEzLzNleFBUUjIwcDVTWXQwSFZSV1l5NXliY3lCOVVPNXFGMFZlRU4v?=
 =?utf-8?B?NW9hckJlcFRzblNjS3htb3RHbExNeG1SQXd4bVh1eGlmWHZqK091R01DZTBW?=
 =?utf-8?B?QXBGVGhGWnJjb3czZVZiU1h5RUlNNG9aanJzVTVXVjk2QWJibVUrMGZVSzdz?=
 =?utf-8?B?bW1zUWtISUE2OGZBdDJZcEdRalhES1orRFdHQUljTncyWnhMcjV6UkpMYWhJ?=
 =?utf-8?B?K1EzYzVtMXJjTDkwMVBNaWhXd2d4VWN4a3dvdUJDL1ZXS2sxQmEyc1kxZnUx?=
 =?utf-8?B?aXlQWGhQQ1ZxTVZtYU1lUWlpZWJmZTkxYk55elJDbEgyeHhYSUU1K0xHVjAx?=
 =?utf-8?B?LzRVbmtZenc4QWpoUWtkQ042anBTOFhBYWxrL0VWck82bHVXVHRnSTl3cUNl?=
 =?utf-8?B?ZE40NDJKU3VpVXY5Z0dKdkxGbjdYRlZKVStvemJkSnRUTmtnODk3S012dW9h?=
 =?utf-8?B?WWdEeHJSS3BxM0UvdzRrcUc2eXZjR1g2QXkyK1FpcjVNNkJEbzdYcklhRDJV?=
 =?utf-8?Q?ddrqjZj8vGLxmoMrwu9G8elBspdt155e?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RjFYRFZCczdUdUNaOUdTSER0MVdoVllKbTducDgreDZ0OUJjU2hDNktCMUFI?=
 =?utf-8?B?QjFkVW8veXdxWDA3QXJ1azBFU05ER0x6UWs1NHlidXNSaHhEUTNGQUVJdnkr?=
 =?utf-8?B?Mmw2Vy94ZFJIWUJOV0R0SXR3RENONDhjeGZHUGtlVDB2Mm9Ca0NMcjVaeWh1?=
 =?utf-8?B?anZzeG5oa3p3am9qSjNVbEU0RENRbHRLN3dVblRjNEdkcW1lWlNjcEtTclNL?=
 =?utf-8?B?anQ5T1RXN2h4aUlWUE85OWlUd3o3c25KWW1GOWJjT3IzWFRPYytBQTMxWHRa?=
 =?utf-8?B?Q3JEcG5TdjZGcVRzSGs1bDF6eUMrRXBJZ1NsZWJ4ak9yai82WlRyRjJQZG80?=
 =?utf-8?B?SGpSZjl6WGdIZ0RXeGduUnh1S2IrdVNtdHJhdEdBVmJoWGFxTGorMmpWd0sv?=
 =?utf-8?B?RmdseEZIajNQYUM2Ums0QldMRk9VazRYck9QaW5GN0ZSMmFhbE1pdUFrc3ky?=
 =?utf-8?B?UTRZRTR2MzA5aWtmWWdXVVNoWUtaWnFNdzVGeEdhQnhFSCtKaXlBbjJnVzNR?=
 =?utf-8?B?emlLMk5XVFJqUWxyTXRLQlFvOG5IejYwMElicGhHY2dJUTM1SGEzTW5CN2Rh?=
 =?utf-8?B?Ui92ME1vcGNXU2pUSHVvYWMrc0l0TUNCbmFWb3g1bE0xd3RvRjhOTU1NK2Yw?=
 =?utf-8?B?WGpYelp4TWcxUlVQcENvcjdsSC9IeWVkaDdjcGFxSVNnOXI4TG1RM3p6TVBL?=
 =?utf-8?B?cEhPUExwaDNiTlU1R1N6dUpRNXBTQkwyaDRYMXY3K2JJVGZoejVMYTB5eklB?=
 =?utf-8?B?Nk9USTNpeVg1Z3ZSeTBCdkpmS1U1WEI3RWFtV1pCOUcvd1hvMVpqNWkvdE1w?=
 =?utf-8?B?T1BzRzlOZkpJWER0azR1ekVOTUdYY0t2dHBlcXhBeHB3YWp6MzhERGhYMVUy?=
 =?utf-8?B?cWtzZDc1enhGTHNlMmZ1OUw4cFpKeUxKUHVWN0NLNlZQbXcwSk5kMUlpNEdq?=
 =?utf-8?B?Vm9QSmF2Yjl6Mkg5VWxrNHNmRU50clhrWk82cFhmUm4zQ1A5cjg2bTZYUWd5?=
 =?utf-8?B?SGtWbUZuQmgzRHpsRWFxTGFDY1ZtRmxsWE4wcDlEZnFzMm9rWGVMWTZHN3Zj?=
 =?utf-8?B?Q0J0cVcwcE9nMTdXeGVsK2xZQlE0a0ViVm14dC9kUmp0Mk5qbVNJMjRvVzdt?=
 =?utf-8?B?R0dhMEtDS3hoV2NESVdncVVneGYycUY0d0p4ajg3MHlFVk1NV21HemI2RUhR?=
 =?utf-8?B?Rk9VWDdHWGYxZ2dzOGxwbGRvckRFVjF3NmJKTklDdFFJbEJNWjZnbTQ4UTUy?=
 =?utf-8?B?REdTY2hPNjZsL2JtSUlqVVdETzVVbW5vZ1FQQmgrWkg3MC9ZZHNOMytWcklY?=
 =?utf-8?B?c1BPNGVHQTZXdEtKdDRMWmx5djY5b3NNOWs2d1huVTlIU3JXSFJSRmtNcVdR?=
 =?utf-8?B?QU95K3g3VlkzcW5kYkVPZ0pYdHZaNVNhYzFhMVJReHpWQlBHSjhwVzk0YVc3?=
 =?utf-8?B?QTg4QnIwN1ppM2lrUUZDV1ZBQkpjN0dCem9XVHhmQzZlUTBxK2c3OTB4WDVJ?=
 =?utf-8?B?SHV3Y3NLYnR0QW8vWGh4SmRyQ3lTRW5lQlRER1lzTlZBVjhhVTMxaGlQWXIr?=
 =?utf-8?B?Qm9WYzAxeUZkZmF6Sy9NOWFJakNNalFyTFh2a0N6aDhZTWxseFJkN053UW53?=
 =?utf-8?B?UzFJMTJpREp1TnpsUGFkZUJlenBjeGRGd3o0c2NtVWFVZW9IcitjQW05SHNL?=
 =?utf-8?B?NkRKL2JBRHdpNXIvWEtzWkpkcThlREZrSDd5cjFTV1RnSkxTczVEbFU2RFNu?=
 =?utf-8?B?YndtUzQvUGdDUmJHNFc4WDhlcjJ1RjFvNi8ydzNGUXVBTk1reFlDeGdsb1FU?=
 =?utf-8?B?VzNhVUExZEwyUDUyUndxb2U1TTlUTHFHUHdvZkdtUzRxd28xaklTQkZkWFpa?=
 =?utf-8?B?ckZCaG9FekprcGovMzVISUdnNmw1NHR5cmZIQzNWREdYU09uWWpVS2R3elJR?=
 =?utf-8?B?Mm5LdGdUNy9lN1krS1ZjZUhkS3MzVnQ2WExjYVVRR3EvUUoyYm5oa2hLbjJr?=
 =?utf-8?B?dy9McStpK1Q5aU1rcHVpSWN1aUJwLzVPNjhnVUw0T3pZNzZJU3llOUFDMlFX?=
 =?utf-8?B?MDUxN0hhNEhOeXFDY0w4L2JFcGViQ0o0SHFPUnAzcmZRaVRuRDREaEtXSGVE?=
 =?utf-8?B?U2w0bmxtVXVNSXU2UHFwQ05FU0NCTFpzTngyc1RDZFkvTjhYMGFWbTVmNFZZ?=
 =?utf-8?B?MEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d8aa9018-6641-4db5-38bd-08de13080471
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 14:17:09.2642 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eRmsafEPxWhUii+uevEw95dDaPOIDfgbsrqZcb4WfbdQZEuJBSd2VL0r+NPPzGBlHfKkKfaIAyIH9hIzzJw46M4SUkOcH+gVncs+M35NJw4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4651
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


On 10/21/2025 12:20 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> We generally use the 'old_crtc_state' in the disable functiosn to
Typo: function
> make it clear these generally get called when the hardware is
> still using the old crtc state rather than the new crtc state.
> Rename the intel_vrr_transcoder_disable() 'crtc_state' parameter
> to 'old_crtc_state' for consistency.

Makes sense, will keep this in mind going forward.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 29143dd092a8..71c5d8bf7557 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -770,15 +770,15 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
>   		intel_vrr_tg_enable(crtc_state, false);
>   }
>   
> -void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
> +void intel_vrr_transcoder_disable(const struct intel_crtc_state *old_crtc_state)
>   {
> -	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_display *display = to_intel_display(old_crtc_state);
>   
> -	if (!intel_vrr_possible(crtc_state))
> +	if (!intel_vrr_possible(old_crtc_state))
>   		return;
>   
>   	if (intel_vrr_always_use_vrr_tg(display))
> -		intel_vrr_tg_disable(crtc_state);
> +		intel_vrr_tg_disable(old_crtc_state);
>   }
>   
>   bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
