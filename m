Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CFXiOCim4WknwQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 05:16:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF0A41680F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 05:16:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BB5F10E27B;
	Fri, 17 Apr 2026 03:16:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VOuF1h8K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BF3910E27B;
 Fri, 17 Apr 2026 03:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776395813; x=1807931813;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8ip7VbWR3kJ1R3JaHzaSRIukJlAvisMQLaPxjqq5AwQ=;
 b=VOuF1h8KjWkG/PlVAY1EXT4PN7hYPXQNmrDq769hBVV8lQruFPqkfOWW
 mK8p1ZXmOC588//4lWJf1wM+VRw9non3voY491PjT4cspa8cmjOkJQEiL
 LFbsQ3w/bqh5X6HSDgCNUd7C3v92W0WuOEY/4sOo7nKq+qEdFj3XI5Ioe
 RLFgkvSb/MKSEuE3Sz9DwNw8gZj/fxAuzK17Hm8ZO4HSTJxV5ykOwskfZ
 w26zNpk7jEGORuTyW7Vc6eEFrTIUGSjPqsLF+euPvtewTv1y7/KdoQyc6
 WsN+b1LYgR+nsTKW1syxFoKayCqKS+WHgquxz8BdGK4fGATV9XutiOceG Q==;
X-CSE-ConnectionGUID: Rijb2W/XRkiMJc5fVvynpA==
X-CSE-MsgGUID: s7R8Bo2RS1m2HIU0D0R1jg==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="79996551"
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="79996551"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 20:16:53 -0700
X-CSE-ConnectionGUID: o9fpwh67RLeeYYqLrTNxJQ==
X-CSE-MsgGUID: qi/cPyM4QU23TMQAXmM8Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="261317322"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 20:16:53 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 20:16:52 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 16 Apr 2026 20:16:52 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.25) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 20:16:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JluwaE4Vu/UnB3bYvqec4frjK99GeC+jZtZBcY4GHSxCCUdQYagYMbOy3Q/qiqUPU0lj6YpJVc6mLW3abAZHXEF7ksT2LM3AKRc1ZUBUHQwNGWv7IGK74bZdhcdwa+8Uq4+69DgqSi/PCRFDNNFhb3GzlYO6UgwA7CXfTdbf4EA1l3yXWfqPKFIN3t6We+a2rL4RNiSVCMNwTi9DTrWG9jxEP9g3X1G00zsAiSrCakqRT8aQbilZHVFUmp5CSQtFFa4qDsJQCN6qKXqevY0Mdn2ggthjtJDM3r+Jm+Nj2Nzmoh1/DemLt8w8ugodItiQ3n1+JgseGqNC94CSye5aqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8ip7VbWR3kJ1R3JaHzaSRIukJlAvisMQLaPxjqq5AwQ=;
 b=PXMhmQm4NASDhpNVKTML4WDMxfbLJovgcc0dy2psP2ZPXyIUxzBpLLilWiHjuOMg/Pjngq7EaQ3j40ghlXStMiAQG4uZtfZKMUTYdJJPArU/SHeFSQNbJoYDH/Iam0P1cwUhjI8dabGrmDyTmJ6xbMDoSTuO7vimHIE+2lfSn8DfLDFRHfDF7ee/f0xJnlydyv6rdIeifkUZMTUjQdId8ATreoGOarHqAx6UGIxJIdUh6EFWBcA5HMGw2xF/Rh81gD/e5M/IO07F0b8wLcEmKuW90korIHPmlUPxJqytK8zzjblPwGmWF0QgOrgQv4sGOYlhPsehtao8G60jZVbLOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SN7PR11MB7512.namprd11.prod.outlook.com
 (2603:10b6:806:345::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.25; Fri, 17 Apr
 2026 03:16:44 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9769.020; Fri, 17 Apr 2026
 03:16:44 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Grzelak, Michal"
 <michal.grzelak@intel.com>
Subject: RE: [PATCH v2 18/32] drm/i915/buf_trans: compute LT's VS/PE-O index
Thread-Topic: [PATCH v2 18/32] drm/i915/buf_trans: compute LT's VS/PE-O index
Thread-Index: AQHczTTBV8MqWRJurUiCy5ZzYgFm6bXildsw
Date: Fri, 17 Apr 2026 03:16:43 +0000
Message-ID: <DM3PPF208195D8D6D8B4C8150ACA984DB2FE3202@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260415234639.3577774-1-michal.grzelak@intel.com>
 <20260415234639.3577774-19-michal.grzelak@intel.com>
In-Reply-To: <20260415234639.3577774-19-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SN7PR11MB7512:EE_
x-ms-office365-filtering-correlation-id: a6220b8c-58e4-428b-fd94-08de9c2fc08e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: TozjaP6eiki8U5YOu+nQ7dIAKNKawKnl1egAXWLxoQJzNbqctH7L59be56+lFZEOQ74snF6Wzm5B4ddjbVKfx7SEannEXI9kafLBQqxnC8EH8/37CxrVFMeMFQUU88mXOhPtp8HC0qzibOngAzUoCgBkykSgYgH6N8G6L4l5ROXuoyoZvjBUX+1VxmEq3qSu2d8LWu1HhesnqNGW6MxC4hCCrJ2VEt3G/QSqznuWumEb3JFU2cjfyUVBBFwmYjCMclJ4kF6mmT1N9vKZbBH6jVm7ry53femFt2CDn2aXti2qZKtOJulqCwQnFmkFNd+LpZRfIr7zwg48NZW1hhnoppOsaZvLzrCD0Pf5PNxU5MABe8Dzq3JLOCTDJ8AspJWVzQ1ExFbU8Aq3nD+U19dJawVNBzbj6Y9cE38zYy+VkqttSL3N8uHeQLkuaUKECRi1L4UCU4QXCTADPysm70KyHv7GODeUZLhzQfZRZpYO70yrvtkUbQ4su39uF+z3MOw4Slt14ouT6v1IkFT0h7ROoYepFBrbsaOoH7lBTbnrdboggsxm71sAAfaPiZzs++7BRryhpGoMPPS12cNb17b3fjuokuP3pa+w7NIIp5wdl4fgP5Vo21M7w7UezRH+rnsBuUd8plSFqLqRm69hmyJv0gD8LeoRfOVNdIccqzp/xJfoKPraGCotm4WnhOQoHsE9noVq/9LGNwk4UzpZ9J1mMTpbaDZb34riSyLgaj+zLu2fmGwfwfCUfMA2ueDUBp8ai6GR3zZMFj/PJZoXOuQEtrs9RKV58wCyhWmuTk9x/Iw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cmpWR0lPK2ZXSUhGTUlVK2MxR2NzemxvaFpqNGFTU0dZd294VkZKS0l6QVdn?=
 =?utf-8?B?NnhSZTFjQUc4TlpVcU5BUnB0YXM0U0YwbHliYkExZ1VyQ0YvbjdiS0lwZVdO?=
 =?utf-8?B?amV3MkdrVzRBOFJKS3hGdFdUbUNEZnNEenlkaDYrUm9FcVNLTWNQdVZSdjJh?=
 =?utf-8?B?eDZjUkllSzRicCs0Z1k3TnB6OXQvQktzTkhaRkxjZURsV0tBcVRJSWx2Q1c4?=
 =?utf-8?B?aWc0anJVZG5BVmMzUW41ZGhQbHliRzMveThCLzF4Ni9WbjZrcDJEWncwKzhQ?=
 =?utf-8?B?eThjTFRBYk10K1pIUU8ybEZiN3Ftc25DZUhKb082d3RId3pPWFViRjBnUWFG?=
 =?utf-8?B?QTNrcUYrbCtVZ0Z5aTM4bDBkOFh4WGFBQk5KaTRsbHR6L2hjcFVNU004Qkt2?=
 =?utf-8?B?KzlITUJvaGVHalJxaldxRTRWbDlvUS9ySit2cTZrejVpK1NYeUhDNHNydDFp?=
 =?utf-8?B?OGY4KzJrQ3RrSEk0TFNyRGFzNUNXZGZpYTdaUWV2OFF1dFBQaWtkNCs0ai9F?=
 =?utf-8?B?ZXdiTzhwbzliRW5HV3Q0S3c0QzN0eEljczVqTjkvMTM0WHJNL3NJRzl5Vkhz?=
 =?utf-8?B?UERmZUxLeFY0cFVyeFZxT0RYclNIcEg2dUZ1cGhZL21EQ2Npb3B2Y1k2WUZM?=
 =?utf-8?B?M0k5VVVldTFITU9NSlNEUEd4T3E4djkraENldXJabHFqVFRRam1nRnUvaG9M?=
 =?utf-8?B?eFZFc2JSaWRXbk5aaHN3Y3g4MHdtREZxbitkRGlhUTJrQ3Z2TWx6YnZ2SVlw?=
 =?utf-8?B?NDlmRVAyek1WbFBYRlUzUCt4ZE1HdlkvRVRHUEtPdjRlUndPNkRENDMyZmFa?=
 =?utf-8?B?MXdTZGRCaTJYblVHc1ZmSU9uRS9EaC8xYTQyTW5iRVVRNW1MTm1RMFJ1U2xO?=
 =?utf-8?B?elR3cFBlQXRodENWK0NCL0lhOUgzV2RxeWFDT0diRXFwbFBKeE1kZEVldmxQ?=
 =?utf-8?B?ZTFKc1IwMnVlZ1lmQWxjUjU3TjB3cWZkbWVJaURGRTNIcTZxU1YyM3ZZN2dr?=
 =?utf-8?B?eDlTYWxHTmRyRmttbWx5Y29hMHFBYTB3b1d5RUl3UVpIL2xhdTFtS2FuMmxL?=
 =?utf-8?B?K0QyQUR3bUpjVSsyamdSb045ZldaNDdxcHV3ZHprU0lPWi95RlBocjUwZnVY?=
 =?utf-8?B?cmZIdU9jRVhQNzRMaTdBNnR6ZllRdTNYSjNqUGJPUjJ0N0ZZTDdRQm5UUzll?=
 =?utf-8?B?TUFZdThHK1VPK2NOOFNaY0FqZ1dLUVZUNHpnWHQwUXlCMTJRNkdHeTBVaVd3?=
 =?utf-8?B?SUgrcUFRQ2pWZzJjZ3A2YjNpUXJVN2RtT0tTc0FpR0IvcnBsTC81NkNlQjQr?=
 =?utf-8?B?RWk2L0ZvOFJxVmhOYi82LzhpazMwM2RDTVNuSHZKakxZeEVtb1YxWGtOKzlo?=
 =?utf-8?B?cUhldkRhdDFXS2dxcVJIY1ltZFNDbldhRnViRjBiNWhhbDdEdjkrajMrc2x1?=
 =?utf-8?B?L3ZMUVdIT1NsSFVhNllhMkowcTJxM3UxclJ5K2xjZFZhbTA5QVlnbjMrbmcy?=
 =?utf-8?B?cE5yTHgzVWRZM2pOdkhuWnEzMnJnWXhXakpJcW12dnBWZHdNUVcwb0x1NmFk?=
 =?utf-8?B?ZjJkQ2dQRS9ZYTJrazlUc0Z6NEtHdExrMkdUVzRFamtWcjR0VFA5cDJFeDVx?=
 =?utf-8?B?RU53QzRNbVpjUUlZNFBxdGRqRlVrYmFBcCtxY3AweHpKbWlqZGdtb0JBUDU5?=
 =?utf-8?B?aFdXZ1ZzK1lwZFVzTStKZzRMNWxVWlBuQ2N5NllvdEg2eXY3RVRTZTVVS0Vj?=
 =?utf-8?B?R0tMVFRvMExrelIvcldYbmErTGxXTjRQWTR5K0h4WDN4cHdUSGF0ZUdFQnlx?=
 =?utf-8?B?OVFacU5vd09rbksvY0luUzQvTU9nR3YrR3FXM0ZYcDJoTmJsYnMyY2V0RXFW?=
 =?utf-8?B?N3AyS1NJd1VLZzN3NG8rT0pIdkFxVDcyd2I1ck5pVWs2aHNVSHp5ZkJ1MGZk?=
 =?utf-8?B?cFFTdDA4N3pIc0tQdzdyWnVMNW1FU3FvMEQ3akVkc1NCQ3dVNjArK1RKZkVN?=
 =?utf-8?B?TUY0VTFCMlg3R1hHaHhMRm1qOXJ2c2c2bGNIMm9kMGRlanRpYWpmVzUvSkxN?=
 =?utf-8?B?YkRxZmE4aFZGUDU0a09obVFUMnhSUllhN09YbFE0dVQxRWozQkZ0V0ZYV2ZJ?=
 =?utf-8?B?Mlk0eVUrWTk5elFyUTI2anVLRytnL3FJTzZtQXArQmJ2cW9XdDhRK0RLNEtT?=
 =?utf-8?B?NEM4UjRlTExtSTBPZ0NtNWdjT29RSUkyQXhPWTIxQndJd2xFZWdnTjhqdSti?=
 =?utf-8?B?eUVXOVFFK0MyUmxCaWVkUlk4UGl4SGs1bVc4Q0dabUlGWmErN2JYeUdsOGpT?=
 =?utf-8?B?ZEhKWXNMWE8wQjY0Rjdhb0ZxQ3JFRlhOb3RGcnRuUzR2Z0hGeHZ0Zz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: PFRP8nIFzSDOu4JLWeAVUHTaZb6PU8JA4uTYmBBjzIsNhdh4dFTUBqqPqatx5jvn6v9RTVjNcQypv4R+L/e+fBt/3KpwLnSN4Uk9M7bQ988RcppEDJeinwBOtmdGGE0tM22TDD9HtGspcqWTSU8C5Jk9iKI/YfMYQ0KHaOY8UplspSEeL3xAraFQYCaUvDtlvbnoLhy5XI9YXUHFi4yTpHAKeTA7dw9hZYyf/pj9yRRpD8VGfcMsuRT1ON5F+54WirzJGYpfsvfmsCt2YhGsL4gW9tynDBeF4II5nMLtiBqCUgK1iM/IN7008WgNFo76MBek3WWTM4wpcNqvHfSWGw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6220b8c-58e4-428b-fd94-08de9c2fc08e
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2026 03:16:43.9987 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eTBiJWmoec7yLVbhNE1Fg+a+hoPbf96vb71l2sKlrinIAPIG3RLeHh8HFs0F9jBERzsWNDM/ED4F+EMO2YoOxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7512
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: ECF0A41680F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjIgMTgvMzJdIGRybS9pOTE1L2J1Zl90cmFuczogY29tcHV0ZSBM
VCdzIFZTL1BFLU8gaW5kZXgNCj4gDQo+IENvbXB1dGUgdGhlIG1vc3QgYXBwcm9wcmlhdGUgVlMv
UEUtTyBpbmRleCBmb3IgTFQgYmFzaW5nIG9uIGhpZ2hlc3QgYXZhaWxhYmxlDQo+IERQIG1vZGUu
DQo+IA0KPiBVc2UgNnRoIHRhYmxlIGlmIGVuY29kZXIgc3VwcG9ydHMgRFAgMi4wIG9yIGhpZ2hl
ci4gT3RoZXJ3aXNlIHVzZSA1dGggdGFibGUgZm9yDQo+IERQLg0KPiANCj4gV2FybiBpZiBlbmNv
ZGVyIGRvZXMgbm90IHN1cHBvcnQgRFAuIEluIHRoYXQgY2FzZSBmYWxsYmFjayB0byB1c2luZyBk
ZWZhdWx0DQo+IFZTL1BFIHRhYmxlcy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhxYIgR3J6
ZWxhayA8bWljaGFsLmdyemVsYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gIC4uLi9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuYyAgICB8IDQ0ICsrKysrKysrKysrKysrKystLS0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAzOSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1
Zl90cmFucy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVm
X3RyYW5zLmMNCj4gaW5kZXggOTU1ZDY0YjJlOWI2Ny4uNjJiZDkxZTY0ZjU3NCAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5z
LmMNCj4gQEAgLTE3ODcsOSArMTc4NywzMyBAQCB4ZTNwbHBkX2dldF9sdF9idWZfdHJhbnMoc3Ry
dWN0IGludGVsX2VuY29kZXINCj4gKmVuY29kZXIsICB9DQo+IA0KPiAgc3RhdGljIGludA0KPiAt
dnNwZW9fY29tcHV0ZV9pbmRleChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikNCj4gK2x0
X2NvbXB1dGVfaW5kZXgoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
DQo+ICB7DQo+IC0JZHJtX2RiZ19rbXModG9faW50ZWxfZGlzcGxheShlbmNvZGVyKS0+ZHJtLCAi
VlMvUEUtTyB1bnN1cHBvcnRlZCwNCj4gdXNpbmcgZGVmYXVsdCBWUy9QRSB0YWJsZXMiKTsNCj4g
KwlpZiAoaW50ZWxfY3J0Y19oYXNfZHBfZW5jb2RlcihjcnRjX3N0YXRlKSkgew0KPiArCQlpZiAo
aW50ZWxfZHBfaXNfdWhicihjcnRjX3N0YXRlKSkNCj4gKwkJCXJldHVybiA1Ow0KPiArCQllbHNl
DQo+ICsJCQlyZXR1cm4gNDsNCj4gKwl9DQo+ICsNCj4gKwlkcm1fV0FSTih0b19pbnRlbF9kaXNw
bGF5KGNydGNfc3RhdGUpLT5kcm0sIDEsDQo+ICsJCSAibm9uLURQICglZCkgZW5jb2RlciBhc2tz
IHRvIGNvbXB1dGUgVlMvUEUtTyBpbmRleFxuIiwNCj4gKwkJIGNydGNfc3RhdGUtPm91dHB1dF90
eXBlcyk7DQo+ICsNCj4gKwlyZXR1cm4gLTE7DQoNClJldHVybiBhIGFwcHJvcHJpYXRlIGVycm9y
IGNvZGUgLUVJTlZBTCBvciBzb21ldGhpbmcgZWxzZSBwZXJoYXBzLiBJIGFtIGludGVyZXN0ZWQg
aW4gdGhpcyBwYXRjaCBzZXJpZXMgYW5kIHdpbGwgZ28gZGVlcGVyIGFuZCByZXZpZXcgaXQgbGF0
ZXIgOiAoIGp1c3Qgbm90IGdldHRpbmcgdGhlIHRpbWUgYnV0IHdoZW4gZ29pbmcgdGhyb3VnaCB0
aGUgcGF0Y2ggc2VyaWVzIEkgc2F3IGEgbG90IG9mIHJldHVybiAtMSB3aGljaCBuZWVkIHRvIGJl
IGZpeGVkIGF0IGEgbG90IG9mIHBsYWNlcyBpbiB0aGlzIHBhdGNoIHNlcmllcy4NCg0KPiArfQ0K
PiArDQo+ICtzdGF0aWMgaW50DQo+ICt2c3Blb19jb21wdXRlX2luZGV4KHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLA0KPiArCQkgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUpIHsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2lu
dGVsX2Rpc3BsYXkoZW5jb2Rlcik7DQo+ICsNCj4gKwlpZiAoSEFTX0xUX1BIWShkaXNwbGF5KSkg
ew0KPiArCQlyZXR1cm4gbHRfY29tcHV0ZV9pbmRleChjcnRjX3N0YXRlKTsNCj4gKwl9DQoNCk5v
IG5lZWQgZm9yIHRoZSBicmFja2V0cw0KDQpSZWdhcmRzLA0KU3VyYWogS2FuZHBhbA0KDQo+ICsN
Cj4gKwlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJWUy9QRS1PIHVuc3VwcG9ydGVkLCB1c2lu
ZyBkZWZhdWx0DQo+IFZTL1BFDQo+ICt0YWJsZXMiKTsNCj4gDQo+ICAJcmV0dXJuIC0xOw0KPiAg
fQ0KPiBAQCAtMTg2NywxMCArMTg5MSwyMCBAQCBjb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90
cmFucw0KPiAqaW50ZWxfZGRpX2J1Zl90cmFuc19nZXQoc3RydWN0IGludGVsX2VuY29kZXIgKg0K
PiAgCQkJCQkJCSAgY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUs
DQo+ICAJCQkJCQkJICBpbnQgKm5fZW50cmllcykNCj4gIHsNCj4gLQlpZiAoIWVuY29kZXItPnZz
cGVvKQ0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxh
eShlbmNvZGVyKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqYnVmX3RyYW5zOw0K
PiArCWludCBpZHg7DQo+ICsNCj4gKwlidWZfdHJhbnMgPSAodm9pZCAqKSBlbmNvZGVyLT52c3Bl
bzsNCj4gKwlpZiAoIWJ1Zl90cmFucykNCj4gKwkJcmV0dXJuIGVuY29kZXItPmdldF9idWZfdHJh
bnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwgbl9lbnRyaWVzKTsNCj4gKw0KPiArCWlkeCA9IHZzcGVv
X2NvbXB1dGVfaW5kZXgoZW5jb2RlciwgY3J0Y19zdGF0ZSk7DQo+ICsJaWYgKGlkeCA8IDApDQo+
ICAJCXJldHVybiBlbmNvZGVyLT5nZXRfYnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsIG5f
ZW50cmllcyk7DQo+IA0KPiAtCXZzcGVvX2NvbXB1dGVfaW5kZXgoZW5jb2Rlcik7DQo+ICsJYnVm
X3RyYW5zLT5lbnRyaWVzID0gZGlzcGxheS0+dmJ0LnZzcGVvLmJ1ZnNfbXRyeFtpZHhdOw0KPiAr
CWJ1Zl90cmFucy0+bnVtX2VudHJpZXMgPSBkaXNwbGF5LT52YnQudnNwZW8ubnVtX3Jvd3M7DQo+
IA0KPiAtCXJldHVybiBlbmNvZGVyLT5nZXRfYnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUs
IG5fZW50cmllcyk7DQo+ICsJcmV0dXJuIGludGVsX2dldF9idWZfdHJhbnMoYnVmX3RyYW5zLCBu
X2VudHJpZXMpOw0KPiAgfQ0KPiAtLQ0KPiAyLjQ1LjINCg0K
