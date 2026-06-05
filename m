Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id J/DAOO2hImoPbQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 12:16:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 591CE6473B2
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 12:16:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hNB3Ssvq;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCFF610E575;
	Fri,  5 Jun 2026 10:16:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DBAC10E569;
 Fri,  5 Jun 2026 10:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780654570; x=1812190570;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=C0LojB/au20MWsBFEbPdnyu6Ejm/anXd4BXbNs+4Ja8=;
 b=hNB3SsvqADvmQkuvVSSxFWXpU4n70GmbI1RXWFpJYU4+mYeI0VhHVp4+
 0jj9TUJc6ERm7hIUHFzB9xw6gPaUWsVsX3bpQMeZSbG6qugtlEQI4P0oP
 L2wONf5Ps07mUqcfKp40Q4Dny8G0ZP/D9EmMHQ85CYf1d1WNG9uJJSeBP
 axcDofSPYb/dp9LUDeRjljZCYX/B/aVqlS0/omVZykDRB3x+E5io8AlRx
 TxnY94Na4esk9Yngs54ASigDVFreyjVtpqHz5JZw5zm8U7aMdLe8Xyw6K
 vC86SXEO3sNizILdQaBU8x2ID8xKFddjbeoODn5XQLqOWss5KH1BaJR8k A==;
X-CSE-ConnectionGUID: 9rW+qWkEShae+kC12J+FOA==
X-CSE-MsgGUID: olz2TId4SXiqLN2IndpKSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="92595774"
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="92595774"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 03:16:09 -0700
X-CSE-ConnectionGUID: 3snP5jjPRM+GNCKif6BwhQ==
X-CSE-MsgGUID: Q0tni6ZySNetPLEyIK4e0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="241829980"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 03:16:09 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 03:16:09 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 5 Jun 2026 03:16:09 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.29) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 03:16:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y5J61R5GVjdaQfATHYzjfn5yXbpBuguyGAYrCvrqWv27940D7P1NfTGQe2Mi1CirbLt39riaKG1EQ21Ym+aIdHp7uqjnZb9SJQhcuDs8fkzUaA1L1JnxmFxEhDA/PaQkUHyp2txT8JjkmD35BjAguPoCrGHxhVqGOyPUv0zThXb5K/bSkUhAAAMh3x4VENMIfPO7Bgj66Ih/k9A0C3vAXC6JDSiupRsHOlPYWEe0L0elJP90T+q+DuGCvjp/y8DOw7syYYER401qzGKsDqdU6Eu2hdmpL8U/EoUClM1rMtRY50i7YpHKwkpRU3sDcvDLO4keGEjmi29D1bbKwVI8gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C0LojB/au20MWsBFEbPdnyu6Ejm/anXd4BXbNs+4Ja8=;
 b=KSKwLLs9jlqMsoTL4PXWhp6/DrSKOgtWnW/6dNQCUTErjb6elSTAZ5OFIJuBKgOKkpCok5rrJPIAsxSe8LOEw2PySLZnlqWKHBiv99pjEcknvVTfTNKplJ3+GzFpAJ0hzN8U+JeK02ciAODkonNIq0kefKcWXx8KGCvZkcldAt+ibI7cAoJ9utOqxCOCNxF2m+kJ/38mrcB1vFnZjzzJKDOvyYzJhRiqOBoOxp+fUUaHjZHA867fiAiLe6fJHcb5qf8OUgK3ShiNZZJ/tsoQimyh3JK/C3NBw42J9J4D3LgMjPvxqEAcjCl+29FKhEUQSm2WBm0eKGLLGlEz2yGRng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by MW4PR11MB5773.namprd11.prod.outlook.com
 (2603:10b6:303:180::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Fri, 5 Jun 2026
 10:16:03 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0092.007; Fri, 5 Jun 2026
 10:16:02 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 02/22] drm/i915/dp_link_training: Factor out link
 training state reset helper
Thread-Topic: [PATCH v2 02/22] drm/i915/dp_link_training: Factor out link
 training state reset helper
