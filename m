Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46EA2A95D69
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Apr 2025 07:38:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28B7A10E4F5;
	Tue, 22 Apr 2025 05:38:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SIyzAPyI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D21210E0D6;
 Tue, 22 Apr 2025 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745300313; x=1776836313;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=JqJVrDg5mSVNMuHJSioLT6CHABESlTcuSktBhHCFUvg=;
 b=SIyzAPyI8w+Ns9Ke/TnZsHUikn2Fogvygjo7vsSroQFNTwlF1uoU4Vv+
 +yWNHhi4WaakMvGyE3iL9klETz7qE7Bi75C86ODogI6jIyNAeHtKEIq/u
 DknOcsMpNW/xZCyEiLuRc3IW835ToxRMJ/twrk1QZ/itBCzgdUQDvDFKS
 q0igpqllIvv6DSffwYa/dr9cyF8Fjhgtib9ytH1cwt9Liwva8sJroaQpF
 ByEoH6qBQPuuAK0J0d6G/HvGdKSZ/nIwtjcaCbAg9AAO4xgJUdkD0rABn
 vEdM/GH1C1sUigWcoGWOKmgCBZVafdSC56tBYH2BQDGmYQBzDq4SVKtl/ Q==;
X-CSE-ConnectionGUID: wuLOxvnvRHSYlL0Ro5iYYg==
X-CSE-MsgGUID: ajjPBBaaSSmKpFBev4tWzw==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="47024384"
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="47024384"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 22:38:33 -0700
X-CSE-ConnectionGUID: +hQynYvVR7Kd4cLHthmGeA==
X-CSE-MsgGUID: tBKBjZonTcm7VC+PNb9qRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="132792008"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 22:38:32 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 21 Apr 2025 22:38:32 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 21 Apr 2025 22:38:32 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 21 Apr 2025 22:38:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FKf3/nZUAHniweAWMn83olO0kV96GT0uhs6oroshkUQGqlExF3Bn4fNwZ3a/Nb/10rMyruRDp/QolFAh2LzGzQ7AI+XoWmjXc6OonFo/Zo9wei31sN7G/P2XHEnGNtmZ3tGb+rwb9Gg/T43mZ7t6PeJRvYfGvFvd0hpy2k8tu1oS9XhbT4KtBOu86PadSdF3ACuY12tn5d8bmijgCY2YugH26jnFyUIoG8lyLTfpVomehigxN0VB81rJ4iNJrCBlDka3aqi4DwD7bHTGuLCYgcezRdLNAQTk7FHf0iUyZYkjkOwSpYmifmc57tAn9HuhPfjtWkzqn13rzt0m1kvR6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JqJVrDg5mSVNMuHJSioLT6CHABESlTcuSktBhHCFUvg=;
 b=LWsW3f7JVQLPLzLyjCh2Y9oJN87YLjTFGHMlQJkTkh6KxE02TzwOBmmzzGy09g38T+mjNAXiVQGXhR2mJ5/R/Kr083lvOUzkGRhxYOhDBo0q25576iIGCJ74vv+VHJr3oHX4RezTkYaR9kgs8juXnZNfBDwKtYwWh9qi4lW38BWwTvZCoMy0v11XDsJA5N7tK4uHvRh0vS7XXNTf/uRxbwOEzrtxGiXosfhNRRhYeUNywGtkYYNX6xNdJmBvqWz2ahoLjauqVf80zGw9Qgr501uJFKBRD8D1cLFRYZqApA1/m55yUFpJ2quXkShAUSTA62iybO0ICedBIGS9i6veIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA0PR11MB8380.namprd11.prod.outlook.com (2603:10b6:208:485::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.33; Tue, 22 Apr
 2025 05:38:24 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%3]) with mapi id 15.20.8632.030; Tue, 22 Apr 2025
 05:38:24 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Ensure enough lines between delayed
 VBlank and VBlank
Thread-Topic: [PATCH] drm/i915/display: Ensure enough lines between delayed
 VBlank and VBlank
