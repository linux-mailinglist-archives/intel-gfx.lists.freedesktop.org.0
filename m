Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 569EAA414EA
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 06:51:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6F3610E134;
	Mon, 24 Feb 2025 05:51:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xy2Y65gw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BBE110E051;
 Mon, 24 Feb 2025 05:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740376264; x=1771912264;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zrP+VuSP6WOD5jguVu0LKRr5+LGce0wQzApbpVgo+Lw=;
 b=Xy2Y65gw7rhTzbaGyzeVVUdILVw1vij0U++LM0VYskaCBEcPwVpEmzE+
 IkkYd5+3g28xrDUjZuMwcRU//yRGVe/vYmO5sysCDiWl70sxTmNg1EmoD
 sRc1Rleyjv7pFY4r5j+b0aGBZG3OjTmfILTWMrrCfp50TGbpt4mP1Ap/6
 88hGFSyCOLr/2icnIUwi/STeJeWS/bO7nUzWm/xdlQBVTrVr5vAc1wlNG
 UzsoOhmK9EieZu/1/ePMjkBba6m4r/UVAjUTKyAY5ZufHsjF9dj59QOe6
 GxM0jLibo3VFpnzqyXAA1xSrMniD37uah1dek8j+gQZ7cd3xJAKU9OVBc Q==;
X-CSE-ConnectionGUID: MwV0zg3jTGCbTHztoq1Q+w==
X-CSE-MsgGUID: kh3MdyFsTNak0jd1hI9dyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="40305376"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="40305376"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 21:51:03 -0800
X-CSE-ConnectionGUID: 83/vI9tWQuSOMVywuoWKxw==
X-CSE-MsgGUID: 5DjU3VjQQq+iVxPGfGlJSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="115939716"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 21:51:03 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 23 Feb 2025 21:51:02 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 23 Feb 2025 21:51:02 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 23 Feb 2025 21:51:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jEMeXkxd4T5VY4+wLN/UIgpxQHrpcpZKhU3ykL76bL3HZyrpGxCFb5j6Z5qBKdhSsic/2wCymKAzrMIr9IYfUWAwZDiBg2xVWfy8Sl0Eq+//Kh519GjnxY8bFkApe5sK1qHq1K6c4A/bEyX6zAq+9HJTAFykMjacctdq9TFJ7TGk/jxlXAqt5w+uJRgdc3WPDnIhQTJJLGgvWww7AVZ7tihoW6kz5qLJlkhKkXkjZco2acupKYtDVRhkm3PejOMw4cAJKDwN84cYtOCXo3EKYDP8tEAnK346rfo1+xZ5Mxzmau+2T4lIk5tpj3odaTKKhRUZBLHL4RgIptPOQufJ7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zrP+VuSP6WOD5jguVu0LKRr5+LGce0wQzApbpVgo+Lw=;
 b=RTgNm12YD9FDzFx6m3oyuI9t6A5NeqGbgoCyIf+mhzfuyRVszXYDhDJupbokhThdV/PS+ewh/SJ+jPionfLNqGfGmGPegm77ORZ5WJ1JKJQ4QAiDeJzyFHR7+b6SBJfi4NSKiPFejDScQksEkcG3e9PSytWk7ntFNTsAiDOcuC0AjjXtVFf0iXzWCWt9hsRjCkVK2xeleCBtwcJcWYXIyK8JOnq8TCFwoaMMRsBK0oZdyIRQTjaKyAshyFM9dj1v/Y6fXqREW4j0mTgulv+AvG6TjQl4+VFrRyRVUNwhpww7GX2SWPCHTDgV1BCXDfddejWYVm2ixb1oMG1R7buUHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BL3PR11MB6314.namprd11.prod.outlook.com (2603:10b6:208:3b1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.19; Mon, 24 Feb
 2025 05:50:56 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%2]) with mapi id 15.20.8466.016; Mon, 24 Feb 2025
 05:50:56 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 1/4] drm/i915/dsb: Allow DSB based updates without planes
