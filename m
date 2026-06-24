Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KWcQBYyWO2pLaAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 10:34:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 728516BC977
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 10:34:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=XsBtf9nC;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4FAA10EE08;
	Wed, 24 Jun 2026 08:34:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1181B10EE08;
 Wed, 24 Jun 2026 08:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782290057; x=1813826057;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=gBaAJYyucSAjUPpIHaYnXxIQJatJrhaMbLb32dR4S6Y=;
 b=XsBtf9nCHAbvHa710pYWAQKgbJHsQTxVGDFZLimQAlILLnTSDMBHBKrS
 +UZmglQXWdbK80uz3kvluxUe3z1Xgmbv+1pyi4NvbM0rsIkUf5tO5UblG
 CV0f7GZuejr0REqY4um3BwX5tKtr1jo2bOHgXebzvrriFwlRJ7ngVOrtO
 JFGQW4hO9G3MvbhZyw63RTH77PsTudN0BBinMJABsIwrVAEN4jbCCTX64
 R7rpwVm3wM7JZ83ScwBopg8aXxgY9y5thfN0uqxnacJrjD1WTrrBGRLwL
 HpTt2q7tom5K0ZiM7cdJ/UyWm4dUxUulCybREwwW2BWXTI8qhtaUARvFs w==;
X-CSE-ConnectionGUID: 3SPcxAtZTICwLkNQVvsx1g==
X-CSE-MsgGUID: KCtMcgPJS2aDtwS7wrgjLA==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="82918151"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="82918151"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 01:34:16 -0700
X-CSE-ConnectionGUID: eFOiwoPWQuy6YldXR42BBg==
X-CSE-MsgGUID: UsvSIeJWSbm1ZuBbAzC3XQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="279929879"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 01:34:17 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 01:34:16 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 24 Jun 2026 01:34:16 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.64) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 01:34:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FZ7i8UJ97yBjwbseckuvU9cLUxW3dVbt5jq7x9jHnaZcysW2mtW7OTRRqySl7N3uahXe3pkWYuDRtJxy/+/g38jNh867W7MZ2EmXbNQi9/eCDU3Ug4xFvfHVyqhIwhQXnOVY7mt/IfxN5YLDML6sDts9oeclew7qE7+YddaZDjC8O6myzn7BhpQQT4/UOV35CQVV/ovcuGz6Z0/abyruJhhKJAmYiVn3TDrlQx1GXKZkgnEePdnGIV1r7GQJrxrd95pE5KN+JzacsHK0INqIs9XDYnwfYHMr/HzCRto7wUFs0fWjldmjJh3H5LUGbXovr+S5jNIiItD/XOYmKZny/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gBaAJYyucSAjUPpIHaYnXxIQJatJrhaMbLb32dR4S6Y=;
 b=oleMze0uzouJ/U8C9CnS+Cw7LHcZgJog/VPOkV0MzH5RwDJCd+urNqodH9RYWoTQx31X2CH5BauCBiRsrxvL+jYrgmFOooIf6E6Yn6jHeE008ZM0REnBUbnq4KTas1rI2ldHaKhm3sLFccVYmSo6eDZse/2QRf29bgB3ZGMbJh2F2DGCflWRyTwTKNJzeoJOglMWqumn92+3b8aNVvRUSDQTlh8iMT70yWdSbnrTMdqOV46ydb3IQgPhrNXCYBdGIZwWL54VYfQcDjJ5nxXhRTIuzIzrowkd5t8RxrDwyN5cj4L4I1YVqx0+6Dhvra8OBi8mCdlXVSEl5W+j0ep/vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by CY5PR11MB6164.namprd11.prod.outlook.com
 (2603:10b6:930:27::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.18; Wed, 24 Jun
 2026 08:34:06 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0159.015; Wed, 24 Jun 2026
 08:34:06 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 16/28] drm/i915/dp_link_caps: Add helper to get the
 number of supported link rates
Thread-Topic: [PATCH v2 16/28] drm/i915/dp_link_caps: Add helper to get the
 number of supported link rates
