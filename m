Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hvbyLbwdIGpowAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 14:27:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D62686377D5
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 14:27:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Gz+BWi5M;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E154410FD41;
	Wed,  3 Jun 2026 12:27:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6761A10FD3B;
 Wed,  3 Jun 2026 12:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780489657; x=1812025657;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1tzKiXNJC/3Mxt6d8o+QI3qQKGC0uUq+X9KT5ZpZSDY=;
 b=Gz+BWi5MPcCMG2uzpHBuUdqsWMnr7A2stbZkPiL+yJ2oofy0GrSZBP+2
 4ZmlbtMV81z7mNoIGX8RNMr00Fhdiy8XEbgE3RvkwVxmDPOU1xC2lpD1F
 xLVUdDDPuGYfBSy6YhkiIpr1V0dEnRFAYpRcQpkG2l3S9TRFko00H7P+p
 OylqK31FtMY83pXVO0mDi2ljPEnNHEcJCwX759xgPMYrU3KGN012fe2Kw
 ryhuU8cUE8NGm3fP/K7GyOaMHZaY04gwjGmfvIbdeH+igC6qPzv3v4j6U
 VEWi2/EXwCGWbKlVAD68p+qwX7GmIJATSI67ReFGNPcEaAQK1RuKX456H g==;
X-CSE-ConnectionGUID: 5xq+de8KSJWDOzQ4dVtuwA==
X-CSE-MsgGUID: QQ9Sb/PQRpyJ77j+C2N4QQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="81036092"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="81036092"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 05:27:36 -0700
X-CSE-ConnectionGUID: cRjIf530SZ+egzlWnG/Hbw==
X-CSE-MsgGUID: MnsdV4+/S3yyttP4fR5miQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="248165465"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 05:27:36 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 05:27:35 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 3 Jun 2026 05:27:35 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.16) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 05:27:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eTMNSjB0BtpxsSvqfDgGP6kguU6IYMrmBrFtm1vtdH1NNg7GzXtLlnkYs7aWmXMMWFAYkJlDTG0y+paxXGSduUhqHR+j+10K1AQDDAqKqPuiU7TXEHJfACNSwjDIYrZeRJNHo8oORynIw+bM4nuIWDEjF1BFdFhN3DrEaXD6DMHguDeeVFSfgAUaiImct8Zn+Bw131bYHwX5UgxUXnE6P2eSBvXyQmKNAeA4n1ElIOKCbEF630JlIi1pnQKIdDtiSR25g7D99U5boQf57mSrR4INj93+GaadmOD/zVc7MyPKnJiirF54wWzP9o08s9HOjuHj269lShjavbmSNriqDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1tzKiXNJC/3Mxt6d8o+QI3qQKGC0uUq+X9KT5ZpZSDY=;
 b=qeM5HqDlvZ3sTanA5nlEoyUUJ1o8IB7sPQYGcAQr8K7zY8O6Bk07TO6GqGEKhCBQ6IVniP/517fSuDNBxA7isGrB8W2mJ1HCb3Jd7H8PhFMHpx2G0k941dABahiUUJI/fkT6lvASWwC/4jEIngxfIKX+Zyp7BqCv+6Mw8nwdrtwyr6ExBjUpJsHIfwrNvfodUsov1xGa248swcxxusYMTBJqAn9Hg3z1ST2SednIs3i7ki8zmg1aUpNLcPNajFWBprWegPOUsaULo0exm1oFDxyRNWvwCZv2B7RNPrVR9xnNaHT0zQqBHAVojWjv4qDWF6UctrvpGBDjQm8WBbM3bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 PH7PR11MB7122.namprd11.prod.outlook.com (2603:10b6:510:20d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Wed, 3 Jun 2026
 12:27:32 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 12:27:32 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v7 13/15] drm/i915/cmtg: Add trigger to enable/disable cmtg
Thread-Topic: [PATCH v7 13/15] drm/i915/cmtg: Add trigger to enable/disable
 cmtg
Thread-Index: AQHc7RlkNq8njNYdQ0mbbAm1+T1E2rYlFLuAgAe4tsA=
Date: Wed, 3 Jun 2026 12:27:31 +0000
Message-ID: <DS0PR11MB8049A700C711BC09AA962A2AF9132@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260526133811.2621675-1-animesh.manna@intel.com>
 <20260526133811.2621675-14-animesh.manna@intel.com>
 <dc7e8efb-f1e0-45b0-8a2b-e93f64503082@intel.com>
