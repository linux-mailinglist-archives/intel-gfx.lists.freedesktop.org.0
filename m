Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A666691B9A5
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 10:16:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ADDD10E163;
	Fri, 28 Jun 2024 08:16:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bgynimDi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C90E10E163
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2024 08:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719562585; x=1751098585;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=t40tiEpdKuBe0jEUvKc8Lcp7qA8se7XZ7CnBpKQv4xk=;
 b=bgynimDiNhHnuV06wqgORoK/LLkWsNRKU441d9cK8LfXlRJYYqcUveDJ
 a/ehGkwYAkxdhK9ECw/tVH4vkYjlFPETCaKOIZWYbh5ZG32C/lgRT9HRh
 28sf+RnC1aFuak2QF5T0uHwd2ofu/iTUBqIiSdB2vAJ0LHV/SOSci0vng
 t6OMoZ+F7Buc5pZrG3lZAmuxr5RjTW4aHApwzbSPd9ExlrUFakHOaD1Pm
 ZWdeBy4jKUQ0HUHlOBB8mv47sKINN9HvUu1B8AofbngIhKceUdg5l9NVt
 ZmzVeDJCOzEu/gH6Rzb5ZOLUkNklxOfnrvhU71I9E9oNMqW4c0zPX9V5k w==;
X-CSE-ConnectionGUID: jY+7nv/BS9mFI9zSadjA9Q==
X-CSE-MsgGUID: VNVwRUtYS2iS6vjOa1M65Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="28129023"
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="28129023"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2024 01:16:24 -0700
X-CSE-ConnectionGUID: FiLl5dcMTHSPRRscUjs4DA==
X-CSE-MsgGUID: Eb2P9EN6RlGGI7I/m1JaXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="49262803"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Jun 2024 01:16:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 28 Jun 2024 01:16:21 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 28 Jun 2024 01:16:21 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 28 Jun 2024 01:16:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d+falEcYxGwZGNWAjSua9q8ZAlPHI3JWEUczAZv0Rvu0cR9zjtHR7NFldGoaCAFgxMStF5RynXbvjuejiT6eqTREnjUATk8KMJx1t+8jjr7UmQRv4IaA3ruARkl8mK23p7rBWE2juj+sT+aRJ15kkIB6WMovxdA5Jrw9lYHxyEKnwfo0f8c40CXMLqFdKjjkxE2lK+Km5jLRD4XyCCLHOfmBPSxdpXMv0T9mgTItAyb8B/p8eoRC4h/UP8Rx34iNGaohFWPDPsZtSKrrk86Pla6uLI63J1FL63n4sPkCbLZjNfSBPGUpu0LqDB5vNm5aN7LYMHHcHuMZdVkEi59goQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t40tiEpdKuBe0jEUvKc8Lcp7qA8se7XZ7CnBpKQv4xk=;
 b=SMhc7Ax/HQPV8tXLX2ZGoECV75mf2KNKK4g33wj/buAVRJ3wAQpiuSmF9u2MPGPszhx0+xSx+plPHuxAXZYPGWmON9ZKTrEIa8Qr1G7FrIhiBy9DzI35ZHRVIHMm9yz4+7CWPk/YJ5RYYyXgKSAGiztdt/Pan8wDXtKbuvN3ed+YJzQ89jtXbo2IN/JT1Tt44r4ovI8Cfo1MZnWwT75WxAHaMMy5/hp9EAU7AinTaSxOW8zYDPLI9Tu6k/jHdvWwoBUe1VHFLoUQ47DLfXKq1NjF4z4NQZQ3O5T+/5PPHyVMWxwLZ3wsJnk4NPMJJXst8Zje8k2DqkBW+aCXvPy+xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by MW5PR11MB5860.namprd11.prod.outlook.com (2603:10b6:303:19f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.32; Fri, 28 Jun
 2024 08:16:19 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%4]) with mapi id 15.20.7698.025; Fri, 28 Jun 2024
 08:16:18 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 01/14] drm/i915: Calculate vblank delay more accurately
