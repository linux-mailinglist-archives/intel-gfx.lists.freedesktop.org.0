Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1609FF192
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2024 20:32:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA3B410E544;
	Tue, 31 Dec 2024 19:32:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IEHD2W70";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A94F910E544;
 Tue, 31 Dec 2024 19:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735673528; x=1767209528;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=s2hIaxLC0uFE7D3iur7PEdr0Y+JHVP280djuZ75+Hjw=;
 b=IEHD2W70rEadrvGS/Vde5V0aObA8+LYQbdeWEd8Daf90qJmIABEUf9uu
 SrIidTNN09Rw7psZRIPaje2di5oq9Xp0hIXnfUCCSztcHuLm7PTgdM9Hf
 3nI4ZIk3JxChH+5cUu+ktMWys8iVevibr0x7GjJUk5ML6XvcKolrdjETh
 1IjrN0UNSckwIXxBR3KIj8/jvfFJCWnSpUVwXpQZqrUBcBRPqQ/KKhDib
 fVpxOD9qaMjKb+L0grt0BG4QP/skrIMoUbzKKaDVufuNa/YtBre38Wxsu
 wWbsSNU8LnAye2lRjV6xxM/zrCSlUi9qnJpm8EsWPTWDQ97NGJZe3j1m6 w==;
X-CSE-ConnectionGUID: /Gkok816QSyg7icD8I9I4Q==
X-CSE-MsgGUID: xtao3hZlSuGjLjGWpUYIQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="47368274"
X-IronPort-AV: E=Sophos;i="6.12,280,1728975600"; d="scan'208";a="47368274"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 11:32:07 -0800
X-CSE-ConnectionGUID: d5Lgqi4ZTuiXHMM9h6Id1w==
X-CSE-MsgGUID: D/ctyTk7TgGabkBh9YlNqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,280,1728975600"; d="scan'208";a="101615897"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Dec 2024 11:32:07 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 31 Dec 2024 11:32:06 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 31 Dec 2024 11:32:06 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 31 Dec 2024 11:32:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pZ/WY7rmiu+lDFkEemGFLfVN7BDi8ZBtV2fJPW0eEGVHvbWqZNnSGSmkJFU824U5QKhoHdPDZSoXYkuYmsvPcPFso8CajIjAYprSdDfwqRol3MBdnTcR2c5aogNLoKwZmBmWzvusGSrCtObaDs3F3ElQrUq7jsrud/tQ9x8a+Lygqp0IertUTkjaRfAHgxg6+NixFjhcqemWQWJ7/I2CqknxcVrymf71MN1p4F7/x5ZsF1QmQSwn411KJXuywVMJKpPPP9xuD+/Ea4ofZyA12NuceGbjTO4DddKBdwO9Lq3dXCt5MxbAH2YYFeB3icqetFuPkMHU1uaY7B3QbNs6gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=onXKRR4/FtiFpKWnlEWXGs7yQe8OnV8/ijq57r+MfP8=;
 b=F3IHHDksQy54zPi8H/hPbBilNUBaDbEyhAzRdo/Fp2R+i24O4W+Onp2Fo5mVJ6H9PoMtd1fFdPzg7gWMsThmYGgb1jumbpXciWpArTdmY7jSzpy0ijsp4z89pxDM89KxmlPE6P9k4Kgqo8xHUc5GAV+4ZWMWHukgR35mlmArqKRJsoWPu/KdB7r3AgPpZ9AnNiTfng9+VpT2tPhG9YF2ygLuBx2DlaIbaiwqk0ypCOa5D9/36YU6dH56mBAOqetUECkWlLokPMIMzAn2wRGYzsq5E1yW649A4Rel6fBzcer1PMR2//r0/gIK8vnSrRW9OsbkvJi34H8azRkrzQjNEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH0PR11MB7470.namprd11.prod.outlook.com (2603:10b6:510:288::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.19; Tue, 31 Dec
 2024 19:32:00 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8293.000; Tue, 31 Dec 2024
 19:32:00 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <bc5f418785ecd51454761e9a55f21340470a92e3.1735662324.git.jani.nikula@intel.com>
References: <cover.1735662324.git.jani.nikula@intel.com>
 <bc5f418785ecd51454761e9a55f21340470a92e3.1735662324.git.jani.nikula@intel.com>
