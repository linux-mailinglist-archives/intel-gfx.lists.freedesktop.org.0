Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F127AD44FB
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jun 2025 23:50:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9CF310E33B;
	Tue, 10 Jun 2025 21:50:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kKFEMl4G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A27510E33B;
 Tue, 10 Jun 2025 21:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749592239; x=1781128239;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HaJGO+3mMc/MVF0GqdcOKlGWEAxxB1I5lTikIKVWmu0=;
 b=kKFEMl4GNz86qosv9vfzWH1MJD9TiBdoh7gVTF06HbzGQSYpMiE2iqWq
 dh3J5Nj6D0oeREFL0F5/tbdm6ubJdmHBePgYc8hjIXMY6J9r18m2WFpfg
 QK/QadCJUZMrn9K2Whs0kvc+se+95PIZAxczJGpFVhZqsaJSyN+BWqldQ
 OJQhovhLjNOigSCvzFQVM1oNP5V6fP6Nbda9dcLO+341pxyzjfumeEvlk
 5vrLCLGdjG9YbDKJW1UZP61L6Ith1Xh9uUl23u+4SglJIHcSiLz4In87h
 fsbk2MKBKRg+xAM0ci/PXizkPUvCnN51Y970XzNrRH4C/+ieF7XpumKeq w==;
X-CSE-ConnectionGUID: twbAWYHiT2S7vLw+2Sf0Pw==
X-CSE-MsgGUID: f8Q2A8uiSo6UdE04kH8T2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="51599366"
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="51599366"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 14:50:38 -0700
X-CSE-ConnectionGUID: YglN9VHLTVyNMEZvl1BupQ==
X-CSE-MsgGUID: lMXAlmIcRviED7uyHg6cLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="147895212"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 14:50:38 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 14:50:37 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 10 Jun 2025 14:50:37 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.45) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 14:50:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W6e5hhM6df1W5pe5ae8xyV2VeicfbpyDua5vTSUgGpncwy39hOKp736ovEnSdgwrqlTyWl3TWDQYtN6t2FINb0CBcuz0Rn2EsZOgb3j7GYTCRAHNPHvIIU7XaGMp11xNcC804jDHayfGu0R90N9Ux4mMnrDzlstMFIfSUfGyYtAOhqCsKX+rE2pQ9hvZIWTKrrDBQG9z98QRAZo8CyqVmoRAVr9kTrQEq0ui0H+Ry6Io+Qmrf9hSGNCjfs8TwYgSkLT0Yc4Q7VKcpHnvLTQjerg8f5jTjmxXoZjtpyyHad7Hew3ds4799c7ERT2oN7KXw6ZX6k6GVkf+XrjCtf+W6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HaJGO+3mMc/MVF0GqdcOKlGWEAxxB1I5lTikIKVWmu0=;
 b=Zs4Ys5md1nYCgDga+zecSVQBV31Fm5oYbKnOgYdKtG7IuNGEaN73rs1fDI9/QFonO5IzXT/S3uipnWGSDmzNH/zV5eQeeV7+lZXC4myS/We3uihz3saP6ZufnLhqj5lWgAkAV7U6PsIGg1M/TPa8P5oSpw/c5aoatGZS7mplggYb4yHr9N2pOWa8iFLbY2mS1wfIBmivvaYaelHSFX1As3eQyRqiCHl6P/+E+kQz7nvj48VMA7S1jXnDdMh8GmxxugB8kpm1ggaAvkZiM3BtHx4FZQfnq7AmgDbHdC0wYrK+lqQabJ2DjjMFll9TSrmC+/6eErEokCFaceGy9ZUwWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CY8PR11MB7874.namprd11.prod.outlook.com (2603:10b6:930:7c::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8813.29; Tue, 10 Jun 2025 21:50:17 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8835.018; Tue, 10 Jun 2025
 21:50:17 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v4 05/21] drm/i915/dsb: Move the DSB_PMCTRL* reset out of
 intel_dsb_finish()
Thread-Topic: [PATCH v4 05/21] drm/i915/dsb: Move the DSB_PMCTRL* reset out of
 intel_dsb_finish()
Thread-Index: AQHb2Uhl0BplEwyExEyEl+nLVxtC7LP88FZw
Date: Tue, 10 Jun 2025 21:50:17 +0000
Message-ID: <DM4PR11MB6360ADE29B614C16879F1DA3F46AA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
 <20250609141046.6244-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20250609141046.6244-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CY8PR11MB7874:EE_
