Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id d7XJL+uhO2p0aggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 11:22:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBAF6BCE57
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 11:22:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=kBgzveV7;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9F3C10E05A;
	Wed, 24 Jun 2026 09:22:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2AE910E05A;
 Wed, 24 Jun 2026 09:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782292968; x=1813828968;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=UgGgMXUTrLPKvza7cCUKY06WGTmKqoFrwJF/nhU0JXw=;
 b=kBgzveV7HNmyUUbd9e5+z8mpXgq18GXxiZVSguourv55m6rouf+uGrkD
 nRJ7fAdIEwM5xljTGJ8He8glXpC/DH94YY+JYEgTFsqJKUsHuDfqhtaRl
 N/1oKNQPtS6PeXsHW+VEjeVLi55PeVeuiUBiY4fdDDiVMNz1uUWDyJuqO
 V90tPQrAIRn7XcANKIrZhyef6YMuyMjtSKZfoNGnsHZfQPwhAz5fRNYXu
 HuYF0/+nf1+2sXYHnMfFgfYigpP3hj0CauuVzy8k/EmP9+KiqO92MwH7A
 XJIgSQhx/uEAewz6AvDlerxF1TgK/WZSEtt2Pw5HGASuSLnUHeiYkgMT7 w==;
X-CSE-ConnectionGUID: ariRoY1yS3eUlIS1BDMC9g==
X-CSE-MsgGUID: StkRPixsR5icfp20FuDlmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="83048392"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="83048392"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 02:22:47 -0700
X-CSE-ConnectionGUID: EnpuWOWvQ86MlI50THE+bw==
X-CSE-MsgGUID: xAyv4XXsR6+2+D2VP4Vmww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="249892308"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 02:22:48 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 02:22:47 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 24 Jun 2026 02:22:47 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.9) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 02:22:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ihXKwwvV1wthV/Fb8ag81FU+LoYJCH4oZMeJl64j2NfT//Fz4CXojFgPbpeYtlpvB+4f3OprHIUV7jCm+IjgRVe7u0SsJHuxikoEzSXj3V093sFizznPFDiTPEC8Bj2styIJJOb236ePb5SHMW4KuvOtrGVwZnnszF/ipbCMjzT7tgypSQZaKe3sqqIRYoAkndvG+lWMjjlTv2a54xOyJMTfiSGvRGBLKbV+krILt20uAhuS/t7AqnBm7i2d7xHUnoz9bNOluB8nHWBp9nmR0McqcX0ljHcjwpY5NRWhogBTSN6peZ/4SoDcbgK90BX7zj7QCDNwaI3mB4ErptkneQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UgGgMXUTrLPKvza7cCUKY06WGTmKqoFrwJF/nhU0JXw=;
 b=uC6lKTVySavVN3ZGOIZ7zw1sa9cywaFjCU/EWdWku2Qxad6S+yMUeRdZ6Yq3U42IvkQnutv9XTiuhZMXJFtaom2KzHvNJyl/3pZSWCCK8XhT0DLk6C1ZGU9xdWij/bKnLtLqS25IKFGxeQb5pvoUnmPyqfkrg4AwXEvnoeM67QV5x7ALRvvskM23Z52FPN8icqZY0F99Rv7tOgp+tu2wADtUSx1itVdUQ2aa3WAibhOMc1y3TkfrD77UVX5i6XVzVmuL68UGDorvjqOu6/8PvLrh/GdZTVfz6cu2scC3XBPIXTNSGsGtuYPvOGs0GDnvOk7gI+Hgfsj17GcPJLRl1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by PH7PR11MB5820.namprd11.prod.outlook.com
 (2603:10b6:510:133::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.14; Wed, 24 Jun
 2026 09:22:43 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0159.015; Wed, 24 Jun 2026
 09:22:43 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 18/28] drm/i915/dp_link_caps: Move tracking of common
 rates to link_caps struct
Thread-Topic: [PATCH v2 18/28] drm/i915/dp_link_caps: Move tracking of common
 rates to link_caps struct