Subject: Re: [PATCH 2/4] drm/i915/pmdemand: make struct intel_pmdemand_state
 opaque
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>, <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Tue, 31 Dec 2024 16:31:56 -0300
Message-ID: <173567351643.6883.265646274358343141@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0217.namprd03.prod.outlook.com
 (2603:10b6:303:b9::12) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH0PR11MB7470:EE_
X-MS-Office365-Filtering-Correlation-Id: da8ffe15-56b5-4a23-b413-08dd29d1cbf3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eERid2ZYYm4veWFOaW45Q3Q3RDFxTUhjc0YyRzJBSjZENDIyQTN3eHRzRmtm?=
 =?utf-8?B?czgrZHJxTFZGZlRyWWJFeVJ4eGo5anpwNld3cTA0SHI3anBZS2V2RW5sUXVm?=
 =?utf-8?B?V0lQOTVJVzhrZzd1d1dwWFEvalJLNWVYemgyc1QvY0hlcXFsYnFLTXBpMXkw?=
 =?utf-8?B?WkpFOS9UenpKUjlIM08wT1k2R3ltQ2k3NUU0dzZaM25HY2Y2KzJGcndkbnFJ?=
 =?utf-8?B?TE9pNkF3WWs0RDR2QzJmVVN2bU50T3gzckgzN3NFb0ZIb3prbUoxdFUwL1F1?=
 =?utf-8?B?bHlONG5Uam1VY045T2kzdXVTTVFrOVBIRmZkZnBTRDlLcFBUNTJZQWc4ZlpZ?=
 =?utf-8?B?UFBtUVA3VWI3UmlTRGxiczg2WTN1Uit2NUdDaGltK1BQZGpSTmkydXcrZ1dQ?=
 =?utf-8?B?R2hDcXgzV21KTjJvUXprSitEcGp2YU1hdkJOSlJZNTQ0c3c1dFl6djBqK0pR?=
 =?utf-8?B?a01DSjF1N01IcjUyVlk4MUpiWk1HNi9Mci8ya2kwSmVPRFZCTEQwZ0tXVTBK?=
 =?utf-8?B?cGpuK3NqUHFNUUV5elU1Y0tHdEIvckYwTklVbC84aFV0Q3F4QXZGYjFGQ2VP?=
 =?utf-8?B?R3Z5RVd6VW1zVy9mWDBLMGlwSEhFbUl4L2c5dWRKQUFSbWg5elh5YklhNmd1?=
 =?utf-8?B?b3pIcTZXd0p1OEJTYldPTzhCMU1GRkN0VGlpZ0ZMQjlPd1EvQ0pyNDE2dUJW?=
 =?utf-8?B?WnNIVUZzVnUybTByRHdYR0JENklNbHM5M0dLeXBHaGlKMjVwSnJrcWl1OVJK?=
 =?utf-8?B?K1RHVUhWOUVlUVZySXllMFQ0YTdZWkJEUk1CdDVMMm9oOFRCVktZVFlIdzRR?=
 =?utf-8?B?RlNGRXFzbm1XMFExTWlENWxGdkwwTnhzcWU1RmFrenl5bG1ORk9vM0pVT1Fw?=
 =?utf-8?B?SGJvSDVWcnRkUVpqd3VWWVoxMnFkN3lvSUV5a092S1pTU0YwSzcrejJZS2ZK?=
 =?utf-8?B?SEdxRUp0T05KaDJaWXpmNk5ETXlFRk5WUTZOR01UaFFiYjVPbHVNUzBWTldy?=
 =?utf-8?B?SVRuakdHR1lpZE5hKzZSNnlEbG5KcVdDbTAvRDFxUWJsMmlqSnR6SUpmb01G?=
 =?utf-8?B?OU1hTlN3OU4zRW5wazhRQjJUaFY5VGVNeWtGc2lLc093bTNPd1hmUVExeXJM?=
 =?utf-8?B?b2JXaWVPNmV1aGdTNSt5Q09tb3lJL3dRbUlDekZLU0ZRSUlWc0dnNy80V0Ew?=
 =?utf-8?B?d2MwQTJLQ2w1NGFvc2hJVXdzb2IvMjJSU25vdHYyVjJlSysvSnFHdWk2ZU9R?=
 =?utf-8?B?b3VRVUdFeHMzb1JMUDdKa3hWNkx4aFZQK3MzeHZPaFRnQTVXWnpKT1JFT0dW?=
 =?utf-8?B?UTFvRmFjOVp0WVJCKzdtTGVvUXRxRVZxeUxSbEduWmJqMW4rWTFzaGF5K3BH?=
 =?utf-8?B?cHpvVkltU1RIZlkvVGhaZUwxbU1Jem5sMS9pYTY5OHZiSFF3WTdFdnBwbUxR?=
 =?utf-8?B?eHFYQ3FKekxXYW51eDU0dEJub1h2WGJBRXVBN3hwNlMzdGdvOXc1Y05ySXdL?=
 =?utf-8?B?UW1nUFRVV1pDM09ZSDVtRk9qSjFzeG9lWnNiN3FUeFoybmc4SzRmZDdycjhw?=
 =?utf-8?B?by9JTThVS0hNSlk1WnQzQVR2TEs4eUl1dGV1VDBacUEvS0hQbFROYjV3OEg3?=
 =?utf-8?B?Z2pyM3J6YmRheVpiWHZiQVd1U0FHMGV4d0U5Q1JibTRaL25LSTBrbEM0d3o3?=
 =?utf-8?B?WWRsSjZ1c0w2VE9yVXg4cHdRYTBkOTljRUVmVmtWcE15WmNWcmFiZmpvakd5?=
 =?utf-8?B?VTkvOTBuZ2dQS2JGdms2bVp5L0RpL25rQnc4RG1LTVQ1eHlRdnllaDg3OXRO?=
 =?utf-8?B?ZXVpaFkxR0RmTEdVaGNXWUtsYW5GODhxeWdiNUF5Ym0vek1OM2hFdERCVzJN?=
 =?utf-8?Q?8Zz9Lo5NUUcIe?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SzZiOG9UNmoyQ2VyaE5Uem1vYzZ4aHBHMFRqbFJ1T0FubGxCUFBQR0NPalRo?=
 =?utf-8?B?RngrTlozdnZLeE93SmhLNXVmRUcyYU1BemNUdXFodjQvcTlYeU1tQU1DOGNa?=
 =?utf-8?B?dnA1QVVPcDdkZXpzb1c0S3VrQmpoZDRDTGdOVlZtSitkOXMvMGpkRFdwazI2?=
 =?utf-8?B?eUJsSGkrSDNHci9IeG5NTjNxN2ZJL3RGKzQ3cjc0ZmdNeUhiaGpZaEJONXdy?=
 =?utf-8?B?MjFDMDRlamIvcXdHRlVPZ3RCY3NQaEJzQ1VLVHpOOWVRK0tPNVBtWS94UUhR?=
 =?utf-8?B?WmVKUUcvbW9icVlKQjJyZnIyb3Yyc3ZLcTRuT2N4YkdrL05YZTBJbEY4Mmdh?=
 =?utf-8?B?M0ZOSE1rUENQdi81dEtxaUo4TTJtMGRPM3AxcnplSUlnZEVXa3ZIckJUZERw?=
 =?utf-8?B?d3g4d05vTWtNLzhMcXRlSlBqakhNTmRxSXcrbHZlNFRZMUgwc20yQVVOTmRv?=
 =?utf-8?B?aUJRM2o0MWFQR0xZOFdVVUgvbHExMXF5elhiL1JjQ3doNFV6S3pJMUx1Q1FM?=
 =?utf-8?B?R3Zvby9sWUQybVJ1K05LN2prVEYrSDVYNjVSdnBDUXhFUU5BaElxRkprbGpI?=
 =?utf-8?B?T3gzU2M3Q01lZWxuSjVqMFJ0dW1QQkIreGN2NDQydUxHdlNrL25oUTBlQ3JJ?=
 =?utf-8?B?QjdEOGlkUzMrL2w2WW8zMlIweTdGS29yVlFFNTRBNVJ3eXc5bHJPRFZZN2p6?=
 =?utf-8?B?bGFQbVlySDRIS0F0ZCtvUy91aWplVGpMMHo1Zno4VTEzbGFsTHBKNHlFbzFT?=
 =?utf-8?B?bVMvUStjRUlQbE9tWlJrT1I0dW9BRXFNNFVxWHFKTHpZb0VFNVRvMmR5MWVR?=
 =?utf-8?B?cGtRNkNUN1BnUmxLd29FKzNXZzR1WU1EYW1KLys4QUVFemVzQytnSDlNa1Uw?=
 =?utf-8?B?SVFCckR2VmNMcDEwenlRMTJNUzNlUFY3Njk2Q091ZTNIRWdCbUVMMGlOVERh?=
 =?utf-8?B?Q3lOTE5XcE5VRkhHYWpRLzR2TjRDU0cvdmVKa3h6a1dsUE9wak5MY3NCT1hx?=
 =?utf-8?B?bFhJVTQvM0FtRTBXY0c4eVVldEg4cXJpY3ROc2RLdDNyaEE4OEY4cnNFaGpK?=
 =?utf-8?B?SURKSEl3MkxnQVdJTms5SEZsdFJGczQybmNaZlVkWmV3K21OZGZvSXhINGo1?=
 =?utf-8?B?U01QZ0Y1ekU3K1RqQXpJengvZVJ0ZnIxd1Y4dmVQL3NuNkdpOHA1dzBwZ0NT?=
 =?utf-8?B?cU5wZWlTQ3UySGhTcEFYaDNwYlBCZE9ianVyZWY1RXFrMDlCOFE3YWl3VkFh?=
 =?utf-8?B?UkE2T2k2b1Q3TStXTjREd1pXSmZPVDYvTllLNEQzT1hJenNEQ3cyKzdMQVUz?=
 =?utf-8?B?YW9GUk1lL0djODhGN2pSQUE0UDluODNJRGpURU9lZHFUdkoyMFB1emVHdDJL?=
 =?utf-8?B?S1BaN0xLTFE2WGo1d0MvSVVHTEJrV1llUUtiVHV0cjlQeUJKZHdDb0p2L1lm?=
 =?utf-8?B?QS9wQTE5TTluVmdINVhGckNCU2VpZi9xVC9VNTdVOXJZTlhMZ010cE5YOWJ0?=
 =?utf-8?B?a09zQjFYay9rM1prT2xFM0xQcWlJYnljZzdrWnZRbTl6ZXBZcjJFVlB0eUVX?=
 =?utf-8?B?bFpGOFY3c1pITjZNazFhWkRpeDRNclZTM3Z3YklWWXZaUlJ6R0dnaDVWbGg5?=
 =?utf-8?B?Q1ZDK3hTaUxJOWF4QXlHbGxPWkkwVWpWejdTZHJpYm0wK1BBM1Fpc0R4ckFR?=
 =?utf-8?B?MEtBWlJuWmFGWXZmYy90NzBYT082REJqRnNMZWhxQWlYdkYvSms4VHdXZENO?=
 =?utf-8?B?eVlBdEg1cXVyemxNeXBLUlFBNm4zOU1XQis3ZnVFNUNmRFZQL1o3WndKeHoy?=
 =?utf-8?B?N3FjYjhNWFY2Vnkvcmg2b2oxZVpyZklTUlBINjVvM2ZTeFNMUkpRUnZUdE1n?=
 =?utf-8?B?ZXNwRG9LM2FCWnZmTFY3WnZQUWFycW4yTjYzcUp0MnRzUXhpWnpIbS8razdN?=
 =?utf-8?B?Vy93N244ZlBsMUJzUms0Y0hUM2FrcktHZmVXNkEwcHBma1Npa2ZaM1Vib3Fl?=
 =?utf-8?B?TjhvaWhrZEROdTdOU2xNck1KbENaSjJyZU5qVnAwUGVLQk1aNC9EZTVlazIz?=
 =?utf-8?B?c3E4OHhkQndzMUZQMEtuKzJVNGRqQXpoUVBITk1iR2J6OGlwUDJ2WDhkVzRq?=
 =?utf-8?B?RitqaG1CUGU0aGpnNjQzL2kvYi81MzlISVlIK29PV2hyaktjZ3VBbFBycXhp?=
 =?utf-8?B?dVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: da8ffe15-56b5-4a23-b413-08dd29d1cbf3
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Dec 2024 19:32:00.5370 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YKqvkSYBYotRtrRNKD7cwWqebc3FfUbNQz7fDYyK4L1cgURVRWMxD+P9bzeGbCa7wSuN2WiKJ1XN625Qpexs1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7470
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

