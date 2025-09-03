Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7EFB41F82
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 14:45:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50AE810E7F8;
	Wed,  3 Sep 2025 12:45:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k4FRmCjB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCECD10E7F6;
 Wed,  3 Sep 2025 12:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756903556; x=1788439556;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jLSxQUdG1CFdJafYU+tJk3/W7PnkCYYSjd8GwD1pWDU=;
 b=k4FRmCjBOobmc2PGyr2n1fcA2D90UHxzkan32sopKZOYj+YHdKuYB5Bb
 fR2mQ29VEk53XDl9YPmPclnG9eleCWPrReDWk92SP/6fQeoNgkR1PxSrb
 QqkVw0hAzBG+hYX3FXiXxYKytosqFvx3CdD8NMIkVQF/hO/YTKhPXtQhi
 L7oXZCY3xAzbJyAP/pz8oKW5IdXmuq+B+hJNkjNMeQSOaXrfkRjQ5t8ri
 buhr0IU3WFNHBT+GWNF0qvN/VaVQrPGx2yHZKqfjSC+q4naXLaPmsWuTx
 aL2+9yxXBm73eSC6+2gaaJmIqo2R5CuRwzAjDfPi5pv9DjHRhmaTDs2F6 Q==;
X-CSE-ConnectionGUID: lBBq/chaRPSTuur1XafqZA==
X-CSE-MsgGUID: OLoEPnQdRSiTKQ3JlKZt8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="69475530"
X-IronPort-AV: E=Sophos;i="6.18,235,1751266800"; d="scan'208";a="69475530"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 05:45:55 -0700
X-CSE-ConnectionGUID: VMiY0k9dTBiyTSawiqjDaw==
X-CSE-MsgGUID: WiCFuHCOS0uBB3afZchvlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,235,1751266800"; d="scan'208";a="171952871"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 05:45:54 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 05:45:53 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 05:45:53 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.56)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 05:45:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bjrzCCyn7XdxoBrgRs5delKz2ipAJgdZmoIjKcKSAD+Oen3loeA/ZZLJNNJXD7S6GA4WGJnVNDS9bnbvqYuWBErYOe8/UbCkUqtBFR4shKfYDI3mVfe6jswYPSVnDbswIZ71GYDxQD/OWhC5AQ9gSrRBEqpsp2ONDvkMbQmfsVBriopm0kXrYH0Tjx4tuuZmdeqyuEPSUfW8JJehvUYVIIb2VqGjmrzU/kwGg3k19kGEI1rCeqTnnoLWOFtCSl1DaA8jJWdZn4LuKS48dHmNq9KfkvoQheZjVt0kslry3weJ5vWzczbY91HyVOr+kS2V0KuQ0RtTiS7ndjzpopM7ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jLSxQUdG1CFdJafYU+tJk3/W7PnkCYYSjd8GwD1pWDU=;
 b=ClcxLs1LAaQRIjQOlHtOwVTseJSbiippVeeLZB4X3sjDPDiwUFNylsK5+iw/K6PsqZrw4Ziz21Ytf0gFWb99VOVf8DOr6E1dTMuwUQLXnkpnS34iNJ5yeBJeU+h3RQ9fJ/iBQF5xaWyecu7slDHCwvcjOoWJVjNbMUOrrc+uDwvrFfSeXmuPYijZ7vzWeQTXVYRE3WavCyZjCAtYNrYm4JjV7aNofZihkQjEq+OgnzJdF5wCfZE+EDXEaGaFZF1qK7fIobScvgq0oFLudbfKP8C+iRkxStgCYbFn1eLOZ8VFEIYxT0jzV/U/IlqeSrb8Aj/drWeyE9822CD5Pngoig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by SA2PR11MB4987.namprd11.prod.outlook.com
 (2603:10b6:806:113::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Wed, 3 Sep
 2025 12:45:45 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36%8]) with mapi id 15.20.9073.026; Wed, 3 Sep 2025
 12:45:45 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Remove power state verification before
 HW readout
Thread-Topic: [PATCH] drm/i915/display: Remove power state verification before
 HW readout