Thread-Index: AQHc/c15Z3vPyEh6K0GzK+MxAHCiT7ZNelIQ
Date: Wed, 24 Jun 2026 09:22:43 +0000
Message-ID: <DS4PPF69154114F856E626D71C639CDD071EFED2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-19-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-19-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|PH7PR11MB5820:EE_
x-ms-office365-filtering-correlation-id: cdf480d4-c7fe-490b-66ba-08ded1d2255e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|23010399003|4143699003|56012099006|11063799006|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: c4F8cn8d8oLrNCxX3OeVetNJKlZa5tmki7f5N1u/jfiy04FoswRQ1F1l7IO+zQKWAPZT/gZn4sL+WdGrjhYt7LJ0qtQtmVJoXeovHCknwMGt/3VHVS5ve3/ZiHrupudagvrAsPjL5P2HrWptZDcY5SZuL860Kwgb7xqRZ5jQKKr5rGwolF4M4HFEMAp1NGBOkp3JdSjsmX2l6/rWX86yYNWArTAFpADlvJkRC+ErMjUnOx1hdTRuO9DEWMkXvOxRy2IYtjusvDfx+ZZCT6sWGjOexj31GmvQBM6WBozwRrqsdlmRV3igeYKFYlP5+xyLUlyi6c6+pYJ/6HXOarq5cYdxxnPaL6TbjtHiDZFYdTEcvOgdunz4s85kl5I6xL26+x4CT9/QuMHugW90orJK/TKBNc9nvQHvj7IeFFNZtNpLHC4CSuydBKUZ/wqCeAVvCXyvsy0ydn8Z3uUWGeR+TaLtlyIzM8JMYloRRYPJyY7Py4JlH8tZhVzbTzpywiv5pG0ug+as3un+GsPY0FB+ubkjgTC+YOFOgpq/g5lJ+is9vKN/LK5XLefhjB6ZKf4uXwaAXl2fBwA+k+eEURsBJdYuzlS+J03XuWGTiMSN0J+9Ll0NHAYE+uU/BbKgb7NFmKhq0v3NpTZu3CqfjfENA/YgiYNuTa5HPtbMCqwZxRv18/NBdCEEdYDEQxZsrk67XB2Zf9cAPppgU2g6AlSl3QbhnTINpdHFh0YMMCeHGoA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(4143699003)(56012099006)(11063799006)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SFNXVVlBbVdHbXl6TlM0OE1GeEhYQnJCODVqSU52VGs2eGRqVGU1YzR1elFH?=
 =?utf-8?B?a3NJZURsWngyTW10anl1N2I5NWdvekZmeit1bXpTREtURm5XdlBkRU5qOFhQ?=
 =?utf-8?B?eTFNK2MyU3RRQ1p6aHoxcnlFbTRnc3FNdGdKcU1FSEZjTlFwNk1TMDRUZE01?=
 =?utf-8?B?Zmh5VmlnV1dHN0I1aEZ1amlwU3p4eW81dVFnb0JaTDJxc2JkVStOYVBSaUFC?=
 =?utf-8?B?V1d2NjYySVRkM1NsOXNsUlNZclI2ckQzNzNxbmZIckxXdTd6Q3dqR3NJS08r?=
 =?utf-8?B?UVRvVGp5RU9lNC81V3JzQnBFdGowYzZKU2pwNjV0WE54QXZYU1pMMGhWM24r?=
 =?utf-8?B?N3NCM1JDQjJVdWpYRExKbVdONXRWQ0VoRThWSEdIbmYyZ2tSMmJPQWRRbUdB?=
 =?utf-8?B?WkxvOCtOaFRXNXRIOVBOWnV2bXkxbWtONzBjTDFBVWdvN1oyc0NoN2ZpR21a?=
 =?utf-8?B?dHNNTmJ1N2RWRXdWWmFSVmFmZ3MvZXZrU3pwQ3lvcjlSbFhCdERCcHdsTXZU?=
 =?utf-8?B?NEJTUmpSdDdFaWRkZjdFQzFEWTRRZjRLVS9BSTNaRmx4Si96SURmWWszQUxa?=
 =?utf-8?B?ckMvVWdjRkhZZk1vRmh6ejUzenlFVlg4YW9zeDFYMCtudFoxSHE0b29WTWFN?=
 =?utf-8?B?TjFBU24rTXdoYzlwc0ZuVjJsUlRWemZGWlo4NmpNdVA0UG5TTWJtdURKbjJG?=
 =?utf-8?B?cFdvRlBsazYyVHhGRWRhSjBHd2huVWZXZHYrRkZoS3JHLzBUL25oVGFKS2lK?=
 =?utf-8?B?MUMwWEJEV2J2UXIyNTZXZ21aTnM3c05DK29HcWc3Rm9nRjdiaDJ2ZDRlTFl1?=
 =?utf-8?B?YXpOYTNrZVI0NytiTXdrMU4xbWhiWjNzU0pEOW8yTUxYbk9SdnUzYm85MStK?=
 =?utf-8?B?cFFtRmRTcmtlWG1abitVZTJFTzNTTXdzSkFYSmpDUGZlWGg4b2dvQVhLTkZV?=
 =?utf-8?B?WnU5Ry8rOTg3VXdadFM2NzJxTHB6c0YvV3huZ0l2Y1ZHQjRsc1pHREF3MFlH?=
 =?utf-8?B?ZTlVcFFvcEgxcm9mejRUUHI2bG0xQXl6OC9IWkpScjBNNUlxbWlWV2RHV215?=
 =?utf-8?B?bmlmTm1Bdk0xOVh5Njc0RWhMQzVIZUZScFcyci9vbzZuWVNQWlhTSFdNRXNh?=
 =?utf-8?B?ZytXWnlpb0tOYks4Yzg2Mm1nT1A1WXZUdUxSdHExKy9Nd2lzc0lXbWJsd3M3?=
 =?utf-8?B?QlJQK3hub3pqOENmTmhZak0vQzJTR1o0Z3QvVmxEWFJ0eFJnQjNsTnJVNjJH?=
 =?utf-8?B?czVPTE50WllVRFpDQ0hmVnMzcUpVankwUGtDUlI3QW5SUnNlTm1ud3FlRW9U?=
 =?utf-8?B?dkhYMUwrQVAzd1BLU1Y2ZWdiRjBVaW1NTXptRXNVSlFXN1BQMHVleVFBTC8v?=
 =?utf-8?B?QUQ2QVZadFdGTFVwZVMxZDY2OThUYWY3UDNuZG9GL1lIQVNEa0d0bGltUVgy?=
 =?utf-8?B?OGFlKzBlTml4ejhhSVZPRFNBcnduYTBJbnJrMlp4dDJUUkhyMGh4RWlmK3NX?=
 =?utf-8?B?QUNwU2NwbGQyU0lYaFJHUEdFaXhqd3haSVNDVldIUENGVDFDTGJWZFhMalEv?=
 =?utf-8?B?MzBNTXM3RXJrcVFrQ0xvZGcrSEV4dDIraEZwTlFGSkZnRFlEQjBqL3lQYS9P?=
 =?utf-8?B?akJLSTJUT0w1eTRtQk5UUlFjd1VtV3JWSTJiWTJnZllxaHFMYUZsY1Zqa3g4?=
 =?utf-8?B?RXNPUm5CK2NNVUpoZVBmVEFqa01JbXJDRWduVGQrc25pRUludWt0azZyd3Br?=
 =?utf-8?B?Sml4RTcwd3JWbVhzbUwyaXRHNkZMK3Z6bnRRQWN3MkRMbUJ4dC84enF3M0My?=
 =?utf-8?B?ajIxUDJqc3l3bTNVWGRzVE1Za1Y1RDZHZ1llM1NRRjYwcWlnRlY4bWdVcE9N?=
 =?utf-8?B?bU43MW52clZTaVNtUlhtOEhZUHo0d0xxTlFjRU5LUW5pOUtmcUk4RGs3aVFV?=
 =?utf-8?B?bUlyWnFSR3hyWWp6Mk92OVZ3QVo4SDhzMjJXeFFMRWk1ZlBhU2RKM0o2eFF3?=
 =?utf-8?B?MXFMYVo5K1AxT09xVnlmYk0reEpGR043c1EyN0V5QXZ6V0piNFExc0tXdi9h?=
 =?utf-8?B?S01jOThrTWdGVVlZRWk3b0hQc3YvcnY5c1dIdS9RNS9xK1RkYTdvQ2E0Y1NU?=
 =?utf-8?B?OVVBbWt2NngrT2FVY2ZTdFdQVWtLUFZ0aUhRanBVVFFPT3BOZHFFdGgyQmJk?=
 =?utf-8?B?RDgzYk9Qd3pIY1Y3N3FjOTcxNEx4ZEFGeFo4b1JoNVp5ajhyMlJtR00zb1F4?=
 =?utf-8?B?SFZtUkd5Sm85Z2RGaUcvbUdpQ3d1TXFwZnJXN29CQVc1MzBLRCt0di9CY00x?=
 =?utf-8?Q?jELwksLrJ5XdF5z7hW?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: c3eFzHP4igfv0Rq/r+YdwfZltJ2HhSd16hhI2+tw5N+zPnYNPUwNGpb6pkei3R2kpI21sUDDn4U9seO4zYMQvGiiRqDMTSw5kHFxgADa1cZbxAK/nsog9zLoObzp2s+kbEQaTYciXXq+o/CMTttAATcIL2Ct2BhkwBGRvq7DT3QVEOOd2H16hNifwkotq2WP28Rnmlvkv88mfatox2toRIc3SOYr2CgNUAQ1ZUfURMmaOvkUhAK9z+/JXDAGSPNEeyPSV3frpMxskbbeQLnWFyIokD21jX+EiF/AmSupMA25iGd6ahnmabLogqLmjD7pMiqWckPJpoO2tqZ2ng9GOA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cdf480d4-c7fe-490b-66ba-08ded1d2255e
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2026 09:22:43.3309 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +rmaQVtQyJP05wboeZ8qh/rbB2U/5BWS6AR2SijgjmmpheYPb1XL6EAfzQBDu7Bc3uqJTS2sFWz+5pdh+DZynQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5820
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DS4PPF69154114F.namprd11.prod.outlook.com:mid];
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
X-Rspamd-Queue-Id: 0CBAF6BCE57

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogVHVlc2RheSwgMTYgSnVuZSAyMDI2IDIzLjA5DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVj
dDogW1BBVENIIHYyIDE4LzI4XSBkcm0vaTkxNS9kcF9saW5rX2NhcHM6IE1vdmUgdHJhY2tpbmcg
b2YgY29tbW9uIHJhdGVzIHRvIGxpbmtfY2FwcyBzdHJ1Y3QNCj4gDQo+IE5vdyB0aGF0IGFsbCB1
c2VycyBhY2Nlc3MgdGhlIHN1cHBvcnRlZCBsaW5rIHJhdGVzIHZpYSBoZWxwZXJzLCBtb3ZlDQo+
IHRyYWNraW5nIG9mIHRoZXNlIHJhdGVzIGZyb20gc3RydWN0IGludGVsX2RwIHRvIHRoZSBsaW5r
X2NhcHMgc3RhdGUuDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xh
QGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRl
bC5jb20+DQo+IC0tLQ0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oICAgIHwgIDMgLS0NCj4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5r
X2NhcHMuYyB8IDUxICsrKysrKysrKysrLS0tLS0tLS0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjkg
aW5zZXJ0aW9ucygrKSwgMjUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBpbmRleCA0NDNiYjNi
NWU5ZmEzLi5kZDQzYzdlZThmMTQzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBAQCAtMTgzNCw5ICsxODM0LDYg
QEAgc3RydWN0IGludGVsX2RwIHsNCj4gIAlib29sIHVzZV9yYXRlX3NlbGVjdDsNCj4gIAkvKiBN
YXggc2luayBsYW5lIGNvdW50IGFzIHJlcG9ydGVkIGJ5IERQX01BWF9MQU5FX0NPVU5UICovDQo+
ICAJaW50IG1heF9zaW5rX2xhbmVfY291bnQ7DQo+IC0JLyogaW50ZXJzZWN0aW9uIG9mIHNvdXJj
ZSBhbmQgc2luayByYXRlcyAqLw0KPiAtCWludCBudW1fY29tbW9uX3JhdGVzOw0KPiAtCWludCBj
b21tb25fcmF0ZXNbRFBfTUFYX1NVUFBPUlRFRF9SQVRFU107DQo+ICAJaW50IG1heF9jb21tb25f
bGFuZV9jb3VudDsNCj4gIAlzdHJ1Y3Qgew0KPiAgCQkvKiBUT0RPOiBtb3ZlIHRoZSByZXN0IG9m
IGxpbmsgc3BlY2lmaWMgZmllbGRzIHRvIGhlcmUgKi8NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5jDQo+IGluZGV4IDg0ZDk2MzZmNGFk
YjQuLmUyOGY3MzA4MjgzY2UgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuYw0KPiBAQCAtMjIsNiArMjIsMTAgQEANCj4gIHN0
cnVjdCBpbnRlbF9kcF9saW5rX2NhcHMgew0KPiAgCXN0cnVjdCBpbnRlbF9kcCAqZHA7DQo+IA0K
PiArCS8qIFJhdGUsIGxhbmUgY291bnQgY2FwcyBjb21tb24gdG8gc291cmNlIGFuZCBzaW5rLiAq
Lw0KPiArCWludCBudW1fcmF0ZXM7DQo+ICsJaW50IHJhdGVzW0RQX01BWF9TVVBQT1JURURfUkFU
RVNdOw0KPiArDQo+ICAJLyogY29tbW9uIHJhdGUsbGFuZV9jb3VudCBjb25maWdzIGluIGJ3IG9y
ZGVyICovDQo+ICAJaW50IG51bV9jb25maWdzOw0KPiAgI2RlZmluZSBJTlRFTF9EUF9NQVhfTEFO
RV9DT1VOVAkJCTQNCj4gQEAgLTMxLDYgKzM1LDcgQEAgc3RydWN0IGludGVsX2RwX2xpbmtfY2Fw
cyB7DQo+ICAjZGVmaW5lIElOVEVMX0RQX01BWF9MSU5LX0NPTkZJR1MJCShEUF9NQVhfU1VQUE9S
VEVEX1JBVEVTICogXA0KPiAgCQkJCQkJIElOVEVMX0RQX01BWF9TVVBQT1JURURfTEFORV9DT05G
SUdTKQ0KPiAgCXN0cnVjdCBpbnRlbF9kcF9saW5rX2NvbmZpZ19lbnRyeSB7DQo+ICsJCS8qIGlu
ZGV4IGludG8gcmF0ZXNbXSAqLw0KPiAgCQl1OCBsaW5rX3JhdGVfaWR4OklOVEVMX0RQX0xJTktf
UkFURV9JRFhfQklUUzsNCj4gIAkJdTggbGFuZV9jb3VudF9leHA6SU5URUxfRFBfTEFORV9DT1VO
VF9FWFBfQklUUzsNCj4gIAl9IGNvbmZpZ3NbSU5URUxfRFBfTUFYX0xJTktfQ09ORklHU107DQo+
IEBAIC00Niw1MCArNTEsNTIgQEAgc3RydWN0IGludGVsX2RwX2xpbmtfY2FwcyB7DQo+ICBpbnQg
aW50ZWxfZHBfY29tbW9uX2xlbl9yYXRlX2xpbWl0KGNvbnN0IHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHAsDQo+ICAJCQkJICAgaW50IG1heF9yYXRlKQ0KPiAgew0KPiAtCXJldHVybiBpbnRlbF9k
cF9yYXRlX2xpbWl0X2xlbihpbnRlbF9kcC0+Y29tbW9uX3JhdGVzLA0KPiAtCQkJCSAgICAgICBp
bnRlbF9kcC0+bnVtX2NvbW1vbl9yYXRlcywgbWF4X3JhdGUpOw0KPiArCXN0cnVjdCBpbnRlbF9k
cF9saW5rX2NhcHMgKmxpbmtfY2FwcyA9IGludGVsX2RwLT5saW5rLmNhcHM7DQo+ICsNCj4gKwly
ZXR1cm4gaW50ZWxfZHBfcmF0ZV9saW1pdF9sZW4obGlua19jYXBzLT5yYXRlcywNCj4gKwkJCQkg
ICAgICAgbGlua19jYXBzLT5udW1fcmF0ZXMsIG1heF9yYXRlKTsNCj4gIH0NCj4gDQo+ICBpbnQg
aW50ZWxfZHBfY29tbW9uX3JhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgaW50IGluZGV4
KQ0KPiAgew0KPiArCXN0cnVjdCBpbnRlbF9kcF9saW5rX2NhcHMgKmxpbmtfY2FwcyA9IGludGVs
X2RwLT5saW5rLmNhcHM7DQo+ICAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19p
bnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gDQo+ICAJaWYgKGRybV9XQVJOX09OKGRpc3BsYXkt
PmRybSwNCj4gLQkJCWluZGV4IDwgMCB8fCBpbmRleCA+PSBpbnRlbF9kcC0+bnVtX2NvbW1vbl9y
YXRlcykpDQo+ICsJCQlpbmRleCA8IDAgfHwgaW5kZXggPj0gbGlua19jYXBzLT5udW1fcmF0ZXMp
KQ0KPiAgCQlyZXR1cm4gMTYyMDAwOw0KPiANCj4gLQlyZXR1cm4gaW50ZWxfZHAtPmNvbW1vbl9y
YXRlc1tpbmRleF07DQo+ICsJcmV0dXJuIGxpbmtfY2Fwcy0+cmF0ZXNbaW5kZXhdOw0KPiAgfQ0K
PiANCj4gIGludCBpbnRlbF9kcF9saW5rX2NhcHNfY29tbW9uX3JhdGVfaWR4KHN0cnVjdCBpbnRl
bF9kcF9saW5rX2NhcHMgKmxpbmtfY2FwcywgaW50IHJhdGUpDQo+ICB7DQo+IC0Jc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCA9IGxpbmtfY2Fwcy0+ZHA7DQo+IC0NCj4gLQlyZXR1cm4gaW50ZWxf
ZHBfcmF0ZV9pbmRleChpbnRlbF9kcC0+Y29tbW9uX3JhdGVzLA0KPiAtCQkJCSAgIGludGVsX2Rw
LT5udW1fY29tbW9uX3JhdGVzLA0KPiArCXJldHVybiBpbnRlbF9kcF9yYXRlX2luZGV4KGxpbmtf
Y2Fwcy0+cmF0ZXMsDQo+ICsJCQkJICAgbGlua19jYXBzLT5udW1fcmF0ZXMsDQo+ICAJCQkJICAg
cmF0ZSk7DQo+ICB9DQo+IA0KPiAgLyogVGhlb3JldGljYWwgbWF4IGJldHdlZW4gc291cmNlIGFu
ZCBzaW5rICovDQo+ICBpbnQgaW50ZWxfZHBfbWF4X2NvbW1vbl9yYXRlKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHApDQo+ICB7DQo+IC0JcmV0dXJuIGludGVsX2RwX2NvbW1vbl9yYXRlKGludGVs
X2RwLCBpbnRlbF9kcC0+bnVtX2NvbW1vbl9yYXRlcyAtIDEpOw0KPiArCXN0cnVjdCBpbnRlbF9k
cF9saW5rX2NhcHMgKmxpbmtfY2FwcyA9IGludGVsX2RwLT5saW5rLmNhcHM7DQo+ICsNCj4gKwly
ZXR1cm4gaW50ZWxfZHBfY29tbW9uX3JhdGUoaW50ZWxfZHAsIGxpbmtfY2Fwcy0+bnVtX3JhdGVz
IC0gMSk7DQo+ICB9DQo+IA0KPiAgaW50IGludGVsX2RwX2xpbmtfY2Fwc19udW1fY29tbW9uX3Jh
dGVzKHN0cnVjdCBpbnRlbF9kcF9saW5rX2NhcHMgKmxpbmtfY2FwcykNCj4gIHsNCj4gLQlyZXR1
cm4gbGlua19jYXBzLT5kcC0+bnVtX2NvbW1vbl9yYXRlczsNCj4gKwlyZXR1cm4gbGlua19jYXBz
LT5udW1fcmF0ZXM7DQo+ICB9DQo+IA0KPiAgdm9pZCBpbnRlbF9kcF9saW5rX2NhcHNfcHJpbnRf
Y29tbW9uX3JhdGVzKHN0cnVjdCBpbnRlbF9kcF9saW5rX2NhcHMgKmxpbmtfY2FwcykNCj4gIHsN
Cj4gLQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gbGlua19jYXBzLT5kcDsNCj4gLQlzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0K
PiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShsaW5r
X2NhcHMtPmRwKTsNCj4gIAlERUNMQVJFX1NFUV9CVUYocywgMTI4KTsNCj4gIAlpbnQgaTsNCj4g
DQo+IC0JZm9yIChpID0gMDsgaSA8IGludGVsX2RwLT5udW1fY29tbW9uX3JhdGVzOyBpKyspDQo+
IC0JCXNlcV9idWZfcHJpbnRmKCZzLCAiJXMlZCIsIGkgPyAiLCAiIDogIiIsIGludGVsX2RwLT5j
b21tb25fcmF0ZXNbaV0pOw0KPiArCWZvciAoaSA9IDA7IGkgPCBsaW5rX2NhcHMtPm51bV9yYXRl
czsgaSsrKQ0KPiArCQlzZXFfYnVmX3ByaW50ZigmcywgIiVzJWQiLCBpID8gIiwgIiA6ICIiLCBs
aW5rX2NhcHMtPnJhdGVzW2ldKTsNCj4gDQo+ICAJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAi
Y29tbW9uIHJhdGVzOiAlc1xuIiwgc2VxX2J1Zl9zdHIoJnMpKTsNCj4gIH0NCj4gQEAgLTE3NSw3
ICsxODIsNyBAQCBib29sIGludGVsX2RwX2xpbmtfY2Fwc191cGRhdGUoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCwNCj4gIAlpZiAoZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCAhaXNfcG93ZXJf
b2ZfMihpbnRlbF9kcF9tYXhfY29tbW9uX2xhbmVfY291bnQoaW50ZWxfZHApKSkpDQo+ICAJCXJl
dHVybiBmYWxzZTsNCj4gDQo+IC0JaWYgKGRybV9XQVJOX09OKGRpc3BsYXktPmRybSwgbnVtX3Jh
dGVzID4gQVJSQVlfU0laRShpbnRlbF9kcC0+Y29tbW9uX3JhdGVzKSkpDQo+ICsJaWYgKGRybV9X
QVJOX09OKGRpc3BsYXktPmRybSwgbnVtX3JhdGVzID4gQVJSQVlfU0laRShsaW5rX2NhcHMtPnJh
dGVzKSkpDQo+ICAJCXJldHVybiBmYWxzZTsNCj4gDQo+ICAJbnVtX2NvbW1vbl9sYW5lX2NvbmZp
Z3MgPSBpbG9nMihpbnRlbF9kcF9tYXhfY29tbW9uX2xhbmVfY291bnQoaW50ZWxfZHApKSArIDE7
DQo+IEBAIC0xODUsMTcgKzE5MiwxNyBAQCBib29sIGludGVsX2RwX2xpbmtfY2Fwc191cGRhdGUo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJcmV0dXJuIGZhbHNlOw0KPiANCj4gIAkv
KiBUT0RPOiBBZGQgYSBzdHJ1Y3QgY29udGFpbmluZyBib3RoIHJhdGVzIGFuZCBudW1iZXIgb2Yg
cmF0ZXMuICovDQo+IC0Jc3RhdGljX2Fzc2VydChfX3NhbWVfdHlwZShyYXRlc1swXSwgaW50ZWxf
ZHAtPmNvbW1vbl9yYXRlc1swXSkpOw0KPiAtCWlmIChudW1fcmF0ZXMgIT0gaW50ZWxfZHAtPm51
bV9jb21tb25fcmF0ZXMgfHwNCj4gLQkgICAgbWVtY21wKHJhdGVzLCBpbnRlbF9kcC0+Y29tbW9u
X3JhdGVzLCBudW1fcmF0ZXMgKiBzaXplb2YocmF0ZXNbMF0pKSkNCj4gKwlzdGF0aWNfYXNzZXJ0
KF9fc2FtZV90eXBlKHJhdGVzWzBdLCBsaW5rX2NhcHMtPnJhdGVzWzBdKSk7DQo+ICsJaWYgKG51
bV9yYXRlcyAhPSBsaW5rX2NhcHMtPm51bV9yYXRlcyB8fA0KPiArCSAgICBtZW1jbXAocmF0ZXMs
IGxpbmtfY2Fwcy0+cmF0ZXMsIG51bV9yYXRlcyAqIHNpemVvZihyYXRlc1swXSkpKQ0KPiAgCQls
aW5rX3BhcmFtc19jaGFuZ2VkID0gdHJ1ZTsNCj4gDQo+IC0JbWVtY3B5KGludGVsX2RwLT5jb21t
b25fcmF0ZXMsIHJhdGVzLCBudW1fcmF0ZXMgKiBzaXplb2YocmF0ZXNbMF0pKTsNCj4gLQlpbnRl
bF9kcC0+bnVtX2NvbW1vbl9yYXRlcyA9IG51bV9yYXRlczsNCj4gKwltZW1jcHkobGlua19jYXBz
LT5yYXRlcywgcmF0ZXMsIG51bV9yYXRlcyAqIHNpemVvZihyYXRlc1swXSkpOw0KPiArCWxpbmtf
Y2Fwcy0+bnVtX3JhdGVzID0gbnVtX3JhdGVzOw0KPiAgCWxpbmtfY2Fwcy0+bnVtX2NvbmZpZ3Mg
PSBudW1fcmF0ZXMgKiBudW1fY29tbW9uX2xhbmVfY29uZmlnczsNCj4gDQo+ICAJbGMgPSAmbGlu
a19jYXBzLT5jb25maWdzWzBdOw0KPiAtCWZvciAoaSA9IDA7IGkgPCBpbnRlbF9kcC0+bnVtX2Nv
bW1vbl9yYXRlczsgaSsrKSB7DQo+ICsJZm9yIChpID0gMDsgaSA8IGxpbmtfY2Fwcy0+bnVtX3Jh
dGVzOyBpKyspIHsNCj4gIAkJZm9yIChqID0gMDsgaiA8IG51bV9jb21tb25fbGFuZV9jb25maWdz
OyBqKyspIHsNCj4gIAkJCWxjLT5sYW5lX2NvdW50X2V4cCA9IGo7DQo+ICAJCQlsYy0+bGlua19y
YXRlX2lkeCA9IGk7DQo+IEBAIC0yMzEsNyArMjM4LDcgQEAgdm9pZCBpbnRlbF9kcF9saW5rX2Nv
bmZpZ19nZXQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgaW50IGlkeCwgaW50ICpsaW5rX3Jh
dGUNCj4gIGludCBpbnRlbF9kcF9saW5rX2NvbmZpZ19pbmRleChzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwLCBpbnQgbGlua19yYXRlLCBpbnQgbGFuZV9jb3VudCkNCj4gIHsNCj4gIAlzdHJ1Y3Qg
aW50ZWxfZHBfbGlua19jYXBzICpsaW5rX2NhcHMgPSBpbnRlbF9kcC0+bGluay5jYXBzOw0KPiAt
CWludCBsaW5rX3JhdGVfaWR4ID0gaW50ZWxfZHBfcmF0ZV9pbmRleChpbnRlbF9kcC0+Y29tbW9u
X3JhdGVzLCBpbnRlbF9kcC0+bnVtX2NvbW1vbl9yYXRlcywNCj4gKwlpbnQgbGlua19yYXRlX2lk
eCA9IGludGVsX2RwX3JhdGVfaW5kZXgobGlua19jYXBzLT5yYXRlcywgbGlua19jYXBzLT5udW1f
cmF0ZXMsDQo+ICAJCQkJCQlsaW5rX3JhdGUpOw0KPiAgCWludCBsYW5lX2NvdW50X2V4cCA9IGls
b2cyKGxhbmVfY291bnQpOw0KPiAgCWludCBpOw0KPiAtLQ0KPiAyLjQ5LjENCg0K