Thread-Index: AQHbr8XzMVI1uTc4LkaP2h0fsXKVe7OsuFyAgAJq8ICAAAPNgIAACuGA
Date: Tue, 22 Apr 2025 05:38:24 +0000
Message-ID: <7bf5d07aa39770d9136da6e6f603622bfbc2ece1.camel@intel.com>
References: <20250417182356.169593-1-jouni.hogander@intel.com>
 <IA0PR11MB7307ECC591508B0B1B8AB50BBAB92@IA0PR11MB7307.namprd11.prod.outlook.com>
 <c33fae44e17f35638cc5129d19d8e8124d1ec1dd.camel@intel.com>
 <IA0PR11MB730782CA0A0EC63ADBECD1ADBABB2@IA0PR11MB7307.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB730782CA0A0EC63ADBECD1ADBABB2@IA0PR11MB7307.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA0PR11MB8380:EE_
x-ms-office365-filtering-correlation-id: f5ad3f4a-b256-44f6-b891-08dd815fe66d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?ZTByeWZhV0g0VHB0VFN6L3VFNzNNRkJEaW5vNzZsM2xkVnRpY3IySmF0ZDlp?=
 =?utf-8?B?QjQ4ZmlVcFRmY3M3Yit4MGdicGdUSFdWaVZxcWNNNGE1WE51ODRMR1BET0tS?=
 =?utf-8?B?cVh6WVhWUFlRKzk2UlhESCtkZjZiaUZEWFZKNDhpUEpGUVUxZFVzVWJoWTl6?=
 =?utf-8?B?a044V3JORW1pWnRYbnBnTnJ5T3ROSWJEU29oeUxYamNCbFBEd2VoSk52YjJ5?=
 =?utf-8?B?QUVFaTl5NXJqbGNubG8rb1AvTDdSYnhrZkQ5bUE1QUlTMk8wNEx2em5GZHd2?=
 =?utf-8?B?d2haeExUME5tNnVQSVRiT2RxVE1wMldFUWFwcy8rNTkxWjFhWXBzMmV6R252?=
 =?utf-8?B?QkZXQjNrQjMrdTBMWXpOQ0I3MWhRTitiZUxYYUROR1JhcEdTdmFwalJOYXJk?=
 =?utf-8?B?bHlqaVZVNjdVWnhEL0pNSExxeE9HbXhGL0dsMWpxZWhPaEpoU2JWNDJCSzNU?=
 =?utf-8?B?SVh0MmJDMlQ2Ry84UUdydno4SnR1QnphN0lkRFpGMVlrU0xTS0JlcFB3SUY4?=
 =?utf-8?B?YkUxdGQwZ3Z0TkRaQmJnK1RmcG5KYW1tWHZvYS93VmowaEVRZXVycTJFaHp1?=
 =?utf-8?B?Uk5QU2ZxYlZNTFVGNDhtVk9tQ0xJZ1lNZThrbFR4TmRqVUI3RjlwMFZQOVZT?=
 =?utf-8?B?Z3RLN0VjZnpUeU94L2ZDOTB5SkU1Z2k0d3JoKzJsRkppOWtld2orSHZtdDky?=
 =?utf-8?B?enJDVmJuVUJUTFo1UjBoWjdZdC9rRTN4YURsUS9nVVcvVlY4R2VqUkw0TjR6?=
 =?utf-8?B?dEQxYjV3V2pORksvY0lXb20yQ1pTTWw0Z3Z0U0lmNklRSWRFMElySnowTWdl?=
 =?utf-8?B?U2N3NWZnckdBT080RDJHdFZ2bXJnMHJqMUFBV2xWdzNRcExWeTQ1QzR0Tjc3?=
 =?utf-8?B?aHB5T0hCREZqNVAvYWVMN25hZVVXc2wzaU9vN012MVZYUzBtZEdKOFVMeURn?=
 =?utf-8?B?Q2FuWXBjdXFuUU1NejZXZ2YwVHZDVXlGL1pwUzk0QW80WGFMaXhCR2dVblZI?=
 =?utf-8?B?MW1wUXZjbmtGRW5mWm50S0NKdkYwblFrSVpDUVlSTWFHMjMzYXZJVk5FMGQ5?=
 =?utf-8?B?MlRPL1gxQlhOS1ROY1lUazE3aURSaDNHUmtkNVREYUsyR1RkZ3YxZ2Vnb3lJ?=
 =?utf-8?B?cnhwdzBZNDFOb1EwbVJNZStDNmIvdUdDcnJicHJqdURUTVNBOHIvVzFsTlFt?=
 =?utf-8?B?Wjl6NWJob0x5a3BFM3E4Q3VMRU1vWGtFbmlNaG1zUVBJakNnamZ0TjJkaXRL?=
 =?utf-8?B?ak1oeGxJdmFycUVtdCs1RGl3dG1pc3JIL2k0RzQxYnVlenpPSUozUU1vTHI1?=
 =?utf-8?B?QjFqcXoxY0ZuV285ak81eEwxQURDYnRjLyt1TWxaNmFpelZNbFNpdU52L0Vy?=
 =?utf-8?B?TTlGYUV5OFFpS3lkdzJVR2Zxb3h4SEdXYlU2TVpCbS8zTTdKL2tBODVNSVpC?=
 =?utf-8?B?WmUrVjdCenp5NVlSR0I1RGwxTzNvWVY2dmZqSFRxU0tPZGs4ZzVmK2dWQ05r?=
 =?utf-8?B?S1ZSTi9EenU5YnRXdUlqT2pDOVJQeWY2cUNnRHRlWFkvR3o3dlNXZjkxUjlD?=
 =?utf-8?B?UHJ6ZWFIVjVMZmJVTGlJWFlUTzgvSFJxQXFYKy9rU3FiWjUwUmV1V0N5cW5J?=
 =?utf-8?B?cjhVd3RsWkg1OFhtSGhXV3NSSWwvQWtDbHZjR21seHZtREZBRzZqUXhJSkRB?=
 =?utf-8?B?dFllSWFoS0ZOK2dPWkpXRnFXS0tCUy9XWTQ2bjYyRHVVSll4WGcwcGxqNDR4?=
 =?utf-8?B?KytqZ1JHV2pCY0NzUkRtbUs4dkhEd2hLN1UzK0c1N3RwWFlIMGJwVDM3dnd1?=
 =?utf-8?B?ajlvYmUrK0NRY2ZnQ0tkMUhEeURiUEVSNElxLzBuRERRUkdVbE9EdEUxZWd1?=
 =?utf-8?B?RHU4S3dmek9EcUFEVE45bjY3dlZvZCtsODhCR0hraXVia1Q1M2JMa3k3WlRo?=
 =?utf-8?B?VXUyN0tacU9kU2YxUGZLM29ROGRrOWFCQU5IOTkrR1VGeE1ibStCWUI3SVFM?=
 =?utf-8?Q?YexbqKKDHflzTNSEiJMkDhJOBagI+s=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dUtwNUk3TnpvdEwvTDhnOGVxdWFPeWdTTHQvM2NvSzB6MUhkaGlPSi9EbHlB?=
 =?utf-8?B?UUVGNEMxc3F4VTV2N25vK3hETXFDdUdqVHAySXNRVC8rbUkwNWhOTkcybHZw?=
 =?utf-8?B?VVAwNDEydjlaSzRST0Y0enVwc2E5bG9lME9HSVc5eU5GbGk5S2VsOXZFRzBt?=
 =?utf-8?B?TU9TVll6eTBpYURlT1E2aVpiZkplMnRxZTNwTlRreEprYTVreVJkblZSZkpI?=
 =?utf-8?B?b0hTb1VHK01OSlFxV2JxZFBIaENqcVJBVStEMWpQQ3d5c3NmWlc3bTJDeXBD?=
 =?utf-8?B?U1JMZ0dSbnU2Q0YvTURTZDR5MHVKL0htZC9XUHZiQzZpM2xxdjBLeUE5TCs5?=
 =?utf-8?B?SWdZNHdtTEVkVDJmRlZxbnErLzNHa25iQXNKVjhya0VqNUdTZlZTdVhPaGNS?=
 =?utf-8?B?Z2F0T3JuRzJFbCtoNzlQeU9TbnFnTGFuMlVwRkhFMDdONm5LOXd2YmttVDdP?=
 =?utf-8?B?UmxPaGpOTnNLL3E5UC84SnZUdDNOQWhCZEhaN2E5ZExOSyttRXRPSFdNSmox?=
 =?utf-8?B?MlA0RURtaFcyRk1hbjZUdjRWREhsVXhYQ2ZPOWxpdytjNUNDQ2tpNlUwZDU4?=
 =?utf-8?B?MkhoUGtjdERUYks4WFBkanNqb1dJbDR5dWxJZzJjdzNDaElTeGQ2R3JZRzZh?=
 =?utf-8?B?V29seUNwY2I0ZFFYNkxydGhLWDRjcWM1SmZqdEpFWjlNbVBmUjBPdGhaUVZu?=
 =?utf-8?B?M2ZSNlZ2aDNZYmdQZWJKb295YitJQytydVc1RGxiaFdEdzhoT3hMZDk1TGcv?=
 =?utf-8?B?djc1NGJnQTBGcHJ5TlhMeXd2SElrYTcrRGZVSnM3YmxQUkJMZ05Zay9OWExP?=
 =?utf-8?B?L2RhbmlUamVzUkZVYXFiZzd1QmFwckU5QW9PZ2FNaEJLRHJTcVNwVHV0dS9B?=
 =?utf-8?B?akw2TmRBWFFFREdwbUduQ0h6RE1LdEoyRk9QaGNrSmpzdkFVNnZnK3pSaFFF?=
 =?utf-8?B?QTJQRjM1U3F4WDBBaEsrWlNTMFRibm9VTEpqVm96MDJKRi9KWUpoeFp2VWY2?=
 =?utf-8?B?aklCZUYrQ0tOejJqdnlJazR0N0RsVmRiMjlGd0NPL2lVRkd3RE5zMUplY3I4?=
 =?utf-8?B?L0ZsWlIvRjluSEpHU29FN3h6bm53cjhxK043NDUyR3NwSklObnFtUkM2T1Vo?=
 =?utf-8?B?Yk9EcnlMVkJLM2J0cmZWVVVrajNNcTMzK3NodzM0bkRBdWRiTFdRR1R1YUVh?=
 =?utf-8?B?TzM0b21WOXZhc2ovS2xVZ2h0NkdSYU1FNFVVRit4bWViRnp3NXRzNU1BdkNO?=
 =?utf-8?B?YmRMdWx5cGh0TGtWM2V5NTJZQlk4WC9aTms2ckU0K01VVi8xQU9sTHRkYmJS?=
 =?utf-8?B?OGMwZ2F6cHlBemNOZUM1WjduQyszSHk0V3NzRzk3OUVpdnpSZkVNYWswNjhh?=
 =?utf-8?B?MHRsY2REblpoekgyRXFnZkh5ZllSREgzOUxDYmdUU3E3SXhHZUpVK1ZkM2VL?=
 =?utf-8?B?eDVPTU5SNGN6Zktzc0NlWEFsbFdMMjRNeVhzdnJBRVVYMzA5L3VuRVRQekJs?=
 =?utf-8?B?NXQzQ2RyeWhBcmh3QnlvTFRURTBTUmEzT29wdkRkcGMwblZMcHBpTUNwWUdW?=
 =?utf-8?B?a2Vob1NUNjlNMkpuU012VDZ2YVVhT3Q4Qk5PV3BxSC9CQXA3YXk4bm85TFFq?=
 =?utf-8?B?WmQvNW9LRU1Uc3ZEbHdJZGppS0t0SHNJWC9hS2MzUEppTlBBUURsMmNuQ0c2?=
 =?utf-8?B?VzFyOTZJUjUxM2dvYzh1b3NFMlZ6djBJbVFDWjV1TlFSVjgzUFlicFVZUUha?=
 =?utf-8?B?Z2xGazI3MWVuekFKY3Z5NmFmL1I0OGtTMktPcWFEeDQ3T1hJdWFDeUZLSldz?=
 =?utf-8?B?SzBuRlU4cXBXTmVWU08rMERnMnk0MDNoSDZjM3ptZlZHcExDWGphbnRjWEQx?=
 =?utf-8?B?bjd2dkozV3FRNGkvTVozS0syUUZGNXVCb2U4THZrVElwb0IwM1Y2aTNrWnAw?=
 =?utf-8?B?Mk9jdk9tUlRCaVllZTFCZXUyaFBMUXlLSlFjM3dRVGcwMmlZK3ViMW12eVpz?=
 =?utf-8?B?M3JsSWU1U0FidW5YZ3VyYTBhenk5QnVCSTlkbjI0M202WFJUU3F3SnVuQ096?=
 =?utf-8?B?RjlGelkzamxKMWRVaGVGOU42R2dEdlFjRXpTb21pVEVFZ2dkbHMyWHFaV0VG?=
 =?utf-8?B?SUxYVzFBb0RRZVBHOWhBTWZwZnJteWxHMnF1UXV4cGVBd25jTjREMGtjNDJt?=
 =?utf-8?B?VnhTTXlhemZZMkxxeGNHUGlaRWMrdWpmRDl5ZktyZ3lCZUFQSnFoRml1Zy8w?=
 =?utf-8?B?cHBHcGduZHZrRkRibkRxWGRTTVZBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4B20EAFA4F944E498ABC93ED7891E1CE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5ad3f4a-b256-44f6-b891-08dd815fe66d
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2025 05:38:24.4154 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VBznI2RoJD4gdDoCmA2vVOiLpYfeNp/MBfEnvSs/ERDf30+z6h9PZEtcd16GzCnl0MuLuyiIgn84+ckBJGDvg5B62udqc8dELsyKZUPZBQg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8380
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

