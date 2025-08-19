Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD0EB2BD5C
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 11:30:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C081410E223;
	Tue, 19 Aug 2025 09:30:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jegDa8pn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F397410E223;
 Tue, 19 Aug 2025 09:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755595826; x=1787131826;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E6WH9lEHcVDUmpcgqvYk3UY7AK6ZaxlaOdAvqAAILlM=;
 b=jegDa8pnv/iOTWCdX/IoXXC3QRVoRoe3FEhvhNK7LaKJzl7LyjAv9mBv
 zQDVfb+Gsri6sAenlz/4uwYx/drk9VcZzZQ5oQpah4S7boMILQlkiyxXB
 ROT/HyRaABIvzQiQlbdYMWul3xH/i39bFUMFw0jTaUnFNgWxJQjHSsiFS
 S5Bop22ltbHPYMQDbU9Vzvk6R/RrTVpukjQdXa1BpWyjeKg4VL157W4KX
 kIP2Z5MXOQQxxa+w53MDiDAv4w16SwgbbSREp0PK2S+vHYtGSm7GSnT34
 IeoE6NLS5c4saEyf4pCWitW+v2IdEYwFZM3tqV7eP7nRzjdben9aWo7+k A==;
X-CSE-ConnectionGUID: YgSnSaa3SSyeRF9IjUkcTw==
X-CSE-MsgGUID: vMl6TxnETF+KXjNlHAGc6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="60456848"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="60456848"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 02:30:25 -0700
X-CSE-ConnectionGUID: VOIgn95NTyOOA7Uio7Hj+Q==
X-CSE-MsgGUID: /MTlhEJ2TN+EFiBHW+rhug==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 02:30:25 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 02:30:25 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 19 Aug 2025 02:30:25 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.65)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 02:30:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mBpxnSi4YkRBrhu7ZnkcvKvv8mItYJlNQ4b6jbnBsLQ4FwJq28QPv33qzEaxqFOIZHuHYwTopwFdoWIlx12PrFQ3kO+4Hl9qPXP/XbU0IPqqpjwcSwb+NGc9ZE3cikIfLMhWgfcRDhG6cdQiJSUaQ3f9JEstyq8mhpkzhweGAys07nXC2xm4uRQy9w1TknC4zxkPAhLq2LBMOr+/wkrejkFXyBhqIO1WG4I98dJExG7eEIRTMNoxWJKQQdUggJEJ2f2l42ecmU9MkjU9qTRI3hTGU41G4BCRPvYsNE17mD0QmbdYM1G1HeBU03d9X71i22axkFZ4jMNkH7ED1o9fPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DubUWnpYYHXDsISQnyPJE0WTrY0MRRyyRNudbH7k2Ms=;
 b=qyI/y7N0YTNv60rKc0nUgeAjMuj1AwGnnMfliIUzjYcpXKaUTSC7kr+rcbUJNMOqEvg6OpseM7iaBrd90Ualnm3ziuQ4TdN97YmgCsT+Uyh5DoASkI+u43YH8dYY3TzLZ6BEG79BleiUuQgHrtWmjTJsDGr0thIUDah8Iarub9dGLqY09hPzpSfs2S+2TlV4OY7SB8Du0W2xCS/db8CPjxFcUpkgGcm7B409j5nlIw6SfS4SE8GTBDTNhZ1Yd/seoH/VShwrrGQCsGSS1ff7NI1w4S9GFsuJzgr6ZQVLc9LsxfAIcCmo7zwJC1LvzZbhPLRrQQ3vrzhRZzAmPuwphg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB5909.namprd11.prod.outlook.com (2603:10b6:303:168::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.25; Tue, 19 Aug
 2025 09:30:23 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8989.018; Tue, 19 Aug 2025
 09:30:23 +0000
Message-ID: <51425c4b-5a2c-4928-b482-b6859b86825e@intel.com>
Date: Tue, 19 Aug 2025 15:00:16 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] drm/i915/edp: eDP Data Overrride
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <jani.nikula@intel.com>
References: <20250819080602.84826-1-suraj.kandpal@intel.com>
 <20250819080602.84826-4-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250819080602.84826-4-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXP287CA0013.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::26) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB5909:EE_
