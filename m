Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YG/9Nw+oiWk0AQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 10:25:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 323FA10D84B
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 10:25:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AA4610E17E;
	Mon,  9 Feb 2026 09:25:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O9CUrd/D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29DC210E134;
 Mon,  9 Feb 2026 09:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770629132; x=1802165132;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E/YJ3hxlAyFSa9gO+KXpZBC4Ufj6Du2OngLJxNBBhDA=;
 b=O9CUrd/D3PEKnnL1T/VWAupCbqrGdy7e0S2+OJLjbfj6Y+DKLwbQLVi2
 79ocyNpluW/nW8O7luV5fxbF6xfU46obbKefSMeCrJY/ZSeEodpw5DbSb
 tOw6b7S0mh1sNMIRZ8Q4riHiNSObOHYJu+zn+tIx62tNULHYsycSjqQti
 BPSP7zCelcAdnK3KjZP/TJXiY+kHS04Zc7MUIFscXnlVdZIXrc6KGmmbX
 mtzYyX5L8gNIlWHAiY3TNmfMmlPjfmggYhcPU6IHzVNH1ziLmBXMB2k+V
 2emKrYYUSlKSYWzxd4EnAdYIbNUgdeMBV2KRSk9mXhWdq2Cdv0NUJeGfI A==;
X-CSE-ConnectionGUID: N9QTiisTSwqAOfobgS6MhQ==
X-CSE-MsgGUID: QjVUW8l9TlC0W49vRqQWwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11695"; a="75359638"
X-IronPort-AV: E=Sophos;i="6.21,281,1763452800"; d="scan'208";a="75359638"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 01:25:32 -0800
X-CSE-ConnectionGUID: lNT36eXZSGWb1deTWrEBTw==
X-CSE-MsgGUID: 0yHTujQzTPSoQYpN9yx3qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,281,1763452800"; d="scan'208";a="210627009"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 01:25:31 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 01:25:31 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 9 Feb 2026 01:25:31 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.18)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 01:25:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SJDLEaSWwgeRDrribF1SK65qmhkheVcacAJerUTQgY9imBeBxcahW+9ZYH9tBVi0FK1tqQdBNBnu2WhITgy1oERO1ml4jeIRmCs3bxz2sXILJrXTomVq00+jaBD13NRlT3brdrrbnZCuzjNbxzQrgwcINyt+IJGLOQHI6H1+A4sKcfM1V3NjYl0KuhaY22uREbjNN90N18jYA1poFQFp6tfQN+pG17dfwjVRGsLFyd5JTUeO2hh78h/p4juFpxNY5P+VhVQp2f3iCwwIeluYLimrBHEOckUNhDiLDkM3gxKnf5b/pFBPZkO7HYyRoSn6AvCPgDUNFLjiiZaVWxQ9eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+vAV2KWPcLNSQWfGKbTR3aQYTjG4ArNyhBmjxyMxPHY=;
 b=qxRlnT8xTJGcOpyKuvByVdWiP+pSYKXvRQUCPMj/4X+s7lMRg8bjhuEHnUEinNXNcJ82uKazJWBkaE+Ew1iZB/byhUOMHE/Nx/pfGOtUwKBi7ivWThjuf+gEOGhquYWArUWIZvk9+rBDeUKlRd+gq2ytfC/y1MvtH2ZeC/+iztXDtT0SVuj8NGl3GKk6ufhts5enI3wSsBzXJ/R5l3mRdnwWzGaPE2l9hI1Ou5lY5qgSEaoVG7b8wQMXDdM/67bB7+dKQiOyVqsMIppvxU6+YOBeFz1uSzoIwQ267tlXIsA/oRL+XsuKyxO4meTTiTwBP/gLLIRMX/a/gIQ5s2RnuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA0PR11MB7210.namprd11.prod.outlook.com (2603:10b6:208:440::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Mon, 9 Feb
 2026 09:25:28 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9587.017; Mon, 9 Feb 2026
 09:25:28 +0000
Message-ID: <459f2c53-8679-4987-b190-c7f9c54f237a@intel.com>
Date: Mon, 9 Feb 2026 14:55:21 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/dp: Fix pipe BPP clamping due to HDR
Content-Language: en-GB
To: <imre.deak@intel.com>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <stable@vger.kernel.org>
References: <20260206104227.290231-1-imre.deak@intel.com>
 <f6b59555-01f6-49ff-aff4-a6da9d347332@intel.com>
 <9ca3365b-c595-4401-8663-9c18ccc45d45@intel.com>
 <aYmdYjjRljq0dVSL@ideak-desk.lan>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <aYmdYjjRljq0dVSL@ideak-desk.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0014.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:179::7) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|IA0PR11MB7210:EE_
