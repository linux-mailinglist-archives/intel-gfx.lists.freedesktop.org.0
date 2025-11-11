Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44222C4B791
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 05:41:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B975B10E335;
	Tue, 11 Nov 2025 04:41:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WyyychIk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3872C10E319;
 Tue, 11 Nov 2025 04:41:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762836078; x=1794372078;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Tdkc3Fme0HYfJdjJc8dYl/ueVOPQetBXi2svI3sHuyM=;
 b=WyyychIk5rLCWVfDA6P424yiTm2Gf3+H2oJCIiywqCEnk04jlXF9MpYZ
 0+r3Ay40OSRQU3x5da71UroFbyVWH9iXXNgZbWhjA4iJGdvyjZBAQ1iH4
 lbkVkO4n6I2Gv7JEkxeabWLo5Yx1jc1Fi9JVSLCarTU0479mo0JcBLzrU
 SVgcc/R52ZxQ3gp2BD9dHp1lj/cp4VBlzWoFKASTD5LDhAtoYhIhmY/o1
 U5hap6xhzelCR5MLGzD/rguPknZeLiPh5h9SdkL6aZ/2K009llIBeUAns
 6wjeB6n5O6w8lz25tcR540AVSAWowLm0EHSQSlXJKrGEmT+DqJxNjZnMr w==;
X-CSE-ConnectionGUID: Edf8xVXpRkaXOqqbFSyY6A==
X-CSE-MsgGUID: U7TUUdBVTnWVYy3+JZzhbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="90364379"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="90364379"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:41:18 -0800
X-CSE-ConnectionGUID: PLM1oSRLTuKtHY58f5IMqQ==
X-CSE-MsgGUID: EHIl0L6oQn+dHeflbBkpng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="219512119"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:41:17 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:41:17 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 20:41:17 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.0) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:41:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ntCOvc2rqoX9fCWe4p/bdHYKppzfK5qvtzXSe/GOibNVQqdRTU6tVte0CnxsI3p+V7wTz3FVl7QRbKsXyDXcbodJj6Z9RlgSjD1Xf6TEfbaYdlGB5KVXLeE8kiS/Co4Du61VyepDI7P4F/e3VUK1RmCOMRM8QiKBHdryKdR3/v8FUsFjeJeTjwFUoTsl0d0p0NqHGmOFmo1uhe0033SJ98e4b3kE2TmPiV3Y9UAyXZ5hscMve+o51N1Ob7V6HL8UV24UJU4yQbnGCxYUL3pOjrUKyja+4ctVZVbOZNA4tCZif8QzjUErDjC/L0mxBr9tMpGKNd4GZLrFvahvzjFKhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tdkc3Fme0HYfJdjJc8dYl/ueVOPQetBXi2svI3sHuyM=;
 b=exN4wgJH77iUZ2N0dJcEnUiYVKleMtszvrRmACfBXCAvhNtm5YajK3JW1fe3XOPXIV3ONfDKMyoUPn5jUHgb8jpA/ga+Mt/B4lToqmjnOZaj+Ida2Y2ShQhZSrcU6UH0TXR2/XAtPeTEH+RA1xROXZV4iOjINEAmKzmM7D2I3lpwS5geRw8eXuwNxaUcKOR3JApqlre2UDuoIfAyhzGgbLXrkbvJa0DQRqCADbsVh/jYM1YGskM0dAofTevohraQlgI8oOOqZKXGf1tx/eqP00duJmH3ppLDj1UQGIMQQbulBhejs4Er/V39Bgi71X9z3NXLsVZ8i7eYgZW4w5beLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by PH7PR11MB6402.namprd11.prod.outlook.com (2603:10b6:510:1fa::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 04:41:15 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 04:41:15 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 11/16] drm/1915/dpio: Stop using intel_de_wait_fw_ms()
Thread-Topic: [PATCH 11/16] drm/1915/dpio: Stop using intel_de_wait_fw_ms()
Thread-Index: AQHcUmoWr7+SJLlwRkeJNI7tJL0eV7Ts5dfA
Date: Tue, 11 Nov 2025 04:41:15 +0000
Message-ID: <IA3PR11MB8937B6ED745543317D9309E1E3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
 <20251110172756.2132-12-ville.syrjala@linux.intel.com>
