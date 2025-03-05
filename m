Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DADAFA505A7
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 17:51:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AC0F10E814;
	Wed,  5 Mar 2025 16:51:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OirqN7x9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B286910E814;
 Wed,  5 Mar 2025 16:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741193484; x=1772729484;
 h=from:to:cc:subject:date:message-id:content-id:
 content-transfer-encoding:mime-version;
 bh=8T//xlpj+chyqnBsPARlmbIFvnLzP3SRNlecqY9VxH4=;
 b=OirqN7x9/S7vt8CDlkkjcU8TiVx2veT4eSpceC76snVbqwGlIQJYMUv2
 VSmrF7ayEINuH1xHyO20Acm8FIToNS5vbms07Z88N0Kdu1+48XxhnRkNO
 o3YmiFHyk2X5Y1t/noTqU6Rz+uPKc4BgYlB3GzXLiTHKTGsW6wbHW+pcK
 gv4iNk6qxGlyTOX3NCEQZvq/EUvdKf/mctTJCdSs8wLsu5XSpghfib6zk
 iL/TxuFEYkAc+3z+AMfUcS0YQeOSe+0jFBRLuJl9E45yyeaEIdA2l0ol7
 TSmDNLxAVa+FpGz0a7UG9BPf0+Qnr+zVlX8ef+Qg9xyCg2r4VX8659rLf w==;