T24gVHVlLCAyMDI1LTA0LTIyIGF0IDA0OjU5ICswMDAwLCBNdXJ0aHksIEFydW4gUiB3cm90ZToN
Cj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IEhvZ2FuZGVyLCBKb3Vu
aSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IFNlbnQ6IFR1ZXNkYXksIEFwcmlsIDIy
LCAyMDI1IDEwOjE2IEFNDQo+ID4gVG86IE11cnRoeSwgQXJ1biBSIDxhcnVuLnIubXVydGh5QGlu
dGVsLmNvbT47DQo+ID4gaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOw0KPiA+IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBTdWJqZWN0OiBSZTogW1BBVENIXSBkcm0v
aTkxNS9kaXNwbGF5OiBFbnN1cmUgZW5vdWdoIGxpbmVzIGJldHdlZW4NCj4gPiBkZWxheWVkDQo+
ID4gVkJsYW5rIGFuZCBWQmxhbmsNCj4gPiANCj4gPiBPbiBTdW4sIDIwMjUtMDQtMjAgYXQgMTU6
NTAgKzAwMDAsIE11cnRoeSwgQXJ1biBSIHdyb3RlOg0KPiA+ID4gPiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQ0KPiA+ID4gPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZz4gT24NCj4gPiA+ID4gQmVoYWxmDQo+ID4gPiA+IE9mIEpvdW5p
IEjDtmdhbmRlcg0KPiA+ID4gPiBTZW50OiBUaHVyc2RheSwgQXByaWwgMTcsIDIwMjUgMTE6NTQg
UE0NCj4gPiA+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7DQo+ID4gPiA+
IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gPiBDYzogSG9nYW5kZXIsIEpv
dW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiA+IFN1YmplY3Q6IFtQQVRDSF0g
ZHJtL2k5MTUvZGlzcGxheTogRW5zdXJlIGVub3VnaCBsaW5lcyBiZXR3ZWVuDQo+ID4gPiA+IGRl
bGF5ZWQgVkJsYW5rIGFuZCBWQmxhbmsNCj4gPiA+ID4gDQo+ID4gPiA+IFRvIGRldGVybWluaXN0
aWNhbGx5IGNhcHR1cmUgdGhlIHRyYW5zaXRpb24gb2YgdGhlIHN0YXRlDQo+ID4gPiA+IG1hY2hp
bmUNCj4gPiA+ID4gZ29pbmcgZnJvbSBTUkRPRkZBQ0sgdG8gSURMRSwgdGhlIGRlbGF5ZWQgVi4g
Qmxhbmsgc2hvdWxkIGJlIGF0DQo+ID4gPiA+IGxlYXN0IG9uZSBsaW5lIGFmdGVyIHRoZSBub24t
ZGVsYXllZCBWLiBCbGFuay4NCj4gPiA+ID4gDQo+ID4gPiA+IEVuc3VyZSB0aGlzIGJ5IGZvbGxv
d2luZyBpbnN0cnVjdGlvbnMgZnJvbSBCc3BlYy4NCj4gPiA+ID4gDQo+ID4gPiA+IEJzcGVjOiA2
OTg5Nw0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2Fu
ZGVyQGludGVsLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxMSArKysrKysrKysrLQ0KPiA+ID4gPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmPCoMKgwqDCoCB8IDE4DQo+ID4g
PiA+ICsrKysrKysrKysrKysrKystLQ0KPiA+ID4gPiDCoDIgZmlsZXMgY2hhbmdlZCwgMjYgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gPiA+ID4gDQo+ID4gPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4gPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiA+IGlu
ZGV4IGRiNTI0ZDAxZTU3NGQuLjk0MTU2ZWZhNWFhOTMgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiA+IEBA
IC0yNzQ3LDkgKzI3NDcsMTggQEAgc3RhdGljIHZvaWQNCj4gPiA+ID4gaW50ZWxfc2V0X3RyYW5z
Y29kZXJfdGltaW5nc19scnIoY29uc3QNCj4gPiA+ID4gc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGMNCj4gPiA+ID4gwqAJfQ0KPiA+ID4gPiANCj4gPiA+ID4gwqAJaWYgKERJU1BMQVlfVkVS
KGRpc3BsYXkpID49IDEzKSB7DQo+ID4gPiBDaGFuZ2VzIGxvb2tzIGdvb2QuIEJ1dCBwZXIgQnNw
ZWMgNjk5ODUgbG9va3MgbGlrZSB0aGlzIGNoYW5nZSBpcw0KPiA+ID4gbm90DQo+ID4gPiBhcHBs
aWNhYmxlIGZvciBYZTMrDQo+ID4gDQo+ID4gSG93IGFib3V0IGlmIEkgY2hhbmdlIGl0IGxpa2Ug
dGhpczoNCj4gPiANCj4gPiBpbnQgbWluX2xhdCA9wqAgaW50ZWxfdnJyX2Fsd2F5c191c2VfdnJy
X3RnKGRpc3BsYXkpIHx8IGNydGNfc3RhdGUtDQo+ID4gPiB2cnIuZW5hYmxlID8gMSA6IDA7DQo+
ID4gDQo+IFRoZSBmdW5jIGludGVsX3Zycl9hbHdheXNfdXNlX3Zycl90ZyByZXR1cm4gdHJ1ZSBp
ZiBkaXNwbGF5ID49MzAsIHNvDQo+IHNob3VsZCBpdCBiZSAhaW50ZWxfdnJyX2Fsd2F5c191c2Vf
dnJyX3RnKCkNCg0KWWVzLCB0aGF0IGlzIHdyb25nIGluIG15IHByb3Bvc2FsLiBEbyB5b3UgYWdy
ZWUgZ2VuZXJhbGx5IHRoZSBjaGFuZ2U/DQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiAN
Cj4gVGhhbmtzIGFuZCBSZWdhcmRzLA0KPiBBcnVuIFIgTXVydGh5DQo+IC0tLS0tLS0tLS0tLS0t
LS0tLS0tDQo+ID4gYWxzbyBndWFyZGJhbmQgY291bGQgYmU6DQo+ID4gDQo+ID4gaWYgKGludGVs
X3Zycl9hbHdheXNfdXNlX3Zycl90ZyhkaXNwbGF5KSB8fCBjcnRjX3N0YXRlLT52cnIuZW5hYmxl
KQ0KPiA+IMKgwqDCoCBndWFyZGJhbmQgPSBtYXgoY3J0Y19zdGF0ZS0+dnJyLnZtaW4gLSBhZGp1
c3RlZF9tb2RlLQ0KPiA+ID4gY3J0Y192Ymxhbmtfc3RhcnQsIGNydGNfc3RhdGUtPnZyci52bWF4
IC0gYWRqdXN0ZWRfbW9kZS0NCj4gPiA+ID5jcnRjX3ZkaXNwbGF5DQo+ID4gLSAxKTsNCj4gPiBl
bHNlDQo+ID4gwqDCoMKgIGd1YXJkYmFuZCA9IGNydGNfc3RhdGUtPnZyci52bWluIC0gYWRqdXN0
ZWRfbW9kZS0NCj4gPiA+IGNydGNfdmJsYW5rX3N0YXJ0Ow0KPiA+IA0KPiA+IFdoYXQgZG8geW91
IHRoaW5rPw0KPiA+IA0KPiA+IEJSLA0KPiA+IA0KPiA+IEpvdW5pIEjDtmdhbmRlcg0KPiA+IA0K
PiA+ID4gDQo+ID4gPiBUaGFua3MgYW5kIFJlZ2FyZHMsDQo+ID4gPiBBcnVuIFIgTXVydGh5DQo+
ID4gPiAtLS0tLS0tLS0tLS0tLS0tLS0tDQo+ID4gPiA+ICsJCS8qDQo+ID4gPiA+ICsJCSAqIENv
bW1lbnQgb24gU1JEX1NUQVRVUyByZWdpc3RlciBpbiBCc3BlYzoNCj4gPiA+ID4gKwkJICoNCj4g
PiA+ID4gKwkJICogVG8gZGV0ZXJtaW5pc3RpY2FsbHkgY2FwdHVyZSB0aGUgdHJhbnNpdGlvbg0K
PiA+ID4gPiBvZg0KPiA+ID4gPiB0aGUgc3RhdGUNCj4gPiA+ID4gKwkJICogbWFjaGluZSBnb2lu
ZyBmcm9tIFNSRE9GRkFDSyB0byBJRExFLCB0aGUNCj4gPiA+ID4gZGVsYXllZCBWLiBCbGFuaw0K
PiA+ID4gPiArCQkgKiBzaG91bGQgYmUgYXQgbGVhc3Qgb25lIGxpbmUgYWZ0ZXIgdGhlIG5vbi0N
Cj4gPiA+ID4gZGVsYXllZCBWLiBCbGFuay4NCj4gPiA+ID4gKwkJICoNCj4gPiA+ID4gKwkJICog
TGVnYWN5IFRHOiBUUkFOU19TRVRfQ09OVEVYVF9MQVRFTkNZID4gMA0KPiA+ID4gPiArCQkgKi8N
Cj4gPiA+ID4gwqAJCWludGVsX2RlX3dyaXRlKGRpc3BsYXksDQo+ID4gPiA+IMKgCQkJwqDCoMKg
wqDCoMKgDQo+ID4gPiA+IFRSQU5TX1NFVF9DT05URVhUX0xBVEVOQ1koZGlzcGxheSwNCj4gPiA+
ID4gY3B1X3RyYW5zY29kZXIpLA0KPiA+ID4gPiAtCQkJwqDCoMKgwqDCoMKgIGNydGNfdmJsYW5r
X3N0YXJ0IC0NCj4gPiA+ID4gY3J0Y192ZGlzcGxheSk7DQo+ID4gPiA+ICsJCQnCoMKgwqDCoMKg
wqAgbWF4KGNydGNfdmJsYW5rX3N0YXJ0IC0NCj4gPiA+ID4gY3J0Y192ZGlzcGxheSwgMSkpOw0K
PiA+ID4gPiANCj4gPiA+ID4gwqAJCS8qDQo+ID4gPiA+IMKgCQkgKiBWQkxBTktfU1RBUlQgbm90
IHVzZWQgYnkgaHcsIGp1c3QgY2xlYXIgaXQNCj4gPiA+ID4gZGlmZiAtLWdpdA0KPiA+ID4gPiBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gPiA+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+ID4gPiA+IGluZGV4IGM2NTY1
YmFmODE1YTEuLjNhMjdkZWQ0NWVlMDQgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiA+ID4gPiBAQCAtNDIyLDggKzQyMiwyMiBA
QCB2b2lkIGludGVsX3Zycl9jb21wdXRlX2NvbmZpZ19sYXRlKHN0cnVjdA0KPiA+ID4gPiBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+ID4gPiDCoAkJcmV0dXJuOw0KPiA+ID4gPiAN
Cj4gPiA+ID4gwqAJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDEzKSB7DQo+ID4gPiA+IC0J
CWNydGNfc3RhdGUtPnZyci5ndWFyZGJhbmQgPQ0KPiA+ID4gPiAtCQkJY3J0Y19zdGF0ZS0+dnJy
LnZtaW4gLSBhZGp1c3RlZF9tb2RlLQ0KPiA+ID4gPiA+IGNydGNfdmJsYW5rX3N0YXJ0Ow0KPiA+
ID4gPiArCQkvKg0KPiA+ID4gPiArCQkgKiBDb21tZW50IG9uIFNSRF9TVEFUVVMgcmVnaXN0ZXIg
aW4gQnNwZWM6DQo+ID4gPiA+ICsJCSAqDQo+ID4gPiA+ICsJCSAqIFRvIGRldGVybWluaXN0aWNh
bGx5IGNhcHR1cmUgdGhlIHRyYW5zaXRpb24NCj4gPiA+ID4gb2YNCj4gPiA+ID4gdGhlIHN0YXRl
DQo+ID4gPiA+ICsJCSAqIG1hY2hpbmUgZ29pbmcgZnJvbSBTUkRPRkZBQ0sgdG8gSURMRSwgdGhl
DQo+ID4gPiA+IGRlbGF5ZWQgVi4gQmxhbmsNCj4gPiA+ID4gKwkJICogc2hvdWxkIGJlIGF0IGxl
YXN0IG9uZSBsaW5lIGFmdGVyIHRoZSBub24tDQo+ID4gPiA+IGRlbGF5ZWQgVi4gQmxhbmsuDQo+
ID4gPiA+ICsJCSAqIFRoaXMgY2FuIGJlIGRvbmUgYnkgZW5zdXJpbmcgdGhlIFZSUg0KPiA+ID4g
PiBHdWFyZGJhbmQNCj4gPiA+ID4gcHJvZ3JhbW1pbmcgaXMNCj4gPiA+ID4gKwkJICogbGVzcyB0
aGFuIHRoZSBub24tZGVsYXllZCBWLiBCbGFuay4NCj4gPiA+ID4gKwkJICoNCj4gPiA+ID4gKwkJ
ICogVFJBTlNfVlJSX0NUTFsgVlJSIEd1YXJkYmFuZCBdIDwNCj4gPiA+ID4gKFRSQU5TX1ZSUl9W
TUFYWw0KPiA+ID4gPiBWUlIgVm1heCBdDQo+ID4gPiA+ICsJCSAqIC0gVFJBTlNfVlRPVEFMWyBW
ZXJ0aWNhbCBBY3RpdmUgXSkNCj4gPiA+ID4gKwkJICovDQo+ID4gPiA+ICsJCWNydGNfc3RhdGUt
PnZyci5ndWFyZGJhbmQgPSBtaW4oY3J0Y19zdGF0ZS0NCj4gPiA+ID4gPiB2cnIudm1pbiAtDQo+
ID4gPiA+ICsJCQkJCQlhZGp1c3RlZF9tb2RlLQ0KPiA+ID4gPiA+IGNydGNfdmJsYW5rX3N0YXJ0
LA0KPiA+ID4gPiArCQkJCQkJY3J0Y19zdGF0ZS0NCj4gPiA+ID4gPiB2cnIudm1heCAtDQo+ID4g
PiA+ICsJCQkJCQlhZGp1c3RlZF9tb2RlLQ0KPiA+ID4gPiA+IGNydGNfdmRpc3BsYXkNCj4gPiA+
ID4gLSAxKTsNCj4gPiA+ID4gwqAJfSBlbHNlIHsNCj4gPiA+ID4gwqAJCS8qIGhhcmR3YXJlIGlt
cG9zZXMgb25lIGV4dHJhIHNjYW5saW5lDQo+ID4gPiA+IHNvbWV3aGVyZSAqLw0KPiA+ID4gPiDC
oAkJY3J0Y19zdGF0ZS0+dnJyLnBpcGVsaW5lX2Z1bGwgPQ0KPiA+ID4gPiAtLQ0KPiA+ID4gPiAy
LjQzLjANCj4gPiA+IA0KPiANCg0K
