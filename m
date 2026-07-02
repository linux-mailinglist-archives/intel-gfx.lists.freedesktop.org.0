Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MhZiI4X0RWpdHAsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 07:17:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 608F16F38B0
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 07:17:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="PLQVVaM/";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8954710E401;
	Thu,  2 Jul 2026 05:17:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 336D510E401;
 Thu,  2 Jul 2026 05:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782969473; x=1814505473;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0xmNZnTESOx24fbMYPKcpgpw/6hxF4/fFJt+qZjAOD4=;
 b=PLQVVaM/m/5Dj94mD2Sxqyqs2MaMyrx/OxvB9Yz28a8u5NxU+DeMpO17
 fhsaWMeAigtNdQxPRu8nvfGDLd9U81laqgMVWv+KVeuK63aUwftQkXut2
 FJV1skz4UuhuRz/6wSDdOeA7+9iTOvR4UtGEcV6ljWVSsNmxb91enjlI0
 6M+SnSIJyycqol6WGi/4xWZ5A48xDe4/PddylFoNmgZkei38A/NeGFuU0
 SZbsOyDyPa0VwizsEb847jtEDNScDZlSw5qiLgu5krHRbP6/cmi/WW33T
 zuAk1I178rlVYqIrUQ0Tonz3Xd2Y7HECkORKunjgPh5xEQvDSxtpk4Dib Q==;
X-CSE-ConnectionGUID: VccjO/NDRd6RzssCtt0GjQ==
X-CSE-MsgGUID: iqQglBNQSBeWA42Iwl4eYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94066183"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="94066183"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 22:17:52 -0700
X-CSE-ConnectionGUID: q4BJ7+x3SeClRgV2gP1dbA==
X-CSE-MsgGUID: WLecZrInTk2NDebB0cYkug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="277073174"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 22:17:52 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 22:17:52 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 22:17:52 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.64) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 22:17:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LXuKpain29bcToS1o7XskBWL2OFpkYndEpVi00UwgyQJtSiM/PkLZN9GQ13IHsGHAkJAbGvNGjdu8y1fVQU/jSheO4z6WUJVutJJxwwIxrfxG2oA7PRNhn2vIOmUZ7Gztf0cxN/hR4iSznRuwCkjhFGtUrrSyExz0q7/DyJRF/m0IApq1VIbHXbIf+wOBrkX7eq5i9hnsMxF0v7mPFuVeGvCQSm5AvcpAblH/shwWE53Et32QtV+5kF3b23LSdUIgkFpIyNCL/Hwcnthh08A7FcpRFECkbS9iPYRRRmZvmiEJuAdFw1jmsGXW40AYlu7nTrHlCb2buCYphLMFPtrZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0xmNZnTESOx24fbMYPKcpgpw/6hxF4/fFJt+qZjAOD4=;
 b=YHONm9+imhqQQnPD9enaMG2R2iF5T+kL7+FhsH+8GZ+0q1DNJgSRfifyFvGLlXPGKCZ9pzsKVQhG3t8cd8MnwENaN8UtCU6TRgrJ3pW3XaBxusEsAvDlj2HsXLeRPpvJA7vDTi3wPHTPZGrFX2BQ6m696ePZTlwO/5VRGv/TBxPirwfVVwYZdCNQzb+P0IYW2K1FUdGEsVWOLSqtRon+C+3441ULHNGMXkNJfQxSUn1nffNSqippVqEuh1Ydpq/HPpnXFQtacbnSk172AhXECSn8BlcpLgfjDil2zqke0NjkZ/Vp+gcIA+rCqvlRATfT45eutziltDxIrC6Sk19CDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by SN7PR11MB6825.namprd11.prod.outlook.com
 (2603:10b6:806:2a0::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Thu, 2 Jul
 2026 05:17:48 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0181.008; Thu, 2 Jul 2026
 05:17:48 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 01/34] drm/i915/doc: Document DP link capabilities