In-Reply-To: <dc7e8efb-f1e0-45b0-8a2b-e93f64503082@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|PH7PR11MB7122:EE_
x-ms-office365-filtering-correlation-id: 5e504844-43bc-4520-0b09-08dec16b7c16
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|6133799003|11063799006|4143699003|56012099006|38070700021;
x-microsoft-antispam-message-info: oa32mPEtuQ5K4R0HVhL1OGBZ2xWqDrdl++BH6Q3e3z555ctB7HfHV9WFFMtgNKnLVqyO1pdOieo3hQYW7NqFRlgEFJQLW9IU03yRiy535NPvyax6c8AvlBMCMwSdkNbs/73tVdWyVFHRFVKXjpzpHRDeJOUQPPqX/wvxGYFRCiTwN1w8zUIRnIKZJYDZKJEWNcilOxVO4M4AWvQu48jilwxt+95as/Bz+ht/ZKyqY3pptvPvVs2D/g25yMAXIkhqTJJXLkS6oSBVWbs15dT4pzu/KTnF4B/W33iUGlLPVvSQD/SPadnHfv2wGM2WmszcVv2ezzgdSu3dtEKjdYNuZaKq/VoDGTeqzDz0C+yToFgyxUnNeULmBydYRH2F2kfeLkQTeHsu87OXvc5ZOBkpbMBeUJgczLBugeeTbZxr/o1OCA2YZn4Z413pBSzwZs7WGyuj2AR6eSjGZqOb4cldbJOIlTYV9MoKG8cExflJAu3YNtq0O0pK1GWd2JFplm/ZrvB2q+d/NRmUhqJfSnV0LyIryhyfsDn4RV/j+zMRhkd1v3EDwQxzOiBwBlqIPvLz46ebNh7Ze/sxA4mX4XH6cIms7AeI5nsfoqESm9cFvcbi07tsWARKqrNEf6oBGj8wtmby0c1QDT4GUqjz0MZfmawO3LiHLPYZk8u4Ewyaef/xhKBntwFEvJ0MLXDj/q5JQ1wC/NHAZVSsp7RRglJDQzzXpjlduOWansaSA3HAe9k8rn23E1DzWOKRWxBJ27+4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(6133799003)(11063799006)(4143699003)(56012099006)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YnI3QVpwY1lrdXRTZ2ViVWZxaDUycnhkNHliRHJlWWEyRlUrUW1MNWJWWmNH?=
 =?utf-8?B?R1ZyQnRLM05DN01WVGdPenpvcU4xc0VqSE9EMjdaM1FhRkxlQXhZYVhnWll1?=
 =?utf-8?B?MHBXWE5HRG5uamplVkxIUGhLV1hZUzhuSlQ1bzkrdDNyMWlEMG9LNVNCSHBB?=
 =?utf-8?B?RjQ1bFdkUGpNUFFTc1ZXb0hjNHppWG4zMzVEL1dadE9Hd3ZsZTIveUtMbjZq?=
 =?utf-8?B?c3haTnhFcmxmYXpzY3NLM1Nja29acEZ6WXE0Q3Rmc2ZHQ3REaUx3Sm1YMXNL?=
 =?utf-8?B?NVd2N04vaXF5QTB0aUw4REpwck9aUnIrTVd1WnREUmp1Wld0eGorSk5LU3Qx?=
 =?utf-8?B?elRBZXlNVlBhN09BWjk4VjIzaWJSMEExYUtSaXZ5WWFDWWZkeC9kbnczWVhz?=
 =?utf-8?B?UGlLTHFHN2I4ajVyZGx6aWEvb3lGcUlwS1lKQ2MyVXZPdERnTElBdU5nL1lu?=
 =?utf-8?B?RHpjSnp1T1dINGM4Z3RZc1ZFNEt3L0w4bXM3TUx2ekFiL0NlaHhRQnI4YVNT?=
 =?utf-8?B?OHVkamhOcWNhY3IybHdEMnk5b2F6cHJwK1ptTDBFZUc3dDJMa0pmb29JMS83?=
 =?utf-8?B?YUdWblBhdjFDYmUxUHhVRWpJRUxKNE9GYUdYcm80Z2pieWFlUW9nTEVid2Ev?=
 =?utf-8?B?K0hCc1YrRlVUVFR3VHlqck1HZ3BHbkpOZStKblpmL3B4Snd1YkIrNXlOQ09C?=
 =?utf-8?B?TzZkbk82UkpHRWl2R2o5K0huZlV3Ti9xaUV1czFGaEh1b0kwelRMLzhIQmt2?=
 =?utf-8?B?Z1gvVlU4cmc5SW5NRDBwVytvUzhXN3ZXTCtUbU5OMjVWVHdPSXZ1S3E1ZXh4?=
 =?utf-8?B?RjhzK1pQUjhoZnEyZUFvbkxhSnkyM3JkMmFNWWR1RlByUHJ0Z2hDeHRVMUpT?=
 =?utf-8?B?Z0lMa0xVMlhvdjN3VlRKcnBZZEMrcmpQd0hRc2VnS2pFWFJ5MG5yZmM5RzJy?=
 =?utf-8?B?Q2dxSnQxQkZIR1M5WGRpOFZhU295QWtTNnBRdTVzMU84QkZKSjdUVHZnKytQ?=
 =?utf-8?B?TUZ2aVJ3Zmw1UDFrWE5ZQkRVVXE0OEVKTDArK1FadU1ncHh2dmJPcmdJRzl5?=
 =?utf-8?B?WE1OOTBCY0R5ZVpQZ3RVc1RwRVg0d2xPYkpmT0liMVg3MkdtQ0VtaVR1OHFk?=
 =?utf-8?B?cXdTRUZndjFWT3lnVzV6Vk1SMFJXNS9Pa3M2MTUyWExLYVVyR1loZXdUa0ZZ?=
 =?utf-8?B?Y1lpN3FuYXEwV3hUY3V1ejF5djVERVVMT2VpSFpJSEhXMkp6VEttYjNoYWlV?=
 =?utf-8?B?RTRtTmF1SURVTGVBdDVNTml5TGJLb2psWVN5MHorZjcrcFJKNWlHOEtsZWp0?=
 =?utf-8?B?cjFKNjRGUGRoU1VQNGlva05BNkxzWEFlTjBaUG1uVFlxUGhZNUxBdk03TkNy?=
 =?utf-8?B?L1BUei9hNVJ6cUxyTURIOTUzNmE5ZVdUREVzSGJvOGNhbTNJZnlxK3dQUUkx?=
 =?utf-8?B?SWd1NmR2UTFXQ0tjWkJGcU9vd1NYNHRkZVl5ckJmdGpLdVl4VTBKNVdKancr?=
 =?utf-8?B?SytDcURxQytkSG1DT0daNHdIV2JwQ2pPQUxEYjk0QXFlMlhLaTl5ZGl6SC8y?=
 =?utf-8?B?UXZ3L1hpRVVKZGkySmNjYzBGRkdNdFdmSTZVWVdqeVovcVdrc0hxUWNBd05E?=
 =?utf-8?B?VkhCaGJvcmpjblYvK3N0R0I4SmI5Y2QzUXBveUQ4UmN2MkRJajlLYVRYeElV?=
 =?utf-8?B?VG5LcVpHVm95ZTQzd3VDa0FxRURCZE9vZFQrTFFvT012UG8zQm9yTDFEWjB4?=
 =?utf-8?B?bjVJT1JyaHlVcGNBNmJETUpodWVHemd1a2wyK0tHVG03cllyQ3BReDR2T3dB?=
 =?utf-8?B?eDFWZ1VaT0VHdkZWTXlRMTlxOUJnZUo2K1lLTUxtTk01OFI1SERxZGR3a1FE?=
 =?utf-8?B?Wm1YRVdOcTJyaFJBc3NBOEhsckNyNVJkQ3YzdWlxVjRud1NSNUhJelhZQ0RG?=
 =?utf-8?B?Q1ZsWEg0R1h2NGhmejA5SVIzSEdFMXljN05uejh2L0Z3Z3FBSWVhc3Z3ZkpM?=
 =?utf-8?B?L1Q1dWNaTDl5eEZjVFJabUQxRjZVV1E3b0ZCRUV3SGVXR21neCt5YTJ3dFJX?=
 =?utf-8?B?M1BtOVBobHF2MmRDcVhxcUVnM1dmM1YyNXBKWlZkeTAyL1p0TERZSitQbElM?=
 =?utf-8?B?QWZSS3NyTGJleEVYNlpJQStsQUdmNnRVQzNVMEJlZzlZZEVXUjErMlVORW1D?=
 =?utf-8?B?SEZiRmdhQ0F2QTNwOFhjbElEaldwWmFrUThZc2RpcDFwZjlGZGxnT1FrdTNB?=
 =?utf-8?B?MlphbXNOLzBPUm5OeUFnTTBBbER4ODJ5SnN3V1hBc3BtQ3JncWhjWXZ1cjlM?=
 =?utf-8?B?cXVNRFFQYWtwZEdqdzlGNGYrREE5eGFNcnljdmtEMy9lQTFRQ1FIQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: eFrjd/QWhVTDT72n7AaFfOEmjcTS8sLw/Wr/Aon+X3ZJJ16rFTL3H153QV5udBhl4buYLnAPcGyfMr4e1dqBaj5dDNw9qlbTX26ZJfTmVOix3vOsnP4yxoXSBfvCnaZRhh/ujPaGyEhWUXXXdDs1za7JPTbmZMICkVafYc1bpGeKZsqqr84TmlAq709oQ1eQatd+xiW2XRB7iOuoCHe9rJ8glFMLXmmyLcwf0/9VBFxt6xpkcNuhO8keD9rsS/ogG+DhV5TIACqMszz2sh4Lw/L0FlJejenrlj7Jkxsbwh8TY7QCGNZ+cTnXViIglLkUrnyxPb4OcYxgN4SXDugoQQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e504844-43bc-4520-0b09-08dec16b7c16
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2026 12:27:32.0249 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 29rwkZcuc6N5fIA9OD4NmEfcQggb39WkiCHP/oTXnXD9ktxc8g93df6UtnGG61gc4qoV0IVEsaudZW0e5PHcTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7122
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
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DS0PR11MB8049.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:from_mime,intel.com:email];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D62686377D5

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRGliaW4gTW9vbGFrYWRh
biBTdWJyYWhtYW5pYW4NCj4gPGRpYmluLm1vb2xha2FkYW4uc3VicmFobWFuaWFuQGludGVsLmNv
bT4NCj4gU2VudDogRnJpZGF5LCBNYXkgMjksIDIwMjYgNzo1OSBQTQ0KPiBUbzogTWFubmEsIEFu
aW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogU2hhbmth
ciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbTsNCj4gTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6
IFJlOiBbUEFUQ0ggdjcgMTMvMTVdIGRybS9pOTE1L2NtdGc6IEFkZCB0cmlnZ2VyIHRvIGVuYWJs
ZS9kaXNhYmxlDQo+IGNtdGcNCj4gDQo+IA0KPiBPbiAyNi0wNS0yMDI2IDE5OjA4LCBBbmltZXNo
IE1hbm5hIHdyb3RlOg0KPiA+IEVuYWJsZSBDTVRHIHdpdGggZml4ZWQgcmVmcmVzaCByYXRlIG1v
ZGUgYW5kIHdpdGggZHluYW1pYyBkYyBzdGF0ZQ0KPiA+IGVuYWJsZWQuDQo+ID4NCj4gPiBEaXNh
YmxlIENNVEcgd2l0aCB0cmFuc2NvZGVyIGRpc2FibGUgb3IgaWYgdGhlcmUgaXMgYSB0cmFuc2l0
aW9uIHRvDQo+ID4gdnJyIG1vZGUgZnJvbSBmaXhlZCByZWZyZXNoIHJhdGUgbW9kZS4NCj4gPg0K
PiA+IHYyOg0KPiA+IC0gTW92ZSB0aGUgZW5hYmxlZCBmbGFnIHVwZGF0ZSB0byBhdm9pZCBpc3N1
ZSBpbiB0aGUgZGlzYWJsZSB0aW1lb3V0DQo+ID4gcGF0aC4gW1VtYV0NCj4gPg0KPiA+IFNpZ25l
ZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiA+IC0t
LQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jbXRnLmMgICAgIHwg
IDQgKysrKw0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgIHwgMjQgKysrKysrKysrKysrKysrKysrKw0KPiA+ICAgLi4uL2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgIDQgKysrKw0KPiA+ICAgMyBmaWxlcyBjaGFuZ2Vk
LCAzMiBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jbXRnLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY210Zy5jDQo+ID4gaW5kZXggYTA0MTMwMTNlYzQzLi5kODA4YzYyZTE0YjEg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jbXRn
LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NtdGcuYw0K
PiA+IEBAIC0xNzMsNiArMTczLDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfY210Z19kaXNhYmxlX2Fs
bChzdHJ1Y3QNCj4gaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gPiAgIHZvaWQgaW50ZWxfY210
Z19kaXNhYmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+
ICAgew0KPiA+ICAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlz
cGxheShjcnRjX3N0YXRlKTsNCj4gPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50
ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOw0KPiA+ICAgCWVudW0gdHJhbnNjb2RlciBj
cHVfdHJhbnNjb2RlciA9IGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOw0KPiA+ICAgCWVudW0g
dHJhbnNjb2RlciBjbXRnX3RyYW5zY29kZXIgPSB0b19jbXRnX3RyYW5zY29kZXIoY3J0Y19zdGF0
ZS0NCj4gPmNwdV90cmFuc2NvZGVyKTsNCj4gPiAgIAl1MzIgY2xrX3NlbF9jbHIgPSAwOw0KPiA+
IEBAIC0xODAsNiArMTgxLDcgQEAgdm9pZCBpbnRlbF9jbXRnX2Rpc2FibGUoY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpDQo+ID4gICAJaWYgKCFpbnRlbF9jbXRn
X2lzX2FsbG93ZWQoY3J0Y19zdGF0ZSkpDQo+ID4gICAJCXJldHVybjsNCj4gPg0KPiA+ICsJY3J0
Yy0+Y210Zy5lbmFibGVkID0gZmFsc2U7DQo+ID4gICAJaW50ZWxfZGVfcm13KGRpc3BsYXksIFRS
QU5TX1ZSUl9DVEwoZGlzcGxheSwgY210Z190cmFuc2NvZGVyKSwNCj4gPiAgIAkJICAgICBWUlJf
Q1RMX1ZSUl9FTkFCTEUgfCBWUlJfQ1RMX0ZMSVBfTElORV9FTiwgMCk7DQo+ID4NCj4gPiBAQCAt
Mzk1LDYgKzM5Nyw3IEBAIHZvaWQgaW50ZWxfY210Z19lbmFibGVfc3luYyhjb25zdCBzdHJ1Y3QN
Cj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gPiAgIHZvaWQgaW50ZWxfY210Z19l
bmFibGVfZGRpKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+
ICAgew0KPiA+ICAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlz
cGxheShjcnRjX3N0YXRlKTsNCj4gPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50
ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOw0KPiA+ICAgCWVudW0gdHJhbnNjb2RlciBj
cHVfdHJhbnNjb2RlciA9IGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOw0KPiA+DQo+ID4gICAJ
aWYgKCFpbnRlbF9jbXRnX2lzX2FsbG93ZWQoY3J0Y19zdGF0ZSkpDQo+ID4gQEAgLTQwMyw2ICs0
MDYsNyBAQCB2b2lkIGludGVsX2NtdGdfZW5hYmxlX2RkaShjb25zdCBzdHJ1Y3QNCj4gaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gPiAgIAlpbnRlbF9kZV9ybXcoZGlzcGxheSwgVFJB
TlNfRERJX0ZVTkNfQ1RMMihkaXNwbGF5LA0KPiBjcHVfdHJhbnNjb2RlciksIDAsIENNVEdfU0VD
T05EQVJZX01PREUpOw0KPiA+ICAgCWludGVsX2RlX3JtdyhkaXNwbGF5LCBDTVRHX1NDQU5MSU5F
X0dCMShjcHVfdHJhbnNjb2RlciksIDAsDQo+ID4gQ01UR19IV19HQl9FTkFCTEUpOw0KPiA+DQo+
ID4gKwljcnRjLT5jbXRnLmVuYWJsZWQgPSB0cnVlOw0KPiA+ICAgCWRybV9kYmdfa21zKGRpc3Bs
YXktPmRybSwgIkNNVEc6ICVzIGVuYWJsZWRcbiIsDQo+IHRyYW5zY29kZXJfbmFtZShjcHVfdHJh
bnNjb2RlcikpOw0KPiA+ICAgfQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IGluZGV4IDM1NGVjYTc5YmFjMC4uMzZmZjE3
Yjg4YmU3IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMNCj4gPiBAQCAtMTc3MSw2ICsxNzcxLDkgQEAgc3RhdGljIHZvaWQgaHN3X2Ny
dGNfZGlzYWJsZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiAgIAlz
dHJ1Y3QgaW50ZWxfY3J0YyAqcGlwZV9jcnRjOw0KPiA+ICAgCWludCBpOw0KPiA+DQo+ID4gKwlp
ZiAoY3J0Yy0+Y210Zy5lbmFibGVkKQ0KPiA+ICsJCWludGVsX2NtdGdfZGlzYWJsZShvbGRfY3J0
Y19zdGF0ZSk7DQo+IA0KPiBTaG91bGQgaW50ZXJydXB0IGRpc2FibGUgaGFuZGxpbmcgYWxzbyBi
ZSBkb25lIGhlcmU/DQoNCk9rLCB3aWxsIGFkZC4NCg0KPiANCj4gQWxzbywgc2luY2UgQ01URyBy
ZWdpc3RlcnMgaW5jbHVkaW5nIGNsb2NrIHNlbGVjdCBtYXkgYmUgbG9zdCBvbiBEQzYgZW50cnks
DQo+IGNvdWxkIGBpbnRlbF9jbXRnX2Rpc2FibGUoKWAgdGltZW91dCBkdXJpbmcgc3VzcGVuZC9z
aHV0ZG93bj8NCj4gDQo+IFdvdWxkIHJlc3RvcmluZyB0aGUgY2xvY2sgc2VsZWN0IGJlZm9yZSBk
aXNhYmxlIGhlbHAgaGVyZT8NCg0KTm90IHN1cmUgaWYgY2xrX3NlbGVjdCB3aWxsIGxvb3NlIGl0
cyB2YWx1ZSwgY2FuIGFkZCB0byBiZSBvbiB0aGUgc2FmZXIgc2lkZS4NCg0KUmVnYXJkcywNCkFu
aW1lc2ggDQo+IA0KPiA+ICsNCj4gPiAgIAkvKg0KPiA+ICAgCSAqIEZJWE1FIGNvbGxhcHNlIGV2
ZXJ5dGhpbmcgdG8gb25lIGhvb2suDQo+ID4gICAJICogTmVlZCBjYXJlIHdpdGggbXN0LT5kZGkg
aW50ZXJhY3Rpb25zLg0KPiA+IEBAIC02ODY4LDYgKzY4NzEsMTIgQEAgc3RhdGljIHZvaWQgaW50
ZWxfdXBkYXRlX2NydGMoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4g
ICAJaWYgKGludGVsX2NydGNfbmVlZHNfZmFzdHNldChuZXdfY3J0Y19zdGF0ZSkgJiYNCj4gPiAg
IAkgICAgb2xkX2NydGNfc3RhdGUtPmluaGVyaXRlZCkNCj4gPiAgIAkJaW50ZWxfY3J0Y19hcm1f
Zmlmb191bmRlcnJ1bihjcnRjLCBuZXdfY3J0Y19zdGF0ZSk7DQo+ID4gKw0KPiA+ICsJaWYgKGNy
dGMtPmNtdGcuZW5hYmxlZCAmJiAoaW50ZWxfY3J0Y192cnJfZW5hYmxpbmcoc3RhdGUsIGNydGMp
IHx8DQo+ID4gKwkJCQkgICAhaW50ZWxfY210Z19pc19hbGxvd2VkKG5ld19jcnRjX3N0YXRlKSkp
IHsNCj4gPiArCQlpbnRlbF9jbXRnX2Rpc2FibGUobmV3X2NydGNfc3RhdGUpOw0KPiA+ICsJCWlu
dGVsX2NtdGdfZGlzYWJsZV9pbnRlcnJ1cHQobmV3X2NydGNfc3RhdGUpOw0KPiA+ICsJfQ0KPiA+
ICAgfQ0KPiA+DQo+ID4gICBzdGF0aWMgdm9pZCBpbnRlbF9vbGRfY3J0Y19zdGF0ZV9kaXNhYmxl
cyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlDQo+ID4gKnN0YXRlLCBAQCAtNzU0NSw2ICs3NTU0
LDIxIEBAIHN0YXRpYyB2b2lkDQo+IGludGVsX2F0b21pY19jb21taXRfdGFpbChzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gPiAgIAkvKiBGSVhNRSBwcm9iYWJseSBuZWVkIHRv
IHNlcXVlbmNlIHRoaXMgcHJvcGVybHkgKi8NCj4gPiAgIAlpbnRlbF9wcm9ncmFtX2Rwa2djX2xh
dGVuY3koc3RhdGUpOw0KPiA+DQo+ID4gKwlmb3JfZWFjaF9uZXdfaW50ZWxfY3J0Y19pbl9zdGF0
ZShzdGF0ZSwgY3J0YywgbmV3X2NydGNfc3RhdGUsIGkpIHsNCj4gPiArCQlib29sIG1vZGVzZXQg
PSBpbnRlbF9jcnRjX25lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUpOw0KPiA+ICsNCj4gPiAr
CQkvKg0KPiA+ICsJCSAqIFRPRE86IENNVEcgbmVlZHMgdG8gYmUgcmVzdG9yZWQgb24gREM2IGV4
aXQgYW5kIERDM2NvDQo+IGVudHJ5IGNvbmRpdGlvbg0KPiA+ICsJCSAqIG5lZWQgdG8gYmUgY2hl
Y2tlZCBiZWZvcmUgY2FsbGluZyBDTVRHIGZ1bmN0aW9ucy4NCj4gPiArCQkgKi8NCj4gPiArCQlp
ZiAobW9kZXNldCAmJiBuZXdfY3J0Y19zdGF0ZS0+aHcuYWN0aXZlICYmICFjcnRjLQ0KPiA+Y210
Zy5lbmFibGVkKSB7DQo+ID4gKwkJCWludGVsX2NtdGdfZW5hYmxlX3N5bmMobmV3X2NydGNfc3Rh
dGUpOw0KPiA+ICsJCQlpbnRlbF9jbXRnX3NldF9od2diKG5ld19jcnRjX3N0YXRlKTsNCj4gPiAr
CQkJaW50ZWxfY210Z19lbmFibGVfZGRpKG5ld19jcnRjX3N0YXRlKTsNCj4gPiArCQkJaW50ZWxf
Y210Z19lbmFibGVfaW50ZXJydXB0KG5ld19jcnRjX3N0YXRlKTsNCj4gPiArCQl9DQo+ID4gKwl9
DQo+ID4gKw0KPiA+ICAgCWludGVsX3dhaXRfZm9yX3ZibGFua193b3JrZXJzKHN0YXRlKTsNCj4g
Pg0KPiA+ICAgCS8qIEZJWE1FOiBXZSBzaG91bGQgY2FsbCBkcm1fYXRvbWljX2hlbHBlcl9jb21t
aXRfaHdfZG9uZSgpDQo+IGhlcmUNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gaW5kZXggMWMwYzMyYzRlNDNh
Li43NGM3MTliNTI3NTkgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IEBAIC0xNTczLDYgKzE1NzMsMTAg
QEAgc3RydWN0IGludGVsX2NydGMgew0KPiA+ICAgI2VuZGlmDQo+ID4NCj4gPiAgIAlib29sIHZi
bGFua19wc3Jfbm90aWZ5Ow0KPiA+ICsNCj4gPiArCXN0cnVjdCB7DQo+ID4gKwkJYm9vbCBlbmFi
bGVkOw0KPiA+ICsJfSBjbXRnOw0KPiA+ICAgfTsNCj4gPg0KPiA+ICAgc3RydWN0IGludGVsX3Bs
YW5lX2Vycm9yIHsNCg==
