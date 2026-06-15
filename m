Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RerbDtuKL2qWCAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 07:17:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 773D56836A2
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 07:17:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=WNxvAGMn;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DF2C10E1AE;
	Mon, 15 Jun 2026 05:17:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DFF910E1A2;
 Mon, 15 Jun 2026 05:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781500630; x=1813036630;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wEacbvtvUEBQu8YZHzz1EZLcFfCBjQwq2NSkjT9own4=;
 b=WNxvAGMniqHRQnOxjBXCGCS2StdDsssI94jswQVtHklOBQj3l/4Rlw5T
 M3UCu/6fPBPLDNmtx+BY0/EmpNyBfyqZnsSLQf1U1U3/I93tRPJVv9tja
 XS5rGfLwLZM23IK01OAuMoUb1BAxYRkCy21Xh11fbIMRrdEgUkLF5tZC0
 /3zp21ricbuWiAtSWvkUPSp1ihpnXLpP001pD7zQ+b15IyP4x56H9p4A+
 HnWSTKuSqo/txA6zLfFx/MOQA1KGnv/TWwZ8eWjrcTtHP9yrzDbItT0LU
 8i/2YsM9jRcwO1QUqKwPg1Fjr5Zqts65Hl85prs/XsE8gJMU/4nnWgX1f g==;
X-CSE-ConnectionGUID: RW9zFPO/TSefDg7CT0fhCg==
X-CSE-MsgGUID: HLS3vAeWTqOstqW3QA+//Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="107663065"
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="107663065"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 22:17:10 -0700
X-CSE-ConnectionGUID: zFct2CVXRRG819zlvePNlA==
X-CSE-MsgGUID: 3f2ihX+eTmiStiK+789Mag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="247460489"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 22:17:11 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 22:17:09 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 14 Jun 2026 22:17:09 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.14) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 22:17:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dMEiu4g45lInVNl9nw9372Hjb268V0iYQZpnxJ8uDQ2FX8AdH3wxxRDy5nDXgk5lKUdad9mTnQPECAuAsnncLNpd6PaNoK7j5/m4Tc3m+qRr6HaVEwor8E24XCvj45YoP6qnH9uWYcn71Hx7KTdhQBML6ovdulhdjLihYSn886qdowibU+/7X9RKZuA2QhFfA3M4W9lyDcsuqGk0/mHWLnrZtOYtpaJ+EGbGZyxjnuNeXzB+gNZzLxdY+m3a9G8Ua0C4ZaDYH5V+sz+GTLZvc9ofOJGMte6zQvJSUiLuLw+7t3gqk9UcPhnu08GtJTkvEyo25gCqPBAOmYc90pMSKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wEacbvtvUEBQu8YZHzz1EZLcFfCBjQwq2NSkjT9own4=;
 b=avujys6vl09ylcO5hFYRNAlFIVLKXjw0a3GtfNeKFVE++VUCVV61NXHjP50syYAQYigQImDcZty+WmpiJxBjaM26zt0CKgtuHxvJIMefq+JBlmm1Uw4VVQg/bXcFG8+cqUneAUekNpTF5iiTI99kLFRE1TxFA4cmV64I/pyu2Xg+kUD6zuvqFrKKpuYqZA+ARGZKwBgj/lUT5jDt6TUQWTpPN+PJXXmC7ERUQKlYL748MzB0ItOCBzAdsb5SyL8GdRWV+52uIq4I3Z+Gfvv0nr79mU3/dEG8ubTlCF0uBeP8I7ic1UiIUkuXMsSXIksieFZXLLGafbOofTOKpL9ikg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by MW4PR11MB8290.namprd11.prod.outlook.com
 (2603:10b6:303:20f::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 05:17:06 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 05:17:06 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v7 8/8] drm/i915: override LT's VS/PE when requested
Thread-Topic: [PATCH v7 8/8] drm/i915: override LT's VS/PE when requested
Thread-Index: AQHc930O1FEforhln0C4qHYao+32IbY/HIWA
Date: Mon, 15 Jun 2026 05:17:06 +0000
Message-ID: <DS4PPFE901A304F4F142DEE72D21826DB17E3E62@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260608192821.3414590-1-michal.grzelak@intel.com>
 <20260608192821.3414590-9-michal.grzelak@intel.com>
