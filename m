Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F540A06329
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 18:17:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8D6210E8F7;
	Wed,  8 Jan 2025 17:17:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wscc9ztT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D319810E8FF
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 17:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736356643; x=1767892643;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=75lHuMJh0rUGC6nbhp1z6p/RpSmpLJNunhplIKnFXWk=;
 b=Wscc9ztTIu6hdXo6FIFRp4w1Xsh2jFDR3bw1LbHq6zgxCnSdxzRYkSun
 UiaMw+Lc6quxylNwNJP4pErqNnRupFXhUdQra/RDHkbJckwtGhds+wLJS
 rThOwZdjc3t+YXKeQFXMfSusePXAEvYEwpP4qea/o5rXcZKySsL/YPUWJ
 oJNZ5GD0TgWZc5MTiiGNNxcjX/xNDlnion8hCxacbWrE781t61B859uzX
 ncNmnZYw43EzvKFgwldFAHA2R2eI2Mxs3RFITIzRNGQSoq8J/sh/HbQZp
 qtgqaOJGXj0TVwuq2spvYCfn9d3chl6imCzAqR1Tp8w6OHphvBH5xTThB Q==;
X-CSE-ConnectionGUID: fyfXw9rLTUK4T9qRKEanWA==
X-CSE-MsgGUID: M0BRXdIZTnubDP2OvSoSmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="47262347"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="47262347"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 09:17:19 -0800
X-CSE-ConnectionGUID: GAdWoBabTIq+SCu32g5UFQ==
X-CSE-MsgGUID: 57GvHDIVTOe47K2JF76m1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="134001771"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 09:17:18 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 09:17:17 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 09:17:17 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 09:17:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WKSt4CVPYjXpVYXPgTbyqWLlzAf+yd1TIQQ9iBsHdWJL7sZU/jWtyIUpYGlIWth8jfHNxksPnKHAGzUajS8WzeJmb3k9W7rEJwBZDTZ8TbaOaJMjkViuDanO1J59o9qz1fsLvEhnwVI9y3pypeeMyFrj56GWUE/C5kLBlxOsuoEIUERMqSc3Qfj5l5+8QTYMfZCvQXkXnvqSo3UKsU2fGLsAYX/X167apZ6GgWX7Hyvgy+9ABnYwXfNWba2fDP/5tyzjq1BOsXv3fApV5wLO63AJGekChsmUNuJGKhUXJ8YI9OmE6jG8eSAcbSTBd8uQNUu7F8p38JDVRaALsWJC4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kLGI4d2IA3e1EDATSI4K4uAlcoGcgEbKc7R8pGtmEnY=;
 b=pKK1tOtxDWzBIusQvfKmcLzC4ZeKbV5A8yhhaj43MegNI0Cmic6j7d7tD41hKrwEM5DhMnfWmK6K+DV6X0dDlYw/Gr9oGuU3IStyBMslbhLN0nra/W1x82cVb6GLZbtOaO3R1akj1Ecs4Hu3ZpDVcDWMhYQj7GcrECYTfUIIXIwcCWV/Dq2LRhBnJ97NsEOiM+0lkOpzrskiPMJ2v8U6zVdms6sNO4cH7n28h3wiT2BiMEk6UgtJgeNgE0yQt5CFFraNd0lwE/jUK6oIdUrtb5U4rDHWyEbaRdRT5uWu/rXh7CrpAlafAaYuG52lH1wzgxJZU+9Ykkaf4x5lpk96SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5624.namprd11.prod.outlook.com (2603:10b6:8:35::16) by
 PH7PR11MB7550.namprd11.prod.outlook.com (2603:10b6:510:27d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.10; Wed, 8 Jan
 2025 17:16:40 +0000
Received: from DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::1cb8:b80d:4cae:5b17]) by DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::1cb8:b80d:4cae:5b17%5]) with mapi id 15.20.8335.011; Wed, 8 Jan 2025
 17:16:39 +0000
