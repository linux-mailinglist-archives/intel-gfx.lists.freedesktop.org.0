Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4234DBFFF7F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 10:40:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA32110E8E8;
	Thu, 23 Oct 2025 08:40:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FrXfhvPc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 685D110E8E3;
 Thu, 23 Oct 2025 08:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761208826; x=1792744826;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=skRfjTYgPsaFP0Z26lLG9X6YorWntUQK7B9CTrJxHYI=;
 b=FrXfhvPcphS0sEuy7LT6ioOJvTjVT45BGZt8KYmX4a12aozAvuIZje0a
 Q8Hd1tAKmBBZMVxLVnn+4L4ksMA1SZ0TT8E/PPfRCJUzmAMcQ4QckWVjA
 aO99XM2FwsiKLGqwVbu96tDeJbuThjxquK1iB24hSC5vBBK5J722z6V9A
 Ja0P4hHUqNjXV/b7TikFCKbK5cOmHauhkxmb1GhrxTiuqMtz8mx+IbQ51
 ESR8WaUOfcgDxe05KoeXGbzAttQCQ+iiLhto2zDb6z7eHsGwkJ0du/M+5
 7XDsJlw/h2L4XXB1SxO+lPyB3wZpsoMQ9nmgvQ9Kpx3kvYK3lDPSLjz1y w==;
