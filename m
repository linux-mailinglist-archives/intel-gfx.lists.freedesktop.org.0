Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F74A6E98C
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 07:22:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F13B010E0FC;
	Tue, 25 Mar 2025 06:22:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dL8XkP24";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED5DC10E0A7;
 Tue, 25 Mar 2025 06:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742883757; x=1774419757;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LIGl+7V+R4/pCQQVWk7Zy0Nic+XzqQnucxHSJtNaL2k=;
 b=dL8XkP24fQtbMPWPh2X4dai7EHFMmKnAcSfgiIqBbO7wE0qDptR+t8lq
 m1QnjEv1t3/e83AGdQou8VahXpDrYc6B5TSAHdotL/eZeUqoJNkNrZcoN
 N42TRF7w+yOWWcsJ3iBspx4Pq3Z/KlE1oUBF/KrRDhseGM/SnD5x168kC
 PHWNGyJXVCblDPaQTAeMq0ohmjIKzMacK73ks9LKqvoMQ7Pvsxbn1SYkk
 edxam2pqX42ki9yOpL7vsLmMjnUf3tTgtm+O57PERHz/vzVE7m02mQox4
 kMeRTjMVEi5Z/CpWfnMMS4Y1PmuI1EMOGk7wvyT5z5HMm5zdQWSL1VKO+ g==;
X-CSE-ConnectionGUID: jsiai+VxQP+poqs4Ls6F0A==
X-CSE-MsgGUID: PAevEYvbSkOSKYU/1BxxyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="43991263"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="43991263"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 23:22:35 -0700
X-CSE-ConnectionGUID: irLGWbO9TBaXbv+ufLExYw==
X-CSE-MsgGUID: dvHZF9TyTTiYyfYZ9T15Vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="124233295"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 23:22:36 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Mon, 24 Mar 2025 23:22:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 24 Mar 2025 23:22:35 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 23:22:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G0hkBlxlRDAceR1NgJbMHYDcnmp3tRIGDLfptBZdreRV5HRv9WbySOuuQYHtCNKQuDuscY4lKsxw2/0kXE5SO+5EoJb82QPsRfuT2NMFngW1eOtWN5X/CXBL6a+x4tRrX5Iu9mpps4LaAlQD2C8wz6ZS27hqEhJO558Yd+f83SM4iarWmWiMfQXhPmPHSEQ9nA1jVOSjAccjFfQKbEZE+UKnc/lGfd+VxXnFcRYxnqsjoLZsd9MztW5Xuk1b4bFE/8c2zRtsJ1SY1bMHx3V8YwKYEVN8OjkIElPzdtf2aEtXVtjzXCWxtcMDfydUpIMe9/uL210Ps1/IJximd8M53Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kbO53IJ3yoccH9SKJcWEl9vB7mpI+AkcCctcETI6auc=;
 b=N6R2Bv4QeyfYoTdQc9X4OJV60PT3Y/1h/mh+AaUNzEIGhMnShjUf9IrlVtdbPiqFAXplKEQLlhqpyUMiRQvES44A/NNlr0bHzfW4RPPMVBUqwafGxgZWrXhl1abFhNy5k2CAKGYxuudsL3Fh0dlCZZV4CAA2SkHzaE3DKrYhP2upxWCvLPM2ySMZVo+iBbcEMpYcDavp9WWgp5uwon+oLJ0sc0UpnY/9UGOvznmskbWusKbrfa/LC23njZtS7gjYqFiGeIj9JBbBKNl7fugpkdCoXII3lUQ3SQJaePvkWsLNP1RVeqC9pr3ghKdjkSaupU+OZSStBoVktRsA+vYINA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH3PR11MB7252.namprd11.prod.outlook.com (2603:10b6:610:144::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Tue, 25 Mar
 2025 06:22:32 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8534.040; Tue, 25 Mar 2025
 06:22:32 +0000
Message-ID: <28b1b129-f84d-4d15-97b0-3ef3e05002d5@intel.com>
Date: Tue, 25 Mar 2025 11:52:24 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/16] drm/i915/display: Separate out functions to get/set
 VTOTAL register
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
 <20250324133248.4071909-16-ankit.k.nautiyal@intel.com>
 <Z-GeIi5I0R9U4EGS@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z-GeIi5I0R9U4EGS@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0158.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::28) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH3PR11MB7252:EE_
