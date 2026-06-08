Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id olYjMCSKJmqLYQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 11:23:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0556548DF
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 11:23:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=O+A1c1xs;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BA2310F036;
	Mon,  8 Jun 2026 09:23:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15D5710F036;
 Mon,  8 Jun 2026 09:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780910623; x=1812446623;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=HIXz8bJVGbshUbNISW8Eu3jrRqtCb2Z10ORvQ2haJIc=;
 b=O+A1c1xs/gsVclBB3IF0Ea5yg5BHH4ftNL19OFFzjMIHAyqzZgtN1L8i
 u6aV5kiSZycT8KS+d1Dx+PDn9tzZzNyNpZlm0IadKvWQOiwhdCA7VzrBJ
 4YbY/6T8l0VL8Aj+YX8KZL52vymL/Q5SKheVjioHnxjWgEsnZLihaFqAi
 3Sd0bbiTdOIeZ2BrZ6m9+ojDgeVKl8R3Htz8F99SzG7W/0LKopC8/P38A
 tg7TXknoaTT+xGvb1T21s5Qy0WX1wlVVVcBZsFkLwgroeojiSHEKfadFH
 WgNM0RReRtvMsY1bevuez9Di/3xzdFQP31lPhbpQsIgYGEWHbJ/z/IIGp w==;
X-CSE-ConnectionGUID: 4paKxdl4SQWHLrpPsOkOGQ==
X-CSE-MsgGUID: wLR7b7w3QxqPsbm6+Ep7VQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="81386334"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="81386334"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 02:23:43 -0700
X-CSE-ConnectionGUID: p1Hn0auSTuCisj36yAOcCw==
X-CSE-MsgGUID: LiV1rIYcT/OfoM6p7xn5IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="269208626"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 02:23:42 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 02:23:41 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 02:23:41 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.70) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 02:23:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ui4HY/Zeraj6TBe36zOyyr2SMA4DC8p9zIIuu7MseYkBGgKIaf+v1rFde1LLSLAX+LJYrI352izlUI3DFaEpZ0zYO9BuHQfv4UZyd1TRCuWQgFpC3y2TxgEulO5QQByR1WVtHi48DXq0bUA9B2R0FgctBecTEfs29MnRMkcsFrdngE+v8rFMwzrbjGku9XwedJivcJbG+kk9GfG/6g2J/CZHqkknSENDq4JOd2mfur+9QBuHJYSaHagu0tRw2RE9Vj56+NHt3512d6jBYC4zjQN22sFc1zag1AS1EseWFe9xhQNe4qh8yq9J37Dq2E+bdjOyY0lHfJ03GpJv1JrhkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HIXz8bJVGbshUbNISW8Eu3jrRqtCb2Z10ORvQ2haJIc=;
 b=cdM+BlTmutl4mQHX7XH+++aai30lq/9SZNmNbsLcZjKjLHkwpC3g3BikXhHJJd0VEAsENuZCsxzjMwm/371ot3KfKUXmmno0UQlJwVgG/eDuDYJYD9aw7R1D9hQZxjXk8SCvAzaHBeDhWB44eTlxkroBaac5aB1RbKfPbvNUEYmmpHAadGpikcQi1edmryzrZHlGbrgbImzP2Samg5RjANq4AfQjPVcphf9e9w+X3h4FU5CpQ3H0+PC3K2qTfXXNlWf9eVCDc2oVPOrIFX8kWv46EUV5tHiyiC8wm37MfSZBrmBFdvE6nHthTTVC+RQGqdpfrU3WkTSPs+idrWQ2SQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by IA4PR11MB8989.namprd11.prod.outlook.com
 (2603:10b6:208:56c::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.12; Mon, 8 Jun 2026
 09:23:39 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 09:23:39 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 16/22] drm/i915/dp_link_training: Add no-fallback link
 recovery state
Thread-Topic: [PATCH v2 16/22] drm/i915/dp_link_training: Add no-fallback link
 recovery state
