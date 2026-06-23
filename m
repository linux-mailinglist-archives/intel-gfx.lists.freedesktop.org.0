Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BLuvDXk1Omo14AcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 09:27:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 877D26B4D9B
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 09:27:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=XzAEXTgX;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B53A510E996;
	Tue, 23 Jun 2026 07:27:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88F0710E982;
 Tue, 23 Jun 2026 07:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782199669; x=1813735669;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=j6qUnZZKQxM83TWvAGiARRzvjkDxodZMu1ESMaEXV1Q=;
 b=XzAEXTgXUBV/6nWinNySyq0PkFeTAI5yviuJ2eGn5ng5/PMSOoWjcFtf
 k+U6OFHsojw+asB9Z3Wb6+QkQQrXUu/FwAHM11JqVBq93n/x5y5Hw2lYy
 feIgXLZ1Pp4N7BPozPGA1FuLFrazEOv2WoM/lNSBs9A+9IvAlLksFrE4L
 vdSTJHliMvcctNkNKfZXaNVtz2JyhGTpmngnWyUrmyXvaH/VwsCR94zjW
 dqBmHzcaff9BLQCVZjFlyOJunBwIvuqKlBzzWlK5yoKTy7zkSTa9p+kM4
 305Zt4otSgBi+WAV/izFKn2xoM2eVgCf6mRhoJ51yRW0ADc2UzfQ0swg3 Q==;
X-CSE-ConnectionGUID: PuQlYiRXTt+JhPvp9bm7Mw==
X-CSE-MsgGUID: Be909Q4QRbyQCCasnc5UNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="82976116"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="82976116"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 00:27:44 -0700
X-CSE-ConnectionGUID: aQ0oHqqUSqO4cUuP7PhXfQ==
X-CSE-MsgGUID: SRkJDKwFS82L/LhSO/0rIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="245078298"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 00:27:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 00:27:41 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 23 Jun 2026 00:27:41 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.10) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 00:27:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ehjexdH/SVUUGBrZbr0QlN7MSgx1hRyKoxDVT8IuMhcYN37gSgqqBS77ajt2ZV190cyjELww1WOqPr10iOPGuncfWkKCTFBRk9C//2QYUGGca9x14ePIkE2KWTPCFFZB8FCVdgFhCr1c4EXpiKFa5nHvZbLgMgXRyZ4jJ3d7rp4x6KPR9VLLlQWsjj+NoHicEuHkVZw0koJ+vIpM5T6UjEJfTPx+Ak/IxnGuD1oEEIYHHiM7MyMGWgk/5QSZ+z8GhaKImyGRbeATeHzpUcGlmeepnyeEZejktTZKmQ41VUbn+0T7KvQaBul/Dj9alaz1Iudkj4FSI0iLcW/4anspYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j6qUnZZKQxM83TWvAGiARRzvjkDxodZMu1ESMaEXV1Q=;
 b=kS0IeEDWwkS4alHCJhl0TRkdQdBxGjEQVeDwHjO3vWJ/DGbwJnDuQZSOPiayB2G3qIww+hqBJUUBZn/s8B10nNXAeBAn/M2b0MByPxYKQiL4I78pOzInsJIiU5nYfeKICsCXTSdQwDsUquoWaKA55vdYTVbnVmiTXX6vPO+z00cRwkk1hPzc0yJASacTcAemaOc9pS7rgL4jUsxCflYMO57BOE8jUyb+SsavlLnFvyHT6PGt8VatDUZNGUT7/1BJ7YTbuqchBMO07XPbF7vtmhBlSg84eWXzVFCCWxG9Ch6dJuhrN9rNJn7SsXslKYXgPS8EmnoB4Od/cCTyCilQNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by PH3PPF23335A1E7.namprd11.prod.outlook.com
 (2603:10b6:518:1::d0e) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Tue, 23 Jun
 2026 07:27:40 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 07:27:39 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 04/28] drm/i915/dp_link_caps: Move common rate helpers
 to link caps
Thread-Topic: [PATCH v2 04/28] drm/i915/dp_link_caps: Move common rate helpers
 to link caps
