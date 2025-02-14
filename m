Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B461EA35A58
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 10:29:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2479610EC23;
	Fri, 14 Feb 2025 09:29:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TNuBYXQw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7F2A10E48C;
 Fri, 14 Feb 2025 09:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739525363; x=1771061363;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hr1+51jljA73Cl47/txWq9hZz2oOXaF7H3KYWcHTWkQ=;
 b=TNuBYXQwA43c7iT5YkgfOqj8okgRqz6tYMA5s5PSS3/0E2SyXv7UHWQk
 orIu8ph+XhCYQ+/VQyrhrIU/P51WxLwEaTg8Ty5ZqPI+N+Ikk/Cw3f5KZ
 pHy/6P3R3NeH2tBJmwg1FGAMFqy8al+nDAM6mKbHUSqWXmY4LL9bgppTB
 dxnExxIirXg+PProWq/iZlvky8zx8Q9NmjYDA4Rvk8hE2k33ChzZLKYG3
 SeAs88/kiTvZo+AXySgrXTq2YauOWL1bNrypS2bQPo2uUb/yxCsZV0AGH
 cZ0VQz8hqRIpPeWElUyIH+r8dEdRYkt1rAWC2h8n7A8Bw68L9yf6lgM4u g==;
X-CSE-ConnectionGUID: 3errO69RRpS1tzC8jIvVVA==
X-CSE-MsgGUID: di6YNu61SQuVExvLgP/GvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="57800933"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="57800933"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 01:29:22 -0800
X-CSE-ConnectionGUID: UqniGFvoQRSQji6XLxyfew==
X-CSE-MsgGUID: pFYyqEXvS/uUmnX3lGVLfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118616086"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2025 01:29:23 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 14 Feb 2025 01:29:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Feb 2025 01:29:21 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Feb 2025 01:29:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i9sQjACdNWXisR4WNgTv5j3Cyxyt2JORz0r+2b89NwFqFmpRSW3TFYHgi1BX3hDqAlL5m4oBgEoNgUdlnQbSwTJB8lZ5pCFOZxV5NgR/Yc6W8Lv+FFdU1Bi450QTzuaJzYZakJjC5+upCeGnizVQHIuzxn9ka7brRxtFkO48b9EjAe3yjqmCqkhOdCHouuTe7JFEKsAa1GsD25StemtSRkzM/lGfZrlyhmMkBs/J75vzK79AXZrjyLTlHJ3lCXpiLaRNG4mI4gASPycbymUulY8k4x94NAcEMhj75Bh0fgmUVS89c5BkPT1rhK0p1rER9w2eKQGUmlgAsLX5lMBIeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hr1+51jljA73Cl47/txWq9hZz2oOXaF7H3KYWcHTWkQ=;
 b=xVX/gxhkQiqQtEvrLjPbKEANCgZw/KFj6/SQEQYm5dnDV6xrEEz0ShaltSOTBHqKBKKzxr3JQKIoQnRfMBxYCavq+Cg4LOZkJBe0+BRe6sjheFcEtmTivOY2eKyHiO9cG/GLZYqaC2Uv4ZcvlH07MAe4jHBivMvRms5pzFbzT2dIC+ACLNRI2Ltxz/105u1qKe6WpNkiGpSlW5QSNEVKQjneuQcKShN8J/+My4l4L1XQKPvlsP6MotF79nVJl13XDRR0NjyHXwR8xnBArIlAN4jWdnESamT7nDnfSNPScUmgykxpfeWViPeBLhFCMotPQ51R4TjRiwhWg64Kxr9uXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CY8PR11MB7196.namprd11.prod.outlook.com (2603:10b6:930:94::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.12; Fri, 14 Feb
 2025 09:28:38 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8445.015; Fri, 14 Feb 2025
 09:28:38 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v2 2/2] drm/i915/display: Allow display PHYs to reset
 power state
Thread-Topic: [PATCH v2 2/2] drm/i915/display: Allow display PHYs to reset
 power state
Thread-Index: AQHbdvSR6jDQc2yYr0WV00RvuTGE7rNDyauAgALNV7A=
Date: Fri, 14 Feb 2025 09:28:38 +0000
Message-ID: <MW4PR11MB7054F99E36CEB28D39CC7850EFFE2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250204105358.284687-1-mika.kahola@intel.com>
 <20250204105358.284687-3-mika.kahola@intel.com>
 <Z6yyaeTnGaJnZniR@ideak-desk.fi.intel.com>
