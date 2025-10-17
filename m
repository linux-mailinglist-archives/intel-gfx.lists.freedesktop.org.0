Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B124FBE7EBC
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 11:58:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B499410E0C8;
	Fri, 17 Oct 2025 09:58:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FVa+o5Az";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA9A310E0C8;
 Fri, 17 Oct 2025 09:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760695108; x=1792231108;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=0Ot7jK+0Qo0avvKWk9iQgx0i67TdXHywW6UzuH96aN4=;
 b=FVa+o5AzbiSAiTAMgLkUKtvn56Qs89O/OGEPL6UpfW61nVUrbjLX5l+Y
 1tkJKK8RGHRDpA4+GCklboykC4UyWaUPak1WWsktUFtl/MuRzcfouwD3p
 fqOXHKw85heOEn48AJ7qRwjTQJRiWYAORKFa7e1oXDDqZxhpqMmgxacpf
 ykM5pUwka6AagEq862k2MTVw3uvyOor9Xk3Ywg0vLIt+fbATTEuIz/YEO
 Tg03oX1nC/BrO65VxvRLfKNh4fs1hdx0h8SvZFBzPoWOl2P65U24S2rd8
 ca2OBsSSbkcVHRSolw7yxzw9HurN/Q0lyAJvYAKskPnxSYpJtvms+XR+R Q==;
X-CSE-ConnectionGUID: 6mOuSqaDQb2Emf+WnGS0BQ==
X-CSE-MsgGUID: a3Ve01hjS0mGbYPcj/E/wQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="74018265"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="74018265"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 02:58:27 -0700
X-CSE-ConnectionGUID: xUG1Ua8BRYqpvItn9jqECg==
X-CSE-MsgGUID: jc3hIuVOTuGHZW6U7WSftA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="186954467"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 02:58:28 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 02:58:26 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 02:58:26 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.32) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 02:58:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=idi+KcPSr6BQvhfLk42Bi4fe9iG2hIXQajguEJGDW6ZxjZ8JWP1i9Dt0LDmukXFkk01aAohGrMV9+iQAW4lph+WYcjK2x9UXdbr2kuKx49difvlrZKWK0kKG2gcKB9NriLert/azXjJo0CAuQ1rqbZjiozgQctFbF0+4V04Gdv07v6VfaB+PBRI0df0TvHjrREYPTZy4j8Fo+EUjwnYxu12JtqD0iF5caBQECaGcZ7UBftBwBhznKueOX5dE3MR7FR962ag3VGF7D0S7ZKWTegByNBn7Kd0C5fieDnJDqG872m+Z2QN6fp+2ir1fTos78Msa+lrIbo/oKqfhTFvbow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Ot7jK+0Qo0avvKWk9iQgx0i67TdXHywW6UzuH96aN4=;
 b=GAgXRN7OXVAdQCoKhvll5UYUfcDi1tXy/H2WF8skBeIlN/riEt3150h2kRwG6kqK4YDWE2lhMy/P/vGGBMD4vW1DbusX4LO3UwLpMDU3Sxwu08KAhsi09FZupVusEgcOU60Jh30Vmk6eSF49V0BzU8GmW62L7nU/j1XadlQoW32sZ9bqzj3pkmFxE0uXwG+OIbQ84OeLwAp+AKwxuw5LBlez5jgHJ7R84Kssk7VQkyr9qXT1n85iGXO6YMR5Vn7un5fV+LkVmbFOtkJC0NFrIzUes5qcBlUd4FnJk0TWKmujcOYzU/8kUE9nytNMIlRj+4E/exdWDmXcBOVpb5+xWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS7PR11MB7888.namprd11.prod.outlook.com (2603:10b6:8:e6::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9228.11; Fri, 17 Oct 2025 09:58:25 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9228.011; Fri, 17 Oct 2025
 09:58:25 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 1/5] drm/i915/psr: Add helper to get min psr guardband
Thread-Topic: [PATCH 1/5] drm/i915/psr: Add helper to get min psr guardband
Thread-Index: AQHcPyUPz2Y/dnBy/UmpWoP/5QJAR7TGDIuAgAAIa4CAAAXlgA==
Date: Fri, 17 Oct 2025 09:58:24 +0000
Message-ID: <043a61da1973f6bfd5cc9b45c84c1c13e038828e.camel@intel.com>
References: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
 <20251017050202.2211985-2-ankit.k.nautiyal@intel.com>
 <4300808467d7a93f080b170faadee3748e7bb2e6.camel@intel.com>
 <ad6cd831-517a-4eb9-b812-1fb4dadea00d@intel.com>
