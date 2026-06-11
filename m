Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Fcw8OZttKmrRpAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 10:11:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A38366FBB9
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 10:11:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Czhj40R7;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A761610ED68;
	Thu, 11 Jun 2026 08:11:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ED8B10ED63;
 Thu, 11 Jun 2026 08:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781165464; x=1812701464;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=VX71uk7A3P0YmhV3SFXZfxTth40LrEKFkqH6A3zIhuo=;
 b=Czhj40R7hp4X/nPONgI9rEgPrSPgV+8FTWyd844fRLfCAXnytDul3rB4
 HH8cN/ZfShwddf4fmySM9TNoKyEn+GCYrczc7/eB+M6cmvnHmydQT1k2b
 990ZFPGp/7F39kmJziQ0lgH4kTQpmihrvc3/A5cVFrbfP7KPvJZFh0LFg
 F1SJYKEdXn09H/UvOK63uYcrc4iZ1FWFXNjiJFBGBDSzKcmq22O+MNQVw
 1P1AqMCa2pzwm9DmWjDJY0JMIlcfYjnB48vLNs3dWOvKcLrT3A/HE9dIo
 RJB88c9ayE+IBFb48+xpM80+QwneNpXgJS4TdBMyECWc7CYZCeDZlgxb/ g==;
X-CSE-ConnectionGUID: q+3dSf3fStyw+Y5xYNQXCg==
X-CSE-MsgGUID: RW2lZvU6QE2Eu4tNFvCdtw==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="82167213"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="82167213"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 01:11:04 -0700
X-CSE-ConnectionGUID: tJRSzOTTTmeOShc7ACTnQA==
X-CSE-MsgGUID: VnoCo+PQQDeFj9XxMyrGvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="246439257"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 01:11:04 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 01:11:03 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 01:11:03 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.59) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 01:11:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GJELy+DKZSXgTte5fvixdK/IT5kgwtkiLqTbd2A9tQY2bKvCdYLQdurj0dvQhEW+rkDrl/ZR8QDvtWDYEfh9NHdL2HrnDKeb+f7hn3kVrzHzgV+RvTqMKP+tIR+KfCkhMWxCyTxJmOY3SIYioZ2tr2t5dgYIWS1DO2rcnQD6+J00Hh5nA7XGPiHTuhvmWo7Scbxt3nkQ0besnuN+KakuhZaIxKk3RvWsmBTcx39PEvhCAUArI8YLaqe+x2oPVdAZfJzApSBtaoz2e710Bmvp0rx85j2xE/Re1oyoAHpQeRgY+aNghdzUz1SwY+l11gzYkYg9G7NlSdEQGuj9qeHd+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VX71uk7A3P0YmhV3SFXZfxTth40LrEKFkqH6A3zIhuo=;
 b=gBM4GU7SbgFyq2f7gXy6yM8xHlwe5JSvgMMsdwyvsnD6fg0afdvllQ0PbojiSJ6bB1rbkZEKEFiYuhrMHCv+4vVVmWe00CfTFj7gJWBicWX5Ocwha5ZRRR5+Zo5jvI2d4D4karF+fmljkT4ayvM0X9RuhFhNhigm+2jfpuJaheoaP6KMe4tjb7sbn+nO2ktf4UEB16OeHZxW7o9qNGyD/5ywxOX6wYFohRiqUQumWKdzWkRb6ZsO3FGg5qqsU45rj8dLsAkOPKfO6uFymktMhBa9LmGzLJeMVDXbIIm+3lfLaRuwamtBez5KtMGALCS9CHUoBQOhZzcZkPym3G+Dng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by CYXPR11MB8690.namprd11.prod.outlook.com
 (2603:10b6:930:e5::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.13; Thu, 11 Jun
 2026 08:11:01 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0113.011; Thu, 11 Jun 2026
 08:11:01 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Skip generic pipe dpll_hw_state compare
 on LT PHY
Thread-Topic: [PATCH] drm/i915/display: Skip generic pipe dpll_hw_state
 compare on LT PHY
Thread-Index: AQHc90pM00uchb4Aykuwo01m9aBgorY113gggAADAnCAAAUEAIAABeBwgAALkQCAAA3PgIAC+pIAgAALE/A=
Date: Thu, 11 Jun 2026 08:11:01 +0000
Message-ID: <DS4PPFE901A304F96E8363EB65E862232C0E31B2@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260608132505.1849158-1-mika.kahola@intel.com>
 <DS4PPFE901A304F9D8A3F2373EB7BBB7209E31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
 <DS4PPFE901A304F5E4F3186111A73F0683BE31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
 <DS4PPF69154114F8FE08735C1DE5F963D09EF1D2@DS4PPF69154114F.namprd11.prod.outlook.com>
 <DS4PPFE901A304FD17DE37147850239D7F9E31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
 <DS4PPF69154114FDE8A2D0F6CF1A553F281EF1D2@DS4PPF69154114F.namprd11.prod.outlook.com>
 <DS4PPFE901A304F3D1536AECA39854BDBC0E31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
 <DS4PPF69154114F3AF16DFB85FCF7DD6EFBEF1B2@DS4PPF69154114F.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPF69154114F3AF16DFB85FCF7DD6EFBEF1B2@DS4PPF69154114F.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|CYXPR11MB8690:EE_
x-ms-office365-filtering-correlation-id: 60ac8c68-5e25-4767-b62f-08dec790f9b5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|23010399003|38070700021|6133799003|18002099003|22082099003|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: 1kWIMnHEY259YmCZsTWSsrBuF7lJC1rSUGQP+GXl5yYuBiPFuGWvA+ktayyWqOUxeeQb3P/eTPO/LvKr5gy2/mq1P+ZyRW6VMHnA3FPuKHoIkO92MRLOAYQz1WOGcra9uO+Oc/zcHikcjL1MmdGr877jPXkceKrWwWgmBq4hU1IaB7f5Og1pYuAHso7xEux+52unrAAVyV1O1FQ9dV0E2bx1MtSHWw5cZy7GVytw+UUcE3MH/tqOapyq8NmNEmnrqQP5UPxMZmRsQbNKAkw6y1xXNaDzth+q31AoVEbQj3498DgWtcBmLR63J240Tp8X2EiL3FMg+JrVex3EkVv+2WfxiRAlTfenSlzV+45sr0QZwaMP05drB9cG1JXYP60cMIosNPDI/wEtjdeJxIlmRmXQL6ExYhCiyy1yXRG8+EPObbeDXvrjKooYAjBS2uxsLahlOcwRryQOIAP8CDMELZ1H1RkJouRDFf4TnQmVf8oMoVswdo34ibVshxZrROfNqMoDpKpwRCHt9JEkE9Z0yqy1z9mHbjuT/RQVWjskQ+GQZQEGf7amfOwNZBkWmE1tVycqEL5cg44Mz+IOACUCPjrsEGxuQiZiAdCflWuomkk0lFuV+GPCHxmRksG2kafSv8KnMLAHxQTdA2OrSj4aaxp8/AF3c0TGfQ4yolAE8A+MV4eXXTWzabKTuhwmElp0miDgaYoqqk2S07s/B1FqRQ3BACjcNUPRQPw+RLtFMCe6pmiQCmrVcZBJRHyzsCFR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(23010399003)(38070700021)(6133799003)(18002099003)(22082099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YVBENEtDalNjNWlJb1gwb29JRGZ3YU1OaSs4bThvMituZ3UrV251eHQ1WmVZ?=
 =?utf-8?B?SlZ3V0M3WWh6RmxlM3IxOU1tdVVKbUhodjJBZlhQWXdYWnRFK0tQM0hiZFFx?=
 =?utf-8?B?VnRnQlRodW1rU0VQbFhUMkt6aHVPclg0am9Ic1pxQ0c3c0ZyeENqaE5XTThr?=
 =?utf-8?B?Y3N1SzR0Uktrb0hoQ21nNTF1NVJBNTU3UDVWeStnVGduZ09mbkZzM2U1QWkw?=
 =?utf-8?B?SE5iQ05jUGNLczRQVWkxbVFsTXY4bXJSV2NlNisrS3VFSTcwQktNSE81NGc3?=
 =?utf-8?B?Ym0xeWZpWXV6MkZVc01HbWNvL01mVnk5V0JCRy8ra1VRNUFSSDBRbUJWTDRK?=
 =?utf-8?B?eTVqWFVJYllEN29xWFdpUTFLU05KNS9kNEg0b0s3bERKeUwyMjA0NUgvWmxo?=
 =?utf-8?B?dHhQZGtucHg3Y0hwM3p4MUE4eVZBVnB6a0RiYmJsaHRncWNWNnp3NFl2S3Rt?=
 =?utf-8?B?cDVORzdSOGZrTEloeCtLcy9RRE9NNlU1NnQ5aHBRK3BDNE51aDJOclA5TUZl?=
 =?utf-8?B?TWtEOEliY29zOUpUVTJuR0kxcmFDanRFTGM0MU9tSXY4NmxmQ0E2R2lpQmlU?=
 =?utf-8?B?M2hQTHpWSzZZWG44ZWRCTmZ0aHRnRkVhTm9GazFzemtHUklyeEZ2K3dFSjZy?=
 =?utf-8?B?OUozY2FLWmxDTi9MMDdjMFZtTWx3MDBPZWd4NGM1ZEM4M3dhbzczQnlKQjgv?=
 =?utf-8?B?cmVEL2s1aEFjRnJJdDVQRHB3RDRoNldtSGdrbEdKbXNEeVo0WndFZXo4UG9o?=
 =?utf-8?B?T1J1NXI2NlBVcTVPaTdPc0x2TVUreThneTdnT1UxVlRLMlkyRERQQ0V2b2JW?=
 =?utf-8?B?MmdSb0pneHJhcmZObk9EOG9WZmp1Z052akpKVjREdExYODVUajU2bnYyWWlK?=
 =?utf-8?B?TmY5N05wM1IrSXhJcGlXNlZOWFZaT1JiNURuT2RBSVV0UVYvMTVDZE9QRHFj?=
 =?utf-8?B?V1F0SWliKytKcDdxMUpWZWM3UUlyNXN4MnladzlHbnVpa0NNVnpqNXdUUlBp?=
 =?utf-8?B?OUUxem04Rks2NiswMnYvbVdVbzhaZXRNZG96cmJiZS9rc1RmL0E4d2ppQ2N4?=
 =?utf-8?B?dmorbnZ6a0FyemgxMkZmVE5uaXBXbU1FU0dXUmlrLzE3WkVUOHRwSFZUeVI3?=
 =?utf-8?B?TnBLVEdaaTZWQkJya1NMWnFWUTl0aEZKcVN3c2ZUdUx1T0paVUF3ODVjM2NQ?=
 =?utf-8?B?WlAySk1VYXFERGIrcUJkUEpLbkpwd2JON2IxTzh5RnQ5dWNDWXp0b2s3K250?=
 =?utf-8?B?aFN6R0tYd0xJWXB2dmE1akZxODhhcVhwWHJ6QndaZjh3Y01nSEJrSktxMHdM?=
 =?utf-8?B?NnpaS1g2T3RXS3dQUFZTNWlyYWxGUXpweVRGNG5oa29Bd2tDbGtjUXllZVBI?=
 =?utf-8?B?d3hJeXM0cTlEa1BPU1lpa3pFdnovUXA3Uyt6RllsNXVsZzl2QVhDOGtXZUIy?=
 =?utf-8?B?ZE03VVhhM3J4MzE1ajVhNmIvTEJPS284VDZ5WTB1NE5yZ2l6VVVEcWRpeDNH?=
 =?utf-8?B?VFNScWx5UStieEFMbjFWSHBCTi9vcVJKM2hOQUdVNXhVeVZzTDF5TlRRZC84?=
 =?utf-8?B?STJubjB5bXVoT003aDV6ZnIyUk9zU2V2dXRhMnNOZit6WjQvcTJUYWVWOGhw?=
 =?utf-8?B?cmVpaXA5VzBBdi9nU3Q4bnc1d1lzZnd5OUlEQXFWTE9JVmFOSmZ3bnU3S1FH?=
 =?utf-8?B?azkrK3VoT1VHTERWS1l2Q010YURZbFBWMVZwOEFsdEU0WU04eUJiQUdnNFp6?=
 =?utf-8?B?Z29aRHFQRVBRMkRJeHJjZTQydktMa3YxdkhrUEt2SDZLUS9yYTVNY2ZXQ1ZM?=
 =?utf-8?B?YnowU1JnTzIrdEJNSmFOblpkQ0tobmdmQmRFa3FNQ0FzZ3lhM09EQ3BpYXVV?=
 =?utf-8?B?Q0hpeDN1QXkwWmJqY2E3TXZ5VGxYOXEwN05iV0QyeUJUOVB3Zkw2NzhuR3hU?=
 =?utf-8?B?NXhMS1Q0R21xeWNYTnBXNHpSS2xpUU1aQjJMVkdrSnI2ZmE3SElrNittYjhW?=
 =?utf-8?B?RVZRRnl3KzRKSklzcHFyOGx6MFQ4TnlQdGkyNjQxdUs5dnJIUmw4elQrVExq?=
 =?utf-8?B?MmxLSlIyOGdIVm9aRUtMNUtEajVtZTJjRGdiM1R1VXg4VnROWGlLdS9sZTZF?=
 =?utf-8?B?dk5iMFlJTWZPM2xQdnVWcGc2blExa1JWUjVUR3krbS8vNnowZEZKQWxoQ3hU?=
 =?utf-8?B?aG9yVmpIaThxZXR6Uzl1SnJJRk1GNTlXOWR1QUZMM0xUcmxOdkpyOXhzMGJa?=
 =?utf-8?B?QnY0ejN0NGt0eVVOODNZVHBianNkUm81elBuQmduRUIxdFNBYUd2QnJocEV1?=
 =?utf-8?B?cW1sZDdXWTZYMS9mMFdFV1g3aVNWVmY2T1l6ZFd0Y3RQQktFNENEdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: KxnZqwmIw8qG0dzvKe+voVkRsb0h4y92BUAKL8hLUwWxMGepOUfRGGkuS3/CmMMbajOawbdcM4UhZ/tLCZApZGSqPsx4g0O9Karu0X0zxzQFcaxrrd2aNe7vtBnbPlcTV9q8uD44cRBeIIthjcx8DHflqKPWndBhMwiE0PPlzXkXdNCKt1ewZmKjYc6gQEzMZ9w9EAHZo5YZpCHC/KLMqIrh9M+6znTdoTe7xhSi0Q3B0vOxIh+6pevWwE4vpAxHf4UjiC18iyPNGqx0Y6DVWjYNEu6exjJPoI1m8cImvfzFXh0z2yxazs2BZIqwFQW20cbtChURUwXewrItITdoXQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60ac8c68-5e25-4767-b62f-08dec790f9b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 08:11:01.1385 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ji5az91gQ0khXQiLetu/VkL6Y/OGhrypOCXpbDUxM+8wG3VWerf1ITG9V6XhjIP+xofkuld7Nkzng0u57+frtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8690
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
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
X-Rspamd-Queue-Id: 2A38366FBB9

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2Fob2xhLCBNaWthIDxt
aWthLmthaG9sYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBKdW5lIDExLCAyMDI2IDEy
OjU5IFBNDQo+IFRvOiBLYW5kcGFsLCBTdXJhaiA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+OyBp
bnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJFOiBbUEFUQ0hdIGRybS9pOTE1L2Rpc3BsYXk6IFNraXAg
Z2VuZXJpYyBwaXBlIGRwbGxfaHdfc3RhdGUNCj4gY29tcGFyZSBvbiBMVCBQSFkNCj4gDQo+ID4g
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+ID4gU2VudDogVHVlc2RheSwgOSBKdW5lIDIwMjYgMTMu
MDQNCj4gPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+Ow0KPiA+IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiA+IFN1YmplY3Q6IFJFOiBbUEFUQ0hdIGRybS9pOTE1L2Rpc3BsYXk6IFNraXAgZ2Vu
ZXJpYyBwaXBlIGRwbGxfaHdfc3RhdGUNCj4gPiBjb21wYXJlIG9uIExUIFBIWQ0KPiA+DQo+ID4N
Cj4gPg0KPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206IEthaG9s
YSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+ID4gU2VudDogVHVlc2RheSwgSnVu
ZSA5LCAyMDI2IDI6NDAgUE0NCj4gPiA+IFRvOiBLYW5kcGFsLCBTdXJhaiA8c3VyYWoua2FuZHBh
bEBpbnRlbC5jb20+Ow0KPiA+ID4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50
ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPiBTdWJqZWN0OiBSRTogW1BBVENIXSBk
cm0vaTkxNS9kaXNwbGF5OiBTa2lwIGdlbmVyaWMgcGlwZQ0KPiA+ID4gZHBsbF9od19zdGF0ZSBj
b21wYXJlIG9uIExUIFBIWQ0KPiA+ID4NCj4gPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0NCj4gPiA+ID4gRnJvbTogS2FuZHBhbCwgU3VyYWogPHN1cmFqLmthbmRwYWxAaW50ZWwuY29t
Pg0KPiA+ID4gPiBTZW50OiBUdWVzZGF5LCA5IEp1bmUgMjAyNiAxMS4zMw0KPiA+ID4gPiBUbzog
S2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+Ow0KPiA+ID4gPiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4g
PiA+ID4gU3ViamVjdDogUkU6IFtQQVRDSF0gZHJtL2k5MTUvZGlzcGxheTogU2tpcCBnZW5lcmlj
IHBpcGUNCj4gPiA+ID4gZHBsbF9od19zdGF0ZSBjb21wYXJlIG9uIExUIFBIWQ0KPiA+ID4gPg0K
PiA+ID4gPg0KPiA+ID4gPg0KPiA+ID4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+
ID4gPiA+ID4gRnJvbTogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4g
PiA+ID4gU2VudDogVHVlc2RheSwgSnVuZSA5LCAyMDI2IDE6MzggUE0NCj4gPiA+ID4gPiBUbzog
S2FuZHBhbCwgU3VyYWogPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPjsgaW50ZWwtDQo+ID4gPiA+
ID4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnDQo+ID4gPiA+ID4gU3ViamVjdDogUkU6IFtQQVRDSF0gZHJtL2k5MTUvZGlzcGxheTogU2tp
cCBnZW5lcmljIHBpcGUNCj4gPiA+ID4gPiBkcGxsX2h3X3N0YXRlIGNvbXBhcmUgb24gTFQgUEhZ
DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4g
PiA+ID4gPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQo+
ID4gPiA+ID4gPiBTZW50OiBUdWVzZGF5LCA5IEp1bmUgMjAyNiAxMC41MQ0KPiA+ID4gPiA+ID4g
VG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsNCj4gPiA+ID4gPiA+IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7DQo+ID4gPiA+ID4gPiBpbnRlbC14ZUBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+ID4gPiA+IENjOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fo
b2xhQGludGVsLmNvbT4NCj4gPiA+ID4gPiA+IFN1YmplY3Q6IFJFOiBbUEFUQ0hdIGRybS9pOTE1
L2Rpc3BsYXk6IFNraXAgZ2VuZXJpYyBwaXBlDQo+ID4gPiA+ID4gPiBkcGxsX2h3X3N0YXRlIGNv
bXBhcmUgb24gTFQgUEhZDQo+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+DQo+
ID4gPiA+ID4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiA+ID4gPiA+IEZy
b206IEthbmRwYWwsIFN1cmFqDQo+ID4gPiA+ID4gPiA+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgOSwg
MjAyNiAxOjEzIFBNDQo+ID4gPiA+ID4gPiA+IFRvOiAnTWlrYSBLYWhvbGEnIDxtaWthLmthaG9s
YUBpbnRlbC5jb20+Ow0KPiA+ID4gPiA+ID4gPiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnOw0KPiA+ID4gPiA+ID4gPiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+
ID4gPiA+ID4gQ2M6IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+ID4g
PiA+ID4gPiBTdWJqZWN0OiBSRTogW1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5OiBTa2lwIGdlbmVy
aWMgcGlwZQ0KPiA+ID4gPiA+ID4gPiBkcGxsX2h3X3N0YXRlIGNvbXBhcmUgb24gTFQgUEhZDQo+
ID4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+ID4gU3ViamVjdDogW1BBVENIXSBkcm0vaTkxNS9k
aXNwbGF5OiBTa2lwIGdlbmVyaWMgcGlwZQ0KPiA+ID4gPiA+ID4gPiA+IGRwbGxfaHdfc3RhdGUg
Y29tcGFyZSBvbiBMVCBQSFkNCj4gPiA+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gPiA+IExUIFBI
WSBQTEwgcmVhZG91dCBpcyBvbmx5IHBhcnRpYWxseSByZWxpYWJsZSwgYW5kIHRoZSBMVA0KPiA+
ID4gPiA+ID4gPiA+IFBIWSBjb2RlIGFscmVhZHkgZG9jdW1lbnRzIHRoYXQgb25seSBhIHN1YnNl
dCBvZiB0aGUgc3RhdGUNCj4gPiA+ID4gPiA+ID4gPiBjYW4gYmUgcmVhZCBiYWNrIHJlbGlhYmx5
IGFmdGVyIHBvd2VyIGdhdGluZy4NCj4gPiA+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gPiA+IFRo
ZSBnZW5lcmljIHBpcGUtc3RhdGUgdmVyaWZpY2F0aW9uIGNvbXBhcmVzIGRwbGxfaHdfc3RhdGUN
Cj4gPiA+ID4gPiA+ID4gPiBhcyBwYXJ0IG9mIGludGVsX3BpcGVfY29uZmlnX2NvbXBhcmUoKSwg
d2hpY2ggY2FuIHRyaWdnZXINCj4gPiA+ID4gPiA+ID4gPiBmYWxzZS1wb3NpdGl2ZSAicGlwZSBz
dGF0ZSBkb2Vzbid0IG1hdGNoISIgd2FybmluZ3Mgb24gTFQNCj4gPiA+ID4gPiA+ID4gPiBQSFkN
Cj4gPiA+IHBsYXRmb3Jtcy4NCj4gPiA+ID4gPiA+ID4gPiBEUExMLXNwZWNpZmljIHZlcmlmaWNh
dGlvbiBhbHJlYWR5IGV4aXN0cyB2aWENCj4gaW50ZWxfZHBsbF9zdGF0ZV92ZXJpZnkoKS4NCj4g
PiA+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gPiA+IFNraXAgdGhlIGdlbmVyaWMgZHBsbF9od19z
dGF0ZSBwaXBlLXN0YXRlIGNvbXBhcmUgb24gTFQNCj4gPiA+ID4gPiA+ID4gPiBQSFkgcGxhdGZv
cm1zIGFuZCByZWx5IG9uIHRoZSBkZWRpY2F0ZWQgRFBMTCB2ZXJpZmljYXRpb24gcGF0aA0KPiBp
bnN0ZWFkLg0KPiA+ID4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTog
TWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiA+ID4gPiA+ID4gPiAtLS0N
Cj4gPiA+ID4gPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgfCA4ICsrKysrKy0tDQo+ID4gPiA+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA2IGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4gPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+
ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMNCj4gPiA+ID4gPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jDQo+ID4gPiA+ID4gPiA+ID4gaW5kZXggMmZhMTBmODU4Mjc5Li44NWFkMmJj
NDk2M2QgMTAwNjQ0DQo+ID4gPiA+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+ID4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4gPiA+ID4gPiA+IEBAIC01
Mzc0LDggKzUzNzQsMTIgQEAgaW50ZWxfcGlwZV9jb25maWdfY29tcGFyZShjb25zdA0KPiA+ID4g
PiA+ID4gPiA+IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjdXJyZW50X2NvbmZpZywNCj4gPiA+
ID4gPiA+ID4gPiAgCWlmIChkaXNwbGF5LT5kcGxsLm1ncikNCj4gPiA+ID4gPiA+ID4gPiAgCQlQ
SVBFX0NPTkZfQ0hFQ0tfUChpbnRlbF9kcGxsKTsNCj4gPiA+ID4gPiA+ID4gPg0KPiA+ID4gPiA+
ID4gPiA+IC0JLyogRklYTUUgY29udmVydCBldmVyeXRoaW5nIG92ZXIgdGhlIGRwbGxfbWdyICov
DQo+ID4gPiA+ID4gPiA+ID4gLQlpZiAoZGlzcGxheS0+ZHBsbC5tZ3IgfHwgSEFTX0dNQ0goZGlz
cGxheSkpDQo+ID4gPiA+ID4gPiA+ID4gKwkvKg0KPiA+ID4gPiA+ID4gPiA+ICsJICogTFQgUEhZ
IFBMTCByZWFkb3V0IGlzIG9ubHkgcGFydGlhbGx5IHJlbGlhYmxlIGFuZCB0aGUgUExMDQo+IHN0
YXRlDQo+ID4gPiA+ID4gPiA+ID4gKwkgKiBpcyBhbHJlYWR5IHZlcmlmaWVkIHZpYSBpbnRlbF9k
cGxsX3N0YXRlX3ZlcmlmeSgpLiBBdm9pZCBmYWxzZQ0KPiA+ID4gPiA+ID4gPiA+ICsJICogcG9z
aXRpdmVzIGZyb20gdGhlIGdlbmVyaWMgcGlwZSBzdGF0ZSBjb21wYXJpc29uLg0KPiA+ID4gPiA+
ID4gPiA+ICsJICovDQo+ID4gPiA+ID4gPiA+ID4gKwlpZiAoKGRpc3BsYXktPmRwbGwubWdyIHx8
IEhBU19HTUNIKGRpc3BsYXkpKSAmJi4NCj4gPiA+ID4gPiA+ID4gPiAhSEFTX0xUX1BIWShkaXNw
bGF5KSkNCj4gPiA+ID4gPiA+ID4gPiAgCQlQSVBFX0NPTkZfQ0hFQ0tfUExMKGRwbGxfaHdfc3Rh
dGUpOw0KPiA+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gPiBpbnRlbF9sdF9waHlfcGxsX2NvbXBh
cmVfaHdfc3RhdGUgb25seSBjaGVja3MgdGhlIHJlbGlhYmxlDQo+ID4gPiA+ID4gPiA+IHN0YXRl
IGhlbmNlIHdlIGRvbuKAmXQgd2FudCB0byBhZGQgdGhpcyBoZXJlIGNvbmZpZyAwIGFuZA0KPiA+
ID4gPiA+ID4gPiBjb25maWcgMiBhcmUgZXhwZWN0ZWQgdG8gYmUgcmVsaWFibGUNCj4gPiA+ID4g
PiA+ID4NCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiBJZiB5b3UgYXJlIHNlZWluZyBwaXBlIHN0
YXRlIG1pc21hdGNoIG9uIGVpdGhlciBvZiB0aGVzZSBWRFINCj4gPiA+ID4gPiA+IHJlZ2lzdGVy
cyB0aGVuIGl04oCZcyBhIGlzc3VlIHdoZXJlIFBIWSBpcyBub3QgZ2l2aW5nIHVzZQ0KPiA+ID4g
PiA+ID4gY29ycmVjdCB2YWx1ZSBzaW5jZSB0aGVzZSB0d28NCj4gPiA+ID4gPiByZWdpc3RlciBt
dXN0IGFic29sdXRlbHkgYmUgcmV0YWluZWQgYnkgTFQgUEhZLg0KPiA+ID4gPiA+DQo+ID4gPiA+
ID4gVGhpcyBlcnJvciBzaG93ZWQgdXAgd2l0aCBUQlQgbW9uaXRvciB3aGljaCB5aWVsZHMgZW1w
dHkgc3RhdGVzDQo+ID4gPiA+ID4gZm9yIGZvdW5kIGFuZCBleHBlY3RlZCBzdGF0ZXMuIFNpbmNl
IHdlIGNoZWNrIGluDQo+ID4gPiA+ID4gdmVyaWZ5X3NpbmdsZV9kcGxsX3N0YXRlKCkgZnVuY3Rp
b24gUExMIHN0YXRlIHdpdGgNCj4gPiA+ID4gPiAuY29tcGFyZV9od19zdGF0ZSBob29rIEkgdGhp
bmsgd2Ugd291bGRuJ3QgbmVlZCB0byBjaGVjayB0aGUgUExMDQo+IHN0YXRlIGhlcmUuDQo+ID4g
PiA+DQo+ID4gPiA+IFNvIC5jb21wYXJlX2h3X3N0YXRlIHdvdWxkIGNhbGwgaW50ZWxfbHRfcGh5
X3BsbF9jb21wYXJlX2h3X3N0YXRlDQo+ID4gPiA+IFdoaWNoIG1lYW5zIGZvciB0YnQgbW9kZSBp
dCB3b3VsZCByZXR1cm4gZWFybHkgYW55d2F5cy4gU28gd2UNCj4gPiA+ID4gYWdhaW4gd29udA0K
PiA+ID4gcmVxdWlyZSB0aGlzIGNoZWNrLg0KPiA+ID4gPg0KPiA+ID4gPiBXZSBhbHJlYWR5IGhh
dmUgdGhpcyBiaXQgb2YgY29kZSBhcyBJIG1lbnRpb25lZCBhYm92ZSBpbiB0aGUNCj4gPiA+ID4g
ZnVuY3Rpb24NCj4gPiA+ID4NCj4gPiA+ID4gaWYgKGEtPnRidF9tb2RlIHx8IGItPnRidF9tb2Rl
KQ0KPiA+ID4gPiAgICAgICAgICAgICAgICAgcmV0dXJuIHRydWU7DQo+ID4gPiA+DQo+ID4gPiBJ
dCBsb29rcyBsaWtlIHdlIG1heSBiZSB2ZXJpZnlpbmcgUExMIHN0YXRlIHR3aWNlIGluDQo+IGlu
dGVsX21vZGVzZXRfdmVyaWZ5X2NydGMoKS4NCj4gPiA+DQo+ID4gPiB2ZXJpZnlfY3J0Y19zdGF0
ZSgpIC0+IGludGVsX3BpcGVfY29uZmlnX2NvbXBhcmUoKSBkb2VzDQo+ID4gPiBQSVBFX0NPTkZf
Q0hFQ0tfUExMKGRwbGxfaHdfc3RhdGUpLCB3aGljaCBpcyBhIGdlbmVyaWMgY29tcGFyZSBhbmQN
Cj4gPiA+IGRvZXMgbm90IHNlZW0gdG8gYWNjb3VudCBmb3IgdGhlIExUIFBIWS9UQlQgc3BlY2lh
bCBjYXNlLg0KPiA+DQo+ID4gU28gUElQRV9DT05GX0NIRUNLX1BMTCAgaGFzIHRoZSBmb2xsb3dp
bmcgY29kZSAjZGVmaW5lDQo+ID4gUElQRV9DT05GX0NIRUNLX1BMTChuYW1lKSBkbyB7IFwNCj4g
PiAgICAgaWYgKCFpbnRlbF9kcGxsX2NvbXBhcmVfaHdfc3RhdGUoZGlzcGxheSwgJmN1cnJlbnRf
Y29uZmlnLT5uYW1lLCBcDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICZwaXBlX2NvbmZpZy0+bmFtZSkpIHsgXA0KPiA+ICAgICAgICAgLi4uDQo+ID4gICAgIH0gXA0K
PiA+IH0gd2hpbGUgKDApDQo+ID4NCj4gPiBib29sIGludGVsX2RwbGxfY29tcGFyZV9od19zdGF0
ZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfZHBsbF9od19zdGF0ZSAqYSwNCj4gPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfZHBsbF9o
d19zdGF0ZSAqYikNCj4gPiB7DQo+ID4gICAgIGlmIChkaXNwbGF5LT5kcGxsLm1ncikNCj4gPiAg
ICAgICAgIHJldHVybiBkaXNwbGF5LT5kcGxsLm1nci0+Y29tcGFyZV9od19zdGF0ZShhLCBiKTsN
Cj4gPiAgICAgLi4uDQo+ID4gfQ0KPiA+DQo+ID4gQW5kIGNvbXBhcmVfaHdfc3RhdGUgY2FsbHMN
Cj4gPg0KPiA+IHN0YXRpYyBib29sIHhlM3BscGRfY29tcGFyZV9od19zdGF0ZShjb25zdCBzdHJ1
Y3QgaW50ZWxfZHBsbF9od19zdGF0ZQ0KPiAqX2EsDQo+ID4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9kcGxsX2h3X3N0YXRlDQo+ID4gKl9i
KSB7DQo+ID4gICAgIHJldHVybiBpbnRlbF9sdF9waHlfcGxsX2NvbXBhcmVfaHdfc3RhdGUoJl9h
LT5sdHBsbCwgJl9iLT5sdHBsbCk7DQo+ID4gfQ0KPiA+DQo+ID4gSGVuY2UgaXQgaXMgbm90IGdl
bmVyaWMgY29kZSBpdCBnZXRzIGRpcmVjdGVkIHRvIExUIFBIWSBwb3J0aW9uIG9mIGNvZGUuDQo+
ID4gSWYgeW91IGFyZSBzdGlsbCBzZWVpbmcgYSBtaXNtYXRjaCBtZWFucyBzb21lb25lIGlzIG5v
dCBzZXR0aW5nIHRoZQ0KPiA+IHRidF9tb2RlLiBUaGF0IHdvdWxkIGJlIHRoZSByb290IGNhdXNl
IG9mIGFueSBtaXNtYXRjaCB3ZSBzZWUgd2hpY2ggaXMNCj4gPiB3aHkgcmVtb3ZpbmcgdGhlIENP
TkZfQ0hFQ0tfUExMKCkgaXNu4oCZdCB0aGUgY29ycmVjdCB3YXkgdG8gZ28NCj4gPg0KPiA+IFJl
Z2FyZHMsDQo+ID4gU3VyYWogS2FuZHBhbA0KPiA+DQo+IA0KPiBXZSBlbmQgdXAgY2FsbGluZyBp
bnRlbF9sdF9waHlfcGxsX2NvbXBhcmVfaHdfc3RhdGUoKSBmcm9tIGJvdGgNCj4gdmVyaWZ5X2Ny
dGNfc3RhdGUoKSBhbmQgaW50ZWxfZHBsbF9zdGF0ZV92ZXJpZnkoKS4gVGhlIG9ubHkgZGlmZmVy
ZW5jZSB0aGF0IEkNCj4gc3BvdHRlZCB3YXMgdGhhdCBpbiB2ZXJpZnlfc2luZ2xlX2RwbGxfc3Rh
dGUoKSB3ZSByZWFkb3V0IHRoZSBIVyBzdGF0ZSB3aGljaA0KPiBzZXRzIHRoZSB0YnRfbW9kZS4g
TWF5YmUgdGhhdCBnaXZlcyBhIGhpbnQgd2h5IHRoZSBidWcgd2FzIGZpeGVkIGJ5IHRoaXMNCj4g
cHJvcG9zZWQgcGF0Y2guDQo+IA0KPiBpbnRlbF9tb2Rlc2V0X3ZlcmlmeV9jcnRjDQo+IOKUnOKU
gOKUgCB2ZXJpZnlfY3J0Y19zdGF0ZQ0KPiDilIIgICDilJTilIDilIAgaW50ZWxfcGlwZV9jb25m
aWdfY29tcGFyZQ0KPiDilIIgICAgICAg4pSU4pSA4pSAIFBJUEVfQ09ORl9DSEVDS19QTEwoZHBs
bF9od19zdGF0ZSkNCj4g4pSCICAgICAgICAgICDilJTilIDilIAgaW50ZWxfZHBsbF9jb21wYXJl
X2h3X3N0YXRlDQo+IOKUgiAgICAgICAgICAgICAgIOKUlOKUgOKUgCBkaXNwbGF5LT5kcGxsLm1n
ci0+Y29tcGFyZV9od19zdGF0ZQ0KPiDilIIgICAgICAgICAgICAgICAgICAg4pSU4pSA4pSAIHhl
M3BscGRfY29tcGFyZV9od19zdGF0ZQ0KPiDilIIgICAgICAgICAgICAgICAgICAgICAgIOKUlOKU
gOKUgCBpbnRlbF9sdF9waHlfcGxsX2NvbXBhcmVfaHdfc3RhdGUNCj4g4pSU4pSA4pSAIGludGVs
X2RwbGxfc3RhdGVfdmVyaWZ5DQo+ICAgICDilJTilIDilIAgdmVyaWZ5X3NpbmdsZV9kcGxsX3N0
YXRlDQo+ICAgICAgICAg4pSU4pSA4pSAIGRwbGxfbWdyLT5jb21wYXJlX2h3X3N0YXRlDQo+ICAg
ICAgICAgICAgIOKUlOKUgOKUgCB4ZTNwbHBkX2NvbXBhcmVfaHdfc3RhdGUNCj4gICAgICAgICAg
ICAgICAgIOKUlOKUgOKUgCBpbnRlbF9sdF9waHlfcGxsX2NvbXBhcmVfaHdfc3RhdGUNCg0KUmln
aHQgc28gSSB0aGluayB0aGUgaXNzdWUgaXMgd2UgYXJlIG5vdCB1c2luZyB0aGUgY29ycmVjdCBo
dyBzdGF0ZSB0byBjaGVjayB0YnRfbW9kZSBzbyB5b3UgbmVlZCB0byBmaW5kIG91dCBob3cgd2Ug
bWFrZSBzdXJlIHdlIGFyZSB1c2luZyB0aGUgY29ycmVjdCBwbGwgc3RhdGUgZm9yIHZlcmlmaWNh
dGlvbg0KUmF0aGVyIHRoYW4ganVzdCBieXBhc3NpbmcgdmVyaWZ5IGNvbXBhcmUgc3RhdGUgYWx0
b2dldGhlcg0KDQpSZWdhcmRzLA0KU3VyYWogS2FuZHBhbA0KDQo+IA0KPiAtTWlrYS0NCj4gDQo+
ID4gPg0KPiA+ID4gQWZ0ZXIgdGhhdCwgaW50ZWxfbW9kZXNldF92ZXJpZnlfY3J0YygpIGFsc28g
Y2FsbHMNCj4gPiA+IGludGVsX2RwbGxfc3RhdGVfdmVyaWZ5KCksIHdoaWNoIGZvciBMVCBQSFkg
Z29lcyB0aHJvdWdoIHRoZQ0KPiA+ID4gLmNvbXBhcmVfaHdfc3RhdGUgaG9vayBhbmQgdGhlcmVm
b3JlIGFscmVhZHkgYXBwbGllcyB0aGUgcGxhdGZvcm0tDQo+IHNwZWNpZmljIGhhbmRsaW5nLg0K
PiA+ID4NCj4gPiA+IEJlY2F1c2Ugb2YgdGhhdCwgSSB3b25kZXIgaWYgdGhlIGdlbmVyaWMgUExM
IHN0YXRlIGNvbXBhcmUgaXMgcmVhbGx5DQo+ID4gPiBuZWVkZWQgaW4gdGhpcyBjYXNlLiBBdCB0
aGUgdmVyeSBsZWFzdCwgaXQgd291bGQgc2VlbSB0aGF0DQo+ID4gPiBQSVBFX0NPTkZfQ0hFQ0tf
UExMKCkgc2hvdWxkIGFsc28gaGFuZGxlIHRoZSBUQlQgY2FzZSBleHBsaWNpdGx5IGFuZA0KPiA+
ID4gcmV0dXJuIGVhcmx5IGluIHRoYXQgY2FzZSwgaW4gdGhlIHNhbWUgd2F5IGFzIHRoZSBMVCBQ
SFktc3BlY2lmaWMNCj4gLmNvbXBhcmVfaHdfc3RhdGUgcGF0aCBkb2VzLg0KPiA+ID4NCj4gPiA+
IC1NaWthLQ0KPiA+ID4NCj4gPiA+ID4gUmVnYXJkcywNCj4gPiA+ID4gU3VyYWogS2FuZHBhbA0K
PiA+ID4gPg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gLU1pa2EtDQo+ID4gPiA+ID4NCj4gPiA+ID4g
PiA+DQo+ID4gPiA+ID4gPiBSZWdhcmRzLA0KPiA+ID4gPiA+ID4gU3VyYWogS2FuZHBhbA0KPiA+
ID4gPiA+ID4NCj4gPiA+ID4gPiA+ID4gUmVnYXJkcywNCj4gPiA+ID4gPiA+ID4gU3VyYWogS2Fu
ZHBhbA0KPiA+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+ID4gIAlQ
SVBFX0NPTkZfQ0hFQ0tfWChkc2lfcGxsLmN0cmwpOw0KPiA+ID4gPiA+ID4gPiA+IC0tDQo+ID4g
PiA+ID4gPiA+ID4gMi40My4wDQoNCg==
