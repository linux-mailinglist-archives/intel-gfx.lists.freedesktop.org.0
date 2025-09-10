Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6F7B51808
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Sep 2025 15:37:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC9B110E921;
	Wed, 10 Sep 2025 13:37:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hh9phXos";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C7BA10E91F;
 Wed, 10 Sep 2025 13:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757511466; x=1789047466;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=a0FLc5fc4FhX/lQVG+8WNPNN04HYzsPxScP2tFaFRfE=;
 b=Hh9phXoseqPLYBqEMZRwikTNOaXUE6skz1j7vd95AL/4jX/FORj8x+w1
 dKLInbboCErFX49dPMtIBZ+8Uk8vdNWo+xBecmlkvUZUI0Uxp8oJ2Lv+U
 ic2kC5R/9PANBR63Jxq135astYnWyXwRIzbkWaWODKGcrBt+pGTZ27CFa
 pcpfolNqyo9SrGZmMGwOf/zC+ah3VT8o105t5xDVY+ft4NVBIqNnFsaII
 pPLmQrfzZdU0aIShVUVqZTb6ktIpm+P0CMa3P0LHr5zKl9NXTBBxkmaBg
 QG314uY3NYpIT0tdOne62fPkBOkWUQWDLwG4uQvWKQi/uBlslG1avW+sB A==;
