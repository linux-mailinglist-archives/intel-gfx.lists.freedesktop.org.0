Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIwmA+6knWmZQwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 14:17:34 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 629581877C4
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 14:17:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADBE210E066;
	Tue, 24 Feb 2026 13:17:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JilgSafy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C895110E066;
 Tue, 24 Feb 2026 13:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771939051; x=1803475051;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ysSLUZxrU+z7hBPoNAbXZcio3mcefvfXfM7nNrrJZyM=;
 b=JilgSafy7UlSl4oQBKRdNiuDsPv7fhHt1PSGXKZozDcCCYj66GWLMnTM
 vMpGng1QJXY1T4fDumdL8apSFzmoN0x2oFxwkMXNRhEKvRnsqlSoY0+eH
 Sm3535oUyJ0GP+8pcOdPhBsqhyCBZIwZPERRckUgNuwcmaJyWAay0KzYq
 S9aAp04vcnK82QQKGc/x4GOzVrI0V18Ijla/0Bq0QcHqAdX0XzcrjZIRs
 RnKFyfouYrnQhms7mcWOuJkxH0WIun3YUsgkrQfJgHut2PEEMlIcTq9De
 Phw7u+PQfqSiOmu78kEW6rQcrWc/+XyA82dcXolY/tJIQwvqLYAep2f8K w==;
X-CSE-ConnectionGUID: jMpPZUkmQGiXy44+IKlMeQ==
X-CSE-MsgGUID: 9/r7MxCYQNir1D3gKfE9NA==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="72826442"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="72826442"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 05:17:30 -0800
X-CSE-ConnectionGUID: L0Q3RydCQkOxsLZ6sGYaGA==
X-CSE-MsgGUID: 27OjOg9pTCWqu5gfiWJduQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="219377155"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 05:17:30 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 05:17:29 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 05:17:29 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.56) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 05:17:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=daHMORA8eX2eWJle6ARZw6AMofptB3pgzvv7RROg11Tbh1y56OpK+u6gKP1Nub5tKp9YMlmIGt3PXMlkHyo3zgXmWopam4xPiUzwZoKNMyFFI+Ej5sA22jl1X2ILVZKKWbla3lVakjJfLUMctbseWq0KA1ApbiXfMk1l8APOM8Gf4PUq2HFyq3iHHTUcE+qiErmLfhtx5KD1G2/KGSBGMtaSNZJ3psz/9IcA2nXmyaO2tU1p9O+MbkKKSUdwoUMXydq6CmmujIXGUbnNI5yoGMNThxgimcDLFFwas5j+UZe6tzg1xGgS//hSf8G8ORyblD+dl8OUz9gQa2zNT+Xb7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ysSLUZxrU+z7hBPoNAbXZcio3mcefvfXfM7nNrrJZyM=;
 b=g/RnqWsj46IY3/Vx2QxUXa+y8RDdGOZQg7qRZWQIHW11CBnwwqlGmoh0DIgQOr3fXGaHl/UhiGd0cXobwFZML4TFif8aydJESzbAbmVOEGcnrIBxHZBcz8wy/BU97SgTyEtgzc5fcqsSNBaJgrcRoXCbQ2kd1MaLdiq7K+A0CIHLLeWu5C45bA1GVZ8m/JMzGwM5zSpvdHvYOQFWfoItwTphISz1M8WRUUtpolLeTAo62k3r0pG5sZRG7OD1pRIZj/Hm1GJ25ghgLfabb1kj+HiEe+vw6Jitd5g20H/lHUDsmHelf8tlhKURLe75tr04GxlG8ZKemCl5u7YQKP9YzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DS7PR11MB6128.namprd11.prod.outlook.com
 (2603:10b6:8:9c::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 13:17:22 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8%3]) with mapi id 15.20.9587.017; Tue, 24 Feb 2026
 13:17:21 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH v2 2/6] drm/i915/display: remove the usage of dev_priv
Thread-Topic: [PATCH v2 2/6] drm/i915/display: remove the usage of dev_priv
Thread-Index: AQHcoou7LQxkz3N2WUGhjVNBrmwI57WR2prw
Date: Tue, 24 Feb 2026 13:17:21 +0000
Message-ID: <DS4PPF69154114F978CCD56A772A7CFFDD8EF74A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260220170908.201422-1-vinod.govindapillai@intel.com>
 <20260220170908.201422-3-vinod.govindapillai@intel.com>