Thread-Index: AQHc/cwXRQloBJYRSkSL+GTIKu5/yLZLx93w
Date: Tue, 23 Jun 2026 07:27:39 +0000
Message-ID: <DS4PPF69154114F83EB81A92E1D311C91F4EFEE2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-5-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-5-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|PH3PPF23335A1E7:EE_
x-ms-office365-filtering-correlation-id: 63fcc9b7-96dc-43d7-1703-08ded0f8e7ea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|4143699003|11063799006|56012099006|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: FXl/R4Oo0pX4uhuRlqVj7KqtbgImkDCGvauleUm1iaiLUaMsCfTi+zEbTWm9341QMMP0EQU8Z3G+22SgrEkFA9+1LyB8z6EaoWzWulW5N7Yb31JZUGXypobS1gt0smBLFSH7hce6pp0YOVwRtDr/y5VrdgT5K+zYt+curzjjtHDgHS4Wfp9Yce2hlyWEvkiZcivcr893sh/pOocjSfsPQEsbXmI24bvn5FeRbs1tdyQEqM1440h4KlrkGXz5xvJkTAeIrYmnz0Y8FpIDzZaO7i5tVvAtBQIsQ7HqAk2UDndDkTk9EMCrfZA7jTc/EbvOBqE1SR5f+dWzStdyxPLndtl6xPepRfDwULRFQQmfpzQjWgbvLjYQkbUYoLrGc4FDq3mBQwCu+ZcsGPW7tc8pPsXAUzJK//nARM+2IeHwY3OKocvELuFCxkP9yYuoQL3dCiIcN3T6CiPQvSEs4yh2XGCc7g67xJfKQzqIdoH6rxx9fxLqf/4EcrA/c1U4/hpHiacRfMpQhSlreERXSDNc2LBnV8SY6yyCHape4P77DpghVqRocYimlcnY6q0AvVrentbPWCPQSn20F+crYNKRc29V1S9a8WbGKc/iRZGTQLThzqpe9yVcUQ3UZgs61fwNeTSjIwu1vv3oqfTgJmTeJ+I2urGebu1/yizY9I/bt4UV2lW6zpKvsDJ+uO7BOy5APLAycJzWeL3fsDV2jBkjlw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(4143699003)(11063799006)(56012099006)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eUVzRDd2cVlpNlk4aEt3aE1ZbzczdlFWUFJFbXlLOVZFdkpaYXR3N0FqYzFN?=
 =?utf-8?B?b05JcUF0UHdIblRFZ0FXZ3BoMnZIU25jNTdSTzd2VnRmLytnK05ROVVOeWho?=
 =?utf-8?B?cUxMSXBqZ0JnRFlJRmdpVUdNVytXMGRVa3haWHRBWm50amNLSHhSYXV3N1JW?=
 =?utf-8?B?ODVqYlFqQXJpNVNNS1lNQU40N2c1T2dRYk9tYStYckxNMU5wcjd6N21tREZt?=
 =?utf-8?B?b0tncWlBVnRVcFZKS1FjWEhESHgyQlMvSkdoQm1zYzFFRUNPSFJhMW1yM0w4?=
 =?utf-8?B?cEZmdnFCaGdaTGsyY1FrMFJxcDk5RWEzSWxLbU13RGRLeUVXM1lVcStmblR2?=
 =?utf-8?B?L2hBQ09GWHFsSWZ0K0taNitocDFNaGVZTFBBMjV6ekZWendvZTdaWWtEK3lV?=
 =?utf-8?B?Z2NGSzJKSTlXV1dNbzVHeFRYM1FNZFdDY2cxZDJocWVaRE50VThpK2VwVXBM?=
 =?utf-8?B?bnloNlhubG1tOC9pbVNXd2FjYlMwUEVFSXliczVHRWRuS1pDQ0g3UEdYejl3?=
 =?utf-8?B?RFNTWjY4TXBydC9lQ0taT3FBZnFWNURUbWd3RmVaMDUxS2pLSnFnb0wvRVpH?=
 =?utf-8?B?NjBuenFFeU12TTk5T2t6cmdjczVsdEN4bnV3NGNMRTFISDQ2STg4bHk5YjhI?=
 =?utf-8?B?RWlDYjFMclg5eUhraC9nNFR0MDZXd3NFZmVNWWhmeEJFa2hxTkJBKy9wWWdP?=
 =?utf-8?B?TUIyVzMyUXF2MzQ4bXJMdTRGcFFaQzVmOUtRWlFUMlRpelAzYjFWQW5WM1ZX?=
 =?utf-8?B?MGRLQVhqdklNS29Vc2p4T0RKWUloOFB4UDBsbzF3VGZtbnV1eGVlQ1hmVk5D?=
 =?utf-8?B?MWpIdkRYdzQ2ZVhCTjhXazk2aFB4RWRab1oxbHNtRDEyL2VBbDR2czFWdjVZ?=
 =?utf-8?B?K2Z0ZmM3MW1EYzVtdVBtbnAzVHRxa3k2OFpkT2pCVkFCaXhKa3lEekgwTVdi?=
 =?utf-8?B?MitFU05XZnZCODJpQkJ4ejVyRlRGbnJqTTJPTG0rdDh0NjhLYnU5T1AxTDI5?=
 =?utf-8?B?WTdQZk9qbDZUY3pwNXJHNkNZTDZtUHQydEgxdXgrNWxhb3h6UytQL1NDRGZT?=
 =?utf-8?B?Qk84Q3Q1bmpaZU9Fb0hjc0hvNU1CU2M5SXE2NmN0ZFQwZE5JZEpLbnI2cUd5?=
 =?utf-8?B?aDRyMXpma0JQbm9RS2Q5VFM2d1ptUVNPN1drSzNOVTd5Q1JRSGdDRjJJdkpO?=
 =?utf-8?B?ekprMERMZ0h1b2FMZlFqbnQ5c00yd1lhdTVFUlNGQ1NsOTdGdDJIcHlhWG12?=
 =?utf-8?B?NGg0a1NuWldhV29pZFNOL0UvRWVxTVRodklkVzZjV3lnZk9vd3pjSUFUOUdQ?=
 =?utf-8?B?RTBTbERjQXd1VmthVGVCRC9nVUkyTWJyMHZrWC9uak1DOElzN2MwNU5UMXgx?=
 =?utf-8?B?dVlQMjhYZ1ZXSXZsaVlXUUwrQndoNGRFRTRCdDJZVlpFOWZqQURFYmNZdWlP?=
 =?utf-8?B?WGVJdS93cm9LSjY2WjVWb0M3QVUwZTR0cmQ3VzNYb3NCdWVaOGhZUlYwRlpG?=
 =?utf-8?B?L0xWUGZkZC9CdHZqUzBtWTdWcnVKdWFDdjdMdHRQSnJoZWFIdWVRU1QvL3Bj?=
 =?utf-8?B?Q2dJL0lHZFhZeVpVOHNLb3JhMlFDcmFIK0xpTHJSYURWN3B5aU1taERzb205?=
 =?utf-8?B?TlpWdjltcEpVQ1JhOW8rOFdDYnpxZlY4dkRxRGs4V2tnQWllRUduZ2VBV0c2?=
 =?utf-8?B?MThucnJwbHloVUtyN2NlMUpsTHVSem9sQm5mMVBqQmQ5NVo1S3FZTFR3dDB4?=
 =?utf-8?B?VGtCZk5HeGFaMzdFbU1LQU91WDNhMEQ1WHF6NkF6bm5tcE43WElYOGc5Skw1?=
 =?utf-8?B?RzFhTmJSYzI5UHJRR0dJQ3ZSY0Y3SkQ4YWdjb3FKQmhRQytDVGlzdmIrMC9r?=
 =?utf-8?B?bExxY1Rhc2poNXpvSXZLQ0RDeGxoZGtNUFN6bmZaMmVnWGc3aGdYdzBuK25i?=
 =?utf-8?B?VzR4dU02OUZTTlJMSW83dCtOMnhCeXg5S1VZNkZpZWQ5Q3FmYVdyN1J4TUl6?=
 =?utf-8?B?SDZkNUFMWWtRVjNMTUtHNlA4SGlZaHNtRW5kUnJCei8vZnptWUQyV3JyZGpY?=
 =?utf-8?B?MFpvRGx4OTVPeFoyOTFrYzFBRkJ3MCtGZkpzQUxlTmNxZWZUYi9MQXBmYm93?=
 =?utf-8?B?VGN2ZXlzbU95cURDZjRmMUN2ODJEUVZ5cEg3VjN5cDdPWUNPV0FkTTRXQUlj?=
 =?utf-8?B?RDZRWUhsRVVSek4yN0syRXZ4V1ZZMUkrR2RFeDgvbS9LVUhaQk1STXRxdFVr?=
 =?utf-8?B?Mnl0QXRibFhXNnpTeDZqNFMycmdaanA5LzFDTHp2MFVERzBWSURIY0pTaW5z?=
 =?utf-8?B?OG4ydzQ3dzNKRTRVcEJ5V0hvR0hwNzJEOTkyY2lVcnpZaU4wNmdKZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: c0UEOZ1IWtuuXzl4Tz2W6+RAZtsJUAB/wN9J82OLMeibbbXxRmCN9+f5cUF0c6xkNF7B4AHj1M2ePo33iVfX6gCv49CSmzTD6VFei1d6oLIDbNcY96uT9VNZY0074xfvF3kYsi/RnJZgQ7oE86p1x6TwjgQEfY0PyKO/7vqrZAu7qq21yyvz22nHpYKZp3t4EKI2dcXDZ8FrYcMUupoND+H0G8xwfXsLEHHalzT8mCTrNp0OFigdkozJKALZGcYYL3keF2mzcW0SkvCLRHnZFvQCo4gPmlfBeR8O6UJKji/av7ULYMR8K3Wqw+GjLHq/DrRiE3BBJ+C3MkQzjfcubg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63fcc9b7-96dc-43d7-1703-08ded0f8e7ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2026 07:27:39.4267 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0bCFmdu0bfA4/I301RZKu7an90rEwMvq5+Rc/aUHK3znZErnFWq2McF0OHzxXe/QInCdcN+Ka6i7BXO9RJaxpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF23335A1E7
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 877D26B4D9B

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogVHVlc2RheSwgMTYgSnVuZSAyMDI2IDIzLjA4DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVj
dDogW1BBVENIIHYyIDA0LzI4XSBkcm0vaTkxNS9kcF9saW5rX2NhcHM6IE1vdmUgY29tbW9uIHJh
dGUgaGVscGVycyB0byBsaW5rIGNhcHMNCj4gDQo+IE1vdmUgdGhlIGhlbHBlcnMgaGFuZGxpbmcg
Y29tbW9uIGxpbmsgcmF0ZXMgdG8gaW50ZWxfZHBfbGlua19jYXBzLmMuDQo+IFRoZWlyIGZ1bmN0
aW9uYWxpdHkgaXMgcGFydCBvZiB0aGUgbGluayBjYXBhYmlsaXR5IGxvZ2ljIGFuZCB3aWxsIGJl
DQo+IHVwZGF0ZWQgdG8gdXNlIHRoZSBsaW5rIGNhcGFiaWxpdHkgc3RhdGUgaW4gZm9sbG93LXVw
IGNoYW5nZXMuDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGlu
dGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5j
b20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAg
ICAgIHwgMjcgKy0tLS0tLS0tLS0tLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuaCAgICAgICB8ICAzICstDQo+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfbGlua19jYXBzLmMgfCAzMCArKysrKysrKysrKysrKysrKysrDQo+ICAuLi4vZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmggfCAgNSArKysrDQo+ICAuLi4v
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgfCAgMSArDQo+ICAuLi4v
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfdHVubmVsLmMgICAgfCAgMSArDQo+ICA2IGZp
bGVzIGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKyksIDI4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBpbmRleCBmYTA5NWM0ZGI3ZmU2
Li5hMzRkMzcwNGE1NjY3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jDQo+IEBAIC0zMTQsNyArMzE0LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfZHBfc2V0X21h
eF9zaW5rX2xhbmVfY291bnQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIH0NCj4gDQo+
ICAvKiBHZXQgbGVuZ3RoIG9mIHJhdGVzIGFycmF5IHBvdGVudGlhbGx5IGxpbWl0ZWQgYnkgbWF4
X3JhdGUuICovDQo+IC1zdGF0aWMgaW50IGludGVsX2RwX3JhdGVfbGltaXRfbGVuKGNvbnN0IGlu
dCAqcmF0ZXMsIGludCBsZW4sIGludCBtYXhfcmF0ZSkNCj4gK2ludCBpbnRlbF9kcF9yYXRlX2xp
bWl0X2xlbihjb25zdCBpbnQgKnJhdGVzLCBpbnQgbGVuLCBpbnQgbWF4X3JhdGUpDQo+ICB7DQo+
ICAJaW50IGk7DQo+IA0KPiBAQCAtMzI3LDMxICszMjcsNiBAQCBzdGF0aWMgaW50IGludGVsX2Rw
X3JhdGVfbGltaXRfbGVuKGNvbnN0IGludCAqcmF0ZXMsIGludCBsZW4sIGludCBtYXhfcmF0ZSkN
Cj4gIAlyZXR1cm4gMDsNCj4gIH0NCj4gDQo+IC0vKiBHZXQgbGVuZ3RoIG9mIGNvbW1vbiByYXRl
cyBhcnJheSBwb3RlbnRpYWxseSBsaW1pdGVkIGJ5IG1heF9yYXRlLiAqLw0KPiAtc3RhdGljIGlu
dCBpbnRlbF9kcF9jb21tb25fbGVuX3JhdGVfbGltaXQoY29uc3Qgc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCwNCj4gLQkJCQkJICBpbnQgbWF4X3JhdGUpDQo+IC17DQo+IC0JcmV0dXJuIGludGVs
X2RwX3JhdGVfbGltaXRfbGVuKGludGVsX2RwLT5jb21tb25fcmF0ZXMsDQo+IC0JCQkJICAgICAg
IGludGVsX2RwLT5udW1fY29tbW9uX3JhdGVzLCBtYXhfcmF0ZSk7DQo+IC19DQo+IC0NCj4gLWlu
dCBpbnRlbF9kcF9jb21tb25fcmF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBpbnQgaW5k
ZXgpDQo+IC17DQo+IC0Jc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9k
aXNwbGF5KGludGVsX2RwKTsNCj4gLQ0KPiAtCWlmIChkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0s
DQo+IC0JCQlpbmRleCA8IDAgfHwgaW5kZXggPj0gaW50ZWxfZHAtPm51bV9jb21tb25fcmF0ZXMp
KQ0KPiAtCQlyZXR1cm4gMTYyMDAwOw0KPiAtDQo+IC0JcmV0dXJuIGludGVsX2RwLT5jb21tb25f
cmF0ZXNbaW5kZXhdOw0KPiAtfQ0KPiAtDQo+IC0vKiBUaGVvcmV0aWNhbCBtYXggYmV0d2VlbiBz
b3VyY2UgYW5kIHNpbmsgKi8NCj4gLWludCBpbnRlbF9kcF9tYXhfY29tbW9uX3JhdGUoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCkNCj4gLXsNCj4gLQlyZXR1cm4gaW50ZWxfZHBfY29tbW9uX3Jh
dGUoaW50ZWxfZHAsIGludGVsX2RwLT5udW1fY29tbW9uX3JhdGVzIC0gMSk7DQo+IC19DQo+IC0N
Cj4gIGludCBpbnRlbF9kcF9tYXhfc291cmNlX2xhbmVfY291bnQoc3RydWN0IGludGVsX2RpZ2l0
YWxfcG9ydCAqZGlnX3BvcnQpDQo+ICB7DQo+ICAJaW50IHZidF9tYXhfbGFuZXMgPSBpbnRlbF9i
aW9zX2RwX21heF9sYW5lX2NvdW50KGRpZ19wb3J0LT5iYXNlLmRldmRhdGEpOw0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oDQo+IGluZGV4IDkyY2UwNDg1MjMyNjcuLjhj
YzZlYTA0ZTAwMGMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmgNCj4gQEAgLTEwMCwxNCArMTAwLDEzIEBAIHZvaWQgaW50ZWxfZWRwX2JhY2tsaWdodF9vZmYo
Y29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpOw0KPiAgdm9pZCBp
bnRlbF9lZHBfZml4dXBfdmJ0X2JwcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgaW50
IHBpcGVfYnBwKTsNCj4gIHZvaWQgaW50ZWxfZHBfbXN0X3N1c3BlbmQoc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXkpOw0KPiAgdm9pZCBpbnRlbF9kcF9tc3RfcmVzdW1lKHN0cnVjdCBpbnRl
bF9kaXNwbGF5ICpkaXNwbGF5KTsNCj4gK2ludCBpbnRlbF9kcF9yYXRlX2xpbWl0X2xlbihjb25z
dCBpbnQgKnJhdGVzLCBpbnQgbGVuLCBpbnQgbWF4X3JhdGUpOw0KPiAgaW50IGludGVsX2RwX21h
eF9zb3VyY2VfbGFuZV9jb3VudChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCk7
DQo+ICBpbnQgaW50ZWxfZHBfbWF4X2xpbmtfcmF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
KTsNCj4gIGludCBpbnRlbF9kcF9tYXhfbGFuZV9jb3VudChzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwKTsNCj4gIGludCBpbnRlbF9kcF9jb25maWdfcmVxdWlyZWRfcmF0ZShjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+ICBpbnQgaW50ZWxfZHBfcmF0ZV9zZWxl
Y3Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgaW50IHJhdGUpOw0KPiAtaW50IGludGVsX2Rw
X21heF9jb21tb25fcmF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gIGludCBpbnRl
bF9kcF9tYXhfY29tbW9uX2xhbmVfY291bnQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+
IC1pbnQgaW50ZWxfZHBfY29tbW9uX3JhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgaW50
IGluZGV4KTsNCj4gIGludCBpbnRlbF9kcF9yYXRlX2luZGV4KGNvbnN0IGludCAqcmF0ZXMsIGlu
dCBsZW4sIGludCByYXRlKTsNCj4gIGludCBpbnRlbF9kcF9saW5rX2NvbmZpZ19pbmRleChzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBpbnQgbGlua19yYXRlLCBpbnQgbGFuZV9jb3VudCk7DQo+
ICB2b2lkIGludGVsX2RwX2xpbmtfY29uZmlnX2dldChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
LCBpbnQgaWR4LCBpbnQgKmxpbmtfcmF0ZSwgaW50ICpsYW5lX2NvdW50KTsNCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5jDQo+IGluZGV4
IDYzOTg5ZDk3ZWZmZDcuLjM3ZmZkNzE0YzZhNDIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuYw0KPiBAQCAtNSwxMiArNSw0
MiBAQA0KPiANCj4gICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+DQo+IA0KPiArI2luY2x1ZGUgPGRy
bS9kcm1fcHJpbnQuaD4NCj4gKw0KPiArI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfY29yZS5oIg0K
PiArI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMuaCINCj4gKyNpbmNsdWRlICJpbnRlbF9k
cC5oIg0KPiAgI2luY2x1ZGUgImludGVsX2RwX2xpbmtfY2Fwcy5oIg0KPiANCj4gIHN0cnVjdCBp
bnRlbF9kcF9saW5rX2NhcHMgew0KPiAgCXN0cnVjdCBpbnRlbF9kcCAqZHA7DQo+ICB9Ow0KPiAN
Cj4gKy8qIEdldCBsZW5ndGggb2YgY29tbW9uIHJhdGVzIGFycmF5IHBvdGVudGlhbGx5IGxpbWl0
ZWQgYnkgbWF4X3JhdGUuICovDQo+ICtpbnQgaW50ZWxfZHBfY29tbW9uX2xlbl9yYXRlX2xpbWl0
KGNvbnN0IHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICsJCQkJICAgaW50IG1heF9yYXRl
KQ0KPiArew0KPiArCXJldHVybiBpbnRlbF9kcF9yYXRlX2xpbWl0X2xlbihpbnRlbF9kcC0+Y29t
bW9uX3JhdGVzLA0KPiArCQkJCSAgICAgICBpbnRlbF9kcC0+bnVtX2NvbW1vbl9yYXRlcywgbWF4
X3JhdGUpOw0KPiArfQ0KPiArDQo+ICtpbnQgaW50ZWxfZHBfY29tbW9uX3JhdGUoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCwgaW50IGluZGV4KQ0KPiArew0KPiArCXN0cnVjdCBpbnRlbF9kaXNw
bGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ICsNCj4gKwlpZiAo
ZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLA0KPiArCQkJaW5kZXggPCAwIHx8IGluZGV4ID49IGlu
dGVsX2RwLT5udW1fY29tbW9uX3JhdGVzKSkNCj4gKwkJcmV0dXJuIDE2MjAwMDsNCj4gKw0KPiAr
CXJldHVybiBpbnRlbF9kcC0+Y29tbW9uX3JhdGVzW2luZGV4XTsNCj4gK30NCj4gKw0KPiArLyog
VGhlb3JldGljYWwgbWF4IGJldHdlZW4gc291cmNlIGFuZCBzaW5rICovDQo+ICtpbnQgaW50ZWxf
ZHBfbWF4X2NvbW1vbl9yYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICt7DQo+ICsJ
cmV0dXJuIGludGVsX2RwX2NvbW1vbl9yYXRlKGludGVsX2RwLCBpbnRlbF9kcC0+bnVtX2NvbW1v
bl9yYXRlcyAtIDEpOw0KPiArfQ0KPiArDQo+ICBzdHJ1Y3QgaW50ZWxfZHBfbGlua19jYXBzICpp
bnRlbF9kcF9saW5rX2NhcHNfaW5pdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgew0K
PiAgCXN0cnVjdCBpbnRlbF9kcF9saW5rX2NhcHMgKmxpbmtfY2FwczsNCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5oDQo+IGluZGV4IDA1
MGIyNzk0NjNkNmUuLjMyNDg3NzdkMTI4N2YgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuaA0KPiBAQCAtNiw2ICs2LDExIEBA
DQo+IA0KPiAgc3RydWN0IGludGVsX2RwOw0KPiANCj4gK2ludCBpbnRlbF9kcF9jb21tb25fbGVu
X3JhdGVfbGltaXQoY29uc3Qgc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gKwkJCQkgICBp
bnQgbWF4X3JhdGUpOw0KPiAraW50IGludGVsX2RwX2NvbW1vbl9yYXRlKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHAsIGludCBpbmRleCk7DQo+ICtpbnQgaW50ZWxfZHBfbWF4X2NvbW1vbl9yYXRl
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0KPiArDQo+ICBzdHJ1Y3QgaW50ZWxfZHBfbGlu
a19jYXBzICppbnRlbF9kcF9saW5rX2NhcHNfaW5pdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
KTsNCj4gIHZvaWQgaW50ZWxfZHBfbGlua19jYXBzX2NsZWFudXAoc3RydWN0IGludGVsX2RwX2xp
bmtfY2FwcyAqbGlua19jYXBzKTsNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jDQo+IGluZGV4IDk3Y2I0MDdkMDg0
Y2QuLmI5MTVjZmRlYWJkMGUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jDQo+IEBAIC0zMyw2ICszMyw3IEBA
DQo+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIg0KPiAgI2luY2x1ZGUgImludGVs
X2Rpc3BsYXlfdXRpbHMuaCINCj4gICNpbmNsdWRlICJpbnRlbF9kcC5oIg0KPiArI2luY2x1ZGUg
ImludGVsX2RwX2xpbmtfY2Fwcy5oIg0KPiAgI2luY2x1ZGUgImludGVsX2RwX2xpbmtfdHJhaW5p
bmcuaCINCj4gICNpbmNsdWRlICJpbnRlbF9kcF9tc3QuaCINCj4gICNpbmNsdWRlICJpbnRlbF9l
bmNvZGVyLmgiDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX3R1bm5lbC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF90
dW5uZWwuYw0KPiBpbmRleCBkNmJkMWY3ZTAxZTE4Li5jODJhZGZjY2UwMWQwIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX3R1bm5lbC5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfdHVubmVsLmMNCj4gQEAg
LTExLDYgKzExLDcgQEANCj4gICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X2xpbWl0cy5oIg0KPiAg
I2luY2x1ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMuaCINCj4gICNpbmNsdWRlICJpbnRlbF9kcC5o
Ig0KPiArI2luY2x1ZGUgImludGVsX2RwX2xpbmtfY2Fwcy5oIg0KPiAgI2luY2x1ZGUgImludGVs
X2RwX2xpbmtfdHJhaW5pbmcuaCINCj4gICNpbmNsdWRlICJpbnRlbF9kcF9tc3QuaCINCj4gICNp
bmNsdWRlICJpbnRlbF9kcF90dW5uZWwuaCINCj4gLS0NCj4gMi40OS4xDQoNCg==