Thread-Topic: [PATCH v2 01/34] drm/i915/doc: Document DP link capabilities
Thread-Index: AQHdCW71ZmzyBaR/0kuvYbLAj/SBk7ZZsTsQ
Date: Thu, 2 Jul 2026 05:17:48 +0000
Message-ID: <DS4PPFE901A304FDA13A406800591402BDDE3F52@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-2-imre.deak@intel.com>
In-Reply-To: <20260701153204.4124150-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|SN7PR11MB6825:EE_
x-ms-office365-filtering-correlation-id: c4ebbc4e-a4a2-40d0-0f1a-08ded7f941be
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|56012099006|4143699003|11063799006|6133799003|18002099003|22082099003|3023799007|38070700021;
x-microsoft-antispam-message-info: 8MKKR/s6o0hm+urENCMuJnQuTO0/T8RhXrDuzQc6fvjjoZWjQwPauGhmIdyCE4W3nKk3pUmFiONobHD2e8EXPqAtM+2TBzR3EHDoQ8eFuxZv8nVXo5ypbLULSmoDpOMBaZnEwJ2TecKl2oTUcGsjabpSW8lJG9O31ISShDgXAKa2mqVO1MQN8fzfrHXdHtbbuud86dTo+YueQXEUmnBL0C2p/o0UfrBoFxYsDX76zCQTdcfjjX74r5xYJ1JiJ9gMIG+5J5PuipuQB29A43flrJMiyiWoVBsssiFU3bJ+tDeK7kZSxn+JSfAW5m8DJLMQD4iXOmMpowTcfg45qEwwxwACa/dnq3+DQc0SSQDYDoSMI5YQ//GvYv23//4y/0tJPFjkO5Xhlt8LPYRXBGQcU9O+eUunB8km1IwqMlWlHAmuZLSHiwXyY6MgdDmxnlO3HzWiRt+IAnM3myQCGFvG2Xg88c3YmBdRZaEwP6RSK0WF2zxAPjCivbxnbBwtA3ezsvpj5TmU4BM6o0R16DRxuOs95jNaX3sgxhytDOXZdEORjlzm+y2zFKKL2LV18xIadfedOclGGR9jbpxL5lUxf7xe2S+zpBUMz1YKGfzejDl89kRbKL5FF6P2u/6UJzOLpNbPz+2DGpcK3hppkJBbO0d7ZzueXZTlJ2tRCc22WRPRqnbs+GA7MHA9A1eh9S1TRYBpXc3xZbDagoU/pksbmKdLwpvPFYHCh2DnMo53OMg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(56012099006)(4143699003)(11063799006)(6133799003)(18002099003)(22082099003)(3023799007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N1ZKSkNKU0xqdWtLUDRXQ2VWdE10Ymt3WHJvVEZpR1F2Q0RxeHdXSGt4eWVP?=
 =?utf-8?B?aEliaUxISmJBK0FHS1MvRkFWZ3U4UGRVNmZqNllIVTU5cEZmSDR3ZEtqTnBN?=
 =?utf-8?B?U2Z6dVdFTnNKMWRkdnNVWHRJQi9jZ1B6TlpmNWFsMG9ualFKV1VEZHdLemM4?=
 =?utf-8?B?TzR1UDZtQzVveGFOK2p3VTdvZG5IK1FKbG1vU0hUYWF1U1hjVjFLejU1L21l?=
 =?utf-8?B?MkNxdTJLOWJObDlHVVB1WmFqR05XSE1hdGFMcjVHMXpzYWlrWWN3UTdNMDhl?=
 =?utf-8?B?amVtajBMSDRkNVdORlVlVThGRUwwS0c3b1FBdkRpd3d2MGNZWXZWQUJaeFli?=
 =?utf-8?B?endWK3RUVUI3bDBwdXRsU0FZQUZEaDlYcU5KM2h4ektvTnBaODIzb1crNW8r?=
 =?utf-8?B?djZnbzcwaURVNVRyOG02ME5sdW1DRVMxNDV1dHdtZVphTFpvUkFqU3dJWG9N?=
 =?utf-8?B?K0NmTWxhQnRBSUtxQTYzd3JVZzJ2U2VhOXNUT1hIWWZuRVhhRDNZMldQTzhy?=
 =?utf-8?B?cVJUQzI3eHVKWkdiMWpRR2RlVXVadEVhVnNaY1JYSElwZ3d3U3YvMTB6QktW?=
 =?utf-8?B?cjFtTVkzbm5TYnJtSy9YN3ZXTHVvYW5lZVUvMUhYZWJYTDF5YlNlclkwWDRP?=
 =?utf-8?B?SXZHY0NIQndLVlc4WmJnVWdTWi9ibFZnQlhwbkVkZE1OU0VmRWJ0MENxb0x5?=
 =?utf-8?B?bUE4L013TVBsUnZXVFA3Q0JmbjFLZ1ZQb29VUzhoRHQzTXZrUWo1ZW1jcXcw?=
 =?utf-8?B?eVNzaGlWRFhOcU5ZMmFZQ2tBeTByaEx4V3NBalY5aG9rSGIzdTNTU0FHSUJD?=
 =?utf-8?B?T2ttdnNmZEtGaHlWNGRHeGdndDJ1SFZhNmNLelpLa1NMTDFkWWFWWHpIUFlC?=
 =?utf-8?B?MmFwaXlUUFUyWDNSNkpYcTJWczBDWDZMM3FpV1FUR1hlWVFUZVpNNW43Y2Qr?=
 =?utf-8?B?T1NhbGNQdGFvNGwrTGJaNGhYWGxoK1hRRVRvRWFtajk4ZHZDdWNXcnF1bzNZ?=
 =?utf-8?B?SHQ0dnBxeVVFdU9uR1hOdDIvR0hyMnd3ZG8rMWJ4bjFXYkNCdlp6aEZ1Qm9z?=
 =?utf-8?B?c0VlU2h3WVczRFk4bC9HRHFnN2tGSGxWZ0JsbGQ2bmloNmdzbE05RzRCNjRv?=
 =?utf-8?B?dDNqKzRIekJIZ3VxVUF3Mm9BUi9GdHJRU0hqTFhvZWJEcFFjOHM0a1p0NTJz?=
 =?utf-8?B?UkZzVEZnOG9BTGgrcDA3aXJlVW4xa0tYZENWYkJLVkRCeUkzMjBrOEM4VlR3?=
 =?utf-8?B?ZkZNQitZUHgxNWVHUE84WTcrNEpwQzd1T0xMNXRKYUtRdS96MFlMYzFuUEln?=
 =?utf-8?B?dmNGakY1ZHhPM1R0NUlSQlRiVmp3cmhLWmtmdjRxRFdRaDRyb2RtTUlqTURj?=
 =?utf-8?B?NHR6S0NXSi9CVzBGT2s2Tk9DWlo1eHdURXhMN0NTZTNiSHhJUEJiTVJVeXlx?=
 =?utf-8?B?SC9yTmplOXBNYXpldkpqNSs3RmVJZmptTTBua0RsYWZrYzF4QkorNVMwMnRB?=
 =?utf-8?B?U0Y5ZGwrOHpFeHNwVnRvMlVzRDQ3OTdrZzlFWE9NZ3N5Ri9SQmhjZ3dtREtS?=
 =?utf-8?B?NmhoS1dGcmliUTM2STQ5bW1xblN3V0l3bEp3QTRkRGJjN1ZSLzhYd0JMS0Fu?=
 =?utf-8?B?dk4yZlliMzgyYjM3RUVMOVhCSlRqeUtCa3g3UDVXdjBibEJYY0JzZTMrOU1n?=
 =?utf-8?B?T1oxTndDeFNTM2I2c1hPdmNvMmpHd0N2V1ZOdDgwMDJKbTVPWFZuR2JKRGVn?=
 =?utf-8?B?MVFlTVpDSUZzYXZrOXJjK2daVGQzTWJKcVFZWlI4dTBSdUVLNDFvK1dCZlRW?=
 =?utf-8?B?NGFJSHRWYnN0MnhLdXdhSGtpL2IwVFJwc01iM2lSTWdLbzdkeGZUUDUwQ0Yw?=
 =?utf-8?B?aVhDeXh0UFNkcFJqWGJ4bFhQeGhwMHpHQWNBVE1neFo0V2NOSTVBZGpkYUxh?=
 =?utf-8?B?UGQ2SU9FT1RZb0k5dFNqNEMrTmo5N2ljVEROWjBRcERVMVF0bE80c2FPK2Nn?=
 =?utf-8?B?UjJleVlId0RWMHN4RitTZlNWLytnLy9SUHFabk5Xd1hzSDFxS0l0TE1vNW1k?=
 =?utf-8?B?TXlPZksvUEdrWWQ0UzUxeVpyRlROYnVzbHJQRlFsbUVDZU94cTMyNHBzMDFt?=
 =?utf-8?B?RWZyaDRvUkhqVmhCNHVxeXdnSitpQjNtT0FIb2lrVmFFM3l5bTlad1JtdWJN?=
 =?utf-8?B?M3pmR3lFT3RybTlRaEVveTE4NnJLb2tiTUlqcTJxNTNDOHF1L3Q4Z3FZQStD?=
 =?utf-8?B?aXBCQUhnTVh2YU9zL3VDMVc2anRkMGk0MnlSUDU0cWU4WWdLdExsdEdmMWhL?=
 =?utf-8?B?NlFvNkJZTkEyOHRMZ1ZnNnFZZzc5RXZEYm1UQmJscVE0MlhVT3NzQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: AwUg6QxdD785brB22M+LbqHO5PZp7f8c96cuID3MN7yaHtLZa6+ZE7kMobAxYMu0tQJ6TnBqrLU8NDtDu7wjKJHQLgfVX2XL/nQKeTrgCEKJqU6u/cABClM6S3PGyK/0ugnw4zxX77H+lz9TTDzGedobHhQykUUFze49nJRCfdLcJ2R+0vfOFhZdfDI0B8wGUtL2o+4RXfzttG4dEuh51FM+E2Iv0qIErQAInFVRMhFk/Q07GlhWBJQJGfqPBTI6BqrLpUQ+u/0Kx3R3QWBms4U5NaKwLbqLFgUa/Rm8ev/DNhLnBIIn/Bg9UMjpkENVocIhiy4scX2PbzdaPpotYQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4ebbc4e-a4a2-40d0-0f1a-08ded7f941be
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2026 05:17:48.2700 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CXEgsOom+jzEPqdfy/0QtiTAOn7Aa2UiIz7KvuWjuIJfpYoP5v+L0h6KTAI918JtLMYk/hP4b9PcdY0UG8cJ3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6825
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DS4PPFE901A304F.namprd11.prod.outlook.com:mid];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 608F16F38B0