X-MS-Office365-Filtering-Correlation-Id: 80c7a88c-3b6a-48ca-baf7-08dd6b656cd2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z0Q5ak00eENqTzF1ZmJ3ZDJSZzFWYUF0eld6bS9BNzBvaTVsaGgvd3Z4eG5C?=
 =?utf-8?B?SnJPdzJFMytxMldmZjZwelFZL1g0a1ZKcWp3aU1SckhWMURrRldET3VTNGlE?=
 =?utf-8?B?SmQwNVhTbXNpcnNqZnp3Wk5IR05VK0ZuczNpK0pLWDJxOERwVFVOZG9FVVBL?=
 =?utf-8?B?SFpwbTdkbzNvMWthVnNHdzNEN0YwWmdxUFlJaVlKMFBQakhxYktyOTNJTlZ3?=
 =?utf-8?B?M1dtVlBBbE9KTUh2VG5VbEJhN3RSL1BDQTYzNmtGMTgwYWI3WllncUZXckht?=
 =?utf-8?B?emdoQWlVcUlUSkpiN3BFd3B4WlB2cXB3aklpY3g4c0pnVVg0ZXRuYlcvNVcv?=
 =?utf-8?B?V2xYYkpQRVZyL2QzZmJCd1NNcjFFNFp3djJJZDhnU25JR0pHQXBpc20vaEJq?=
 =?utf-8?B?RTNjQWRnSFpEVFhWaldlZGt1ckNVd0lQYTlYNG9iTUs5YTR4YjFqK20rRUlu?=
 =?utf-8?B?aUh0aENXOVhoTUI5Q2JMd2xaaXdnWUk4amRjc0FqRUJlVkdvM2N3UEdzUXpn?=
 =?utf-8?B?QW9LdVdQOC80clFzWHVkUFBETlhDemViV2FELyt0U1hmVmJzNzllWlI1Qmlx?=
 =?utf-8?B?UHhqSW41VXJOTUxPcUVxcXVSMEJwQnRWVm9Ha2dpK2k4L0NMTllNdjE5aEJS?=
 =?utf-8?B?SFhKMWxrbW5VV2ZJaHNXYVl5WlUvUXlQMjVCZ0ZGWUJUOFBPbjNYL1NPMG9Y?=
 =?utf-8?B?WmNKRTF5UnowZnpibjA2OWtnSXBndmM3UlZQMzh6QmpOOUtTRis4YUtqVVZ1?=
 =?utf-8?B?Nk0vd0FGWlNwMjJicE1JYXpvRWEvRGNuQU1RQm84cWp1bkUyZHpNS3FaVC9s?=
 =?utf-8?B?d3hiSzFnZ3U3L3ZEVGFzck5abTNlUmtua01FSVBXcGl2QzZUdDBLSkFRYm02?=
 =?utf-8?B?dmg0NnZvZzdNK1NES09YUS8zZStjQkcyY1loUERKeGlaR3U1KzJmWDBUMnZD?=
 =?utf-8?B?OEhzcHZsZGNrNzlWV1pTdWtPZDA5bTN6SHlKSEl1UGdqRmFuYXQrbkFjWkhj?=
 =?utf-8?B?ZWZ5K1JRbDdpSngwSFhFdkczSjNkR0s5VWk2S1J6RHQ1NEpHNzB6dTRCSFJG?=
 =?utf-8?B?d25wZUh1b0NXQk1yWSt5V2k1bEJZdFUra0hYOUdIWmN6Y2NRcURWd3I0WTJp?=
 =?utf-8?B?Ym1KWTJ1N2Z6WGRyMG5pOFRRY05Sd2syd3l4NlFMWWhrMDRvY2doUWxkYkk4?=
 =?utf-8?B?YzA0MVprK3RPWE03Z1Q4djVDUHZFV0k4ekpPU3d1Q0tINE55S3NpYW5qbDJl?=
 =?utf-8?B?ZzlYc2VTVnJZK3YwNXRQcyt0VEVlbXBxUTJPSG5vL0p6VVliNmZzbWNBejFF?=
 =?utf-8?B?ZUZLdm1GakY3TXo5ekVhVTVaZTgrNkkxTGgyWmp4UDU2SE1TeWNrWHZ6UUFZ?=
 =?utf-8?B?bnA3YkZtS2FIU1lRZDdXbjEvTkhodzdsSWFDZ3hrWUkrMkpNU1dBSE5BV2ov?=
 =?utf-8?B?Y0JvWHhoRXpmTEh4czFhZzJ0TjFLVDIzZEIrWWhrUjUrS0RrdEFQbk12UTcw?=
 =?utf-8?B?bldFSmFuWDVtNzJFZHVGNHFrWFV5MUM3L3ZxQlRTOWh2TDkwdnArRFZRQkFS?=
 =?utf-8?B?cU9qNGlwd0ZNTHY4Q0taNk9CbkY5eXZWcDNMSVR5aExySVNlRWw0M2tJc1BI?=
 =?utf-8?B?T2ZPc2o3b1NoWnVMQ1FobzFwYkMwbERkUFI5cXREMjNSK2tSV2g0TG93WEdS?=
 =?utf-8?B?UHVod3U3TmRSM0RYeldmNnZvK3RBQjBkOERxM25ocnNlNHpDQjhwOU4vZVA1?=
 =?utf-8?B?cTVWYnNkR0dMMFJrTDNkN3FweFFsNXZ4RTFJNG1XS3VOVm0yZ1dTZ1IyTnhi?=
 =?utf-8?B?U3FhNVA3SUxZcFJKU1hXWVd5RjRWODByRTBoUDhEODNGSm1RY1Q4ZU5XQ2RI?=
 =?utf-8?Q?gVmxa2KefCAg7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZUp1UFVqcmJNSzNzdld0YWpXRUJ0SlMzZ0ZIY1Rya2JaeFRQUHFLWHlLRC9q?=
 =?utf-8?B?REZncEd0QVY1R1d6NkFOOXB1R25VeWt0cUtJQlgvVDcrYzA4WGptdFhXRisv?=
 =?utf-8?B?ME5WTEUxT0Y5ZTNhSWVnZzBlRDd0dmdCWk5RYVhxcTEweXgxcEMvb255QXV3?=
 =?utf-8?B?SUJUNjhydnliVWx5dUs2Tk1MeTNiTEpSdGMycHVIM3dNeGRBRlU4dURDQloz?=
 =?utf-8?B?R1lpNE5xMUJ6QWZTbXNndUdObnp6TjhiaExIdXF2Tjg3S3RGOG80TDZVWFBM?=
 =?utf-8?B?NE0vdU1RUkdaWnJBamt2U3N4TWpBSlhqTjZRU3JSdFlzWjVIck5QUjAxWnpR?=
 =?utf-8?B?UEtKQ1FKMXI2V3JzMWxIcWsxejNDUFFKSWVkRmV3OTAyVjU2SENvaWJtZ0xZ?=
 =?utf-8?B?cy9EdmFLank4b3dUbnFWbEwyOHBzaUJ2U0xDOGwzRE94VkYyYk8wSjdjMGg0?=
 =?utf-8?B?OU5LYmk5cWRyaVRxWGtjWEVHZnVPTHZ2eVVaWnRDQXpGajU4WUQxMzRlK1ZD?=
 =?utf-8?B?QnJKUnVILytYWElwckNKT3RzcFZPOCtxcEdTS3RmbGZaUGdrU1VHTUZHMlJW?=
 =?utf-8?B?RWdYNE9iV1NOVEFDbHlFbDNSbzZrZHZ3N3N6eWV5NjkvU1RtR2F3Q245MmM0?=
 =?utf-8?B?WjdjZW13NktVSHV1eE5tUEQ3RWxsRkdUeVl5TGtIQllBTGZEaHBjTTQxVVIr?=
 =?utf-8?B?Y3FnRDByT2MyS1FQWUhvMEEwRGZ2U1RlZnNNZC9SREZvZjlIcGtIaTlTSjhm?=
 =?utf-8?B?NUFEMDhOV1Q5bWdrVCtmRWVHRnFVRnVoRUdiaXhaczlad0dvYk9CNERRbVZn?=
 =?utf-8?B?SVgrdnhuTm1DemZwYTZCOXdXL2xKd08vbDdNMWkwUHk2VFpzeHhNNHdwYlgv?=
 =?utf-8?B?cDRmajlXQkt4eGVUeFRtVU5pZlZFZkIxeDErZThrcm9IOXB3aWVOMUtDOExG?=
 =?utf-8?B?aU1hd0FTUmFsd3ZFdkFQQmlNSC9ZcEhISERzSGJ4NFNBaE1DZ3dUVGFRTUI0?=
 =?utf-8?B?c3hiSkpiMWw0ZGo0bDhZZG8rcHh4dkpXVllRYkMxNWUxTXdrMzVRMXJNa21y?=
 =?utf-8?B?dzJsc0YyelV0M2pHNkdxQWN2V2xQVGllc09TdnNIQ1RrTER3V3FLcHFTRlZj?=
 =?utf-8?B?VVBNeU1udzN5ZDlnZ0Q4Rm9jRUhsTmNtNGJSdGwrLzdraWpLOXNzQWhOMDRB?=
 =?utf-8?B?NERLUmpKSlB4akdmdHgzQ05PNjFnaTJ0L1RtWk5QTkR1NE90c21KY0xzRUV5?=
 =?utf-8?B?eURQelA3aCtTTURhRVYyM04yN29LaGRJdFJyTnFneVAwYmcvRFJUR0tPdllj?=
 =?utf-8?B?bndrMnY5Y1Rla1Y0MHZ6Z0xKeDczZ3hkeE94L29SNmlPdlpndVRXcExIQ3Vr?=
 =?utf-8?B?eEZsbi9tYk1DU0J5cmlyQUxlRTNYZi82MVBDdTd0VGx1Q1lBMGR6Z0RqT09T?=
 =?utf-8?B?a1N4cG1QRFl3TTIvOEtISmJSK1BKWGR5VzJ1K1VGZnlONWdtcDROV1hPdEls?=
 =?utf-8?B?TXFFc2hKcE9UK0RGWWE1Uk55M1Ixc0N0K0dNVERqNmZLTE1sV2pzU1lwenU5?=
 =?utf-8?B?c3VrazdFRlYxSExPZXI0cjBtbDJrU3FyVXFXMDBjRzI2VkNYUGxNMFRwRjdt?=
 =?utf-8?B?VDBvL1A4bUROQlpIMnN2NHVtWXJDa29ORUFzdFFWUmdHU2RSUThpdGlyNkFK?=
 =?utf-8?B?TEhqNDZXakRNRGwrcTFqaVhWRDVJMXdSYUc4ODJ2UUlib0o3RzM2NVZMWC9i?=
 =?utf-8?B?Ylh2OTdrRkRYWWNWdnNKYmI5cXpKM2QvV1E3bUZlV2ZKNVU3bnJXR2ZRSC9C?=
 =?utf-8?B?Y0xkc2lEamlFSy9LaE1oZG5mUDBIQTBhWjMvd09LUm9zYitsZWdqdWVJRDFi?=
 =?utf-8?B?dTRDNmhabURFeDljakZRbWtuTEd0c0pDR0NRc2pYV2gzRmFnRzZKM01zZ1dY?=
 =?utf-8?B?dFlyV2h4Sm8zMGhXWGx4azdDdnM4bWFiMXBubzlodjRZL2NMamNJSm5ubTBW?=
 =?utf-8?B?eVNpNE5BNVdvUmdRWHkwaHN6cUYydDJ2WjlYUFJuM2FhMm9jdVRuV0RtUXA0?=
 =?utf-8?B?WGZpRFZNQURlTEtoZXJRWVgyTEdyVDlBemw4Q1hmRFpRcHpOYXZXaEcwNGZF?=
 =?utf-8?B?L3F3WnV4S2tWUWpvQld5SzhpYWhYZjFBSXZnTVVZV3JUT0xza3BPdXdMYVhN?=
 =?utf-8?B?TGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 80c7a88c-3b6a-48ca-baf7-08dd6b656cd2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2025 06:22:31.9237 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KHRiVgTWvIujvN9OnDrV2nHGi4xUKNgRoUCwuIelPT6FZhd1VkoRtN0+lzgcXBKb7rmWp8nqvVqyuNgmtheOUG6RsTWMV1/BbU7o+iW4CZA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7252
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


