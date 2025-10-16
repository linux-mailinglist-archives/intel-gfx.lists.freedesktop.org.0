Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C09BBE4A95
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 18:47:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C8BE10EA53;
	Thu, 16 Oct 2025 16:47:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XnvoZc3f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCF3B10EA52;
 Thu, 16 Oct 2025 16:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760633240; x=1792169240;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=nT9AqY8yRnwuRoqIUzQKTag6mF56O9pR2d3z0oqenB8=;
 b=XnvoZc3fEZjvKY3wPib3ZhbEwhrxTVcEtHjI9WTfdC7RcTFR5rVUs1BP
 f9Jyikgj6P7/UN7GwAk0M3K+3s6oMZy3Mp62TYn0B0HU0e1tplr9GZ87Q
 vHaB4rAWl2vPYnQiiQu2iaIEE5viQp9jJPD8Qr2Y/y9WXFM0p8CWrKc7Z
 5IiamBrG6tZMQL5detL6GP7nJ9DtAJvw2zDtCv7nWoDUea1svbXCwgdAO
 JG7ND2cJoua1/7YtcF6GTttd5mMplKQs313IOCGTzDmGrNZuxFFlLMaCq
 svhRHibCIrwV5py+Z4W0aNwnx9SyO1JwfyHji6qIVey7n8gpRQ2xGtQdK A==;
X-CSE-ConnectionGUID: JOq41GvTTgSgK0FqwoyPWw==
X-CSE-MsgGUID: 0KbArlvUQjuSsOI8qEvrwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="62738734"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="62738734"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 09:47:20 -0700
X-CSE-ConnectionGUID: 3NuVAq/JR6qVpI7SyBcD+g==
X-CSE-MsgGUID: 7qlkIB3kSFK5CpUrorW9Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182188263"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 09:47:17 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 09:47:18 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 09:47:18 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.13) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 09:47:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RZaP9l6ANPhmTtLKFJyqfZnE+xrPdUTZycuO2+bjVwf/TI6elN3Udwei0yAJ/AcUDNAYGmCJkJDCE8FHil7Y/xjPDBSyK8nA6IGUbT+dEApfYNwhjLElO6d5zDsFtS4t/oqIazKSuMCbCf91CVQcXcr8zH/ZzEBhKs+NB/OzhiMV3uMZnwosUUNQV1PiobN8D9LG8boHmuY+J4hDv7QfvZzJZmAoHxkxuSotqmToLXbI9aOIYitEENmVpQgn8bD7AiJoFuxecCybBQB/OK3DOZML6ErADG9Uuf4v0TPhg+yvo3ij5jkv4M3xu96hnRYHpDObP8lXUggEZRz3yv5YcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nT9AqY8yRnwuRoqIUzQKTag6mF56O9pR2d3z0oqenB8=;
 b=A6eOCfNpkgmsOAa4OGRxH8488VtjnpSOgwtTYqyJ0/Wt96HOXRRWvZZoyKLB1SlJVKQXN0cKZtO/PLJM8ucD1dIg8VWrY76xsF1KwyxJ57rbd3LoLJ/YlaqkP6Y4FOdXcb1OEzoG/nLfPs4YnpF7J0etD8VgG0prFITdMdupdXVYEnfvD8LIqWdwnRF4U4MqtmhurFxa2EXcJE5YMnzuvIPiqZsUUXxwvAXwSPJZYxhMY2/PWOC3m3rImWKRNCT0+SDBA4ACip9+5jJ24ZW3FLWGKRp0M/C+SL9icofRgv6ae/rw6TYMMffBu0RXMEO1Pl7SMJyOFsw8rAjLig0mqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS7PR11MB7808.namprd11.prod.outlook.com (2603:10b6:8:ee::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9228.11; Thu, 16 Oct 2025 16:47:15 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9228.010; Thu, 16 Oct 2025
 16:47:14 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH v2 2/7] drm/i915/dp: Ensure the FEC state stays disabled
 for UHBR links