In-Reply-To: <20260608192821.3414590-9-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|MW4PR11MB8290:EE_
x-ms-office365-filtering-correlation-id: 812dcc20-69c4-4e56-2d60-08deca9d579d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|38070700021|3023799007|6133799003|4143699003|11063799006|56012099006|22082099003|18002099003;
x-microsoft-antispam-message-info: QkvgqiyWscwQ3IPR2DD3Wt4IikduFQdEwtqEbjSeKMtpV6HSg4+0BLklpSkGXaJgL39oIuCBiEBT32HYB7oDHWhXZ80ALrATiOyFgXNM/H1fC/cJmIiSGXtHG4yWrv2fMy/EaM6JXKnWMxHsEkR6/m4l4GavTT6B/hnHMWZ+fiQ4ivGnIDuICjc6O1rOlIFhcMl+uRZg+BqBzfHqDqhSds79F3uVeMg720wxptbAYZMlOBg5pfuU1pAHeoHNL/VW3oHatZwFsaKHRUG97WHjlClLUrg96RGgzdr1wBjd8NXxJUslTgICj815aV/JRGMzwVq9XQqFc8+vf2cZmiz3UcBecvN72dJdrIEBD4N92UWcgDsrqwpauQJ9+ElvxgklLmZZoTD90wnrCzMTnxsj0TBgECNHmGlwW8tx4JUceGhMWS9NXH1qdIyJkoTLPx7LjR2v0NDJQGFKXLUDo77HC41OMsaHoZX8UwpCMPu0Xl/3qRg51wARz/olg+jmZfjd9YRkF+RWTuhAbYKj5z7NLmGBobQrXb06Fq0DF6bIZc8OfwpakNv5PkWd+urt/ec1dA3nDz29u5jCc0vPVJ9sefyr43ubW0+2Zc3OJyHMeVrb3olUgAy8WM4bI7eg3C1WN052+jZSWabO5Vg/5VronDTLqjt/CkJYL/qWhcqIYLyvCsrC89UrArv5ADPRq1BHP8eUAsyjfNpdYv0jvQT0epWLW5oKyCv+5pOXiw7bz/tsP8GrgB1Yb9Q7F5BzjBpE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(38070700021)(3023799007)(6133799003)(4143699003)(11063799006)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a0hpQU5wU0lFcldVV05vdlpLQVhoeGVSMXZzNU1YdHRmQVpqaGtKUVY3cVRn?=
 =?utf-8?B?QlEwTEYrLzV1U2JOV1BzcURqTXB3bHlvZk1ML3Frc2c3VDRkNHVxZzZUMG1I?=
 =?utf-8?B?M2hITHR0YzVheU9ZQmV6TjI4dnhlcWlFQTdORjVPN1pUd3FVOXdPaEVZYWFq?=
 =?utf-8?B?ZC93ZE1yck9UaFpYYXpmL2tYL09WeGlaaU04M1dZbGZBcUJDc002TTlQS2RT?=
 =?utf-8?B?ZWw4R0cxUkFBakJvdEs5NGNuK1NESHZxdXhWQzUrN0w2Z0llSVI1SW53aXhG?=
 =?utf-8?B?aStKOHVJOUkyT1MzSHpnWm1FRVRjb2J6YlQvdEo4OFh6Y1lpUU01WG52SUNw?=
 =?utf-8?B?N3Z0ZUdBMmZoRHFzN1lWZi9YQ2x3b2h3a0l0ZnhmdjlMM1p2bkpETTBtQVhz?=
 =?utf-8?B?NlJ3cjM4RGRhbjhUQm04Qi9yYXNuczNOTXFYV3M0TXYxMFQyczlQUnBGWS9Z?=
 =?utf-8?B?UlZTa2tDYnJCT2hQQVVyaEJJT2daY2VGN1pPazJKQm1wb1g3cG52SGdWT3Rv?=
 =?utf-8?B?U0RaTDJtVmV5Rllpa3hYVjRleXh4UGExUzF3Y2VOZ0l0YUZQRjc5UTJldjNq?=
 =?utf-8?B?cTN4bTc5UmlEa3crRWlpZllVV1FxSkxvTWIxMnJadW8zeWZkbGRyMiswY1lu?=
 =?utf-8?B?b1FOUHFkYzNWYmNYZ1pwZFArVE1ZZTdXcnRpRllRV1ovSVF3V2d2a2JQaTFN?=
 =?utf-8?B?N0czenphMVV5VDlxQ3V4ZjU5bkVQbmtWVWREckxhT0FpRVpQeWpZQnpyell3?=
 =?utf-8?B?L1ZnMlJiTjNOWW1iM28zYWlPUjhUVTZFb2hmMGpWVHJ0OUVUS3ViMlNPdU8z?=
 =?utf-8?B?cW1yR0oyR0lTMHF0MzZrZHlxcEFRWXpUVUVIakdiZ0N0TkNhdzJTc0pqM3lP?=
 =?utf-8?B?WlNEZFN3VUR0M3Y1MWVTb0JmZTAxQmNZejNkVmo3YkpINDA0V3JQVE9ONEJG?=
 =?utf-8?B?MTZUcEIvOS9WNVhvY3FUS3R2V3RKaUVBbSsyYUJoQnV2K0NTYUM0R0xsOUF4?=
 =?utf-8?B?ZVcrTEdRWlg2c1Ziek5aS3Z5QkwzaGZwRFlwKzBPZ3hPazN3blBwTU5BNUIw?=
 =?utf-8?B?aTRpalRUaExQdWhOczBDOElwb3pNSFBuYVM1M01lcU5aMGM1T1B6bVZ2SHJi?=
 =?utf-8?B?RTRobHhFNXZoVHRaNTE1OHBQNHZ5TXlKUVJVbmt6eWtEeHIzREdlcWZmenhr?=
 =?utf-8?B?QU1BaEQ1RG0yLzdRRkcwcU1HdWtoTmpaSi9Qc01OVUhjQiswNVlIRWJhMXRN?=
 =?utf-8?B?RU1lWXFydE9ISUtCVUNtOW9jaTNteC9yK3J1VGE2VC9seUlrQ1paRzcyZ3dI?=
 =?utf-8?B?aFZnZVpIK3N1VUdBVVByMjNvNk1HNDR5bno1ZDI1SjgyZXJrdTRMY05NbEV6?=
 =?utf-8?B?eTdEQUxLZzAyWFE5K0xaTFQySFlwSWJmbmp2UW1VRCs2VFAyZEcvbk1JV281?=
 =?utf-8?B?ODJmM21QKzlaeWJicFVSZDRuS2R3L3BtaWdpV1pYVTBoZGxweU1wS045Y1JB?=
 =?utf-8?B?dE5kTFBaZ21YcXJMeU9ZdDFaUk1lWlR5aUZtTndZbzA0RzRGTnB1MWY5V1Ra?=
 =?utf-8?B?TTlrZ2ZaYkkxcWN6QmZBWU91M1ZZUXczbzM5ZkRJRHFwWmJSbjlHVVl5Znd4?=
 =?utf-8?B?Y05JNUV4RGNpaU03NHd6RTBkNDFFbkJqVlB3VDU4SW05ZUVJNU9NenplRDFG?=
 =?utf-8?B?V2ZQMW5rVFdmZGttWWJua3AybzduQTg1c0M1Qk5QNlBWVFc1VUJFcnFiZy9H?=
 =?utf-8?B?ZnQvdy94cDk4c05hYlhKSnVmRnJUNjFwQU1wMVNXbzdFS0s1eTFrUVZFWGZH?=
 =?utf-8?B?dUdSTU1QbTZHK2o3OC9VODZ3alBWaFFtL0phSTRMU1pHN0cvQXBZYUJPNFZt?=
 =?utf-8?B?K2NlSkN4OVJVMTFqREpCb01xTk0yZHFpYm5wd1pHaW1rVlcwOWJkZ2Fvc1hl?=
 =?utf-8?B?Wnd6UXRmN2hYNURtOGVERnNtdDhHYW5jQ01TWVNGMXdQa1FVekdkVC9EeEc4?=
 =?utf-8?B?dWUrYjFpOVJqZUJYekZNMUxVWUtiMDlOWGJ5cThQVm1SWW4xcUVDMmJJckZ6?=
 =?utf-8?B?ZklEVUVjUUFUWlN3WERHUHZOT3MzTXRSMktpS2p1aFMyVjNSNHZmSGNDWlNl?=
 =?utf-8?B?d051UllQNVhiOGF4RUVEVDh4VHFQK1ZNRjY0cHBVOXhXeHVKRElnNk8xdWNK?=
 =?utf-8?B?NitRU1RxWTFURjB5YjRPQ0dxQnVaK0dwdHdwT0hKU2picDJXL3dNNVp4cW96?=
 =?utf-8?B?ekZlajI4WkRsWGt6cjVDcEU0cUpRRU95SGlFaVNHU2tQeGdGUXhaNExJVEFi?=
 =?utf-8?B?b1ZmeU1oN0ZlWnNwMUdQZGhVbW9xaUMzeHZjYlh2Q0FsaWZNZm1sZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: SilaG/VgxWlRNNjUTA1wIbmyowZx1Xg6ZKZK6JuS+oike7MvKgzCfJseQMtCMpZBECRyXyee9knwyJHPeMfUV81yyNbyD5Meu48yQkTw6/P/UWvCHEWeObdAiyTarlUoFrwF5SZ8h+Nk5+agCrtLYTpTKFKiTAFTLfOOTk/FCvezM4PaPq7t39zIH1/0v5OiCSx1gza7NaH7LzUcGPAvDBji4HJVG35lqtjFH8FFBNoNSXOqbRpTeO2tLj5HwEHaqfMoS68fgb5jJUWHh2sdtF99loLAqO4zw69wmQsVQmv5xNIIsh1KlP5J7RNKdLo4qoGiOC7fMGI+AiRNfDPByQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 812dcc20-69c4-4e56-2d60-08deca9d579d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 05:17:06.1703 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 51EuEoitJesJL7m91O9NCbuMfaLSFZMD8I4UTKH69do/pkfronElqMokdOEEYYlWrR00JjzNOFpgtGBldtOM7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8290
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime];
	RCPT_COUNT_THREE(0.00)[4];
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
X-Rspamd-Queue-Id: 773D56836A2