In-Reply-To: <ad6cd831-517a-4eb9-b812-1fb4dadea00d@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS7PR11MB7888:EE_
x-ms-office365-filtering-correlation-id: c2aa658e-09aa-450e-e050-08de0d63b699
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?N05CKzArZ2RhYjN5V0pXTnpSSEVNVU5ub3YreGg0ak0wOWlhdXZsQzVtSk9K?=
 =?utf-8?B?YjVWMzdFNkdRTFM2ZkhCd0M5eEExWnhVcWkxd1NkeUx6MC8vWm5kWXNtQ3RM?=
 =?utf-8?B?U0VsZWg2RFAzTlJXbUI4a0FIRGEweTBFYUc3Z2JzYXJLeDdXMVNXYXZnU3NV?=
 =?utf-8?B?Wmp6ZEZkZXNHeEtVYk5ZSUJmZ2NUYWY0UHRndWtrUDV2bVFQd0toallTWkhl?=
 =?utf-8?B?L0RndjcvVW1oK1pyRzVYVmN0QURpRFpxdDU3NXJwZEVHTW1SK1Z0dGhwemkv?=
 =?utf-8?B?ZEdGdVIrNndGSEc1bWtSLzlveE5LRXcxSW5LRWFhNXN3bGdETmM1cVJjVlVu?=
 =?utf-8?B?LzFVVkg0KzFDS1VQTmR3ZTN0SWUxc1EwLy9YRVJ5d1c0R3RVRjdrS0ttSzVE?=
 =?utf-8?B?SmJqa0tyYW0xMkZpbnNPYWlYM3lEbFJjdWZVUkJncHRxMG5tWHVsWTNaazVG?=
 =?utf-8?B?S1FoaTIwVXJ4aUFKM2NXVWRZcHFHRVpjYnMrVmgwK3NvNlp3NTNMZStjUDJG?=
 =?utf-8?B?WXU5VlJMNjVhMVEyZXltSy9pdjhBU0VpejRkTitwaUhGYTNONlh0VkdpVTFI?=
 =?utf-8?B?V0MrQko1QnIwWWVhbjRSOUlERkV6Kzdid2lyUVZ3czJxbDRSSEN0N1FPU1Zq?=
 =?utf-8?B?UDlHeUVMN241cyt5RVloRFdHNVhhRzd0blFoT3F4YkhScmFzUXdaaTlYL0Zt?=
 =?utf-8?B?U1R6bUR4dTBNVmg2S1YwUlh0YjVzRk8xZjJQdlNQZjNENmJhZkxtZTNmbEs1?=
 =?utf-8?B?SFZHRXJKeVdQQ2V2TDJRdWVpMVZ4eHpUVUVzZWo4QU9xSFg1bHJOQ2UxNnJD?=
 =?utf-8?B?aSs2T1l6cDVpVVlPbzA5WDhXSlJ5YmpqMlVwT1hTaXBoaEF0ZDdhakZqSTA4?=
 =?utf-8?B?bVhxa0ZiNmpCSkxRRDJRUHpOdUNtYzdmTFp5RXdBTGh5UVkrNWM1UFR2dnhu?=
 =?utf-8?B?dVBZNXBiN2YxMC8yczRIRXZrWENPb0RwM1VyUzlBUnZvRTR3VjFxTlNCcFZ5?=
 =?utf-8?B?dHZVTFlIWXRMVWMwclR6RUtBSWhhVC9NWEtMNWlwa2QxUDdNazdFQlBmL1RV?=
 =?utf-8?B?RmNxc0MxZ2NkUHBoVUdDZXVxZGErSXZTUk5pNEZxcDFSWDZoNHNkRDJJdzBm?=
 =?utf-8?B?VVdEM2Fzdk01MWNDa1JxNlF2NjBPWlYxU252aGFKNkwzamo4QUZtaTk0NWJF?=
 =?utf-8?B?ZjN2Wi9YRFhQR0RERldwZndNb1RobXJsTCtoRGNVUGtoNEdQNEVWeXhEU2tE?=
 =?utf-8?B?azFXbXpDc20wQ1YxOENuQXJ5ZERJZXpNbVRtczZRL0hicU4zWjdQV0Z0YXB2?=
 =?utf-8?B?NkRmMTZWVEdVWC80QUU4KzJOL01hL2ZPc0xscTJUZWpBczQ5YjQwditBZitt?=
 =?utf-8?B?dTVNR0U2Y3U2VWJKQkxNQkc3UVBVaXBwWTJjdEVEQlRVTFNDQnUzbUY2SE4y?=
 =?utf-8?B?YmVBa1RoZzVpRVhnQ0xIeHdMSTM2QU5KZlVEWkRHZ1dSaGJ5R2tpZWpSSlA1?=
 =?utf-8?B?aXBxL3RCWUo3aHRRQVFDbG1aKzdhSmg3NU90a1djMGoxbDlITXZGaXlLOXFy?=
 =?utf-8?B?SXFOakFTRkxCdXU5Ui9JNjZBVzVuV0pUM3Fqb0lIMktWZkE2Z3VLbkZGVEl1?=
 =?utf-8?B?OHZuYVNnOXBkRW9XUEx5cXp6dG1ZdzJ0VVl2MGIrSHI3SnR1RjJXbXcwbFZH?=
 =?utf-8?B?Q0x5Zkg0K1dYalZvZ25GeFQ2cUEwclFodStwSzZUSk90YzNqcTVwMUtTWktN?=
 =?utf-8?B?bGtyVzQ2Skh6K29lS0JuMWNJWHZiajNwYVZGNUlMTUFCODVielB2cU9BOHc4?=
 =?utf-8?B?MHUyWmtXK3VZRkxTbG1xMFpoUTJMUEFGekY5VkJ6Z2M0a1RHZkFDKzlYcnJv?=
 =?utf-8?B?SEU5WUtpM2hzWEtNb0JMbjYycmYxVlQ1bEc0UVVkS2h1cDk3TTNVZnpVczNi?=
 =?utf-8?B?cTNWb2pTNHhhSGZyUzhzZDhYckl2OEREbDRNM2lheHZZQ2huc0ZzMDIyQXhY?=
 =?utf-8?B?SnZYMmQ1TzdTang1em1KTHpiNGVIbVBOTzJ6Vnh6SHRGMEhCQWxxMTAzZzNR?=
 =?utf-8?Q?k4I55K?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M0tWRW5PNE9xZzVUeHRzZG53dzcwUFBWZTJjUXBoSVEwbEJZQTVYd1QxMWNw?=
 =?utf-8?B?UEgvUk5OSlBpcDFFOVN0QXBxejFzUFgvVmFXbENlOE9oVVlZUCtEdklkV2ZN?=
 =?utf-8?B?TzVyZmYva1ZXNmhlN00yY0VCZjNVRXFaRS9GV1M0MWNwakluYXEvWEo1eHdK?=
 =?utf-8?B?Tm1ZQTdaRXJRT1d4T0xJamVUNHhNTW50a2luMDN0YWFUclByVzBYZVNEQ0Y5?=
 =?utf-8?B?OUVXRlAzcVdDS1JVZzdXVWVINEdVYmtrdHJvdE41elVXc1p5N1dBQmVleFVR?=
 =?utf-8?B?MTZaaXRXclZKU1hKRUNDbWJGVGZhWWdRdU9rYnU1UWJ5eXZLY3BzNHBtNlhS?=
 =?utf-8?B?dkhnb3pCNXg5SVJJQzlwaEZnbytLZGJzdG9LTFRKZUdVTGprTFBzVk9RUXE1?=
 =?utf-8?B?NnUyaVAzM3RpaUMycStyL0lFRHJZSXBjdVE3bmhiWW15R1FOUEQ5MklnRDlJ?=
 =?utf-8?B?ZlpMUFpBZjN4YXlnWDduUFd0MVdTT001UXN3djJwbUdubXVLUkRoNi9NKzRE?=
 =?utf-8?B?cnZHVXNWQWlpNmpkYVNzM1IyZ1B4NUpGdlpldTBrc1M5V0UyYWU4SVRHb2RZ?=
 =?utf-8?B?eHN2ck9QU2hJajdJYnhYTDlCRWlKSnkyYUtKVTlza2VkUlJua2VOemFsMCtR?=
 =?utf-8?B?Mko3bzROWWpOUFpTZUpDNHN4L040MnJkdU5Ia3h5d3BYbHZxWGlCditkTnM5?=
 =?utf-8?B?cVBBSTV3N29nODBOT2ZzOXNQTGRQRFhoYmY3cXJxenhxSm5pVU9Db2RjZGpB?=
 =?utf-8?B?dWsxVXVmbnJiU3hNRWJsYzk2cWRnSUhqK1BkUk1xS3NlWUJQekRRWkhId0w0?=
 =?utf-8?B?VHB5b3hhTTZoZTBTNkY3Z1pWdU1LN1I3U1RQUHU2T1ZnZ2kvMEk1UFJXcVpi?=
 =?utf-8?B?eDhNNDNucDh0ckpJQi9RWlFkL2xQaTRsdEVDck52TEI5TUVuSFdXQTlJTmxB?=
 =?utf-8?B?TzlCWnRNVGxwUWNwV0hjOHdhUkNJVzRCL1pXSWRNd0RuUytHeEdPd1RtRHBY?=
 =?utf-8?B?d2NMaUphckhsbEdsMEVhMDZPSC9pMHN6TFljZUYxOUxDNTF6WlJXclZDeFZE?=
 =?utf-8?B?MzFVK3k1M2RTUmd6UjhPVTgvalJEMDdRa2kvSVFuYUpJQ25VdllSVlJJQUVq?=
 =?utf-8?B?MDZ3TXdHVTBBdTA5aVF2dUV6aGluTEJXNmQ3OSsrY2pOVkZyREIyZXI4TWUz?=
 =?utf-8?B?S2U3Y0VqS282ck1sRG1SM0dyckloMHJVemtuODhYMWxVTVRDVFErMURiRFQ5?=
 =?utf-8?B?SUEzZnNxV3QvaUFoVzRDSlZaOW84U21qQmx3eHNzT2RNRk83Ymo3VjJPb3dP?=
 =?utf-8?B?d1BIc05uWlRoOU1VVGZmdGxNcXFKZzNuQUNoQTA2WXdDZlJOT0NSMVNyQVhi?=
 =?utf-8?B?dmRGN3JMSWcvRy9lU28veEpPaHhSbDYxdVlGU1BpaWJPZ3UrVWhGekZtK0tN?=
 =?utf-8?B?aGJocnJsaUtWc205VHh2RmdOUUVyTHNsZUhKWlZQS0h6RDY2OW03ZVY1K0NH?=
 =?utf-8?B?bXluaCt0Q0l1RXpKS1JYMTV4Yy95M1V5MGxRMUxqU0wrSDRUV2hqM28wVXBC?=
 =?utf-8?B?SHJRam0xRThDTEFQWjB4eTloM0wxUldYU0lBNjlrOERVenE2Z3NrakwybThQ?=
 =?utf-8?B?VkpTK0hWSm9EazhFS1RmeDlMdjRSMjhjOFFYdXF0bXEyNmlmbWJIVUVqWDk2?=
 =?utf-8?B?Yk5oUHZMbTRobDg3MWVub3UzUUhpNWlQQXFUZVNkOG03bndIZDNKYk4wU2ZL?=
 =?utf-8?B?blZkRFozZVlPb0JCL0lCVnNOMGhoMGtwbDZoTWg3S0dXYWRDUXBUTWNSdWN5?=
 =?utf-8?B?bDdGVjFyTnhMN3VZQ2o1STVlL2sxWUVKL2FvTiszamRnbnQ5RFRJNnJrVzMw?=
 =?utf-8?B?NWhPRG8xamQwUXdCUHM3eHllaXlEMThONnQxNy95SjhSV1lqS2E4ejg3WVZF?=
 =?utf-8?B?eCsrUHU1cVFSN01HeGFtblgyTmNZZnFpVzdUOWVaMXBLNTBHZTN6OTBFekY5?=
 =?utf-8?B?V2U5TWNxOWx3K0hoTGsxWmx3UXJOV21pUUpQZlJOK3l0M3JGbkVrckdnb2pK?=
 =?utf-8?B?QVc3SnBpTnlOWll4cUhjYVBBOHZnUDlwa01oeWNXVGpzNTllQXBSM1Rnb21W?=
 =?utf-8?B?YjhCd0hrMkZyb2VVeThXRFMwYVB0TDdodDdVYWswaSt5bUd4TnFuZ3JjWm0r?=
 =?utf-8?B?Nzc1anozeEd1MmticVFLUSt2L0VjOGhtSDZwWlFyaFYraTRNVHNUd2ovMHNl?=
 =?utf-8?B?dVo2ZVFlRDFGUHJJTGhvVFM3YUtRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D29F986AF5D77B41BE3E9DC4C8F8ED03@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2aa658e-09aa-450e-e050-08de0d63b699
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2025 09:58:24.9187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LnVMqeXhKoHbreT08NwSSdhLcYClqvZz6ZRFqa1nPCCGTzY50/ALZzBGfU/AGw237M9PsYhy103WrYmJJLhGnW7iBEkCxKhs4ZmD3xDJ2r8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7888
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

