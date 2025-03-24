Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B91AFA6D458
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 07:38:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D30310E066;
	Mon, 24 Mar 2025 06:38:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="godbJECy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CF3A10E066;
 Mon, 24 Mar 2025 06:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742798283; x=1774334283;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=yGudmaxrS6FQFy4RkvhQAns16jgAt0qgLdtrKQwxLYA=;
 b=godbJECyBUsbuTKckyn45cE+ga6bZz2lwouYqICGcMW9e74eK6lYLIRf
 PgxHiX6osvfu9+Vd59zpel31eDFJjvK6b5VYSkilDQ27x5J4Su9NphRTU
 7VMHtABdVcxXwcpY2bj+VdCmyqYEIFBR8oZyj8mtQIUjhwpGrIWjPS09m
 5jEEjl0WCPzJtFzJVkIZf08dWWphKY3XjgdLAwze4gMF271HmtAJnDsjq
 BO+B0d3rC6mlNvzHZwisvIGaOa6AC2kqBOwEdB1JRykowV8O4V3M9nA+6
 TqyRa+4n5AWNKAU6EJIuOBIXxMnvPNsbObXlr3Q0lBPUZJlr/609+XrVK Q==;
X-CSE-ConnectionGUID: QYPIFWaXSMKNcKftudlFaw==
X-CSE-MsgGUID: TJhaj/kYRY+BLWutjHgL7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11382"; a="47858484"
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="47858484"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2025 23:38:01 -0700
X-CSE-ConnectionGUID: UUBN8OCkS/6rGpy8+BGWYw==
X-CSE-MsgGUID: 2neFFNg4SZWu2/W8nvUD8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="124735888"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2025 23:38:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 23 Mar 2025 23:38:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 23 Mar 2025 23:38:00 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 23 Mar 2025 23:38:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S/K3OmnPa+ztbskyp1GGyT6RtLJolWBFZeVLlaGCb7AFDuqDrbUABieKWIBp0df1YbzKc16jIw3HO/dC7SOOallqLZ64zn8OLd/agtH0qwmlRLwBxUYFOMoCoo/m2nLKBaVLhoiYE1flWLGQy+qJ3CWJMbl7sJYYza3CSen0/k63r96lC7N3S8KYFVxvRAcqgMMftWU6sx2lwj5vLLY/QYU0N7vWQKRu48tcP2fAj6SO+uWT6Dgjlj5hpuama5Y+i+Zdrz6QSgYXQUogvMreYXi6CyBYyxuLD2MYOB3DQjDFArwuFuocjpJ/e8/E6uKZ+mQDmvHgHPIC498krV1zAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yGudmaxrS6FQFy4RkvhQAns16jgAt0qgLdtrKQwxLYA=;
 b=mFg0xDG6BmT6UtwVOGMqLbXwnMNQ9vxcUkpi1XY1/ezUTcA3mDbTcqcyV6m3yd3IFqV4RKXeSQYSnP/WalwwM3+bclJ0JIXuMdaPCuarM7mZAyiFiRc/3baoChRhvqYk0TXAjUCw81Gqs1UEnHPCWPZDrrWZPkujcObryT6j4I26vtJDD0Og+FBR8fuT5jo9slSiUdD0lilal15XYhEHOXL1p4uaJkN80zboa1v77BBHH+lIN7QcRs76aDNzGR++57vR1xPlTWc+j5328LA3/qVLZbxEAnwhV/WGVi3MQVxe60S4gmRlIS9VaxgfROZrqsuPe+hQuu59y57ABbIInA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB4990.namprd11.prod.outlook.com (2603:10b6:a03:2d8::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Mon, 24 Mar
 2025 06:37:31 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8534.040; Mon, 24 Mar 2025
 06:37:31 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Golani,
 Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [PATCH 06/16] drm/i915/display: Move
 intel_psr_post_plane_update() at the later
Thread-Topic: [PATCH 06/16] drm/i915/display: Move
 intel_psr_post_plane_update() at the later
Thread-Index: AQHbl9oTwqE0yCIUoESNnSpqJDL8hrN94cEAgAP8+IA=
Date: Mon, 24 Mar 2025 06:37:31 +0000
Message-ID: <b8ebb22ee29b6052bb915f72e5e26faafb233afa.camel@intel.com>
References: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
 <20250318073540.2773890-7-ankit.k.nautiyal@intel.com>
 <Z92lNhLy9r1PvJvB@intel.com>
In-Reply-To: <Z92lNhLy9r1PvJvB@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB4990:EE_
x-ms-office365-filtering-correlation-id: 01c06822-1228-4a54-2c23-08dd6a9e5aae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|376014|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?elNLdCt3K2VQRlFPaGZDaFFGZmViMDd6OUdFeXlhMEYxWGp1N2s4UUppTWlv?=
 =?utf-8?B?SmxId3ZpTUpBanRBYkdxZ3UzNzZQZkRTeDR3OUFLcEdQdXVYeGpEbmhBUzdh?=
 =?utf-8?B?VTJFQ3VUaE1TZVBzWlF5Z0NnTUVoZkhXdHo1M1dlNGl4T3paVkNhcTh3Mng4?=
 =?utf-8?B?YU1mVVRMbVB1Ni91dHpKMWpMUWQ1NHZPc1U3M1F5NnVtbEpTUGFnalZPTndj?=
 =?utf-8?B?MkZyQWw0MGI4dy9kdjFGOFhlb0tET3Q5Y3dFb0Vqamg3VWRiN0Q4U3QzSTQw?=
 =?utf-8?B?THhXOS9JQVkvdkFFcHJnOHJON0ZPMVZxU2lQMG1sMU1nc25qVmZGUERuSTBJ?=
 =?utf-8?B?SzY0b3MwN0QwVEI2TklpWTJsKzc4NS84NTByYkVuSVpXNnE3Y04xZ3VLWXpY?=
 =?utf-8?B?YVdFVFovdmY5S1lhdHVRTHRNNTQ0ZDdoeHh6RzQzdThRTmdjQXk0dUlpMTl6?=
 =?utf-8?B?YUlVT2doMHB4ZVg5c1hQWUJaMUJ3UW5TZUU0RGxRNmRLczFwUU5yMjAyUlpk?=
 =?utf-8?B?V1NSZGhoNWRvWHFiSVd0ZE9nNWxaVUkxNTA2RVlHclN4aWd0eUFNTXhqeEFr?=
 =?utf-8?B?SmxGOVdpcWxWUFNkczV5RTd5QzJmL3RBYjZzZVBhN3JSUWtFZnNaam1yU1k5?=
 =?utf-8?B?VkFEcDNDNXRTZHpIV0p1cjZiRHppelhybVNZS0tockFySG9nN2RQekJxVG9N?=
 =?utf-8?B?d0x5U3F6V3RwOG5wa2pka3RRUGRKU1grQm03dkJ4ck5ta1Y2UFltdkJ6cHhu?=
 =?utf-8?B?dng2UDIxakN3N29hWUR6WTg5SmhaUWRXS1F6eVE4VmJCUkdPNk5DdWhOcFlG?=
 =?utf-8?B?YmVPMlNJYUJaY3AvUmpCOTdFckJDb2lLUTNPZG5IdDBpQUJTUEpDOVgxT2xp?=
 =?utf-8?B?SHh4enZJcS91NDlZd1dEalpQai9vcVFqeSt4S2RyeUMxRUxqREVQR2FucnZ4?=
 =?utf-8?B?cks1WGtJUHJOS0FHQkpEaFk1ZXpHeUpCdjZUVjM2VnBBSFhMNUNHQXRRbnRD?=
 =?utf-8?B?cEcrZkZhUnNvRWFFb0J0OU8va0x2K0xOMEhobkpGY1VlYkdWVDZMcUpyMURG?=
 =?utf-8?B?YXZMeHR1VEtPWktndmpwYk1laHN6cWZUYkRtdWNRUGxqNGRGemx2RVpZYUlY?=
 =?utf-8?B?RWZWVnlFUi9xNW1JWEpvRnplQmpQbmx2VlBoVkFCMXJOL2YxTDNzdUdlbUlt?=
 =?utf-8?B?VHdCRFhlU2dCVmJkYTBoZmpVZ2U3b1kzNXVsaUlhWEJkZ3d6RU5Kc2dZQzU0?=
 =?utf-8?B?Z3dMZ1NVS214YmtIalNkV1c1ZmprTWZNQVpPOCtTNDhTUlUyWHZlaGVkYmF4?=
 =?utf-8?B?MUdMY3lkejkrQWUxOXFINlZCOXp2bmc4WUhWOTMwS2RnZmFvUTJLc0dGQjFm?=
 =?utf-8?B?b0hTaS9SY2srRVNSOGlwZ1NoUjNMRWNUVUtMSDl4Y0ZLTVlGakl1a1RIMy9E?=
 =?utf-8?B?SWNmdC9MbmJpcklua2puTGhMblh5OTdleEk3VDF2WHcvVzhpOVphSkhsc3ll?=
 =?utf-8?B?R3MvRFpSRUZRQ2ZtWldlOE8yTXVkZG44Nk1DTVBvbHA3T3RiVVpZcnFrcFRt?=
 =?utf-8?B?ZVNBZUNMUjdoZUJUMFB1M0U3SjVjemdQRllHYUhzTGFITmNLdWViT2pnSHR5?=
 =?utf-8?B?Y05YZzZLTXFKUk9JUHZ2RTFHaElOa0FwR0xIa2xyUEZNRTdwT3VYWWVObnAw?=
 =?utf-8?B?SVp1WGVGbDZhTjZCS3ZSdktnbEhzVG5qU2JYeC9JUkdMdzM1SEl1K0ZRb2dm?=
 =?utf-8?B?czFydksyaUVHQ3BEbUpZQU50eWVFZjlGdWFkNGZLaTJubUw4c1NJdUhtVUFk?=
 =?utf-8?B?YUsyczB1azhJR2Fhemh0MkRmWWE3QnlwdWo4RE1SaWR2SW5iSGhGSmV2dXlx?=
 =?utf-8?B?UlNnNlNtanNVcFg0M21hK1c5SUkxTjFzcVhTbUx5Q1ZvaU42cG1aWSsrQUdJ?=
 =?utf-8?Q?QUoo9VV/SbBmaK2eswKWki//pI/bno5S?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q0IrWnBoVDlsa09UUC9YQ1d4ZFpDeWwvL0V6UHNvL3dNZkVRL2tuL2pMOWRK?=
 =?utf-8?B?QTJXV2xZbk1ScHRqNG16NDMyZVlZZGFPQmJjTDRaZ2l1MUtFdFdsU3ZkaGYx?=
 =?utf-8?B?TmVlWnFiY3BTYXJoOTFzbm1oU2R2U3J1ZjRHUHF5M003M3FXNkdrdFZFdjdQ?=
 =?utf-8?B?ZXA2TS9xQUF5U3RpdTRzTHdEdGtqb1B4bDhXTEhlUGhrWEdBRlBKa2x1aXRt?=
 =?utf-8?B?U1ZiT0xkOHd3dXIwdU5mYVFrVlMvWlZ5a1pNczNkWlJyb2R3RjVUN0dQTlFT?=
 =?utf-8?B?b2FWMmN5VzJ2U2VXT0VmTzdBWHZNRUtxaytoeGpyWTZaOHBJY2UwV3kycUox?=
 =?utf-8?B?bHZVeUVVa3FzbzBKMGt0aUZJN0NTRDVZZlUwUkd4eTBzOVFQMm9ZMkVVYlR1?=
 =?utf-8?B?WlJNcUVYem1jVXM3OG5lQ0dHZjdHVkcySnFwYnpES1lnbWxyZ2xveWFWTCt5?=
 =?utf-8?B?dEJyM2phb0RNZVFHUXRqRFJTV1lDUUtCVXVvL3drUzlacWtMSmhTdklQdmds?=
 =?utf-8?B?VUtJM3VZUFY3Q2ZPNm1YMjdrZXJTNlJPR0FIdEZBbitLdGM4NEpHenI4UlNX?=
 =?utf-8?B?MHdQZk0rZ0srcEpMU1RqZEcxYUhhbDczMzhVRXJRem5pcGV0TGJNVTE1L2wy?=
 =?utf-8?B?WlhvZ3YrNE82U0FJaE9hSVdGTWV3NVV1ZHZ2RmVNNVBtWUNxTWxvL3BhM2l2?=
 =?utf-8?B?M0RHcUtJaUhDZFhLRXNJcU80bCt5dVhtRldEL3JhaVJyUkNwMi9LT1psYmoz?=
 =?utf-8?B?c0RhajlKUjVoaWRHMU0yR0hrd2pIbngySnJXaEM1cEhXV1EzeG9qc2d0MkdD?=
 =?utf-8?B?VExmZ0tLOTgrY0c2T2hGWGs0eUJ1TDBrdkJONmlrVU9UVUo3Q3dncGhYanV2?=
 =?utf-8?B?TnVUWXhqMEZNMWtRK1ZmdkRQMEEyczRTS1BKT1VYR21UaTBhUHBBQ0VHdk53?=
 =?utf-8?B?QlNmc0pxNWhGRzlBbHhCWG5vZWlLcHZBam5FbSthNVFDUjQyWk5DZVNaNVhE?=
 =?utf-8?B?eGlKWmxuWGpzeVdXeGczVFMwOXBQK0Q3Tis5c2tCQ2k3RTBUV2l3cXRpeWhr?=
 =?utf-8?B?bFN5aWpvOHJINFBIdmJkU29GL211NWhFNCtJZGJKZzZ4L1g5MGY3UitNUnE3?=
 =?utf-8?B?RW5yVG1hZEFxc0duSklMVThtODB6NGVmQnROOHhMaWtaUTk5eEhhd3pkbEFG?=
 =?utf-8?B?em9FUzVSR0lGSFRQZ2cyQWd3eVdoTVhqejhMZHhLdy9QZmZkUzNxZ3p5enRj?=
 =?utf-8?B?enFDSTc3ZXRHMUwxdWdGbEFBUUVQek1temRlbXpxU2REcHBQK3RwSXNnYWlQ?=
 =?utf-8?B?T1I5TStJRWs3ZGg5WEVpcW4xQlVuNU9WY285SzhEK2U1Vm5oUDQ1WU55UDB4?=
 =?utf-8?B?QkFiRTViNHhSUTdPYTdXbW1CZGE0dWZuU3p5eEFVTUJTYi9sZlN2bnFDd0dn?=
 =?utf-8?B?c2swaGdON0Y5TVNzbWtCMG5nVzEvbDV2dG9vWkNCRXlrejkzNU1VS20rUlQv?=
 =?utf-8?B?V0tBWi9PQXZwelo3OXZCWDZzVm1mSTlJWHZidEJyN2FodVdDL3hIbG1LWEJ1?=
 =?utf-8?B?b3k2NUpHdmZlUDFyeTNpQkRQNXo4eExFTWtrelBrRmVLcmhneWc0ZGwyKy9T?=
 =?utf-8?B?OXlQczJwNjZ2azFaMnNQd2RaWGdZRkMvUnBadEVvK3hQbXZ1NXpCbUdwS1p6?=
 =?utf-8?B?UXZDS0thVEFxZnVjekRkZFQrd2h6MXNOcXJRZnVoQVNielZWYWFBZzhsTVBV?=
 =?utf-8?B?WGhSejdLMU5yRitDVnpqOVJ4aEV5dE9BVXBTOWluRW1qNkZLaGJTa2IwNzdz?=
 =?utf-8?B?d2Roc3k5Tk9vQXQzQlMySFRVTGd4MU53M2VsdC9GUWtiK3J3bDJCaTRITzlL?=
 =?utf-8?B?QkpTblc2RFF6TER0dnFodW01MzFJMkJtbStYL1c3UzBCUTdjSjJxY0pLNll4?=
 =?utf-8?B?YlEzaVVuSnozOW1TZmtiVGpuTEJQd21JQmtXZlhxSzJZeXFvR1NyalEyR2NE?=
 =?utf-8?B?UTFON1JVQjJJbXlkdzh5Q0srWlFRaS9vaDJxaTBVL21ZSjlLanl1UjZMU3I5?=
 =?utf-8?B?eWVlVGVrLyt1UWJKTEk0TDJiK2JpaDNzdzVNaWlhMFBXQ0JUVHZ5alJCbm9p?=
 =?utf-8?B?SUNxdTJoRStvWEFuQlJ3K3AvQ3BWeXN4bk01eVh4VktoeFVkaUJxQjdqS241?=
 =?utf-8?B?YVVCUDZLcEpwQTFoVklPZFlTWWVPQVZicmIxYi9CQS9wRVJvZzVCS2pFTmQ5?=
 =?utf-8?B?Y1JndUliSkUzbHZ2WEp5Z1hLK2xBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D55440AB35B60849BE0E92E9D0A3ED23@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01c06822-1228-4a54-2c23-08dd6a9e5aae
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2025 06:37:31.4971 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sJOYf+DMKfTJ0qErB78aevYrH2zRtEqALl377Jj23WR/H6vvAl+3e8jxLaDH6wpUDFeyjEuVmbiJ4Fne2gdSniVqF88lJ+njSlGGUzoWW8M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4990
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

T24gRnJpLCAyMDI1LTAzLTIxIGF0IDE5OjQzICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgTWFyIDE4LCAyMDI1IGF0IDAxOjA1OjMwUE0gKzA1MzAsIEFua2l0IE5hdXRp
eWFsIHdyb3RlOg0KPiA+IEluIGludGVsX3Bvc3RfcGxhbmVfdXBkYXRlKCkgdGhlcmUgYXJlIHRo
aW5ncyB3aGljaCBtaWdodCBuZWVkIHRvDQo+ID4gZG8NCj4gPiB2Ymxhbmsgd2FpdHMsIHNvIGVu
YWJsaW5nIFBTUiBhcyBlYXJseSBhcyB3ZSBkbyBub3cgaXMgc2ltcGx5DQo+ID4gY291bnRlci1w
cm9kdWN0aXZlLiBUaGVyZWZvcmUgbW92ZSBpbnRlbF9wc3JfcG9zdF9wbGFuZV91cGRhdGUoKSBh
dA0KPiA+IHRoZQ0KPiA+IGxhc3Qgb2YgaW50ZWxfcG9zdF9wbGFuZV91cGRhdGUoKS4NCj4gPiAN
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmtpdCBOYXV0aXlhbCA8YW5raXQuay5uYXV0aXlhbEBpbnRl
bC5jb20+DQo+ID4gU3VnZ2VzdGVkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5o
b2dhbmRlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDQgKystLQ0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gaW5kZXggMjQ2ZGE0OWFm
MDBiLi40YTAwODNmZGZiMDUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IEBAIC0xMDQ4LDggKzEwNDgsNiBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QNCj4gPiBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlLA0KPiA+IMKgCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRl
LCBjcnRjKTsNCj4gPiDCoAllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7DQo+ID4gwqANCj4g
PiAtCWludGVsX3Bzcl9wb3N0X3BsYW5lX3VwZGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ID4gLQ0KPiA+
IMKgCWludGVsX2Zyb250YnVmZmVyX2ZsaXAoZGV2X3ByaXYsIG5ld19jcnRjX3N0YXRlLT5mYl9i
aXRzKTsNCj4gPiDCoA0KPiA+IMKgCWlmIChuZXdfY3J0Y19zdGF0ZS0+dXBkYXRlX3dtX3Bvc3Qg
JiYgbmV3X2NydGNfc3RhdGUtDQo+ID4gPmh3LmFjdGl2ZSkNCj4gPiBAQCAtMTA3OCw2ICsxMDc2
LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0DQo+ID4gaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiDCoA0KPiA+IMKgCWlmIChhdWRpb19lbmFibGlu
ZyhvbGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUpKQ0KPiA+IMKgCQlpbnRlbF9lbmNvZGVy
c19hdWRpb19lbmFibGUoc3RhdGUsIGNydGMpOw0KPiA+ICsNCj4gPiArCWludGVsX3Bzcl9wb3N0
X3BsYW5lX3VwZGF0ZShzdGF0ZSwgY3J0Yyk7DQo+IA0KPiBKb3VuaSwgZG8geW91IHJlY2FsbCBh
bnkgc3BlY2lmaWMgcmVhc29uIGZvciB0aGUgY3VycmVudCBvcmRlcj8NCg0KSSBjYW4ndCByZWNh
bGwgYW55IHNwZWNpZmljIHJlYXNvbi4gQWxzbyB3ZW50IHRocm91Z2ggdGhlIHNlcXVlbmNlLiBJ
DQp0aGluayB0aGlzIGNoYW5nZSBzaG91bGQgYmUgZmluZS4NCg0KQlIsDQoNCkpvdW5pIEjDtmdh
bmRlcg0KDQo+IA0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gwqBzdGF0aWMgdm9pZCBpbnRlbF9wb3N0
X3BsYW5lX3VwZGF0ZV9hZnRlcl9yZWFkb3V0KHN0cnVjdA0KPiA+IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUsDQo+ID4gLS0gDQo+ID4gMi40NS4yDQo+IA0KDQo=