PiBTdWJqZWN0OiBbUEFUQ0ggdjIgMDEvMzRdIGRybS9pOTE1L2RvYzogRG9jdW1lbnQgRFAgbGlu
ayBjYXBhYmlsaXRpZXMNCj4gDQo+IEFkZCBkb2N1bWVudGF0aW9uIGZvciB0aGUgRFAgbGluayBj
YXBhYmlsaXRpZXMgaW50ZXJmYWNlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxp
bXJlLmRlYWtAaW50ZWwuY29tPg0KDQpMR1RNLA0KUmV2aWV3ZWQtYnk6IFN1cmFqIEthbmRwYWwg
PHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgLi4uL2ludGVsLWRpc3BsYXkv
ZHAtbGluay1jYXBhYmlsaXRpZXMucnN0ICAgIHwgMTEgKysrDQo+ICBEb2N1bWVudGF0aW9uL2dw
dS9pbnRlbC1kaXNwbGF5L2luZGV4LnJzdCAgICAgfCAgMSArDQo+ICAuLi4vZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmMgfCA4MSArKysrKysrKysrKysrKysrKysrDQo+
ICAzIGZpbGVzIGNoYW5nZWQsIDkzIGluc2VydGlvbnMoKykNCj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBEb2N1bWVudGF0aW9uL2dwdS9pbnRlbC1kaXNwbGF5L2RwLWxpbmstY2FwYWJpbGl0aWVzLnJz
dA0KPiANCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZ3B1L2ludGVsLWRpc3BsYXkvZHAt
bGluay1jYXBhYmlsaXRpZXMucnN0DQo+IGIvRG9jdW1lbnRhdGlvbi9ncHUvaW50ZWwtZGlzcGxh
eS9kcC1saW5rLWNhcGFiaWxpdGllcy5yc3QNCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4gaW5k
ZXggMDAwMDAwMDAwMDAwMC4uMzMxY2M2OWQxM2EwNA0KPiAtLS0gL2Rldi9udWxsDQo+ICsrKyBi
L0RvY3VtZW50YXRpb24vZ3B1L2ludGVsLWRpc3BsYXkvZHAtbGluay1jYXBhYmlsaXRpZXMucnN0
DQo+IEBAIC0wLDAgKzEsMTEgQEANCj4gKy4uIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQN
Cj4gKy4uIENvcHlyaWdodCDCqSAyMDI2IEludGVsIENvcnBvcmF0aW9uDQo+ICsNCj4gK0Rpc3Bs
YXlQb3J0IExpbmsgQ2FwYWJpbGl0aWVzDQo+ICs9PT09PT09PT09PT09PT09PT09PT09PT09PT09
PQ0KPiArDQo+ICsuLiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9saW5rX2NhcHMuYw0KPiArICAgOmRvYzogRGlzcGxheVBvcnQgbGluayBjYXBhYmls
aXRpZXMNCj4gKw0KPiArLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbGlua19jYXBzLmgNCj4gKyAgIDppbnRlcm5hbDoNCj4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZ3B1L2ludGVsLWRpc3BsYXkvaW5kZXgucnN0DQo+IGIvRG9jdW1lbnRh
dGlvbi9ncHUvaW50ZWwtZGlzcGxheS9pbmRleC5yc3QNCj4gaW5kZXggNmZhOTI5ZDgyYzM4Yy4u
ZTgxZjQ5YmYyMGRmNiAxMDA2NDQNCj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9ncHUvaW50ZWwtZGlz
cGxheS9pbmRleC5yc3QNCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9ncHUvaW50ZWwtZGlzcGxheS9p
bmRleC5yc3QNCj4gQEAgLTM5LDYgKzM5LDcgQEAgZHJpdmVyLiBUaGUgZGlzcGxheSBkcml2ZXIg
aXNuJ3QgYW4gaW5kZXBlbmRlbnQgZHJpdmVyIGluDQo+IHRoYXQgc2Vuc2UuDQo+ICAgICBmcm9u
dGJ1ZmZlcg0KPiAgICAgaG90cGx1Zw0KPiAgICAgZHAtbGluay10cmFpbmluZw0KPiArICAgZHAt
bGluay1jYXBhYmlsaXRpZXMNCj4gICAgIHBsYW5lDQo+ICAgICBwc3INCj4gICAgIHNucHMtcGh5
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xp
bmtfY2Fwcy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5r
X2NhcHMuYw0KPiBpbmRleCAxYzM0YmE2YzQ5YzM1Li4yYzY1NmMyYzAzNmNjIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmMN
Cj4gQEAgLTE5LDYgKzE5LDg3IEBADQo+ICAjaW5jbHVkZSAiaW50ZWxfZHAuaCINCj4gICNpbmNs
dWRlICJpbnRlbF9kcF9saW5rX2NhcHMuaCINCj4gDQo+ICsvKioNCj4gKyAqIERPQzogRGlzcGxh
eVBvcnQgbGluayBjYXBhYmlsaXRpZXMNCj4gKyAqDQo+ICsgKiBUaGUgSW50ZWwgRFAgbGluayBj
YXBzIEFQSSB0cmFja3MgdGhlIHN1cHBvcnRlZCBhbmQgYWxsb3dlZA0KPiArICogRGlzcGxheVBv
cnQgbGluayBjb25maWd1cmF0aW9ucyBmb3IgYSBEUCBlbmNvZGVyIGFuZCBpdHMgYXR0YWNoZWQN
Cj4gKyAqIGNvbm5lY3RvcnMsIGFuZCBwcm92aWRlcyBoZWxwZXJzIHRvIGl0ZXJhdGUgb3ZlciB0
aGUgYWxsb3dlZA0KPiArICogY29uZmlndXJhdGlvbnMgYW5kIGNvbnN0cmFpbiB0aGVtIGJ5IGZp
bHRlcmluZywgZGlzYWJsaW5nLCBvcg0KPiArICogbGltaXRpbmcgdGhlbSB0byBtYXhpbXVtIGxp
bmsgcGFyYW1ldGVycy4NCj4gKyAqDQo+ICsgKiBMb2NraW5nDQo+ICsgKiAtLS0tLS0tDQo+ICsg
Kg0KPiArICogQWxsIGFjY2Vzc2VzIHRvIHRoaXMgQVBJIG11c3QgYmUgc2VyaWFsaXplZC4gVGhl
IG9ubHkgZXhjZXB0aW9uDQo+ICsgKiBpcyBpbnRlbF9kcF9saW5rX2NhcHNfZ2V0X21heF9saW1p
dHMoKSwgd2hpY2ggYWxsb3cgbG9ja2xlc3MNCj4gKyAqIGxvb2t1cC4gU3VjaCBsb29rdXBzIG1h
eSBvYnNlcnZlIGFuIG91dC1vZi1zeW5jICZzdHJ1Y3QNCj4gKyAqIGludGVsX2RwX2xpbmtfY29u
ZmlnIHR1cGxlLCBpLmUuIGEgcmF0ZSBmcm9tIG9uZSBzdGF0ZSBhbmQgYSBsYW5lDQo+ICsgKiBj
b3VudCBmcm9tIGFub3RoZXIuDQo+ICsgKg0KPiArICogVGhlIEludGVsIGk5MTUveGUgZHJpdmVy
cyBlbnN1cmUgdGhlIGFib3ZlIHNlcmlhbGl6YXRpb24gYnkgaG9sZGluZw0KPiArICogJmRybV9t
b2RlX2NvbmZpZy5jb25uZWN0aW9uX211dGV4IGFuZCwgd2hpbGUgaG9sZGluZyB0aGUgbG9jaywN
Cj4gKyAqIHdhaXRpbmcgZm9yIGFueSBwZW5kaW5nIGFzeW5jaHJvbm91cyBhdG9taWMgY29tbWl0
cy4gVGhpcyBhbHNvIGFsbG93cw0KPiArICogdXNlIG9mIHRoZSBBUEkgZnJvbSB0aGUgdGFpbHMg
b2YgYXN5bmNocm9ub3VzIGF0b21pYyBjb21taXRzLCB3aGljaA0KPiArICogY2Fubm90IGhvbGQg
dGhlIGxvY2suDQo+ICsgKg0KPiArICogSXRlcmF0aW5nIGFuZCByZXN0cmljdGluZyBsaW5rIGNv
bmZpZ3VyYXRpb25zDQo+ICsgKiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0NCj4gKyAqDQo+ICsgKiBUaGUgbGluayBjb25maWd1cmF0aW9uIGl0ZXJhdG9ycyBj
YW4gaXRlcmF0ZSB0aGUgYGBhbGxvd2VkDQo+ICsgKiBjb25maWd1cmF0aW9uc2BgIGR1cmluZyBt
b2Rlc2V0IGNvbmZpZ3VyYXRpb24gc2VsZWN0aW9uIG9yIGxpbmsNCj4gKyAqIHRyYWluaW5nIGZh
bGxiYWNrIGhhbmRsaW5nIGluIGEgY29uZmlndXJhYmxlIG9yZGVyLg0KPiArICoNCj4gKyAqIFRo
ZSBpdGVyYXRpb24gb3JkZXIgY2FuIGRlcGVuZCBvbiBjb25uZWN0b3IgdHlwZSAoZURQLCBEUCBT
U1QsDQo+ICsgKiBEUCBNU1QpIGFuZCBtb2Rlc2V0LXNwZWNpZmljIGNvbmRpdGlvbnMgb3IgZHJp
dmVyIHBvbGljaWVzLCBzdWNoDQo+ICsgKiBhcyBEU0MgdnMuIG5vbi1EU0MgbW9kZXMsIHBvd2Vy
IHNhdmluZyB2cy4gYmV0dGVyIHVzZXIgZXhwZXJpZW5jZSwNCj4gKyAqIG9yIHBvbGljeSBjaGFu
Z2VzIGFmdGVyIGEgbGluayB0cmFpbmluZyBmYWlsdXJlLg0KPiArICoNCj4gKyAqIFRoZSBjb25m
aWd1cmF0aW9ucyBleHBvc2VkIHZpYSB0aGUgaXRlcmF0b3JzIGNhbiBiZSBhZGRpdGlvbmFsbHkN
Cj4gKyAqIGNvbnN0cmFpbmVkIGluIHRoZSBmb2xsb3dpbmcgd2F5czoNCj4gKyAqDQo+ICsgKiAt
IEZpbHRlcmVkIGZvciBhIGdpdmVuIG1vZGVzZXQgYmFzZWQgb24gbW9kZXNldC1zcGVjaWZpYyBj
b25kaXRpb25zLg0KPiArICogICBFeGFtcGxlcyBmb3Igc3VjaCBjb25kaXRpb25zIGluY2x1ZGUg
ZHJpdmVyIHBvbGljaWVzIHByZWZlcnJpbmcNCj4gKyAqICAgcG93ZXIgc2F2aW5nIG9yIGJldHRl
ciB1c2VyIGV4cGVyaWVuY2UsIHBvc3QtbGluayB0cmFpbmluZyBmYWlsdXJlDQo+ICsgKiAgIHBy
ZWZlcmVuY2UgY2hhbmdlcywgb3Igc2luayBhdXRvbWF0ZWQgdGVzdCByZXF1ZXN0cyBsaW1pdGlu
ZyB0aGUNCj4gKyAqICAgdXNhYmxlIGNvbmZpZ3VyYXRpb25zLg0KPiArICoNCj4gKyAqIC0gRGlz
YWJsZWQgcGVybWFuZW50bHkgZm9yIHRoZSBjb25uZWN0ZWQgc2luay4gRXhhbXBsZXMgb2YgcmVh
c29ucw0KPiArICogICB0byBkaXNhYmxlIGEgY29uZmlndXJhdGlvbiBpbmNsdWRlIGEgbGluayB0
cmFpbmluZyBmYWlsdXJlIGZvciBhDQo+ICsgKiAgIGdpdmVuIGNvbmZpZ3VyYXRpb24gb3IgYSBk
cml2ZXIgd29ya2Fyb3VuZCBwcmV2ZW50aW5nIHRoZSB1c2Ugb2YNCj4gKyAqICAgYSBwYXJ0aWN1
bGFyIGNvbmZpZ3VyYXRpb24uDQo+ICsgKg0KPiArICogLSBMaW1pdGVkIHZpYSBhIG1heGltdW0g
bGluayByYXRlIGFuZCBsYW5lIGNvdW50LiBGb3IgZXhhbXBsZSwgYWZ0ZXINCj4gKyAqICAgYSBs
aW5rIHRyYWluaW5nIGZhaWx1cmUsIHN1YnNlcXVlbnQgbW9kZXNldHMgbWF5IGJlIGxpbWl0ZWQg
dG8NCj4gKyAqICAgY29uZmlndXJhdGlvbnMgYXQgb3IgYmVsb3cgdGhlIGZhaWxlZCBwYXJhbWV0
ZXJzLg0KPiArICoNCj4gKyAqICAgVGhpcyBtZWNoYW5pc20gZXhpc3RzIGZvciBiYWNrd2FyZCBj
b21wYXRpYmlsaXR5IG9ubHkuIEV2ZW50dWFsbHksDQo+ICsgKiAgIGl0IHdpbGwgYmUgcmVtb3Zl
ZCBpbiBmYXZvciBvZiByZWx5aW5nIHNvbGVseSBvbiBpbmRpdmlkdWFsbHkNCj4gKyAqICAgZGlz
YWJsZWQgY29uZmlndXJhdGlvbnMsIGFzIGRlc2NyaWJlZCBhYm92ZS4NCj4gKyAqDQo+ICsgKiBU
ZXJtaW5vbG9neQ0KPiArICogLS0tLS0tLS0tLS0NCj4gKyAqDQo+ICsgKiBgYENvbW1vbiBsaW5r
IGNhcGFiaWxpdGllc2BgIChvciBgYGNvbW1vbiBjYXBzYGApIHJlZmVyIHRvIHRoZSBsaW5rDQo+
ICsgKiByYXRlcyBhbmQgbWF4aW11bSBsYW5lIGNvdW50IHN1cHBvcnRlZCBieSBib3RoIHRoZSBz
b3VyY2UgYW5kIHRoZQ0KPiArICogc2luaywgaS5lLiB0aGUgaW50ZXJzZWN0aW9uIG9mIHRoZWly
IHJlc3BlY3RpdmUgY2FwYWJpbGl0aWVzLg0KPiArICoNCj4gKyAqIGBgU3VwcG9ydGVkIGNvbmZp
Z3VyYXRpb25zYGAgYXJlIGFsbCBjb25maWd1cmF0aW9ucyBkZWZpbmVkIGJ5IHRoZQ0KPiArICog
YGBDb21tb24gbGluayBjYXBhYmlsaXRpZXNgYCcgbGluayByYXRlcyBhbmQgbWF4aW11bSBsYW5l
IGNvdW50Lg0KPiArICoNCj4gKyAqIGBgRGlzYWJsZWQgY29uZmlndXJhdGlvbnNgYCBhcmUgYGBT
dXBwb3J0ZWQgY29uZmlndXJhdGlvbnNgYCBkaXNhYmxlZA0KPiArICogdmlhIHRoaXMgQVBJLg0K
PiArICoNCj4gKyAqIGBgRW5hYmxlZCBjb25maWd1cmF0aW9uc2BgIGFyZSBgYFN1cHBvcnRlZCBj
b25maWd1cmF0aW9uc2BgIHRoYXQgYXJlDQo+ICsgKiBub3QgZGlzYWJsZWQuDQo+ICsgKg0KPiAr
ICogYGBGb3JjZWQgY29uZmlndXJhdGlvbnNgYCBhcmUgYGBFbmFibGVkIGNvbmZpZ3VyYXRpb25z
YGAgZm9yY2VkIHZpYQ0KPiArICogZm9yY2VkIGxpbmsgcGFyYW1ldGVyIGRlYnVnZnMgZW50cmll
cy4NCj4gKyAqDQo+ICsgKiBgYEFsbG93ZWQgY29uZmlndXJhdGlvbnNgYCBhcmUgdGhlIGBgRW5h
YmxlZCBjb25maWd1cmF0aW9uc2BgLCBvciBpZg0KPiArICogZm9yY2luZyBpcyBpbiBlZmZlY3Qg
dGhlIGBgRm9yY2VkIGNvbmZpZ3VyYXRpb25zYGAsIGNvbnN0cmFpbmVkIGJ5IGENCj4gKyAqIG1h
eGltdW0gcmF0ZSBhbmQgbGFuZSBjb3VudCBzZXQgdmlhIHRoZSBBUEkuDQo+ICsgKi8NCj4gIHN0
cnVjdCBpbnRlbF9kcF9saW5rX2NhcHMgew0KPiAgCXN0cnVjdCBpbnRlbF9kcCAqZHA7DQo+IA0K
PiAtLQ0KPiAyLjQ5LjENCg0K