X-CSE-ConnectionGUID: I98i4zD2SmSeXpvlj6OTlQ==
X-CSE-MsgGUID: Y8YuJnrSRE6ZyaKZ2iKE5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="70511710"
X-IronPort-AV: E=Sophos;i="6.18,254,1751266800"; d="scan'208";a="70511710"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 06:37:46 -0700
X-CSE-ConnectionGUID: lPZPf4E9T4+ll6xflYOtTQ==
X-CSE-MsgGUID: rJAGKioWS1GuJNgO0CtHIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,254,1751266800"; d="scan'208";a="173847351"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 06:37:45 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 06:37:45 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 10 Sep 2025 06:37:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.43)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 06:37:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BSNrWFRRSs5wGjAVZPmnXFT4gk2YlhTd5to7dzB/HgNoKHpsE8295vv7xbRoV3aqXvfcpXbMI7uXcne6GSuhOnQz02/uESpDn66rYk1SEuYVRCZ3N7gNNJTTYTDY1Rc6YO/flkjTCkRLc/Kq00q6831EB9O9/FAJj1x52lIOgL+naAXOJuULJzGLkeYtws/+OwQB+QpkaU+HRqktbTUCWQAk6Yd6GHRdbLIWaei98cGW+N1eu4CArkfeDpFvyvPivccOnGtesMEYa+oR7MXNgiMdxV7Y27hi680Gzyct0cENHRuRyH5FIOhpd+EUGb3ni2qVLUw5rTex1diJ0mJ5Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P+yQfK97cjVuUZoOek7f3dD5TSdlo27e104AVntCKwk=;
 b=LWo2MZ1ZCZTwprdiMpJRivM12IOQ+x2xw62vE2eT7AZfU6ozup/f8Ab367SXO1qlmJxOh7M9K7iuo7atw8SW8Gaw3lAF6ZfrWf/v4HbBOyiUawc/JN8OYGxx5LDNJjIXvh82/+oclm8Z2lx4Nb6ibNpvRdbK9lu11oxNYILW2zQIiDjxrohpdPoKAyma5w1fKxxuop29mmW98sNB8N4iDjl4wfkGCgxTmSXDjm9/UsGCEUjVW3dvYe+/rQ11ii9cYAoErT26eDwkwcggz92Z9fClvmrxJBPWPU1dlKSmQvudmK2OClgvnHpN1hMYgGcfjBRcPRD62KACcuX1G9oqxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB8795.namprd11.prod.outlook.com (2603:10b6:806:468::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Wed, 10 Sep
 2025 13:37:41 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9094.021; Wed, 10 Sep 2025
 13:37:41 +0000
Message-ID: <71de0071-b6a6-465a-8da9-9bfd661a6877@intel.com>
Date: Wed, 10 Sep 2025 19:07:34 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/14] drm/i915/vrr: Use static guardband to support
 seamless LRR switching
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
References: <20250907073241.19632-1-ankit.k.nautiyal@intel.com>
 <20250907073241.19632-13-ankit.k.nautiyal@intel.com>
 <aL8HmW0mXKvHNGF5@intel.com> <39f9b204-817a-4911-837a-7f5be94d2a0f@intel.com>
 <aMFva97JaRWxZUKn@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aMFva97JaRWxZUKn@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0014.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::21) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB8795:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e4cf61e-5777-47f0-dbbf-08ddf06f36bb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V0dlOU1pbjRTVFZJekw1S29MVWZpUW1YeC9vME5lczhkV1N4ZWtZbkp5UjAy?=
 =?utf-8?B?WWhCeHFwRHVrTGc1U28zRHRaK0NZVHN2b2lzWkVhL3N2ZDB5WlM0OWFwRDJq?=
 =?utf-8?B?TmVoVVFGNUpmTWpYZ01uaWNKZnVPejVhdDJMZmtyOUMrM2dhSFcyaG05c2dR?=
 =?utf-8?B?YkM3WFExZlF1TjBwTTB0Und6Sm1iT28yVlp3ZEo1SEkwMTI0d0RaVmhYRGJs?=
 =?utf-8?B?RzlRZnVzS1dFQ3l2UmxRZ2Vhd0tSWkhQRkJwRzBGdkJtYU9HSWFYMEoyS3ZS?=
 =?utf-8?B?ekN3dzhjMGxYeGpiWndzNXZoZDJQN1RaWE1UdTJES090TTlDR3RROFYwc0pu?=
 =?utf-8?B?a2NDdjB0TFFjVzZjSGl1aTJaNzl4bzZvbmVQdys4L0dVYzNQaFJURm51cmtS?=
 =?utf-8?B?NXRMU2pTZ3RWYjR3ZG4ydGpRYytXWGZ3WTVEQjZ5bHQvbGRaVFlmejJVc2da?=
 =?utf-8?B?TnRLNkJUaUkwTWk4elZSOCtVRDRLOTUrZzFpZDE4NHg2VHZ2ZXlrUE5SazJJ?=
 =?utf-8?B?V1QwYldHd1JadUlHTkRrYlNRTGtXSEFDOGlTSHJydzV1QXZLRE5BdVl0RHNQ?=
 =?utf-8?B?dWxCOXRNaDJkQW9KbGZXa2w3b08wZUFjSlBIYWVnQlVldDlKTHZ3SUhJMyty?=
 =?utf-8?B?ekRzY0huRW56d0ZPSm9XK3NRZmltTy9FajlmS3R0eEwxbzkyczVQLzJGeCtz?=
 =?utf-8?B?WERLSHRDRFFFSUhnNlNrSHMyRjBqRUhmU3VRY1QrM1Zaenp2TVk1VmhYaWl3?=
 =?utf-8?B?ZWdHaFI0NkMvMHJ3dGczdS9YMzhZVlcySTNQdkdBSUR0T1BXamkvVHJuWENx?=
 =?utf-8?B?bnlmK05UWFhua0JkZlJHN1o4eFc2ZFM5NTZEVitRemh3M053dW5QR253ZGhK?=
 =?utf-8?B?V1lRUlJ6T21MTGp5UldCU2dZanJNMWpib0d0WkdKVWU2eUs4aGxweDdIN3J6?=
 =?utf-8?B?cGJIbFVZUGJsYk5CSGNHT2hQTWRiVisvdlUrUTVjSU9GTnd1aWNFN3RFVjBx?=
 =?utf-8?B?WUoraHpNU0NCYlRhbmVzZHAzTkMyTjFGWWsydXh4dXAzVDdZcmN4c2EveGpC?=
 =?utf-8?B?WlQvMFVGb0ZkaEhCUXpsRWhzcFZrU01hYUtzOEsvL2xicEtzQUFIUXJIa0th?=
 =?utf-8?B?RUh2YkNMZ2dNd1RLZGtYeDlGUHphaDQ5SU9YV1JEcDMwSzVaZWJGLzBsd1h4?=
 =?utf-8?B?TXZpVHhMWHF3OXRyVlpuUWY2REswanFDTEtLMTcwUmpqN0dPYlI5SHl1NzVI?=
 =?utf-8?B?ZHAxVkpGdCtrd0hvZjd3T1g3cFJNd1cwYmNhdUFYL2svUzF1Skhadk5yQ3Bu?=
 =?utf-8?B?ZmFwVzhaalo2cUVkai9DN080aTkvVG1YQ0dBYTZ1aGNWVVpVSUxnbE9lbHJ2?=
 =?utf-8?B?NFNBREdSWHYwU2IxTGd5VUZtU1p6MFNQc2tzZlhRK05nSjZEZnFaWTMxV2d6?=
 =?utf-8?B?QWtLWkpPUDFDK0I0bmtnUEs4eVZkQVBPTnZGbUw3M2sxZUxGSXl4cWhCWnBv?=
 =?utf-8?B?QStMTTVDZWtLZW5YcVlGR3E4NmNSRWxkOUQ1NmpXOEhoTjV4SGZtSTNJZnhj?=
 =?utf-8?B?QUtORFdaaHlXVUdwbWZzU0JtUUFzdyt3L1hOZmk3T1FxSTFoZlVJZWoxN2N1?=
 =?utf-8?B?eUM2WmV4a3kya3hTVFZsbWh0ZW1seTMvZ05MQlYzeVRJMi9EWjErRjk5Sytx?=
 =?utf-8?B?RzY0SGdSWFdYMFMvVU81K3oyaEFCNTMyZitSTi8wNis3K2xvTGZyOVZYeXBH?=
 =?utf-8?B?V0RVMHFFN1NsbVd6eEpxTm1XeWkwd0FscktEQUtaMDVJMzN3b0taczJjSUFF?=
 =?utf-8?B?UFhpYlFwa24yU2xiQjJyUWZhRTdYaGN0ZmZHVGZWNUlIeTI3S0VCL3EyZDVF?=
 =?utf-8?B?M0NrM1JXRGdMU0QrOGQyVWxoS3Q1L3hHMUgxRXlyVE9YeWhyTzM4RXhxV3lI?=
 =?utf-8?Q?L9DHQ1LKnEY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z1E1M3V6STJKWE9hdTVObHc4TXUzdWtzODIrNFB2V0N2N21lcnRqYVFRc1hZ?=
 =?utf-8?B?OG8yZ2J0N2xmQnI4MXJlV1BxSDhscGJJREFza2xzdk5hVGxTTmJtTzRUb1h6?=
 =?utf-8?B?MHNNcU80QjZLV08zYkJRSzRReFVpd0loUng5WmpZSWRhZ3RrSG9kREtyU3pl?=
 =?utf-8?B?bkRacWErWVNGelV5VmlyVjZzc0ZMZkNoQmNacEN4V1VoTVlGcU5Cbkk1Qzc3?=
 =?utf-8?B?c1dKRFhVOHAxRnRiT2ZVRmlBMnlJZHh0a3JDSDlyTGlqR3hBNDFlcXNBdHBW?=
 =?utf-8?B?KytIQ1pZU2hOOTYydElKWW1NNE81ZXZLMmhOOHhobVZoaWljVUlwWmg1Nitx?=
 =?utf-8?B?SkcvQkFPVSs5M2kzTzlrVUw3azR5VlNzUEhXb0xvdHlveXNOWTFRbUR3a01h?=
 =?utf-8?B?ZWovQkhZUjMrcjJrODRmL09Ja21MS1J4eDdrSUVjczFjQk5sMWpPVkNBbGNC?=
 =?utf-8?B?aXdqQU0ya3RDYzVhdlJiZVFuYVVwVUsrV09xbUhaaHcwdjc5UU56MnFSdXg5?=
 =?utf-8?B?MnZjcEoxbENyYUJ4MHhYSVN3T3h5aFFyenA2Z0c1aWIvdmF0OE54WEVsblgw?=
 =?utf-8?B?bzFyQ28zVm5Hcm1hN3FXek5PSjdTbTExMlFFWFN5eUNWaHdIeUdZb3Axc0Fo?=
 =?utf-8?B?NVgwOFZOdzUxV041K1ZxUkJPMWtjSGM4OTVhVW4rNXk3ZER3SVdoSVpuNSsy?=
 =?utf-8?B?ellSQUl5V1JqL3JpREJFMUdxWmtnZHJBMkJTdXJzN3BmY1BVNkgzYWRNRVNM?=
 =?utf-8?B?M3ZGRFhZQ08vMXVQQ3gzZUx3VUYrOXREakJCM3E2eCtFdDdERkJNbGJDSzc3?=
 =?utf-8?B?Kytwd0tDcHRialdMdnQ4VDdXcnRBRVF6eFBjSzlpelZPTVo1Vk9NYlpLemVm?=
 =?utf-8?B?OXpFaGNkSlVmZmw5RXJZOEZGM290ZUFWTU4vWUxTdk1zNXN6UG15bG00bkpl?=
 =?utf-8?B?VTluSVV5SjhQbTVIN0VpRElod3lyOUNDVWFVODNiQ3M5SnBSM3ZkenFGSTdW?=
 =?utf-8?B?K21DM2piaFVoOGdkV3hoc3pNcHJzOWdhdWU1WlBVekFFUU9ROXkrM0p5bWgz?=
 =?utf-8?B?K0htbEhEcFdVSktvajA5aFZraVpUZnllMXdzaytWNDBrbmJzMVFTY2tmWnVy?=
 =?utf-8?B?bHF3Q29XcFNrNEFuMmhwd2Rrd3RnRmtFc0VNdXFyUUN6eTBqaEp5QXlyL2Ix?=
 =?utf-8?B?cHZqNS8wU2paMFNyQWJMV0xwaW93NzVrZXYySjFpdTFBTlA1bzlldDF2TDVX?=
 =?utf-8?B?LzJHa091ZHVHQ0F2QXJZN0tjbXJZWXA5Q2hVYWNoM1U1LzU2dVVSNEpkMU00?=
 =?utf-8?B?REpWWURyMHJzZzNEMFY5UklRN2hpZVJTaElhWThCcHVXU3h1cGxleHdsSkp6?=
 =?utf-8?B?VTNyb3NNck5XbFUzKzU2Nk5Yc3VUZWVtSkFnLzBvbmIwTkRtMFVtTkExK044?=
 =?utf-8?B?b2ZsM2dPU1d1NTNRUEk2VWpxaG9URXNKeUUwZUswMlZtK3RZU0lITlNMRVhs?=
 =?utf-8?B?VWNKc2hseVJWcm1HaXo5YnZNZnlzSkgxL3hhUW1PbGM0Q3c3UUJkSitIK3c3?=
 =?utf-8?B?VHYxb2RJRG04THhBemZVV0JoTzNwQ2hVUDJXQzZTcXNtQTJyK0c3M1M3NDVl?=
 =?utf-8?B?aU11UVpqMituNlVjdU1ZeWpUMlNlTVY2Uk95MWdJcVZCOSsrUTJxb0VzQm9W?=
 =?utf-8?B?cWg0KzNmVHN6ZDE0ZU4yYWkwcDYvamsreThlM2JzNDZVTmF3eXRDTlhtRXg1?=
 =?utf-8?B?L1ljVlY5ZkF2ZDZBZGhWaHl0V0wzajZPd2p1NGxUc1BIeHhib29DNWFUenY3?=
 =?utf-8?B?QU1ZTmhuMGdST3ZQSDlvckcwWDlrTGtPS0ZzY2JZcFRQTXVJZGFIOVJWdEFn?=
 =?utf-8?B?U1ZpZHdQWUhzekc3RDIrMDlRZWd5dmZLMXJEalBETDZlSlVMaktCZmNvZVl6?=
 =?utf-8?B?YlFHdE9vQVd6NGkycWxZUHZGMnptWU12NXhNajdIWmxiZmMwaVNHNnhBaEFq?=
 =?utf-8?B?dUluSE0zVkE5SXRQeWpnZlpXRHUrV3RKeE1mUmtWMU1DdDBOUzVoOXJBRGxJ?=
 =?utf-8?B?azhtYnRmTi9NNThuTXBqMlRCOHZWdGZzY3V0ZUQ5RUxLYkszY0tFOTgrTWw4?=
 =?utf-8?B?SWNxbE51NDB3TTIzWkVTSko5U3hDL3pBWkVVVkk2N21jQnFLSDBsWENSMWRN?=
 =?utf-8?B?SFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e4cf61e-5777-47f0-dbbf-08ddf06f36bb
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2025 13:37:41.0884 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Fb2Bwg/XCX/jhFdDMiMGmX/kXlRwXBY5mJViXsuqHH0XwW5qD3bcF6N18/NwctOmZdwrZgsdGmqKfhUC4LTrXoGw+BZNpmKVRwjClelymI0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8795
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