On 3/24/2025 11:32 PM, Ville Syrjälä wrote:
> On Mon, Mar 24, 2025 at 07:02:47PM +0530, Ankit Nautiyal wrote:
>> Introduce helpers to get and set TRANS_VTOTAL registers.
>> This will pave way to avoid reading/writing VTOTAL.Vtotal bits for
>> platforms that always use VRR timing generator.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 41 +++++++++++++-------
>>   1 file changed, 27 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index ae1dc32044fb..fa9c6793357e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -2638,6 +2638,15 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
>>   		      PIPE_LINK_N2(display, transcoder));
>>   }
>>   
>> +static void intel_crtc_set_vtotal(struct intel_display *display,
>> +				  enum transcoder cpu_transcoder,
>> +				  u32 crtc_vdisplay, u32 crtc_vtotal)
>> +{
>> +	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
>> +		       VACTIVE(crtc_vdisplay - 1) |
>> +		       VTOTAL(crtc_vtotal - 1));
>> +}
>> +
>>   static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>> @@ -2702,9 +2711,8 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>>   		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
>>   		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
>>   
>> -	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
>> -		       VACTIVE(crtc_vdisplay - 1) |
>> -		       VTOTAL(crtc_vtotal - 1));
>> +	intel_crtc_set_vtotal(display, cpu_transcoder, crtc_vdisplay, crtc_vtotal);
>> +
>>   	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
>>   		       VBLANK_START(crtc_vblank_start - 1) |
>>   		       VBLANK_END(crtc_vblank_end - 1));
>> @@ -2718,9 +2726,8 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>>   	 * bits. */
>>   	if (display->platform.haswell && cpu_transcoder == TRANSCODER_EDP &&
>>   	    (pipe == PIPE_B || pipe == PIPE_C))
>> -		intel_de_write(display, TRANS_VTOTAL(display, pipe),
>> -			       VACTIVE(crtc_vdisplay - 1) |
>> -			       VTOTAL(crtc_vtotal - 1));
>> +		intel_crtc_set_vtotal(display, (enum transcoder)pipe,
>> +				      crtc_vdisplay, crtc_vtotal);
>>   }
>>   
>>   static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state)
>> @@ -2766,9 +2773,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>>   	 * The double buffer latch point for TRANS_VTOTAL
>>   	 * is the transcoder's undelayed vblank.
>>   	 */
>> -	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
>> -		       VACTIVE(crtc_vdisplay - 1) |
>> -		       VTOTAL(crtc_vtotal - 1));
>> +	intel_crtc_set_vtotal(display, cpu_transcoder, crtc_vdisplay, crtc_vtotal);
> Not really a fan of special casing this that much. I think we should
> probably handle it the same way we deal with the VBLANK_START vs.
> TRANS_SET_CONTEXT_LATENCY.
Hmm I can do away with the helper, and avoid having VTOTAL.Vtotal bits 
set for specific cases in intel_vrr_set_transcoder_{timings, timings_lrr}.
>
> The readount should perhaps just be handled in intel_vrr_get_config().