Quoting Jani Nikula (2024-12-31 13:27:38-03:00)
>Only intel_pmdemand.c should look inside the struct
>intel_pmdemand_state. Indeed, this is already the case. Finish the job
>and make struct intel_pmdemand_state opaque, preventing any direct pokes
>at the guts of it in the future.
>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_pmdemand.c | 28 +++++++++++++++
> drivers/gpu/drm/i915/display/intel_pmdemand.h | 34 +++----------------
> 2 files changed, 32 insertions(+), 30 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.c
>index 69b40b3735b3..500faf639290 100644
>--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>@@ -15,6 +15,34 @@
> #include "intel_pmdemand.h"
> #include "skl_watermark.h"
>=20
>+struct pmdemand_params {
>+        u16 qclk_gv_bw;
>+        u8 voltage_index;
>+        u8 qclk_gv_index;
>+        u8 active_pipes;
>+        u8 active_dbufs;        /* pre-Xe3 only */
>+        /* Total number of non type C active phys from active_phys_mask *=
/
>+        u8 active_phys;
>+        u8 plls;
>+        u16 cdclk_freq_mhz;
>+        /* max from ddi_clocks[] */
>+        u16 ddiclk_max;
>+        u8 scalers;                /* pre-Xe3 only */
>+};
>+
>+struct intel_pmdemand_state {
>+        struct intel_global_state base;
>+
>+        /* Maintain a persistent list of port clocks across all crtcs */
>+        int ddi_clocks[I915_MAX_PIPES];
>+
>+        /* Maintain a persistent list of non type C phys mask */
>+        u16 active_combo_phys_mask;
>+
>+        /* Parameters to be configured in the pmdemand registers */
>+        struct pmdemand_params params;
>+};
>+
> struct intel_pmdemand_state *to_intel_pmdemand_state(struct intel_global_=
state *obj_state)
> {
>         return container_of(obj_state, struct intel_pmdemand_state, base)=
;
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.h
>index 89296364ec3b..34f68912fe04 100644
>--- a/drivers/gpu/drm/i915/display/intel_pmdemand.h
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
>@@ -6,42 +6,16 @@
> #ifndef __INTEL_PMDEMAND_H__
> #define __INTEL_PMDEMAND_H__
>=20
>-#include "intel_display_limits.h"
>-#include "intel_global_state.h"
>+#include <linux/types.h>
>=20
>+enum pipe;
> struct drm_i915_private;
> struct intel_atomic_state;
> struct intel_crtc_state;
> struct intel_encoder;
>+struct intel_global_state;
> struct intel_plane_state;
>-
>-struct pmdemand_params {
>-        u16 qclk_gv_bw;
>-        u8 voltage_index;
>-        u8 qclk_gv_index;
>-        u8 active_pipes;
>-        u8 active_dbufs;        /* pre-Xe3 only */
>-        /* Total number of non type C active phys from active_phys_mask *=
/
>-        u8 active_phys;
>-        u8 plls;
>-        u16 cdclk_freq_mhz;
>-        /* max from ddi_clocks[] */
>-        u16 ddiclk_max;
>-        u8 scalers;                /* pre-Xe3 only */
>-};
>-
>-struct intel_pmdemand_state {
>-        struct intel_global_state base;
>-
>-        /* Maintain a persistent list of port clocks across all crtcs */
>-        int ddi_clocks[I915_MAX_PIPES];
>-
>-        /* Maintain a persistent list of non type C phys mask */
>-        u16 active_combo_phys_mask;
>-
>-        /* Parameters to be configured in the pmdemand registers */
>-        struct pmdemand_params params;
>-};
>+struct intel_pmdemand_state;
>=20
> struct intel_pmdemand_state *to_intel_pmdemand_state(struct intel_global_=
state *obj_state);
>=20
>--=20
>2.39.5
>