Thread-Index: AQHc/c10Es66OuHqZk2SQEhRhSL10rZNbMMQ
Date: Wed, 24 Jun 2026 08:34:06 +0000
Message-ID: <DS4PPF69154114FE8E1C4C09824631BC627EFED2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-17-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-17-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|CY5PR11MB6164:EE_
x-ms-office365-filtering-correlation-id: ad0caf6b-7330-45ba-95fa-08ded1cb5aed
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|38070700021|18002099003|22082099003|6133799003|4143699003|3023799007|56012099006|11063799006;
x-microsoft-antispam-message-info: MjSRqn9LBrbOWda40ykpiNM38mtfwyI9jtEwsy4ScilG1QShwcw17Efo94ZQR9gO+2fxJgU0jZ1erSoO863qH/Wj7xYeOL+sClk7g/pC87M1VD3hHJpvEZaqSbL5loOtdl0RlyWN1PnQlLGK55WmD/tL8RFQSTmjbHnr6Mb9y44zEjSlsaCNfBYMspxIrtPgK8FNQjm4BzsfpZy3FgfbnPEg14fKzKGTCQA8pfWhkQxong+4XG8g/8QZ7fxFu6k9b3oMDW6bPySEPEqDo2wx9NZZhutw7zuNaPd4KfbtByAq19zF/oetbNndw6HxSAj+3KlSlFy0fsdSIH5TKpkv672xV4QUVuPxQ1mKDwYWoLzaZWR/kSPPBmnSX00VtxpB0eIOqLxYrsQ7SQtm6OHbXSt8EJO/gxw7fDgfT0shqA3h7CB+7qT8ONOaePw6kU/oV3TtFNQXXYoGId5FiOC9NpfLd5qLh1Aaloc0wL2JiOFEs5xk9k/UhEU0ftCWEqPM+06nXLjUHa8yuEVxzwJ3lJHMDAK/oAqRWRel2eLA+SOcOdzPUnEESnoQWlM+/5iEaPa9bk1jFa+aV4+sNxx5t9RMVrwASWWFWPFo+HEsyRtA2cVw0L4URHNba2O09NBBtwNRpjKhUPDKhFj5/E1Bw3gv+aauFjSzjd+zNQmWPiyMGmaEzvPmX1gwC7W3Mmm9FPbAOkaFdevvmbWhSYP7fD4Pk4EHcE2amhvRXk57WXM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(38070700021)(18002099003)(22082099003)(6133799003)(4143699003)(3023799007)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d0YxaEhIZVRUdmt1VnpsWnpuc0tnREpmTW1Gdm1sNFM1LzBVY0UzZWRmZG9t?=
 =?utf-8?B?SHZEQlBjNnNnMnozRVFyQTRxc2U5RkJpY3RyRzZlSkpGbm8xMHV1emVUcGEx?=
 =?utf-8?B?LzBKWG9oblNvNzU5eUd5MTRyUWpjYXN5N2psc3k4WlRSbTluKzlUb1pRcXk4?=
 =?utf-8?B?bzBqTUErWmpGYkZybHhVT0pVcVUxSHVodlArMG9HaFA3UXVvYk9qVUVhVmZx?=
 =?utf-8?B?c25GTHdHOXBleERyRzk5S1ZyYVIxejRSUDlVNDFJbU1VVWRWZzhKdzhkaXhy?=
 =?utf-8?B?UkNPUmxrazdYWmlnZ3pJMEpsb1hvMnN3S1Y3MWowRUFFQ2dEOEFUTDI1LzVM?=
 =?utf-8?B?K01DWjdPWE1wc0xyVE1iWk1QaW1PbUdJVUhHVmFPMFlkb3hhY2xDUVRuTlA4?=
 =?utf-8?B?dCs2UzhNTzRJY0hyWXJuTnZpOFlzWlo4T2lVbUlqY0F3Uk1DQWJBbFZpOWd1?=
 =?utf-8?B?L0RRSHhDUUhMRjBOdnFYb1lzQWtycnpqbEMrTHE0NG54dm9pOGRKM29QbnFn?=
 =?utf-8?B?c3lMUzU1a0FxNTM2QmtrYVFBQkczYytYZ0JxaHNXTUNWZGg2YkhndmFTQ0V5?=
 =?utf-8?B?UHpUVXdpKzVqK1laYXFtODNNTERRdnZWa0R3Qm41RDBwQjBMWjNHWkZSdE9j?=
 =?utf-8?B?anVBbnhBSkpKK0VzTGlublI2SEducGpDSk9la2dYNzQ2a2R4STllZXZLUkNt?=
 =?utf-8?B?bXpxTjM5YWFuQjdEajV6UE1VVnVOdlE1WWlOTnpockZ0enpnMURrcytnTjM2?=
 =?utf-8?B?dmlXak0xakVZQUVwSDlxaEpGVnBHekc3bk44TEpKQXpxRG4xUFVCV3VwTzQr?=
 =?utf-8?B?dE8rWDBtVkZDOWg0WjBXZm9XOGlkdVZwTVFwbUpBelVRcHhoVWo4dlNBM05r?=
 =?utf-8?B?TmN0U0JGNVhJc1FmdnpDaHI2aHY2ZHR2K1pqRDVNQkFmOUFWQ3dGS09QUnBx?=
 =?utf-8?B?YXNBSGVmVUtBS1NqM2VEK1poYjUvS3FRbVBUSXZyakk1N1BocTNrVzJybldh?=
 =?utf-8?B?RnllMzFRT1IyaXYxY3F6REVGNWRnUjVINUhTVmtPUUd4VFl6QTJYUGJMK3E3?=
 =?utf-8?B?SGx2OTFJQ3JVM01rMnNta1ZxcnBaRTZuWVR4Y29IR3BEU2VNVVFkUWQxS3hh?=
 =?utf-8?B?dVNyMG1YM3NVbEFrd2E3UTdnNHMxYnFsMGRxUEhNMWIxaFhISjlabTVXOE0v?=
 =?utf-8?B?Vjh4bXFZM0VKdk0wUmpHY28xbUFKcWk5RHUzeWRIOTFTaU9hNi8zeUwxMmVo?=
 =?utf-8?B?a1FjRjdJTXk2TjJ1VGE1MXZPbkZUc3RIWndNNEtUMGM2Q3N6ekdQRi9jVFdP?=
 =?utf-8?B?RXo5bjFzZWxvaU5XY2lCM1BTeWxOWWc0R3hvYXFGcXdTaE8yS2NObW5VUGVH?=
 =?utf-8?B?RUZiUXBzdUhwRkswM3VtRllDYkxOSlpWbzJ1a1A0ZHNhK2R3VEUxZFk0ams3?=
 =?utf-8?B?K3JWOGYrakkxTVEvUkM0TElleC9zMTRFN3Q0YUQvdlNzZGtTL1hWWGp2a0J2?=
 =?utf-8?B?YWJvQ3NiSVo2a0VBSHV6a2xOcXhTd1NscTR0UlUwWUw1VWhWSHdxbUxrT2F6?=
 =?utf-8?B?RkFzYjlpbVNEUUNFQ0RJaWNCN0ZINzBoRXJGRFJuKzQvTmJTQzVRV3Q3N0p3?=
 =?utf-8?B?UTQ4SVZFcnI2L0FPdS9Mejc5alEybmVMbHFGaXlFenQ4LzVBR2xGZDVIajlm?=
 =?utf-8?B?S3VjVGE5aWdYb0RTTTFIT21nT3JhQXp2R1BvekQ0VUhPV0xFN2NpekxyazJo?=
 =?utf-8?B?R3pKdFVQL1JlUTVGTEZQTzZyV1RlNlpRU0krUkNTOXBVbUNnZk1NWkxyeEtw?=
 =?utf-8?B?VWZmSld3UjBGUEMrRUJ3YmtISThvaktwN1NSVGd3eTRWcklFU1NKTmYrRWtT?=
 =?utf-8?B?eU1BL3phaGpRWkxxY1pzSk0reS94K3hocWR0UVpMS2VGSkk2UnJ0K1RHYnIy?=
 =?utf-8?B?S3Q2RWxlRlNDZmh5UVlOOHhzcEFqNHB0SC9DZm5vR2RWL3Q1N2V1MFVYVERr?=
 =?utf-8?B?QUtvTTlSOG9uNVBjeVcyejVQekZQZG1NblZkcitWdmUrZTUzQWNoTjZpWWZP?=
 =?utf-8?B?OXBsVnFIL1hEdjZrWTZ4YWpKS1RvNENZSTl6aFJyS3phR2R5dHFJTGc4Z3Zl?=
 =?utf-8?B?ZEF0OExnWmFSMkZqeXlzWmd4M0QxbUtHazRzTW9kL2RUWUlBRlEyVlZ1UXhB?=
 =?utf-8?B?NWliM01RQU52TFVPMk1scGhoZFBTeGVCM0FaMHNVUkJZVXk0WHg4V0MwWFJn?=
 =?utf-8?B?WlJKU3d5VzdqRFgzUUZCTzVoQmx3S0k4aENkb2tlazZsNnJUYmdqVkt1RGJD?=
 =?utf-8?Q?NRmdI8SMgEA3sb06M7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: BJif8HQiC2k2NlG6182H5C6q+vkza+xbNb8uD0v7E2UqRc3v2gyjfZV4B6KX9QG4480aX4gRQJoa63jsAUkUUO9n1NjGpRylK+OyMgYwjAe0JJYJwE97g1A9teK8Fmab2A1robEJ8v+8NximijzrQwrQ1PpH9nanzrAckAjwAtaoFv+I2a5f63KcendtWXfw5cRQuqgue9ZFqkX2J9l6mF+RpSKXA3qN/lkG+LgscKGBfYR3mQFVEIIqktUUHv1uE5aT0pcZCqNkLM5OM3vpHrgv0eXWvsL8UtH1NH+wbkOJ2z3Vsg3e9PsM63ChrqyOO9HuWxYDSJHNtjbfKRpYZw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad0caf6b-7330-45ba-95fa-08ded1cb5aed
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2026 08:34:06.6845 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S4Gh4/RruOyZ04Pg4wem5mxNBqis15LxC6hbeG0d6QynsvYHgP0oHjTfasWQMFr6ef7tkL29txyC2LphLKZ29w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6164
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DS4PPF69154114F.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,intel.com:from_mime];
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
X-Rspamd-Queue-Id: 728516BC977

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBUdWVzZGF5LCAxNiBKdW5lIDIwMjYgMjMuMDkNCj4gVG86IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJq
ZWN0OiBbUEFUQ0ggdjIgMTYvMjhdIGRybS9pOTE1L2RwX2xpbmtfY2FwczogQWRkIGhlbHBlciB0
byBnZXQgdGhlIG51bWJlciBvZiBzdXBwb3J0ZWQgbGluayByYXRlcw0KPiANCj4gQWRkIGludGVs
X2RwX2xpbmtfY2Fwc19udW1fY29tbW9uX3JhdGVzKCkgdG8gcmV0dXJuIHRoZSBudW1iZXIgb2YN
Cj4gc3VwcG9ydGVkIGxpbmsgcmF0ZXMgdHJhY2tlZCBieSB0aGUgbGlua19jYXBzIG1vZHVsZS4g
VGhpcyBwcmVwYXJlcyBmb3INCj4gdHJhY2tpbmcgdGhlc2UgY2FwYWJpbGl0aWVzIGludGVybmFs
bHkgd2l0aGluIHRoZSBsaW5rIGNhcHMgbW9kdWxlLg0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2Eg
S2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBE
ZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgICAgICAgfCA0ICsrLS0NCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmMgfCA1ICsrKysrDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5oIHwgMSArDQo+ICAzIGZp
bGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXggZjljM2QzNTYxYzQxNy4u
ODQ2NDBjODM5NDUzNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYw0KPiBAQCAtMTc2Niw3ICsxNzY2LDcgQEAgaW50ZWxfZHBfY29tcHV0ZV9saW5rX2NvbmZp
Z193aWRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJCWludCBsaW5rX2JwcF94MTYg
PQ0KPiAgCQkJaW50ZWxfZHBfb3V0cHV0X2Zvcm1hdF9saW5rX2JwcF94MTYocGlwZV9jb25maWct
Pm91dHB1dF9mb3JtYXQsIGJwcCk7DQo+IA0KPiAtCQlmb3IgKGkgPSAwOyBpIDwgaW50ZWxfZHAt
Pm51bV9jb21tb25fcmF0ZXM7IGkrKykgew0KPiArCQlmb3IgKGkgPSAwOyBpIDwgaW50ZWxfZHBf
bGlua19jYXBzX251bV9jb21tb25fcmF0ZXMoaW50ZWxfZHAtPmxpbmsuY2Fwcyk7IGkrKykgew0K
PiAgCQkJbGlua19yYXRlID0gaW50ZWxfZHBfY29tbW9uX3JhdGUoaW50ZWxfZHAsIGkpOw0KPiAg
CQkJaWYgKGxpbmtfcmF0ZSA8IGxpbWl0cy0+bWluX3JhdGUgfHwNCj4gIAkJCSAgICBsaW5rX3Jh
dGUgPiBsaW1pdHMtPm1heF9yYXRlKQ0KPiBAQCAtMTk5NSw3ICsxOTk1LDcgQEAgc3RhdGljIGlu
dCBkc2NfY29tcHV0ZV9saW5rX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAg
CWludCBsaW5rX3JhdGUsIGxhbmVfY291bnQ7DQo+ICAJaW50IGk7DQo+IA0KPiAtCWZvciAoaSA9
IDA7IGkgPCBpbnRlbF9kcC0+bnVtX2NvbW1vbl9yYXRlczsgaSsrKSB7DQo+ICsJZm9yIChpID0g
MDsgaSA8IGludGVsX2RwX2xpbmtfY2Fwc19udW1fY29tbW9uX3JhdGVzKGludGVsX2RwLT5saW5r
LmNhcHMpOyBpKyspIHsNCj4gIAkJbGlua19yYXRlID0gaW50ZWxfZHBfY29tbW9uX3JhdGUoaW50
ZWxfZHAsIGkpOw0KPiAgCQlpZiAobGlua19yYXRlIDwgbGltaXRzLT5taW5fcmF0ZSB8fCBsaW5r
X3JhdGUgPiBsaW1pdHMtPm1heF9yYXRlKQ0KPiAgCQkJY29udGludWU7DQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuYw0KPiBpbmRleCAx
M2Y5YmZkNWQ3YmFkLi4wOWI2MGEwY2Q2ZmJiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmMNCj4gQEAgLTY3LDYgKzY3LDEx
IEBAIGludCBpbnRlbF9kcF9tYXhfY29tbW9uX3JhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCkNCj4gIAlyZXR1cm4gaW50ZWxfZHBfY29tbW9uX3JhdGUoaW50ZWxfZHAsIGludGVsX2RwLT5u
dW1fY29tbW9uX3JhdGVzIC0gMSk7DQo+ICB9DQo+IA0KPiAraW50IGludGVsX2RwX2xpbmtfY2Fw
c19udW1fY29tbW9uX3JhdGVzKHN0cnVjdCBpbnRlbF9kcF9saW5rX2NhcHMgKmxpbmtfY2FwcykN
Cj4gK3sNCj4gKwlyZXR1cm4gbGlua19jYXBzLT5kcC0+bnVtX2NvbW1vbl9yYXRlczsNCj4gK30N
Cj4gKw0KPiAgdm9pZCBpbnRlbF9kcF9saW5rX2NhcHNfcHJpbnRfY29tbW9uX3JhdGVzKHN0cnVj
dCBpbnRlbF9kcF9saW5rX2NhcHMgKmxpbmtfY2FwcykNCj4gIHsNCj4gIAlzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwID0gbGlua19jYXBzLT5kcDsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5oDQo+IGluZGV4IDczMzNkZjZiODJmOTcu
LjM0MTNmNmY3NjA0NTMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbGlua19jYXBzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcF9saW5rX2NhcHMuaA0KPiBAQCAtMTUsNiArMTUsNyBAQCBpbnQgaW50ZWxf
ZHBfY29tbW9uX2xlbl9yYXRlX2xpbWl0KGNvbnN0IHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAs
DQo+ICAJCQkJICAgaW50IG1heF9yYXRlKTsNCj4gIGludCBpbnRlbF9kcF9jb21tb25fcmF0ZShz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBpbnQgaW5kZXgpOw0KPiAgaW50IGludGVsX2RwX21h
eF9jb21tb25fcmF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gK2ludCBpbnRlbF9k
cF9saW5rX2NhcHNfbnVtX2NvbW1vbl9yYXRlcyhzdHJ1Y3QgaW50ZWxfZHBfbGlua19jYXBzICps
aW5rX2NhcHMpOw0KPiANCj4gIHZvaWQgaW50ZWxfZHBfbGlua19jYXBzX3ByaW50X2NvbW1vbl9y
YXRlcyhzdHJ1Y3QgaW50ZWxfZHBfbGlua19jYXBzICpsaW5rX2NhcHMpOw0KPiANCj4gLS0NCj4g
Mi40OS4xDQoNCg==