I can try this out.


> But I think we'll need somehting like transcoder_has_vrr() to exclude
> the DSI transcoders in a consistent way.

If I understand correctly you mean that wherever we are avoiding VRR 
related register read/write for DSI, use trans_has_vrr() instead of 
!transcoder_is_dsi(),

with trans_has_vrr having call to transcoder_is_dsi()?

Will perhaps add this as a separate patch.


Regards,

Ankit

>
>>   
>>   	intel_vrr_set_fixed_rr_timings(crtc_state);
>>   	intel_vrr_transcoder_enable(crtc_state);
>> @@ -2806,6 +2811,17 @@ static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state)
>>   				     TRANSCONF(display, cpu_transcoder)) & TRANSCONF_INTERLACE_MASK;
>>   }
>>   
>> +static void intel_crtc_get_vtotal(struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>> +	u32 tmp = intel_de_read(display, TRANS_VTOTAL(display, cpu_transcoder));
>> +
>> +	adjusted_mode->crtc_vdisplay = REG_FIELD_GET(VACTIVE_MASK, tmp) + 1;
>> +	adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
>> +}
>> +
>>   static void intel_get_transcoder_timings(struct intel_crtc *crtc,
>>   					 struct intel_crtc_state *pipe_config)
>>   {
>> @@ -2829,9 +2845,7 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
>>   	adjusted_mode->crtc_hsync_start = REG_FIELD_GET(HSYNC_START_MASK, tmp) + 1;
>>   	adjusted_mode->crtc_hsync_end = REG_FIELD_GET(HSYNC_END_MASK, tmp) + 1;
>>   
>> -	tmp = intel_de_read(display, TRANS_VTOTAL(display, cpu_transcoder));
>> -	adjusted_mode->crtc_vdisplay = REG_FIELD_GET(VACTIVE_MASK, tmp) + 1;
>> -	adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
>> +	intel_crtc_get_vtotal(pipe_config);
>>   
>>   	/* FIXME TGL+ DSI transcoders have this! */
>>   	if (!transcoder_is_dsi(cpu_transcoder)) {
>> @@ -8168,8 +8182,7 @@ void i830_enable_pipe(struct intel_display *display, enum pipe pipe)
>>   		       HBLANK_START(640 - 1) | HBLANK_END(800 - 1));
>>   	intel_de_write(display, TRANS_HSYNC(display, cpu_transcoder),
>>   		       HSYNC_START(656 - 1) | HSYNC_END(752 - 1));
>> -	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
>> -		       VACTIVE(480 - 1) | VTOTAL(525 - 1));
>> +	intel_crtc_set_vtotal(display, cpu_transcoder, 480, 525);
>
>>   	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
>>   		       VBLANK_START(480 - 1) | VBLANK_END(525 - 1));
>>   	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
>> -- 
>> 2.45.2