X-MS-Office365-Filtering-Correlation-Id: 16ad8691-267f-4ec6-d5c5-08de67bd29ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ajNjTXEyQXA0bit6TnB4ZlFCczRlUUxCY21TaElEWkJkNlJIUVF6TlBFNlZu?=
 =?utf-8?B?cEhaS1FGL2ZRUE9ZQzFSNU44dkJUdUl5dDVLOUFlaFAvUDJYTXE2eVpaMlVk?=
 =?utf-8?B?cE9jd1J0RGNIRHBGV2RvYzRnc0c3YjVNajZBNHlCVTZOMGJiek9nVk5lK1NF?=
 =?utf-8?B?dmR0SS8yd0lQK3dnWDU0YmFCMlR1RVNrekF2TzdjNi9wdjB0NmZCNTk0WWVE?=
 =?utf-8?B?Q0pZaVlEajRJSVNwckUwb29BMUR4ZGNuQ0lNVTVEdUF5M3orcU1GL3FMeUo5?=
 =?utf-8?B?cnkxZVExRG5sSUxURGhNN2FleHk1ZU9zTmdGRDkxY2RvTjN0S3pYaFhLeWZ1?=
 =?utf-8?B?UElRRUZucWxFWDJmQzdzMkJVUE5zU0N1MDM1VkVDSXIzWk02SGd0TWFRS2d6?=
 =?utf-8?B?MGhtUDVUeHNFTWRDeVRVWEZrV2ZmM3JXTU5LYjZpWVYvT291Y2FjV3ZRd09P?=
 =?utf-8?B?RlhaMEk4UFU1eHozY1dDUE9VSmt0aGpsN2x1TzA3OEl0V0tRTnFIb2pWaU8x?=
 =?utf-8?B?cjIwdXZIRmRRdUJ0Ry8zajJOV2h5YUZrbmpFc3k2ZlBlRUl6SW5OWWVOVndO?=
 =?utf-8?B?VXMxQ0l0S3JRQTdZT0cxemJtOHJtVFhoT2hEOGRMV29JV0dONUpZcm8zY251?=
 =?utf-8?B?V0NUWlNtMHp0OFFlalRPVlNhcEJ0MHIwdXRSZkg1WXdSZjVkSUFoWCtaOU9U?=
 =?utf-8?B?QTZxdXFEaXlubjlNNHNEeHRUd2EwTTZwUG10OWdSOXJMNFpzalRiTnJVZzI4?=
 =?utf-8?B?dkNOSGxUY2lRZG14MVZyY0tUVk9GTGR0THFjWWFlL2ZLNWdLYXVrUlVGZ0J4?=
 =?utf-8?B?bDdhOTZ5M3FIZi9xTTZaRUtkTkJOZzBxZEN5U0lMZEhHSWpoU1k2V29YN0Fs?=
 =?utf-8?B?NWhqN1N6Qnd3N1FVdzRtRWxhTWJTZTVQYnJVZzErSkVTS2U5bitQbW5aVEc3?=
 =?utf-8?B?dHBZNEFYcEFCd2NwUHc4QVptcStoVEtIZ1hoVWtlWmxDcno1OHAwaUdhRXJm?=
 =?utf-8?B?cEZuQndKVTgwT0Uyb0txME9SNVU2MkJsVXNnQlFJMFFRd3hpVUQ5TFg3c3NR?=
 =?utf-8?B?a01VTUJlalFvUGJyNU1sb0ZyR3A4bm9RZGl3bE9MalN4QnhQR3RCMGNHMUNm?=
 =?utf-8?B?OFBBaElnZ01jcTB3RkJCanRhTjJzekQzbW9XYnhPZ2hmYzZEUHZHZzIwVW9D?=
 =?utf-8?B?TWlXRDk0YS9xM0FCY09SVndIV1o1Q09yUHlYUmllanZteDZFZC9XY0Z5dU5X?=
 =?utf-8?B?TlpYL3RPMU54dk1NbUlxQmpxMDFqNXRJdkY4Vi9SeGZaUldodVN6OUlrQjF3?=
 =?utf-8?B?R2ZaQ0hVR1VXaXlSajN0R3lTUHRFa3BQYVRQMFg2RFRjNnRrYkk1MTJHaEZF?=
 =?utf-8?B?WE5yZlltSytoWHc2VkpPNG5HL05KTFR5N0JVY2hiSlR4VW5LR25XVmszTEJY?=
 =?utf-8?B?Wks3Q1ErdndVK1BYalVuVFBMQ0xuc255eTJUK09GM1didG5uNWg5dUY2UHh5?=
 =?utf-8?B?ekNXaVE3am8yTTlaQUQwNytRcHFJcWZNbURUSktSdWdBUmFqQm5oNlBhcnFZ?=
 =?utf-8?B?WlQzMzVJZnJTME8rVWtrSXNrK1YvRWxCNklmWnkrM2pGZkV2Ukhud0h6aldJ?=
 =?utf-8?B?a0NqSnRkdWpKbjdldm9ITHM3S3Rrb3U1MzJIaWVFV0s4empraHNWQVF4SG1I?=
 =?utf-8?B?RTBoMWlUR0lqdkFCUEFGOTJ1UVB4NExLeEFGb2RyM2lwYklYckExTkxROHpl?=
 =?utf-8?B?ZlFzNlh4Z0tyVHAxeWxqZlZ2S2RwOWt0WjczTTNVczJVRFlRSXhvSTlwL3Jj?=
 =?utf-8?B?dWg2RytJOEJiTXNQaGY1ZFZLWVo2N3N6VGRUR01CbVliV3VuSnlJZG4rcHFs?=
 =?utf-8?B?YWx5TnplQ2dQUkpPMTZVU1RzZnFodWVuQklIcDlNQTR4bmo0ZTFyMmVER3BT?=
 =?utf-8?B?cnJzYXBCWGQwVXhWdlBiSUFueFM1Ti9Sc1l3WW1ZVlAyeVpZV2JlR3RDeGc5?=
 =?utf-8?B?YnEwaWU4dmJINUh0SUFrVzQzRTFnakJOL3l5dm1VTmFLVVFERGgxSlRqMVRm?=
 =?utf-8?Q?EEFSeX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cjNkYTlIQTJpNnVoYUI4S0IwaWdENzJPVldvQ1kxaFZqYVZhc0FNZi9IeWNW?=
 =?utf-8?B?a3JETjNuYVpESW9WZ0d1bW9HNkJRdGV0clFPOGFPMlp4Yk96ZC9ZUmlFRmMx?=
 =?utf-8?B?NTdibEJGQzNYU2VoVkkxUGtVODlMYmU1NjhtR0RVZ2tHNlhCYlVadGMyNU9P?=
 =?utf-8?B?M1UrRVUyN3dtS2hSSzhSQmFkZkZURldBVVVuQllpaU1LUitxZ2hacVVybXhX?=
 =?utf-8?B?UThLWGwrNVZqZGFjYVFQeUo1T2hkY01wYXl1NDVxbjBBM0ZPdVhKMmFrazRq?=
 =?utf-8?B?M1JwTk1xMDU2SWtFTjV0RlNXU0VoNVRNVmczTmhwTURlcmxIa0pMR0o0ODNq?=
 =?utf-8?B?dFFMZ3dKYjR3QjFqeHNLaVJ6TU1vZ091NUIrVWJQYzNnM0NOZ2FuTkhIbi9N?=
 =?utf-8?B?Y2s4TVJudU8zRTJ0Qjgxa2Z5QTFUL2xoOHNha045R3FrZWJaS0pVNnpzdm81?=
 =?utf-8?B?a0RKb3kwUEkzbVQ3L1NFc1BvaVdpRklIOC9yUWRiRVRiSzJOcFVheHhpNzk4?=
 =?utf-8?B?MWxpSzdMcUdKZEFmYjZ1SWlnU1Y2RVY4ZTYzTWNZd3ZBZUtRTHNvTlNmM3l1?=
 =?utf-8?B?bTNMdFRKUXBweE8wOWtsNTVuT1BVeW0vcVlSVE1zTXRHRXZHV2ZNTGsvbzhk?=
 =?utf-8?B?UEx1c0JHRDdOa2dFSGl0eHhTM21vanNBcjFqQlY3d1VjUms4TGJ2YTZkS2hJ?=
 =?utf-8?B?dHBtL3A1WmFsb3FkM2lmVmxGbUdrVmN5VWJFL1ZrN3lFM0I5VFpZbDNCU3ZW?=
 =?utf-8?B?OFkwWkJhR0lGMHBGLzE2STIrMDBiamt3MDU4YXhUdDUyN3VtTUFqQkROcVBx?=
 =?utf-8?B?K1RPTmtNTWEzZU1vcWFHNUhyU2daUFA4OTFlM2cwdDAwbktJRUliMGc2SFBF?=
 =?utf-8?B?LzNEMWlCZUhhYlBUTGNxSWdqd1l1TjRGZGFjdUJUWWpKUWZmV2cxWVpCeFJC?=
 =?utf-8?B?ZFEzREFKRHVqaTI1c3pSajk1K1pYalZyUE5RNSsyWmt6N0F3NWYwVTFQUmtl?=
 =?utf-8?B?T0xnVWtvcnVCSzkvTlF2Q0pIYVJXZjlENlJHZTJyS3l5V2JIbytOcGZFM3NH?=
 =?utf-8?B?QUlZdU9DTGZYTkNna3BTdVhPVUZDc1pFTzZHTDRKc1VSMWFwNmRWVU5UaUNh?=
 =?utf-8?B?WW9uUHpid25oeGtkRXVWdmlqMlJDdDM1dmZNUGdtOXg3K1plM21GOCtWRkF5?=
 =?utf-8?B?L1ZvRDhieGYvaU9PZzZTazZZQlR2ZUFtQU1WNFhQTWprWTJGZmFNNnUvOUFT?=
 =?utf-8?B?UmpnWTNnRUtuOWl3QloyMG9PZm10TEtpelNGY3o0b3lTMVAwUHFBRzY2MVVh?=
 =?utf-8?B?Z2F2Q1NZT3hxZWNYYzZoT0c4SG85aVVZUHZwbzA5Zzh4OGQxMXNTR2R6anlX?=
 =?utf-8?B?ZnJMSWpyaERTOXVNcktOYzdKUUMxOE5UMlZVdGxlU0Mrbm1aU0Z1eUp3M1dM?=
 =?utf-8?B?R1h6YjF3cE1NQWlZSXlKSzdCYUwvOUZiTEhJZHV3TlBPSDZRcC9TanBLdzdm?=
 =?utf-8?B?WldsNjI0bENsdTNCclY5bjFIbmhwSFN5a2N2V3FkdTM4eC9Zb1pySFRCckVy?=
 =?utf-8?B?dUdtaUI5eVQ1a0loMVdzbGl3ZGY4bkFra0dpeU1aT0VZUW96UnlsZFF5Y0Fo?=
 =?utf-8?B?aUFOcGhwcEkwZU9COFNDenJSdVQ5WWxNcE5Bb2lGWHlraTU2SFNHekUyM0xt?=
 =?utf-8?B?SVkyL2pxdjdZM1pnN2RlL1FhalZmUTlkMzlqTlZJRUpSbGRjZ2UyT3J4VFhG?=
 =?utf-8?B?RzI3b0VCVHV2a3RDZTFCNnVaeVYyQWM3V2hXM3Jjb3Vkbk10TWdFbTJTb2hl?=
 =?utf-8?B?THNwSHQzZmJyMitsRWR5aUFDZUFWUzNmOTMrZGxrajEyOU1jdVFUZkZnTGx0?=
 =?utf-8?B?NEZMNFlBUmxna3p6U2dMWlFzWWU5TzVGTkxFYlYycU1CRldWU1JvRVVzMnF2?=
 =?utf-8?B?QzB4WmxSdndnMWJDaFdlT2FadHo5bndCN1lwNFZkZVg3L1h1VGdwVUd0UnZa?=
 =?utf-8?B?ai9HOHhPeTkydFVCcTRFbm10V0hFZHJIY05SQkpmejlsU2FmNlR0elkyeGZP?=
 =?utf-8?B?elQrUGZFT2VYellPYVFHV2hSQ2k2VTJPOENnQkVJdWh1SmtyLy84UE9sUTFW?=
 =?utf-8?B?aWpLWU1LWW5uUi9ya1ZtaWhhRHpBY1NSd0Z0eityb0tiNFNoKzVaM0NxT0th?=
 =?utf-8?B?Mm9IcVQrSC9pSWZXZmNsNHhRWW9yZlphcHB2Vis4Ymc5OWR5SEh0Q05POUpU?=
 =?utf-8?B?dml0QThKNThJYXc3MSszYmhYY3cwY2kzYkVRa2VWTGNDU2lDVDVPM0MrZFZ6?=
 =?utf-8?B?MGRBcksxY0JaNlk0UTRpL2FsYXBDeVA2SFU5dEVlaHkwcDArU0Ftbm56UTRP?=
 =?utf-8?Q?6+mvIPFFsWaeHJ4M=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 16ad8691-267f-4ec6-d5c5-08de67bd29ed
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 09:25:28.6166 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c8vvfo02eismCUuE1j99xUV1I4KDh+QeJNEInTLREbyd6DS3MHm0NSsBGI34YsbmbfLMqjtFxlIUopBDdU8sIhlOiyZkjByT7FAClXtemtM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7210
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 323FA10D84B
X-Rspamd-Action: no action