Thread-Index: AQHcHM1mDSnlJmdXwkOjuwapJdEthrSBZ2Yw
Date: Wed, 3 Sep 2025 12:45:44 +0000
Message-ID: <DS4PPF69154114F0A739A69707130971431EF01A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250903122152.2526050-1-imre.deak@intel.com>
In-Reply-To: <20250903122152.2526050-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|SA2PR11MB4987:EE_
x-ms-office365-filtering-correlation-id: a55331ed-e4e0-45b6-03ca-08ddeae7ccc1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?Q2lwZWtqRDNzVmd4eHJyREZQNXJQUGVhOHJIcEp3d3drOW1ESDV5cThZYk1V?=
 =?utf-8?B?L29MeUUwREIvQTJnMXVxZEFWMmhhRmE0UHVTSzFlV1RmRXZwZ0IvN3hrdWNn?=
 =?utf-8?B?YW1lb08rQ0RjdW5udTI1SXc3UlExQjNOaFpvU2pyVU5abEVleDZGamRVYVFC?=
 =?utf-8?B?c2k0NEtndTRmaFFobWFyb1JabjJYdVRZNTMvclFuU0VPY1pKNFVxSkdzUUQy?=
 =?utf-8?B?SlM0eUpLMEtYcWlNS1NYTjNKdmJ3ZEN3WmJMSmxLcEdqMC85NHdUSUI2STE3?=
 =?utf-8?B?RkZEOHFyU25wYWc4WXJaaFM4ZTlLNUlrT1BuUVJPTDUxaE5iUFpJZzhkNzY4?=
 =?utf-8?B?WnhudjA5M1ZXWlQvcXZ5ZjhuMFU1KzFNbDRQQTl1dDcyaW9yTTMxQ0lhT1V0?=
 =?utf-8?B?Qzd1MGFmZkdSY3I5amJnMHZja3JiM2ZWYldSb3JoU3I3dUtPWS9VbVl5OFJs?=
 =?utf-8?B?cmlzL2MvVng2SDFZajhmT1VZaGRRczJqYUcwNzV5ZGJ5SHdYTEFuSWIrZGE1?=
 =?utf-8?B?WDNXZy9ta0d1WVpIb3E3Nzl4bnBKd0tFRmVnb1hvek1oR3g0c2c5aGZDdzVi?=
 =?utf-8?B?T2ZqQUZnMnQvQnF1OVIrVEZFOVAwQ3FrRUJHdDBxQ1VncjNBQVgveXNWMnor?=
 =?utf-8?B?MFg3OHVBS0pBK1FHRWZoNUV1a3BqYUJkalBhTlF6TEpWaHVRZVV3a1k5Y0Vt?=
 =?utf-8?B?YmtPOERHbGpyeHBtVkdOZlVETU4rZjdRNzluQkVNcUdVejZpRUdkVUliZXNh?=
 =?utf-8?B?bHRZcGVqNkFQaDFGanhjZG5PcmFjSWl0MUV3azBYUjUzeHRWeDNIQ2w0MjJX?=
 =?utf-8?B?aWlDc3ZuVzlSN2hPeVU1K0JlcmJiOG4xWkRPblpya0VIQVdDdUdrdk1GNHVY?=
 =?utf-8?B?UTdYdEdGOFNiRnBrR0tyNm02SzcyeTBnT3FrTlBFL1JjMThpWmlCTTFRRzY2?=
 =?utf-8?B?cTNGalB4NWtvQTlMejdJUnRvajRQak9xRVBPZVR0L1Y0Yy9aTVVZMG92VGZp?=
 =?utf-8?B?dGtIbytEeXV0QkVIMEQzSVFORkFWYklleFVQQTQ0SHNOLzI2UEt2ZUExamRa?=
 =?utf-8?B?dVB6MzlYay9ablZ4MHpIT2JXeDZWSmErQUFuTzJPTXRQc1Bvb0EwOExwU0ZL?=
 =?utf-8?B?ZVlrVldGaHBTdUg5WnNIVy93NGJkY2xTR0JGVE5MU2JnUGZrUWVnNXV4aXNP?=
 =?utf-8?B?ZGxmR3RhdnlPSVd5UTRxZ1pQQThjTktkQ1pjdXhQY2JFWFEvZVMyZW9CZTFP?=
 =?utf-8?B?RUorVEd6NEt6elFMaC8wK2RlSitCZFRGYXRtVU9YRkVNOFlQTkdhQmtXZUFW?=
 =?utf-8?B?MVVaQzkzL1U0T055ZW1VNzhjSEphYWsvQUkzWVRZWlViNUFkbEN1UGZpUWxU?=
 =?utf-8?B?cTNTbjV0N2lyRm5mTkl3Rngya3dqUHZWc0pra2hQeitvV3RjVmRQZjlVaUFm?=
 =?utf-8?B?VnF1N0NSR0Fidy9jaWF3cVc0c3o2eFJEeWxlTlo0WWl4UVJXUHMyRWI2YXVw?=
 =?utf-8?B?U1ZrYjY2Vk9rNDhnNlJCOVQ3S09WNVdsdzNwREQwcTVXb2t5OHNSaytKYi9n?=
 =?utf-8?B?MEhhZWFKdzVZaThwV09Qc3BQQllCUVZ1ZEMvdHZ4dzY1ZitvRWQrVlVQWlhx?=
 =?utf-8?B?S0R0UDhINnNmZVMzbk95ZE1ScmlhamNTc2VoTWw4YmljZCtuaVpHemcyV0FI?=
 =?utf-8?B?L3QzaWFsc0lwLzh5bTdNVXI4OEtqWk1SZGxLRXVzUHl1cllIK0RYelR6VUpM?=
 =?utf-8?B?dE95LzJubWxsUlVyREF6TUlHUlpSWTVjSThwTkw1RFBWS2tkL2RRV1p4OVBK?=
 =?utf-8?B?RjlKNWVBa3BmZTB1WkVydVVmbll5bUVMZkprZ09FWkdrS0tHRUMrRnFmVUFP?=
 =?utf-8?B?bC91emh1aW44SjhRZzdiZGgxU1kwZmlvakdrUU11a01nU1RnOCtQeVdmbVdD?=
 =?utf-8?Q?9f3U72iTpRk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q3JPSnVhRXFIUkVGdjJJdUFjMU9tMUY3RWlNWGdVRGVISUhyQS9XTFpxVS9k?=
 =?utf-8?B?d0R5TVVqa1JLeUVEeHVhU0M5K3Vhc0pJT2txWlVkb2UvUlpqWW9sQ3ltNkJo?=
 =?utf-8?B?UWk2RTRvVGU3eGFQd05ibExUSml4NjU2M1Q5N0hMWHNsQmV6MjJ2bklyaWFS?=
 =?utf-8?B?d09jRUE1ZXVnRkJrRG43S1NwK205R2gvak81NE5MODdlTGtFOVQ4M1Ywdlo4?=
 =?utf-8?B?Vk5BRFdqSXEyUFRqb2dBSEFrK1Zxa2I2M0NzRHRGdGRBWkRtWFZFdFU4NVBE?=
 =?utf-8?B?Q0Vqcnd4bHRzYmNIU284emcrWmxZbzBBRm5WUi8zSmhoNmpwVldrMjRjVmhE?=
 =?utf-8?B?a3hlNU5ESlVyU1JPZWk0UUZ0TDNmMVB4bzFIM29XZVd0WXdtaXA1ZlhwdmFB?=
 =?utf-8?B?UHNjZmtFTHN5Y1BQbUlYY09QVmF3SlkvOUZQTDNjRmJJaCtXSU8vVEt4dGFn?=
 =?utf-8?B?TDd2NHRIV2N2UmFJRVhNODkxUGw2WkovWVE4MXZBV0N3T1FBQmZYcXROUXFs?=
 =?utf-8?B?Q0lWZ0N2YWl4WUJkNWh2ai9LUmFpME9MUThpbmo2R1luN2s0WHF2SWphMlRa?=
 =?utf-8?B?b3A2UUh6TXRlZzJBVEx3cWhCSS9uWkcxd0kxYll3NjNMZVEvK3pDOWNjbUNx?=
 =?utf-8?B?Z3prc1RuUGRKSWIyVWRUK3dpM0tDRDlEL3VzK2hkYmczUzJraU1wdWdmV0Fr?=
 =?utf-8?B?WjhlNUNrMzFtTDZSY3Z2c1N5SnU3c2UvVkphdDdFZVBtcHRLYjloTFg0RmhT?=
 =?utf-8?B?cEJUeW1hdmxyQ2dmbFp0TEtVSFJvUVRUSklMK0J4U3BkQjBsQzFmUitUbjNS?=
 =?utf-8?B?VjJWOHlmSzRsZ1M0Ti9kVUJrbTVKRU9aUzlSelNrL2J4dndVS0xLLzJ5bFAw?=
 =?utf-8?B?a3REWGJlY0p3eGRhS05QcjlzUGNXQThHU1g0WTl1d1JIT05TL3J3d01QNzh6?=
 =?utf-8?B?RTVRSUhhSU9xSkJzWjJPZzFkZ3RXcWtnSEM5bUZ5ckJpMXZWK00vL0tqb0Qv?=
 =?utf-8?B?Y01ISExnODV1NFpYK2NqSjVsMlhZM1VFejJDREVyKzcwZkdPREdFNi9WRSt1?=
 =?utf-8?B?cE5JSXBlSlk3VFJNcDMvd21Kaks5RCtpZjVYaXBoaUl2cHlIbEx0MjNYOU1u?=
 =?utf-8?B?cWl0dFU4dHgyeTFtLzBveUc0WTRnZzJPbVJQOWdUY3YyZzZUZDZ0NFFkNVhI?=
 =?utf-8?B?RGVHMVA2TkFidDJHZTJjeTBJeEFzd2Nwb2dISGd3SDMya3JPNVdxY1RjeDBN?=
 =?utf-8?B?NWpDZDRQczlzdk1iZGIvVFlza1NUdUFlaXZZekhlNkhvc0FROWQ5dUdFbit6?=
 =?utf-8?B?S2xtZVc2WWFHQWh5dXF5elQwMldUM0dsWHlxTmxZYmVBTzFGS2ExNVBmTUpv?=
 =?utf-8?B?V0tjSXBSTHZUYkNUd3JDNGg5dDlmbDRSa01PWlMvYVp5RDBIMU1adWVFR2JO?=
 =?utf-8?B?aW9jamwvUGV2aDk1SXpwQi9lV0FOUk1QY2EzcHNVYlRLcjJJcVRwU3BMMFda?=
 =?utf-8?B?S2pucElMak1mQ3dpeDFmNkxtZUxTRkQrTXJwN0NhU0VsT3pobDdwR1pTSkl3?=
 =?utf-8?B?QzllcWhuUnlleno3Q1UzQzErSEJJa1hPSXRJUVpsQkt1alVDbGJsNTE2a054?=
 =?utf-8?B?RTlCS1N3NGVBVml2TXIvM08xOTVtN204R2x0aGtIZ1hxZ2FsK1l1R1ZuNXdH?=
 =?utf-8?B?ODRyVUN2WEJNdnM5aVpPSlRIalFraTh0b0p2MG1kNGtLb1lzbHdzVXNzUDlQ?=
 =?utf-8?B?OXZPNlZyVFkzWmtvSTBUUzRDa3ZVRHNIOGg2SzY0SGNHSnF6RnBMYURCMmVN?=
 =?utf-8?B?aDNlcnFXQmtNcHBscnk2Q25iQk0wMWlRQm5DWWhHT1dlTmdHTjdESGk1ZFNw?=
 =?utf-8?B?UDZ0MDY1UUQ5cEU0UUhJaGtBaDNaSm1YU1ZWS0RJZHJOMTRuenVwMGlvUnBQ?=
 =?utf-8?B?YXVYSGJXWXN6ZGJGUkFqTnh0RWNNYTlkWk1lRUlXbzJDR29EY0xQZVh4bzU3?=
 =?utf-8?B?Y2ZueWVJZUpPRzR3TEsrYVU2NDVEOFhzY3NuUnYzTkh6N0Z4TDI4dklNWjRF?=
 =?utf-8?B?dWlNemMwOTBlUnNzQmdkclZadHJ6dU5JdVp2VXMwMHE0VnV5SVJkWVcvOEY5?=
 =?utf-8?Q?tg7X+bQZ/Tbfn7wnYlEUkW8Ws?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a55331ed-e4e0-45b6-03ca-08ddeae7ccc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2025 12:45:44.9996 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9x5i2GRp169JH36TlUKpVbIskr20fjmOSaW5c3baVQSvI22bixrps4MVLnpjMVPXuEkH1bzI9Fr9ESJmXijhbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4987
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogV2VkbmVzZGF5LCAzIFNlcHRlbWJlciAyMDI1IDE1LjIyDQo+IFRvOiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4g
U3ViamVjdDogW1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5OiBSZW1vdmUgcG93ZXIgc3RhdGUgdmVy
aWZpY2F0aW9uIGJlZm9yZSBIVyByZWFkb3V0DQo+IA0KPiBEdXJpbmcgc3lzdGVtIHJlc3VtZSB0
aGUgZGlzcGxheSBwb3dlciBzdGF0ZSB2ZXJpZmljYXRpb24gd2lsbCBwcmludCB0aGUNCj4gDQo+
ICJwb3dlciB3ZWxsIHggc3RhdGUgbWlzbWF0Y2ggKHJlZmNvdW50IDAvZW5hYmxlZCAxKSINCj4g
DQo+IGVycm9yIG1lc3NhZ2UgZnJvbSB0aGUgZWFybHkgcmVzdW1lIHNlcXVlbmNlIGZvciBhIHBv
d2VyIHdlbGwgbGVmdCBlbmFibGVkIGJ5IEJJT1MuIFRoaXMgcG93ZXIgd2VsbCB3YXMgcHJvYmFi
bHkgbGVmdCBlbmFibGVkDQo+IGJ5IEJJT1MgaW5hZHZlcnRlbnRseSwgc2luY2UgQklPUyB2ZXJz
aW9ucyBvbiBjdXJyZW50IHBsYXRmb3JtcyBkbyBub3QgbGVhdmUgYW55IGRpc3BsYXkgb3V0cHV0
IGVuYWJsZWQgd2hpbGUgcmVzdW1pbmcgZnJvbSBhbiBTeA0KPiBwb3dlciBzdGF0ZSwgaGVuY2Ug
dGhlIGVuYWJsZWQgZGlzcGxheSBwb3dlciB3ZWxsIGlzIHVudXNlZC4gSW4gdGhlb3J5IGhvd2V2
ZXIgaXQgaXMgcG9zc2libGUgdGhhdCBCSU9TIGxlYXZlcyBhIGRpc3BsYXkgb3V0cHV0DQo+IGVu
YWJsZWQsIGluIHRoYXQgY2FzZSB0aGUgZW5hYmxlZCBwb3dlciB3ZWxsIHNob3VsZG4ndCBiZSBy
ZXBvcnRlZCBhcyBhbiBlcnJvci4NCj4gDQo+IEFjY29yZGluZyB0byB0aGUgYWJvdmUsIHJlbW92
ZSB0aGUgZGlzcGxheSBwb3dlciBzdGF0ZSB2ZXJpZmljYXRpb24gZnJvbSB0aGUgZWFybHkgcmVz
dW1lIHBoYXNlIHRvIGF2b2lkIGluY29ycmVjdGx5IHJlcG9ydGluZyBhbg0KPiBlbmFibGVkIHBv
d2VyIHdlbGwgd2l0aG91dCBhIHBvd2VyIHJlZmVyZW5jZSBhcyBhbiBlcnJvci4NCj4gDQo+IE5v
dGU6IFRoZSByZWZjb3VudCBmb3IgYW55IGVuYWJsZWQgYW5kIHVzZWQgcG93ZXIgd2VsbCAoaS5l
LiB1c2VkIGZvciBhbiBlbmFibGVkIGRpc3BsYXkgb3V0cHV0KSB3aWxsIGJlIGFjcXVpcmVkIGZv
bGxvd2luZyB0aGUNCj4gZWFybHkgcmVzdW1lIHNlcXVlbmNlLCBhZnRlciB0aGUgSFcgc3RhdGUg
Zm9yIGRpc3BsYXkgb3V0cHV0cyAoZW5jb2Rlci9jcnRjIGV0Yy4pIGlzIHJlYWQgb3V0LiBBbnkg
cG93ZXIgd2VsbCBlbmFibGVkIGJ1dCBub3QNCj4gdXNlZCAoaGVuY2Ugbm90IGhvbGRpbmcgYQ0K
PiByZWZlcmVuY2UpIHdpbGwgYmUgZGlzYWJsZWQgYWZ0ZXIgdGhlIEhXIHN0YXRlIHJlYWRvdXQu
IFRoZSBkaXNwbGF5IHBvd2VyIHN0YXRlIHdpbGwgYmUgdmVyaWZpZWQgYWZ0ZXJ3YXJkcyBpbg0K
PiBpbnRlbF9wb3dlcl9kb21haW5zX2VuYWJsZSgpLg0KPiANCj4gQ2xvc2VzOiBodHRwczovL2dp
dGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL3hlL2tlcm5lbC8tL2lzc3Vlcy82MDEyDQoNClJldmll
d2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1v
ZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDIgLS0NCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gaW5kZXggZDFkM2I2Zjg5
ZTJhMi4uY2ZhNjcyOTliNWM5MCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gQEAgLTIxNjIsOCArMjE2Miw2IEBA
IHZvaWQgaW50ZWxfcG93ZXJfZG9tYWluc19yZXN1bWUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRp
c3BsYXkpDQo+ICAJCXBvd2VyX2RvbWFpbnMtPmluaXRfd2FrZXJlZiA9DQo+ICAJCQlpbnRlbF9k
aXNwbGF5X3Bvd2VyX2dldChkaXNwbGF5LCBQT1dFUl9ET01BSU5fSU5JVCk7DQo+ICAJfQ0KPiAt
DQo+IC0JaW50ZWxfcG93ZXJfZG9tYWluc192ZXJpZnlfc3RhdGUoZGlzcGxheSk7DQo+ICB9DQo+
IA0KPiAgI2lmIElTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X0RFQlVHX1JVTlRJTUVfUE0pDQo+
IC0tDQo+IDIuNDkuMQ0KDQo=