Thread-Index: AQHc8aqS6o0z1qPtDUKeOlVwWdXIJbYvxRmA
Date: Fri, 5 Jun 2026 10:16:02 +0000
Message-ID: <DS4PPF69154114FFB55778C4BA0870F27D8EF112@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
 <20260601093836.3057345-3-imre.deak@intel.com>
In-Reply-To: <20260601093836.3057345-3-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|MW4PR11MB5773:EE_
x-ms-office365-filtering-correlation-id: aa6f273b-43a0-45d3-d0ba-08dec2eb7295
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|4143699003|11063799006|56012099006|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: ALbsv6iDpR7y8HaaV3bvQw/J4/1FLdly6yYMsZYDS05ZQ9fmPPP41iAqq7dnHfefPOh4SVSRzRdPg78V91TpTpmq5+TYixr3W+q7yfljofNT0DeD8t61R4VWzEPKmNs5otEosNN9sPgDe+IRkgNlFLfq3z10Vc2XN28+RcAJAfdTu3ZJ3ZqwhTgdqdrBPNA4yVmVFG+6DF+Yoc10BPP9+6glYMs1KV07BHsM3Uc+Aczxy8OknNGgeLPTKOzmxtOmODdfrRyrmkJPYGgcSVqXx6MC6wUyJKw0YGBzBU3+dcVaqWGccVbvLdZpIzD8P2SGlIxUEYgy+MCO3j4XjRKgvt+4n9K+rLcYSGSuM+uBtallJ5JfL7oaroQmzRUW0mBuFQokst7cg+Y3HwqnMPwxxwCWUmUF4JsPupG6pkD9T2rS/14Z3iZSn1bIqI4EGq+9/Wya6yrrYx//UBflwcZ3NMVrRX8PlpmYsfEVQL+UBiH2Hy6OGq7B+KZ88G7nEm0qS2OzNmd8n36Mm0DXEnmp0jHQWOVQf0Itl0fM2aeuy37IvSWKMw9h+XAi8MzF8Vm0eKE+umHDra5PI4ID3KCZnfddFbfAXzQxPgHdlIAQUueeywgz9UeKAsvLozk0cyd9Ssy7bx009uZ+ZtV+yWXS2he/DoFxKO0D9aR6oPvcoA9iBodDO7+L5UuqzfwnFiThdMoDc1ee78/QYTfwYnIvz3Bp4R71VapjqF8J6eN+VrLKFsam0tkePx7a+EGrUslm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(4143699003)(11063799006)(56012099006)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UHQ2NFg2b0g0TTNOY09mSmpiOXlZNWQyRlF6T0N0UWNEem5qdUZwR1JibFE5?=
 =?utf-8?B?QjArQ3FrbmdlUk9UZXJGTzFnN09lK0VpSkd1enNJZmlLQVNPTWtjb1dHMWtx?=
 =?utf-8?B?SDl0Z2xiM1JnUjR4dnVOL3RxaTlXaHljZUNlWVk1T3JsT3JrdGk0b2Z6WWZ2?=
 =?utf-8?B?cFV1RGpjKzhXMlN3UGZocnA4Mk5nYXYremszajRJMzJGbzNXWkRKSGpoTExu?=
 =?utf-8?B?cXdwVXdIekRLalE2a3B2SDNlRzJaYnlOWEFmU0xoYmpid1M2cnV1bEliWTln?=
 =?utf-8?B?cFU3Z0owaktMTy9MSUpOR1VHSU5BQktXUkwvYTJLVEpkc0VnL3dudGxTdC85?=
 =?utf-8?B?Vk94b3RSQ3FRdWpOMlIxMHMxbmRJVWlFamVCWEFrM3VVcTRFQUlBZGRsUW5L?=
 =?utf-8?B?T0tESU1JMVAydnJPQVIrYWRoSnRrUnV4L2IzSWJwT1JIUkRZUlFtWWx6Smx0?=
 =?utf-8?B?ZTRMYW1tUE1PSi9iYUhHWmZaemI1MlQxMGlCRjh3NVZqZDAvcElxT004TUZ6?=
 =?utf-8?B?THRGNjlld0hmanl4RmFtTHVCakExQVBpV2ZQdkdWTER2ZFhkQitCTHZSWG41?=
 =?utf-8?B?YURyZlFYR1lpaWVLTk5YRnY1R3RPYzNvYkQ1MWZzQ3VJWFd3QW9GdEJETGs1?=
 =?utf-8?B?MjhtSmlVYjRrbTNPK01LZWdiQnJpUE5qWnRrRmx2cTFKVHZwM1R0ZXBXbHRU?=
 =?utf-8?B?K2EvSlhCSjYxSVArenpNck5mQlNXdGxFc0FRSmZBRnJWZmJ1QTF1Y2RZSGhH?=
 =?utf-8?B?Wlo3RFhzWXp6LzF6VzZ2MHN4TS9BL3ROTlpML3VSTXlZaVExektINm9kN1ky?=
 =?utf-8?B?TTJTQWhydzdtVEt0dm1uNkFrb2JoL3VqUXpRM0dFUUZsREthd3NyMitPc2lC?=
 =?utf-8?B?ZVNDVzJTVXlsalhsa3dZTSswZFBhdjNlWGs3NEVoQXZtS1ZuSmxsdjhqVzhw?=
 =?utf-8?B?bERnb2lCMjViT1VOQWI0YUZLWGRab1YzZ2NCdlV0L1lOT0JlZ1oyRW1RRXN1?=
 =?utf-8?B?RC9WdmxGcjJnQzRCL3gwRmFrLzRTUDRwRVdEUE1XT2I4c1JFaDh1K2F2UlNQ?=
 =?utf-8?B?OXBpRFo1ZVNlNmNOZDMyZWEyRFpWSkJ5UUF0N0h2aXJvckNLVlVKc2Q1SzEr?=
 =?utf-8?B?SlNBY0dEWDhtckw5ZmJKY21UaGhTVEY5TkVaejQxeTJNQnl2L0h2a0FXWm9H?=
 =?utf-8?B?Z01vK3dxZEQxVkRuNVl2ZFVLWlBiN2ZRNURwSnQ2WlRxUUdCVWFRd2NTVGpi?=
 =?utf-8?B?TDJGU1lqUGswUWJ3OUVNT3JrSE56Y1NXRTBaOTZ1UjdvR1ZhZkJ4cHcwUzA3?=
 =?utf-8?B?MzVDaFJHZzFnM2dtc2R4bkxxaGpteVFiZE51bmNScExwOCsyaitaY0dxK1Ft?=
 =?utf-8?B?Y2xhakFYRm8xc08yY0V4ODNjR2laMFUxVTVxNEQxU1pGMm1FZ3dOWjFWRmcz?=
 =?utf-8?B?V2pZS1c3ZzQ1Si8vMWZYQmpremRJWERVZ2ZENEZPY2JVK212eTNlR05GU3I4?=
 =?utf-8?B?cWJtTkhFUjBPa2RJWTErNXJNV1E0ZzhvcElXRjBRTit1ZzZhN3BrVEFJTnVq?=
 =?utf-8?B?V05SSm0yTnlKQjJCZjVSNFo0MFc5YktYTUg1V3RvaXBqVnFsY1U5dy9Felh4?=
 =?utf-8?B?RkJLRnA5Nk1YdUpWTzZtS082S3ZaVzl2Z3VNVTRIZmpKaGUyWkluaG52eDBO?=
 =?utf-8?B?SWhWNHQwd2tyL3h2WkY2MTNZQU5wd2NQUjZYRTdSVnVTOFBLYXEvdlVZbTlP?=
 =?utf-8?B?M0ZIQkdlMG9wY2NDZVBHWW10YUpDdkFjVUJ2RWt4YU4vYUF5bEYvNDJ6N2ZK?=
 =?utf-8?B?NVpNZWtDUG9FaUpseDZpaktBZWo1cm9aOEkxMGhUNmdnSXduMDdyUXVwdXpk?=
 =?utf-8?B?SFJ0bXhPVXluaXhCaHk2ZEtnL2ZiS3llS21LNzFkQ0ZKM3g2dWVhTWRJVVVt?=
 =?utf-8?B?YTNGbEVJWVB1UFlzSmZoRmZPbVpxNERmN3c3bXhWeGdkMk9GSFNFWmx2NXRC?=
 =?utf-8?B?aWZEb1JmYjVqWGxRR3BjQlFleUZYa29CaGVOY0VHNXJUNll4cWxBeXg5RXZ4?=
 =?utf-8?B?MmNpTCt4ejVZaXMzZHhZSEJ1dmhwbGROVlFqbmRIZ0htMnFyNC9JWHFNNzVC?=
 =?utf-8?B?Q2I5dDdkRmZkcjFLTnROVGFBcithUlRBdFJhdGJwT29sMFh2MlR6Q0ZwVHdw?=
 =?utf-8?B?U3BhMmFRRjhkNXhzckpESlh3VXFyay8xQW4yU3ZUenJsaUYxNmZ3NDlacmhv?=
 =?utf-8?B?NTkxZlp6enJSM1dtd3g3dk9ib3pTTVYvTDZZRU9UbnlrUDhIVTZYSDE2akpJ?=
 =?utf-8?Q?tNMhCmowvLwRAYqPRo?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dcN3q13Ag8qYGGWhxAvDWzfkd6RdfzOBSRwYsRs/KomX5DBgMK9xVcignb4WyF9OL7FYmx7S5FI7HKSzsVO73LBQDXMccQMaggaIgMvetjOu5IldoetJhKBtpjp+Q/jppv5HwAikSiSJx/Ud2cUA8ncrbsgXWHk08KS1cRws5J3EjweQ+FiW11E9T8+OA7kAiq14hNkTZlJcyfbYbSaR93tHCtlm8cKoxxKL/ZQORDlWMgyy1DeWkbRTpwz79b0bS0Kkdr0vrIhmbFtjKphGP5HCjoN8TtfHpCGtFW1Dpzjqr5V2bhm17147OX8+OIDmsTguXwcgRkKs/AJnG0sKvw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa6f273b-43a0-45d3-d0ba-08dec2eb7295
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2026 10:16:02.8032 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4yIcEDRudfrwYa4MHvssh7s2LOM3iADOwDjcurnR/VwnCRRtxwTadnwS6MMry1eOK8poVnoxfuf/fZ4E6u7PxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5773
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DS4PPF69154114F.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email];
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
X-Rspamd-Queue-Id: 591CE6473B2

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBNb25kYXksIDEgSnVuZSAyMDI2IDEyLjM4DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVj
dDogW1BBVENIIHYyIDAyLzIyXSBkcm0vaTkxNS9kcF9saW5rX3RyYWluaW5nOiBGYWN0b3Igb3V0
IGxpbmsgdHJhaW5pbmcgc3RhdGUgcmVzZXQgaGVscGVyDQo+IA0KPiBGYWN0b3Igb3V0IHRoZSBs
aW5rIHRyYWluaW5nIHN0YXRlIHJlc2V0IGludG8gYSBoZWxwZXIgaW4gaW50ZWxfZHBfbGlua190
cmFpbmluZy5jIHRvIHByZXBhcmUgZm9yIGlzb2xhdGluZyB0aGUgbGluayB0cmFpbmluZyBzdGF0
ZSBmcm9tDQo+IHRoZSBnZW5lcmljIERQIGNvZGUuDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBL
YWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERl
YWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jICAgICAgICAgICAgICAgfCAzICstLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgfCA4ICsrKysrKysrICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuaCB8IDIN
Cj4gKysNCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXgg
N2E5MTU3ODQ5MTU5Yi4uMWJiYmZmMDczM2UzNSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBAQCAtMzc3NSw4ICszNzc1LDcgQEAgdm9pZCBpbnRlbF9k
cF9yZXNldF9saW5rX3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCWludGVs
X2RwLT5saW5rLm1heF9yYXRlID0gaW50ZWxfZHBfbWF4X2NvbW1vbl9yYXRlKGludGVsX2RwKTsN
Cj4gIAlpbnRlbF9kcC0+bGluay5tc3RfcHJvYmVkX2xhbmVfY291bnQgPSAwOw0KPiAgCWludGVs
X2RwLT5saW5rLm1zdF9wcm9iZWRfcmF0ZSA9IDA7DQo+IC0JaW50ZWxfZHAtPmxpbmsucmV0cmFp
bl9kaXNhYmxlZCA9IGZhbHNlOw0KPiAtCWludGVsX2RwLT5saW5rLnNlcV90cmFpbl9mYWlsdXJl
cyA9IDA7DQo+ICsJaW50ZWxfZHBfbGlua190cmFpbmluZ19yZXNldChpbnRlbF9kcC0+bGluay50
cmFpbmluZyk7DQo+ICB9DQo+IA0KPiAgLyogRW5hYmxlIGJhY2tsaWdodCBQV00gYW5kIGJhY2ts
aWdodCBQUCBjb250cm9sLiAqLyBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiBpbmRleCA5YWIxOGNjODA2Mzk3Li5l
Yjc1ODE5YTg1YzA1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiBAQCAtMjIzOCw2ICsyMjM4LDE0IEBA
IHZvaWQgaW50ZWxfZHBfbGlua190cmFpbmluZ19kZWJ1Z2ZzX2FkZChzdHJ1Y3QgaW50ZWxfY29u
bmVjdG9yICpjb25uZWN0b3IpDQo+ICAJCQkgICAgY29ubmVjdG9yLCAmaTkxNV9kcF9saW5rX3Jl
dHJhaW5fZGlzYWJsZWRfZm9wcyk7DQo+ICB9DQo+IA0KPiArdm9pZCBpbnRlbF9kcF9saW5rX3Ry
YWluaW5nX3Jlc2V0KHN0cnVjdCBpbnRlbF9kcF9saW5rX3RyYWluaW5nDQo+ICsqbGlua190cmFp
bmluZykgew0KPiArCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBsaW5rX3RyYWluaW5nLT5k
cDsNCj4gKw0KPiArCWludGVsX2RwLT5saW5rLnJldHJhaW5fZGlzYWJsZWQgPSBmYWxzZTsNCj4g
KwlpbnRlbF9kcC0+bGluay5zZXFfdHJhaW5fZmFpbHVyZXMgPSAwOyB9DQo+ICsNCj4gIHN0cnVj
dCBpbnRlbF9kcF9saW5rX3RyYWluaW5nICppbnRlbF9kcF9saW5rX3RyYWluaW5nX2luaXQoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCkgIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfZHBfbGlua190cmFp
bmluZyAqbGlua190cmFpbmluZzsgZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmgNCj4gaW5kZXggZWVmYzZkZjhiYzg1My4u
YzlhMWNhNDU1N2Y0NiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmgNCj4gQEAgLTU3LDYgKzU3LDggQEAgdm9p
ZCBpbnRlbF9kcF8xMjhiMTMyYl9zZHBfY3JjMTYoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwN
Cj4gDQo+ICB2b2lkIGludGVsX2RwX2xpbmtfdHJhaW5pbmdfZGVidWdmc19hZGQoc3RydWN0IGlu
dGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKTsNCj4gDQo+ICt2b2lkIGludGVsX2RwX2xpbmtfdHJh
aW5pbmdfcmVzZXQoc3RydWN0IGludGVsX2RwX2xpbmtfdHJhaW5pbmcNCj4gKypsaW5rX3RyYWlu
aW5nKTsNCj4gKw0KPiAgc3RydWN0IGludGVsX2RwX2xpbmtfdHJhaW5pbmcgKmludGVsX2RwX2xp
bmtfdHJhaW5pbmdfaW5pdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsgIHZvaWQgaW50ZWxf
ZHBfbGlua190cmFpbmluZ19jbGVhbnVwKHN0cnVjdA0KPiBpbnRlbF9kcF9saW5rX3RyYWluaW5n
ICpsaW5rX3RyYWluaW5nKTsNCj4gDQo+IC0tDQo+IDIuNDkuMQ0KDQo=