x-ms-office365-filtering-correlation-id: 63986e24-a3dd-4b88-f1c0-08dda868c9e3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TmtDeWlwUUgvY1Jla0g4MWxuM2w2TnBHYTJhOWhxbmVldC9lUTRwMXB2Z2da?=
 =?utf-8?B?b3hLVHFHM0FzQTF2R1dRcTFsWWErN0lpQTcxUHNpOTZVckJyemNtOUZkb2dK?=
 =?utf-8?B?c1ptVnUxUUJzMU1LVS83cTlxMzJzclo5bEovajRnY2FtbUl6K0RSUDBHUDVQ?=
 =?utf-8?B?cGZxUEhZZTNwdENsekJGUUxibzZsK2Fmd1dMcTdpRXNSN1FXVkc0QzVpUFAv?=
 =?utf-8?B?VzVMR091RlVhNXhSQjJsbnFqZ09vaG5NUnFBTjJOdjNVVGtlNmc4QWxuanR4?=
 =?utf-8?B?R3RPTEthNkI4Tk9Vc2xkTWF0elprZkpRU0tCaEhSTUx0N2FPRTFQdVVmMk9Z?=
 =?utf-8?B?U2xHN1Y1Qm1KejM2RjFOWE9vQ0tvR3JYa2VmQmx3QXhiVjF4bmFaWjJzMFRF?=
 =?utf-8?B?L1ZTTGQ0Tm43NFRFY1NqOVI1aldaTE1UNnZ1NDRPOTNPQVVFRGZ1ZHd1M3RO?=
 =?utf-8?B?Zkd0VWlMbjVaclVmeEpSWDFUdmNkM0dSbDNHM3R2WFZxNGN3RWFhRUNDVVVO?=
 =?utf-8?B?WkR2SzJXN1dwTWtkZllzVmRhbXl2WFc2bEE0OURCZVVyTXh3WHJUcUR1QTlB?=
 =?utf-8?B?Wk5EV1NCVlkrUEE1MGE2UnIrd3RVM05oQzhMQ3VoZE92d2ZJMWdENkxPcWc4?=
 =?utf-8?B?eWNhT0lydlBaVERnWlFSeld0YkFDSVZPY09UNjhBVkJud1lDOGRva05KbHJ5?=
 =?utf-8?B?Q1czb1QxdnE5Q3UvRWlCYmt6VmVCYVY2cU9yRktYSFFBZHZsTndaYzFBVHpB?=
 =?utf-8?B?REM5TElOdVN3YWZSWWs4OStOMDUrUUYxSHZMTDJsNWdjQ2h4dFY1c003Mjha?=
 =?utf-8?B?cU40cmxIYys5Wnl5UjZZRUJ5Yk1GdWNDWmJZakQzejFLMGQyclJZc0p2UnJY?=
 =?utf-8?B?K09WV3gzcTZOZ0ZaOVc2elN3TGlJaW01MWJWZ0czaVBrcVNvUjZ1ak0ybll0?=
 =?utf-8?B?Q04xcm9jSGcxalVTcDZ3NXFxQlVvZDRPMTEvMU1iMTcraTRHcUtvbGJiT2p6?=
 =?utf-8?B?QitEYTRSTVdyUmVzUlNzYkE5aHhBZWtrT3h0OXIySEJScmd0WDBxUG5YeHVS?=
 =?utf-8?B?ZnFsMVdGckNkc1YrMGRGblRicTNUaHUrWmJjVzNCMGtNbE13VTFWMExFUjZ4?=
 =?utf-8?B?RkMrZW5SUDYvbysvRFFXYXFacEZURk81aktnTkxmdWVlekIydlhGWGxVVmw1?=
 =?utf-8?B?WUNQSzd1d0FjM2krbnA3VVM2S2lxOWpWTGUxK0dNeVg3ZTVmaHVobVNKdEcz?=
 =?utf-8?B?eGRFWmNOeUhQNnZQazEycE1Cck90ZlNlVnhEM1VpRFJJaTNTd251QnNkRm5h?=
 =?utf-8?B?bHZndUFtM21DU1dqcGw5TFRqR0Y3MUx4WUh5cjNoTVFtclExWmYyMHVlT1Iv?=
 =?utf-8?B?Vjl6VE5UalpjU1Bsd3NPbzlqZ3VUaHdoTVdHaDR0andLY2c5a3J2S1lQdzJY?=
 =?utf-8?B?NkhxSytra0RlRXY4bWtmWGRmcXVLZExIZkI3WC9GNXJ6SytFVjFFSDhkdmky?=
 =?utf-8?B?UWUydFRNQ09kOFgxaEF2QzIwTnhJOFFnRE5USlRvUW1KU2V5VHhncHF0d1o5?=
 =?utf-8?B?UEJUd0FPUzhJQ0lHV0ZZZUpZQ3NNZU5MU1pGS2gwMnpWVEtuMXNodC9zelll?=
 =?utf-8?B?dVVCSHFScGdLR1cvemhzWGltc2QyNE8vKy8yUG9qb0EvRDN1dytGVENrMmt4?=
 =?utf-8?B?V0RvUlNDVUlPT2sybWhuNVZrT3FjN0FsdGlpeFZkNlZUejVyMmNqbi83enVj?=
 =?utf-8?B?MWVBRkRPbTlFQjNvWjNEdHVNbFE4b0lRMVprVTRyMWV2SUw1S3pDTm5sVDNI?=
 =?utf-8?B?VnE5WUx5REhkWW1BcTdsSzZMdlZHcms5T096QnNIS2V3RkFxRlpWQzJxYVhy?=
 =?utf-8?B?ZUxTTVFoWjFiZ2c4V2xNUjNkazlxQXZNbW0xdFJ5QVRRalMvSE8yRFNjYzJB?=
 =?utf-8?B?OEhDRm1rOE1RUVBvZGdvSFlKZVdoZmM5MnJaVlY5UDZrSThFM3l3ZVcyMjBD?=
 =?utf-8?B?dktFOHNVVU9RPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OVB5MVBMTW9zbXBlamQ2Mkp0NXFUN1ZoYnp6NjhaUUV4dUozNlBqbTR0RGtG?=
 =?utf-8?B?b1c3K1B6RkxKb2Mwd2xaa2JiRDJ2Vk9TK0dtWldkeHhMaGpsZEVVY0VwVFZ4?=
 =?utf-8?B?enJmNVl1UWtVV21YVWY2UTdCVXl1OUhGRUx6dCsrVjZOQyt2Nm5qUnRRelJS?=
 =?utf-8?B?UDBJVElITmpYeE1mdWNXeWJEeVAzUTluR1BrN2hRZFBOcXJYMVpHZGJtNE9J?=
 =?utf-8?B?eitEQjZlRXB3OUJlVDU5ZjhhWlJoRThHUWxSZENSZHpLcXNEOWdSUUFFZWR3?=
 =?utf-8?B?SG05WThUT0RwajJYTEd0cnp2NmNhMW8vNTBlRGRYZlFLSW1UWDY5bWRLbHNh?=
 =?utf-8?B?RkJqSjZwVGswQ3docHZaYkQwM0gxYmtrM2k5MTMyWGZmMEpWMllsbXZhcDRM?=
 =?utf-8?B?YjEwc0VVcEFSalNyVnBCNzFNMGtCeWxqL2F4c0w3cDM1L25ibitwWWRIeVVK?=
 =?utf-8?B?QlpaNVVtODVEandMK2tsS2llVXA5NHhVeGlDRzJINjRXNEZJYkl4eTZrY01X?=
 =?utf-8?B?WXA3OWxRWlg1bUNscWliK3QrQVBCangxa1NwbzA2dk81N2dRd045dzFYV0c2?=
 =?utf-8?B?TkJEQ2g2OTF1bUczdllHbGtpblFXczAwemN1aCtLUVkzMUw0V2kvMlRWNmps?=
 =?utf-8?B?STIxL1d5VU4xNmFyekpPSStFMUhFMHpGOHpNZmZTUUlFdUFpZTE2SE9LeEJz?=
 =?utf-8?B?YW5GaVU0TkhIZURkMkw5Y0xvRUJ3clhlS25yL2UvVHFkUGt6aURPc3NYZVln?=
 =?utf-8?B?S0F2Y1J1WUFwcVdGejhJZmJsZ1J2Q20zcnFrQ09iK2xKZTJDVDFSb3YyeTg1?=
 =?utf-8?B?SDgrRFk5QzB3UkN2bmh3YU5oazZnWktqVWJiWVRrL1pEdzNEWnhCNENBRUtP?=
 =?utf-8?B?UWlsRE4xdU9CRDByWFhJMFNYekZHbWdPYnV0NGdsQmV4aUlQWXRjTGtBT0hC?=
 =?utf-8?B?amVhSDJNMDROM1I1eEthV0w2K1VCWVEwNy9pY04razBaL0UvY1RvY0RpVFlh?=
 =?utf-8?B?M2hGbHN6S0Rzd3B6NDF3c0pEZmVrNEowVHZ3VkZHMFNtY0puVGVNM1E3anBC?=
 =?utf-8?B?cmEzRTlxL1RtTzRQckJyQlB4Y01QU1dtUDVtUzdBbHRUUzdIcnZIYWY1RXFS?=
 =?utf-8?B?Uy84WW40czZ2Vk94bGp4UlZuSFFhZlM0ZW1obHY3ckk4TFBqU1FNUkpkYWt6?=
 =?utf-8?B?ZTduU2RWbzBpRTg3dFJOc1BYUTVyZHVDQ29FUE9jdEJPNTNLZmxjMVljUDNR?=
 =?utf-8?B?dFZqUEMwK0JYNXJZenBEQXp2dHl2dndMSHlDWmJwcC9CQjNrWHJqNGNoZzla?=
 =?utf-8?B?NWlYTzUzYktGc0FwK29IaGd4WGFYZzdiYWVweDRHNFRoKzc2aGV1R2RMVG9w?=
 =?utf-8?B?aG5sd25EYkQ1TVRzUFlZV0pHSHo0VEtGOG5lQ3JCYjVlTXR1SXMxVGRweExz?=
 =?utf-8?B?UGpmYW93eVlFZHVaNFFmRmtLaDM1aTJtN1ZQRjZYdU1zVWJ4NVM2YkMrQXBL?=
 =?utf-8?B?cWZoN1l2SjRGUmsvSVhiQ3E1MTVMUWxiWFFlSXh5NEpFbEF0c2EvOUhHMmlG?=
 =?utf-8?B?TU94QklGQkJDOUdCV1VrbXZyR0xSMG1NWWRMVDV2ZG91OCs4YitCQlQyeWx1?=
 =?utf-8?B?bGFYSEdrVjZLTS80akFPTnZHVzUrdDJZam0ybkw2blhHcFJYenFTTEFXSGpX?=
 =?utf-8?B?OGllNEhGeXhmVUNqN2ZVRDJ2MHo3bTdVVG5tTGZCcVQ5RDVoSXpacFlmYzlq?=
 =?utf-8?B?NEZmWDhKaEJRNW94T0YxWkNjY0NROXE0ODN5dHV6MVlBS0U1SkhpS0wyZzEz?=
 =?utf-8?B?V0ltTldGNmFYT29XdnREUjJhR2d5aCsxUCtiQjlWNlcwS25sWnE5Vkd1VXFS?=
 =?utf-8?B?ZDVUUlVNQ25Oc2V3MEwxcFZlQjBJZDRZT2x0VTRIb3NTUEVSeVJqdmR5Tk9R?=
 =?utf-8?B?RlNjbHZWZkZRWEVRUlViNGIxaHJLVXB1K2RES2pJODcvNDlzU3B1bjNsVHhZ?=
 =?utf-8?B?YWIvZGdwNDZKaDlPZFo5VW00b25LaTl1ZmNwWno3UDlvZDd0KzdMS2lKQ0F1?=
 =?utf-8?B?aDQvNXF0Y2x5ZDdkUWtZS1RQSktqWjk4RVpwdU9ob0FMMCt3bFk0N20ra1RC?=
 =?utf-8?Q?wobVSYNZa5OVXo94N411BWOA5?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63986e24-a3dd-4b88-f1c0-08dda868c9e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2025 21:50:17.3533 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hJxz2ekHo9jGFxCGS9PEyV9Bzv6sGI+sTscMoaq0u3AFsL8DjTFfnlVY1FCaEitPHWhCyCUuN8me0srXGCXBjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7874
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IE1vbmRheSwgSnVuZSA5LCAyMDI1IDc6NDEgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggdjQgMDUvMjFdIGRybS9pOTE1L2RzYjogTW92
ZSB0aGUgRFNCX1BNQ1RSTCogcmVzZXQgb3V0IG9mDQo+IGludGVsX2RzYl9maW5pc2goKQ0KPiAN
Cj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4N
Cj4gDQo+IFdoZW4gdXNpbmcgdGhlIGZsaXAgcXVldWUsIGR1ZSB0byB0aGUgRE1DIHZzLiBEU0Ig
cmVnaXN0ZXIgY29ycnVwdGlvbiBwcm9ibGVtLA0KPiB3ZSBtdXN0IG5vdCBpc3N1ZSBhbnkgcmVn
aXN0ZXIgd3JpdGVzIGZyb20gdGhlIERTQiBhZnRlciB1bmhhbHRpbmcgdGhlIERNQy4NCj4gQ3Vy
cmVudGx5IHdlIGFyZSBkb2lnbiBqdXN0IHRoYXQgYnkgdHJ5aW5nIHRvIHJlc3RvcmUgRFNCX1BN
Q1RSTCogYmFjayB0byBhDQoNCk5pdDogVHlwbyBpbiAiZG9pbmciDQoNCj4gc2FuZSBzdGF0ZSBm
cm9tIGludGVsX2RzYl9maW5pc2goKS4NCj4gDQo+IFNpbmNlIHRoZSBvbmx5IHBsYWNlIGxlZnQg
dGhhdCBwb2tlcyBhdCBEU0JfUE1DVFJMKiBpcyBpbnRlbF9kc2JfY2hhaW4oKSB3ZSBjYW4NCj4g
anVzdCBkbyBEU0JfUE1DVFJMXzIvRFNCX0ZPUkNFX0RFV0FLRSByZXNldCBpbiB0aGUgc2FtZSBw
bGFjZS4NCj4gDQo+IFRoZSBEU0JfUE1DVFJMIHJlc2V0IGlzIHRyaWNraWVyIHNpbmNlIHdlJ2Qg
aGF2ZSB0byBkbyBpdCBmcm9tIHRoZSBjaGFpbmVkIERTQg0KPiBpdHNlbGYuIEJ1dCBiYXNlZCBv
biBteSBlYXJsaWVyIHRlc3RpbmcgRFNCX1BNQ1RSTC9EU0JfRU5BQkxFX0RFV0FLRQ0KPiBkb2Vz
bid0IGFjdHVhbGx5IGRvIGFueXRoaW5nIGlmIHRoZSBEU0IgaXNuJ3QgYWN0dWFsbHkgZW5hYmxl
ZCwgc28gd2UgY2FuIG9taXQgdGhlDQo+IHJlc2V0IHRvIGtlZXAgdGhpbmdzIGEgYml0IHNpbXBs
ZXIuIFdlIGRvIG5lZWQgdG8gcmVzZXQNCj4gRFNCX1BNQ1RSTC9EU0JfRU5BQkxFX0RFV0FLRSBi
ZWZvcmUgc3RhcnRpbmcgdGhlIERTQiBob3dldmVyLCBpbiBjYXNlDQo+IGl0IHdhcyBsZWZ0IGVu
YWJsZWQgZnJvbSBhIHByZXZpb3VzIHVzZS4NCg0KTG9va3MgR29vZCB0byBtZS4NClJldmlld2Vk
LWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyB8IDIzICsrKysr
KysrKysrLS0tLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwg
MTIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmMNCj4gaW5kZXggMjAwNTU1YTllOTRiLi42ZmRkMzI0NjE1ZTIgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBAQCAtNjI5LDE4ICs2Mjks
NiBAQCB2b2lkIGludGVsX2RzYl9nb3N1Yl9maW5pc2goc3RydWN0IGludGVsX2RzYiAqZHNiKQ0K
PiANCj4gIHZvaWQgaW50ZWxfZHNiX2ZpbmlzaChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpICB7DQo+
IC0Jc3RydWN0IGludGVsX2NydGMgKmNydGMgPSBkc2ItPmNydGM7DQo+IC0NCj4gLQkvKg0KPiAt
CSAqIERTQl9GT1JDRV9ERVdBS0UgcmVtYWlucyBhY3RpdmUgZXZlbiBhZnRlciBEU0IgaXMNCj4g
LQkgKiBkaXNhYmxlZCwgc28gbWFrZSBzdXJlIHRvIGNsZWFyIGl0IChpZiBzZXQgZHVyaW5nDQo+
IC0JICogaW50ZWxfZHNiX2NvbW1pdCgpKS4gQW5kIGNsZWFyIERTQl9FTkFCTEVfREVXQUtFIGFz
DQo+IC0JICogd2VsbCBmb3IgZ29vZCBtZWFzdXJlLg0KPiAtCSAqLw0KPiAtCWludGVsX2RzYl9y
ZWdfd3JpdGUoZHNiLCBEU0JfUE1DVFJMKGNydGMtPnBpcGUsIGRzYi0+aWQpLCAwKTsNCj4gLQlp
bnRlbF9kc2JfcmVnX3dyaXRlX21hc2tlZChkc2IsIERTQl9QTUNUUkxfMihjcnRjLT5waXBlLCBk
c2ItPmlkKSwNCj4gLQkJCQkgICBEU0JfRk9SQ0VfREVXQUtFLCAwKTsNCj4gLQ0KPiAgCWludGVs
X2RzYl9hbGlnbl90YWlsKGRzYik7DQo+IA0KPiAgCWludGVsX2RzYl9idWZmZXJfZmx1c2hfbWFw
KCZkc2ItPmRzYl9idWYpOw0KPiBAQCAtNzgxLDYgKzc2OSw4IEBAIHN0YXRpYyB2b2lkIF9pbnRl
bF9kc2JfY2hhaW4oc3RydWN0IGludGVsX2F0b21pY19zdGF0ZQ0KPiAqc3RhdGUsDQo+ICAJCWlu
dGVsX2RzYl9yZWdfd3JpdGUoZHNiLCBEU0JfUE1DVFJMKHBpcGUsIGNoYWluZWRfZHNiLT5pZCks
DQo+ICAJCQkJICAgIERTQl9FTkFCTEVfREVXQUtFIHwNCj4gDQo+IERTQl9TQ0FOTElORV9GT1Jf
REVXQUtFKGh3X2Rld2FrZV9zY2FubGluZSkpOw0KPiArCX0gZWxzZSB7DQo+ICsJCWludGVsX2Rz
Yl9yZWdfd3JpdGUoZHNiLCBEU0JfUE1DVFJMKHBpcGUsIGNoYWluZWRfZHNiLT5pZCksDQo+IDAp
Ow0KPiAgCX0NCj4gDQo+ICAJaW50ZWxfZHNiX3JlZ193cml0ZShkc2IsIERTQl9IRUFEKHBpcGUs
IGNoYWluZWRfZHNiLT5pZCksIEBAIC04MDIsNg0KPiArNzkyLDEzIEBAIHN0YXRpYyB2b2lkIF9p
bnRlbF9kc2JfY2hhaW4oc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCWlu
dGVsX2RzYl93YWl0X3NjYW5saW5lX291dChzdGF0ZSwgZHNiLA0KPiAgCQkJCQkgICAgZHNiX2Rl
d2FrZV9zY2FubGluZV9zdGFydChzdGF0ZSwNCj4gY3J0YyksDQo+ICAJCQkJCSAgICBkc2JfZGV3
YWtlX3NjYW5saW5lX2VuZChzdGF0ZSwNCj4gY3J0YykpOw0KPiArDQo+ICsJCS8qDQo+ICsJCSAq
IERTQl9GT1JDRV9ERVdBS0UgcmVtYWlucyBhY3RpdmUgZXZlbiBhZnRlciBEU0IgaXMNCj4gKwkJ
ICogZGlzYWJsZWQsIHNvIG1ha2Ugc3VyZSB0byBjbGVhciBpdC4NCj4gKwkJICovDQo+ICsJCWlu
dGVsX2RzYl9yZWdfd3JpdGVfbWFza2VkKGRzYiwgRFNCX1BNQ1RSTF8yKGNydGMtPnBpcGUsDQo+
IGRzYi0+aWQpLA0KPiArCQkJCQkgICBEU0JfRk9SQ0VfREVXQUtFLCAwKTsNCj4gIAl9DQo+ICB9
DQo+IA0KPiBAQCAtODU3LDYgKzg1NCw4IEBAIHZvaWQgaW50ZWxfZHNiX2NvbW1pdChzdHJ1Y3Qg
aW50ZWxfZHNiICpkc2IpDQo+ICAJCQkgIGRzYl9lcnJvcl9pbnRfc3RhdHVzKGRpc3BsYXkpIHwN
Cj4gRFNCX1BST0dfSU5UX1NUQVRVUyB8DQo+ICAJCQkgIGRzYl9lcnJvcl9pbnRfZW4oZGlzcGxh
eSkgfCBEU0JfUFJPR19JTlRfRU4pOw0KPiANCj4gKwlpbnRlbF9kZV93cml0ZV9mdyhkaXNwbGF5
LCBEU0JfUE1DVFJMKHBpcGUsIGRzYi0+aWQpLCAwKTsNCj4gKw0KPiAgCWludGVsX2RlX3dyaXRl
X2Z3KGRpc3BsYXksIERTQl9IRUFEKHBpcGUsIGRzYi0+aWQpLA0KPiAgCQkJICBpbnRlbF9kc2Jf
aGVhZChkc2IpKTsNCj4gDQo+IC0tDQo+IDIuNDkuMA0KDQo=