X-MS-Office365-Filtering-Correlation-Id: a090de3d-c365-4aea-178e-08dddf030587
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TjlZWnJLTG1QOWYrMXhJVDRYOUNkNTF2SENiQ2tBR3FvdFUzVnIzSjZLVzRL?=
 =?utf-8?B?TmE4QnM4YUxFc0I2Y2JwN0tmUmhUQ0IwbFJpMURxREdzaXdxVFU2Mm9mUmJB?=
 =?utf-8?B?UlcxVG9qeGtIclBDTS9zWi8rRmlGWFRxRndvZjNaL1hrTGdIaHRCMm5GREp5?=
 =?utf-8?B?RnRhZUFKeXNxYzV1OVVnUXc0TXJJcDJYUmZ4VXpyaHBsVmZPQzZHbi9DYi85?=
 =?utf-8?B?STN0UmJOcGExZ0JhUlVmSTc5V2x1dDBXdzN0ZTZjc0ZVZWZXZHZyZEVOUEM4?=
 =?utf-8?B?ZmJoUlFBOWwrL1pRTEI3K3k4bHRPNGROVTlqSnoycTh4UkU2MkpGZ1pDRm9v?=
 =?utf-8?B?MVdnd3o2VU1FeUdJOHhGV1FRR3FlNTRneFYvN2c3bWVSTTE5eVJURU5wSFdh?=
 =?utf-8?B?Q0FGdThTU0JyaUNuczJuUXZVYjZHUVN4RGFJNXZhYit0ZFh1Z3Joc3VpNHU4?=
 =?utf-8?B?OG9WbmJ3K2JPRlBUbkVjRnM4ZnpYNnp2NXN0YlhreGsxREdUNmdzanArSyt1?=
 =?utf-8?B?NURzSC9wZWxIY1VwYUJCU2ZxOHAzQ005T0tQQWg2TWlaNFJtdlhONUJKMlh0?=
 =?utf-8?B?clF1K29Ba0RNUUdJYXlOTStUUW9BTUZTczNqQ3E1amErcForcFJKMUpRR2p0?=
 =?utf-8?B?Yitwa0lYd3ljQlVYWS9wUkdFdzNqOTJWM1NKOWJ1TmI5UW03TllLZEg0Qm5G?=
 =?utf-8?B?cER2dk1lcFRJdlJrb3grWHU4MlVlc1ZITCtXU0dTSnVDRWYzcGUrbWtkR1NI?=
 =?utf-8?B?bzR0MnVUelZTMFFISUNpRXU4T2VMR0RSajRza041QnliYWlrd200blRCd2V1?=
 =?utf-8?B?aEM1dG1jOGdqZUpjYnNpTjZ1L2p6TTMxczBhWnNWNEp4Z1loUUNiTTdpQjRx?=
 =?utf-8?B?VmV5bEk3dEtDQzQ3VVZCYjNkWkRYSjVQdFdnN0xwdXgzZzlITGRtU2xrczlE?=
 =?utf-8?B?NkFSWlZoa1FjMGxGSGRTbnZrOWN5Yk5KN2wzbmZ0cC8wdmZIWkxWVzE3ZEZu?=
 =?utf-8?B?U1JQNmdRUDI3SnRGRkF3NXE2VWc0a2w4OHMybTFBb3BmcTBNQW9tdnhEd0N5?=
 =?utf-8?B?SnB2SEo5Sm04aUZ1dHZITFJTY2NEcmZ4ODBjaFR0MFg2aTFLMkl0Zk94emZ4?=
 =?utf-8?B?dGI2UzNJc1NUK1loWlJCdDlUQ3k5dVBrU2haVHFFUnAwWXpPNXQ3WXlsbFIy?=
 =?utf-8?B?TGc0TmYzK1JHUmNLQ1NIUGJoVnJGcHNQbVBIaVRRaG96NGxCaEIvY3U5YVVI?=
 =?utf-8?B?azF6RFphTks5cWhYSkxYK1UybFhXN0h2MzRiUmJidkZVckRxbUpwdHI2N0sw?=
 =?utf-8?B?MXo5ZGFDRWtoNzhRMXV2UHFObGg3RnB6MkUyVjB6WkJma0VxOVJOeFdCZU5W?=
 =?utf-8?B?Skh6UDcxdnVCOHhUZlhYZ0Z0Tkw1WkM5YXd0M1JzKy90bGo1S2FHNVhTWVY4?=
 =?utf-8?B?b3Q2YmZWRjlucVQyQU8rSEU5cEZ6clVVM0lhQytiRnFkbnc0ZHA0TUFrMnV0?=
 =?utf-8?B?RzdBYU1tQ01Jb3hJWlZ3eEQzY2VKZ0UySmhZKzlHUk9RaTFnc2xVekRYZXpZ?=
 =?utf-8?B?R3paZFlMa3hJRjllaGNzdkhDWUZlZjZaajI4OHBHRzBLVVVQK09FbHRZM2hC?=
 =?utf-8?B?VmdCc0hEU0hTcTB4Q1F4QTRKUWxGeXdwblhRUlRJT01BbFc1UXF3RW9OY2xP?=
 =?utf-8?B?YjJ4U0ZUQTNyQlhXSng4VmpkK1oybi9MelZGZ2NGeENwTENadEhpQTZZUk9U?=
 =?utf-8?B?UXloYllwOE54dm9HbHdSVWNDNmZaT2hTejBOQklSV29vNnpZYmdyKy9qaEZJ?=
 =?utf-8?B?VVQ4UDB0OXBGK2NUNXdNRVd4ZUgzSzVhUUgzZGdKTVRpYVkrVGZmNStTalpm?=
 =?utf-8?B?QmQwdlk3UVdRNXBWWHpSak5WV1VvOEtWTFZ5NXJlTFMwcXI0VzJnbjhyeHJX?=
 =?utf-8?Q?xvpEeXcL5LQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OTgvZmdwR0o2cTQ2c3dQT0o3bkptV0JJSVV6NFdrUFVCUFNURUFITEp3SlBM?=
 =?utf-8?B?aFNHckViT1IvKzFuMUhXbE81MzNnbDRIa0hVbEhTam5haU8wQXN0NzBrSnll?=
 =?utf-8?B?ZDUvS0NrSHBST3RUQXRlak5hc2VQcXNKT0VSVUlKUFEzb2crMDQzSGNWUTVl?=
 =?utf-8?B?YWl4T05DL3Y3anQyQzl4TG1KV0RKcXh5ZFRYWE9RNzliSnIvTnVjZW1GUEJE?=
 =?utf-8?B?eTZ4WFRRVjhkOXUwdHlZSXlieC93TXpRazVaOWIyV1hxTFZkVFZqUUZ6cWNo?=
 =?utf-8?B?QmtnY21obXhjbUREMVFCTEZYSXp3K3ZKMlVtdnJwMHB5bzgySmhYOGZXMWJr?=
 =?utf-8?B?UHY2amhxS3E2SXRJYTBtYWZjYnhXbmloa3VtRFRlZE82OHdnMUJsR0ZPaVZR?=
 =?utf-8?B?L09WRXdRU3haQUU3WTlINmRvZUNRUW43cm5CTVdFdjZTZEQyUmpuQlMvVkFC?=
 =?utf-8?B?cTk4WldsTVV2Q2wxRWxLUU1IQ21YQUJCdEgrbjhZTXRUNzBBd2tFaUhKOG9I?=
 =?utf-8?B?ZS9sd3ltMEhnK0Y1WWVCZXJtZW02ZHEycGM2WlJqN09ORitTMnoraGFKYUo2?=
 =?utf-8?B?MSthdDZrM2hoZ2RtTHorS0VMMDRHazQ3R3g3Mk1TL01BQWllUFFVbWp6dDNR?=
 =?utf-8?B?M2hyeHEwSVJRWE4xa2RjY2hpclR2U0pxUXhldkVPRHVzbXdQQ2phektXVkVH?=
 =?utf-8?B?dzkxVVE0V0pjSlp3R0g2dW5uVThZU2NKN2NNdi80Sk1hakV2M2pRL2pjTEI3?=
 =?utf-8?B?V2lPclVHZEFHVDc3WGU5VDRnNWJ1cjQ5Zi8rT0x1WUdvbEJTZitkMnJWV1hI?=
 =?utf-8?B?dzVLMk9OVkpoQUF0amdLc3VFT1RJSGFLMEVjc1pnWm8rMk9vQnNLaU5rdE1k?=
 =?utf-8?B?M2x4T0FFMVZqYkRqSnFiUFlaUG96cDU1TUJyalZ4RjhWd0l6STFLTCtTRjJw?=
 =?utf-8?B?U0lOL2ZlckJVWWYzK0xBK0tkNytHcDFNTElKRXlaUUUxbzg4L3JOSVhaaTZn?=
 =?utf-8?B?V1pLUmV5d2QxWkJaSFMwdFBiUCtiQWViVEVBV21PQ0FqTFBONHBLZFZUNHBq?=
 =?utf-8?B?UFMzaVJYdmdTQ0Z5QjBMTkpBUUNIcVZwK0VSUDlPa1FZTmowU0J3dFpHYU5w?=
 =?utf-8?B?RzNYQjYvcklGZlVYL2plUVRJaUhrWWdIMlNvWlo0dWRReWRXQTBCdGVUYVY5?=
 =?utf-8?B?YmF0aVIzR1ZIVE5KMmpFR29SN2xJZWFPZjNjbjJMc1oxcDg3TWJXL3Bla0Zv?=
 =?utf-8?B?dlp3OWNacjVJZkQrL2tsQkZCNTQ5bHdwa1VsTEpjc3N3dHRTQUdVT295cW9F?=
 =?utf-8?B?Z25nMUpRc3RZUVNHY1hINUlPeVJ5YlJaaEg0TG9pQUdOMTZMekVUUlJNemNv?=
 =?utf-8?B?VE1SZzJpUEo4UWdBRFZuVStaYW0xeGhEMDNKNWJqMDRscFNrTmIwaGo5bEFT?=
 =?utf-8?B?aTNRdE95dU9ZaWsxVGxOcnY1aWdQb1AzL0RBNGg1MW9zMGR0WHZRTUxTYjF1?=
 =?utf-8?B?bEpxWnE1UGFLV0htVG0xRENsNjlqU1dqVys0YStrZzZLcTFwUGU3MkxYN3k3?=
 =?utf-8?B?YnZQOUNIdzFKeXNmMDVockE0REJRQndreklvSExXN0hEcWxtaVdFWGZsTllH?=
 =?utf-8?B?VDBHNWVrOTIwSUthRjdNeGJrVmcwNnBPZTFEWDkrZXpubnhHbDZzdVZWdXh6?=
 =?utf-8?B?ZUcvQXRvWkhnb3FpNU1oU2QrRlZON3dRRDZQWUhrRnFKVUlCMWd2cDlsQ2du?=
 =?utf-8?B?NWJiUlNOWjdUeGFidkVHM0NQMHpCSU9iaDVpRmZjOEZOQTJ3dk9WZmpFZEw2?=
 =?utf-8?B?YmNNcWlNWXhhbWFMSVgxenhUNy8vNWdNc2h1VGw4MHBjT1RxTVM3NTZXWmFP?=
 =?utf-8?B?U2tkYlF3RHFJajlMTjhlOTA5OXM4dEJDVVM1em51SEtsVzB4N1hSRFJTdGlW?=
 =?utf-8?B?WXlzWDVzZ0sxQjJQMnBGdUJDTWxzS1pPc1ltS1VwM0pmOHBIV01ITmkvOWxK?=
 =?utf-8?B?VkpzUjFvbjUyVHJ6cTN1R2krNU1lb1FNekF4OGF6dlFNbVAybG9VSFhqakZQ?=
 =?utf-8?B?ZlYreTNtVjRPQTZwRGtqS3B5ajZUbTR0RExBSmNTN1pIYjArK25JMU91ajdk?=
 =?utf-8?B?RjMrZ3NCOW9yK1hQaERpY3VldDYvMHcxbzhmbUlzcUVlZHpScWsyZnRFa1pl?=
 =?utf-8?B?RlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a090de3d-c365-4aea-178e-08dddf030587
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2025 09:30:23.0473 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ah9hAyoPnLZPtODJKQg+Lbk4XeBxEgstFfJJ6edyo+kn34h0kNRN8H57or+nfAccv4WoMmsnI7v5sPaEIiFDxZHeagCkQbNLngn4MyeOWLQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5909
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