In-Reply-To: <20260220170908.201422-3-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DS7PR11MB6128:EE_
x-ms-office365-filtering-correlation-id: 669970f6-65ee-43a0-2211-08de73a70b40
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?cEFzL3lHSy9WQ1lZcmtiM0FPQzF3Q3NSZzc4d3VlMktLM3RkTEd6RnBQYU9w?=
 =?utf-8?B?Rmd0eHNocVNoaHNvN0NLb1BjamVNZkphSmxyN3ltYlpIQ1libk4yeVdCeWwv?=
 =?utf-8?B?RnBnRis5NDEvV3o5T0FlT0IwSWpKWE9pbll5YWhEcHk0VTl6K0p2cmpzQUlT?=
 =?utf-8?B?WHBmNFZHMFJoNGtweUE3UUI1anp2bG5HdEJ1N0NYeGo4N0VTVmVHVXZRbDZH?=
 =?utf-8?B?YUNTV05FdzJFWGVRQUI5OXR1MExpTEQ4YS9DQzR5REtmVjYzZ28rTzMyR3Fk?=
 =?utf-8?B?SUY2OGNuaEV0TUg2QnU4R0xmLy90ZmQ2Y2o5eWVsT21CU3Q3ZHRmOUVRVnFE?=
 =?utf-8?B?MmQyRXJpOG5mTTNYc3JqZlFGSkwwazJrTGpCUVl2Ty9sWHhKSHRhaWVPVkVk?=
 =?utf-8?B?dDRwVnplV3BRQUUzcmNxSVJLUUs3Zmoyd01Fc2VpT3JoVjJUaUVuRjJRZnlL?=
 =?utf-8?B?aTVmb0ZNd1RGcE5GTlNpWG5FWWZhWHhpTnF6djdIS1ZDY1NCcExoWExhaXZB?=
 =?utf-8?B?NTNOZ0VNRmRTbUZaT21EZERWYUxIV2JXWDJhOTExeVZoU3Nqcmk3azdsUmdz?=
 =?utf-8?B?NitqQllYYmNwSjA4d3hDWFRtZk5KSGJNMVE4V2NTWVpvSW45QmN5YWdCdWMz?=
 =?utf-8?B?VktqcitFV29QdGlBZWJNTi8yNGtqMndVN1l6TnVQRW5HWWViQmV3T2pXbHgr?=
 =?utf-8?B?bCtHQjlBWkpXYzhvcEVZMG9ka2gzUzdzekliK2FCM1VyY08vb1d3d2crMDRK?=
 =?utf-8?B?ckZ1UTJBaTBTeTNLQ0wvdG0wYnZWbjJoMzVRZE93eXVaR0h4U0FpSllOQW50?=
 =?utf-8?B?YW5mTlREdEo3UmY2WllxaytQbGFGSFpzM3BYYVl2cElyUEZiaGdEeEFzNy9X?=
 =?utf-8?B?OHU5UHJmRmh2QllWK3grNTZJYjFRZitEWWlHOFE2OTdtYUhFVmpwY0hLbVg4?=
 =?utf-8?B?dXMrUFBsdEpKT1hydnFIZXR5MzhyWGtVSW4rWE5nYjJacTlZQ2puZjhqSmdt?=
 =?utf-8?B?Q2NJdG91Q1EwdTgxSnNWaDZybXFSci8xSDlEMjA2TEJ0OFhleUxIb3ByQVpJ?=
 =?utf-8?B?U2oyRlQ1Z2drTTBUSGNrQ2N6ZkhTaE12cEdyUjFrWW1LM21pc2hQdlhSbXVa?=
 =?utf-8?B?b25OeW5PZ016ZWE0L3NzRjNZNGt5aDlWSklGNVdPRXl1MU1xbjk0VnZ3aWpC?=
 =?utf-8?B?TjcvT3NTZUwrVzRIZVJuV1poWE9YYlFHYWZsOXIrejUyNk9NZlZPc1V2VEpI?=
 =?utf-8?B?K1NsN3FHcFozeEJnS0Q4NFNTelRNTEhqY0QwWHVJM1luakZzd1dFMDJxQzZw?=
 =?utf-8?B?cGMwSHpVNUdCSFZQTlJndXFxc2l1dncvamprWS9oOUZFSldTYklQSEZtQWxO?=
 =?utf-8?B?VHRaQlFzTGNCUWFFMU8vdk5NMDM4RzJFN0U4VWNDK1NPZmZzMk8yOW0zM1Fm?=
 =?utf-8?B?NklWZDVJL0l0QTNkSmIvcTVMMng0NzlJYVMxZjlxN1JIMzAzeWM2cFpQUC9k?=
 =?utf-8?B?dERDUUpXc3d2bkFKNlFBaWwwcG1CTFJlL3lCUWNxenpPQks1QXNWMmxnZmpz?=
 =?utf-8?B?SlZ6MUh2T0RhSWJWNExTTXBlbS8wUEtlUEI3aEJ2MkprT0trcmM1UytyOEZT?=
 =?utf-8?B?T3Bpd0pDam1UZ0UrNlJWa2tIMSsvZi90ck5yM0o2VHpuRXo4U3ZDaGdxRExV?=
 =?utf-8?B?QUxoZVZxSWVLbHcrYUJHL0FVakkxMjkzTFBjZHhNRXdjUG5nVnpvZkw4ajNq?=
 =?utf-8?B?aVlSMzhTQUFqQzBxZzRLaVNNSjNnZDFqdHVsSUJRdFViVER0SjBnazVrM0Q4?=
 =?utf-8?B?cFZqN1VGUWhhRnMyakM3bmEvcmcxNWh0RUQ3L1BrcTlvRDI5QWFhMDVaL3ps?=
 =?utf-8?B?MTFJd0h5akJRdm1FLytvdVJuSG5vV09raUZBSmtoem1LaitNSUMrYUFsN0pJ?=
 =?utf-8?B?RmRmeXZQWnQ1Wml5N3hJNHRtc3VRNE1KRVdwSWNsM3lpeG1wbHpHM0lVU3pE?=
 =?utf-8?B?NzErRVhnaktScHoyemFMUXN4MWJDQ0NYdm5QY01qVXZxN0JORVZaMXBETFJ6?=
 =?utf-8?B?N3dIcGg4b2NrOFVPYlRVOXJ5NVBGN2M1d0kzYklrS0t6OEdMR0s1TjhFYklj?=
 =?utf-8?B?OUJIMmQ1VjQ4TUxHb1ZmOFUyTStNelJFeWdGem9pTXN4OXhrNWFyaHAvWCt0?=
 =?utf-8?Q?olXFWLKuvpBhhVvVhjl4vr4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U1Y2ZWsycTE0VGhPalJZY2JuVmViLzFRd2tNQzJ2di9nc1REYXYwb09IdXd6?=
 =?utf-8?B?TWl3L0kyYU51cDV4alIwUGNjRjVuS2lQeml5OUtDbFJMZjJEYWFyREQrSjVF?=
 =?utf-8?B?M2h4UnhRWEFFcnFuUU5lNWpvOFliZzgvS0tuR2NuRUQ0d3NUc2Vuc050V2Yw?=
 =?utf-8?B?N1BiM25pVmUvRlFXUXRVblJFZlFMb2ZrV1lSVURycWFmS2tZSTlISXNwMXhi?=
 =?utf-8?B?VktDQlRieER0UENhZGxoTlZLNFA3RHY2K1dKZnFrWTFOSy9Xc2pOa21lUkRo?=
 =?utf-8?B?aTR5VHBaajlqUkU4ZUdsSElrTnA5cFI4aUIremUxeERyK3BDRzZvYWI3NFdl?=
 =?utf-8?B?VVE3QzVXVnlRZm5vMUM5YS84WmJlaWJtb0x0NVIxdWh3ZEg0U1lQb3E4ajl5?=
 =?utf-8?B?NEN4a1lPRmdESVdSVzNOcEZYNENEa2piN2ZYRXN1TFhac3FiaTlUL1ZLNzJW?=
 =?utf-8?B?Y2ord1FveUlPM0QvU0ZEdlExYlIrRkJqUzlRb0doYUZTU1BTRHFFd2VTZXAw?=
 =?utf-8?B?L0pBOHA1Y2xsSW13MDF6OEZFU1dWRUJmOTdCaGtWb1Y4Y0FuN3hmVUNhU0FI?=
 =?utf-8?B?clB0cm9wdXNqSXh5OVcrVmwrYnljUjRJOEFmaFZVNkc2N25PRVpmUVd6UVly?=
 =?utf-8?B?SlBCOGMwbE51WVZGNVhsVFN2RitZRDFmekdVL2JReTd4NjdaUVlLYWsyZTBH?=
 =?utf-8?B?bUlPcjk3NlFRSStqZ1NRdWdXMGZKS3QyQmx0NW1uV2lLOVhuTWNibFFYdUND?=
 =?utf-8?B?VXNoVlRPUFNqb2JOOEMxY3hwL2c0NjlQVVp4bnFVYkRlOFhTNmU4UGxnUEd0?=
 =?utf-8?B?NFh4YXVFUEFxdUFTQXVsRXNybjlMeUlRUlgrNng5TFhGMkxyU0UzY3JRNStT?=
 =?utf-8?B?b1R3UmdxUWc1eGF6MStlTVZRWHZNLzZlV3pSRjdJMjdQY1oxRlBvSThSY21L?=
 =?utf-8?B?ckVybGRlbnQxeEVad2t3L3FVdUFPNnplSXpCNFA2NUNPdE9NVUJYODg1MmF4?=
 =?utf-8?B?NGUvRlNpaHJ5OFZrUERaMHRGUjhwZW4wVFBOd3B5NE1lNi9UMGNzV0d6WW5X?=
 =?utf-8?B?Y3dUOWlLbjlzWWREK0g4UGpydUlIV0NrZnp4WW56azMyeVd5ay9pcEg4Q3B1?=
 =?utf-8?B?SWVTYm5LQzNpYVhHQkE3OGhWRmJ1THducWRza3BuWGl1c0pjNmFFcEdETGFt?=
 =?utf-8?B?cHZjSzNnNFVFSkxRTlZoc1JVdUZxN2FTY1ZyTVZPQ3VhQlFFaTdPRG1ZYk5F?=
 =?utf-8?B?S09peHhIRnhqQS9mTi9uZkJOS2tVQnoyb0I0ZHVlc2NSMWV0SGRFM01VQm9Y?=
 =?utf-8?B?NmNyM1dweUVmRE15RnFwWEgvQXRqekJsaStiZnBUQ2o0aEEwdEJWVTB3SWU3?=
 =?utf-8?B?V2YzalhKekV0MmNRS21xTnozUUY1RkRtc09vZmFVSkd0ZVk5M0VURVhsVGxv?=
 =?utf-8?B?MTczSkx1TlFXY1Z3RDJ2YnM3OG5yQXdqbDdWUTh3bzcra0xZOTh4S3FzYlAr?=
 =?utf-8?B?MHlOSlBLODloNThmbjVqaWtZQW1Nd1l5WjVLWWczVUpZK3lsTndIMmtWQXpT?=
 =?utf-8?B?MHdlRGR1aWtVV2VLaWRJcTQwQ0NpYWpGRWZ4OU9EUFRrMFE1TWF6RFhHd1pr?=
 =?utf-8?B?cjZramRhTElZRFduazVYcjFLMlJBUjNrNjdkY3N6OGt2ZTlVUU1IY3htbk1B?=
 =?utf-8?B?TFFzN0tTSXhUR0NOVVVFYzF4SXlZYlFaQ29IRDhML2ZLMC9ZYlkwdkdFK1l2?=
 =?utf-8?B?STk4VEZDS2NyeUR5cEZ0UUh4TTdHdEplaWtvdnU4ejQ0bDlhQ2NLUHFCK3Z0?=
 =?utf-8?B?VGxzRTdFYjYyYWhYMmhHQTFLMVJmTksrVTlGRzZEYTlRMmZ5eGJ4ZHlKa1U3?=
 =?utf-8?B?ZEY3ZVZqdHpSNjROK0ZDTmw3NmtPajhPWlF5MjFQM2NJV05HTE13V3pyZ2Q0?=
 =?utf-8?B?ck1UVGxtbjNlZkc1TFJBQnJqdGt5ZUJVRTE3MitsR21qbVNLOUxHL2s5RFpn?=
 =?utf-8?B?MFo5amJxQkNnS2xVc0lyb3BGMTM5L0pHbEZHNTRmSXJjMFhIVGdHOTdidHpE?=
 =?utf-8?B?UEx0Y3JsSm5QV0szc0MyTENTM2NYUWRsNlUwWVRKbTd0MldCeGdVS01haXdk?=
 =?utf-8?B?d2hkRnJ0Q0dla2M2NFZwTldMY3k2OWN1R0cxQlcwbnR1Znh0OHFPTTNmaGJF?=
 =?utf-8?B?c1BHNHVwSGxvNEV0WkwvdHlweGhtWS9sdWNYNS9pS3BLWkFabEJvc1UyMlkz?=
 =?utf-8?B?ejBVdUxoWUcxTkN6TEMzZFpnN01FYVQrQkdMUnI2NCsraGp5eTU3Kzg3REFF?=
 =?utf-8?B?VWovdmx1SlNXMHFEY3BwNDZLSkdlL0tPdHdwbHhocEFLeVJBaEZOdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 669970f6-65ee-43a0-2211-08de73a70b40
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 13:17:21.8360 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nLM+DQohcpAg2nI3SnpZLVKvqEYo0deJDCRNGspFtzYdsOxIngLk0m+pwpbFWjarnT+68z3As/iKEbtNE9Q+0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6128
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
X-Spamd-Result: default: False [-1.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 629581877C4
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaW5vZCBHb3ZpbmRh
cGlsbGFpDQo+IFNlbnQ6IEZyaWRheSwgMjAgRmVicnVhcnkgMjAyNiAxOS4wOQ0KPiBUbzogaW50
ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnDQo+IENjOiBHb3ZpbmRhcGlsbGFpLCBWaW5vZCA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRl
bC5jb20+OyBTeXJqYWxhLCBWaWxsZSA8dmlsbGUuc3lyamFsYUBpbnRlbC5jb20+OyBTaGFua2Fy
LCBVbWENCj4gPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYyIDIv
Nl0gZHJtL2k5MTUvZGlzcGxheTogcmVtb3ZlIHRoZSB1c2FnZSBvZiBkZXZfcHJpdg0KPiANCj4g
UmVtb3ZlIHRoZSByZW1haW5pbmcgdXNhZ2Ugb2YgZGV2X3ByaXYgaW4gaW50ZWxfZmJkZXZfZmIu
YyBhbmQgdXNlIGk5MTUgaW5zdGVhZC4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8
bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbm9kIEdvdmluZGFw
aWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXZfZmIuYyB8IDEyICsrKysrKy0tLS0tLQ0K
PiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2X2Zi
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2X2ZiLmMNCj4gaW5k
ZXggYzMyMDJiYTE0MWM1Li5lNTI1MWVkMTU5NDggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXZfZmIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2X2ZiLmMNCj4gQEAgLTE5LDEyICsxOSwxMiBAQCB1
MzIgaW50ZWxfZmJkZXZfZmJfcGl0Y2hfYWxpZ24odTMyIHN0cmlkZSkNCj4gDQo+ICBzdHJ1Y3Qg
ZHJtX2dlbV9vYmplY3QgKmludGVsX2ZiZGV2X2ZiX2JvX2NyZWF0ZShzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZHJtLCBpbnQgc2l6ZSkgIHsNCj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPSB0b19pOTE1KGRybSk7DQo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0
b19pOTE1KGRybSk7DQo+ICAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsNCj4gDQo+
ICAJb2JqID0gRVJSX1BUUigtRU5PREVWKTsNCj4gLQlpZiAoSEFTX0xNRU0oZGV2X3ByaXYpKSB7
DQo+IC0JCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfbG1lbShkZXZfcHJpdiwgc2l6ZSwN
Cj4gKwlpZiAoSEFTX0xNRU0oaTkxNSkpIHsNCj4gKwkJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2Ny
ZWF0ZV9sbWVtKGk5MTUsIHNpemUsDQo+ICAJCQkJCQkgIEk5MTVfQk9fQUxMT0NfQ09OVElHVU9V
UyB8DQo+ICAJCQkJCQkgIEk5MTVfQk9fQUxMT0NfVVNFUik7DQo+ICAJfSBlbHNlIHsNCj4gQEAg
LTM1LDEwICszNSwxMCBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmludGVsX2ZiZGV2X2ZiX2Jv
X2NyZWF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZHJtLCBpbnQgc2l6ZQ0KPiAgCQkgKg0KPiAgCQkg
KiBBbHNvIHNraXAgc3RvbGVuIG9uIE1UTCBhcyBXYV8yMjAxODQ0NDA3NCBtaXRpZ2F0aW9uLg0K
PiAgCQkgKi8NCj4gLQkJaWYgKCFJU19NRVRFT1JMQUtFKGRldl9wcml2KSAmJiBzaXplICogMiA8
IGRldl9wcml2LT5kc20udXNhYmxlX3NpemUpDQo+IC0JCQlvYmogPSBpOTE1X2dlbV9vYmplY3Rf
Y3JlYXRlX3N0b2xlbihkZXZfcHJpdiwgc2l6ZSk7DQo+ICsJCWlmICghSVNfTUVURU9STEFLRShp
OTE1KSAmJiBzaXplICogMiA8IGk5MTUtPmRzbS51c2FibGVfc2l6ZSkNCj4gKwkJCW9iaiA9IGk5
MTVfZ2VtX29iamVjdF9jcmVhdGVfc3RvbGVuKGk5MTUsIHNpemUpOw0KPiAgCQlpZiAoSVNfRVJS
KG9iaikpDQo+IC0JCQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3NobWVtKGRldl9wcml2
LCBzaXplKTsNCj4gKwkJCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0oaTkxNSwg
c2l6ZSk7DQo+ICAJfQ0KPiANCj4gIAlpZiAoSVNfRVJSKG9iaikpIHsNCj4gLS0NCj4gMi40My4w
DQoNCg==