X-CSE-ConnectionGUID: KqKeEUmNT/64ZsGgDlOB0A==
X-CSE-MsgGUID: XJOeHrXRQVmp7CHS+zv2Iw==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="52812482"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="52812482"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 08:51:23 -0800
X-CSE-ConnectionGUID: gVclRNseQ8mf0RCubyc2+w==
X-CSE-MsgGUID: EhdnMZ+YR96sfcxbHqc5mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="122881621"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 08:51:23 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 5 Mar 2025 08:51:22 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 5 Mar 2025 08:51:22 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 08:51:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pg9n6AK6x3qtEH8G4tWo+SJTA817GuZ+IXaW21RGdgg56Hjkohhdn//f6xa+p8B0hFsBizjrSAWsKKuQJlh1w7jLuALX1nIr/OmYWheo1UfvpwaOIRX0XWP4aasib35bk7pK090MHAyFhZWM7QVxQ/3o3HOyCyH3i6xtXTazLXcKbeqyl7VUNX02vEDHz4QxT0+4rmmhLrq3NnM1Mmf7ZUdL/GjUQnq377ppkEywZvPIViURyuN2kMlEHusA1Vt1YKlMnawUm7InjOKq4wMj1JS+GJLdhNCt5CGe/vycnO4Nd44jCOnOLDxQXOTVg92493o9nOlpgSwMDTQs9gOaZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8T//xlpj+chyqnBsPARlmbIFvnLzP3SRNlecqY9VxH4=;
 b=imCjqxOFozfJ9SQr7kRTIPgMON5M3gWpaOwN4MsELbTFq6og4R/hnYdkw2S9mtxTaZCHjoU1XeDCXUNnx8Q2qlzXNCj26gKZtIlP5hKnsKyIjwgS0YLX8zkxnyeWwLJLBFM9JeK9t7K/YbZcSwEAjeE3q0hRBSdijaoS8FQINAqCcGDuvAS6oTaj/ZHCxqYbN9AiE8HZt61ShUKXD7sd1Ihp7EuL+hmzzSsoP+3KNInvJ7BsyRU1Z8x8ZaexmzdQlXrGi6BgjUZxFIpgcqOafVW+89aNWhYhEa7HdH+3pfQPxjpnPeEDCoVBJXZR2l27Oan9eNq2pNfJAMJUwYz+gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5861.namprd11.prod.outlook.com (2603:10b6:510:133::8)
 by SA0PR11MB4621.namprd11.prod.outlook.com (2603:10b6:806:72::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.17; Wed, 5 Mar
 2025 16:51:20 +0000
Received: from PH7PR11MB5861.namprd11.prod.outlook.com
 ([fe80::b320:4d74:ffda:ecbf]) by PH7PR11MB5861.namprd11.prod.outlook.com
 ([fe80::b320:4d74:ffda:ecbf%6]) with mapi id 15.20.8489.028; Wed, 5 Mar 2025
 16:51:20 +0000
From: "Knop, Ryszard" <ryszard.knop@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "rk@dragonic.eu" <rk@dragonic.eu>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, "daniel@fooishbar.org" <daniel@fooishbar.org>
Subject: Discussion: Moving away from Patchwork for Intel i915/Xe CI
Thread-Topic: Discussion: Moving away from Patchwork for Intel i915/Xe CI
Thread-Index: AQHbje7R0v3gGlPcX0aKuyeRUQqryA==
Date: Wed, 5 Mar 2025 16:51:20 +0000
Message-ID: <814f9bcb9c7ee22af45bd5278255af247c6664fa.camel@intel.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5861:EE_|SA0PR11MB4621:EE_
x-ms-office365-filtering-correlation-id: 2d25dddc-3eef-4b82-2cd6-08dd5c05f462
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dmdRY09qUVE2YVhBWDdhUldlT1QzMmc3TE9paGhkN3h0QUVPdmh3SU1hUW1U?=
 =?utf-8?B?VEg5a0ZlMU1jU1ZTTFAzM0QzblFWZWZkSWhSekdhZFFDNVZsNVZIQ2NBczFP?=
 =?utf-8?B?Mk10b3NzUGRocnh6Wjl2dUFwUytjc1AzTW9GdEFVcXppekorZldSNUVKOWVY?=
 =?utf-8?B?MlNqaldhM04wdk1SS0hPc2ZyZ045Q1h3Wi80MVNHTkYxQzdDRVJtbDJITDZy?=
 =?utf-8?B?YlkwaTJ1VDRua2VJbzFPWkpzZG9paWVXQVl6V1I0bXozVjN5dzA5Sjc2RHJy?=
 =?utf-8?B?SkdxYk1PMFk1K3IyYTNoYUlsTUhCWThVUUQwMVVnV2V3djBvVkVpNVh0VFY2?=
 =?utf-8?B?cFQ5M3hZN2dnMjJjNVNqZ2hsY05ENFNMalJUVVlyY2pDWTFLeEExSXkyZEJX?=
 =?utf-8?B?RjV0dkNJVkJOQTIvQmFtVElhdC9pRGdVMisvVFFBa1Y3cE1PYXIxVEVsa2p2?=
 =?utf-8?B?aTdRdms5QXlRdkkrRmpJVEpOTUh0VFM1MXlBdzhpNmJBdHRUN1RqU3BtR1gy?=
 =?utf-8?B?VDJDczFhUW1GWUNtOFFGUWo1WU5FejVqVVREYWZURXZ2V1c4bWc5aWYyRUNW?=
 =?utf-8?B?NHBXeGtzR3dWbHR6ZWJES2UrUEFQenB3aElOR3gzOVhNMzBVa2lkaERPUFgx?=
 =?utf-8?B?ZFlzZ0VOR3BDMmluUW45UWNPQVUwY2VXSTE2dHVpQ2oxckRzbkNuVkR2MEtC?=
 =?utf-8?B?SXhTM2V3ZlZZRVgzOVlTemt2cjVFdXYzYW9ZNzhoYUc4SWpUZVptMjh4QzFI?=
 =?utf-8?B?V2pNaUhkMVlmdkZLT0JlNkc0eDBscDlIQ05WVFNCMmVDRzhLTjFpSGt5Smtt?=
 =?utf-8?B?QXJjRDFWSTVnR214ektnandKMUxSNmdTRlVTdC9DQVdVUEVHbnE2cjlIeHI1?=
 =?utf-8?B?ZEd2a2Jia2Q1WDVrL0orMEZYTFc2U2JYMi9lR1pBNmFiVlUvdFpsY1VKZ2Np?=
 =?utf-8?B?L3lreE14UElNMnZxWEIyYk1Ua3diYXJCTk5DamdKZVlFU1NOMnBIOUNsQ0RY?=
 =?utf-8?B?QUlEQ0hWVnpLaVk3YTRWVmtJYmd2Q0t3cWRYanBNVFVKcjJ6MG5vYjcrUndo?=
 =?utf-8?B?ZE5sc1pQeWRXRmR5RzlyMVdtc1lEenVkTzRXSzE2cW9vWXV4bWJXeTY0RjRr?=
 =?utf-8?B?SGRqc2FPcXVkWjZBT3ZVREFQYlFNNklyNnVtOHRwaVI1ODhiNW4vUXhURHN0?=
 =?utf-8?B?UjNHczI3eGtnT3kwbkdoT1FEWE03SnQ0TGoyME8vWk1tZ09EdXYvOEE1YTRK?=
 =?utf-8?B?V2xzTG9LcTVtMGRueGhhZXVQSjMydDhCOThlQnlpQnFEdVlvSU4zb0NVeDd4?=
 =?utf-8?B?OGhna3AwcUtvNG1kd1JRSzRCVEhCbGlhYjltTlZLTG1rTldBZFJZdHJNWCs2?=
 =?utf-8?B?UlR1Mkx5c2g2KzRLdGFEZlNPQkowOHRpQ2ZtQW1QUG10aW96Skh6bnJBQ3Zm?=
 =?utf-8?B?ejFmQllZa2VvZEdEZHZUT3dFbGpsQzhSMVMyWmdBTXJPUWNvcVIyS28ySVQ1?=
 =?utf-8?B?Wk1ycGZzQjhub2ZvZkdTZ3JVNUxhQ2pRV3JNaFZZd29Lc2VuMXBoWWFFWlU3?=
 =?utf-8?B?UXJWaFJBVWZNNUxsbFBkUnEvVWhVSVBBWkVyZVJTTVdseHpyK3ZtRllNM0xn?=
 =?utf-8?B?OUZXdHJNdzVFYm1ZVFc2MmFETjZPUFJCbHhJN0ZSNnJiYXJISXRSQzQ3V0V3?=
 =?utf-8?B?bmN2MW0vYnJqWmJ6TTEyb3dBQ2M1MEJPQzAzSnRnT1BhdHl5dG9xOFluTHFK?=
 =?utf-8?B?WEUwWXNaampqSWQ2MjNGQXBZY0RMdDVNRXFwVm0xalhPRml5cGtVUUdNeEg3?=
 =?utf-8?B?K3J6WHY5TW10MG9EMkd1Y0FpT2xGc2VpY0tIQnEvb2pOclBrUGoxaGxsekRO?=
 =?utf-8?B?WEx3SzdaSnYzSVVjeVgyMkFMRm9Fc1REcWJ5aWtwQ2V1TGEwVTdLMW83bjRn?=
 =?utf-8?Q?cwVRfcPRl1D6oIrsj1pdRF+zaQgJraB/?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5861.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bTVMY2FlcFFhYWNEcGVVRzF1d1FmeWJySTRYRDdmYmFUd2tHSFpYWllWdk9O?=
 =?utf-8?B?NGJWZmJjTmFaOEtScktucG9vQ0Vad21SMzE3aGdmWW1BNkNOY3dKWk1TbkhY?=
 =?utf-8?B?aHJwQU5LL3dva010MlRtYm5BOXNZdkhhdFdSY0pJL1liZUNNaEhuSC8ySURq?=
 =?utf-8?B?WkdsR3hZbVRDK0NPNFc2VkpxaUlCdHZDZUx5RUV1bUtLNlF6c1JqWWR3NmFF?=
 =?utf-8?B?aXkxNWRjRmQ2anVQSHdRTDlSSkxDdC9TY1pXb1Z2a2kzRDdYVENXMmxnVTk1?=
 =?utf-8?B?YmhRRFpwN0ZJQzJXQURXQnJBNW9MZGVha2dMQm1UZTVVNXNBS3FXWjcvVUVo?=
 =?utf-8?B?UTVjZFpxUUVMd3YzSk9FSVpqZzJuY2U3SHJ2RjZWU3d5K08rRVNSQUdySVJy?=
 =?utf-8?B?Zk1YZmxmZkNIRDJoUys1K3ExUUtlN2RBdVhHMHhFeDhXNjY2ZmJwMnpjMGhI?=
 =?utf-8?B?Wk4zVGNMSTJJcjh1VFZ3amM3NnREdTJqNE4xL0dyVnM0VzJoZ0VBVjdxcW82?=
 =?utf-8?B?Z3U0K0U2MVdsTnQydlVCaXE2eFNmQm9Rd3pkb29ZSzdaNllRcW9IVmorRlJB?=
 =?utf-8?B?a2JabFBPTjVBK0lBUTEwYlV4aHY4S28wenBCUjgzTzlQZkNhbGJYUTQ0OTBU?=
 =?utf-8?B?QmRPcERRUFJyRVBJMzVZaWI1V2JoZFJENXBuakEveHlGZDRGK3J5RVd2MDNa?=
 =?utf-8?B?SXNkZ0tvNDVzU1pvTTZjdncrVk54Sy9SdE53Tjl6R2JPTUwvdkNmV0MvT2ZZ?=
 =?utf-8?B?dXlUazV3VlNQcjloREVEaVVWbFFPRDROZnVzMGVZeWh6K25QZlM1d3RWVG85?=
 =?utf-8?B?ODZKRW41bFBjWFVpMzVGeWdkTi9adnJkdjN3Q2lDc0hEVVdRS0djdUpOVUtJ?=
 =?utf-8?B?bStDRnNNSXg5a1ZNQTNGdCt5eEREZ3crMTVQTFlHOFlSaUpIZzhSRHZLaThu?=
 =?utf-8?B?RXBYQ1djNWYyOFNtZWdHbjZrQVZncHd4Y1J1d3dXZmZ4eEJIVGxNMWQ4MW5T?=
 =?utf-8?B?M2lTREcyZzRHSjNkdWNDMUdVODdpWkdrR3pUYkdYQ0g0cTNEMmY2SFpWWFRj?=
 =?utf-8?B?ZEw5WnphVWg5RzlqWUdPMG5IVW5JY1pPODhlTmU5TXBFZFRaNnFTQk1Nb0Rh?=
 =?utf-8?B?c2VlTjdHUkxqN1J1ejBXcjhKRS9abzFBeXQxN1E3akI2WTYzTXB5MSt1RGFr?=
 =?utf-8?B?RW1lU3dGbWJIN2JTWGRwVWR6SHZHSWhqeFJOV0tYWUVQa1BqTGNsVmVkZFZM?=
 =?utf-8?B?M1JDRnRlN1BBZVUvU3kwVlFhaS9JSlczbSsrYXRzTWhCMDhGd3d6WjBmZ01P?=
 =?utf-8?B?UkpldjlFdXZOMkNOYU9IUmVvN3lYUW1FNEp0Ty9PdTdRRGJkbnhDQnNIOXFW?=
 =?utf-8?B?bkRKWENBNlRoVERwQ3NNV3ZOc2hpeFEyeDJpWWM0UHBSTU44dXNmeWtJS1Iv?=
 =?utf-8?B?L0ZsZjRYSXl0TDZUYUowVHRqRTlwNC9FZXd0K3NwRmZIMnk0OERGOW8rMkRD?=
 =?utf-8?B?RTk0bkZDRFRkOFNzcFBvMDdCV0hibFU3MGJOeWhBYjVFYmsraUNZb3pUS0Zt?=
 =?utf-8?B?RllBeHFLbkh4OXluNUc2Uzk3bXpzeWVPTjRXYXo2SWx2RTdBSnVNeXJKSWdU?=
 =?utf-8?B?MDczYTR2ZlBBRXJBUmk3MExRU1FXVE5tZk1FTjVvb3VWQittM05zWHVKYWc4?=
 =?utf-8?B?SFpWdGRKWXowakczVElZSnFOblZVK0NLdVdUek9OK20zd05ZMUp2QWtla05q?=
 =?utf-8?B?aGhJMkZVWi9rZzMwN1orSjNIZ2t1YnljL1pUQlZGWVd4cHMxdk1oN2NnTTg1?=
 =?utf-8?B?eHhJYUdhSnZjeVVyK2JtWmhBbzFjcE55eFBzU1ZBWFVuUGJPdjdvL3FObkxi?=
 =?utf-8?B?QjZGQTQ1bVk1eCtRMk1qSmE2bFd1Nm1wb0RkbGVoZE54WmxOZVVyVm5ET0l2?=
 =?utf-8?B?bDF0SFUwODlkOW1hYUF0TVhBR0t5UWMxQjlYQUZFQ1ZkTEg4R1ZIamsycVZ6?=
 =?utf-8?B?cDJNWld4WlEzVk54RGVIKzBiRStRcGZGL0JqZktld2Yrd1B0NXljWnRob2x0?=
 =?utf-8?B?REVvMmhYa2crMUQ0YlphVjkwdXplb1pDQ1hyTDRTSm1sbUc4WnZXQkQ5eEc1?=
 =?utf-8?B?TmVVQ0F4NmFCY2hrclFqK3ZLZkNMamRydHd6ajF5Y0IvMTVKUXNuQVBvRklL?=
 =?utf-8?B?REE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DEF03FB2C3E323408F42F1EF691986B7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5861.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d25dddc-3eef-4b82-2cd6-08dd5c05f462
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2025 16:51:20.0592 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AptYOj3orsf3s5wOLtrzaVGsoFVUNbdSr6/HQnQskFbeLgCkxzps4SayOfYDqK8r0hnEotjR+jkNvOWt9++HNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4621
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

SGV5IGV2ZXJ5b25lLA0KDQpQYXRjaHdvcmsgaGFzIGJlZW4gaGF2aW5nIGxvdHMgb2YgaXNzdWVz
IHJlY2VudGx5LCBkcm9wcGluZyBwYXRjaGVzLA0KYmVpbmcgdW51c2FibHkgc2xvdyBhbmQgZ2Vu
ZXJhbGx5IHN0YXJ0aW5nIHRvIGJlY29tZSBtb3JlIG9mIGEgcGFpbg0KdGhhbiBoZWxwLiBPdmVy
IG9uIHRoZSBDSSBzaWRlIHdlIGFyZSBhbHNvIG5vdCBzdXBlciBmb25kIG9mIGl0IGFuZCB3ZQ0K
ZG9uJ3QgaGF2ZSBlbm91Z2ggcmVzb3VyY2VzIHRvIG1haW50YWluIGl0IHByb3Blcmx5LiBMdWNh
cyBoYXMNCnN1Z2dlc3RlZCB1c2luZyBwdWJsaWMtaW5ib3ggYXJjaGl2ZXMgZGlyZWN0bHksIGFu
ZCB3aXRoIHNvbWUgcmVjZW50DQp0b29scyBsaWtlIGI0L2xlaSBtYWtpbmcgY29tbW9uIE1MIHdv
cmtmbG93cyBmZWFzaWJsZSB3aXRob3V0DQpyZWludmVudGluZyB0aGUgd2hlZWwsIHdlIGFyZSBj
b25zaWRlcmluZyBzZXR0aW5nIHVwIGEgYnJpZGdlIGJldHdlZW4NCk1McyBhbmQgR2l0SHViL0dp
dExhYiB0byBpbnN0ZWFkIGRyaXZlIENJIHVzaW5nIG1vcmUgbW9kZXJuIHRvb2xzLg0KDQpXZSBo
YXZlIG5vdCBkZWNpZGVkIHdoZXRoZXIgdG8gZHJvcCBQYXRjaHdvcmsgeWV0IC0gdGhpcyBpcyBh
IHRocmVhZCB0bw0KZ2F0aGVyIHBlb3BsZSdzIHRob3VnaHRzIGlmIHRoaXMgc291bmRzIGxpa2Ug
YSBnb29kIGlkZWEuDQoNClRoZSB3b3JrZmxvdyB3b3VsZCBsb29rIGxpa2UgdGhpczoNCg0KLSBB
IGRybS10aXAgbWlycm9yIHdvdWxkIGJlIHNldCB1cCBvbiBHaXRIdWIvZmQubyBHaXRMYWIsIGF1
dG9tYXRpY2FsbHkNCnB1bGxpbmcgYWxsIGNoYW5nZXMgZnJvbSBkcm0tdGlwIHVwc3RyZWFtIGZk
Lm8gR2l0TGFiIGFzIGEgc2Vjb25kYXJ5DQpzb3VyY2UuDQotIEZvciBlYWNoIG5ldyBzZXJpZXMg
b24gbG9yZS5rZXJuZWwub3JnIGEgYnJpZGdlIHdvdWxkIGNyZWF0ZSBhIFBSIGJ5DQp0YWtpbmcg
dGhlIGxhdGVzdCBtaXJyb3JlZCBkcm0tdGlwIHNvdXJjZSwgdGhlbiBhcHBseWluZyBhIG5ldyBz
ZXJpZXMNCndpdGggYGI0IHNoYXphbWAuDQotIFRoYXQgUFIgd291bGQgdGhlbiBnbyB0aHJvdWdo
IHRoZSBub3JtYWwgQ0kgZmxvdywgd2l0aCBDSSBjaGVja3MNCmJlaW5nIHJlcG9ydGVkIG9uIHRo
YXQgUFIsIGluc3RlYWQgb2Ygc2VuZGluZyBhbGwgdGhlIHJlcG9ydHMgdG8gdGhlDQptYWlsaW5n
IGxpc3QuDQotIE9uIHRoZSBtYWlsaW5nIGxpc3QsIHRoZSBicmlkZ2Ugd291bGQgc2VuZCBhbiBh
Y2sgdGhhdCBhIHNlcmllcyBoYXMNCmJlZW4gc2VlbiBhbmQgd2hlcmUgYXJlIGl0cyByZXN1bHRz
LiBZb3Ugd291bGQgbm8gbG9uZ2VyIHJlY2VpdmUNCm11bHRpcGxlIGVtYWlscyB3aXRoIEtCcyBv
ZiBsb2dzIGluIHlvdXIgZW1haWwgY2xpZW50LCBidXQgZXZlcnl0aGluZw0Kd291bGQgYmUgYXZh
aWxhYmxlIGZyb20gUFIgY2hlY2tzIChhcyBzdGF0dXMgY2hlY2tzIGFuZCBsaW5rcyB0byBmdWxs
DQpsb2dzIG9ubHksIG5vIHRyaW1taW5nIGFuZCAibGFzdCAxMDAwIGxpbmVzIG9ubHkiKS4NCi0g
TWlycm9ycywgUFJzIGFuZCBjaGVja3MgZm9yIHB1YmxpYyBtYWlsaW5nIGxpc3RzIHdvdWxkIGJl
IHB1YmxpYywNCm11Y2ggbGlrZSBvbiB0aGUgY3VycmVudCBwdWJsaWMgUGF0Y2h3b3JrIGluc3Rh
bmNlLg0KLSBMb2dzIGJlaGluZCBsaW5rcyB3aWxsIGJlIHN0b3JlZCBmb3IgYSBmZXcgbW9udGhz
ICgzLTYsIGRlcGVuZHMgb24NCnRyYWZmaWMgYW5kIGhvdyB0aGUgc2l0dWF0aW9uIGV2b2x2ZXMp
LiBHaXRIdWIgQ2hlY2tzIHRoZW1zZWx2ZXMgKGNoZWNrDQpzdGF0dXMsIHNob3J0bG9ncyBhbmQg
bGlua3MpIGhhdmUgYSBoYXJkIHJldGVudGlvbiBwZXJpb2Qgb2YgNDAwIGRheXMuDQotIE5vdCBz
dXJlIGFib3V0IFBSIHJldGVudGlvbjogd2UgbmVlZCBhIG1lY2hhbmlzbSB0byBjb3JyZWN0bHkN
CmlkZW50aWZ5IG1lcmdlZCBzZXJpZXMgc29tZWhvdywgdGhlbiB0byB0cmltIHRoZXNlIGZyb20g
dGhlIGxpc3QuDQpFeHBlY3RlZCByZXRlbnRpb24gdGltZT8NCi0gTm90IHN1cmUgYWJvdXQgcmVw
b3J0aW5nIG9uICJDSSBmaW5pc2hlZCI6IE1heWJlIHdlIGNvdWxkIHNlbmQgb25lDQptb3JlIGVt
YWlsIHdpdGggYSBzdW1tYXJ5IG9mIGNoZWNrcyB3aGVuIHRoZSBlbnRpcmUgd29ya2Zsb3cgaGFz
IGJlZW4NCmZpbmlzaGVkPw0KDQpPbiBHaXRIdWIgdnMgZmQubyBHaXRMYWI6IEknbSB0aGlua2lu
ZyBtb3JlIG9mIEdpdEh1YiBoZXJlOg0KDQotIEdpdEh1YiBnZW5lcmFsbHkgcGVyZm9ybXMgYmV0
dGVyIHdpdGggbGFyZ2UgcmVwb3NpdG9yaWVzLg0KLSBFeHRyYSBmYWxsYmFjayBkcm0tdGlwIHNv
dXJjZSBmb3IgZmQubyBkb3dudGltZSBwZXJpb2RzLg0KLSBCb251cyBwb2ludHM6IFdlIGNhbiBz
dG9yZSBwdWJsaWMgSW50ZWwgQ0kgdGFncyBkaXJlY3RseSBpbiB0aGF0DQptaXJyb3IgZm9yIG1v
ZGVyYXRlIHBlcmlvZHMgb2YgdGltZSB3aXRob3V0IGFidXNpbmcgZmQubyBzZXJ2ZXJzLg0KDQpF
aXRoZXIgb3B0aW9uIHdvdWxkIHdvcmsgZmluZSB0aG91Z2gsIHNvIG9waW5pb25zIGhlcmUgd291
bGQgYmUNCmFwcHJlY2lhdGVkIDopDQoNCkNJIGl0c2VsZiB3b3VsZCBub3QgcnVuIGluIHRoZSBu
YXRpdmUgZm9yZ2UgQ0kgZWl0aGVyIHdheSwgYnV0IHJhdGhlcg0Kb24gb3VyIEplbmtpbnMgaW5m
cmEsIGFzIGl0IGRvZXMgdG9kYXkuIElmIHRoZXJlJ3MgZXZlciBhIG5lZWQgdG8NCnN3aXRjaCBm
b3JnZXMsIGl0IHdvdWxkIHJlcXVpcmUgcmV3b3JraW5nIHRoZSBicmlkZ2luZy9yZXBvcnRpbmcg
Yml0cywNCmJ1dCBub3QgKmFsbCogdGhlIGJpdHMuDQoNCldlIGRvbid0IHdhbnQgdG8gc2VsZi1o
b3N0IGFub3RoZXIgZm9yZ2UgYXMgd2UgZG9uJ3QgaGF2ZSBlbm91Z2ggcGVvcGxlDQphbmQgZnJl
ZSB0aW1lIHRvIGRvIHRoYXQgcHJvcGVybHkuIENvZGViZXJnLCBldGMgYXJlIG5vdCBhbiBvcHRp
b24gZHVlDQp0byB0aGUgZHJtLXRpcCByZXBvIHNpemUuDQoNCkFuZCB0aGF0J3MgdGhlIGluaXRp
YWwgaWRlYS4gVGhvdWdodHM/IERvIHlvdSBsaWtlIGFueSBvZiB0aGlzLCBvciBkb2VzDQppdCBz
b3VuZCBsaWtlIGEgZG93bmdyYWRlIGZyb20gd2hhdCB3ZSBoYXZlIHRvZGF5Pw0KDQpUaGFua3Ms
IFJ5c3phcmQNCg==