On 9/10/2025 6:00 PM, Ville Syrjälä wrote:
> On Tue, Sep 09, 2025 at 08:32:11PM +0530, Nautiyal, Ankit K wrote:
>> On 9/8/2025 10:13 PM, Ville Syrjälä wrote:
>>> On Sun, Sep 07, 2025 at 01:02:39PM +0530, Ankit Nautiyal wrote:
>>>> In the current VRR implementation, vrr.vmin and vrr.guardband are set such
>>>> that they do not need to change when switching from fixed refresh rate to
>>>> variable refresh rate. Specifically, vrr.guardband is always set to match
>>>> the vblank length. This approach works for most cases, but not for LRR,
>>>> where the guardband would need to change while the VRR timing generator is
>>>> still active.
>>>>
>>>> With the VRR TG always active, live updates to guardband are unsafe and not
>>>> recommended. To ensure hardware safety, guardband was moved out of the
>>>> !fastset block, meaning any change now requires a full modeset.
>>>> This breaks seamless LRR switching, which was previously supported.
>>>>
>>>> Since the problem arises from guardband being matched to the vblank length,
>>>> solution is to use a minimal, sufficient static value, instead. So we use a
>>>> static guardband defined during mode-set that fits within the smallest
>>>> expected vblank and remains unchanged in case of features like LRR where
>>>> vtotal changes. To compute this minimum guardband we take into account
>>>> latencies/delays due to different features as mentioned in the Bspec.
>>>>
>>>> v2:
>>>> -Use helpers for dsc/scaler prefill latencies. (Mitul)
>>>> -Account for pkgc latency and take max of pkgc and sagv latencies.
>>>> v3: Use new helper for PSR2/Panel Replay latency.
>>>> v4: Avoid re-setting the Vmin/Flipline for optimized guardband.
>>>>
>>>> Bspec: 70151
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> (#v3)
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_display.c |   2 +-
>>>>    drivers/gpu/drm/i915/display/intel_vrr.c     | 127 ++++++++++++++++++-
>>>>    drivers/gpu/drm/i915/display/intel_vrr.h     |   3 +-
>>>>    3 files changed, 128 insertions(+), 4 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>>> index fb072275b1c7..3fa94675d5e1 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>> @@ -4902,7 +4902,6 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
>>>>    	struct drm_connector *connector;
>>>>    	int i;
>>>>    
>>>> -	intel_vrr_compute_config_late(crtc_state);
>>>>    
>>>>    	for_each_new_connector_in_state(&state->base, connector,
>>>>    					conn_state, i) {
>>>> @@ -4914,6 +4913,7 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
>>>>    		    !encoder->compute_config_late)
>>>>    			continue;
>>>>    
>>>> +		intel_vrr_compute_config_late(crtc_state, conn_state);
>>>>    		ret = encoder->compute_config_late(encoder, crtc_state,
>>>>    						   conn_state);
>>>>    		if (ret)
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>>>> index 855974174afd..fff684eb2514 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>>>> @@ -6,12 +6,15 @@
>>>>    
>>>>    #include <drm/drm_print.h>
>>>>    
>>>> +#include "intel_alpm.h"
>>>>    #include "intel_de.h"
>>>>    #include "intel_display_regs.h"
>>>>    #include "intel_display_types.h"
>>>>    #include "intel_dp.h"
>>>>    #include "intel_vrr.h"
>>>>    #include "intel_vrr_regs.h"
>>>> +#include "skl_scaler.h"
>>>> +#include "skl_watermark.h"
>>>>    
>>>>    #define FIXED_POINT_PRECISION		100
>>>>    #define CMRR_PRECISION_TOLERANCE	10
>>>> @@ -413,15 +416,135 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>>>    	}
>>>>    }
>>>>    
>>>> -void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>>>> +static
>>>> +int scaler_prefill_latency(struct intel_crtc_state *crtc_state, int linetime_us)
>>>> +{
>>>> +	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
>>>> +	u64 hscale_k, vscale_k;
>>>> +	int cdclk_adjustment;
>>>> +	int num_scaler_users;
>>>> +
>>>> +	/*
>>>> +	 * Assuming:
>>>> +	 * Both scaler enabled.
>>>> +	 * scaler 1 downscaling factor as 2 x 2 (Horiz x Vert)
>>>> +	 * scaler 2 downscaling factor as 2 x 1 (Horiz x Vert)
>>>> +	 * Cdclk Adjustment : 1
>>>> +	 */
>>>> +	num_scaler_users = 2;
>>>> +	hscale_k = 2 * 1000;
>>>> +	vscale_k = 2 * 1000;
>>>> +	cdclk_adjustment = 1;
>>>> +
>>>> +	return intel_vrr_guardband_scaler_latency(num_scaler_users, hscale_k, vscale_k,
>>>> +						  chroma_downscaling_factor,
>>>> +						  cdclk_adjustment,
>>>> +						  linetime_us);
>>>> +}
>>>> +
>>>> +static
>>>> +int dsc_prefill_latency(struct intel_crtc_state *crtc_state, int linetime_us)
>>>> +{
>>>> +#define MAX_SCALERS 2
>>>> +	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
>>>> +	u64 hscale_k[MAX_SCALERS], vscale_k[MAX_SCALERS];
>>>> +	int cdclk_adjustment;
>>>> +	int num_scaler_users;
>>>> +
>>>> +	/*
>>>> +	 * Assuming:
>>>> +	 * Both scaler enabled.
>>>> +	 * scaler 1 downscaling factor as 2 x 2 (Horiz x Vert)
>>>> +	 * scaler 2 downscaling factor as 2 x 1 (Horiz x Vert)
>>>> +	 * Cdclk Adjustment : 1
>>>> +	 */
>>>> +	num_scaler_users = MAX_SCALERS;
>>>> +	hscale_k[0] = 2 * 1000;
>>>> +	vscale_k[0] = 2 * 1000;
>>>> +	hscale_k[1] = 2 * 1000;
>>>> +	vscale_k[1] = 1 * 1000;
>>>> +
>>>> +	cdclk_adjustment = 1;
>>>> +
>>>> +	return intel_vrr_guardband_dsc_latency(num_scaler_users, hscale_k, vscale_k,
>>>> +					       chroma_downscaling_factor,
>>>> +					       cdclk_adjustment,
>>>> +					       linetime_us);
>>>> +}
>>>> +
>>>> +static
>>>> +int intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state,
>>>> +				struct intel_connector *connector)
>>>> +{
>>>> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>>>> +	struct intel_display *display = to_intel_display(crtc_state);
>>>> +	int dsc_prefill_time = 0;
>>>> +	int psr2_pr_latency = 0;
>>>> +	int scaler_prefill_time;
>>>> +	int wm0_prefill_time;
>>>> +	int pkgc_max_latency;
>>>> +	int sagv_latency;
>>>> +	int sdp_latency = 0;
>>>> +	int guardband_us;
>>>> +	int linetime_us;
>>>> +	int guardband;
>>>> +	int pm_delay;
>>>> +
>>>> +	linetime_us = DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
>>>> +				   adjusted_mode->crtc_clock);
>>>> +
>>>> +	pkgc_max_latency = skl_watermark_max_latency(display, 1);
>>>> +	sagv_latency = display->sagv.block_time_us;
>>>> +
>>>> +	/* Assuming max wm0 lines = 4 */
>>>> +	wm0_prefill_time = 4 * linetime_us + 20;
>>>> +
>>>> +	scaler_prefill_time = scaler_prefill_latency(crtc_state, linetime_us);
>>>> +
>>>> +	if (crtc_state->dsc.compression_enable)
>>>> +		dsc_prefill_time = dsc_prefill_latency(crtc_state, linetime_us);
>>>> +
>>>> +	pm_delay = crtc_state->framestart_delay +
>>>> +		   max(sagv_latency, pkgc_max_latency) +
>>>> +		   wm0_prefill_time +
>>>> +		   scaler_prefill_time +
>>>> +		   dsc_prefill_time;
>>>> +
>>>> +	switch (connector->base.connector_type) {
>>>> +	case DRM_MODE_CONNECTOR_eDP:
>>>> +	case DRM_MODE_CONNECTOR_DisplayPort:
>>>> +		psr2_pr_latency = intel_alpm_compute_max_link_wake_latency(crtc_state, true);
>>>> +		sdp_latency = intel_dp_compute_sdp_latency(crtc_state, true);
>>>> +		break;
>>>> +	default:
>>>> +		break;
>>>> +	}
>>>> +
>>>> +	guardband_us = max(sdp_latency, psr2_pr_latency);
>>>> +	guardband_us = max(guardband_us, pm_delay);
>>>> +
>>>> +	guardband = DIV_ROUND_UP(guardband_us, linetime_us);
>>>> +
>>>> +	/* guardband cannot be more than the Vmax vblank */
>>>> +	guardband = min(guardband, crtc_state->vrr.vmax - adjusted_mode->crtc_vblank_start);
>>>> +
>>>> +	return guardband;
>>>> +}
>>>> +
>>>> +void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state,
>>>> +				   struct drm_connector_state *conn_state)
>>>>    {
>>>>    	struct intel_display *display = to_intel_display(crtc_state);
>>>>    	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>>>> +	struct intel_connector *connector =
>>>> +		to_intel_connector(conn_state->connector);
>>>>    
>>>>    	if (!intel_vrr_possible(crtc_state))
>>>>    		return;
>>>>    
>>>> -	if (DISPLAY_VER(display) >= 13) {
>>>> +	if (intel_vrr_always_use_vrr_tg(display)) {
>>>> +		crtc_state->vrr.guardband = intel_vrr_compute_guardband(crtc_state, connector);
>>> This all looks to be in the wrong place. It needs to be done as part of
>>> intel_crtc_compute_vblank_delay() which then updates crtc_vblank_start
>>> to reflect reality instead of leaving some incorrect junk in there.
>>> Presumably that is why you also had to do that
>>> intel_dsb_wait_for_delayed_vblank() hack.
>> Hi Ville,
>>
>> Thanks for for the comments.
>>
>> Looks like intel_crtc_compute_vblank_delay() indeed is the place to add
>> the vblank_delay and get the crtc_vblank_start point to the delayed vblank.
>>
>> But I think, there are couple of things need to take care with this change:
>> 1) The SCL currently is derived from crtc_vblank_start - vdisplay, which
>> is ~1 with guradband = vblank length.
>> With modified crtc_vblank_start, this will become huge so perhaps we
>> need to set it to 1?
> When using the legacy timing generator SCL is what defines the
> position of the delayed vblank. So it should be exactly what it is.
>
> I don't quite recall how this stuff works with the VRR timing
> generator. I think it might have been that guardband more or less
> defines the location of the delayed vblank, and SCL then effectively
> defines the start of the safe window. So I think it should stay
> exactly the way it is. IIRC there is some way on new platforms to
> even move the SCL position into the vertical active, but I haven't
> though through what that would actually do for us.

Hmm yes for VRR timing generator case, guardband  defines the position 
of the delayed vblank.

Currently, I see that in most cases the vblank delay (crtc_vblank_start 
- crtc_vdisplay) evaluates to 0.

In few case its 1, I think based on intel_psr_min_vblank_delay().

This vblank delay is used to write in TRANS_SET_CONTEXT_LATENCY and to 
compute the vblank_start during readback.

With this series, since we have a shorter guardband now, the 
crtc_vblank_start is moved away by quite a bit.

Without modification this is resulting in TRANS_SET_CONTEXT_LATENCY to a 
bigger value and we are getting DSB POLL errors as it waits for safe window.

So with the updated crtc_vblank_start, for platforms where VRR TG is 
always on (and static guardband is used), I am now clamping the set 
context latency value between (0, 1).


There are couple of more points like with updated crtc_vblank_start for 
LRR, where it now changes since vtotal is changed.

Since guardband is static value the vblank_start moves due to change in 
vtotal, and prevents from fastset.

I have made some changes and will be posting patches after some more 
testing.


>
>> 2) The intel_dsb_wait_vblank_delay() (which inturn uses
>> intel_vrr_real_vblank_delay() for vrr case) also computes a fixed delay
>> based on (crtc_vblank_start - vdisplay) lines
>> Instead of this should we not use intel_dsb_wait_scanline_in() to wait
>> only till scanline reaches in range  [flipline decision boundary, vmax
>> decision boundary]?
> You can't use absolute line numbers with VRR since you don't know
> when the vblank will be terminated. It has to be all relative.

Oh ok. Then I will leave it as it is then.


Thanks & Regards,

Ankit

>
>> Let me know what you think, I can send a follow-up patch with the
>> suggested changes.
>>
>> Regards,
>> Ankit
>>
>>
>>>> +	} else if (DISPLAY_VER(display) >= 13) {
>>>>    		crtc_state->vrr.guardband =
>>>>    			crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
>>>>    	} else {
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
>>>> index 950041647e47..362638fd0d66 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>>>> @@ -21,7 +21,8 @@ bool intel_vrr_possible(const struct intel_crtc_state *crtc_state);
>>>>    void intel_vrr_check_modeset(struct intel_atomic_state *state);
>>>>    void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>>>    			      struct drm_connector_state *conn_state);
>>>> -void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state);
>>>> +void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state,
>>>> +				   struct drm_connector_state *conn_state);
>>>>    void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
>>>>    void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
>>>>    void intel_vrr_send_push(struct intel_dsb *dsb,
>>>> -- 
>>>> 2.45.2