X-CSE-ConnectionGUID: L742Q0lMRBOXEU/ZgOeURg==
X-CSE-MsgGUID: txIml0uuQxSX1nM6Fh/eBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67238052"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="67238052"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 01:40:26 -0700
X-CSE-ConnectionGUID: hTOofHi3SeyudK5nGMWDKw==
X-CSE-MsgGUID: spblVdHCSAilgUIkOWgmuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="184492542"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 01:40:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 01:40:21 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 23 Oct 2025 01:40:21 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.18) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 01:40:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z5+zRb8m7plfAP4MO7rfBybD52OTE1ARw5+wKhjGivHu4ejJXALNYHuahtoh0eSoEYC9MxxX8aSzi0Z1eXCKx6Nz2B6aY/L0+o3q7VyONC3KzB+gBlStvRNXdoGmj3bP0HgdS5ZuhJJmLkmtKLOyXyvBSAYYWTkgXQt0hdgPVSjMhCdbBbsD2DPkDEyRB/QlyCc6UrXqSZ9vNJAxZIFb1aD46jQszQHldlKbU94qdReN5rwkeS5HtKJSDre0vFhalk3j1Rd82IoYG1vQg+BwRxzulE9GQrW5d5gEzsrwqWmdB7YqG9OyJ4O7sPGGZfBNHAfegfPV9YJvBT0YZbkR7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jrHf2sjihNVoeT1tREJF0djo5Ib1N/SznfoV4cDyy98=;
 b=WIix+KoP33v6sW4WDF/eAH0ZPdXIeo4IM3q0kFjm8TSvvlOxoCu7ajr+VF/ROJkTMj3rlV++jko5k/z4weGmMF3nA1Ox5oz80uSJ8DBhqNMy6SlWIWet6eWNs+sGWjjceAIU6UhZGlRih3p3UdVkznVKurrVsyuoZ5H02gUDGChvdFWpiKbmECFWCPWe2psQgzwaXblIjTnmG31S/GMZHcMcu48N+1+ZfCjVeF9QibtXlpcS3p/OzK5Xmik9WRFedsUGGB36qIUq3txs89MWFcobDNj1vZ7b5ujB7Md0mIV7Kl0z5QjLGw4i3Ytt6lOvx9QK76bIWiRjPY/yTNF8qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by LV3PR11MB8529.namprd11.prod.outlook.com (2603:10b6:408:1b3::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Thu, 23 Oct
 2025 08:40:19 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.011; Thu, 23 Oct 2025
 08:40:19 +0000
Message-ID: <78c91ed0-54d1-44aa-946b-f1753206bd57@intel.com>
Date: Thu, 23 Oct 2025 14:10:12 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/25] drm/i915/ltphy: Program LT Phy Non-TBT PLL disable
 sequence
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-16-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251015040817.3431297-16-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0046.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:175::12) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|LV3PR11MB8529:EE_
X-MS-Office365-Filtering-Correlation-Id: 1884854a-597e-447e-45c8-08de120fcc4d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aGlFd3hCb0h4NTJXTU1uMVMxb0tQTHNaVm9NUjJLa3FRcnZtRFAweTRuY3lF?=
 =?utf-8?B?aTR0K0EwN3pFR1BJSzBVb1M4MFF1VzM1YWhhbjBZTmxtWEtGMHB3a3BFV0Fu?=
 =?utf-8?B?dE5RM3YyZHg2OGlkSjB6UDk2RVZEcloxR0dpbWxlTExhSUNoQkVPQ2IxRG5L?=
 =?utf-8?B?ZmVid3Z4WHA1cmpCR2dGSHR1NE5GTjN0aVBhYkRRUVdjVEpzQUdRR2lwVStW?=
 =?utf-8?B?eWhvbGw3TDJJRkQ0YVVzREQ5L1NSVmRGbUNUZDNMMjBIdllyVVFLUExBTElj?=
 =?utf-8?B?emlRMmc4cU15WW44V3dFeEFTK3J5R0ZHQzlUY1pxVThiQllXSnp2VWtGQlo3?=
 =?utf-8?B?WndWY3dneE9uWExjYmVPMmIwWXR3QVVKZHc4ckR6R2lpKytheEl3RUVrMkZ5?=
 =?utf-8?B?K0lpemxaejhjMnFYTFNyN3dDb1ZkSEwrWERFNGE1SWZlZkdLM3VodU1CbG9Y?=
 =?utf-8?B?dU1GZkhodnlaQlA0Zm0wNlNYQ3J2TnNyRjhxcE1va0kzTlZGSGRFN040TjBL?=
 =?utf-8?B?TkZuT1YrUkdDVXhuU1FCZjdMWFRCc1ZTcnp4Y1ZNN01CeEd1b0gycmtGMTNy?=
 =?utf-8?B?NThQUDFLMkx1Q1JIazVQbStmWDNpMVRjU1F3Tmt6Q1J2Y0dhYVpQWStHOGtC?=
 =?utf-8?B?ZFEyRVA1QXFCTVZoM0xGa003OWhDNTNhR0c0d1dnWEwvOS9tQ0RDVXJhRTB6?=
 =?utf-8?B?K1NGaTVPN081aGhNVTRXQkg0MlRCWFlyQUh4ZlhORGlheDNHa0Z6SVBmYlQw?=
 =?utf-8?B?M0V3OUZlL3FBek4yWVNCRlRQazVRL1pXRW1nc1h0MmhZdjMwa0ZSSWtJL21a?=
 =?utf-8?B?U0lhdFN5S1JENFhqRDdBdG5qUU5GUUViREFOOFVRbmRVRzVaMVN1YzFVN2VT?=
 =?utf-8?B?eCtCMk9rdkt3MU5TYml5blhCTUhUbHo3dmRqN2ZMNGtZeEkvcWRBRWRnQ2hp?=
 =?utf-8?B?TkFuKzkvVGFlYVltb1paRndUMEZmVG1xTmRFSzNuODVGOVBEcUEzUFZ2K0ZM?=
 =?utf-8?B?Y3orOFZkRkF1QnRrSWp6c2pmV1owU3ZqeGl2a2ZqSkY3WlJoUHNWTHo4Smox?=
 =?utf-8?B?NGFVUzUyNElCVXJNSzk4dkpIcjg3YlhCdGVJQjN4bGxHOEtWdUE5cUdKQ1Rw?=
 =?utf-8?B?Q2ZjQzBZMTFoRlk2VVZXREdQSWc2cFk0U29OaXBJazg1a1AyRE9wd0VuNURE?=
 =?utf-8?B?MVVSSUlKRFgwWGphQ0RlY0ZXL1FLMGxGNE53dmZ6T09JdkM3NTBRYVk5WXNS?=
 =?utf-8?B?THBKaXB4cjkrN3l0WW5Vckdlb2pTRUo1ajhtcG5NRlhwSjZ5Y0VaN1VBYnFo?=
 =?utf-8?B?TndKUmNrUmYrYkhyMjlCSFRTRkhreW1MQ0xqaGMvVHFEL2FMbmtUakZrVytm?=
 =?utf-8?B?UVpNMU9vQjFNc3B3d2xDU1ZLOG1tWm1EZnZDYUFFMTlzUzRwUXQzY3JJbFZj?=
 =?utf-8?B?N2kycjZOeEV1US82NjRudk4xbVE5UlQ4cFN3Um9BYnN1YndHa295NVRQR0ky?=
 =?utf-8?B?MEl5V0V6eE9pUjdhMnNuWDVLQ3FPaXFMR0VHZE9NLzZ3TTk5NnQwZ2RmR2E2?=
 =?utf-8?B?czh4US96NzU2WGpTeDNBd0h3TGYxcmxxNW1tMjJpT0VlZE8xcFE1MzQzbUgv?=
 =?utf-8?B?QkNYdnNNNEp6azFZWDRVYnVyZnNETTYxMWhKbGZkLzMydExXamtNcGp2MHU1?=
 =?utf-8?B?Y0FXYU9LUjZXeFQrN0h3WUN0YmJkekpNN1Z6ZlBGWk5ES3J1RzJDUk5DRmtl?=
 =?utf-8?B?QktlWDZsTStuQUZNanpFSmtnYVVtb0tKeXJ5RFlYVG9ocWsweGNhd3JIbWJC?=
 =?utf-8?B?eDF5Z0pPSWxCcldIemU3ZkZLaTY2ZGwvUW9lV2VqZXRMVEM1WDIzTWdCcFdC?=
 =?utf-8?B?VHF2VHBWUytKTkZkZ1FlQkJXSldQMmhRWlhub0xBb2xYZ3ErNkpCYkdsd3Iw?=
 =?utf-8?Q?712quTeKHxC/qPmiHayRB5/t3D+nrT3u?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a0F4OCtJZ3lCOVZHNDV0M1oralJJeVU4TFI3eU5WY3NzelpwdHBzbHlKUkxO?=
 =?utf-8?B?YjNSc0c5dnpXdmN5ODB5QkF4blZDdjRvakNJayttZm13RFlqbDRUcVR3NTVE?=
 =?utf-8?B?SzZoNTVEZDBscmRlUEF3ZGIvczhPa3ZPKytRTGJVVExzdzdsMFd0NlVHb3BE?=
 =?utf-8?B?ZDZvUVBtSkpVdnFLOGRtTjhQY2VEMGo5YVBoaUlVVFNBQWpHV2NBWEgrOXlX?=
 =?utf-8?B?OVFNdjEvWk9ISHJDZHZZeHFXaUdoQjg0UUJtK2RhcUVaWXdwb1F5d1JQWU5Y?=
 =?utf-8?B?S1h1Tjd0VlU2NDBOK1Y0TkhFNXAxd0o3dGl2SFVzOGNRSGVveCtCV3AvcUhI?=
 =?utf-8?B?TkNyRjAzZVVBOFhlMWNXOTh0R2pSVkp2YmJUWnlSeHA2YTdTZm1KRUlaUmw4?=
 =?utf-8?B?WVNhbzJSUnR5REJUYVlqWUdjQWpqbXNFMjYxYXhuUnQ1Rnd3dlFHNGxRMjNj?=
 =?utf-8?B?dmhYNzBycVJNYlY2Q3RBY1I5TTA4WUp5RXBFOExvSjhCQWZEMWgzSkJiRExr?=
 =?utf-8?B?eHMzK2gycUs5b2U0dytoRnlMSVJZd21tejZmZFVxOWRkTUJFZ1BFR2hhOERo?=
 =?utf-8?B?OW1OeHFYcnk0Y2ltWVE5MTFwemtWWCszUHBpRG9FVzU2K1BYa1IvZVFPYzk0?=
 =?utf-8?B?aEx0ZUtpWDdnZzRRdFlRMW44QmJTVG0zVWFxVlkrKzB0dVpWMU1CVXE4d0pj?=
 =?utf-8?B?UC8wZnkvOHBzR1Q1Qi8wa2xzR3VtckdhMFVzdHI0QjR5eXVPNHRSSngweU02?=
 =?utf-8?B?eCtpVWRxQ3F0dFRTVWxVTWhlaEp5QTR1VnJya3U0WER5TmJjMndJM0VJOHd2?=
 =?utf-8?B?OHVMOVJtQXovYWhwZ2lQMExjbGhnWWI3NFRrSzNRaDBTUE5mdkVIWjlrU1o4?=
 =?utf-8?B?U3lEQk9PbXZEK3JuTmF1MW9JMVJHUnB3MVNLWEViY3l5Tmd2UkRYdmZuTnJo?=
 =?utf-8?B?bnZjbmx0cDZ5MHJnTmVicGJIVWVjTVpGRWVEUG1RcGpWZXUwSzBQOVdGRGlL?=
 =?utf-8?B?cjJEUjNoR1F5c1NLUzFlaWNoYWtqaTBubU5xM01JU3pnd0F1aktDS1kwZ0tz?=
 =?utf-8?B?ZjA1S0MrTkl3enFwYnlhelhJYUxqeUUyNFJ6RHJHaTBMbHJkSmZVZ0FxVEsz?=
 =?utf-8?B?c1FaMmlvRU1kbUduSysvY3dXK3cxTStOcS92QUY5ZFA0ZkZIMlZVRy9KYS9C?=
 =?utf-8?B?YTVQRjJwdVlqQm80dGtRcXNra1A1TktEQ282U0ozQTM4KytwQzZJa09pUW5N?=
 =?utf-8?B?b3B4UHhvWEtrYmdIcjBRYWhUMTVSQzRDRXdJQlE0VjI4ZjZmV0M2ZXgrUXgr?=
 =?utf-8?B?TnYwUFQvM0xEVk5mZ2ZQamlGTnlLRjZOMG9PSERCYkJKbjRBZk0vS3dRdzJ1?=
 =?utf-8?B?SUhkRWdIWlBCRlBYK1cwOEZKTmdaWVRFbFQzS0YzT2prczZxekRlbGlHL2tJ?=
 =?utf-8?B?NHlCRkZGUGFnRDJaNzhpK3YzNlJDbXhzM1Y4UWhNQlVrcm9QM0pWU0FISnNY?=
 =?utf-8?B?RmoxUU5qbWdOOGM3NTkxV042emtIT3ZnSU1LRGpRUlRhd0thK1RMOGxhU2JG?=
 =?utf-8?B?cjlCVUkvNWNzQ2ZOamNFVUNIb0dNYi9EeW0zeVJWOVJadHREekpWVW1xWUtY?=
 =?utf-8?B?OEJ4MXN0czJwMm4wTjFPYzNRNWZLNzA2MXZtSDBKR1FMZmpKWHlGUGtvV08y?=
 =?utf-8?B?VllXWkIwTXA1L29uMy9TZ3hYbjJ6RnppRTFSaWpUQ0Z5eHhGdlpoR3Y2YzBi?=
 =?utf-8?B?YkxpNnVBZ2x1QUMvTHRabkFqdHJjY0VsZjJzV0FMZVRqaGsycDczVGJZOE5y?=
 =?utf-8?B?R2t2OUwwR0JNWGpqMkxUc0haNEVvYlRjL2tPNStraU9Da2IzdThYZXZaZDR3?=
 =?utf-8?B?eElaL3VsdVZ1a3FBdTBuNDlnQmd6NWFsN2xaYWxmY1NrQWVMWm5WSTN0MGZz?=
 =?utf-8?B?blN4dER2a2tjNCtXdWVTNS9UMFpiUXhjaTVTTmFHZFNZZmxwdUNySUZVWVh6?=
 =?utf-8?B?RGRFbWIxYlVubWdqa0h3OXkvVEEvUitnb3FoWTZ1eGVSTHI5VnR1RDRoM3BS?=
 =?utf-8?B?ZW1UckJMeUQrVmpVNG40b3ZwU1RQNElTUGIyaGtzeEVZbHkvZG45QUJYSEhj?=
 =?utf-8?B?eUY0VTZicitqK3RDWjRuQ0xFdENlcnRZTGRScjM1VEJnZWYvR3lwR21uSzVI?=
 =?utf-8?B?cEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1884854a-597e-447e-45c8-08de120fcc4d
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2025 08:40:19.8170 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9dnkv3/hAVanZhcJREETNFa+te7/3yieNBaVQVYoNCxXcHqxQOhXGvHdxcLx3C8LjVRix8NQg1mBj7gw6kVxHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8529
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


