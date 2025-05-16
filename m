Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2442DAB9759
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 10:18:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 425BB10E9EE;
	Fri, 16 May 2025 08:18:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HoJA//8V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB55A10E9E5;
 Fri, 16 May 2025 08:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747383491; x=1778919491;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dUMHaCFpIwlhRLhEn1F5giHgRZu7S3Z/ORf7s3NochA=;
 b=HoJA//8V13g2rVcfg4EXSYD9pzc0Gym8oAeVuNY0yW4fC3b5C1w9c+n2
 e4b40YqFNFRNR21Ou8LgZt2zzbPwGijj86jH6VZfm2wko+2r2Myv2IA11
 MAamwfBREKfeJhGNdW1EUiChOda3cND4pxLR5pPXBVKAinZTZl4zW716u
 J35KdtS7bJ7cHEMVbDNqIrDMbJ7USB5qiNSVT55i4TJik8zf2Fg6F8YiL
 etg+nPCwta29PNUk3g2zlVLarNbPPFHilwMbdzJpAXDdK3AFmwpf8kMHK
 hDipOhYmFRc5+Ka7D5SFQFT8yMOnA28Z8SJFZ6mDErz2sTkYgSQAoV/hm A==;
X-CSE-ConnectionGUID: xxIxt5MdRuWNxFi+NOAzJw==
X-CSE-MsgGUID: mg5E9mDATtGwbHA39lqbcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="49041673"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="49041673"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 01:18:11 -0700
X-CSE-ConnectionGUID: oIwpKK9aSTSr7YVoL5nymw==
X-CSE-MsgGUID: BW5W0di7QTOlktwXQTa27g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="169683124"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 01:18:10 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 16 May 2025 01:18:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 16 May 2025 01:18:09 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 16 May 2025 01:18:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sosK/HE9uBn3Su7zUiDr0FgGZcq9WLZgTufjP6jWGWXh9fSHJY9fQjbVSLAmIFyS27eYM/iQZvTzucnKDpAb1AdoJMUo142Hnr+8c6oHefmkM1pIS93f9iQTsBwY7krL5nVMyHOSMb9Bi5ATaY6M4pCkJfAD+ku5D+CyokJQhgx9qFe1+W0BbfvL/8di9LRT8DGq7UbvauS8s/pJ9t37X95rnt94v8TxLcY6Oagxl/TYiyIJ82fC73FpyhMHssbKtI+jxlyOc+FepB7f47jAb8i6p+FAN2KaRcjlkm3bd6Pv85rUjFyhm6D2OWIFGfRhKW1/I7b9SdGvkGBjYV7o7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dUMHaCFpIwlhRLhEn1F5giHgRZu7S3Z/ORf7s3NochA=;
 b=MsWa18mFQ0gcItrFKNQIsCI4miaLXpHgWwpRF2t7sXzlsyT+RihxUtwo4oAFpVKu+4gdXLjjR1hKaTew/+SaXX69DRFMNA4ounmWOgBjCAGwryLryEuysre3KQGil39iqEQ59mAklcJTMqDTbD2HmEFemVgANMxd2EybWhgI/X0WNkWXWeyRawaj3DLGDuRGjRdITevXGFMw0lDnNIHFUcGcqskEVB8vNjGGsCBnrJ0cb+E1vgRbBrpTOUdGq9cRrYX7pcYlVNmOhaM2nfJ1SQ+xt+LUFhTmDBgemUPhOAFYYdnYUty+L5FbTKqg5PzCNvOaY3GzRTwxow9tTw7R/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by IA1PR11MB7294.namprd11.prod.outlook.com (2603:10b6:208:429::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.33; Fri, 16 May
 2025 08:18:07 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8699.022; Fri, 16 May 2025
 08:18:07 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 11/14] drm/i915/dpll: Rename intel_reference_dpll_crtc