In-Reply-To: <Z6yyaeTnGaJnZniR@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CY8PR11MB7196:EE_
x-ms-office365-filtering-correlation-id: bb0a674e-513f-47aa-e8dd-08dd4cd9f67e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?S2w0TDNGeVp4bmFITHZDL3VtQXpTVDczWnNYOTBUUGZaY2NZelFGREtzYzUr?=
 =?utf-8?B?b2RiSVhjY0FwMFBkZXZBWHhMTGpqMGNjQ3BRSWpybEhndWdNbUdXRlY0RmNW?=
 =?utf-8?B?QjRsSHliUHdyb0pRVEJaRW00SDVBOXlqV29yVStrakpkdzVPaDR1SlBiYUsr?=
 =?utf-8?B?VmlWMXhxNjBBUFNjWXdLejhvT3lxTklEaVdkOXNaT3I1Z0o0cm5WSGRtcU1D?=
 =?utf-8?B?NjRYbi9Pa2tCUVh6VmJGTld4QnNjMVJoWDdWdlNsaTIzWEl4V3VzMEVqd1hS?=
 =?utf-8?B?VVJkdE1VaGFHZXlZS3NhaVIyNzJTakNFVmJ2aEJ4ZFNlK0FMRnAvK3FvcXJR?=
 =?utf-8?B?UWFteEdKSkQ1MXNacXlSVHVyeFEweDloTEVrdFI1R3BubjZpOTNiZXBIOERx?=
 =?utf-8?B?OElPdTJ2Rk1DOGFhNDBjN1BsMEpiaWFoT0ZtVmNoUkErR0Fqamw2OVNYRUFS?=
 =?utf-8?B?RkRRS3pPdCtUWTFmcXo3czRiUnZRdFh0U25pS213d2Z0bHg4amxFWjFOZ3Jj?=
 =?utf-8?B?dXU1a2NZNldpTjYxYTdTbldCWU1PNzJac1l2OWhId01ZcE9NeWNRZm1OTUxu?=
 =?utf-8?B?cGhlelBsOTFKYTIvSzFHQ2llY1VQWlV1QkEvUlc4K2tKWUVXSzBYRjZvVnRE?=
 =?utf-8?B?aUN2KzJxWGZOUWU1YlpFamNEZldoSi9DUXlLZDFpM1c3R2M1d3diQ0hzMWZ1?=
 =?utf-8?B?QjJvU2RLZDBVZmI0bzBhOE5ST3h5SlJIc1FmY0V5YjJGNDkrNHJhL2lVQnZY?=
 =?utf-8?B?RmRvV0ZsYmY0T1BRNU9sditmM1N5TCtUUXBhZFl1Q2FXWVYwZ2w0SHFEaW5G?=
 =?utf-8?B?N291WkdRaW5Ed0dRTDc2aDhRZDB5RTYvMGlsK2xkelI5WVQzR1pyMXk0ZmlM?=
 =?utf-8?B?UithNmFHNFFMUUNSdndOQ3lLaVp1Um1QaDU2dmZzUmpvd094WjZrTUpUUzU4?=
 =?utf-8?B?c3FRYnRPaDBkQ2Vjd1poRnlmQWNIemY0SFV5V1RvZ0t4UTFuUTlrWUl1Vnhw?=
 =?utf-8?B?SWt2Z1dkSEw5eDRtam5FWlg2YW9vK2lpY1RiWWlSRTIvb1hkQlJEM0lzZGht?=
 =?utf-8?B?dWFLZzRLUGpPVzR0LzVWaE1DNHNxYUlvYjZNNmZHMERqWEJmS0taVXlSeVVI?=
 =?utf-8?B?Qkc1ODZNSEVKTkdudWlBUURwTlBjUG84WUZ0QUtaUUN2bU9VbjBQSUgycy9U?=
 =?utf-8?B?M1ErczhCaFBZVUVMUndZd3RJLzJDci9jaFVHSkN3OTZqTXpSVmZKek1rYm5s?=
 =?utf-8?B?Z3V0NERWd3F6U0NHVmN2RjNOZVUxL3JsU0FLN3NsWmEvRlE2cEw3Q2xreFJD?=
 =?utf-8?B?Q29wNUdlZGppcHRwZ2pkN203enNrTHk2QUNSMktaMWh0SHRLNjE4ODErdEhX?=
 =?utf-8?B?dWZiK2I4ZmJ5MlJzZUtKc0ZrUjMvaHFlRzIrL24zYTdlYWlrdVh1UENxWXhu?=
 =?utf-8?B?SGpiL3d6WjcyMnREOXRjaS9raTRwdnR1WTY4ekJEQW1nMUZYUUZ3T1NTUGdB?=
 =?utf-8?B?WW9ySTRUTUgwUTJuSjlEclo3TXE4WEphbUw4eXBNUElPMXdaWGFic25aQjZM?=
 =?utf-8?B?WTE4Z0YxdjVqTGhMZmpscHF0S0tVZUtxQXBpM1FBL1BaczUrOGIxMFFJNWh5?=
 =?utf-8?B?Zmk2TmdnM1poQ1lzdnJSbmJ6eGMrdjQ2dG1JbkhYTEVRdCs5ZUdWaWNPeElP?=
 =?utf-8?B?dnpFblVzVnNKdSt1ZmV1b1VzRzBPSmk5eEpPTW1GbmF2UzkxTnpTM0xKTXZ0?=
 =?utf-8?B?YUlYeW9hZVlUTHRSdUU1TW0zdnE4Ty92RmwwaG9vbGpaazcwYk1GU1BIWVhv?=
 =?utf-8?B?N2pLamIrcDZMb1JORmxMZG1lNG1hR2M5T0dXYlRJODRqazV4VFV0Ni9ObkFP?=
 =?utf-8?B?NWRUdkswYWcwZHJyTzVUZVZDeExXYWlsZEJpNmdtQkZ5a25ZcERMWUErUjlp?=
 =?utf-8?Q?p4nfpJdiwpLr+YTGoMFIQjcPB+bd2Gys?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NjJOWE9yb3pabmtkRkRCZ3V4ZGNxV0JyRlkzZTd1SGlWSWdqZUx0dGVrWlZs?=
 =?utf-8?B?RWVaZmpnRExRbTZPYUtWMEhSdUorUDk4RGpiOE5BV0dsL05ITlJMSjR6WUU0?=
 =?utf-8?B?UTNvRjh2eFQxdHE3dVRkR1dnUjh3ajZpMEs5enpvQ0pvbFNkdnpjYUJZQ1Rs?=
 =?utf-8?B?ZGtOTUVhUWw2VFpDaWJaVXl1NUlCQWw1NlBSUGdaRFVBRnFyK3ptZFdjbzFH?=
 =?utf-8?B?a0dSR0VZa3NjSnBXWXhIQUYxQ2tqOW9SZWtVdFRibTJBQWZGTUtKRE5YY1RR?=
 =?utf-8?B?dDNiSDJVSWpMZGt5R1Ztd2ZWa2hCUE42Q2VHZVNjdnpIaHAveko1UGFDQ2F4?=
 =?utf-8?B?UE1MY0pBeWhlczZQRjRrdEVnQ2xvbVFPa0phR0FPNm0ra2JGcjB0Nkc2K0dE?=
 =?utf-8?B?bG5YeHZaOEJCUWl2U1N0WVhEVTJPSzlqL1dFM0N5MnFWU2hOSWVPKzBLNURH?=
 =?utf-8?B?RVRiRXNhQnNxRzlMVkFsTnRpM3FPUVpMRkpPWWdmVnVUNHVOaFN1Yk1rZjZJ?=
 =?utf-8?B?SEJTa1ZUbjgrbkdmQi8yNC9NT2JzTG4zODZnRFNocXdkMFVNL0M2bUszSG9K?=
 =?utf-8?B?UXNINlY3eXRRMk53WDkwQ0crUlBMSm9KY0tsZ3RDMGduSFNlQUxZUGlkSjRm?=
 =?utf-8?B?OE5TSnNSbytuNElmd3NhVkpUZGd4V2o4Q1lPK3RyWjV0NWZyUGlIblkrQzU3?=
 =?utf-8?B?WTgrMnBkSmJMOTNhc2pEMS92NUh5UWQyVzlQaE9CUVd0dXpta0FaZWtjdFps?=
 =?utf-8?B?ay9udE54WUVheDU0d0kzdldYQlc3aTRZSUV5L1BOWHZNcS9WNVl1eW1PdDFB?=
 =?utf-8?B?NEN0SkpBc3RVVjNXR3lSN0N1UndlMWV5K2VqeVlMS3loZmdXYjY0VzJrakVD?=
 =?utf-8?B?MWRTMjNNOWFqLzRJcXFRMWpSb1FWM21LekhzdUIzZVFHWGVKZ0FMT1prV0k5?=
 =?utf-8?B?bmVBclBjZHhuaXoyYnV2RUVHazJhTGZHVEtDa1Vzb2RudTl5UG1ONXlhR2JO?=
 =?utf-8?B?WGVYT2xHWC92ZzRwbENNRU9PM09RWTZNR3BOcHJBKzRWampOdXVYd3c2aE81?=
 =?utf-8?B?cENUMklnS2h2NW03N3gwWUJxbGJMaW1GbnE0VG9DMGhoU1JsNStWK1NTb3NE?=
 =?utf-8?B?YkJPRmhOYyt3U0J6c2JRVnpEeVhERDA0a3YyMHFvdzArdCtwUXVUbjRFaWpu?=
 =?utf-8?B?WGpQUGQ0ZVZnK1p1MW13aXBtMDl2dkFST0tGM2hqUFljZDEvTUszTllPSXFa?=
 =?utf-8?B?ejZtM1E3Y0IrSmJiZ1NBdjY4bGQxUkc2eXVFMEVEcHQyc0RBRllmSjl1dFd2?=
 =?utf-8?B?citaQVd5aWZaN0k0Qk8zcFlaTDRLRWVKNE0weGlpcC8vSTFpMDdObUdFWnlB?=
 =?utf-8?B?c1BxZUpGNEx6ZDZQaW04bGFwQ2hXK3doWWNkaEsvU29nelE4alJoVnFvOUlZ?=
 =?utf-8?B?TTV0UUJ1TGhKRjZxdHBRS3R4bURJM2FEVFNteVpmOVFQM3Y0ZDJpWnM1b0dx?=
 =?utf-8?B?VXdWS3gwYndHVm1uc2cvQWJLNUxmNXdXSGZGNXN5UjJlMFhJYkc5d2tOTERy?=
 =?utf-8?B?MnA1SUIvMDY0QUZoV056bk5VNWszNHZNZUFoT3BXMHdjR09Ta1NMT085MXZJ?=
 =?utf-8?B?RW1iZDVXYml2V0x3Q2YyVWlyZUR5ZEszMm9kYzloT2ZkZDdBMS9uSXBYSW9Y?=
 =?utf-8?B?NFR3dTVtWG1vdkMrbDF2MldySlBxVzA3dlR5c0ZuZWlqalNKclJ0S21VVXl4?=
 =?utf-8?B?V2ExN1lCZlFPcHZyZHZlRDBndkZnVUVKYmpyZE4rMkhqUUh5WHp0SGZvbE8v?=
 =?utf-8?B?dkhkY0hNUmpUcW1uUGhaM0diWUZtWnJ1ZzUxRjNrdEtrTXRBMFlzMnNxSElY?=
 =?utf-8?B?OHA3dHN6bWdFYnFpaVZ1U290RWpubTBVRE1lcUo2SUFSdXhiZzFjVHdoRFJo?=
 =?utf-8?B?NVVzanlsUnlZdnFWRXFkM3NTRnZNSUlMUytXVmpjNW04RjU1TFdJQm5sdXk1?=
 =?utf-8?B?Ty9ISUhXaDVjanhwM09FaitneXJueUk2UjVZSHBCUi92V0NSMGNPOXVyWjZ1?=
 =?utf-8?B?YytXTmpjdUFRMWZHd0VMM0lWc09uNmw3TXhvd095S3RZMjJKY0dxOFFjK3Uv?=
 =?utf-8?Q?lah+hFboMUjTDjqyIVaJcvOzR?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb0a674e-513f-47aa-e8dd-08dd4cd9f67e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2025 09:28:38.3545 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EdOcWU2Dtky4x+ywuXcNzut+NQOkHlKBtqD2ClGU7vogAWkPIZkbNyHxTWpNul9V/6dQnyd1YE/xMeRNB35j5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7196
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBEZWFrLCBJbXJlIDxpbXJlLmRl
YWtAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIDEyIEZlYnJ1YXJ5IDIwMjUgMTYuMzkN
Cj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Ow0KPiBqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2
MiAyLzJdIGRybS9pOTE1L2Rpc3BsYXk6IEFsbG93IGRpc3BsYXkgUEhZcyB0byByZXNldCBwb3dl
cg0KPiBzdGF0ZQ0KPiANCj4gT24gVHVlLCBGZWIgMDQsIDIwMjUgYXQgMTI6NTM6NThQTSArMDIw
MCwgTWlrYSBLYWhvbGEgd3JvdGU6DQo+ID4gVGhlIGRlZGljYXRlZCBkaXNwbGF5IFBIWXMgcmVz
ZXQgdG8gYSBwb3dlciBzdGF0ZSB0aGF0IGJsb2NrcyBTMGl4LA0KPiA+IGluY3JlYXNpbmcgaWRs
ZSBzeXN0ZW0gcG93ZXIuIEFmdGVyIGEgc3lzdGVtIHJlc2V0IChjb2xkIGJvb3QsIFMzLzQvNSwN
Cj4gPiB3YXJtIHJlc2V0KSBpZiBhIGRlZGljYXRlZCBQSFkgaXMgbm90IGJlaW5nIGJyb3VnaHQg
dXAgc2hvcnRseSwgdXNlDQo+ID4gdGhlc2Ugc3RlcHMgdG8gbW92ZSB0aGUgUEhZIHRvIHRoZSBs
b3dlc3QgcG93ZXIgc3RhdGUgdG8gc2F2ZSBwb3dlci4NCj4gPg0KPiA+IDEuIEZvbGxvdyB0aGUg
UExMIEVuYWJsZSBTZXF1ZW5jZSwgdXNpbmcgYW55IHZhbGlkIGZyZXF1ZW5jeSBzdWNoIGFzIERQ
IDEuNjINCj4gR0h6Lg0KPiA+ICAgIFRoaXMgYnJpbmdzIGxhbmVzIG91dCBvZiByZXNldCBhbmQg
ZW5hYmxlcyB0aGUgUExMIHRvIGFsbG93IHBvd2VyZG93biB0byBiZQ0KPiBtb3ZlZA0KPiA+ICAg
IHRvIHRoZSBEaXNhYmxlIHN0YXRlLg0KPiA+IDIuIEZvbGxvdyBQTEwgRGlzYWJsZSBTZXF1ZW5j
ZS4gVGhpcyBtb3ZlcyBwb3dlcmRvd24gdG8gdGhlIERpc2FibGUgc3RhdGUNCj4gYW5kIGRpc2Fi
bGVzIHRoZSBQTEwuDQo+ID4NCj4gPiB2MjogUmVuYW1lIFdBIGZ1bmN0aW9uIHRvIG1vcmUgZGVz
Y3JpcHRpdmUgKEphbmkpDQo+ID4gICAgIEZvciBQVEwsIG9ubHkgcG9ydCBBIG5lZWRzIHRoaXMg
d2ENCj4gPiAgICAgQWRkIGhlbHBlcnMgdG8gY2hlY2sgcHJlc2VuY2Ugb2YgQzEwIHBoeSBhbmQg
cGxsIGVuYWJsaW5nIChJbXJlKQ0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogTWlrYSBLYWhvbGEg
PG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgIHwgNDUNCj4gPiArKysrKysrKysrKysrKysrKysr
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuaCAgfCAgMSArDQo+
ID4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVzZXQuYyAgICB8ICAyICsN
Cj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIHwgIDIg
Kw0KPiA+ICA0IGZpbGVzIGNoYW5nZWQsIDUwIGluc2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiBpbmRl
eCBiZmZlM2Q0YmJlOGIuLmJkMzNlYmI4YzcxZSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gQEAgLTM1NTksMyArMzU1OSw0
OCBAQCB2b2lkIGludGVsX2N4MHBsbF9zdGF0ZV92ZXJpZnkoc3RydWN0DQo+IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+ID4gIAllbHNlDQo+ID4gIAkJaW50ZWxfYzIwcGxsX3N0YXRlX3Zl
cmlmeShuZXdfY3J0Y19zdGF0ZSwgY3J0YywgZW5jb2RlciwNCj4gPiAmbXBsbF9od19zdGF0ZS5j
MjApOyAgfQ0KPiA+ICsNCj4gPiArc3RhdGljIGJvb2wgaW50ZWxfY3gwX3BsbF9pc19lbmFibGVk
KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiA+ICtlbnVtIHBvcnQgcG9ydCkgew0K
PiA+ICsJdTMyIHZhbCA9IGludGVsX2RlX3JlYWQoZGlzcGxheSwgWEVMUERQX1BPUlRfQ0xPQ0tf
Q1RMKGRpc3BsYXksDQo+ID4gK3BvcnQpKTsNCj4gPiArDQo+ID4gKwlpZiAoUkVHX0ZJRUxEX0dF
VChYRUxQRFBfRERJX0NMT0NLX1NFTEVDVF9NQVNLLCB2YWwpID09DQo+IFhFTFBEUF9ERElfQ0xP
Q0tfU0VMRUNUX05PTkUpDQo+ID4gKwkJcmV0dXJuIGZhbHNlOw0KPiANCj4gU2hvdWxkbid0IHRo
aXMgY2hlY2sgaWYgdGhlIFBMTCByZXF1ZXN0IGZvciBlaXRoZXIgbGFuZSBpcyBzZXQgaW4NCj4g
WEVMUERQX1BPUlRfQ0xPQ0tfQ1RMPyBBRkFJQ1MgdGhhdCdzIHdoYXQgYWN0dWFsbHkgZW5hYmxl
cyB0aGUgUExMLCB3aGlsZQ0KPiB0aGUgYWJvdmUgaXMganVzdCBzb21lIGNvbmZpZ3VyYXRpb24u
DQoNCk15IHRob3VnaHQgd2FzIHRoYXQgc2luY2UgY2xvY2sgaGFzbid0IGJlZW4gc2VsZWN0ZWQg
dGhlIHBsbCB3b3VsZG4ndCBiZSBzZWxlY3RlZCBlaXRlci4gQnV0IHRoaXMgY2FuIGJlIGNoYW5n
ZWQgdG8gY2hlY2sgdGhlIHBsbCByZXF1ZXN0Lg0KDQo+IA0KPiA+ICsNCj4gPiArCXJldHVybiB0
cnVlOw0KPiA+ICt9DQo+ID4gKy8qDQo+ID4gKyAqIFdBIDE0MDIyMDgxMTU0DQo+ID4gKyAqIFRo
ZSBkZWRpY2F0ZWQgZGlzcGxheSBQSFlzIHJlc2V0IHRvIGEgcG93ZXIgc3RhdGUgdGhhdCBibG9j
a3MNCj4gPiArUzBpeCwgaW5jcmVhc2luZyBpZGxlDQo+ID4gKyAqIHN5c3RlbSBwb3dlci4gQWZ0
ZXIgYSBzeXN0ZW0gcmVzZXQgKGNvbGQgYm9vdCwgUzMvNC81LCB3YXJtIHJlc2V0KQ0KPiA+ICtp
ZiBhIGRlZGljYXRlZA0KPiA+ICsgKiBQSFkgaXMgbm90IGJlaW5nIGJyb3VnaHQgdXAgc2hvcnRs
eSwgdXNlIHRoZXNlIHN0ZXBzIHRvIG1vdmUgdGhlDQo+ID4gK1BIWSB0byB0aGUgbG93ZXN0DQo+
ID4gKyAqIHBvd2VyIHN0YXRlIHRvIHNhdmUgcG93ZXIuIEZvciBQVEwgdGhlIHdvcmthcm91bmQg
aXMgbmVlZGVkIG9ubHkNCj4gPiArZm9yIHBvcnQgQS4gUG9ydCBCDQo+ID4gKyAqIGlzIG5vdCBj
b25uZWN0ZWQuDQo+ID4gKyAqDQo+ID4gKyAqIDEuIEZvbGxvdyB0aGUgUExMIEVuYWJsZSBTZXF1
ZW5jZSwgdXNpbmcgYW55IHZhbGlkIGZyZXF1ZW5jeSBzdWNoIGFzIERQDQo+IDEuNjIgR0h6Lg0K
PiA+ICsgKiAgICBUaGlzIGJyaW5ncyBsYW5lcyBvdXQgb2YgcmVzZXQgYW5kIGVuYWJsZXMgdGhl
IFBMTCB0byBhbGxvdyBwb3dlcmRvd24gdG8NCj4gYmUgbW92ZWQNCj4gPiArICogICAgdG8gdGhl
IERpc2FibGUgc3RhdGUuDQo+ID4gKyAqIDIuIEZvbGxvdyBQTEwgRGlzYWJsZSBTZXF1ZW5jZS4g
VGhpcyBtb3ZlcyBwb3dlcmRvd24gdG8gdGhlIERpc2FibGUgc3RhdGUNCj4gYW5kIGRpc2FibGVz
IHRoZSBQTEwuDQo+ID4gKyAqLw0KPiA+ICt2b2lkIHB0bF9wb3dlcl9zYXZlX3dhKHN0cnVjdCBp
bnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiANCj4gSSdkIGNhbGwgaXQgaW50ZWxfY3gwX3BsbF9w
b3dlcl9zYXZlX3dhKCkgZm9sbG93aW5nIHRoZSBuYW1pbmcgcnVsZSBmb3IgZXhwb3J0ZWQNCj4g
ZnVuY3Rpb25zLg0KSSdsbCBmaXggdGhlIG5hbWluZy4NCg0KPiANCj4gPiArew0KPiA+ICsJc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7DQo+ID4gKw0KPiA+ICsJaWYgKERJU1BMQVlfVkVS
KGRpc3BsYXkpICE9IDMwKQ0KPiA+ICsJCXJldHVybjsNCj4gPiArDQo+ID4gKwlmb3JfZWFjaF9p
bnRlbF9lbmNvZGVyKGRpc3BsYXktPmRybSwgZW5jb2Rlcikgew0KPiA+ICsJCXN0cnVjdCBpbnRl
bF9jeDBwbGxfc3RhdGUgcGxsX3N0YXRlID0ge307DQo+ID4gKwkJaW50IHBvcnRfY2xvY2sgPSAx
NjIwMDA7DQo+ID4gKw0KPiA+ICsJCWlmICghaW50ZWxfZW5jb2Rlcl9pc19jMTBwaHkoZW5jb2Rl
cikpDQo+ID4gKwkJCWNvbnRpbnVlOw0KPiA+ICsNCj4gPiArCQlpZiAoaW50ZWxfY3gwX3BsbF9p
c19lbmFibGVkKGRpc3BsYXksIGVuY29kZXItPnBvcnQpKQ0KPiA+ICsJCQljb250aW51ZTsNCj4g
PiArDQo+ID4gKwkJaW50ZWxfYzEwcGxsX2NhbGNfc3RhdGVfZnJvbV90YWJsZShlbmNvZGVyLA0K
PiBtdGxfYzEwX2VkcF90YWJsZXMsIHBvcnRfY2xvY2ssIHRydWUsICZwbGxfc3RhdGUpOw0KPiA+
ICsJCV9faW50ZWxfY3gwcGxsX2VuYWJsZShlbmNvZGVyLCAmcGxsX3N0YXRlLCB0cnVlLCBwb3J0
X2Nsb2NrLCA0KTsNCj4gPiArCQlpbnRlbF9jeDBwbGxfZGlzYWJsZShlbmNvZGVyKTsNCj4gPiAr
CX0NCj4gPiArfQ0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2N4MF9waHkuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jeDBfcGh5LmgNCj4gPiBpbmRleCA1NzNmYTdkM2U4OGYuLjA2MzQ2ZTRjNTA3OSAxMDA2NDQN
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuaA0K
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5oDQo+
ID4gQEAgLTQyLDUgKzQyLDYgQEAgYm9vbCBpbnRlbF9jeDBwbGxfY29tcGFyZV9od19zdGF0ZShj
b25zdCBzdHJ1Y3QNCj4gPiBpbnRlbF9jeDBwbGxfc3RhdGUgKmEsICB2b2lkIGludGVsX2N4MF9w
aHlfc2V0X3NpZ25hbF9sZXZlbHMoc3RydWN0DQo+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+
ID4gIAkJCQkgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsg
IGludA0KPiA+IGludGVsX210bF90YnRfY2FsY19wb3J0X2Nsb2NrKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyKTsNCj4gPiArdm9pZCBwdGxfcG93ZXJfc2F2ZV93YShzdHJ1Y3QgaW50ZWxf
ZGlzcGxheSAqZGlzcGxheSk7DQo+ID4NCj4gPiAgI2VuZGlmIC8qIF9fSU5URUxfQ1gwX1BIWV9I
X18gKi8NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3Jlc2V0LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9yZXNldC5jDQo+ID4gaW5kZXggMDkzYjM4NmM5NWU4Li5iNzU4MjdmZjljN2Ug
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3Jlc2V0LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcmVzZXQuYw0KPiA+IEBAIC03LDYgKzcsNyBAQA0KPiA+DQo+ID4gICNpbmNsdWRl
ICJpOTE1X2Rydi5oIg0KPiA+ICAjaW5jbHVkZSAiaW50ZWxfY2xvY2tfZ2F0aW5nLmgiDQo+ID4g
KyNpbmNsdWRlICJpbnRlbF9jeDBfcGh5LmgiDQo+ID4gICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5
X2RyaXZlci5oIg0KPiA+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9yZXNldC5oIg0KPiA+ICAj
aW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIg0KPiA+IEBAIC0xMTYsNiArMTE3LDcgQEAg
dm9pZCBpbnRlbF9kaXNwbGF5X3Jlc2V0X2ZpbmlzaChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0K
PiAqaTkxNSkNCj4gPiAgCQlpbnRlbF9wcHNfdW5sb2NrX3JlZ3Nfd2EoZGlzcGxheSk7DQo+ID4g
IAkJaW50ZWxfZGlzcGxheV9kcml2ZXJfaW5pdF9odyhkaXNwbGF5KTsNCj4gPiAgCQlpbnRlbF9j
bG9ja19nYXRpbmdfaW5pdChpOTE1KTsNCj4gPiArCQlwdGxfcG93ZXJfc2F2ZV93YShkaXNwbGF5
KTsNCj4gPiAgCQlpbnRlbF9ocGRfaW5pdChpOTE1KTsNCj4gPg0KPiA+ICAJCXJldCA9IF9faW50
ZWxfZGlzcGxheV9kcml2ZXJfcmVzdW1lKGRpc3BsYXksIHN0YXRlLCBjdHgpOyBkaWZmDQo+ID4g
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMNCj4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYw0KPiA+IGlu
ZGV4IGI4ZmEwNGQzY2Q1Yy4uMjQ4OTNkMmY3OWUzIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYw0KPiA+IEBAIC0yNyw2ICsyNyw3
IEBADQo+ID4gICNpbmNsdWRlICJieHRfZHBpb19waHlfcmVncy5oIg0KPiA+ICAjaW5jbHVkZSAi
aTkxNV9kcnYuaCINCj4gPiAgI2luY2x1ZGUgImk5MTVfcmVnLmgiDQo+ID4gKyNpbmNsdWRlICJp
bnRlbF9jeDBfcGh5LmgiDQo+ID4gICNpbmNsdWRlICJpbnRlbF9kZS5oIg0KPiA+ICAjaW5jbHVk
ZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIg0KPiA+ICAjaW5jbHVkZSAiaW50ZWxfZGtsX3BoeS5o
Ig0KPiA+IEBAIC00NTUyLDYgKzQ1NTMsNyBAQCBzdGF0aWMgdm9pZCBzYW5pdGl6ZV9kcGxsX3N0
YXRlKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KPiA+ICAJCXJldHVybjsNCj4g
Pg0KPiA+ICAJYWRscF9jbXRnX2Nsb2NrX2dhdGluZ193YShpOTE1LCBwbGwpOw0KPiA+ICsJcHRs
X3Bvd2VyX3NhdmVfd2EoJmk5MTUtPmRpc3BsYXkpOw0KPiANCj4gVGhlIFdBIGlzIGFwcGxpZWQg
aWYgdGhlIFBMTCBpcyBub3Qgb24sIHNvIGF0IGxlYXN0IGxvZ2ljYWxseSBpdCBzaG91bGQgYmUg
YXBwbGllZA0KPiBiZWZvcmUgdGhlICFwbGwtPm9uIGNoZWNrIGFib3ZlLg0KVGhpcyB3YSB3YXMg
bm90IG5ldmVyIGNhbGxlZCBoZXJlLiBXZSBuZWVkIHRvIG1vdmUgdGhpcyBhIHN0ZXAgaGlnaGVy
Lg0KDQo+IA0KPiA+DQo+ID4gIAlpZiAocGxsLT5hY3RpdmVfbWFzaykNCj4gPiAgCQlyZXR1cm47
DQo+ID4gLS0NCj4gPiAyLjQzLjANCj4gPg0K