Thread-Topic: [PATCH 1/4] drm/i915/dsb: Allow DSB based updates without planes
Thread-Index: AQHbgkf7e62EvoTeQE+bFgwHINnSrbNV+3Ow
Date: Mon, 24 Feb 2025 05:50:56 +0000
Message-ID: <DM4PR11MB6360F7C2406876A240CF690DF4C02@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250218205850.1422-1-ville.syrjala@linux.intel.com>
 <20250218205850.1422-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20250218205850.1422-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BL3PR11MB6314:EE_
x-ms-office365-filtering-correlation-id: 386359c3-6b5c-44d9-3e05-08dd54973558
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Njk0VGdsYSs4dXdESVVUN2Vqd2tZK2d5ckFjTE92TlFpbE9lcFRnYWxoa09n?=
 =?utf-8?B?YnZkdHQ0aXl4QVZRQkNFZDRwTEVSMTdjMDNrMzZKZEdzQUdBcDN6c282YldF?=
 =?utf-8?B?d1lhZ1oycnF5eWlIeEovY3ZZbVVZQkRPQ2hKU2JIQVQzMnl0ZUpkcVp4WXIw?=
 =?utf-8?B?SG1NZjJHeUtTc1dKUmhWdFB0QUF4UTFYalY0azdMRy9TMGxjdFpneldXWWkz?=
 =?utf-8?B?bDhjRG1IZ1BHNzVOK1loaTlrT2pqMVdUS2FnYk92TWhTQ1prQ3Z1Vk9YTC9B?=
 =?utf-8?B?dndseEpiU25SKzNHaGFjWjNDdDExcmNXYWZwbC9NcGtlKzdOV1RPY0VNK2Ev?=
 =?utf-8?B?VnFpMHZrYmE5VEtGWnZnL2NoZGlCTnYwSzR4bnZma1Y4elhvSW1Eam96ODlu?=
 =?utf-8?B?NzErNG5PVzhSWGRyQ3BGeTQ0UTlwK2dUSytlWGZvb24veFBkbk1rTzdmTkxG?=
 =?utf-8?B?MmNxbHVrSSs0ekMzMmo3d2szT2VySmdLbk43YmNlT08yNmRPQmtFOElpVnlX?=
 =?utf-8?B?QTh6QXg4N1hBa1A2OExjNVp3WjhUenV4MmkrTjNwc3dZMlVEamJ0aS92UjE5?=
 =?utf-8?B?MmVGeVE2MTBBWHVYbVo2aUowQTdEdFRlVk5LTXErRXFBKzg5VlBzNjJtcU5o?=
 =?utf-8?B?dGJvcDljSUNLcDJOWk1NMlNZdWNRdEo1S241QW9NSkd5Wm5HZy9ZSC8zT05T?=
 =?utf-8?B?UDQ2OFNjNjE2OTk3S21ub0ZwOWp6cCs1M2x1VjJBUU5KSWcweFFvZFEzT1Nx?=
 =?utf-8?B?UXU4VXc1Q0k2YWtkbFV5UWlycUNFUWZUN29iL2g5Y3dIZmpDNnZ4blBLeFgv?=
 =?utf-8?B?TGVLcXFETnI4T3ZmUzBLRHhaNU1yakYzRENkano0RmVNZ3VjZ2VZWStsVWg5?=
 =?utf-8?B?TUxtMkpMYnphcElZK2JhbzAwSTJ2ZnZFR0xCTmtSdTlYU0szVmFWMXJKZzBN?=
 =?utf-8?B?WElIYlVLKzczNElRZ3NnWTBQV2xkcGxZMnYzcXVYbFRmVEZUdktLWFBtVkFZ?=
 =?utf-8?B?blRlbXpzeHpJSXBrUUxRSTBnbDRmbTRXczI0Z2YzY1NISktvV3lMYm9rNG01?=
 =?utf-8?B?RStDTjRaT0Y4RmQxckJRV0xQaGxWa3dXVGwvbWhhOFg4ajhseXZ3Z3dCNTcr?=
 =?utf-8?B?dWNLNkhPNlZUc1RNWnRQWGZMNWFBbllYY0hDU1ptYkVsTjBCR1prRGJ3K0NW?=
 =?utf-8?B?UTFhQWkrazNHRFdKZ0l1cGcyQ0ttL04xVm9Db2crNDlSVG10aGtQdkw1RERx?=
 =?utf-8?B?Q0xnNDhGbWZvanVQSU1kR3JTZHg2WnRLRGJXVDFzS3k3ajd6bHdjRi9wTWtG?=
 =?utf-8?B?L2JueFdDd0M0REFhMkFIZk9lS211a2JURjl5azdkQW1EelJtZ0JNbmZHS0FU?=
 =?utf-8?B?SXZ3TkNjMkprbGJqaXpZU0Jzek1GVmY1WHBoUTdOSkorNGF4dXZqVkwvbjdk?=
 =?utf-8?B?aXBOQ0VXb1k4RXZBMkVmbUp5TlRPQTcrUnJzaTQva01zd1loYW5NbkJJblZu?=
 =?utf-8?B?bExnQ01Zb25FN0JtOENVVjZmSzJEL1dmMVJlK0FjVUlkMmYrOWpkUGg3R3hY?=
 =?utf-8?B?N3JqanRKN1A4WFlKbkxVZXZjS3huZTVad2FIcldCc1MwRnlmbXQ5WDRxaEoz?=
 =?utf-8?B?SEUvamNIU1VvT2tmbVh2MU92bk16T01hb0MzbjVEalV3U0FZTGlnYlNqa0cx?=
 =?utf-8?B?RzQzcXJ1TUlORUdxd3luSTVScXhZa0wxdFoweDBkcGxhRGRPZ2Ezak41OWNv?=
 =?utf-8?B?RlV2UVNKS0FPMVZYUGh5dTJjWHRBQjh4TkJ0ZkN3eDQzNWZWc1c4enNBSXZE?=
 =?utf-8?B?cmxoOUJKcHQ5aUZQQkdWazhJYWhFc2d4MC9nV0Z1WUNiZWxwbTU4QWpsSlpF?=
 =?utf-8?B?K2tVTDFxNzdJTmRBTWJIbGc5N2h3TWRxN2ZaQzNvN2hQdCtsMmVUTElza1Ir?=
 =?utf-8?Q?e+mMcibPD4e0z5mP490NA8GERlF3v+af?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TmRNZXpjQTI1eVUwN0k1cTFzS1c0MklNVGladVg3ZS9MYXNnY1lzSm5yc1hS?=
 =?utf-8?B?V21tVTh5cFFQbzNzcTBaTTFTbGlBY0twOTZsdzluanhSLzMvTmVMYVhQdWlL?=
 =?utf-8?B?d3dKMW9EcC9haTdIMHNPT3RibUVYeE5aaGw0cXNobjBTdVRCSy9WekwvWWFI?=
 =?utf-8?B?NFlFNzFkeWtPcWJXV216QW9ZUzZ4TmkvT1VjeExTNmRWaFNycEFEN09hcWd3?=
 =?utf-8?B?Z0JPSVVEb2ZsUjFLUDNUZVNyQnpLRG04cmVkaWlWTVU5L2VjVzFOOEpvNW9n?=
 =?utf-8?B?bUc3eXFoZE9BWnJyR0JSdDViYlZlbXFPRDJmMzdrRHJKOVNEa0U1ejlJUGdP?=
 =?utf-8?B?cnhzOXZSWWJsWjRzZ1JIYW1NcnBxaXJpdVdZMW1oOXdkVHY3c3NDOENnZ0tl?=
 =?utf-8?B?N1JMRk9LUkJnQ09Mc2lNcWFmTnlNaENGekdCWE5GclFKcHlQVnFvUHNXMGFj?=
 =?utf-8?B?SlZLYlNYcFkwb1F3VHZzS3F0am5qRWtOUnNFbktCMHpsaDVWWkFzaERKdmdX?=
 =?utf-8?B?amp2V2xqN29KakRQSVp4SCtIWDZpNnVUK1QxVk4vMWpwbFhjY2UrUXBoOW1Q?=
 =?utf-8?B?UE11QWpjbWNCOG42UFpxQkdIY2J5c2R0WFJJV1dBOFZVSEZocnE1ZG5UWFBP?=
 =?utf-8?B?bFlZc1BmaVduYyt2ODhKS3lHeWMvVDN3bUlJYUtBV0hTYXRTTm1mZUZ3R0xv?=
 =?utf-8?B?ME5HdStsdGp4WGFlYzRmN2lqTnV5M25McnVER0p2Z0RwMjdVZlNWSmFuRmxm?=
 =?utf-8?B?S1FySVpLUmd4L05icnorK1pvSXF3YjBNK1RtVVdOb0I1bWYrd0VhMU1DSGVT?=
 =?utf-8?B?cUNRS05PN1BTNDVldXFoSWxYWVZzK2dPRVg3UURmV0VCdTFPNmFEc2FWTGkv?=
 =?utf-8?B?OGZpVHNUc2RhZ3A4YXpqbW42a0JKVXJoT1ZwVytFVUVyMmJEQ1BHQWNWUWUx?=
 =?utf-8?B?OEtFRmo4R2xrRVpsTVdNL3FhNU1veWwyNkdXdVVUOEMrS0FnVFVybmNHd3lJ?=
 =?utf-8?B?QS95V1JwVG96Wm50YjUwMmNieUc4MDZ0c2hMSk03M3M3Znl6VlVQMGUxMG01?=
 =?utf-8?B?bXZKVC9mSldkRGZDcnFycks1dlNDelBGOUdRbnhZV2lreTZHaGY1L1M3VzdM?=
 =?utf-8?B?Vy9oZUNCNW12ZmRHRXoxbmdTQXJ2ZWpQVjBDUXdMSHJZd3V0aXFYYmhkc1FW?=
 =?utf-8?B?Rjd4aTU1WmRNMzFpcW1qdE03VzZpOU5xT3l5cm1SWkpHeVhTM1hadEdXU2xq?=
 =?utf-8?B?czZ6Q3ZOMVdFSmRZbjZZM3QzSXFoL3gxbkF4c3I4TGpCRzZ0YWNBZXVmUmxt?=
 =?utf-8?B?Y1VSQmNYWFArQVN0T0hyME5IYkx4QVFBOFFaSjRrdk9PcFR0b3BHZ3l0Zktz?=
 =?utf-8?B?OTB6ZlB3Q2JmajFqRzlrWHovclBPSVFoYkRaM25ReitPQUYvOUtqZmJkcGRn?=
 =?utf-8?B?L1VNWTBLa3hnZkhXN0xrYVhpVWNjS3RwbTU0UXVtMlZaRDhMRDdlYVhqUC8w?=
 =?utf-8?B?WlZsdDN5OUdGa1BQSnFaV3VuYU12Y0ZLUUMzQ1VQQjBzRkt0SVZwT09Wb1Y1?=
 =?utf-8?B?Yjl2QWtQV09NQXNDMnpHaitiZkNuSzE2VDI3Rm9vYldCY0w0VWsvN2U3VThB?=
 =?utf-8?B?dmRxclBQZWVwNVhTYVV6bmw0aGRrRms4NzBxdi9EelAvdVRVODhCaVp1RnY1?=
 =?utf-8?B?WGVkbWNXQVpzcW94TzhqWXMwK01XYUVBNHl2YVpEWCs0MUt2YzAyUDd5NWU1?=
 =?utf-8?B?TUFpZ09YaHprYW9rYVpjUjY5RStDWlptbFVGdXhaRTRKVnlwNHphVFg4SWtV?=
 =?utf-8?B?TXFEQ2krbTU0ZVZmMk42c0hqcHk4VnU5MXNGSytrYzI0YkFrK201TXJxQ0tQ?=
 =?utf-8?B?RkZlSEp2MWtLR0hhVW03R0lOZmVsL2dWeFNHSm1yMTAzckZNZnZMdmh3emR1?=
 =?utf-8?B?aUkrTm4vQ0RlQ00wZHdzdVJwQ3AyQnRVTzN3OGdzMjFpbkl1c0IwbERLUDJX?=
 =?utf-8?B?c3hVL2RaTXNXZXU4TkhBaWdja1ZLN01pVEpIaWlKazRuQnkrOG92Q2FLNm5U?=
 =?utf-8?B?ZmVsNnBYOHhEYTVuV0RPUmpEQTAxT2R0K3UwVVVrakllVUQxbkx5NzJ1M0FK?=
 =?utf-8?Q?G1kfW0CGKnd3Tx1lBrb8xLTME?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 386359c3-6b5c-44d9-3e05-08dd54973558
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2025 05:50:56.7920 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hy8wTy6ECXp03MWaqx5GBTBIyssS97IflUojY78vPOdtYcv7R8qiVdHArV0iBgDZh+qidPVP1jKL6fFsflHvZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6314
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUgU3ly
amFsYQ0KPiBTZW50OiBXZWRuZXNkYXksIEZlYnJ1YXJ5IDE5LCAyMDI1IDI6MjkgQU0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggMS80XSBkcm0vaTkxNS9kc2I6IEFsbG93
IERTQiBiYXNlZCB1cGRhdGVzIHdpdGhvdXQgcGxhbmVzDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gV2UgZG9uJ3QgYWN0
dWFsbHkgbmVlZCBhbnkgcGxhbmVzIHRvIGdldCB1cGRhdGVkIGluIG9yZGVyIHRvIHBlcmZvcm0g
dGhlIGNvbW1pdA0KPiBvbiB0aGUgRFNCLiBBbGxvdyBEU0IgYmFzZWQgdXBkYXRlcyBldmVuIHdo
ZW4gd2UgZG9uJ3QgdG91Y2ggcGxhbmVzLiBUaGUNCj4gbWFpbiBiZW5lZml0IGhlcmUgaXMgdGhh
dCBwdXJlIExVVCB1cGRhdGVzIHdpbGwgbm93IGdvIHRocm91Z2ggdGhlIERTQiBwYXRoIGFuZA0K
PiB0aGVyZWZvcmUgd2UgZG9uJ3QgaGF2ZSB0byBkbyB2YmxhbmsgZXZhc2lvbi9ldGMuIG9uIHRo
ZSBDUFUuDQo+IA0KPiBJIHRoaW5rIHRoZSByZWFzb24gSSBoYWQgdGhpcyBleGNsdWRlZCB3YXMg
dGhhdCBJIHdhcyBvcmlnaW5hbGx5IGNvbnRlbXBsYXRpbmcgdXNpbmcNCj4gZnJhbWUvZmxpcCB0
aW1lc3RhbXBzIGFzIGEgd2F5IHRvIGNvbXBsZXRlIHRoZSBjb21taXRzLiBCdXQgSSBoYWQgdG8g
c2NyYXAgdGhhdA0KPiBpZGVhIHdoZW4gaXQgdHVybmVkIG91dCB0aGF0IHRob3NlIHRpbWVzdGFt
cCBnZXQgY29ycnVwdGVkIHdoZW4gRFNCIGlzIHBva2luZw0KPiBhdCByYW5kb20gcmVnaXN0ZXJz
Lg0KDQpMb29rcyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hh
bmthckBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDEgLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgZGVs
ZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jDQo+IGluZGV4IDA2NWZkZjZkYmI4OC4uOGQ0NmMwOTJmYTRkIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtNzMz
Miw3ICs3MzMyLDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2RzYl9wcmVwYXJlKHN0cnVj
dA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiANCj4gIAkvKiBGSVhNRSBkZWFsIHdp
dGggZXZlcnl0aGluZyAqLw0KPiAgCW5ld19jcnRjX3N0YXRlLT51c2VfZHNiID0NCj4gLQkJbmV3
X2NydGNfc3RhdGUtPnVwZGF0ZV9wbGFuZXMgJiYNCj4gIAkJIW5ld19jcnRjX3N0YXRlLT5kb19h
c3luY19mbGlwICYmDQo+ICAJCShESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAyMCB8fCAhbmV3X2Ny
dGNfc3RhdGUtPmhhc19wc3IpICYmDQo+ICAJCSFuZXdfY3J0Y19zdGF0ZS0+c2NhbGVyX3N0YXRl
LnNjYWxlcl91c2VycyAmJg0KPiAtLQ0KPiAyLjQ1LjMNCg0K