In-Reply-To: <20251110172756.2132-12-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|PH7PR11MB6402:EE_
x-ms-office365-filtering-correlation-id: ed310343-766d-4604-0521-08de20dc8c72
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?L3huV1pDNUtYZm5EK0tNNVhNQ21pYnpFV2QxMXFVVXRjZmc5azhVNDVaSy9T?=
 =?utf-8?B?RjdKazdSVE1BUWtsK3hGQ1dHUnloV2ZXK2hJTW4zdi90a1RFMXptSGFBUUg5?=
 =?utf-8?B?S1pGUUU1UG15Snh0QlNHUFI5cUJ6UGJ5dGVIRFlhREdEcFJVUVVuWjFJSzYz?=
 =?utf-8?B?VzcxTUtvcEFMeVc2ZzNuaDAzNTBURU9keDJteEYyL0JaUjJxdVFCYXg1VkRo?=
 =?utf-8?B?WkRTSjdYWDJPajlydzBTV25QVTExVGF1QUdKMXRnMnY1UDc1RXlVZmk2U2xR?=
 =?utf-8?B?cWY3Q2wwcG5ZZHkveUVBejBhTyt5L2V3eEJiZmgyemdyc2VPcVA5TzVXWFFu?=
 =?utf-8?B?V0pPcm82N3Jib2xqT3piTmF6L1RGZkFqWmphV3VUdjlJVWpjZytyMzgyR1NP?=
 =?utf-8?B?UXdRR2pBb0lNTHE0QmV3eVhYRytONEVGdEFaWGZRT2xOa2l3M003Q3ZKWjBo?=
 =?utf-8?B?WVBPRlhJNVQ0ckRENHhTYnBxL1RjUVBKaEY1bWNuK29ISjNsVzJHcWVydkh6?=
 =?utf-8?B?WEZXLy9pekR2YytidHNQenVLUXdLVWJjdUZ6U21oSGxZYU5RZEhQSnpJUzB4?=
 =?utf-8?B?YWx1bkZTQVRabGRvSEFHZzI2ZXlmekE5ODZHVGE3R2RuQ3FMc2JEdXNDaDg0?=
 =?utf-8?B?UjJNa3g4UG9JaVpOTUhjRmRSRlovQVdEWHNIcFoyVFYyTXhwcVY1dVJYVU81?=
 =?utf-8?B?VlRZVmc5UGxnYmxCbXJERUJ2eG8wbC82aDlZbkhmdXdjUzBjb0lNNUJxalF6?=
 =?utf-8?B?dFFnQmVhYnBVbCtkd0N3M1FiMCt5SzAzY0RKSVMrZVM5aHE3d2RHMWRHQmc0?=
 =?utf-8?B?bi9mSzlldjIvQ0RCb0JQc1VKM1I2ZXl6aDRyd2lqSmZCejFpenlpVzl1Z284?=
 =?utf-8?B?MVV2eFhpOGFVWWZ4bDVvL3lKSEU2TWRxMXNoQlpEZ3JZWUJ5ZTllTHJUZmJh?=
 =?utf-8?B?NEovTlRUV0JHWDcwdzd3TzlBbWdEVG40YklQT1BxbTlQN0xQWWxpQXo1eWkz?=
 =?utf-8?B?YUp2OW8xMjVPejVENGVqRGZRQTc4NW1GMzV5VlVQMUh4cEZ5d2NXN0R4YlNW?=
 =?utf-8?B?c211ZFcrRkljd3ZZdHg0MUEvNG9rOXBOY0VRaGNqNU1YREJBa25JV29rSndV?=
 =?utf-8?B?bHp5eU5FZUVMSHQyN2pseU1acDhuR3RvdnNkZWxsOEhpdEZSQno4b3FVYjlG?=
 =?utf-8?B?Vkh3WUtUTzI5TFUxSENmTVA4T3lMRWZKZ0JZQUFxSE1pU3VqL0NER1ExV2ZG?=
 =?utf-8?B?SlhSaUxOVWlGd0hjN2NpRThNejljbTNMNStkYkxZdGVvU2JOYWJQMHlyRnBZ?=
 =?utf-8?B?OFg5a0NERGN3UGE2Rk5jZzAxcnhDc1FMTHQ3L0NzRG1aa3pQSndNelZvOEU2?=
 =?utf-8?B?bC91eHBRWWN3c1lER1QyY0lRM1pqK215ckp4UnlYV3JWSk5IQ3dXSmE5VkZU?=
 =?utf-8?B?OWdVTlhIdEdNNlh3M1JLOVFqL3lCU2xSTy9lSjF6LzY0OW5wL1FhT1lZSjZE?=
 =?utf-8?B?NVAxSW9kcDM5dmlwaUhYVEpnVS9qRDdkbHdZS3lGdlFUeE1mK3hsTjF3VzZh?=
 =?utf-8?B?amxrK3poaTI1UERTdVF4VmdnQjF4eHByc05pbTV5TGpXT2V5c1BuZmFIdHY1?=
 =?utf-8?B?a2FkODZDaHhSSmY4ejlSOG5jU0RXdFZBTFhVSzIxZ0lOTFJ0MDRtUEpWcGtw?=
 =?utf-8?B?TGZ5enl6RC8wT1A3bGh2TDBRWk5vNzY1WlZCTW9IVGlXQVIwQ25NQWxydHRz?=
 =?utf-8?B?MmdxdUtFejlIakNPcUVlcDRxRksxN1gwVTYweGh5YWFsVVloRjlvTVAzYjcv?=
 =?utf-8?B?cXMvVUp6eVphdjNESDZzN1UrUGRveXlsOFRiQ1QvWmU2RHNMRmxpbG82Zm9V?=
 =?utf-8?B?a29yNE9pOGZoM1BpR205OU1HMVArekx1NndtUEZIeFM0UEtZc20rU1RUTXpi?=
 =?utf-8?B?dFFvUVY4dGdWWXZMM0s1dmhqdDhheGNUWVNZK2FvcU1pR2lKbkk4U1pFYS9T?=
 =?utf-8?B?SGtiTkdPQ3Y0aTFTMk1uMlljNXpSNWtOQzl3V0tmZEdHRllTcVZoUG54cS8z?=
 =?utf-8?Q?uTqGXl?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NE8vQnZteUdDQVRUREZGR2d1cDJyb2prMkpzdVJlQldjRklQaHNFM3N6a3dC?=
 =?utf-8?B?YVNOUnFIdTA2QnJKelVqOGVob1dzZktoV2pBVkFCMzh0NzF2UU0vSENxYS9X?=
 =?utf-8?B?Q3pzMERDZTZZSEVPcW5NTGhQM3V5QlZEQVQxc2lxSFl3VGtFa0xYdGl4QmFL?=
 =?utf-8?B?NG5wTC9talBGM3JuTWNOSTVOSHRVTjJOMXdaZE5VRG11akZlRmFCdzR5Z056?=
 =?utf-8?B?SkQ0YzFRZUtnYXJ3bTNlTzlNcnRYd2ZZYUxvOXp3RTVXS0dlSDhPZVZLZzlr?=
 =?utf-8?B?bjJ4TmxUOTIweXZMT1FqK1BWa0M3RGJPUXF0NEo1TGhwdWIwSDIvYXdNK21r?=
 =?utf-8?B?V2xCTDh5U3MvNXJQNTkvVUM4V09yeEU4bnh0SWxZUGhiQXhNOFdobDFhdzBj?=
 =?utf-8?B?TXJtUVpEdllzN2hoNlNkeXNjMzU3VE1IdGpnSERudGFjNlk5SDc5ZXdVaEt3?=
 =?utf-8?B?ajBzbHdiTTJVSEUvMVdoY1FSaTljeHVsQVoxVFdtT0I2L1RxZDg1MkFSamh4?=
 =?utf-8?B?NnVhWTAyRkJ5WWx3M1hZTDAwWDRZRnRhZkc1bmpMeklEY1U5OThrak4wSlVz?=
 =?utf-8?B?RmFSRmdmanZzVzdQYUsybnprczQyYkZXMFV2UTNsTXZBRzNMZE9mVHhTK1NX?=
 =?utf-8?B?YnJabTFwZTVqdEs4Q0VpaWxWQlFoRzNnQ2tPZTVFdzZxbTJsMytkVGI1OHpt?=
 =?utf-8?B?TlVjdUFGaEtRdm9UM3dDU0Yya1NZNlN1aGNQUWhwTzB2a2x6T1l4dWFUN1FY?=
 =?utf-8?B?VFZ1SWhIcHVFbzBnNnZ2WnpFUFBjbHMrQTd0MllsWXpIMmZFbEtjQlV3cWRy?=
 =?utf-8?B?cUUxanhIcTZuOVJTbXZYdXFacEIrdHJlb2dLaW9QYmxNT3ZoQURwOCt1QmdH?=
 =?utf-8?B?VlcxeUxiaUZZK0JWYXNpdEpvYXc4SjBac0ttcWI5eVlMYzR1TXpPTUtybTJD?=
 =?utf-8?B?OXlRTVUvemcyZjBoc2lDeHNjT0pKbGFwaHdQUWNhaTIydjVWaTI3emtMRnpw?=
 =?utf-8?B?RTVpSnVTYUZvdU95MngvVGVaRXlUN2NXdHNsd3BNa1IyYy9FS0tVNkRQcEtP?=
 =?utf-8?B?S1hYOUwxb09SdmU5emE2V1FEZUxKZExxMUIwYnQ5Z3VnNlBmazNDaUo0Y1hJ?=
 =?utf-8?B?V3NzZG8rZ1V5T3dSRW9MYXlKUWFuMkZmZ3pScU5jY3FlNGQ0bERZYnBLcysw?=
 =?utf-8?B?VHVUcGNoRnZMdW91T0l4T2VNandEdldoZVloUWtDUDZQdjQ5eFRwV3JZSnVO?=
 =?utf-8?B?amxlenp6U1JTZEFEMjhjd0crblhsdUZOTkJqek5LOXZTbjlwOThJRHpSaVAw?=
 =?utf-8?B?VENJdkcxN0cyUks4MjhaVjNMbURYUmVycEtJeXR4S3UzL3NCNXAzSHplb1RD?=
 =?utf-8?B?dllIei9vRUwxRmd3aEpuTXJZMi9MQTRCMlEyZGpsNUlYWkVPWG5wd1hZN3FW?=
 =?utf-8?B?YU8yeDFBWmlUQXdZNkk2czFjT1pBcnF1Si8rQmRueGlPY0lPUXFvVUNycmU1?=
 =?utf-8?B?YVVhT3JoSFF5ZlBBdThDV1lyUXNFb1VPV1lnQ3VQb0tweVZIWE9wOEkwNitp?=
 =?utf-8?B?ZXdYdnBiUzhENkUwK0I2aW02bitzTGlNRjZqSWRpRHJHS2xWZi9wenV5a2h6?=
 =?utf-8?B?Vnp5UzJ3WDJGWXBQT2laV0NyOVFlQ1AwRTJHSGxUNVY5cFNqRmVmbHZ3eC9V?=
 =?utf-8?B?WG8yaTg2ZkFNeGtYUDM1dnZyRHY0c0ZIeW50K1FuTFhYUjhxbmF1dTZoQVdT?=
 =?utf-8?B?R3hvdys5NFNCbXFxSzZ6bTRUWHRBUmdGZTZQT0QxK2xQK3ZCeWFBTzl4cDFw?=
 =?utf-8?B?bUF6OUozNktkbjU3ejlocEw0NVZqczhISFhRWGNaWXhOWXpTVmlmd3VzRG1x?=
 =?utf-8?B?Q1ptdThFUURhOHpXMXNTTzhLQUdaZi85NDJoY1hxZ3pFYVBVK1RpVjFyM2lY?=
 =?utf-8?B?WXNEbGFKaDAyMmFrc1UwaGNicHN3amVjYzExNXdraGF1TmZ4QmFWeXhZWGhY?=
 =?utf-8?B?NmtLNGMvZHN4OG5ZaDZlNjJZU25jc3RQQ0dRUHl5aVc0Z0RTOHN5QnRxVkMy?=
 =?utf-8?B?Z1FTMG9WR0ZScW1OS2ZIV00zdFJFay9oZi94eDROdjZNenRLN245V0ExQ1ps?=
 =?utf-8?Q?cNzCIkcMkrjw9XhHKPoVbCaa2?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed310343-766d-4604-0521-08de20dc8c72
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 04:41:15.4020 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LcH06G4QVADE/lYiYBkTVTeiC0lOvCDalFMhDei9yvJTLDCM8dOtoMBNghXD1GS3kBe8lyBsoimbPl1DU36ssg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6402
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