Thread-Topic: [PATCH 11/14] drm/i915/dpll: Rename intel_reference_dpll_crtc
Thread-Index: AQHbxWmjTdqLXHmi9ki3q0J25gZzWbPU6zGg
Date: Fri, 16 May 2025 08:18:07 +0000
Message-ID: <MW4PR11MB705422B7D7B2AFDFDA87008FEF93A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250515071801.2221120-1-suraj.kandpal@intel.com>
 <20250515071801.2221120-12-suraj.kandpal@intel.com>
In-Reply-To: <20250515071801.2221120-12-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|IA1PR11MB7294:EE_
x-ms-office365-filtering-correlation-id: b2b0fd55-c2b8-4a3d-8c40-08dd9452302e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?TWVVRmx6d2RvWGRNTEJvYUdjbnRwUkU2TVdXZDFBWHFWendXcGVGbG5DVC9G?=
 =?utf-8?B?ays4S2ovNEorOGtOQ3YxLzNoL0piUDdXcGdkSHB0ZFlvZ3BPMUUxa2IwdklP?=
 =?utf-8?B?Z2d2WTJCS2l5NnpQMm5LUlhJRmZ6RkFFMkZXK1A4c0Fxa0o0dDRIaDNaUkRr?=
 =?utf-8?B?MUJQT1E3QjEyV09ERlFMaElHZ3hUeUVxdlFVOVZVV3RpSkpoMkxyZWZhNDA4?=
 =?utf-8?B?KzZ1cEZ2dUxzYkw0cUZjSjAxVDZFTEdkWGI3T1pPUHV6c1BqUzd4ZzZsSjVN?=
 =?utf-8?B?T3c1V1RpZmdhU2ZtQVd2UFRVUlFYVlMxVzVuR0dCVkMzTEI3bWk3YjY0QXF4?=
 =?utf-8?B?NytsQmdMYjExZGN5N2FJNE1pVGZ2S2lDR3FieVJNQ1pmWUxEbzVJVHlkTldz?=
 =?utf-8?B?ZGpnbVJscmJPY0tYcUtQMEZMaEozRlZISXNrYnJaQ3BOOWs5bDJRc21INHl4?=
 =?utf-8?B?VU1MUmx6OXdqV2VMdjBKdysrbjBjL0dLS0d5SFZ5N25qQlRBZFp3dDFxUmYy?=
 =?utf-8?B?T3ZXc1VneDVqL3N3YnJjOWFSNFJMYWhFTHE4eWt4UUQ2YXkzajBtbDBxcEc5?=
 =?utf-8?B?TEwxcytyNE1wYWJZKzJEY1duRGhlOEh2S2pWVnk3WXh5NzF3WUlqK0tTbWkw?=
 =?utf-8?B?RGw4eHRqdlJqMzNoRHdGSGQ2UmxKQzA0ekZtUkR5SXFtZ0pWWTlzbXJ3S0Fz?=
 =?utf-8?B?alhLc3lnTFE2M3h0ekRNblU2NVFERzY2eXNBTUhxc2JLbkQra0c1YnRsMGZR?=
 =?utf-8?B?SDl6SjVHZEJxMkJqaUVXNmZlWWFQajRZOGh1eUpIUmgyWkc0Q0xQcW1rbklk?=
 =?utf-8?B?ZW1LelZZUEs2a3hLR3lrVjhXUHI5QXVzRUIwQnVMTUNPcW8ycEltU1FML3E1?=
 =?utf-8?B?M2NjZngzd25WN09ZaGt3UVlENHpndzlOaXh5a29LRmZyU2pTaE9DUlVsQm9G?=
 =?utf-8?B?T2V6aXdiOFV6cXJEVjBYMkxzSmdXUXI2TUZDZ0o3akl5VlJCUHAyek15ZytP?=
 =?utf-8?B?TFh1dUpUTW5QTzJISmJvZmFlcVFzMEJuOUpVN3ZMbFVGby9HZHZ1MDd5azF5?=
 =?utf-8?B?TFVDQTFtUG5vOXQ5R2d4ejNBcE1SelpwNVV2ZGUxOXpQWUpZdTBCZ0Y4VUZH?=
 =?utf-8?B?YUxPSUxOTnhpbXNyeFlPdCtrRlF3bElwOWVxeHFhdS8yNUJIY1lFekJGQWNH?=
 =?utf-8?B?L0tPSDFnWDRHbUJqMDFkYmYvUTFJdG9BdHZ5YlM1TTUxSyt4bDFRMDU1M3FN?=
 =?utf-8?B?UjhiYkxlZzNSVzRVYTEvd2laU0RJZUFaUDM3UUlIQldlb1c2eFVRNldDN0FX?=
 =?utf-8?B?NVZRQzAyL09MQzlQU3Q2ck1lZWpUZkdTeDM4K2hzVVoxSDRzVmZXMU44cmxJ?=
 =?utf-8?B?aFJhZlQ1ZFlhUFEzRUN5d1dwZGozVXh4RW1YNUxkSWw2VlZNTy9xN24wSmJB?=
 =?utf-8?B?QjN6Q29LK1BJV2tyNzFWald0cUhxUHM0V2cxeVpsakdKb0RQd1k2WjR3d0Nv?=
 =?utf-8?B?a25xU1BCbWtaQkVGMXBkeEU5OFF6QUNYYjRlZWFiQnBWSnJLOHAzZzlYTEgx?=
 =?utf-8?B?Vm9hYXFIR0NXZDJkT3Y0bTl4UDh4OGorc2hHUnk4Rmhyb0toMlBVdU5pbzUx?=
 =?utf-8?B?Si9DRGdjSWRRMEc5QVNINXJJbS9QR1FDODlqcU5jVXZFWm1WVTA4UVJvcllJ?=
 =?utf-8?B?VmJwOUZ5OUpkMXZQNVRFaDV6REg1UzV6YkMvcUlCSWNQWG5rOUlhV3ZRVWFZ?=
 =?utf-8?B?NWhnTW5GT3RMUmphMHVHQ0g4Qm1zOEZQaW1HL21XZm02Q1lKKytxS3RxUGF2?=
 =?utf-8?B?eW9sWUNpUEpVN0lPekZVcllFeWJsdFZ5aFBjWmVUYld6RjE3QTlVckpCN3NW?=
 =?utf-8?B?RDJtTmcxZ01CWVI4SUx1R0JFMFo3UlFsM1Ftd0hjNm9UZWx1YnNZTEtlUUVO?=
 =?utf-8?B?R1Q5dXArZHBrbll5bnZiZVNnS29wYnVSQnYxZzhQUmZ0dzJGVUliVitYRmlC?=
 =?utf-8?B?cjFIV2svc3B3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RVczbWpBeUYxSElKNGlzdlBoeUxJQXhJMmIyS1VXdTNkVzFGcUZMRlBJVHpU?=
 =?utf-8?B?bUlza2xWTmt0TlYzdW93WUtXVXc1cVZWSmp4bXNiNFNENFp2dTBJQTBMcVA4?=
 =?utf-8?B?aDJHQnNPbnN0a2NvWTlCMGYwZTZiVGRRMkY4eVdNVmFiTkYwdGJIU2g4VVZK?=
 =?utf-8?B?bWxHdklXMlZEdDhoNUszd01BTzNtZldLdTRqKysyNDNxeFNTc1dNNk14dDBr?=
 =?utf-8?B?eWZIZjhURUM1elhCdjBRdGJ1cXJTTjNyRWVUSkI3VFUxa2RUSWFRQ1Uxa2o5?=
 =?utf-8?B?UzcxVUxsOHNuT1lidzU3dmlkUkRIbzFkb0M4Yzd0STNLZGlpVUs5VFAvdHRk?=
 =?utf-8?B?Q21CckhhQUZYdVlyeXY4V3hvVUw4QXcyZWk1OWcwL3YrOHFaWmd1akoxRDVl?=
 =?utf-8?B?S3VOSXF1Q2I2cWlObWNhbDhGVGNwY0RJMVVSa3JCN0pvOHJGVWFwZVYva1F1?=
 =?utf-8?B?V3BaSHBaNTMzcHBzUzJZNGR4a0liaDBSdUh1cGl0NVdoZTZ3MithRnVDMk9l?=
 =?utf-8?B?Rkw2Tjd1YjE5bWZHUklUNFp5bk5OclV1eldiNHhqQUd5K1ZTVUJFcXEydG5z?=
 =?utf-8?B?dEZrQWx4T1k2QXJHVXlVOVBJL3ZCcGFPUHdqR0lGZGNYcFZRUW5lSHB4eSsw?=
 =?utf-8?B?aVBkOHJsZ05WQjdjVlZ2VmpZTUNqNFQ0U2VzeGMzcFJoMFlwOHFlVGxBR0h1?=
 =?utf-8?B?YTVoUGN4YTgwWlR1QkRFeXM2ckN0YVluMy9tQWRnZHVKRWdOVzJsMWFpc2cz?=
 =?utf-8?B?blhHWWNvaU02YkdGQjI1b09ZZU9sQmpTdHY4bms3SXVsWUZiU3Fab2c0c0Ra?=
 =?utf-8?B?UUFQR3BRb2FLWDN3NitLUlVCWWthR0xmd24xWVpBL2U4NkEwb2ZiWGpscjEx?=
 =?utf-8?B?Y2ZRNlREeUVPRmF6UndqTUNpWUR0YThmZUtsazkwaW5hR1VUUjNOdzZUQ2tN?=
 =?utf-8?B?UUJQUk13R0Z5SjliNVBUdlR4OXNlUHRaTDRxOU1YQ21DajZqaDJ4amZ2ZUhY?=
 =?utf-8?B?MGI0ZG1JdDZRWkJ2UHYrbjN0dWlNbkQ4REVZTHgyZ28yenhhV2hMbWxCaGpX?=
 =?utf-8?B?aU93SlN0d3VLZkUzQVlEa2pzdDAzdXhjKzRNN3N4TlozRHdnZEo4MDEvTjZm?=
 =?utf-8?B?eWh5S1B1bWZXcExMQWszYmlzRDE3VG1qYzRBUG8xcldyc29iZ1N5emZJWXJl?=
 =?utf-8?B?YVF3bE9WY3BNdld0NzRjVEROM3JHQ0VuNVhFc2kvZUFFemlaWHVjVGxYZmJv?=
 =?utf-8?B?NmZMT2Q0MlNTRk9nUDBUTnd2OXpGV2sxVk9HQUlwbXI2U3MwdTJPMmdTaEM2?=
 =?utf-8?B?M05FQ2tERVNFUWd0NE9EMGF6WVBnUU9EMjlLc1grQkNodVNmQ2Nqa2IwV0dU?=
 =?utf-8?B?aVpKSHZFWitSZWZoTEI1VmFJTkFwV3ErKzRUUFdUdUZ1STFFV1MvNnlCblVH?=
 =?utf-8?B?d3JVUXhlNXdaRmplZ0VuNUtiTEVSMG9FTTJUVkFKY2RBb2RDcFUzT1FteWNX?=
 =?utf-8?B?amVKbGZZWmpFcThXMXBLM1N2R3RFQm1QbW1CcDZ0Q0N3UzJhaDc0QzBGazlG?=
 =?utf-8?B?VXZnY3NaM1NGcisvRGtEckVscnVMQkNiQzVOblJ4cHduY0RXTWJjMGR1TkdN?=
 =?utf-8?B?UzFiN0g2bjhCY3JRazBTVzllQ3l1WlUyUnY5Y2s3NFIrWHRFVlNjY05OUE0w?=
 =?utf-8?B?RlJ4dHR1OXVGR0FjVGsvdjNmOWx6NDFSajN2d0lyeVZVRnlYeE9nQVRPZ3VR?=
 =?utf-8?B?SDc2UDJHMndKMWtzNm9SMWZwUGUwa3YxV1FBMFAzSTViYWM2a29zcjVLRVI0?=
 =?utf-8?B?aXpGMCtYTEYwT1lwM1dyYkVTTlVUbWRyakNEdmFIMGgzYzJsdUtzTWthWUVo?=
 =?utf-8?B?MDBpYTF1bTJ2ODZjd1NLY2RlTHFDR2NrTnk2SE1HU2IraVJpeENxUWQyeStj?=
 =?utf-8?B?MGVEZ29Kam5zakhMelNKWmhKcjFGVHh3QnZWSGZYaUYzamJQeTN3QnFjT1h6?=
 =?utf-8?B?NzZWR3RyYWJsQ3JFOThzTndybFZkeHlBaVJFM2Y2QXNFMjhBeDRjakFVVyt5?=
 =?utf-8?B?TS93VHB5bVRkUWZOdmNHaUJCckJrYkoxMWVCYTNtQUZGdlQyU3RHYlQvR3lp?=
 =?utf-8?Q?3sDPk4XyyOQQOhFB+Z2wckwko?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2b0fd55-c2b8-4a3d-8c40-08dd9452302e
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2025 08:18:07.2974 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8k1aVL51d4CK0/7OjktO3s7s9hEoEgcSXgl3oUD5pAyGBVl87oJ+eNBtvL6IadYqRgjDznx5EwXO7tbisY8NLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7294
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCAxNSBNYXkgMjAyNSAxMC4x
OA0KPiBUbzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOYXV0aXlhbCwgQW5raXQgSyA8YW5raXQuay5uYXV0aXlh
bEBpbnRlbC5jb20+OyBNdXJ0aHksIEFydW4gUiA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+OyBO
aWt1bGEsIEphbmkNCj4gPGphbmkubmlrdWxhQGludGVsLmNvbT47IEthaG9sYSwgTWlrYSA8bWlr
YS5rYWhvbGFAaW50ZWwuY29tPjsgS2FuZHBhbCwgU3VyYWogPHN1cmFqLmthbmRwYWxAaW50ZWwu
Y29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggMTEvMTRdIGRybS9pOTE1L2RwbGw6IFJlbmFtZSBpbnRl
bF9yZWZlcmVuY2VfZHBsbF9jcnRjDQo+IA0KPiBSZW5hbWUgaW50ZWxfcmVmZXJlbmNlX2RwbGxf
Y3J0YyB0byBpbnRlbF9kcGxsX2NydGNfZ2V0IGluIGFuIGVmZm9ydCB0byBoYXZlIGFsbCB0aGUg
ZXhwb3J0ZWQgZnVuY3Rpb25zIGhhdmUgdGhlIG5hbWUgc3RhcnQgd2l0aA0KPiBmaWxlIG5hbWUu
DQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4N
Cg0KPiBTaWduZWQtb2ZmLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNv
bT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdy
LmMgfCAxMiArKysrKystLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyks
IDYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcGxsX21nci5jDQo+IGluZGV4IDEyNjViYzRiNDMwNy4uZGIxNWQ0ZjAzMjhjIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jDQo+
IEBAIC00MTIsNyArNDEyLDcgQEAgaW50ZWxfZmluZF9kcGxsKHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlLCAgfQ0KPiANCj4gIC8qKg0KPiAtICogaW50ZWxfcmVmZXJlbmNlX2RwbGxf
Y3J0YyAtIEdldCBhIERQTEwgcmVmZXJlbmNlIGZvciBhIENSVEMNCj4gKyAqIGludGVsX2RwbGxf
Y3J0Y19nZXQgLSBHZXQgYSBEUExMIHJlZmVyZW5jZSBmb3IgYSBDUlRDDQo+ICAgKiBAY3J0Yzog
Q1JUQyBvbiB3aGljaCBiZWhhbGYgdGhlIHJlZmVyZW5jZSBpcyB0YWtlbg0KPiAgICogQHBsbDog
RFBMTCBmb3Igd2hpY2ggdGhlIHJlZmVyZW5jZSBpcyB0YWtlbg0KPiAgICogQGRwbGxfc3RhdGU6
IHRoZSBEUExMIGF0b21pYyBzdGF0ZSBpbiB3aGljaCB0aGUgcmVmZXJlbmNlIGlzIHRyYWNrZWQg
QEAgLTQyMCw5ICs0MjAsOSBAQCBpbnRlbF9maW5kX2RwbGwoc3RydWN0DQo+IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+ICAgKiBUYWtlIGEgcmVmZXJlbmNlIGZvciBAcGxsIHRyYWNraW5n
IHRoZSB1c2Ugb2YgaXQgYnkgQGNydGMuDQo+ICAgKi8NCj4gIHN0YXRpYyB2b2lkDQo+IC1pbnRl
bF9yZWZlcmVuY2VfZHBsbF9jcnRjKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiAt
CQkJICBjb25zdCBzdHJ1Y3QgaW50ZWxfZHBsbCAqcGxsLA0KPiAtCQkJICBzdHJ1Y3QgaW50ZWxf
ZHBsbF9zdGF0ZSAqZHBsbF9zdGF0ZSkNCj4gK2ludGVsX2RwbGxfY3J0Y19nZXQoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGMgKmNydGMsDQo+ICsJCSAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfZHBsbCAq
cGxsLA0KPiArCQkgICAgc3RydWN0IGludGVsX2RwbGxfc3RhdGUgKmRwbGxfc3RhdGUpDQo+ICB7
DQo+ICAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNy
dGMpOw0KPiANCj4gQEAgLTQ0Nyw3ICs0NDcsNyBAQCBpbnRlbF9yZWZlcmVuY2VfZHBsbChzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAlpZiAoZHBsbF9zdGF0ZVtwbGwtPmlu
ZGV4XS5waXBlX21hc2sgPT0gMCkNCj4gIAkJZHBsbF9zdGF0ZVtwbGwtPmluZGV4XS5od19zdGF0
ZSA9ICpkcGxsX2h3X3N0YXRlOw0KPiANCj4gLQlpbnRlbF9yZWZlcmVuY2VfZHBsbF9jcnRjKGNy
dGMsIHBsbCwgJmRwbGxfc3RhdGVbcGxsLT5pbmRleF0pOw0KPiArCWludGVsX2RwbGxfY3J0Y19n
ZXQoY3J0YywgcGxsLCAmZHBsbF9zdGF0ZVtwbGwtPmluZGV4XSk7DQo+ICB9DQo+IA0KPiAgLyoq
DQo+IEBAIC00NTIxLDcgKzQ1MjEsNyBAQCBzdGF0aWMgdm9pZCByZWFkb3V0X2RwbGxfaHdfc3Rh
dGUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ICAJCQl0b19pbnRlbF9jcnRjX3N0
YXRlKGNydGMtPmJhc2Uuc3RhdGUpOw0KPiANCj4gIAkJaWYgKGNydGNfc3RhdGUtPmh3LmFjdGl2
ZSAmJiBjcnRjX3N0YXRlLT5pbnRlbF9kcGxsID09IHBsbCkNCj4gLQkJCWludGVsX3JlZmVyZW5j
ZV9kcGxsX2NydGMoY3J0YywgcGxsLCAmcGxsLT5zdGF0ZSk7DQo+ICsJCQlpbnRlbF9kcGxsX2Ny
dGNfZ2V0KGNydGMsIHBsbCwgJnBsbC0+c3RhdGUpOw0KPiAgCX0NCj4gIAlwbGwtPmFjdGl2ZV9t
YXNrID0gcGxsLT5zdGF0ZS5waXBlX21hc2s7DQo+IA0KPiAtLQ0KPiAyLjM0LjENCg0K