On 15-10-2025 09:38, Suraj Kandpal wrote:
> Program in the steps for Non TBT PLL disable sequence.
> The whole function can be defined in one shot since most of
> prequiste functions are already coded in.
>
> Bspec: 74492
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

> ---
>   drivers/gpu/drm/i915/display/intel_lt_phy.c   | 78 +++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_lt_phy.h   |  1 +
>   .../gpu/drm/i915/display/intel_lt_phy_regs.h  |  1 +
>   3 files changed, 80 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 9e4868a15e7d..747cce4a484a 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1614,3 +1614,81 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   
>   	intel_lt_phy_transaction_end(encoder, wakeref);
>   }
> +
> +void intel_lt_phy_pll_disable(struct intel_encoder *encoder)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	enum phy phy = intel_encoder_to_phy(encoder);
> +	enum port port = encoder->port;
> +	intel_wakeref_t wakeref;
> +	u8 owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
> +	u32 lane_pipe_reset = owned_lane_mask == INTEL_LT_PHY_BOTH_LANES
> +				? (XELPDP_LANE_PIPE_RESET(0) |
> +				   XELPDP_LANE_PIPE_RESET(1))
> +				: XELPDP_LANE_PIPE_RESET(0);
> +	u32 lane_phy_current_status = owned_lane_mask == INTEL_LT_PHY_BOTH_LANES
> +					? (XELPDP_LANE_PHY_CURRENT_STATUS(0) |
> +					   XELPDP_LANE_PHY_CURRENT_STATUS(1))
> +					: XELPDP_LANE_PHY_CURRENT_STATUS(0);
> +	u32 lane_phy_pulse_status = owned_lane_mask == INTEL_LT_PHY_BOTH_LANES
> +					? (XE3PLPDP_LANE_PHY_PULSE_STATUS(0) |
> +					   XE3PLPDP_LANE_PHY_PULSE_STATUS(1))
> +					: XE3PLPDP_LANE_PHY_PULSE_STATUS(0);
> +
> +	wakeref = intel_lt_phy_transaction_begin(encoder);
> +
> +	/* 1. Clear PORT_BUF_CTL2 [PHY Pulse Status]. */
> +	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
> +		     lane_phy_pulse_status,
> +		     lane_phy_pulse_status);
> +
> +	/* 2. Set PORT_BUF_CTL2<port> Lane<PHY Lanes Owned> Pipe Reset to 1. */
> +	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_pipe_reset,
> +		     lane_pipe_reset);
> +
> +	/* 3. Poll for PORT_BUF_CTL2<port> Lane<PHY Lanes Owned> PHY Current Status == 1. */
> +	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
> +				 lane_phy_current_status,
> +				 lane_phy_current_status,
> +				 XE3PLPD_RESET_START_LATENCY_US, 0, NULL))
> +		drm_warn(display->drm,
> +			 "PHY %c failed to reset Lane after %dms.\n",
> +			 phy_name(phy), XE3PLPD_RESET_START_LATENCY_US);
> +
> +	/* 4. Clear for PHY pulse status on owned PHY lanes. */
> +	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
> +		     lane_phy_pulse_status,
> +		     lane_phy_pulse_status);
> +
> +	/*
> +	 * 5. Follow the Display Voltage Frequency Switching -
> +	 * Sequence Before Frequency Change. We handle this step in bxt_set_cdclk().
> +	 */
> +	/* 6. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 0. */
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
> +		     XELPDP_LANE_PCLK_PLL_REQUEST(0), 0);
> +
> +	/* 7. Program DDI_CLK_VALFREQ to 0. */
> +	intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), 0);
> +
> +	/* 8. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 0. */
> +	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
> +				 XELPDP_LANE_PCLK_PLL_ACK(0), 0,
> +				 XE3PLPD_MACCLK_TURNOFF_LATENCY_US, 0, NULL))
> +		drm_warn(display->drm, "PHY %c PLL MacCLK Ack deassertion Timeout after %dus.\n",
> +			 phy_name(phy), XE3PLPD_MACCLK_TURNOFF_LATENCY_US);
> +
> +	/*
> +	 *  9. Follow the Display Voltage Frequency Switching -
> +	 *  Sequence After Frequency Change. We handle this step in bxt_set_cdclk().
> +	 */
> +	/* 10. Program PORT_CLOCK_CTL register to disable and gate clocks. */
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
> +		     XELPDP_DDI_CLOCK_SELECT_MASK(display) | XELPDP_FORWARD_CLOCK_UNGATE, 0);
> +
> +	/* 11. Program PORT_BUF_CTL5[MacCLK Reset_0] = 1 to assert MacCLK reset. */
> +	intel_de_rmw(display, XE3PLPD_PORT_BUF_CTL5(port),
> +		     XE3PLPD_MACCLK_RESET_0, XE3PLPD_MACCLK_RESET_0);
> +
> +	intel_lt_phy_transaction_end(encoder, wakeref);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index 5b4e0d9c940f..499091e04e82 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -14,6 +14,7 @@ struct intel_lt_phy_pll_state;
>   
>   void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   			     const struct intel_crtc_state *crtc_state);
> +void intel_lt_phy_pll_disable(struct intel_encoder *encoder);
>   int
>   intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
>   			    struct intel_encoder *encoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> index 283ee0c55724..c641cc957f1b 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> @@ -15,6 +15,7 @@
>   #define XE3PLPD_MACCLK_TURNOFF_LATENCY_US	1
>   #define XE3PLPD_RATE_CALIB_DONE_LATENCY_US	50
>   #define XE3PLPD_RESET_START_LATENCY_US	10
> +#define XE3PLPD_PWRDN_TO_RDY_LATENCY_US	4
>   #define XE3PLPD_RESET_END_LATENCY_US	200
>   
>   /* LT Phy MAC Register */
