Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB3591BB50
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 11:21:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1008510E202;
	Fri, 28 Jun 2024 09:21:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gN2GApNX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BBA910E202
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2024 09:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719566488; x=1751102488;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=yos5ZAbL9K89TX9HO2mO2tRqxJ4DoWy4PQHeFXjHH7k=;
 b=gN2GApNXClRv34mJ7VvhwnoiwEoyhuiLNcgPG5H8Q6D+hGSgX7l8vdsK
 XMvu4EPK/XhNSOC18b771gDJVpR8tY5ixhA0uOvqJmCixH7Em+oTeS8ay
 KAWkagDXgArhbJ+ScXx3QNZ7FR9E7YowwTlUvpkIZI/GSyG+Y7Bpjyk+v
 79v3Q7JGpSAwsT0D1oUNRKvtsxSRRhn8Ojy8U57t76igSVviNg8VgEECE
 I81OOyikGn1TCn+wId7ClvtNLzsY4A0z2jC2m1G7pMFcPlp8XDGJEQDhB
 CD5dNk3oGYMkwxTebmYMndPTRPlcukO0f87iWI6TiWm79k09zisuMjdie Q==;
X-CSE-ConnectionGUID: B/gisiUqRPSavJmn9Daeog==
X-CSE-MsgGUID: IXCa0FCQQOaVHD29SMitFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="16698170"
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="16698170"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2024 02:21:28 -0700
X-CSE-ConnectionGUID: heLA7eunTIGOFRyCV5vzqQ==
X-CSE-MsgGUID: Rm6cEupzTN6iT8u2Ywh8Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="49638496"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Jun 2024 02:21:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 28 Jun 2024 02:21:27 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 28 Jun 2024 02:21:27 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 28 Jun 2024 02:21:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MsMLuBzWZPk9EnXxlCgCy9e7T4wyYBFGBu7UvAQQamQeNwCUHCoo6crpDch8mX+w53CyMGoRJu3OC7MHlx0rHqmPm9izmQbcZiLj4RASO3NWK1AQkCWBdMacKzqLW9mqHcToZsL6TTfN2qKp2pGIcdnOOtg4nYMNEjPKhDa5kcH/e0/6YFIv96tWCPQjTlUU2tIpvctbEjaCyVQV/vltJsQ0nJcP/3xIgwZIDWilT2D72c6J49jLwRpZ9pw+zQqTYHp+QYsPMejq7zTWOeaQqdfia+OnUEr6aj7o2FBZHhe5lP0rX/Z9bpBtMtYl+C3WD8QqfQEmyD9U1AnJu9Tv5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yos5ZAbL9K89TX9HO2mO2tRqxJ4DoWy4PQHeFXjHH7k=;
 b=OqOr1ic6yADZ+4I/yntD8y9kEQzMG/v+YSS+BOzc66cpXztGFuZieZY7C2SoPizN6LiD14FUhStNjw0JH0CWQ8nDh4Boak9VUsYpd2oCOBCZogH+PAACEONerja+6rZvLNudblG0eNPtLkU5P9m6hEDCyjIXEWUg1rYYYPqfXrp7xTDZ0ejjAn95yMg/EmekKfXzWltDwHmuUSIaTdkpDe7SZ2BWvPmhyvklgDBAes6foBEgYtH+kvTKL8k4kGLiYgvtlKJdhaVxH24jawRxTp62I/u/TmbDIAZPdjbzmEk7L+6xEfjCkjtFGuBtz1sSFtgSKCmqPP0/3KuFtVuuTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DM4PR11MB7304.namprd11.prod.outlook.com (2603:10b6:8:107::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.35; Fri, 28 Jun
 2024 09:21:24 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%4]) with mapi id 15.20.7698.025; Fri, 28 Jun 2024
 09:21:24 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 03/14] drm/i915/dsb: Hook up DSB error interrupts