PiBTdWJqZWN0OiBbUEFUQ0ggMTEvMTZdIGRybS8xOTE1L2RwaW86IFN0b3AgdXNpbmcgaW50ZWxf
ZGVfd2FpdF9md19tcygpDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gX2J4dF9kcGlvX3BoeV9pbml0KCkgZG9lc24ndCB1
cyB0aGUgX2Z3KCkgcmVnaXN0ZXIgYWNjZXNzb3JzIGZvciBhbnl0aGluZyBlbHNlLA0KPiBzbyBz
dG9wIHVzaW5nIHRoZW0gZm9yIHRoZSByZWdpc3RlciBwb2xsaW5nIGFzIHdlbGwuDQo+IA0KPiBT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPg0KDQpMR1RNLA0KUmV2aWV3ZWQtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxA
aW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcGlvX3BoeS5jIHwgNCArKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBpb19waHkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBpb19waHkuYw0KPiBpbmRleCA0ZDFiNmUyYjkzZGMuLjdiN2EwNDYxZGEzNiAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGlvX3Bo
eS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBpb19waHku
Yw0KPiBAQCAtNDI3LDggKzQyNyw4IEBAIHN0YXRpYyB2b2lkIF9ieHRfZHBpb19waHlfaW5pdChz
dHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSwgZW51bSBkcGlvX3BoeSBwaHkpDQo+ICAJ
ICogVGhlIGZsYWcgc2hvdWxkIGdldCBzZXQgaW4gMTAwdXMgYWNjb3JkaW5nIHRvIHRoZSBIVyB0
ZWFtLCBidXQNCj4gIAkgKiB1c2UgMW1zIGR1ZSB0byBvY2Nhc2lvbmFsIHRpbWVvdXRzIG9ic2Vy
dmVkIHdpdGggdGhhdC4NCj4gIAkgKi8NCj4gLQlpZiAoaW50ZWxfZGVfd2FpdF9md19tcyhkaXNw
bGF5LCBCWFRfUE9SVF9DTDFDTV9EVzAocGh5KSwNCj4gLQkJCQlQSFlfUkVTRVJWRUQgfCBQSFlf
UE9XRVJfR09PRCwNCj4gUEhZX1BPV0VSX0dPT0QsIDEsIE5VTEwpKQ0KPiArCWlmIChpbnRlbF9k
ZV93YWl0X21zKGRpc3BsYXksIEJYVF9QT1JUX0NMMUNNX0RXMChwaHkpLA0KPiArCQkJICAgICBQ
SFlfUkVTRVJWRUQgfCBQSFlfUE9XRVJfR09PRCwNCj4gUEhZX1BPV0VSX0dPT0QsIDEsIE5VTEwp
KQ0KPiAgCQlkcm1fZXJyKGRpc3BsYXktPmRybSwgInRpbWVvdXQgZHVyaW5nIFBIWSVkIHBvd2Vy
IG9uXG4iLA0KPiAgCQkJcGh5KTsNCj4gDQo+IC0tDQo+IDIuNDkuMQ0KDQo=