Thread-Topic: [PATCH v2 2/7] drm/i915/dp: Ensure the FEC state stays disabled
 for UHBR links
Thread-Index: AQHcPe+i1MUmm+NiX0WrcXl/Er9jWbTE/SoA
Date: Thu, 16 Oct 2025 16:47:14 +0000
Message-ID: <46de23fc675f04605ac8866738db8cf7668a51ba.camel@intel.com>
References: <20251015161934.262108-1-imre.deak@intel.com>
 <20251015161934.262108-3-imre.deak@intel.com>
In-Reply-To: <20251015161934.262108-3-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS7PR11MB7808:EE_
x-ms-office365-filtering-correlation-id: af88c356-f45e-4207-c7be-08de0cd3a8c4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?VUl3ditQUXBmY2M3bFY4blBNUkJtbTFmSWJSRGx3ZGplOTRpTE1KekpsZmg4?=
 =?utf-8?B?TzNaZFdVUzdrYWlGQ3JUSzZsL21GcWdyL2t4ZVNDQXd0eTZlcXJSeGc3dHZC?=
 =?utf-8?B?VTd2Z21MMUp3cG5sZnhYd2FMN21XbmVtT2xUaVBiNGRhUEM5NWJ6MlpVZDVR?=
 =?utf-8?B?MmZYSTFzZkIrWGFUdjY2NVBEWXJtc1pHZ1BrdnNIYXJVYU5ROEM3WmNPTWpT?=
 =?utf-8?B?RXhnQ0ZzSlZUZkNCMFAvMWplY05vU3p0bjdTOWJPMUhpaThPTEYyMStnamVz?=
 =?utf-8?B?N0hkZmsxaGlUT0Q5aUdyY1ZxOWt4UGxxK0tYRUZCcE1OL1VtdWcrYU5QRUhm?=
 =?utf-8?B?c0xmV1ducHgxNksyUjhNNk85bHNhZTlDU1VjaHJoeVpuM0dnT29kc3JxblZ0?=
 =?utf-8?B?cUhqaFpCZmtRdXI1dU5TR1cwUEtzbnA0UTNaOFdXK1N5dWxGSGN4eXZpK3dl?=
 =?utf-8?B?SnBVVXA1cXF5QUtQYXFwRnNUTDFYOGJLSkFZODYwY2NzQVhDelppZTZGc01I?=
 =?utf-8?B?ZWdXTlpsb2w5YnhZeVRNTFJhOWlSdEdkNitaQXNROXZ3KzBVVDRJNlZTditU?=
 =?utf-8?B?b3VQbUREYVZVanU1YUFDdi9rTjJwVXVoWWlPeDAyWVpPcXFJS1BnNDJGdXJr?=
 =?utf-8?B?cFNJRDJwTFkxS0l4Yll3eGtybXpyRnNsdjlaSERTcGNkMStkUHFwZElqQmdU?=
 =?utf-8?B?blNBYmhkTGFRd2xMU0h2UmVQTWk4N1J2eGJyYmg4SUVKZTZldlhRcHN0c256?=
 =?utf-8?B?T3VRUjJOWGN1ZldJSHBQR1htbXNXcktFbGUrc083bWNrek1NTTUzdlZRUW16?=
 =?utf-8?B?dGxGanlSYTlnNW5sYW44L1IzVmsyekJNcS9VU1pzcE1ZOHFqcWVvaUcrTnM4?=
 =?utf-8?B?czdzTXlwWlJNa0ZyU2hJTGRwT2NCelVFOWF1VzdxanJwWncvblpXVjBaR3Y4?=
 =?utf-8?B?QjBnak9EZ0lUcmRuVkFiSW9UQkEvTFF2UmR5WUpnRFQwcFRLQUhUTFNxZlNY?=
 =?utf-8?B?dU5YUXlpek1FRy9lUENsNTdKMU5zeHA0bzgzZjd5VWk2ZWc2MEdzVEJqZnJv?=
 =?utf-8?B?T2o4aFVIQnYrdFlNQ0pMTW1QeDBQRUVlTmFZaWhqVnBraENRQ1dXQmZBTXBU?=
 =?utf-8?B?TmdrT3ZENVVkZGF1dFpkMFNBN3dzdytycXlaVkZSZzl5VjFFK3UycjE2VCtT?=
 =?utf-8?B?YVovNnBkUXhWMVpPY2NGUDFsZ3lJQStXRnBSY1p6SzFUWmlmQjNVaUdzTVNw?=
 =?utf-8?B?Wi84WXdjSStiM2FheFd2YXNtcm1jN0RqY0Qwa1g3UFl4SldrL1EvbEJUUm5S?=
 =?utf-8?B?OGQyeGFwTzBHU3pYc3lXS2hUdDkwRTEraHliNU9zcndLMFVSd2VKKzN6OFJ1?=
 =?utf-8?B?ZHlZZ0VDMG1lREwvcE5ETVBydFpKRko1OW04cVVIYk9lMWRzbnUzOEpXdWs2?=
 =?utf-8?B?eVdUWUZGTjEwdWM0SkcxbkZtekRKSlFIYjVPSmVNL2hiUEJIYlhFMVlSTEtC?=
 =?utf-8?B?SWhqb0ZLSm1sOHBQS2VXZExKblF3UlNQdXcwKzhERUFEanVNNWVQd0RxWGFw?=
 =?utf-8?B?TEZ3MER2QlFqQ1Z4eEw1SUNHU1d6OFpmZ2t5NXYzSHBLazRsVEVvZTNBZC8x?=
 =?utf-8?B?WjVraDZMTkJKVCthdERHUGw1dDBpeUtWM0J3NTVrbjBnV3dOTXNHTUkxT1JM?=
 =?utf-8?B?T2ptdGFIWi9kZzhYdCtyN25JVzZlZEU0NStDZVlpQzMreUtyaE90b25ZMFcz?=
 =?utf-8?B?TkZHZENFN1c5eCtKbGFFb25HMmpYR3lZL1l3OTd4WUtOMEF0OTRFbTJTU3F0?=
 =?utf-8?B?OVl3SlZ3ZW9JU1RURkY0T29qakJ6WnhpZDRXdTREeWRrQWZnOE1XSlJTa0ha?=
 =?utf-8?B?VEx4UGxmaVY2OEtOdGc1TExrYjBDaTRyaWVGMDdpeGJVVVQrYVQzanEva0lo?=
 =?utf-8?B?VWJPeGQycStLdUhEUlFsTWE3cGg3T3JIZ2NqZHFBbWlCaHJNcXFseFcrdm1N?=
 =?utf-8?B?WFgzREZvZWZ6M25sazkrRFZNZktyU1VoQTdjQTYvQVIwQVRzVnZXOEFSR1BN?=
 =?utf-8?Q?PBGMjR?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MFFqL0Q3eXdpZ29BTHVFU01MblhZeU5xbGxKNjdIYzVoYTVWTThJbDdnTURG?=
 =?utf-8?B?VE1hMzBMS0lpTTdlVHVMc2wzbk9QYTBXa0twK2dhUkticnJTZVRzOXM5RG1O?=
 =?utf-8?B?N2dkZG55cXNWeitwODcxNW13S1YxaWlrOFk3YURJeWs5Q2VnWkVEVkg3VG9S?=
 =?utf-8?B?UW1nQVZVaHFpcVIzSk1UVnZIcFdtakxMV0VVZ3BvckpTT3FyS0pFZ0Z1SDRj?=
 =?utf-8?B?Vk9vdHAvV0tOQUh1OC9ReDhmQ1lJdmhJcjg4bmYxRkpRMTRYWEpkZEc4THlT?=
 =?utf-8?B?aFRLbWE3NE9lT3A2QlQ5TzJNcVE0S2JpNFo1YmFDb0gzbnRUYlNvZGk3aG5h?=
 =?utf-8?B?L1FxRXZmVnZMcHk3clZPTG5TZUowQ3FNeUNZd3hOb3puZE1KOVl1Nyt3c3Z0?=
 =?utf-8?B?ZE1ZUWsveVNkc0dzaGlYMEhiYVpDTVJqazZsZlk3ek0yR3RzMnFtNFRDRHBt?=
 =?utf-8?B?MTlBd25DZ2pLWjVGZTQ4dENLWXlNb2t5RllCdkFBZ1ZzY0k1REVjeGI0RVJR?=
 =?utf-8?B?c2ZINlVUTzZTcHZYejMySHQ1T2lqYUtpQUhMZUNiSTdubDR3ZlhMY0gxRW4z?=
 =?utf-8?B?TldLN2NpYkJFOWJHNE5salVCWkpaUGc4aldsYlJaVUk3cUgxYU16N1I4b29u?=
 =?utf-8?B?ejlPMDM1SHV3UmRjYTNYSC8wSURQZkU5RE5nYWNmRGw5cFRVYTBWeVl5aFhI?=
 =?utf-8?B?UVZVZ3lDa2J2Zmt0ellxZzJkRjk3Z00zdkpEcm5mUC9xTEI1dWVnanNHUC9i?=
 =?utf-8?B?NW1Ea2U3VGdSR3RMQW1CeWJ1b1k3REhwZDZSNGxpZWgyTFA1QWZncEp5VnEr?=
 =?utf-8?B?WlRDMHRzZEVkM2JGMGxPYU9wbFQxb0c1WSsvMUlwd1BNLzRlK081a1ErUDNO?=
 =?utf-8?B?V2x3a3RwbEdPWnl6VkFxdGh0VGxHa0xNYTBiMXZ2TDMyUEVWSGMwOFRTM3pn?=
 =?utf-8?B?YkF6bjQwSVgxZnlyS0FCNlQ3Lyt6ekIzUjkwQnRFMmorTVRiRWFLUmZSL09n?=
 =?utf-8?B?WWozd1B3RGRWZ1dRRmZYT2xVZ0tZakI2ZTg0QUx4YjN0TDJIaStlTm00UHFn?=
 =?utf-8?B?d3ZoeGZXUEt6NFdHWkJvNzFhNjRSRHY1cnZJSXpCbFRnbUNTZFRQSVNUY2JV?=
 =?utf-8?B?ekwzMUgwVHRjSVBjZnVNQ0lhRUwxemtvMDZqZC81RXJKV0VidzhQbmNrTmxU?=
 =?utf-8?B?RWt0dmw3SjJlWjRGTGltREgyVW1iRUVMZ2dEWmsyTEtCQ0FkMTgvclI2TFNl?=
 =?utf-8?B?bExUNDNsd0o3MmZHcWNxY1ZJcERhOWRqRC82Ym5xZkFBaGtJOUZpeXVhOEl5?=
 =?utf-8?B?c3NYb0ZaMFlLSlI3TGp4dHIzTlN6TWZPdnR5ZzZITStBdWFjZzJaM3JZODBI?=
 =?utf-8?B?SUdYdkNTUTg3UzNJUEduU0RRNkYzL3V2Z3R5TmpMcW8wOXZIenJwNkNmQ3dT?=
 =?utf-8?B?MEpmcEV4WjNRamZUbXIybnVaRkU4MVNUVFVqUzUxOW8wNmhoTlM0OHlod0hj?=
 =?utf-8?B?SElReUY4bU5pQXBpazFMdDBub3BNV2tNUTc0d3VDUTQwa0JuOWcyY1l3elZo?=
 =?utf-8?B?Q2x6RXk0WkF1Z2xhN1pweUwvMTlHakdvV29BWnA0UVJQVUdrL2FqSVY0MXBK?=
 =?utf-8?B?R0xRK0J4SW9FZlZEZFgzUFhtNXlDcVNqZVBwMVNFRFkzWkNXdS9QblpPdmRQ?=
 =?utf-8?B?QmNuVUJWYWhvcGVQYVVHdGtuRVNRbE84YXhPVk1JTTdlOElvckhRd0tmd2pK?=
 =?utf-8?B?K2oxWmlGd1RGN2xRTzliQXlJM3BwWWV4WWp2QkNZd2hENjVJdlBpaS8reE5p?=
 =?utf-8?B?VWpHZGo0SzNqSURpUnVYcWp3RjdqcTRDd2k0MGFCN1Fwd0Q2WEdQbnZlUmJr?=
 =?utf-8?B?eXhkalZFR3B1MDYxSG5DaXNPUmMwOGJCbGVGL1V1c1lSbnNrN2J5VkpVZGMz?=
 =?utf-8?B?UUFFKzFjcGxYNHU5azdRc2RnWkREUGhVQTZEWUtmczhGYUQ0bnhLNmlJQVFK?=
 =?utf-8?B?WnNLeTM3Sk9HczYrQW5TTTFJTG5UejZWUlZQRUg1THpwbkwweHN2UGxhczZY?=
 =?utf-8?B?K1pxYktTMUliT2l4Q1hJemdrVG0xU21FQnYvNUhHaDAyNDdSUHpwRTlvdFRK?=
 =?utf-8?B?bDUxNkl6UmlVa0hyd1hxTGxpQmRsRWh1RFphSzNMS3pjZTRiVnQ3RXZ4RmtC?=
 =?utf-8?B?Wit1S0hjZnVmSDliSGc3eEU1cEtMbmxNa0RxUTBMSHJWMlV1UWkvd1Y4c3VW?=
 =?utf-8?B?WlExSTV4WU9iNG1rRThDRW0yeUl3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A00B42F6D19C6D4CA473E6372AA31CCF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af88c356-f45e-4207-c7be-08de0cd3a8c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2025 16:47:14.2038 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HSfJ+31UeIL91rn5C4+KjHumd18mzTzt7mpxHgC+0BC23zoXSNxgzdrVQ2rpwFl5mDnSOf9td2lpuPFc8zY4OPgRDJYzGlwNj5QARq6lvq8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7808
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