Thread-Topic: [PATCH 01/14] drm/i915: Calculate vblank delay more accurately
Thread-Index: AQHaxmo8tqgXzEYtRU2VdAYWIPEwrLHc2c6g
Date: Fri, 28 Jun 2024 08:16:18 +0000
Message-ID: <PH7PR11MB5981E9315353213F134CC2D0F9D02@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20240624191032.27333-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|MW5PR11MB5860:EE_
x-ms-office365-filtering-correlation-id: eedf979d-d6d1-4dec-37b5-08dc974a9673
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?WlBGWmFoQWVMNno0Nmx1T2c5dkp4a3hYL01wMFozNWlyME5JcjlhNDN4VzRL?=
 =?utf-8?B?REVHS2NZZ3JkZVNhN2MxUys0RHpjN0hmZ24vMldsdjdueFAvM0JyOVFKcVBN?=
 =?utf-8?B?a2o5QTdOWjdoVEk0TlpIWHZFSWhIQzZVYWRkaEJuRGI2cWNNbkMyZjNYa0s2?=
 =?utf-8?B?MmIzTTdDenFhY2dBeUgrMVJFQzExK05pa29BZ2JyOGRKZnNnVERid2RyWVFt?=
 =?utf-8?B?Znd4UFJZVFVaWkxseDZ5Y3Q3ZjNyUmRqalRPQVNEZUlFZ3R1dDAwUFFJdnBj?=
 =?utf-8?B?bkhVSzJJZkNaOVRsaFRoQWZja2VGOHVNUTM2cktERmVMNVRHbVBveXE0Tzhh?=
 =?utf-8?B?UmM5MDYzeWY5U2FKbXFnNjVsTFgrVmY4Wk1ENnRub25xbmN2VWF3ajdRdjJH?=
 =?utf-8?B?ZjNRR0lxOWIxTFplZDQzUzZOejNhZjY4NFFhR0pkdUMwWERvcnV2Z0VlVjd0?=
 =?utf-8?B?VmJGaTZCb3V3R05ieXdOcjVkTlhZbkw1TlBqRFYyc0M3Y0tqM2pONHI4QTlO?=
 =?utf-8?B?aEJrNnZvakgrV3d1SVkrTzRGc3JXUGs2K2U4YlEwWHc3d0VjL204UHFzcC93?=
 =?utf-8?B?VDgwLzJhblRTckNVN212VVowRmlvYngvUXdIZU1UT1R0NkZ6enJaZEFLUWtH?=
 =?utf-8?B?SHRIZzlsem1uOEZYNXdiUGNrdFo2cHhlOFRXSlF2ZU82azlGdVg3UkQ5ejMy?=
 =?utf-8?B?ZHd2RDlRaXBwNzlad3ZEMEQvL245cnhGeisvaXM3NGRoZitUY3JGWktQQ3FE?=
 =?utf-8?B?c3Y0OWZCZUFVNlU0Q2pNdTZ1ZS9HSUpvWCtNK21XRDlpcXJlbUJobm5XcUF3?=
 =?utf-8?B?YlFxVm8wYStPYjBYNGQ0cDl2MW1KTXF1RmxndEtReWNRQ2NOcnlYbERZQW9x?=
 =?utf-8?B?T3BqdnlPK0lOSmY0emp0cFNUYkgvOGxGQmpDOElmaVlQYyszY0ErSWVvS0lk?=
 =?utf-8?B?azN6VGdsWXdIRGsrY05NcnpXb2FHWkR6SGtOSVhaR3BWRUEwMHNvL3ZOcGQ4?=
 =?utf-8?B?dTVabTN6RktVSko4MkdOaWFEU3Z5cGJkV1NlVWd0U1E0amxhS3dFNUUxQ3dU?=
 =?utf-8?B?eVRJc0Mra0dwTmR4RWNDdk1ObG1wUW9tc0ZKS3d0b2Nldml2aWwrUmtIZFl1?=
 =?utf-8?B?NTJDVFdRMTlpczQ2N1d3aitsRCtCak02KzU5cmZqUnVFVVNjWnk3Z2IzS2xu?=
 =?utf-8?B?ajVtUTZ0TVpoRmtxa2lpcmdZN25VWFk4NGp5U2NobDhGSlJsUUhjb2FJV3BN?=
 =?utf-8?B?TFNCNUhVNXRReUFZZ2RqcjVnU2o1YjlYZ0ZjcTAwUXgwV2RpeGQxR2gxeHZG?=
 =?utf-8?B?VG5GZXNNNGNCRFVyQWdpcStrRXlWL0QyTVp2MG5XS2x6aFkzaXNVSTh2Qm9P?=
 =?utf-8?B?VWVHdzBJb0lwTjZJMWVVK1lzc0VkUzB1djk5S1NkVks0dmpGek9Db3hmMVJx?=
 =?utf-8?B?SFpodTEvZkpXSWZTNGZYc3J5S0Q4OFg2Q3psdkVqNVZ0SnUxZlUxL1ZabFdR?=
 =?utf-8?B?TFFsVGkwU0ttdWlXcmxmelBVSS9wcDRWR3g2bHFRcUxzN1hFclBWYVVnRkNy?=
 =?utf-8?B?WldNaGt0VXhKYThxOGwrVUtNR001VGFIaDU5ZnFyTmVmNzdTOHBhNVVVdU9u?=
 =?utf-8?B?QUs5bEEyMmZwR3NIMktqTXFLL012VjJzV3AzSzJNRHZNQ0JaS2NGckdyR25a?=
 =?utf-8?B?TElpWU53RGhIWkwxbEY5ODFEYy9zOGlkMm1vWkgxdU9NYU9YYnBqSk5BMTZz?=
 =?utf-8?B?MndJeGk2T2tpVGM0Tk5KL1ZNd3RCeU1GVnhGRVh4ZjFGZDJROXVuZkhoak5X?=
 =?utf-8?B?SU92MW9HZ2FvclV5RHk0QUhFMmJhclZHbGVUaXRNT05HREFKajRWK0F5dEVU?=
 =?utf-8?B?czJMeHZXdTJFTVJqN2pLY1gwQzcyM1NNMEkweTYydFkvd0E9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UnppaWk0WVFjMDU5NGJFcGZCNGx1QytJQ0xMRmJEcTdUQmE5VFdzKzA5STdD?=
 =?utf-8?B?bVZVV3BzeUttTFdhaTE0WEN2cDVvbFpzaFRLM2pMcklHY0RDTWhaQWNmNklG?=
 =?utf-8?B?V0tGLzExY2lTdEYybzRkcEF3T29nNzBOL28ya3pCSDZlYytyNG1uc2wyZHBY?=
 =?utf-8?B?ZUVibjBaSjdEQ3JPL0xaTGlGc1ZPNC82b2g2bUFrL0IwVGxyV01GQ1dYQ3N1?=
 =?utf-8?B?c0ZLd1g5TmRlcmJxNDFNZEJzT3FlaWZ5MTBKcllHelRjUWMxTzZwVnVyVzVV?=
 =?utf-8?B?eTNTNGtvakZ2Z0tTVlNLeGtIQWtIcGVCbXNBS2dyaE9OblJjcmp0YUNJbTB6?=
 =?utf-8?B?Snhydm54bzhybjM1MUVyKzNrT3hBVmtYR2dyN2p1dlRtTURDdXBtZDlGRUJv?=
 =?utf-8?B?SFR1ZWV4TVhobVY1QzRYbU4walVIQTgrL3V6ZHcwZm1FeDZoU1V5U1VpU2hT?=
 =?utf-8?B?dmkrVkZseXlDUkhwVUdaeGpRdXdKSEpJUCtRZC8wZjhKRlo1Rjh6YUlQcG1E?=
 =?utf-8?B?R2pyT1JsU1ZWRFZHUXNaa281VFE2RDhkWU5xaGkvZXdmVEJuSWhFdW9YWUdQ?=
 =?utf-8?B?dTUxdzFNSW05blZ2QTdOdUlBczFpSVB3YmZ1eUw0NklCUlJYdnBIUU9ZOTdk?=
 =?utf-8?B?aWkzb1U0MTlqcVZ0d0Z2SUJybUxkeTZwL2lPYWpDNERwOFVsc09qeVJsR2p6?=
 =?utf-8?B?SDFBTmNFK0JwZXlyTnZBZkpINU1NeXJrSEliT1B4N1ovcnpaSm9WekZTOW1U?=
 =?utf-8?B?a0tBaGd2OHNvcW9xTmRIaHZHSHFvNXdRN0xqWFhEUktRclEvU2NSSWlUZjAv?=
 =?utf-8?B?Z2dCc24ySlloWXVvQmVLQ2g2WmFTM0V2YXU2Q1FsRCtHdUFWT0R5VFNWUGJn?=
 =?utf-8?B?VkxtN0ZJd2Fyay93aE9VNDNvL0ZZMnQ5aFVIdjFVSjFsKzJ6RitjcWp6RCth?=
 =?utf-8?B?M3lIbkw1TTVROXhBN1p4NzRsNHZUMFZna1d1WkNkemdIaGVhOWgyTTdwMXph?=
 =?utf-8?B?QnZ1WlVMeEc5TlpZNk11a1F0aDFPZDBONzNXZ0x0OCtjVXJCYTk5MWZNTXhr?=
 =?utf-8?B?SFZtS29pTnlESFExKzhTR3JIN1p1SFdQREFRS01CSE84bGZQbThUYWxiSVBw?=
 =?utf-8?B?dENuano5WE5jYlJac1dNUmc3M3dsV2NXRUlrTU50cWx1WjV3OE5VcWJKdXN1?=
 =?utf-8?B?Ny9nYUZTRi91OFU3VFU0ZTNSRHFBc3BLOWpkQnlJbE1QVlArejV4OHMzSjM3?=
 =?utf-8?B?dHc1ZlZxNUNrWHVPM0IyaHBrRmR1a2QzamR1dWlzZ21CMDEyMnNCWldlTnlV?=
 =?utf-8?B?U2RYSEZyYnhqMDdYUlllMzNMbnlaZ0prcGlMWW9jVWNGQU9ndnREMGlwYWRk?=
 =?utf-8?B?TXBmd2pjc3FYbFFNVXYwQkJjUWlLT3hJYkp1UERmRmJCcmRRYisrWWJzS3Jz?=
 =?utf-8?B?dCtnVkRVT28vZ1BBb3NkZEw4RjdHOW50V2Q0aFA1b1dVclE3WmpQdEJhS01C?=
 =?utf-8?B?OFlNSHcxM1dyTFlaTDlYQXNaREs1OGx1Vm9rTVVqUFVYSklrcVVOcWJoS2dR?=
 =?utf-8?B?NHA2OHNDV0lYVldDTm53OU1ia3VGdHNMNmhsWVNDdkJwR0N2UEcrSzM1UTl2?=
 =?utf-8?B?djJOQ3hSdGhUdkxLNzZMREcyMW1uWEJaQW9hbGoydlc1WkdiMDFiVzB0L2J4?=
 =?utf-8?B?VFlQMkpWM29SZDRBTkdteStUNGYwa1hZUGROdHFISnhWTHFoSzMwQWVKZGpa?=
 =?utf-8?B?SWg1Y0t4Y2IwVzBpbHNKY2J2cjYyQytIUkFHOElOR0FIcnJ6dlhXVVluWS9I?=
 =?utf-8?B?a1VKVm5ZQVl0MklpUDlCUGdTVWYxanArWlYrRUtjL2RuTmFpVXJhYkJpb1hV?=
 =?utf-8?B?aGxRNHhSZmdhUmJsOUxHd3NTU0RYcktUbXU2TDBCNTZQcW1YOFAxZGxNbTBQ?=
 =?utf-8?B?NXZLMjMzeElCNm8rMkd4QXlwV3N1RjBPa0F5czZYTkxsam1VUWRMZ01ublVt?=
 =?utf-8?B?dWFCVHFIUG0zZVVSZzE5dUtIanNtZzhId2VnZlIwR2pHU08wUDRHa21RTld1?=
 =?utf-8?B?aEEzK3dsMzYrOFpyOXdPbG90S0lZbmFIbFNNMW1iZzZ3N2VacU0rNXF0bkpS?=
 =?utf-8?Q?VSeoLnmINgM+jJY1b8QQEbLII?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eedf979d-d6d1-4dec-37b5-08dc974a9673
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2024 08:16:18.7188 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b1oIWMQ2fbd7Kon8H+kVzNdW/St8VxkvLDYOvnyqN5ZyCezqQ5BfZbnk5XjK4XUrk0A/cpO4lDdd9jtoWW0G5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5860
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
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDAxLzE0
XSBkcm0vaTkxNTogQ2FsY3VsYXRlIHZibGFuayBkZWxheSBtb3JlIGFjY3VyYXRlbHkNCj4gDQo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+
IA0KPiBDYWxjdWxhdGUgdGhlIHZibGFuayBkZWxheSBpbiB0aGUgdmJsYW5rIGV2YXNpb24gY29k
ZSBjb3JyZWN0bHkgZm9yIGludGVybGFjZWQNCj4gbW9kZXMuDQo+IA0KPiBUaGUgY3VycmVudCBj
b2RlIGFzc3VtZXMgdGhhdCB3ZSB3b24ndCBiZSB1c2luZyBhbiBpbnRlcmxhY2VkIG1vZGUuDQo+
IFRoYXQgYXNzdW1wdGlvbiBpcyBhY3R1YWxseSB2YWxpZCBzaW5jZSB3ZSd2ZSBkZWZlYXR1cmVk
IGludGVybGFjZWQgc2Nhbm91dA0KPiBpbiBjb21taXQgZjcxYzliN2JjMzVmICgiZHJtL2k5MTUv
ZGlzcGxheTogUHJ1bmUgSW50ZXJsYWNlIG1vZGVzIGZvcg0KPiBEaXNwbGF5ID49MTIiKSBmb3Ig
RFNCIGNhcGFibGUgcGxhdGZvcm1zLiBIb3dldmVyIHRoZSBmZWF0dXJlIGlzIHN0aWxsIHByZXNl
bnQNCj4gaW4gdGhlIGhhcmR3YXJlLCBhbmQgaWYgd2UgZXZlciBmaW5kIHRoZSBuZWVkIHRvIHJl
LWVuYWJsZSBpdCBzZWVtcyBiZXR0ZXIgdG8NCj4gY2FsY3VsYXRlIHRoZSB2YmxhbmsgZGVsYXkg
Y29ycmVjdGx5Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KTEdUTS4NClJldmlld2VkLWJ5OiBBbmltZXNoIE1h
bm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMgfCAzICsrLQ0KPiAgMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jDQo+IGluZGV4IDViMDY1ZTFjZDRlNC4uZjE4
M2UwZDRiMmJhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3ZibGFuay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dmJsYW5rLmMNCj4gQEAgLTY1Miw3ICs2NTIsOCBAQCB2b2lkIGludGVsX3ZibGFua19ldmFkZV9p
bml0KGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwNCj4g
IAkgKi8NCj4gIAlpZiAoaW50ZWxfY29sb3JfdXNlc19kc2IobmV3X2NydGNfc3RhdGUpIHx8DQo+
ICAJICAgIG5ld19jcnRjX3N0YXRlLT51cGRhdGVfbV9uIHx8IG5ld19jcnRjX3N0YXRlLT51cGRh
dGVfbHJyKQ0KPiAtCQlldmFkZS0+bWluIC09IGFkanVzdGVkX21vZGUtPmNydGNfdmJsYW5rX3N0
YXJ0IC0NCj4gYWRqdXN0ZWRfbW9kZS0+Y3J0Y192ZGlzcGxheTsNCj4gKwkJZXZhZGUtPm1pbiAt
PSBpbnRlbF9tb2RlX3ZibGFua19zdGFydChhZGp1c3RlZF9tb2RlKSAtDQo+ICsJCQlpbnRlbF9t
b2RlX3ZkaXNwbGF5KGFkanVzdGVkX21vZGUpOw0KPiAgfQ0KPiANCj4gIC8qIG11c3QgYmUgY2Fs
bGVkIHdpdGggdmJsYW5rIGludGVycnVwdCBhbHJlYWR5IGVuYWJsZWQhICovDQo+IC0tDQo+IDIu
NDQuMg0KDQo=