On 8/19/2025 1:36 PM, Suraj Kandpal wrote:
> We need override certain link rates in favour of the next available
> higher link rate. The Link rates that need to be overridden are
> indicated by a mask in VBT. To make sure these modes are skipped we
> don't add them in them in the sink rates array.
>
> --v2
> -Update the link rates after we have a final set of link rates [Ankit]
> -Break this patch up [Ankit]
> -Optimize the assingment during loop [Ankit]
>
> --v3
> -Add protection against broken VBTs [Jani]
>
> --v4
> -Fix build errors
> -Create a seprate function to check if edp data override is selected
> and using the correct vbt
>
> --v5
> -Use correct number to check the num of edp rates [Ankit]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_bios.c | 15 ++++++++++++++-
>   drivers/gpu/drm/i915/display/intel_bios.h |  2 ++
>   drivers/gpu/drm/i915/display/intel_dp.c   | 22 ++++++++++++++++++++++
>   3 files changed, 38 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 444ed54f7c35..05a74c3bc9af 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2521,11 +2521,24 @@ int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata)
>   bool
>   intel_bios_encoder_reject_edp_rate(const struct intel_bios_encoder_data *devdata,
>   				   int rate)
> +{
> +	return devdata->child.edp_data_rate_override & edp_rate_override_mask(rate);
> +}
> +
> +bool
> +intel_bios_vbt_supports_edp_data_override(const struct intel_bios_encoder_data *devdata)
>   {
>   	if (!devdata || devdata->display->vbt.version < 263)
>   		return false;
>   
> -	return devdata->child.edp_data_rate_override & edp_rate_override_mask(rate);
> +	/*
> +	 * This means the VBT ends up asking us to override every possible rate
> +	 * indicating the VBT is broken so skip this
> +	 */
> +	if (hweight32(devdata->child.edp_data_rate_override) >= BDB_263_VBT_EDP_NUM_RATES)
> +		return false;
> +
> +	return true;
>   }


