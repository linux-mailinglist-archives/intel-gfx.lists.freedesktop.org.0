Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF976A11BB7
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 09:19:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DB0410E17A;
	Wed, 15 Jan 2025 08:19:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mHvvmm1S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9491A10E09A;
 Wed, 15 Jan 2025 08:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736929157; x=1768465157;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i87/p5C1psBVta9XEU/2Odfpjjor7ebfF7+tDnAWm6k=;
 b=mHvvmm1SXo+DjIpJsbkP1cprxM5xhfw48MHSv2nDadj0sqVWOm2MKATa
 3IqzircmdJ+lD3/RQC22SaUrGXHqHf5tdy3HN52PZRAytI+P09DXxwkC4
 f9DzyZEhceL0s5EDhwzIr1PtARVia3XfXNcr8n8UbpGi/kCECt3hmYjCP
 x+HNM7tdVr9mDocfmVfArQKe6xAoKIjhPZMLp2Z2N7lLafv4HdWVTBuK6
 VOL0mKLlubovFg8H0zHuXM9CkG/9mr/KfJiAHD4d74nRnwPJ3Vj1PM3is
 j4LWonDom5O577HlorUmwmxtCyWqVLEYsqKdKDz2yrvfczn+hBjWfPcVu w==;
X-CSE-ConnectionGUID: GGac5t8LTDqausbUaaIxgQ==
X-CSE-MsgGUID: dxWkxsq6TRawHDhdSy+BHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11315"; a="48253124"
X-IronPort-AV: E=Sophos;i="6.12,316,1728975600"; d="scan'208";a="48253124"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 00:19:16 -0800
X-CSE-ConnectionGUID: hiYvxpqcS/eNSl5uFiJMOw==
X-CSE-MsgGUID: qGHOh3fNTfiwCzN+9FoG5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,316,1728975600"; d="scan'208";a="105138831"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jan 2025 00:19:17 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 15 Jan 2025 00:19:15 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 15 Jan 2025 00:19:15 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 15 Jan 2025 00:19:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zQE/s4TkX6UQZ8CUgvBcJKTmVcPQzNk/DD7VdiES0PEt2phLnHv0UNn5XB7Fr09eTg7eHMrLou4669uFcW8AL0gOQ+Xw4uEHzdBzp7Cj4AbHGUy/Br6tF/d/ZYCGCAvjClvps8VZHTp5JU/cpu7ABAbAwo4KjKotUjitrtCOO554QA6d398VhetS0n7grlkTEKX8w4EAlOD46yjGAEtljbO2ECg8/CAo3zDvtNvzcoG8WTF16VBO2B5UBkjSzBGIJdjOiywXXMLTiW0VCLaAvgVQk5cnKLhQi1BOU6t5XeE8Hmd9mRFybiF6ZTbglaTC04bsrT4AMqRHRNLJNk4iSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i87/p5C1psBVta9XEU/2Odfpjjor7ebfF7+tDnAWm6k=;
 b=asNNX89kthT6OXwM9DpbXeuVfnPeLgsjO2crRxq8gyEUFDqYy7kJup25jKvyB2fwVidzJ9XfdZ/hHByJZEYiy/VJpGI9dXAZk2NHp3800BZFa2uWfk8LqBhEfK5rgQWx8CyrD+zjwtYBtq/zgnB2pWVrbTBWszxKlSMw7YVBFJLSFM0eOTfjWF1TP4EyakxWDE+HgrVveXiRVdT1vo+cgb3p0R3mX+L0yBkk4+WZYqXqrJ6G8Sv3Hrc4G2WBSLPSTYZ8qqVRnVjgaojJb5+4wNkkv8aKIFIdUPgwmVlD6FD782igKKmC1KV9EJc4X2NbpaWbyarg2MdoScbPEUeqCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by BL3PR11MB6316.namprd11.prod.outlook.com (2603:10b6:208:3b3::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.12; Wed, 15 Jan
 2025 08:18:46 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%7]) with mapi id 15.20.8335.017; Wed, 15 Jan 2025
 08:18:46 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v3 05/10] drm/i915/psr: Use SFF_CTL on invalidate/flush
 for LunarLake onwards
Thread-Topic: [PATCH v3 05/10] drm/i915/psr: Use SFF_CTL on invalidate/flush
 for LunarLake onwards