On 2/9/2026 2:10 PM, Imre Deak wrote:
> On Mon, Feb 09, 2026 at 12:06:20PM +0530, Borah, Chaitanya Kumar wrote:
>>
>>
>> On 2/6/2026 7:20 PM, Nautiyal, Ankit K wrote:
>>>
>>> On 2/6/2026 4:12 PM, Imre Deak wrote:
>>>> The pipe BPP value shouldn't be set outside of the source's / sink's
>>>> valid pipe BPP range, ensure this when increasing the minimum pipe BPP
>>>> value to 30 due to HDR.
>>>>
>>>> Fixes: ba49a4643cf53 ("drm/i915/dp: Set min_bpp limit to 30 in HDR mode")
>>>> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>>>> Cc: <stable@vger.kernel.org> # v6.18+
>>>> Signed-off-by: Imre Deak <imre.deak@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_dp.c | 14 ++++++++++++--
>>>>    1 file changed, 12 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/
>>>> drm/i915/display/intel_dp.c
>>>> index 2b8f43e211741..4d8f480cf803f 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -2697,6 +2697,7 @@ intel_dp_compute_config_limits(struct intel_dp
>>>> *intel_dp,
>>>>                       bool dsc,
>>>>                       struct link_config_limits *limits)
>>>>    {
>>>> +    struct intel_display *display = to_intel_display(intel_dp);
>>>>        bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
>>>>        struct intel_connector *connector =
>>>>            to_intel_connector(conn_state->connector);
>>>> @@ -2709,8 +2710,7 @@ intel_dp_compute_config_limits(struct intel_dp
>>>> *intel_dp,
>>>>        limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
>>>>        limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
>>>> -    limits->pipe.min_bpp = intel_dp_in_hdr_mode(conn_state) ? 30 :
>>>> -                intel_dp_min_bpp(crtc_state->output_format);
>>>> +    limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
>>>>        if (is_mst) {
>>>>            /*
>>>>             * FIXME: If all the streams can't fit into the link with their
>>>> @@ -2726,6 +2726,16 @@ intel_dp_compute_config_limits(struct
>>>> intel_dp *intel_dp,
>>>>                                respect_downstream_limits);
>>>>        }
>>>> +    if (intel_dp_in_hdr_mode(conn_state)) {
>>>> +        if (limits->pipe.min_bpp <= 30 && limits->pipe.max_bpp >= 30)
>>>> +            limits->pipe.min_bpp = 30;
>>>> +        else
>>>> +            drm_dbg_kms(display->drm,
>>>> +                    "[CONNECTOR:%d:%s] HDR min 30 bpp outside of
>>>> valid pipe bpp range (%d-%d)\n",
>>>> +                    connector->base.base.id, connector->base.name,
>>>> +                    limits->pipe.min_bpp, limits->pipe.max_bpp);
>>>
>>>
>>> pipe.max_bpp < 30 will be either due to the max_bpc property set to less
>>> than 10, or perhaps when the panel itself does not support 10 bpc
>>> (limited by EDID or VBT).
>>> With these constraints doesn't make sense to enable HDR and send HDR
>>> metadata.
>>> However, as we see in some reported issues [1] [2], in practice some
>>> compositor seems to enable HDR by default and with the hard limit set,
>>> they report blankout.
>>> So it does make sense to raise the min bpp limit only if its inside the
>>> supported range.
>>>
>>> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>
>>>
>>> [1] https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7052
>>> [2] https://gitlab.freedesktop.org/drm/i915/kernel/-/
>>> issues/5969#note_3248404
>>>
>>
>> I am not sure if this patch would help with the above gitlabs. For example
>> in case of #7052 pipe max bpp is 30 and the commit still fails.
> 
> It does fix though reported cases where the sink does not support 10 BPC
> at all. Yes the monitor in #7052 is still a problem, since it supports
> 10 BPC only with lower resolution, where the link BW would allow this
> and he monitor doesn't have DSC either.
> 
>> However, I need to look deeper.
>>
>> I am thinking of relaxing this restriction all together because the earlier
>> assumption that a panel advertising HDR will support atleast 10bpc in all
>> it's mode turns out to be false.
>>
>> Currently, I am inclined on the following policy.
>>
>> - If DSC is not available, fall back to normal bandwidth calculations and
>> select the highest bpp the link can support. (Also preferred by Kwin)
>>
>> - If DSC is available, prefer falling back to DSC and attempt the highest
>> bpp allowed by bandwidth constraints.
> 
> The patch does the above, except for not handling the case where the
> monitor doesn't support DSC. The attach patch handles that too and so
> fixes #7052 as well, are you ok with it?

This should work since [1] did.

There is one more (theoritical) scenario that I think is still not 
covered. What happens in a case where 30bpp doesnot fit into DSC bandwidth?
As I understand, the min bpp limit of 30bpp would become a bottle-neck 
even then?


[1] 
https://github.com/ckborah/drm-tip-sandbox/commit/5dd10a763ae6e651a0ab494ab1ad0c9d81c2de47

> 
>> I am working on a patch for this and should be able to float something soon.
>> Imre, if you agree with this policy, would you please wait for the patch.
>> That should make it easier to send out fix for stable kernels.
>>
>> ==
>> Chaitanya
>>
>>>> +    }
>>>> +
>>>>        if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector,
>>>> limits))
>>>>            return false;
>>