This new helper and and the change to intel_bios_encoder_reject_edp_rate 
should be part of previous patch.

>   
>   static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> index 781e08f7eeb2..d24660bcc7f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -276,5 +276,7 @@ void intel_bios_for_each_encoder(struct intel_display *display,
>   					      const struct intel_bios_encoder_data *devdata));
>   
>   void intel_bios_debugfs_register(struct intel_display *display);
> +bool
> +intel_bios_vbt_supports_edp_data_override(const struct intel_bios_encoder_data *devdata);
>   
>   #endif /* _INTEL_BIOS_H_ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 54d88f24b689..f6fad42182ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4277,6 +4277,26 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
>   	intel_dp->mso_pixel_overlap = mso ? info->mso_pixel_overlap : 0;
>   }
>   
> +static void
> +intel_edp_set_data_override_rates(struct intel_dp *intel_dp)
> +{
> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> +	int *sink_rates = intel_dp->sink_rates;
> +	int i, j = 0;
> +
> +	if (!intel_bios_vbt_supports_edp_data_override(encoder->devdata))
> +		return;
> +
> +	for (i = 0; i < intel_dp->num_sink_rates; i++) {
> +		if (intel_bios_encoder_reject_edp_rate(encoder->devdata,
> +						       intel_dp->sink_rates[i]))
> +			continue;
> +
> +		sink_rates[j++] = intel_dp->sink_rates[i];
> +	}
> +	intel_dp->num_sink_rates = j;

Perhaps `count` instead of `j` will suit better, as i, j are generally 
used as iterators , and here we are interested in the final count. But 
that should not be a deal breaker.

With the above movement of helpers in patch#2, this looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> +}
> +
>   static void
>   intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>   {
> @@ -4327,6 +4347,8 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>   		intel_dp->use_rate_select = true;
>   	else
>   		intel_dp_set_sink_rates(intel_dp);
> +
> +	intel_edp_set_data_override_rates(intel_dp);
>   }
>   
>   static bool