T24gV2VkLCAyMDI1LTEwLTE1IGF0IDE5OjE5ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEF0
bSwgaW4gdGhlIERQIFNTVCBjYXNlIHRoZSBGRUMgc3RhdGUgaXMgY29tcHV0ZWQgYmVmb3JlDQo+
IGludGVsX2NydGNfc3RhdGU6OnBvcnRfY2xvY2sgaXMgaW5pdGlhbGl6ZWQsIGhlbmNlIGludGVs
X2RwX2lzX3VoYnIoKQ0KPiB3aWxsIGFsd2F5cyByZXR1cm4gZmFsc2UgYW5kIHRoZSBGRUMgc3Rh
dGUgd2lsbCBiZSBhbHdheXMgY29tcHV0ZWQNCj4gYXNzdW1pbmcgYSBub24tVUhCUiBsaW5rLg0K
PiANCj4gVGhpcyBoYXBwZW5zIHRvIHdvcmssIHNpbmNlIHRoZSBGRUMgc3RhdGUgaXMgcmVjb21w
dXRlZCBsYXRlciBpbg0KPiBpbnRlbF9kcF9tdHBfdHVfY29tcHV0ZV9jb25maWcoKSwgd2hlcmUg
cG9ydF9jbG9jayB3aWxsIGJlIHNldA0KPiBhbHJlYWR5LA0KPiBzbyBpbnRlbF9jcnRjX3N0YXRl
OjpmZWNfZW5hYmxlIHdpbGwgYmUgcmVzZXQgYXMgZXhwZWN0ZWQgZm9yIFVIQlIuDQo+IFRoaXMN
Cj4gYWxzbyBkZXBlbmRzIG9uIGxpbmsgcmF0ZXMgYmVpbmcgdHJpZWQgaW4gYW4gaW5jcmVhc2lu
ZyBvcmRlciAoaS5lLg0KPiBmcm9tDQo+IG5vbi1VSEJSIC0+IFVIQlIgbGluayByYXRlcykgaW4g
ZHNjX2NvbXB1dGVfbGlua19jb25maWcoKSwgdGh1cw0KPiBpbnRlbF9jcnRjX3N0YXRlOjpmZWNf
ZW5hYmxlIGJlaW5nIHNldCBmb3IgdGhlIG5vbi1VSEJSIHJhdGVzIGFuZA0KPiBnZXR0aW5nIHJl
c2V0IGZvciB0aGUgZmlyc3QgVUhCUiByYXRlIGFzIGV4cGVjdGVkLg0KPiANCj4gQSBmb2xsb3ct
dXAgY2hhbmdlIHdpbGwgcmV1c2UgaW50ZWxfZHBfZmVjX2NvbXB1dGVfY29uZmlnKCkgZm9yIHRo
ZQ0KPiBEUA0KPiBNU1Qgc3RhdGUgY29tcHV0YXRpb24sIHByZXBhcmUgZm9yIHRoYXQgaGVyZSwg
bWFraW5nIHN1cmUgdGhhdCB0aGUNCj4gZnVuY3Rpb24gZGV0ZXJtaW5lcyB0aGUgY29ycmVjdCBp
bnRlbF9jcnRjX3N0YXRlOjpmZWNfZW5hYmxlPWZhbHNlDQo+IHN0YXRlDQo+IGZvciBVSEJSIGxp
bmsgcmF0ZXMgYmFzZWQgb24gdGhlIGFib3ZlLg0KPiANCj4gVGhlIERQIFNTVCBhbmQgTVNUIHN0
YXRlIGNvbXB1dGF0aW9uIHNob3VsZCBiZSBmdXJ0aGVyIHVuaWZpZWQgdG8NCj4gYXZvaWQNCj4g
Y29tcHV0aW5nL3NldHRpbmcgdGhlIGludGVsX2NydGNfc3RhdGU6OmZlY19lbmFibGUgc3RhdGUg
bXVsdGlwbGUNCj4gdGltZXMsDQo+IGJ1dCB0aGF0J3MgbGVmdCBmb3IgYSBmb2xsb3ctdXAgY2hh
bmdlLiBGb3Igbm93IGFkZCBvbmx5IGNvZGUNCj4gY29tbWVudHMNCj4gYWJvdXQgdGhpcy4NCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCg0KUmV2
aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQo+
IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuY8KgwqDCoMKg
IHwgMTAgKysrKysrKy0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbXN0LmMgfMKgIDUgKysrKysNCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jDQo+IGluZGV4IDFkM2NhMTk3MGYyNWYuLmI1MjNjNGU2NjE0MTIgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTIzNjgsNiArMjM2
OCw5IEBAIHN0YXRpYyBpbnQNCj4gaW50ZWxfZWRwX2RzY19jb21wdXRlX3BpcGVfYnBwKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgc3RhdGljIHZvaWQgaW50ZWxfZHBfZmVjX2NvbXB1
dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCQkJCQlzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSkNCj4gwqB7DQo+ICsJaWYgKGludGVsX2RwX2lz
X3VoYnIoY3J0Y19zdGF0ZSkpDQo+ICsJCXJldHVybjsNCj4gKw0KPiDCoAlpZiAoY3J0Y19zdGF0
ZS0+ZmVjX2VuYWJsZSkNCj4gwqAJCXJldHVybjsNCj4gwqANCj4gQEAgLTIzNzksOSArMjM4Miw2
IEBAIHN0YXRpYyB2b2lkIGludGVsX2RwX2ZlY19jb21wdXRlX2NvbmZpZyhzdHJ1Y3QNCj4gaW50
ZWxfZHAgKmludGVsX2RwLA0KPiDCoAlpZiAoaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkNCj4g
wqAJCXJldHVybjsNCj4gwqANCj4gLQlpZiAoaW50ZWxfZHBfaXNfdWhicihjcnRjX3N0YXRlKSkN
Cj4gLQkJcmV0dXJuOw0KPiAtDQo+IMKgCWNydGNfc3RhdGUtPmZlY19lbmFibGUgPSB0cnVlOw0K
PiDCoH0NCj4gwqANCj4gQEAgLTI0MDAsNiArMjQwMCwxMCBAQCBpbnQgaW50ZWxfZHBfZHNjX2Nv
bXB1dGVfY29uZmlnKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCWJvb2wgaXNf
bXN0ID0gaW50ZWxfY3J0Y19oYXNfdHlwZShwaXBlX2NvbmZpZywNCj4gSU5URUxfT1VUUFVUX0RQ
X01TVCk7DQo+IMKgCWludCByZXQ7DQo+IMKgDQo+ICsJLyoNCj4gKwkgKiBGSVhNRTogc2V0IHRo
ZSBGRUMgZW5hYmxlZCBzdGF0ZSBvbmNlIHBpcGVfY29uZmlnLQ0KPiA+cG9ydF9jbG9jayBpcw0K
PiArCSAqIGFscmVhZHkga25vd24sIHNvIHRoZSBVSEJSL25vbi1VSEJSIG1vZGUgY2FuIGJlDQo+
IGRldGVybWluZWQuDQo+ICsJICovDQo+IMKgCWludGVsX2RwX2ZlY19jb21wdXRlX2NvbmZpZyhp
bnRlbF9kcCwgcGlwZV9jb25maWcpOw0KPiDCoA0KPiDCoAlpZiAoIWludGVsX2RwX2RzY19zdXBw
b3J0c19mb3JtYXQoY29ubmVjdG9yLCBwaXBlX2NvbmZpZy0NCj4gPm91dHB1dF9mb3JtYXQpKQ0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3Qu
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gaW5k
ZXggZjIyNjZiMjY1MzA0Ni4uMjdlOTUyYTY3YzM0MyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+IEBAIC0yOTMsNiArMjkzLDExIEBAIGlu
dCBpbnRlbF9kcF9tdHBfdHVfY29tcHV0ZV9jb25maWcoc3RydWN0DQo+IGludGVsX2RwICppbnRl
bF9kcCwNCj4gwqAJCW1zdF9zdHJlYW1fdXBkYXRlX3Nsb3RzKGNydGNfc3RhdGUsIG1zdF9zdGF0
ZSk7DQo+IMKgCX0NCj4gwqANCj4gKwkvKg0KPiArCSAqIE5PVEU6IFRoZSBmb2xsb3dpbmcgbXVz
dCByZXNldCBjcnRjX3N0YXRlLT5mZWNfZW5hYmxlIGZvcg0KPiBVSEJSL0RTQw0KPiArCSAqIGFm
dGVyIGl0IHdhcyBzZXQgYnkgaW50ZWxfZHBfZHNjX2NvbXB1dGVfY29uZmlnKCkgLT4NCj4gKwkg
KiBpbnRlbF9kcF9mZWNfY29tcHV0ZV9jb25maWcoKS4NCj4gKwkgKi8NCj4gwqAJaWYgKGRzYykg
ew0KPiDCoAkJaWYgKCFpbnRlbF9kcF9zdXBwb3J0c19mZWMoaW50ZWxfZHAsIGNvbm5lY3RvciwN
Cj4gY3J0Y19zdGF0ZSkpDQo+IMKgCQkJcmV0dXJuIC1FSU5WQUw7DQoNCg==