Thread-Topic: [PATCH 03/14] drm/i915/dsb: Hook up DSB error interrupts
Thread-Index: AQHaxmo+7X/0B6bYXE2BWq/3/BQX+7Hc64+g
Date: Fri, 28 Jun 2024 09:21:24 +0000
Message-ID: <PH7PR11MB5981EA92D125D9C7B9510A57F9D02@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20240624191032.27333-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DM4PR11MB7304:EE_
x-ms-office365-filtering-correlation-id: 6753954a-0bb7-42dc-5899-08dc9753ae8c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dmdiYmFJV0E3QlVGZDBYQWZSVVl6THhrK1IrOXZQeHpQblp5RjFWQkduS1JH?=
 =?utf-8?B?anlwRVRGeW96WC9peHdFdFpJWFJDemNrUVdTTHgxeGUxQktESm9PTVY3RGkz?=
 =?utf-8?B?dVg1R1AyY0paSkhYM3Y0R2RXcUFUaGZjOEZyNFoyVzZTdGdDcFpPRXBVUzBz?=
 =?utf-8?B?c0F5elZ2ODdia1dmNG1uU2V1TjFWSFBNS2FLbWltMGNCVzhaU1h6ckE0Q21o?=
 =?utf-8?B?VjBtVkJJVC8xc2s1eVcxeVpEYmFxNFNhUWg1QisvZ21adGxDbWU3TmhONE9j?=
 =?utf-8?B?dStnMElySUgvR2lRcmxzMWJzNGpzSXdBWEFTZENJOGw2eEdvenladk5LU2gv?=
 =?utf-8?B?TU1kdVZVcXArZGtMR3NiTHNyUHlqR2VZaUNKVENFZVA4cTM1SXlpbHFkSDRE?=
 =?utf-8?B?ZW9GZDJLUXdKeWh5YXlkdFk4QWxSZFoxMUpWbVI4elZ3TldPNXhaeXRDTFR6?=
 =?utf-8?B?R2ZXZGIxNjA4eTMyc0pNT016d0JhNkJQVnlHV2ZpajJIRytBdEN5UDZySEY1?=
 =?utf-8?B?TE1mbmpXU1FGVXYyQUxxYzlISU9FREVqMXhWN3d5aVN6bTJqclRlMUZwMnFq?=
 =?utf-8?B?cWtUUk1HQTRHSVc1b2JRbW1SVXM0cC92bmR1TmpuMHhOeUFOU3RkZmxPeDdJ?=
 =?utf-8?B?MnRQOGcyUG1ONnpkWFp2aEFrd2NYK0tEOWZNbEVSckpkOFJJVzBQT3NEWmE1?=
 =?utf-8?B?dVlBckZqL0V4SFNkMmgzM05ISXlqOWNnNkxNajEzTlNJL3JqM1EwOTZ5OHRS?=
 =?utf-8?B?M1R1TEZwaFUxRzcyTG5wMzdyL1JJZ2ptUWtPSWpOY3p2QXllcDBVb3lybTlG?=
 =?utf-8?B?N2U1bGFEOEFzUjI1Q0o3Q0Nscnp1bHpzNkQ4Sk5jSERLUEE1Z0NvWTMvRUZt?=
 =?utf-8?B?d0VnR21iL3U3UmVkYkQweEZmSTlwR0lES0djbmdLSnBuVHBKUE9GTGJveTVN?=
 =?utf-8?B?UVZzMkY5RlVXNE82dkc5bDhOL1h1VFA5T3haa2xtdDlkVC9OZWlXTlZraEhY?=
 =?utf-8?B?MTJPOCtUM2ZSd1BRM3hMT01nQnlCVEo2N2Z2VHFuTWFDWEVWbjJBOE9EQWVw?=
 =?utf-8?B?RmdDZXBRVEZpNHVMR3YzODZHK01nOHJlR2k3cEUvS2xSVDFQc2xPVkpKamlF?=
 =?utf-8?B?b1ByQUZXSnpSOW1hcGpKcnBlSzhUK3JaSFZpUk5Ka29OM2JYNStBUVJrNUoy?=
 =?utf-8?B?V1NmNUR4V3Q1cE5MWWRiY1NiUjR2ZlhjS2FNREIzMElBVmx1R0FYZGc0ZUts?=
 =?utf-8?B?a0s5Vkt3SXZSU3hhY1hTOUJTOG5tblphcnNPL1JxY0FpbWFSR3FHN3hQbGIv?=
 =?utf-8?B?T0M3VE4vT1FXeDVLZGdWLytKdGlwd3FYTUFCWExOWWJPN3Rkc290blFaOXN4?=
 =?utf-8?B?MlRyeUtCL3RTZmZ6M25RcjhtWXBxS0RsdDBBNDhEN2JGS3FndmtPM2EzbHds?=
 =?utf-8?B?ZlhwZkFCL2xYY0MwamZObktTWHdTV3NvWTNvQ0E1RUsxMEtUQnpTQlphRjE3?=
 =?utf-8?B?eHNJcWtCWnA2b2NVN2lEcFhyU0FjMTZRVlJVejRxOTdmU2tpNEFCTXQ1VFpv?=
 =?utf-8?B?UWNldXN4QVlnVmJoTDFoKytjSm53NWhlTVZYZXpiWTUwb3JyTjRuc0FJRDRE?=
 =?utf-8?B?MU56WmIvRkk3cllqenUwQ1Z0U0Nmc0JCWjdEYWgzSmpMc01mZTlEdGpQdk1x?=
 =?utf-8?B?YXVMQ3FVMW5IOUF0WUNSOVhHWTluaHNWb21iUXZWRVV0K3ZDUzNuUk1KVVlZ?=
 =?utf-8?B?ZUJiTGFMVHRQMUkvazV0eGIwLzcwV1Z1U2t3WVIyVVk1UjN0ZnlOcXh4dzRC?=
 =?utf-8?B?VnQyV3NqOGx6bC9XYmpBakZMUWxVL05qUU4rUnJ6QmlFMkYyK0RMWGZiMXFs?=
 =?utf-8?B?ZXUvY1FNT2xIOVY3OTBWT3hvQzJoeUx3RTA0b1JvdDhPTmc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NW1ndkptWmpXRUVUUEJlVkdKUlA4cXd5Y2taSi9Na1pkQUdRZUhZSnVGaUd1?=
 =?utf-8?B?MmhIUlR5MFEreDRKYU1DVUM3Mm9pbkkxRWgyZ0I2ajVEUXFXZmRoZUMyZ2xr?=
 =?utf-8?B?dXM1dW0xa3VMbENPMXM0SW9PZm8vNmM1RkxadUVUSm54VUtCeDZpKzVlYWdV?=
 =?utf-8?B?b2VjQ2FDSnQreDJmSTlJaHhsZjFQemhMVTYrYXBZc3hwaHY2V09ISUV5QkRD?=
 =?utf-8?B?WktlKzZPVXY5UjdINDk5d1dYRG5mS25IcXU4OUxjbHJhNGFsYU9KRDBiNzBz?=
 =?utf-8?B?QWRKTjhGZVE3SjFkWXN3eEVRK0xxRUlBYklDazgxR3lkY1NwczZpVmR4MXB6?=
 =?utf-8?B?UmllS2h3MiszWHBrdUhLVXlUVDZCZkt5MStGL0Z4UW4yS0JjWTB0UkduNEh0?=
 =?utf-8?B?VkY5M0dlb1RCN1dSSllrb01rK2MydGMxMnZGZjA3K20yNERUek1IM0Y3cTA1?=
 =?utf-8?B?MFZ3NVZEQ1BXTG9ROHZaVGlxOVg5UDNPdTRyN1ZrMEk1K21NcE16RkFnTFpU?=
 =?utf-8?B?emlTUy94cnRvWHo2WnhrTHRhZGpuSDcrcU51ek4xdFBMNll3T2wwaWpLNFVU?=
 =?utf-8?B?eHZGWUtWd0pzMjA3WE9ra0pySHI4UVE0OW1vRm5jWkQ5bDdEVllVWEJnb0di?=
 =?utf-8?B?ckUyTmhRZi9EOHk3V29uRS8wMWkvNWV0RENnanF2bHhtc1lsUlNLWmkvdFRW?=
 =?utf-8?B?M0FwVytFeU9qck4zbnRqRTR1VVlraEhvZWVidmdkOWc3clpJaE1vbEFtR1VT?=
 =?utf-8?B?Sm1aQmpMM2EvZGJEdHJFOU12YUh6V3cvdmdIVFNxVkRIS01ObU5rY2hTNnpX?=
 =?utf-8?B?cDhjV0EvQ3R4MjFFaFFJbkJzNkVYYkF6aWhhbmVPQXVucXF1TVBJTTE5enFs?=
 =?utf-8?B?UldmUHVLZWF6b21Fck1vdEVDVE0xdTlNVDIrb0w5UlMzMXBtRTRGZVppVS9L?=
 =?utf-8?B?QlZVdEplSkdoUDh6Q0lObVFwRmdZNGNDQUV5WEgveExEbnUzS0hqbVlKQml1?=
 =?utf-8?B?WUVzYlljUHpwbzgrem8vR1N2cmVYODJCUjFXS01qL0tMcGhaM1UrZWxRZ2o5?=
 =?utf-8?B?VW9GREZQVElLMHNDSXk1VVRqaVBUd2gzL3NFMWhLeWlaK0REYUZrc1BqbzFh?=
 =?utf-8?B?dUMzWXo4eFlWeGJSbk9LczBhTWI0ZFJ5VjkyK1d6dHZ6blRYQUkzWlhJN2Nr?=
 =?utf-8?B?ZVNCdkQ4MHZIVkx1UmZhQXlZMU9wbkdodXcxQkt4WkxVS1pPajRuSDZWMlpJ?=
 =?utf-8?B?N0xDbHJxTEcwNnVZOE9HREhyY2k1cE5jaWxkSE9aVDRZaU51MHJHeVU2b3N0?=
 =?utf-8?B?YWpMNnhYaDdwODFNTGRKNHJud0dxNHZHTnFJSTRZQTlWcW5zN3BZMDJVKzZs?=
 =?utf-8?B?OEZEcFFVQkYzeTRhTXMzQnFjd2QyaHFna3laMGdLdDArYzdOQ1NudE5yNmVV?=
 =?utf-8?B?MGZDUnV1Sk1rUnpyWXF4WlB4UDFORFRjdi9TN1VudGNHdEtqaDdDQ3R4Tkww?=
 =?utf-8?B?aHk2SUpyeEU4Vm56UDMrL1NhS2hXYXVjeisrbDRScDVUb3FXbTBhMCs3bDFG?=
 =?utf-8?B?NGpTNXR3UGowUmRibEZVOW0zN0trMXlqQjN0RTNTV2dJYXNsaTlBbkp3NkYx?=
 =?utf-8?B?UmpmZDljMTRWdE15U05wKzNYODlId0ZPS2NHRVdQbG1RUVRLcy91MzkxOXVE?=
 =?utf-8?B?MjZOallneWhrSkpBM0Z4UzhzSWNYUUdXL2I3UEtvMEpoY0lrM25EL2U0OEtu?=
 =?utf-8?B?U3JKQzhLeS9oUW5uUTlhdkd0YnZuM2dMc1cvSFIyUUZhUTJCdFF5RDVlY2hT?=
 =?utf-8?B?K09taVVGUEEvbGdtVWJUYVEwTXNadklQRmd5SW9hd2tqTnVMakRjd3pWQmh3?=
 =?utf-8?B?NnkwVkJXa0E2c214RTJyT0JmNThwdW8wam01bW1lU1FMRkxIN1pmTk9BRGRm?=
 =?utf-8?B?U1JtSEpkbDVMZ2o2dm8rTFpvTDFlTEdnTkJJSGdZMitDVVVPc3ZYa3A0Ukk1?=
 =?utf-8?B?TGw3RnFYMEo3V2N2cGlMVUw5QWl1S29zYng5dURwTjVOSG5FUnRyM2Q0UVZO?=
 =?utf-8?B?QVN1TnhwZjVXR1R0TnNweVh6WWhnZXkzL25FaVl0TGJiSnFndmVLWGxsRDRW?=
 =?utf-8?Q?mxVvUzhom9KmZC94poZwn+7QJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6753954a-0bb7-42dc-5899-08dc9753ae8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2024 09:21:24.5981 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LWEzILq21YFRf5i37gV8GpwUnmYd+yLdq9pBQ3AG4kUs+2SU9fUeDgOCC+JqFAPPe+IibRkLKR4e5s2rLTlWcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7304
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgMjUsIDIwMjQgMTI6NDAgQU0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDAzLzE0
XSBkcm0vaTkxNS9kc2I6IEhvb2sgdXAgRFNCIGVycm9yIGludGVycnVwdHMNCj4gDQo+IEZyb206
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBF
bmFibGUgYWxsIERTQiBlcnJvci9mYXVsdCBpbnRlcnJ1cHRzIHNvIHRoYXQgd2UgY2FuIHNlZSBp
ZiBhbnl0aGluZyBnb2VzDQo+IHRlcnJpYmx5IHdyb25nLg0KPiANCj4gU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+
ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9pcnEuYyAgfCAxNyArKysr
KysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgICAgICB8IDU4
ICsrKysrKysrKysrKysrKysrKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmggICAgICB8ICA2ICsrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
ICAgICAgICAgICAgICAgfCAgNCArKw0KPiAgNCBmaWxlcyBjaGFuZ2VkLCA4NSBpbnNlcnRpb25z
KCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X2lycS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X2lycS5jDQo+IGluZGV4IDUyMTliYTI5NWM3NC4uNzE2OWRiOTg0NjUxIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5j
DQo+IEBAIC0xNCw2ICsxNCw3IEBADQo+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90cmFjZS5o
Ig0KPiAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMuaCINCj4gICNpbmNsdWRlICJpbnRl
bF9kcF9hdXguaCINCj4gKyNpbmNsdWRlICJpbnRlbF9kc2IuaCINCj4gICNpbmNsdWRlICJpbnRl
bF9mZGlfcmVncy5oIg0KPiAgI2luY2x1ZGUgImludGVsX2ZpZm9fdW5kZXJydW4uaCINCj4gICNp
bmNsdWRlICJpbnRlbF9nbWJ1cy5oIg0KPiBAQCAtMTE0Myw2ICsxMTQ0LDE3IEBAIHZvaWQgZ2Vu
OF9kZV9pcnFfaGFuZGxlcihzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHUz
MiBtYXN0ZXJfY3RsKQ0KPiANCj4gIAkJaW50ZWxfdW5jb3JlX3dyaXRlKCZkZXZfcHJpdi0+dW5j
b3JlLA0KPiBHRU44X0RFX1BJUEVfSUlSKHBpcGUpLCBpaXIpOw0KPiANCj4gKwkJaWYgKEhBU19E
U0IoZGV2X3ByaXYpKSB7DQo+ICsJCQlpZiAoaWlyICYgR0VOMTJfRFNCX0lOVChJTlRFTF9EU0Jf
MCkpDQo+ICsJCQkJaW50ZWxfZHNiX2lycV9oYW5kbGVyKCZkZXZfcHJpdi0+ZGlzcGxheSwNCj4g
cGlwZSwgSU5URUxfRFNCXzApOw0KPiArDQo+ICsJCQlpZiAoaWlyICYgR0VOMTJfRFNCX0lOVChJ
TlRFTF9EU0JfMSkpDQo+ICsJCQkJaW50ZWxfZHNiX2lycV9oYW5kbGVyKCZkZXZfcHJpdi0+ZGlz
cGxheSwNCj4gcGlwZSwgSU5URUxfRFNCXzEpOw0KPiArDQo+ICsJCQlpZiAoaWlyICYgR0VOMTJf
RFNCX0lOVChJTlRFTF9EU0JfMikpDQo+ICsJCQkJaW50ZWxfZHNiX2lycV9oYW5kbGVyKCZkZXZf
cHJpdi0+ZGlzcGxheSwNCj4gcGlwZSwgSU5URUxfRFNCXzIpOw0KPiArCQl9DQo+ICsNCj4gIAkJ
aWYgKGlpciAmIEdFTjhfUElQRV9WQkxBTkspDQo+ICAJCQlpbnRlbF9oYW5kbGVfdmJsYW5rKGRl
dl9wcml2LCBwaXBlKTsNCj4gDQo+IEBAIC0xNzE4LDYgKzE3MzAsMTEgQEAgdm9pZCBnZW44X2Rl
X2lycV9wb3N0aW5zdGFsbChzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+
ICAJCQlkZV9wb3J0X21hc2tlZCB8PSBEU0kwX1RFIHwgRFNJMV9URTsNCj4gIAl9DQo+IA0KPiAr
CWlmIChIQVNfRFNCKGRldl9wcml2KSkNCj4gKwkJZGVfcGlwZV9tYXNrZWQgfD0gR0VOMTJfRFNC
X0lOVChJTlRFTF9EU0JfMCkgfA0KPiArCQkJR0VOMTJfRFNCX0lOVChJTlRFTF9EU0JfMSkgfA0K
PiArCQkJR0VOMTJfRFNCX0lOVChJTlRFTF9EU0JfMik7DQo+ICsNCj4gIAlkZV9waXBlX2VuYWJs
ZXMgPSBkZV9waXBlX21hc2tlZCB8DQo+ICAJCUdFTjhfUElQRV9WQkxBTksgfA0KPiAgCQlnZW44
X2RlX3BpcGVfdW5kZXJydW5fbWFzayhkZXZfcHJpdikgfCBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gaW5kZXggMmFiMzc2NWY2YzA2Li5kZWQ2OTYzNjMy
NTggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNi
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBA
QCAtMzM5LDYgKzMzOSw0MiBAQCBzdGF0aWMgdTMyIGRzYl9jaGlja2VuKHN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjKQ0KPiAgCQlyZXR1cm4gRFNCX1NLSVBfV0FJVFNfRU47DQo+ICB9DQo+IA0KPiAr
c3RhdGljIHUzMiBkc2JfZXJyb3JfaW50X3N0YXR1cyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSkgew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkaXNw
bGF5LT5kcm0pOw0KPiArCXUzMiBlcnJvcnM7DQo+ICsNCj4gKwllcnJvcnMgPSBEU0JfR1RUX0ZB
VUxUX0lOVF9TVEFUVVMgfA0KPiArCQlEU0JfUlNQVElNRU9VVF9JTlRfU1RBVFVTIHwNCj4gKwkJ
RFNCX1BPTExfRVJSX0lOVF9TVEFUVVM7DQo+ICsNCj4gKwkvKg0KPiArCSAqIEFsbCB0aGUgbm9u
LWV4aXN0aW5nIHN0YXR1cyBiaXRzIG9wZXJhdGUgYXMNCj4gKwkgKiBub3JtYWwgci93IGJpdHMs
IHNvIGFueSBhdHRlbXB0IHRvIGNsZWFyIHRoZW0NCj4gKwkgKiB3aWxsIGp1c3QgZW5kIHVwIHNl
dHRpbmcgdGhlbS4gTmV2ZXIgZG8gdGhhdCBzbw0KPiArCSAqIHdlIHdvbid0IG1pc3Rha2UgdGhl
bSBmb3IgYWN0dWFsIGVycm9yIGludGVycnVwdHMuDQo+ICsJICovDQo+ICsJaWYgKERJU1BMQVlf
VkVSKGk5MTUpID49IDE0KQ0KPiArCQllcnJvcnMgfD0gRFNCX0FUU19GQVVMVF9JTlRfU1RBVFVT
Ow0KPiArDQo+ICsJcmV0dXJuIGVycm9yczsNCj4gK30NCj4gKw0KPiArc3RhdGljIHUzMiBkc2Jf
ZXJyb3JfaW50X2VuKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KSB7DQo+ICsJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpc3BsYXktPmRybSk7DQo+ICsJdTMy
IGVycm9yczsNCj4gKw0KPiArCWVycm9ycyA9IERTQl9HVFRfRkFVTFRfSU5UX0VOIHwNCj4gKwkJ
RFNCX1JTUFRJTUVPVVRfSU5UX0VOIHwNCj4gKwkJRFNCX1BPTExfRVJSX0lOVF9FTjsNCj4gKw0K
PiArCWlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxNCkNCj4gKwkJZXJyb3JzIHw9IERTQl9BVFNf
RkFVTFRfSU5UX0VOOw0KPiArDQo+ICsJcmV0dXJuIGVycm9yczsNCj4gK30NCj4gKw0KPiAgc3Rh
dGljIHZvaWQgX2ludGVsX2RzYl9jb21taXQoc3RydWN0IGludGVsX2RzYiAqZHNiLCB1MzIgY3Ry
bCwNCj4gIAkJCSAgICAgIGludCBkZXdha2Vfc2NhbmxpbmUpDQo+ICB7DQo+IEBAIC0zNjMsNiAr
Mzk5LDEwIEBAIHN0YXRpYyB2b2lkIF9pbnRlbF9kc2JfY29tbWl0KHN0cnVjdCBpbnRlbF9kc2Ig
KmRzYiwNCj4gdTMyIGN0cmwsDQo+ICAJaW50ZWxfZGVfd3JpdGVfZncoZGlzcGxheSwgRFNCX0NI
SUNLRU4ocGlwZSwgZHNiLT5pZCksDQo+ICAJCQkgIGRzYl9jaGlja2VuKGNydGMpKTsNCj4gDQo+
ICsJaW50ZWxfZGVfd3JpdGVfZncoZGlzcGxheSwgRFNCX0lOVEVSUlVQVChwaXBlLCBkc2ItPmlk
KSwNCj4gKwkJCSAgZHNiX2Vycm9yX2ludF9zdGF0dXMoZGlzcGxheSkgfA0KPiBEU0JfUFJPR19J
TlRfU1RBVFVTIHwNCj4gKwkJCSAgZHNiX2Vycm9yX2ludF9lbihkaXNwbGF5KSk7DQo+ICsNCj4g
IAlpbnRlbF9kZV93cml0ZV9mdyhkaXNwbGF5LCBEU0JfSEVBRChwaXBlLCBkc2ItPmlkKSwNCj4g
IAkJCSAgaW50ZWxfZHNiX2J1ZmZlcl9nZ3R0X29mZnNldCgmZHNiLT5kc2JfYnVmKSk7DQo+IA0K
PiBAQCAtNDMwLDYgKzQ3MCw5IEBAIHZvaWQgaW50ZWxfZHNiX3dhaXQoc3RydWN0IGludGVsX2Rz
YiAqZHNiKQ0KPiAgCWRzYi0+ZnJlZV9wb3MgPSAwOw0KPiAgCWRzYi0+aW5zX3N0YXJ0X29mZnNl
dCA9IDA7DQo+ICAJaW50ZWxfZGVfd3JpdGVfZncoZGlzcGxheSwgRFNCX0NUUkwocGlwZSwgZHNi
LT5pZCksIDApOw0KPiArDQo+ICsJaW50ZWxfZGVfd3JpdGVfZncoZGlzcGxheSwgRFNCX0lOVEVS
UlVQVChwaXBlLCBkc2ItPmlkKSwNCj4gKwkJCSAgZHNiX2Vycm9yX2ludF9zdGF0dXMoZGlzcGxh
eSkgfA0KPiBEU0JfUFJPR19JTlRfU1RBVFVTKTsNCj4gIH0NCj4gDQo+ICAvKioNCj4gQEAgLTUx
MywzICs1NTYsMTggQEAgdm9pZCBpbnRlbF9kc2JfY2xlYW51cChzdHJ1Y3QgaW50ZWxfZHNiICpk
c2IpDQo+ICAJaW50ZWxfZHNiX2J1ZmZlcl9jbGVhbnVwKCZkc2ItPmRzYl9idWYpOw0KPiAgCWtm
cmVlKGRzYik7DQo+ICB9DQo+ICsNCj4gK3ZvaWQgaW50ZWxfZHNiX2lycV9oYW5kbGVyKHN0cnVj
dCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiArCQkJICAgZW51bSBwaXBlIHBpcGUsIGVudW0g
aW50ZWxfZHNiX2lkIGRzYl9pZCkgew0KPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gaW50
ZWxfY3J0Y19mb3JfcGlwZSh0b19pOTE1KGRpc3BsYXktPmRybSksDQo+IHBpcGUpOw0KPiArCXUz
MiB0bXAsIGVycm9yczsNCj4gKw0KPiArCXRtcCA9IGludGVsX2RlX3JlYWRfZncoZGlzcGxheSwg
RFNCX0lOVEVSUlVQVChwaXBlLCBkc2JfaWQpKTsNCj4gKwlpbnRlbF9kZV93cml0ZV9mdyhkaXNw
bGF5LCBEU0JfSU5URVJSVVBUKHBpcGUsIGRzYl9pZCksIHRtcCk7DQo+ICsNCj4gKwllcnJvcnMg
PSB0bXAgJiBkc2JfZXJyb3JfaW50X3N0YXR1cyhkaXNwbGF5KTsNCj4gKwlpZiAoZXJyb3JzKQ0K
PiArCQlkcm1fZXJyKGRpc3BsYXktPmRybSwgIltDUlRDOiVkOiVzXSAvIERTQiAlZCBlcnJvcg0K
PiBpbnRlcnJ1cHQ6IDB4JXhcbiIsDQo+ICsJCQljcnRjLT5iYXNlLmJhc2UuaWQsIGNydGMtPmJh
c2UubmFtZSwgZHNiX2lkLCBlcnJvcnMpOw0KDQpKdXN0IGEgbml0cGljazogbWF5YmUgZ29vZCB0
byBwcmludCB0aGUgZXJyb3JzIGluIGEgc3RyaW5nIGZvcm1hdCBpbnN0ZWFkIG9mIGhleCB2YWx1
ZS4NCg0KUmVnYXJkcywNCkFuaW1lc2gNCg0KPiB9DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kc2IuaA0KPiBpbmRleCBiYjQyNzQ5ZjJlYTQuLjg0ZmMyZjg0MzRkMSAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaA0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oDQo+IEBAIC0x
Myw4ICsxMywxMSBAQA0KPiAgc3RydWN0IGludGVsX2F0b21pY19zdGF0ZTsNCj4gIHN0cnVjdCBp
bnRlbF9jcnRjOw0KPiAgc3RydWN0IGludGVsX2NydGNfc3RhdGU7DQo+ICtzdHJ1Y3QgaW50ZWxf
ZGlzcGxheTsNCj4gIHN0cnVjdCBpbnRlbF9kc2I7DQo+IA0KPiArZW51bSBwaXBlOw0KPiArDQo+
ICBlbnVtIGludGVsX2RzYl9pZCB7DQo+ICAJSU5URUxfRFNCXzAsDQo+ICAJSU5URUxfRFNCXzEs
DQo+IEBAIC00MSw0ICs0NCw3IEBAIHZvaWQgaW50ZWxfZHNiX2NvbW1pdChzdHJ1Y3QgaW50ZWxf
ZHNiICpkc2IsDQo+ICAJCSAgICAgIGJvb2wgd2FpdF9mb3JfdmJsYW5rKTsNCj4gIHZvaWQgaW50
ZWxfZHNiX3dhaXQoc3RydWN0IGludGVsX2RzYiAqZHNiKTsNCj4gDQo+ICt2b2lkIGludGVsX2Rz
Yl9pcnFfaGFuZGxlcihzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gKwkJCSAgIGVu
dW0gcGlwZSBwaXBlLCBlbnVtIGludGVsX2RzYl9pZCBkc2JfaWQpOw0KPiArDQo+ICAjZW5kaWYN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGluZGV4IDBlM2Q3OTIyN2UzYy4uNDlhOTc2MWNh
MzEzDQo+IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gQEAgLTI1MTUsNiArMjUx
NSwxMCBAQA0KPiAgI2RlZmluZSAgR0VOMTFfUElQRV9QTEFORTdfRkxJUF9ET05FCVJFR19CSVQo
MTgpIC8qIGljbC90Z2wgKi8NCj4gICNkZWZpbmUgIEdFTjExX1BJUEVfUExBTkU2X0ZMSVBfRE9O
RQlSRUdfQklUKDE3KSAvKiBpY2wvdGdsICovDQo+ICAjZGVmaW5lICBHRU4xMV9QSVBFX1BMQU5F
NV9GTElQX0RPTkUJUkVHX0JJVCgxNikgLyogaWNsKyAqLw0KPiArI2RlZmluZSAgR0VOMTJfRFNC
XzJfSU5UCQlSRUdfQklUKDE1KSAvKiB0Z2wrICovDQo+ICsjZGVmaW5lICBHRU4xMl9EU0JfMV9J
TlQJCVJFR19CSVQoMTQpIC8qIHRnbCsgKi8NCj4gKyNkZWZpbmUgIEdFTjEyX0RTQl8wX0lOVAkJ
UkVHX0JJVCgxMykgLyogdGdsKyAqLw0KPiArI2RlZmluZSAgR0VOMTJfRFNCX0lOVChkc2JfaWQp
CQlSRUdfQklUKDEzICsgKGRzYl9pZCkpDQo+ICAjZGVmaW5lICBHRU45X1BJUEVfQ1VSU09SX0ZB
VUxUCQlSRUdfQklUKDExKSAvKiBza2wrICovDQo+ICAjZGVmaW5lICBHRU45X1BJUEVfUExBTkU0
X0ZBVUxUCQlSRUdfQklUKDEwKSAvKiBza2wrICovDQo+ICAjZGVmaW5lICBHRU44X1BJUEVfQ1VS
U09SX0ZBVUxUCQlSRUdfQklUKDEwKSAvKiBiZHcgKi8NCj4gLS0NCj4gMi40NC4yDQoNCg==