T24gRnJpLCAyMDI1LTEwLTE3IGF0IDE1OjA3ICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDEwLzE3LzIwMjUgMjozNyBQTSwgSG9nYW5kZXIsIEpvdW5pIHdyb3RlOg0K
PiA+IE9uIEZyaSwgMjAyNS0xMC0xNyBhdCAxMDozMSArMDUzMCwgQW5raXQgTmF1dGl5YWwgd3Jv
dGU6DQo+ID4gPiBJbnRyb2R1Y2UgYSBoZWxwZXIgdG8gY29tcHV0ZSB0aGUgbWF4IGxpbmsgd2Fr
ZSBsYXRlbmN5IHdoZW4NCj4gPiA+IHVzaW5nDQo+ID4gPiBBdXhsZXNzL0F1eCB3YWtlIG1lY2hh
bmlzbSBmb3IgUFNSL1BhbmVsIFJlcGxheS9MT0JGIGZlYXR1cmVzLg0KPiA+ID4gDQo+ID4gPiBU
aGlzIHdpbGwgYmUgdXNlZCB0byBjb21wdXRlIHRoZSBtaW5pbXVtIGd1YXJkYmFuZCBzbyB0aGF0
IHRoZQ0KPiA+ID4gbGluaw0KPiA+ID4gd2FrZQ0KPiA+ID4gbGF0ZW5jaWVzIGFyZSBhY2NvdW50
ZWQgYW5kIHRoZXNlIGZlYXR1cmVzIHdvcmsgc21vb3RobHkgZm9yDQo+ID4gPiBoaWdoZXINCj4g
PiA+IHJlZnJlc2ggcmF0ZSBwYW5lbHMuDQo+ID4gPiANCj4gPiA+IEJzcGVjOiA3MDE1MSwgNzE0
NzcNCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEFua2l0IE5hdXRpeWFsIDxhbmtpdC5rLm5hdXRpeWFs
QGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gwqDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMgfCAxMiArKysrKysrKysrKysNCj4gPiA+IMKgwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oIHzCoCAxICsNCj4gPiA+IMKgwqAyIGZpbGVz
IGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gaW5kZXggNzAzZTVmNmFmMDRj
Li5hODMwM2I2Njk4NTMgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+ID4gPiBAQCAtNDQxNiwzICs0NDE2LDE1IEBAIHZvaWQgaW50ZWxf
cHNyX2NvbXB1dGVfY29uZmlnX2xhdGUoc3RydWN0DQo+ID4gPiBpbnRlbF9kcCAqaW50ZWxfZHAs
DQo+ID4gPiDCoCANCj4gPiA+IMKgwqAJaW50ZWxfcHNyX3NldF9ub25fcHNyX3BpcGVzKGludGVs
X2RwLCBjcnRjX3N0YXRlKTsNCj4gPiA+IMKgwqB9DQo+ID4gPiArDQo+ID4gPiAraW50IGludGVs
X3Bzcl9taW5fZ3VhcmRiYW5kKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0K
PiA+ID4gK3sNCj4gPiA+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiA+ID4g
dG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsNCj4gPiA+ICsJaW50IGF1eGxlc3Nfd2FrZV9s
aW5lcyA9IGNydGNfc3RhdGUtDQo+ID4gPiA+IGFscG1fc3RhdGUuYXV4X2xlc3Nfd2FrZV9saW5l
czsNCj4gPiA+ICsJaW50IHdha2VfbGluZXMgPSBESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIwID8N
Cj4gPiA+ICsJCQkgcHNyMl9ibG9ja19jb3VudF9saW5lcyhjcnRjX3N0YXRlLQ0KPiA+ID4gPiBh
bHBtX3N0YXRlLmlvX3dha2VfbGluZXMsDQo+ID4gPiArCQkJCQkJY3J0Y19zdGF0ZS0NCj4gPiA+
ID4gYWxwbV9zdGF0ZS5mYXN0X3dha2VfbGluZXMpIDoNCj4gPiA+ICsJCQkgY3J0Y19zdGF0ZS0+
YWxwbV9zdGF0ZS5pb193YWtlX2xpbmVzOw0KPiA+ID4gKw0KPiA+ID4gKwlyZXR1cm4gbWF4KGF1
eGxlc3Nfd2FrZV9saW5lcywgd2FrZV9saW5lcyk7DQo+ID4gaG1tLCBub3cgaWYgeW91IGFkZDoN
Cj4gPiANCj4gPiBpZiAoY3J0Y19zdGF0ZS0+cmVxX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lKQ0K
PiA+IAkJcHNyX21pbl9ndWFyZGJhbmQrKzsNCj4gDQo+IEkgZGlkIG5vdCBnZXQgdGhpcyBwYXJ0
LsKgRG8gd2UgbmVlZCB0byBhY2NvdW50IGZvciAxIG1vcmUgd2FrZWxpbmVzDQo+IGlmIA0KPiB0
aGlzIGZsYWcgaXMgc2V0Pw0KDQpJZiB5b3UgbG9vayBhdCBob3cgdGhhdCBmbGFnIGFmZmVjdHMg
dmJsYW5rIGNoZWNrIGluIA0KaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnX2xhdGU6DQoNCi4uLg0K
c3RhdGljIGJvb2wgX3dha2VfbGluZXNfZml0X2ludG9fdmJsYW5rKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KCQkJCQlpbnQgdmJsYW5rLA0KCQkJCQlpbnQgd2Fr
ZV9saW5lcykNCnsNCglpZiAoY3J0Y19zdGF0ZS0+cmVxX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5l
KQ0KCQl2YmxhbmsgLT0gMTsNCi4uLg0KDQpTbyB0byB0YWtlIHRoYXQgaW50byBhY2NvdW50IHdo
ZW4gY2FsY3VsYXRpbmcgbWluaW11bSBndWFyZGJhbmQgbmVlZGVkDQpieSBQU1IgeW91IG5lZWQg
dG8gaW5jcmVhc2UgYnkgb25lLiBTYW1lIGdvZXMgd2l0aCBTQ0w6DQoNCi4uLg0KCWludCBzY2wg
PSBfaW50ZWxfcHNyX21pbl9zZXRfY29udGV4dF9sYXRlbmN5KGNydGNfc3RhdGUsDQoJCQkJCQkg
ICAgIG5lZWRzX3BhbmVsX3JlcGxheSwNCgkJCQkJCSAgICAgbmVlZHNfc2VsX3VwZGF0ZSk7DQoJ
dmJsYW5rIC09IHNjbDsNCi4uLg0KDQpZb3UgYXJlIGFscmVhZHkgcGFydGlhbGx5IHRha2luZyBp
bnRvIGFjY291bnQgUFNSIG5lZWRzIHdoZW4NCmNhbGN1bGF0aW5nIG9wdGltaXplZCBndWFyZGJh
bmQgZXhjZXB0IHRoZXNlIHR3byBsaW5lcyB3aGljaCBhcmUgbmVlZGVkDQpjb25kaXRpb25hbGx5
Lg0KDQpBbHNvIGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZyBpcyBydW4gYXQgdGhpcyBwb2ludCAt
PiB5b3Uga25vdyB3aGljaA0Kb25lIHRvIHVzZTogYXV4bGVzcyB3YWtlIHRpbWUgb3IgYXV4IHdh
a2UgdGltZS4gbm8gbmVlZCB0byB1c2UgbWF4KCkNCndpdGggdGhlbS4gSnVzdCBjaG9vc2UgdGhl
IG9uZSB3aGljaCBpcyByZWxldmFudC4NCg0KV2l0aCB0aGVzZSBjaGFuZ2VzIHlvdSBjb3VsZCBk
cm9wIGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZ19sYXRlIGFzDQp2Ymxhbmsgd291bGQgYmUgbG9u
ZyBlbm91Z2ggZm9yIFBTUiBtb2RlIGNvbXB1dGVkIGJ5DQppbnRlbF9wc3JfY29tcHV0ZV9jb25m
aWcsIG5vPw0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCg0KPiANCj4gV2hhdCB3ZSB3YW50
IHRvIGRvIGlzIHRvIGNoZWNrIGZvciBtaW4gZ3VhcmRiYW5kIGZvciANCj4gcGFuZWxfcmVwbGF5
L3NlbF91cGRhdGUgYmFzZWQgb24gdGhlIHJlcXVpcmVkIHdha2VsaW5lcy4NCj4gDQo+IFdoZXRo
ZXIgd2UgY2FuIHVzZSB0aGUgYXV4bGVzc193YWtlX2xpbmVzIGFuZCB3YWtlX2xpbmVzIGFzIGNv
bXB1dGVkIA0KPiBhYm92ZSB0byBlc3RpbWF0ZSB0aGUgbWF4IHdha2VsaW5lcyBvciBpbnN0ZWFk
IHdlIHNob3VsZCB1c2UNCj4gZnVuY3Rpb25zIA0KPiBmcm9tIGFscG0uYyA6DQo+IA0KPiBpb19i
dWZmZXJfd2FrZV90aW1lKCkgYW5kIF9sbmxfY29tcHV0ZV9hdXhfbGVzc193YWtlX3RpbWUoKSB0
byBnZXQNCj4gdGhlIA0KPiB3b3JzdCBjYXNlIHdha2VsaW5lcy4NCj4gDQo+IA0KPiA+IA0KPiA+
IFdoYXRldmVyIGlzIHRoZSBQU1IgbW9kZSBpdCBjYW4gYmUgZW5hYmxlZCB3aGF0IGNvbWVzIHRv
IHZibGFuaw0KPiA+IHJlc3RyaWN0aW9ucyBhbmQgeW91IGNhbiBkcm9wIHBzcl9jb21wdXRlX2Nv
bmZpZ19sYXRlPw0KPiANCj4gDQo+IEkgdGhpbmsgd2UgY2Fubm90IGRyb3AgdGhlIHBzcl9jb21w
dXRlX2NvbmZpZ19sYXRlIGFzIGl0IGNoZWNrcw0KPiB3aGV0aGVyIA0KPiB0aGUgYWN0dWFsIGd1
YXJkYmFuZCBpcyBlbm91Z2ggZm9yIFBTUiBmZWF0dXJlcy4NCj4gDQo+IGludGVsX3Bzcl9taW5f
Z3VhcmRiYW5kKCkgaXMgdXNlZCBhbG9uZyB3aXRoIG90aGVyIGZlYXR1cmVzIHRvIGhhdmUNCj4g
YW4gZXN0aW1hdGUgb24gdGhlIGd1YXJkYmFuZCB0aGF0IHdvcmtzIGZvciBhbGwgY2FzZXMsIHdp
dGhvdXQgYSBuZWVkDQo+IHRvIGNoYW5nZSB0aGUgZ3VhcmRiYW5kLg0KPiBJdCBpcyBib3VuZGVk
IGJ5IHRoZSB2YmxhbmsgbGVuZ3RoIGF2YWlsYWJsZQ0KPiANCj4gUmVnYXJkcywNCj4gDQo+IEFu
a2l0DQo+IA0KPiA+IA0KPiA+IEJSLA0KPiA+IA0KPiA+IEpvdW5pIEjDtmdhbmRlcg0KPiA+IA0K
PiA+ID4gK30NCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5oDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmgNCj4gPiA+IGluZGV4IGIxN2NlMzEyZGMzNy4uNjIwYjM1OTI4ODMyIDEwMDY0NA0KPiA+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiA+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiA+ID4gQEAg
LTg1LDUgKzg1LDYgQEAgYm9vbCBpbnRlbF9wc3JfbmVlZHNfYWxwbV9hdXhfbGVzcyhzdHJ1Y3QN
Cj4gPiA+IGludGVsX2RwDQo+ID4gPiAqaW50ZWxfZHAsDQo+ID4gPiDCoMKgCQkJCcKgwqAgY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiA+ICpjcnRjX3N0YXRlKTsNCj4gPiA+IMKg
wqB2b2lkIGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZ19sYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHAsDQo+ID4gPiDCoMKgCQkJCcKgwqAgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiA+
ICpjcnRjX3N0YXRlKTsNCj4gPiA+ICtpbnQgaW50ZWxfcHNyX21pbl9ndWFyZGJhbmQoc3RydWN0
IGludGVsX2NydGNfc3RhdGUNCj4gPiA+ICpjcnRjX3N0YXRlKTsNCj4gPiA+IMKgIA0KPiA+ID4g
wqDCoCNlbmRpZiAvKiBfX0lOVEVMX1BTUl9IX18gKi8NCg0K