Thread-Index: AQHbYmijmL2o4LSqfU+JPifLdYwZ0LMXh0Ew
Date: Wed, 15 Jan 2025 08:18:46 +0000
Message-ID: <BL1PR11MB5979945C2038198D1B0C3EB6F9192@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20250109073137.1977494-1-jouni.hogander@intel.com>
 <20250109073137.1977494-6-jouni.hogander@intel.com>
In-Reply-To: <20250109073137.1977494-6-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|BL3PR11MB6316:EE_
x-ms-office365-filtering-correlation-id: 9666b771-5b2a-4b82-9f54-08dd353d3b97
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?dVFMcG9ITThBWDRCQk9UbWVDcG44dkZ3NzA2RDVPcy81UkdsUVhVZ255elVP?=
 =?utf-8?B?OWFRNXE4ODk5WUR0SjJHR1JkVXZIbk9MV0IrSlFLL01sN1YwalcwcStMeE5N?=
 =?utf-8?B?elhOM0VmM3lIMlF5K1p2b0RlaFcydjUzSHJtMWxwY3Npd0liMXNrSU9IamJS?=
 =?utf-8?B?MDl2eXk4ajBNUkNsV2dJQUlXdGc5aEIzZUlyL3dzTEVkcE4ralRrL0VnSzd3?=
 =?utf-8?B?eWlJNll5VnRidmxDMjJDZkJMbG1hQ0ljNFR0RUdXNkVPNnhLUnM1QytmVjBU?=
 =?utf-8?B?YVRjcTFmUGlTMEd2ZGpOdld1M3lJVVRZbm5NZEZoQWxETEdyYkZmdTZwanlU?=
 =?utf-8?B?MUg1TDhUeUVyT1hlTEJzV1R2RCt0ZkJmNStIQWxVR0VVcmgvYkludlZpN1dr?=
 =?utf-8?B?WlNZMXIwUkd2cjBGN2prQm1SUjB4NGpxQXA4WU95UTZvRU95V2hLV3ZMQlRv?=
 =?utf-8?B?TEFEWWhBZGNxdEEyU1dnVFFIN1BhVmRmRTc0NThBN0sxcGR5ZDhPSlRyQUky?=
 =?utf-8?B?SkdrcGhCZktKNWV1Rk93bXJ1WVlscmVxcVQyYzF1bS9ndjM1cnRLMmNlZG1Q?=
 =?utf-8?B?VGlKSm9lWDVZU2tTNi9FSGhMbk9OcTdBSDlKZmNIQmFGQ1BzQTluMzFaK0tF?=
 =?utf-8?B?cG5pVHZhbk1BRTB0eWZSY1RDbEQvUTJGSkZrUE44Vk9tRUk0NXlVZHZsOWVn?=
 =?utf-8?B?dEcvMXB2dFgwU2VQcE5WT202S1Iwd01GWExsV1g0QnJiZktac3lrWDdoOXhZ?=
 =?utf-8?B?aFZ1bGJRRGl5c2d6S3FkaFp0OGFaUUl5aUYyc0MyMXlETTFUTzRiV3VGK3pL?=
 =?utf-8?B?MDUwWU81aDEwQngvQXE3TGRtQm1jRnoxZC92R1Q2YXdaYVh1MTBXeC9DcDRF?=
 =?utf-8?B?SXZrNHg0KytsZUFBbTJnSjhEcXJNY3FWNm9UM1RaRmxqY0RSQnk2SU5lQkFE?=
 =?utf-8?B?cnNRc3FaWldmME95RkJORGRpSTllR2VySURTQWNSekRXVWVsd3pXcDR5d1di?=
 =?utf-8?B?ZjMzWFczVFRlWUVGS0l1K2FLU0l1MXp1VXd5Qit5TGNzM0dvcU5TTmRZbThr?=
 =?utf-8?B?RUh2TnJ5T05JVUZRb29lMHcxck9EdDdFRTc2UnN4UU9menNGNzEyN3J2Q0N6?=
 =?utf-8?B?UWVFWlhFby9hT3RGeFdvdmZRSUxLWGlSYlp6YVJadDhiZUtYYVBBYXN3L3NQ?=
 =?utf-8?B?ZUJjYkdtd2dzVmxCVU1oU05hS29WU0V2VnNQemNtR0l3NWV3N25vMU04b1pY?=
 =?utf-8?B?MW9CRFBObm03akFoR2JHT2JUZXBvSVFTZXhDdmNvT3MxVHUyYVREdkc1QzFT?=
 =?utf-8?B?eUNrQjM4NkZ6TUNwUlBTK04rYi9TQkxURmNHUFhXckZyWHR3S2lqS2RCUnNx?=
 =?utf-8?B?Rm4zTU1lV01qVzhsSzIwYjBlbzkwVEtHcDNidm1XT2FQd1l5NllnWEZRWWFz?=
 =?utf-8?B?aEhUbDR0bG9aVEgwazBJZEtQZkRaOHFrMUY1Y0tiMTA3QU02U0lPcHF1MHNy?=
 =?utf-8?B?U3RKMEtRdEtMM2hEMHQ0R2xEWG13YW93c1FZTXVDcEJ6T0JPYms0RXpsbS83?=
 =?utf-8?B?bjZGc1hLWTV6WWhkbGM0K3R0N3R6a2d6SE5IRG5SVjZEUTBjQzc0Q1Y0cThZ?=
 =?utf-8?B?WkFhSzlyWURGRVVnbG5UWFNxSWlRakNPdFAzZG44Y1FwbmxyVDN0a3FSK2k0?=
 =?utf-8?B?QVhRRWxWTUlGSXVUUkF5d2dINnUxaWpmUWZ6SXRpVTdzYWF1VkNZYm5YUDdt?=
 =?utf-8?B?VnJxMnV3UlFnbVhKYUppVlZhTXRnWjE3OUpaRVRyMG9uVjZvK0NKbW9XTWsr?=
 =?utf-8?B?ZmVRWUNoNGU4VTRaUEhoOGVRQ0tpWlVGTVcwT3g1VVNsYVJZK1FhQTNrTllx?=
 =?utf-8?B?QmdUc3VmZlh3bVd0MTZiZGVnVmNrMHJwNVhFNCtlSC93OVlGT2ZhMDVyZCtk?=
 =?utf-8?Q?8uGA/MorG1zeYOT2jE+uYsLQIFkl0uxM?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UzVWZVgwWHJyMEpLL0dtOUpuYlZDS3llOTJwcUtrcEpwSHFESDNSY1hRd3Bn?=
 =?utf-8?B?ZWNiWk9PVUxGUFBCK3hNZytrU0VSdGh3L2Izd3BpckFwUTFKWmhYK2dzSW4v?=
 =?utf-8?B?b0VCUVZqU3ROVHZybi9CN2taRDR2TFFNOTNTbFdPZGlxNnBaTjVIYlNOYjhK?=
 =?utf-8?B?RHZOWHduMHBIMWVHZlVRSjkySThKemt2OHA0eHZiekVhUXVRQ1JFTkM5Sjlo?=
 =?utf-8?B?VG1ycjFQd2dJOUloL1UzbHR1bFhTODB6L2hGR04zVytRQUM2bXBpMDRoL3Bx?=
 =?utf-8?B?Q0ttMnNoY2FXd3h5ZnlDeSs1ZGo2Y0lwZjdmQ0N5L2JlZWNyY0p4NkdDVzBj?=
 =?utf-8?B?RUFMdmJHZTE0bXliK2lBeFhDRWJTZlZBbmVGYUE3R09YdzljcFBVcnNRdXRm?=
 =?utf-8?B?NmRmUUdFZkVreGlaZ09vUkppdE5wdVBPRDdSZm9vYU9EKzBNODJBUmFwZHo2?=
 =?utf-8?B?aVNpS3VXbEZMS081WFNJMlY4NkhsSjNCRnZ3b3NHYzZEYzVsZU5PNGNZNmxV?=
 =?utf-8?B?VURtN2syY1djL1VzUzJvOU5xbVZNMVltYzUxK2U2ZnFNRkNLYmROcEJKcm56?=
 =?utf-8?B?dEtNTjVQOHpsN01XMGN0ZllJSlBxQjhub2daUTk3bUl0QmJOcXRSdEhqVUM0?=
 =?utf-8?B?YzJwQTAwOVRxdGlIVnUrc3JBWTA1aEo0bldGc20yQXg0TVZDb2MxMk4rTVF5?=
 =?utf-8?B?d1RsNWVHMDlyM3MzMWJtNklYL3VncGJneXRMNXNUS2pYMU5lOVoxMjNkNDlQ?=
 =?utf-8?B?L3JSUzEzRlRENVlFbjR2UnJPYmpTemVEWUJtMFRmb01jNHg0eURLeGJQcmNh?=
 =?utf-8?B?ZkRFZnYzcG50YkoyK0N3U1VWTnZSY3JFMk14dUNSeG5LSkEyTFpsZnFRM2Ru?=
 =?utf-8?B?TzNsTGdXa2hNYjNtdjNhbHFub3BhNElpdkhVUS8wcGI0V1hDVDBuSWZuUUVk?=
 =?utf-8?B?RUE2YU1MNm9DWmR0bUZHYW16ZWl1RURGK1JQUWIzSFpBYVBCcEt5bTFrUHZE?=
 =?utf-8?B?ZWRpVkVGQ2JNamNmN21BNkZMRXBMNGhDdysrSkNpQ2QwRGJ1VStoUjVsd0g4?=
 =?utf-8?B?dXpWRnNQK2YveTN2TjhjY09XMXdFYUhIRFBOdUdOYzFiREpHR09qRllqRml5?=
 =?utf-8?B?dCtMOTdCb003VHNsbnpuMHNlQWdWYUFhdEp2a2g5c3NJelRwTUc0cllwMEtJ?=
 =?utf-8?B?cTU4WmphR0IxeHRUczhrbW5QWVMralU4RWttMEVhZk5JeXB4aUVzTkNwL2JX?=
 =?utf-8?B?M2gxUW9uQ1ZTcFZmb2VCMGhLSmRmeWwvSXNhNmVNdlVCVEw1OWFOVUZySjEz?=
 =?utf-8?B?bjF0c3dkZ2h6Y2hPRzBZOWxFR0Rmekh0b3g2eTdqdUdzNHdKNHA1YW1YZW5U?=
 =?utf-8?B?SCtUb3Zuamk2MUZQeXdmYWZXcWoyeGcrSnYvZERvZHNadjhBaDFNVUpLMk5k?=
 =?utf-8?B?L3pXcDlFdG5jMlFOMENteWdFYUhGcWtxNHM5ZmpUUGxSWkdFQnJqR0JBYnha?=
 =?utf-8?B?UEJoMzZMenNJTElIeDk2dTBiU0hpUmU2bGtXSGZKL1Y0V0tQT2poT0toQVBl?=
 =?utf-8?B?UlBhdExLa0U2UytVbENPck1SajlzWDdwb0JFTTFrcGhKOTR5cmp2NXovcE94?=
 =?utf-8?B?ajhxRGFCanJuQkZVdTBqKzBWNkFjdUxrY29VL3g4STZVaEFiVkZZaFJRTkFL?=
 =?utf-8?B?aGpXYk9VaWIzWC9rM3pwbjNZcnVsRmxUMmJ4Z2QxMW1HdWV6UDdIN08vOXBQ?=
 =?utf-8?B?MjJGMzkybCtCU0JqZnJGNlhZdUVGYjZWT3c2OHBwbk5ob3d5eXkxODQrbHkw?=
 =?utf-8?B?S1NOcFYrbDNBWXdDRFhZaS9tZnRRMFR2c2hVeGV4RHBTNS9BSENGMDJreXVN?=
 =?utf-8?B?aEFlNmRKc21xZ21GYnNvOHVjTnlEMTYwb2RIekcrclY4aC95NEJBSTdCYjdj?=
 =?utf-8?B?TU5Sck5qdjBDd2JpajY2YVM2MzZjNUFzbENBK3Eya0cvcnU3SmRFY1FYaFR0?=
 =?utf-8?B?WEFCQUV0MEkzOXlKM3hWT2lOVEJ2WlVsQVYwKzA2cm84Qi9FR3Q2VmtNQm00?=
 =?utf-8?B?bUMzR0VsQmh0N1AyU3lZY09SeENaaXdFaUxocFhvN1JrMi9mdmowcGNwTnpk?=
 =?utf-8?B?clJQSlowdm9aWEQ5QzdQQjE1WWJnTElsdXhiZDZVM3Y4N3htTk9HL0JHcVFw?=
 =?utf-8?B?cHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9666b771-5b2a-4b82-9f54-08dd353d3b97
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2025 08:18:46.5140 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VViczUTjfNJ+mAJ1vh3VdVAihRGbwg9NQk1RTPu/D8ARpAJyBZr+UDj4sIqHJUeuEkAj89KlpECBnOG76Wmh/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6316
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0K
PiBIw7ZnYW5kZXINCj4gU2VudDogVGh1cnNkYXksIEphbnVhcnkgOSwgMjAyNSAxOjAyIFBNDQo+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDUvMTBdIGRybS9pOTE1L3BzcjogVXNlIFNGRl9D
VEwgb24gaW52YWxpZGF0ZS9mbHVzaCBmb3INCj4gTHVuYXJMYWtlIG9ud2FyZHMNCj4gDQo+IElu
IEx1bmFyTGFrZSB3ZSBoYXZlIFNGRl9DVEwgcmVnaXN0ZXIgd2hpY2ggY29udGFpbnMgU0ZGIGJp
dCBvcmVkIHdpdGgNCj4gcmVzcGVjdGl2ZSBTRkYgYml0IGluIFBTUjJfTUFOX1RSS19DVEwgcmVn
aXN0ZXIuIFVzZSB0aGlzIHJlZ2lzdGVyIGluc3RlYWQgb2YNCj4gdGhlIGJpdCBpbiBQU1IyX01B
Tl9UUktfQ1RMIG9uIGZyb250YnVmZmVyIHRyYWNraW5nIGNhbGxiYWNrcy4gVGhpcyBoZWxwcyB1
cw0KPiBhdm9pZGluZyB0YWtpbmcgcHNyIG11dGV4IHdoZW4gcGVyZm9ybWluZyBhdG9taWMgY29t
bWl0Lg0KPiANCj4gV2UgZG9uJ3QgbmVlZCB0byBzZXQgdGhlIENGRiBiaXQgYXMgc2VsZWN0aXZl
IHVwZGF0ZSBjb25maWd1cmF0aW9uIGluDQo+IFBTUjJfTUFOX1RSTF9DVEwgaXMgbm90IG92ZXJ3
cml0dGVuIGFueW1vcmUuIEkuZS4gd2UgaGF2ZSB2YWxpZA0KPiBjb25maWd1cmF0aW9uIGluIFBT
UjJfTUFOX1RSS19DVEwgYW5kIGluIHBsYW5lIFNFTF9GRVRDSF8qIHJlZ2lzdGVycw0KPiB3aGVu
IFNGRiBiaXQgZ2V0cyBjbGVhcmVkIGJ5IHRoZSBIVyBpbiBjYXNlIHNvbWV0aGluZyB0cmlnZ2Vy
cyAiZnJhbWUNCj4gY2hhbmdlIg0KPiBldmVudCBhZnRlciBTRkYgYml0IGlzIGNsZWFyZWQuDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT4NCg0KTEdUTS4NClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5h
QGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMgfCAyMiArKysrKysrKysrKysrKystLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwg
MTUgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCBlNmY5NmE4YjRmYjAuLjg1ZWNlZGQz
MTYyZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
IEBAIC0yMzQ1LDcgKzIzNDUsNyBAQCB2b2lkIGludGVsX3BzcjJfcHJvZ3JhbV90cmFuc19tYW5f
dHJrX2N0bChjb25zdA0KPiBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdA0KPiAgCQlz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0KPiAN
Cj4gIAkJbG9ja2RlcF9hc3NlcnRfaGVsZCgmaW50ZWxfZHAtPnBzci5sb2NrKTsNCj4gLQkJaWYg
KGludGVsX2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hfY2ZmX2VuYWJsZWQpDQo+ICsJCWlmIChESVNQ
TEFZX1ZFUihkaXNwbGF5KSA8IDIwICYmDQo+ICtpbnRlbF9kcC0+cHNyLnBzcjJfc2VsX2ZldGNo
X2NmZl9lbmFibGVkKQ0KPiAgCQkJcmV0dXJuOw0KPiAgCQlicmVhazsNCj4gIAl9DQo+IEBAIC0z
MTE4LDEyICszMTE4LDE2IEBAIHN0YXRpYyB2b2lkDQo+IGludGVsX3Bzcl9jb25maWd1cmVfZnVs
bF9mcmFtZV91cGRhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAlpZiAoIWludGVs
X2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hfZW5hYmxlZCkNCj4gIAkJcmV0dXJuOw0KPiANCj4gLQlp
bnRlbF9kZV93cml0ZShkaXNwbGF5LA0KPiAtCQkgICAgICAgUFNSMl9NQU5fVFJLX0NUTChkaXNw
bGF5LCBjcHVfdHJhbnNjb2RlciksDQo+IC0JCSAgICAgICBtYW5fdHJrX2N0bF9lbmFibGVfYml0
X2dldChkaXNwbGF5KSB8DQo+IC0JCSAgICAgICBtYW5fdHJrX2N0bF9wYXJ0aWFsX2ZyYW1lX2Jp
dF9nZXQoZGlzcGxheSkgfA0KPiAtCQkgICAgICAgbWFuX3Rya19jdGxfc2luZ2xlX2Z1bGxfZnJh
bWVfYml0X2dldChkaXNwbGF5KSB8DQo+IC0JCSAgICAgICBtYW5fdHJrX2N0bF9jb250aW51b3Nf
ZnVsbF9mcmFtZShkaXNwbGF5KSk7DQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDIw
KQ0KPiArCQlpbnRlbF9kZV93cml0ZShkaXNwbGF5LCBMTkxfU0ZGX0NUTChjcHVfdHJhbnNjb2Rl
ciksDQo+ICsJCQkgICAgICAgTE5MX1NGRl9DVExfU0ZfU0lOR0xFX0ZVTExfRlJBTUUpOw0KPiAr
CWVsc2UNCj4gKwkJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwNCj4gKwkJCSAgICAgICBQU1IyX01B
Tl9UUktfQ1RMKGRpc3BsYXksIGNwdV90cmFuc2NvZGVyKSwNCj4gKwkJCSAgICAgICBtYW5fdHJr
X2N0bF9lbmFibGVfYml0X2dldChkaXNwbGF5KSB8DQo+ICsJCQkgICAgICAgbWFuX3Rya19jdGxf
cGFydGlhbF9mcmFtZV9iaXRfZ2V0KGRpc3BsYXkpIHwNCj4gKwkJCSAgICAgICBtYW5fdHJrX2N0
bF9zaW5nbGVfZnVsbF9mcmFtZV9iaXRfZ2V0KGRpc3BsYXkpIHwNCj4gKwkJCSAgICAgICBtYW5f
dHJrX2N0bF9jb250aW51b3NfZnVsbF9mcmFtZShkaXNwbGF5KSk7DQo+ICB9DQo+IA0KPiAgc3Rh
dGljIHZvaWQgX3Bzcl9pbnZhbGlkYXRlX2hhbmRsZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
KSBAQCAtMzIyNyw2DQo+ICszMjMxLDEwIEBAIHN0YXRpYyB2b2lkIF9wc3JfZmx1c2hfaGFuZGxl
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJCSAqIFN0aWxsIGtlZXAgY2ZmIGJpdCBl
bmFibGVkIGFzIHdlIGRvbid0IGhhdmUgcHJvcGVyIFNVDQo+ICAJCSAqIGNvbmZpZ3VyYXRpb24g
aW4gY2FzZSB1cGRhdGUgaXMgc2VudCBmb3IgYW55IHJlYXNvbiBhZnRlcg0KPiAgCQkgKiBzZmYg
Yml0IGdldHMgY2xlYXJlZCBieSB0aGUgSFcgb24gbmV4dCB2YmxhbmsuDQo+ICsJCSAqDQo+ICsJ
CSAqIE5PVEU6IFNldHRpbmcgY2ZmIGJpdCBpcyBub3QgbmVlZGVkIGZvciBMdW5hckxha2Ugb253
YXJkcw0KPiBhcw0KPiArCQkgKiB3ZSBoYXZlIG93biByZWdpc3RlciBmb3IgU0ZGIGJpdCBhbmQg
d2UgYXJlIG5vdA0KPiBvdmVyd3JpdGluZw0KPiArCQkgKiBleGlzdGluZyBTVSBjb25maWd1cmF0
aW9uDQo+ICAJCSAqLw0KPiAgCQlpbnRlbF9wc3JfY29uZmlndXJlX2Z1bGxfZnJhbWVfdXBkYXRl
KGludGVsX2RwKTsNCj4gIAl9DQo+IC0tDQo+IDIuNDMuMA0KDQo=