Message-ID: <35c5ac22-42b2-4f55-b69d-51e27d86f153@intel.com>
Date: Wed, 8 Jan 2025 22:46:33 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/bios: Define eDP pipe joiner feature for VBT
To: <intel-gfx@lists.freedesktop.org>
References: <20250108143638.1125237-1-dnyaneshwar.bhadane@intel.com>
Content-Language: en-US
From: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>
In-Reply-To: <20250108143638.1125237-1-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0116.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::6) To DM8PR11MB5624.namprd11.prod.outlook.com
 (2603:10b6:8:35::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR11MB5624:EE_|PH7PR11MB7550:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c140086-c314-458d-6398-08dd300836e4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TExRVmJKU0U3UEpBUWxuQ1dRNC9WMjdrNzRrQmY4bDZQcUZZWTVPS1oveUE3?=
 =?utf-8?B?SzlDRXBBbW1NZCs1UGdocEtpOStKczRuREgyVDI1SWlKMmVLcFZhV3lkcjVL?=
 =?utf-8?B?NmNJY3ZNYTNzc1FUbktVcmR1SWFpcmh5VUpQcjJNc1UxWTdBZjZ5NzRMaWtz?=
 =?utf-8?B?MUNob1R1YXc3cE5Ld2pvcGxYSys5Z1FGNE55cVkxaW9JOWV2Nlp1QnBYWFdN?=
 =?utf-8?B?UXd6eUFzakFvMGpnZUtmMW1HOHo3WnI1bW5HR3UxcjVJckxqMUxvbHZhL1Vr?=
 =?utf-8?B?T1ZWdnRSTVdPZ0JZZHJMQmRUY1JJbzFpRk81MHJnZ2Z4QXdMZlg0N3p1OHpr?=
 =?utf-8?B?Z2ZyaHFoeFl1OEV0aDR2TVJPYlhYYXZ3NkxIeXBYeEZ2Y3FUTCs1MjB1VUdC?=
 =?utf-8?B?VzZEZk00amxsOUVhbkpmK25CWERMNmNPSjBFUm0xajgrZHEyUVdVMUFBN0JI?=
 =?utf-8?B?eUFTWHMzbDMrMFdoUkVBOHZ2eGpCWXZoYWJFZXNFbXMxVjVxTU1mQkRydmd3?=
 =?utf-8?B?ZG5wWVMwcGthSjF3ano1ZXd5Qjdkb3licU1NeDluZmJpQTgyMHZyMVdTTHIz?=
 =?utf-8?B?Q0NWK1VQZ01VZHJuQnZZeVhmV2dzOU55elVHT240ZG5zZ3ZyTkZQcnFmdS9p?=
 =?utf-8?B?ZHdKaWRNdkIxcUN2OG9scGovZXNZbFhhc09NYkx1aGpnT3JwRk92aFVscnlp?=
 =?utf-8?B?dURVRFJndWErRXdZYUszdWM5ZDd3Q3VxdVdmKzBtR0krWjlVLzV2Q3BNNHhF?=
 =?utf-8?B?TUtqZnRLcUtSNE4rWHJuNzNlV1h2RFNMV05wbTBqV2R2T2lISWNnWTNFMlI3?=
 =?utf-8?B?NElEbTRHNkllK2tLcjhWb3JhRmdnUGI4dURkWm56MVEzN3FXTFpZN1F5YnFp?=
 =?utf-8?B?bDVZVEc0ZkRKWEc4K1pGTXFRM3NVV29YUldwSCtYRjliR2owUVRCcExEcTJ3?=
 =?utf-8?B?RittNTRJeGJ2ZStmMWdPT1RnODhhdGpVK3NnZVE4YUlpblpwaU1EdXJlQlNv?=
 =?utf-8?B?L0ZWOGQ4dUhqY2I2a3JtOGllejdxOHBRRUMzTVh1Y2xpdTFYNjd6YXJ6WEt2?=
 =?utf-8?B?dzlEUUQ3blRvSEZiT05JNHFiVzhzU0xlWVJnYlhyaVBnUy8yVU83T0ZJcTVK?=
 =?utf-8?B?ZTIzY1lQSFB0VUZPcGZKb0hRVTRpVVN3T2V3ZlZETmE5MkJDVVI2VS9GTHNv?=
 =?utf-8?B?MGoxOHBnRTd2dUU5bHhZWk4rRktLVU9WajZnOHNLQTVvOUhVK2JrdllFNmZo?=
 =?utf-8?B?WEdlcjYyNWQyeFBUYXdSZzBWai8xK1VNWFQ2amFJYXdHTkc2QWdqdzNIWWkx?=
 =?utf-8?B?d2l6bWVqSjN1Skgxd1lWQkJKeHRxdVk1b3BHc2NtYWVEaUFYR3V0R1FQUllV?=
 =?utf-8?B?djRldlZzWkRjdjZoVzdmNkJnRVZnRkUzVmcyZ2Q2TzdKWUFNdm1PR1JhZnZJ?=
 =?utf-8?B?dERIbExPSGlRejRZZUdzTjdDZENBOU9UdWF4c1BiSTliZFNVNDhUWDVnSUdt?=
 =?utf-8?B?OWRaR1NhLzNGWUtJdFc2Qi9aR2ViN2x3MGcxbHlSeHRlb1prTlFBTmdpY0Ir?=
 =?utf-8?B?cGRpOENuMFhGVXBTTjBJcmlUOUhtNGEwQXo1cDZaaHFrQmIyYTlkY203c251?=
 =?utf-8?B?dFVTMWJGdWxkc3M1ZEtTMXhxeWU0cGRQejkxMDZlZjhpblpYY2VOSU9lQWlC?=
 =?utf-8?B?c2NoenB4SWJRdmJDNE9zL2JzZm50TWlidDdCd3J5NzRJUHRuZW40ZWhoZTBQ?=
 =?utf-8?B?aWJDZzVyWVIwSDgwSXFnVmNYdHROUk84UVA3VmNtUUVaOFJ5KzRiOTVWMURy?=
 =?utf-8?B?YkNUbkdvZzBZRnJGbzBodGJudHRGZ2lINW1sK2RUdDlIbTdIN2ZLUnVXQlZI?=
 =?utf-8?Q?QnTXSQExNkmao?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cU1TVVlDUmlnVXpuQlZjVGQ1Z05ieVczdUZGZ1VmUlA1NVlHVHNNUWF0YzdP?=
 =?utf-8?B?S2pXZTkreHhIUE5zUjBvSnBGcXF0dzRrYk1PbXpzN211R0huN2tBTFoxYmlo?=
 =?utf-8?B?NDBBbExKVUNvSFJsVHpra0o4aCs0YjQwL2xUK2JnYVEzSmZiaTZJaVIwSDVX?=
 =?utf-8?B?bFVsaHhzQU5TcVZoTldyVnBieWg1VnJVdEN0WWhGWlpZZmtYTGs4Qm9kcHlP?=
 =?utf-8?B?c1M3ZTArRGRYSkNtdWNOUnFZOFF5S3BYbFQ5VyszY2c4ZWYwUEY1cmFjYVhG?=
 =?utf-8?B?OW5uRldlcTZxODErL1VSb2RHK1VZVXA4aExTeUhtNElYTXEvdTlBTUs3TXNX?=
 =?utf-8?B?dUlPWGpDZ2FOcE5ydGJkR2tkVEs1OGN0cjFaeWF6aFZOY3hLOEtTOVQ0M0tk?=
 =?utf-8?B?YitMOXExak92VVpXd0FUS2d5Rkh0NEQ0VjZYVjBzb2x6L0krTVNSb0IwSi9z?=
 =?utf-8?B?YmN3QnhwTUh2UXJRaFRHdlhydkdrWGZHOFVLMndqMnN4allCU1l2Ly8zci85?=
 =?utf-8?B?cUpLWU0rT1dCbVpuQUlaUmhGM3ZlZ0JPZk43WE1TYlpVb1JsZFhJL2xib1JX?=
 =?utf-8?B?VG1acHR0RVJPd2V6NndLNW5yckUrUjNHbXN5dm5oUVBveVVtZnIvYThhOUpw?=
 =?utf-8?B?UnpjUk4zSGVYdTFjT0FUYUtOVHlGcDMxNTVoR3BObVpzOG50VlFXY2pnbHVn?=
 =?utf-8?B?OEtGV2R6MS9xKzJROXZHN3NGVXgySmlnUnE0RzU3NGhTb1JLUFRnallnK3Y5?=
 =?utf-8?B?aXpEVTdTWFkvaTIrc2xQK0txV1l6dXdlVWRwUHJsRm1zeFJyV3JxVzBpQjFB?=
 =?utf-8?B?RHI3MDQzMmZZWlJEaGVKWnhmUytnYTBCZDRxTGd0Rkh6SUsvQTlKMEFlRFdU?=
 =?utf-8?B?RFp0SjlISDJ1eDNxVFpjUkNrMkNxbUozZTRpNkx1NU92V3JxRTRKKy9BZWJZ?=
 =?utf-8?B?RFpUZFhzSWhEaXA2b0pVdHBhYnBacGFXNlBuL21FUHJQdmxMU0VORHdTR0tr?=
 =?utf-8?B?TU5TNlIrQ3pJbzZHcEVsdllScjRHUS9nWG8zU1N3ZmVNWDFmWnlCT1ZKbzR3?=
 =?utf-8?B?bVZaeW1MV3NkcTc2eDRnYTBFendMbTNidXNubW1UaEFDNklncFIrWEhrQnhj?=
 =?utf-8?B?d1V0VlFqeHRzTTJyMzBwbzBUR3FQcXlHVGpaZlFSKzEvZUZKaGJ2V3ZLR1hE?=
 =?utf-8?B?MlBLbkw5RG9odE1XSGlGanhLR3QybnMvQUpIeG5KQ3dqTzFHcmREdGRqNUd1?=
 =?utf-8?B?bVJzck5YVEpIM1ZNc0RzS3J4Y2x1bXJaRlpZWU5hYmE1aXlzQUlINzA2S3RT?=
 =?utf-8?B?TEZHNGtYbUZmTFNvTXZRTjBHeDdyNGY0Q29NcEVrbEtMYi9BVUhoNXdod0hL?=
 =?utf-8?B?aHN0UFdoUnY2R3Q4UURPYko5NHhzUkgwZTNWUERta0JpMGZnbi9iaXhYOHJh?=
 =?utf-8?B?bndTOVNEaEh3RWxCbSs3THlwNjV0Q2JwMG90TVk4WTJCdGg1V0J3ZDR3VXR1?=
 =?utf-8?B?S2pnMzFrM1p5SGR5WStMcjhkS0s0eGEyNFlrTWFYQkdUcllwOUt0a0gxMWIx?=
 =?utf-8?B?TTZZaVY4TkprRi9ldGFQWG4yV0Q1Y2xXNkJmNmI0cGRzYVkrMDlDS3EzVUZY?=
 =?utf-8?B?Vy93SHA4RWVaU21JSUU1eTNKZHFVUUs0cFBaaHRJeHJjdjhMQmR6N1FWanpl?=
 =?utf-8?B?dFl5ZEZ1bE01Rmx4WlUyQUF1azUrSHFtb1hyRk9EcnFPM0xUTHBpZkFhdVF0?=
 =?utf-8?B?dTZiM0NpVjZNTkpIVDR5SmhxZlRoOEo0ZlV4c01CZHZHNnlHS3d3Nmo0bC8z?=
 =?utf-8?B?TmhkeUhxRzQyNHRGQVFrRTRGODJhK3J3cWJlUUJOZjM2T0VwMFJZUVJaY3Vn?=
 =?utf-8?B?T3NpcnRCRlROZHRLcStSN1Iza1dsaTFnbk1aaEY4WXBnUlNZZi9JSzFwSUZL?=
 =?utf-8?B?MTZOc21WbVRmU3ErZG9FcEhadWU2U09oZTVGNWhmZ3NhSlFSSTA0c2dBMnhX?=
 =?utf-8?B?emVzd2FhakRHdVNLd1BCTENHUUtWTG1KQzNHbHVsODdURWUwcFV0ZzM0L2RV?=
 =?utf-8?B?RUI3dS9KSHFyZVJGMmlxYTZWbGdKQU5tUklMcE55cTJKUkR6VldaWmZxWXZ5?=
 =?utf-8?B?VS82S0NHMUVRMjRLcnlvQlVsTWdnU0ZUTThnK1FNL1hJUU5xUDZ3cG9UWGRB?=
 =?utf-8?Q?utt3N4ZkRtI+58r/MR6gA4Q=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c140086-c314-458d-6398-08dd300836e4
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 17:16:39.8712 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ie0+xnuF9t+9VidCqLc21K9hMtQxI/hufmmr9vVS2X+uPNJOWLPeJxKJJ4awWnWgwSYsNKbwe/4zM1Tv2HIIQtJQhDX3AGWbbkKp9fNvtCM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7550
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




On 1/8/2025 8:06 PM, Dnyaneshwar Bhadane wrote:
> There is new field "edp pipe joiner feature" size of 2 bytes in the
> eDP VBT block. Each bit represent panel number to be enable/disable
> for this feature.
>
> Default value:
> For ARL platform, 0x0000 to keep the feature disabled by default.
> Xe3lpd onwards, 0xFFFF to keep the feature enable by default by VBT.
>
> Bspec: 20142
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vbt_defs.h | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> index e9b809568cd4..2fdad5170896 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -1090,6 +1090,7 @@ struct bdb_edp {
>   	u16 edp_dsc_disable;					/* 251+ */
>   	u16 t6_delay_support;					/* 260+ */
>   	u16 link_idle_time[16];					/* 260+ */
> +	u16 edp_pipe_joiner_feature;				/* 261+ */

Better to add variable when we are actually using it in code.

Regards,
Ravi Kumar V

>   } __packed;
>   
>   /*