Thread-Index: AQHc8a4iRPbBibVlPESmqj94TL3Qm7Y0bYyA
Date: Mon, 8 Jun 2026 09:23:39 +0000
Message-ID: <DS4PPF69154114F6AFD032FD6D693781B03EF1C2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
 <20260601093836.3057345-17-imre.deak@intel.com>
In-Reply-To: <20260601093836.3057345-17-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|IA4PR11MB8989:EE_
x-ms-office365-filtering-correlation-id: 1d516ac2-d610-4f54-5b7d-08dec53fa039
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|56012099006|11063799006|4143699003|3023799007|6133799003|18002099003|22082099003;
x-microsoft-antispam-message-info: BvS6Vnd34Kq16sQ6cGK1fGdCp51WEiu1kK050VLUFqKjrmOOK9Q/flWkYKcCbR0UauI9cIH5lz8DLKbkQFFpOD/TYlFk1bSMV0jHFDGPSvFJpQXYZxLBytEmQVfi/jEZShp/rDOw/NJUr1xXtug9BdaMD5wkTMTfXmbe35YI9sch9WvwqLLxP0U90fJ24Y3pOaokAoB/S8ftnyDDhwfGv7m3jF7fF7FW9bFKsNg7jDrZjAZnhZLn8jn8Q2jcrTo9NYWv0haVLKtSKERjSAEpYSg0nrUMxyGdGv0eRL0ToM9iE9r39mi9KvWOhcm8A4bLaiLE0MVUd7j0JaNI3Rq9JfK6vsN/z4kfYqlTumjauG52aradNtX+7V8/T317/neArPFHKr9qBxgHaX4at+SROUKoRIgmPViW0K8H542VBHekiI++UP70oK8X+3tnMm/nsFBRrzLwxinMTWYa3wMhRj0Gv7riKFhme/yjg6kWAQQv33GBBxkVNwbIzypBq9bZsxL6wrVEmJvQIy8cadeOyHBA6Rnnk5XR9ILL4x5pBm18JTO2mdKfREBDNfjRPdcutHoeohvF4rW+fpm3chTZtPlPGiRkSPBl3ZGK7xGAWWNY3IPMBuuSoXOI0kW9pVNWtvQC18M/hv1zb/mTpLW4JtxAnsM6VlzkwKOjzNpNhNlWwr3hPCTkyr/VXNo/QNzRQ/HghzBG6aIAIPS1gOum+4UoTnvvdPSQlK84Yb6/yPXXoWXF5zAkZ+ruWiJAw+Gc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(56012099006)(11063799006)(4143699003)(3023799007)(6133799003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZUdIK2V4SC8wZWtXdkxGa1FoM0dOeWJ4UGJQUG1uUDNpVEhKcjdJWWpYZFN5?=
 =?utf-8?B?S1ZEejQrS0pKZmluTEgyZitmWWRhTWVRdlgzOFN0Z3pDeVBsMndTVCtoM0lE?=
 =?utf-8?B?UDJwenpFRjdKa05VdVh3MXBRWGNRemNSRDQ3R1VjTkZJT0FPb2hkUlpFeE1u?=
 =?utf-8?B?R3dOL05lTTBabTFkczNhUUUrRlphUndEMVd4Nm9JNE1zMW1EQk1KVGVWdjcy?=
 =?utf-8?B?MHZRc2NRclhnbC95YXV3OTByWXAvQUl0ZW9adGtnM3E3T3MrNDQ3OUYvYVpp?=
 =?utf-8?B?eDRyd2VnTVRNdzZYRzExUmdCb1ZTRkFNRmZRQUZjaFJ3YlNEdTNoV25jNnN5?=
 =?utf-8?B?QTY4aEpEYUp0N1ZDaXJFM0hTMlY0L3VaSnEyTmdsRGpMUkVHSjFsQmwvTFlO?=
 =?utf-8?B?eXFvaXdOdEVmeUFua0JzQ2FNTys1VlR1d0lYWWFDUnp6TVkvMjNUY3UrUlI3?=
 =?utf-8?B?ZDg2bHE1MVpPUDYrWjlOSGVpMlhYelRPVk5nZUdFZkVkckJRN29WdjY4cDR6?=
 =?utf-8?B?ZWo1VUcwRVF3cXZnN1NmdTVXU2czWXFxb09MbFlVOWhTbWRsSG85SGFTZ1BL?=
 =?utf-8?B?RHZBSzdtbU1iMHU2VHU5dW1EWHJsU3N0WEp3Ni9XU3lNN0h3b0duaVQvbzBz?=
 =?utf-8?B?YVVhVitmSDhVNXY4NmVNOXpScHBtYW4rVmxWKzM2Q3dLVGdNa3VHOU1vbGJw?=
 =?utf-8?B?TlNOZnpvZVljaUkrbzZSMGVVUHRTOWFTUTBaUU9rU1QxTHFPeFhaNXRNdndG?=
 =?utf-8?B?ZStPZTNDN0FrU05FTjdmUnppU21vc2k4S0ZEV2pnT3cvVUx5REpTWSs2U3Vk?=
 =?utf-8?B?UFpxYXVzaWdsc0pETGh0MFlQSC8wUHhNelN2OS9uYjNGZ0xKUVdJQldicGhN?=
 =?utf-8?B?bytVdHpwZWZDNVYzNlZiNE8rTFRhK01RVlQwYW9KVVFhNFdXWjRwTXozUlh3?=
 =?utf-8?B?WjRzZnNmbGVLbEJXL0QweG5IOEhySlpYRGdiZEdUZzVuemN4YklCRHJlTVFG?=
 =?utf-8?B?eXBCMFovNGtVVTVvZHdpZlRuLzhnMWdSRFQ2UVlhUFBzYUxNaForSmhQYXln?=
 =?utf-8?B?MnBkb2tLd1FWSUVvckV4dnhCSUdaTFJPMTB5aVdoU3pDb2dlWnJSY0FZNXFV?=
 =?utf-8?B?R2hhK0c2Vml4SWRVMTVpTVhlSTAzeURGeVFDNFBzUXRMeE4rbk1STlNNUG16?=
 =?utf-8?B?N1ltNHRxTS9kZEdBdFg5b0RncWJvZW1xTDZ3MXpLQUQxOFFGUTZlckE4REU5?=
 =?utf-8?B?K0NEK0UxalAwQ21WUzhZS3pma0RRMmlLcVMycWlaS1BGZzRjNkx0NGM2eFNX?=
 =?utf-8?B?eWovWHR6djRUVS9zOUdMWGRqd0puMStOSUVabi8vWGQ4YkQ4MTFjdmNTTjBJ?=
 =?utf-8?B?STR2WGNFam9TRFM4Zk44RjdRMUpUaDdZV0YxK0xlK3Z6SXdDdHlQR01OSEsr?=
 =?utf-8?B?aVRhOWV3MTdTMmFwUlFITlU5cHAyYTRRNFpFdVdySVJvTEZZck5mbHZaUDQw?=
 =?utf-8?B?SUpuSFA4ellkZ21DMXJtZU0vVUFOZEZTbmFiZUUrYnJJazlEMVJHVEhZdkJU?=
 =?utf-8?B?WDhiQWY2R1VKSXRMbVJpZWpVZG5jbFEyREZySmg0K0p4Z05CYXFVVzFTYk96?=
 =?utf-8?B?ODJ3cUdDY05CVVdQeEUwWXQxTkJaRWR4RjR2ZjdxaGxXS0NBeFZ2K0M3RnJr?=
 =?utf-8?B?M3VJN0sxcXNmVlAvcXZ2ZmpLcktFKy9EN1JlbnZJRHlmWE5WbzlBdWtjS0Zw?=
 =?utf-8?B?RGtuTUZXU2xabGZMenpaWE1QekdCekZTZHRnaGVSSHhxY2U5cXBKZ1NmV2g5?=
 =?utf-8?B?TGJReGd0OUR3TUFrRjNtRGlDUGpYZWpwMXBBTHdEZHc2OXpORDd2Zll0MUN3?=
 =?utf-8?B?YWYrS0F3amlLZ3VyUjVOY2xQTzRXU0FYQU1nMHo2azBMNzdvaW9lb2grZkgw?=
 =?utf-8?B?dnpvSW9Pa3pUamFJakJya3BpRERxZjdxQlZrczZxQzNlblRjZ1IraE15bjJv?=
 =?utf-8?B?cWwwMGw2N045d0FVa00rTG13SU9LZFJaOGVBa002cVhUbVUyZ0pjYWhQTFJD?=
 =?utf-8?B?aHpoYitYUUtOMGlhQTZZWUdNcnRiMGRtWkQ5SWlrL1c5ZytMYlJRRXZjNVVX?=
 =?utf-8?B?SjYvcXB5akpwalRMbUtGRVRBbXQ1UG81R2RGM2wrWU92NUdQNjhTd3dxZnhU?=
 =?utf-8?B?dWNDOUNpMnROcGFiaGxFOEdnVGdNQ3dwSDlmUzlvTTNHcGNiWjNSMkc1bktP?=
 =?utf-8?B?MzR6WnhSaERLZkI1eEZWSWJVTFQ3dituYXFoSHowWTZSd1JNR1pyRHdKdHRF?=
 =?utf-8?Q?LlAjPDwmpm7zf7VQd7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: CVaa2PfFU8vEfp+P0Fwwo+FlYXR1/ngrmbppi3rORZZ466frnMfBB/oEFNqkQtypymmH2+Is+3I+mGMCWh+OgNY/3Bsc4LlR4hmHhOf4TqyCA3xRx4DtviU1XJIHlMns5bPUluNW2jc6UYm/8tKtlIz/8Qw2877U6LB+DHsGWcEQlH0cnjo9Nk4v+Rlfc6KNQiv5+sTEgcj1pY/NMBOjyb5SE7rXysKsaM1vcKPhfipnwSkN/Byi4BAeWZJ28LxwHK953IFrF7q3CpTZ6KaMhIvKnMbjcH4o107t9umQNrb09LUjiZFzbY4Gc1wCzDyjgp7iOCHGjh12BzG9ZyP1Xg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d516ac2-d610-4f54-5b7d-08dec53fa039
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2026 09:23:39.4675 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zoJtOxK4O09NNl9lbA390ewRHIVTfdYUmfZYqkuCTbeaB4+ZE7Qq8WRG/iB4pc55WhNJMu5HAs6gruoC48bAKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB8989
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:from_mime,intel.com:email];
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
X-Rspamd-Queue-Id: 1A0556548DF

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBNb25kYXksIDEgSnVuZSAyMDI2IDEyLjM4DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVj
dDogW1BBVENIIHYyIDE2LzIyXSBkcm0vaTkxNS9kcF9saW5rX3RyYWluaW5nOiBBZGQgbm8tZmFs
bGJhY2sgbGluayByZWNvdmVyeSBzdGF0ZQ0KPiANCj4gUmVwbGFjZSB0aGUgbWlzbmFtZWQgcmV0
cmFpbl9kaXNhYmxlZCBmbGFnIHdpdGggYSBkZWRpY2F0ZWQgbGluaw0KPiByZWNvdmVyeSBzdGF0
ZSBpbmRpY2F0aW5nIHRoYXQgbm8gZmFsbGJhY2sgbGluayBjb25maWd1cmF0aW9ucyByZW1haW4u
DQo+IA0KPiBUaGlzIGNsYXJpZmllcyB0aGUgbWVhbmluZyBvZiB0aGUgc3RhdGU6IGl0IGhhcyBh
bHdheXMgcmVwcmVzZW50ZWQgdGhlDQo+IHNpdHVhdGlvbiB3aGVyZSBubyBmdXJ0aGVyIGZhbGxi
YWNrIGxpbmsgY29uZmlndXJhdGlvbnMgYXJlIGF2YWlsYWJsZS4NCj4gDQo+IFdoaWxlIGF0IGl0
LCBhZGQgYSBUT0RPIGNvbW1lbnQgdG8gdGhlIGRlYnVnZnMgZW50cnksIHRvIGV4cG9zZSB0aGlz
DQo+IHN0YXRlIHZpYSBhIG1vcmUgYXBwcm9wcmlhdGVseSBuYW1lZCBlbnRyeS4NCj4gDQoNClJl
dmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25l
ZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICAuLi4v
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgfCAyOCArKysrKysrKysr
KysrKysrLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlv
bnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX2xpbmtfdHJhaW5pbmcuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbGlua190cmFpbmluZy5jDQo+IGluZGV4IGEzMjZlOTgwM2YyYzguLmFkNjdmOWRmNDZk
N2IgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBf
bGlua190cmFpbmluZy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbGlua190cmFpbmluZy5jDQo+IEBAIC04NSwxMyArODUsMjEgQEANCj4gICAqICAgZmFp
bHVyZXMgdHJpZ2dlciBmdXJ0aGVyIGZhbGxiYWNrIHNlbGVjdGlvbnMgYW5kIHVzZXJzcGFjZQ0K
PiAgICogICBub3RpZmljYXRpb25zLg0KPiAgICoNCj4gKyAqIEBJTlRFTF9EUF9MSU5LX1JFQ09W
RVJZX05PX0ZBTExCQUNLOg0KPiArICogICBGYWxsYmFjayBzZWxlY3Rpb24gaXMgbm8gbG9uZ2Vy
IHBvc3NpYmxlLCBhcyBubyB1c2FibGUgZmFsbGJhY2sgbGluaw0KPiArICogICBjb25maWd1cmF0
aW9ucyByZW1haW4uIFJlY292ZXJ5IG11c3QgcHJvY2VlZCB2aWEgdXNlcnNwYWNlIG1vZGVzZXRz
DQo+ICsgKiAgIHVzaW5nIHRoZSByZW1haW5pbmcgYWxsb3dlZCBsaW5rIGNvbmZpZ3VyYXRpb24u
IFVzZXJzcGFjZSBjb250aW51ZXMNCj4gKyAqICAgdG8gYmUgbm90aWZpZWQgb2Ygc3Vic2VxdWVu
dCBsaW5rIHRyYWluaW5nIGZhaWx1cmVzLg0KPiArICoNCj4gICAqIERlc2NyaWJlcyB0aGUgbGlu
ayByZWNvdmVyeSBzdGF0ZSB1c2VkIGJ5IHRoZSBJbnRlbCBEUCBsaW5rIHJlY292ZXJ5DQo+ICAg
KiBsb2dpYy4NCj4gICAqDQo+ICAgKiBTZWUgYWxzbzoNCj4gICAqICAgLSBsaW5rX3JlY292ZXJ5
X2F1dG9yZXRyYWluX3BlbmRpbmcoKQ0KPiAgICogICAtIGxpbmtfcmVjb3ZlcnlfYXV0b3JldHJh
aW5fYWxsb3dlZCgpDQo+ICsgKiAgIC0gbGlua19yZWNvdmVyeV9oYXNfbm9fZmFsbGJhY2soKQ0K
PiAgICogICAtIGxpbmtfcmVjb3ZlcnlfbWFya190cmFpbl9mYWlsdXJlKCkNCj4gKyAqICAgLSBs
aW5rX3JlY292ZXJ5X21hcmtfbm9fZmFsbGJhY2soKQ0KPiAgICogICAtIGxpbmtfcmVjb3Zlcnlf
cmVzZXQoKQ0KPiAgICovDQo+ICBlbnVtIGludGVsX2RwX2xpbmtfcmVjb3Zlcnlfc3RhdGUgew0K
PiBAQCAtMTAyLDYgKzExMCw3IEBAIGVudW0gaW50ZWxfZHBfbGlua19yZWNvdmVyeV9zdGF0ZSB7
DQo+ICAJSU5URUxfRFBfTElOS19SRUNPVkVSWV9JRExFLA0KPiAgCUlOVEVMX0RQX0xJTktfUkVD
T1ZFUllfQVVUT1JFVFJBSU5fUEVORElORywNCj4gIAlJTlRFTF9EUF9MSU5LX1JFQ09WRVJZX0FV
VE9SRVRSQUlOX0RJU0FCTEVELA0KPiArCUlOVEVMX0RQX0xJTktfUkVDT1ZFUllfTk9fRkFMTEJB
Q0ssDQo+ICB9Ow0KPiANCj4gIHN0cnVjdCBpbnRlbF9kcF9saW5rX3RyYWluaW5nIHsNCj4gQEAg
LTEwOSw3ICsxMTgsNiBAQCBzdHJ1Y3QgaW50ZWxfZHBfbGlua190cmFpbmluZyB7DQo+IA0KPiAg
CWVudW0gaW50ZWxfZHBfbGlua19yZWNvdmVyeV9zdGF0ZSByZWNvdmVyeV9zdGF0ZTsNCj4gDQo+
IC0JYm9vbCByZXRyYWluX2Rpc2FibGVkOw0KPiAgCWludCBmb3JjZV90cmFpbl9mYWlsdXJlOw0K
PiAgCWJvb2wgZm9yY2VfcmV0cmFpbjsNCj4gIH07DQo+IEBAIC0xMzM4LDYgKzEzNDYsMTIgQEAg
bGlua19yZWNvdmVyeV9hdXRvcmV0cmFpbl9hbGxvd2VkKHN0cnVjdCBpbnRlbF9kcF9saW5rX3Ry
YWluaW5nICpsaW5rX3RyYWluaW5nKQ0KPiAgCX0NCj4gIH0NCj4gDQo+ICtzdGF0aWMgYm9vbA0K
PiArbGlua19yZWNvdmVyeV9oYXNfbm9fZmFsbGJhY2soc3RydWN0IGludGVsX2RwX2xpbmtfdHJh
aW5pbmcgKmxpbmtfdHJhaW5pbmcpDQo+ICt7DQo+ICsJcmV0dXJuIGxpbmtfdHJhaW5pbmctPnJl
Y292ZXJ5X3N0YXRlID09IElOVEVMX0RQX0xJTktfUkVDT1ZFUllfTk9fRkFMTEJBQ0s7DQo+ICt9
DQo+ICsNCj4gIC8qDQo+ICAgKiBSZWNvcmQgYSBsaW5rIHRyYWluaW5nIGZhaWx1cmUgYW5kIGFk
dmFuY2UgdGhlIHJlY292ZXJ5IHN0YXRlIHRvDQo+ICAgKiBpbmRpY2F0ZSB0aGUgbmV4dCByZXF1
aXJlZCByZWNvdmVyeSBzdGVwLg0KPiBAQCAtMTM2Nyw2ICsxMzgxLDEyIEBAIGxpbmtfcmVjb3Zl
cnlfbWFya190cmFpbl9mYWlsdXJlKHN0cnVjdCBpbnRlbF9kcF9saW5rX3RyYWluaW5nICpsaW5r
X3RyYWluaW5nKQ0KPiAgCXJldHVybiBsaW5rX3JlY292ZXJ5X2F1dG9yZXRyYWluX2FsbG93ZWQo
bGlua190cmFpbmluZyk7DQo+ICB9DQo+IA0KPiArLyogUmVjb3JkIHRoYXQgbm8gbW9yZSBsaW5r
IGZhbGxiYWNrIGNvbmZpZ3VyYXRpb24gaXMgYXZhaWxhYmxlLiAqLw0KPiArc3RhdGljIHZvaWQN
Cj4gK2xpbmtfcmVjb3ZlcnlfbWFya19ub19mYWxsYmFjayhzdHJ1Y3QgaW50ZWxfZHBfbGlua190
cmFpbmluZyAqbGlua190cmFpbmluZykNCj4gK3sNCj4gKwlsaW5rX3RyYWluaW5nLT5yZWNvdmVy
eV9zdGF0ZSA9IElOVEVMX0RQX0xJTktfUkVDT1ZFUllfTk9fRkFMTEJBQ0s7DQo+ICt9DQo+IA0K
PiAgLyoqDQo+ICAgKiBsaW5rX3JlY292ZXJ5X3Jlc2V0IC0gcmVzZXQgdGhlIGxpbmsgcmVjb3Zl
cnkgc3RhdGUNCj4gQEAgLTE5NzMsNyArMTk5Myw3IEBAIHZvaWQgaW50ZWxfZHBfc3RhcnRfbGlu
a190cmFpbihzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAlpZiAoaW50ZWxf
ZHBfc2NoZWR1bGVfZmFsbGJhY2tfbGlua190cmFpbmluZyhzdGF0ZSwgaW50ZWxfZHAsIGNydGNf
c3RhdGUpKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiAtCWxpbmtfdHJhaW5pbmctPnJldHJhaW5fZGlz
YWJsZWQgPSB0cnVlOw0KPiArCWxpbmtfcmVjb3ZlcnlfbWFya19ub19mYWxsYmFjayhsaW5rX3Ry
YWluaW5nKTsNCj4gDQo+ICAJaWYgKCFwYXNzZWQpDQo+ICAJCWx0X2VycihpbnRlbF9kcCwgRFBf
UEhZX0RQUlgsICJDYW4ndCByZWR1Y2UgbGluayB0cmFpbmluZyBwYXJhbWV0ZXJzIGFmdGVyIGZh
aWx1cmVcbiIpOw0KPiBAQCAtMjU2OCw3ICsyNTg4LDggQEAgc3RhdGljIGludCBpOTE1X2RwX2xp
bmtfcmV0cmFpbl9kaXNhYmxlZF9zaG93KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkN
Cj4gDQo+ICAJaW50ZWxfZHBfZmx1c2hfY29ubmVjdG9yX2NvbW1pdHMoY29ubmVjdG9yKTsNCj4g
DQo+IC0Jc2VxX3ByaW50ZihtLCAiJXNcbiIsIHN0cl95ZXNfbm8obGlua190cmFpbmluZy0+cmV0
cmFpbl9kaXNhYmxlZCkpOw0KPiArCS8qIFRPRE86IEV4cG9zZSB0aGlzIHZpYSBhIGRlYnVnZnMg
ZW50cnkgcmVmbGVjdGluZyB3aGF0IHRoZSBzdGF0ZSByZXByZXNlbnRzLiAqLw0KPiArCXNlcV9w
cmludGYobSwgIiVzXG4iLCBzdHJfeWVzX25vKGxpbmtfcmVjb3ZlcnlfaGFzX25vX2ZhbGxiYWNr
KGxpbmtfdHJhaW5pbmcpKSk7DQo+IA0KPiAgCWRybV9tb2Rlc2V0X3VubG9jaygmZGlzcGxheS0+
ZHJtLT5tb2RlX2NvbmZpZy5jb25uZWN0aW9uX211dGV4KTsNCj4gDQo+IEBAIC0yNjA4LDcgKzI2
MjksNiBAQCB2b2lkIGludGVsX2RwX2xpbmtfdHJhaW5pbmdfZGVidWdmc19hZGQoc3RydWN0IGlu
dGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQ0KPiANCj4gIHZvaWQgaW50ZWxfZHBfbGlua190cmFp
bmluZ19yZXNldChzdHJ1Y3QgaW50ZWxfZHBfbGlua190cmFpbmluZyAqbGlua190cmFpbmluZykN
Cj4gIHsNCj4gLQlsaW5rX3RyYWluaW5nLT5yZXRyYWluX2Rpc2FibGVkID0gZmFsc2U7DQo+ICAJ
bGlua19yZWNvdmVyeV9yZXNldChsaW5rX3RyYWluaW5nKTsNCj4gIH0NCj4gDQo+IC0tDQo+IDIu
NDkuMQ0KDQo=