PiBTdWJqZWN0OiBbUEFUQ0ggdjcgOC84XSBkcm0vaTkxNTogb3ZlcnJpZGUgTFQncyBWUy9QRSB3
aGVuIHJlcXVlc3RlZA0KPiANCj4gQWRkIGFjY2Vzc29yIGZ1bmN0aW9uIGZvciBMVCB0byByZWFk
IHJlcXVlc3RlZCB0YWJsZSBmcm9tIFZCVCAjNTcuDQo+IFBhcnNlIHRoZSByZXF1ZXN0ZWQgdGFi
bGUgYW5kIHRyYW5zZm9ybSBkYXRhIGludG8gcG9ydCdzIGJ1ZmZlci4NCj4gDQo+IExUJ3MgVlMv
UEUtTyB0YWJsZXMgaGF2ZSBsZXNzIGNvbHVtbnMgdGhhbiB4ZTNwbHBkX2x0X3BoeV9idWZfdHJh
bnMNCj4gY29udGFpbnMgZmllbGRzLiBUaHVzIGNvcHkgdHhzd2luZyBhbmQgdHhzd2luZ19sZXZl
bCBmcm9tIGRlZmF1bHQgVlMvUEUNCj4gdmFsdWVzIG9udG8gVlMvUEUtTyB0YWJsZXMuDQoNCkkg
dGhpbmsgeW91IG5lZWQgdG8gbWVudGlvbiB0aGF0IHdpdGggTFQgUEhZIHdlIGFsc28gY29kZSBp
biB0aGUgdHhzd2luZyBhbmQNClR4c3dpbmdfbGV2ZWwgaW4gdG8gdGhlIFBIWSByZWdpc3RlcnMg
d2hpY2ggd2UgcHJldmlvdXNseSBkaWQgbm90LiB0eHN3aW5nIGFuZCB0eHN3aW5nX2xldmVsIHJl
bWFpbg0KVGhlIHNhbWUgYW5kIG5vIG1vZGlmaWNhdGlvbiBuZWVkcyB0byBiZSBkb25lIHRvIHRo
ZW0gbGlrZSB3ZSBkbyBpbiBjdXJzb3IgdmFsdWVzIHdlIGNhbiBqdXN0IGNvcHkgdGhlbSBvdmVy
DQpGcm9tIHRoZSBzdGF0aWMgdGFibGUgd2UgaGF2ZSBkZWZpbmVkLg0KDQpXaXRoIHRoYXQgZml4
ZWQgTEdUTSwNClJldmlld2VkLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVs
LmNvbT4NCg0KPiANCj4gVXNlIDZ0aCB0YWJsZSBpZiBlbmNvZGVyIHN1cHBvcnRzIERQIDIuMCBv
ciBoaWdoZXIuIE90aGVyd2lzZSB1c2UgNXRoIHRhYmxlIGZvcg0KPiBEUC4NCj4gDQo+IFRoZXJl
IGFyZSBubyBjaGFuZ2VzIHRvIGludGVsX2RkaV9kcF9sZXZlbCgpIHNpbmNlIHNlbGVjdGlvbiBv
ZiBjb3JyZWN0IHJvdyBvZg0KPiBpbnRlbF9kZGlfYnVmX3RyYW5zX2VudHJ5IGlzIHNhbWUgYXMg
d2hlbiBubyBvdmVycmlkZSByZXF1ZXN0IGhhcyBiZWVuDQo+IGRvbmUuDQo+IA0KPiBUYWJsZXMg
MS00IGFyZSBub3QgdXNlZCBhdCBhbGwgYW5kIGFyZSBtb3N0IGxpa2VseSB0byBiZSB6ZXJvZWQu
IDV0aCB0YWJsZSBpcw0KPiB1c2VkIGZvciBhbnkgbW9kZSBiZWxvdyBEUCAyLjAgKGV4Y2x1c2l2
ZSkuIDZ0aCB0YWJsZSBpcyB1c2VkIGZvciBhbnkgbW9kZQ0KPiBhYm92ZSBEUCAyLjAgKGluY2x1
c2l2ZSkuDQo+IA0KPiBJbmRpY2VzIGZvciBvdGhlciB0YWJsZXMgaGF2ZSBub3QgeWV0IGJlZW4g
b2JzZXJ2ZWQgdG8gYmUgdXNlZCBhcyBvZiBub3cuDQo+IA0KPiB2Ni0+djcNCj4gLSBoYW5kbGUg
VlMvUEUtTydzIFZCVCBkZXRhaWxzIGluIGludGVsX2Jpb3NfKiBmdW5jdGlvbnMgKEphbmkpDQo+
IC0gcmVtb3ZlIHZzcGVvJ3MgY2FzdCB0byAodm9pZCAqKSAoSmFuaSkNCj4gLSBjaGVjayBkZXZk
YXRhLT52c3BlbyBpZiBWUy9QRS1PIHdhcyByZXF1ZXN0ZWQNCj4gLSBjYWxsIGVuY29kZXItPmdl
dF9idWZfdHJhbnMoKSBvbmNlIChKYW5pKQ0KPiAtIHJldHVybiBOVUxMIGZyb20gaW50ZWxfYmlv
c19nZXRfKiB3aGVuIHVzaW5nIGRlZmF1bHQgKEphbmkpDQo+IC0gdmFsaWRhdGUgVlMvUEUtTyBp
biBpbnRlbF9iaW9zLmMgKEphbmkpDQo+IC0gaW5saW5lIHhlM3BscGRfbHRfZ2V0X3ZzcGVvX2J1
Zl90cmFucygpDQo+IC0gcmVtb3ZlIHRlbXBvcmFyaWx5IExUDQo+IA0KPiB2NS0+djYNCj4gLSBy
ZW1vdmUgZHJtX1dBUk5fT05DRSAoU3VyYWopDQo+IC0gcGFzcyBkZWZhdWx0IFZTL1BFIHRhYmxl
cyB0byBMVCdzIFZCVCBhY2Nlc3NvciAoU3VyYWopDQo+IC0gc2V0IHR4c3dpbmcgJiBfbGV2ZWwg
ZnJvbSBkZWZhdWx0IFZTL1BFIHRhYmxlcyAoU3VyYWopDQo+IC0gYWRkIGhlbHBlciBjaGVja2lu
ZyBpZiBWUy9QRS1PIGhhcyBiZWVuIGFsbG9jYXRlZCAoU3VyYWopDQo+IC0gY2hlY2sgaWYgZGV2
ZGF0YSBpcyBub3QgTlVMTA0KPiANCj4gdjQtPnY1DQo+IC0gYWRkIGlmLWxhZGRlciBpbnN0ZWFk
IG9mIGZ1bmN0aW9uIHBvaW50ZXINCj4gLSBibGVuZCBpbmRleCBjb21wdXRhdGlvbiB3aXRoIHRh
YmxlIHBhcnNpbmcNCj4gLSByZW1vdmUgV0FSTiBhbmQgZGVidWcgbWVzc2FnZXMNCj4gLSByZW1v
dmUgZW51bXMgZW50aXJlbHkNCj4gLSBhZGQgc3BhY2VzIGFyb3VuZCBvcGVyYXRvcnMgKFN1cmFq
KQ0KPiAtIHJlbW92ZSBzcGFjZXMgYWZ0ZXIgdHlwZSBjYXN0aW5nIChTdXJhaikNCj4gLSByZW1v
dmUgSU5URUxfRElTUExBWV9TVEFURV9XQVJOIChTdXJhaikNCj4gDQo+IHYzLT52NA0KPiAtIHN0
aWNrIHRvIHNvbGVseSBjaGFuZ2luZyBWQlQgZGF0YSBpbnRvIGN1cnJlbnQgc3RydWN0dXJlcyAo
SmFuaSkNCj4gLSBtb3ZlIGl0ZXJhdG9yIGRlY2xhcmF0aW9uIHRvIGRlY2xhcmF0aW9uIGJsb2Nr
IChTdXJhaikNCj4gDQo+IHYyLT52Mw0KPiAtIHJlbW92ZSB1bm5lY2Vzc2FyeSBicmFjZXMgZnJv
bSBpZiBibG9jayAoU3VyYWopDQo+IC0gcmV0dXJuIC1FSU5WQUwgaW5zdGVhZCBvZiAtMSAoU3Vy
YWopDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYcWCIEdyemVsYWsgPG1pY2hhbC5ncnplbGFr
QGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Jpb3MuYyAgICAgfCA0MyArKysrKysrKysrKysrKysrKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaCAgICAgfCAgNCArKw0KPiAgLi4uL2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5jICAgIHwgIDQgKy0NCj4gIDMgZmlsZXMgY2hhbmdl
ZCwgNTAgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gaW5kZXggM2IwZjMwZWE3MTM1Li5iOWMx
NjhkN2U0ZTYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYmlvcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlv
cy5jDQo+IEBAIC0zODcyLDYgKzM4NzIsNDkgQEAgdmFsaWRhdGVfdnNwZW8oY29uc3Qgc3RydWN0
DQo+IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRhLCBib29sIGhhc19kcCkNCj4gIAly
ZXR1cm4gdHJ1ZTsNCj4gIH0NCj4gDQo+ICtjb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFu
cyAqDQo+ICtpbnRlbF9iaW9zX2dldF9sdF92c3Blbyhjb25zdCBzdHJ1Y3QgaW50ZWxfYmlvc19l
bmNvZGVyX2RhdGEgKmRldmRhdGEsDQo+ICsJCQljb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90
cmFucyAqYnVmX3RyYW5zLA0KPiArCQkJYm9vbCBoYXNfZHAsIGJvb2wgaXNfdWhicikNCj4gK3sN
Cj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheTsNCj4gKwl1bmlvbiBpbnRlbF9kZGlf
YnVmX3RyYW5zX2VudHJ5ICplbnRyaWVzOw0KPiArCWludCBudW1fY29sdW1ucywgbnVtX3Jvd3Ms
IGxldmVsLCBpZHg7DQo+ICsJc3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgKnZzcGVvOw0KPiAr
CWNvbnN0IHUzMiAqdGFibGVzOw0KPiArCXNpemVfdCBvZmZzZXQgPSAwOw0KPiArDQo+ICsJaWYg
KCF2YWxpZGF0ZV92c3BlbyhkZXZkYXRhLCBoYXNfZHApKQ0KPiArCQlyZXR1cm4gTlVMTDsNCj4g
Kw0KPiArCWRpc3BsYXkgPSBkZXZkYXRhLT5kaXNwbGF5Ow0KPiArCWVudHJpZXMgPSAodm9pZCAq
KXZzcGVvLT5lbnRyaWVzOw0KPiArCXRhYmxlcyA9IGRpc3BsYXktPnZidC52c3Blby50YWJsZXM7
DQo+ICsJbnVtX2NvbHVtbnMgPSBkaXNwbGF5LT52YnQudnNwZW8ubnVtX2NvbHVtbnM7DQo+ICsJ
bnVtX3Jvd3MgPSBkaXNwbGF5LT52YnQudnNwZW8ubnVtX3Jvd3M7DQo+ICsJaWR4ID0gaXNfdWhi
ciA/IDUgOiA0Ow0KPiArDQo+ICsJb2Zmc2V0ICs9IGlkeCAqIG51bV9yb3dzICogbnVtX2NvbHVt
bnM7DQo+ICsNCj4gKwlmb3IgKGxldmVsID0gMDsgbGV2ZWwgPCBudW1fcm93czsgbGV2ZWwrKykg
ew0KPiArCQl1OCB0eHN3aW5nID0gYnVmX3RyYW5zLT5lbnRyaWVzW2xldmVsXS5sdC50eHN3aW5n
Ow0KPiArCQl1OCB0eHN3aW5nX2xldmVsID0gYnVmX3RyYW5zLT5lbnRyaWVzW2xldmVsXS5sdC50
eHN3aW5nX2xldmVsOw0KPiArCQl1MzIgbWFpbl9jdXJzb3IgPSB0YWJsZXNbb2Zmc2V0XTsNCj4g
KwkJdTMyIHByZV9jdXJzb3IgPSB0YWJsZXNbb2Zmc2V0ICsgMV07DQo+ICsJCXUzMiBwb3N0X2N1
cnNvciA9IHRhYmxlc1tvZmZzZXQgKyAyXTsNCj4gKw0KPiArCQllbnRyaWVzW2xldmVsXS5sdC50
eHN3aW5nID0gdHhzd2luZzsNCj4gKwkJZW50cmllc1tsZXZlbF0ubHQudHhzd2luZ19sZXZlbCA9
IHR4c3dpbmdfbGV2ZWw7DQo+ICsJCWVudHJpZXNbbGV2ZWxdLmx0Lm1haW5fY3Vyc29yID0gbWFp
bl9jdXJzb3I7DQo+ICsJCWVudHJpZXNbbGV2ZWxdLmx0LnByZV9jdXJzb3IgPSBwcmVfY3Vyc29y
Ow0KPiArCQllbnRyaWVzW2xldmVsXS5sdC5wb3N0X2N1cnNvciA9IHBvc3RfY3Vyc29yOw0KPiAr
DQo+ICsJCW9mZnNldCArPSBudW1fY29sdW1uczsNCj4gKwl9DQo+ICsNCj4gKwlyZXR1cm4gdnNw
ZW87DQo+ICt9DQo+ICsNCj4gIGNvbnN0IHN0cnVjdCBpbnRlbF9kZGlfYnVmX3RyYW5zICoNCj4g
IGludGVsX2Jpb3NfZ2V0X2MyMF92c3Blbyhjb25zdCBzdHJ1Y3QgaW50ZWxfYmlvc19lbmNvZGVy
X2RhdGEgKmRldmRhdGEsDQo+ICAJCQkgYm9vbCBoYXNfZHAsIGJvb2wgaXNfdWhicikNCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5oDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgNCj4gaW5kZXggYzU1NzY1
YTk0NTk0Li5lOGM4MmYxZTg3NmYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYmlvcy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYmlvcy5oDQo+IEBAIC03Myw2ICs3MywxMCBAQCBib29sIGludGVsX2Jpb3NfZ2V0
X2RzY19wYXJhbXMoc3RydWN0IGludGVsX2VuY29kZXINCj4gKmVuY29kZXIsICBjb25zdCBzdHJ1
Y3QgaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKg0KPiBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YV9s
b29rdXAoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGVudW0gcG9ydA0KPiBwb3J0KTsN
Cj4gDQo+ICtjb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqDQo+ICtpbnRlbF9iaW9z
X2dldF9sdF92c3Blbyhjb25zdCBzdHJ1Y3QgaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRh
dGEsDQo+ICsJCQljb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqYnVmX3RyYW5zLA0K
PiArCQkJYm9vbCBoYXNfZHAsIGJvb2wgaXNfdWhicik7DQo+ICBjb25zdCBzdHJ1Y3QgaW50ZWxf
ZGRpX2J1Zl90cmFucyAqDQo+ICBpbnRlbF9iaW9zX2dldF9jMjBfdnNwZW8oY29uc3Qgc3RydWN0
IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRhLA0KPiAgCQkJIGJvb2wgaGFzX2RwLCBi
b29sIGlzX3VoYnIpOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaV9idWZfdHJhbnMuYw0KPiBpbmRleCBiNjJjZTU4YjliZGMuLjdmY2NiMjFmOWU4
OSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlf
YnVmX3RyYW5zLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGlfYnVmX3RyYW5zLmMNCj4gQEAgLTE4NjgsNyArMTg2OCw5IEBAIGNvbnN0IHN0cnVjdCBpbnRl
bF9kZGlfYnVmX3RyYW5zDQo+ICppbnRlbF9kZGlfYnVmX3RyYW5zX2dldChzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqDQo+ICAJaXNfdWhiciA9IGludGVsX2RwX2lzX3VoYnIoY3J0Y19zdGF0ZSk7DQo+
ICAJcG9ydF9jbG9jayA9IGNydGNfc3RhdGUtPnBvcnRfY2xvY2s7DQo+IA0KPiAtCWlmIChESVNQ
TEFZX1ZFUihkaXNwbGF5KSA+PSAxNCkgew0KPiArCWlmIChIQVNfTFRfUEhZKGRpc3BsYXkpKSB7
DQo+ICsJCWJ1Zl90cmFucyA9IGludGVsX2Jpb3NfZ2V0X2x0X3ZzcGVvKGRldmRhdGEsIGJ1Zl90
cmFucywNCj4gaGFzX2RwLCBpc191aGJyKTsNCj4gKwl9IGVsc2UgaWYgKERJU1BMQVlfVkVSKGRp
c3BsYXkpID49IDE0KSB7DQo+ICAJCWlmIChpbnRlbF9lbmNvZGVyX2lzX2MxMHBoeShlbmNvZGVy
KSkNCj4gIAkJCWJ1Zl90cmFucyA9IGludGVsX2Jpb3NfZ2V0X2MxMF92c3BlbyhkZXZkYXRhLA0K
PiBoYXNfZHAsIHBvcnRfY2xvY2ssIGhhc19lZHApOw0KPiAgCQllbHNlDQo+IC0tDQo+IDIuNDUu
Mg0KDQo=
