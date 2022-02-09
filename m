Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AC14AF6D9
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 17:36:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEAB489F2A;
	Wed,  9 Feb 2022 16:36:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B05F89F2A
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 16:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644424600; x=1675960600;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=f3lejf7hKEMfgpPo7z5WIa7Mgzn+CzlLKPyYiMKZ9ZQ=;
 b=inTUejMtYPct2EZKC5RknUHsfKMpBKzV4oRjGdR4DWEHIii5xtGDROQN
 TAlQKnqmj0pNCZdgWUqXT0AJPity9zSoq6lPtDjr3fsYK5u7j0nEWp9gR
 A3fSv9i7dvOG0JEYU7JBiY0CNFs8WE68CE7tQb8etP0ZIqTBZXGj4dIHK
 3xkW06QnGAdqOZphEaeWf+oWRbL/RvOC/8Zl++Offdbvvy6epC5gS7xaH
 UsJJL/Z4detEJb/18gcJt0HTnQQ8hsb/QWZFWDGe9NE3d+qc8/42zS/Bi
 yh1c5mx683jUK6ZKGC9SYLnpUICUprG8qRzk21q/P7LYctxwJgSK8S1DS Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="249193335"
X-IronPort-AV: E=Sophos;i="5.88,356,1635231600"; d="scan'208";a="249193335"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 08:36:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,356,1635231600"; d="scan'208";a="482384561"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga003.jf.intel.com with ESMTP; 09 Feb 2022 08:36:39 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 9 Feb 2022 08:36:38 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 9 Feb 2022 08:36:38 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 9 Feb 2022 08:36:38 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 9 Feb 2022 08:36:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W56uOknPxUNFt/hEF7fpZsN4/yEwtpbXawznAssMBP9ArY3lsAUVanRKXOhvz5O4gP2CXh6xDz1kqUrsU26AGiA63VPi/cTfFNzrRT/h+eXp0dYgj2Krxkks6ufcTO2ifAoBFDcgLBQHV4xDA1Mdl9crfFgdpLmZczMHPbnNng1Ir9nMsNUu0ikvSBap6kEGyhG6nmGHzydhrlVtyF84AHJxawpZDoJj/hi2pCRJD5lqOQtBzEqNPI7lncQTKIKm7KxVjTpukXbVkqC2+gEpGdo9kBmfHwJ/78+vsp6lAUqrcqkXBwUsANQEPS/1Djfu75Ui68bh9uHq5dfXPlAZqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f3lejf7hKEMfgpPo7z5WIa7Mgzn+CzlLKPyYiMKZ9ZQ=;
 b=Fk/Nl+aOzjvTBaLsE/3POZkwmoRbY51YE7C6jUH388y5bOSqRQgRQKJV6Ypiz+iIs0ITu4/6lZ4eLEPSPcPkKOYFt85R/dPhczYMUd8VlTnYGYWJGdXM59eWIjqonzYzlAMoeyk61laiXUlQUxjLi1tdnQolmG3VTCSlfSBn8NuIPSU7lHrfbKIFhbQ1f3AMrWqnF4+T/r4SNjFQlRJvYicYQjjGf2KZYX+w5wwog4dsZADkHddy27MLwsqhtH4CihCKAqWeErDp1iwl4iDGs6UXxBIBdPMAXtlEGGc2j3ljjXG1TBooQzR4kYKSwJL0s9J0jZSkSu5KYesKcRdCkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BYAPR11MB2568.namprd11.prod.outlook.com (2603:10b6:a02:c6::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4951.17; Wed, 9 Feb 2022 16:36:36 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::5111:3415:4fc0:3deb]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::5111:3415:4fc0:3deb%6]) with mapi id 15.20.4975.011; Wed, 9 Feb 2022
 16:36:36 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 7/7] drm/i915: Consolidate all pre plane
 update vblank waits
Thread-Index: AQHYHak97lSvw5iKbUyS54MuNXcNzayLad7g
Date: Wed, 9 Feb 2022 16:36:36 +0000
Message-ID: <DM6PR11MB3177EBB0D4FA51413642ADCFBA2E9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220209113526.7595-1-ville.syrjala@linux.intel.com>
 <20220209113526.7595-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20220209113526.7595-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 413e5bc6-a948-48c7-6504-08d9ebea56e9
x-ms-traffictypediagnostic: BYAPR11MB2568:EE_
x-microsoft-antispam-prvs: <BYAPR11MB2568BC1111881A2D29DC58D9BA2E9@BYAPR11MB2568.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9fAbTFsIrmyjRENnlgZJ5AmJw4fhBhjqb+LQT2ooY3nAO0OkqBY8PfR//zOP34F4IVccEjFCMBTX49GJ7hAi/KJpFvDfP0SrFKD0lJROSKMdgT4EPhE6cOncVS/upWSzdrzUX/CB3Uy0VLZV6geGz4E3f3ogG3qdWA/EgfCdXvyzABHyEm6VFmKwwuXNsqIM6K6+lQIhIIZKIbAMqjYvRf16DeanNov2zZ64i2QAFnetJSp51mKD5YoGPLH9YFxcP/dwPwoed6enwJYlSrUfKazM5DltZ00uysFQAX8cNH+SnFXqDcpI+tBe3XfLp0xH24dpa9X+KR+O7gsnYLu2t6mij8y11ZwKxScFXIowZbyc7V7cQVBHZr7aEKCbv6CstRjO0tJUUYzSTDJbB7i7oPrV1fVTHjKfs2XRnaH1v6Fy2guJLAPub1c9rIpqqbbWw0gq7Rlw2hX1Gj3Yyo4ZuzzNckEe7Ud11GVWmNP8aGLwnS844fAqBoeHTjHtyHRMcqqVDqjJmz6FWEL7DQ5vtzfL/bUd4YkcYEV4m4QTz5IsdHZUijAONFC0X6cRCy0y175VKHK0oM7/wjxlTOKtffa1VN2MBZdAVqiawKpR7KY+Lf89Z/gJaE9HXOaZh/6oKWM9Js1mEGCABGt7oEWbtraHKjD+mphImPvYv+XyaeBfB4JKrYaGLz3jznoH1ztNRRy5EgUuiydTpBv6LpSqcg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(508600001)(9686003)(122000001)(86362001)(5660300002)(38070700005)(38100700002)(82960400001)(26005)(33656002)(53546011)(4744005)(186003)(2906002)(15650500001)(76116006)(66574015)(83380400001)(316002)(110136005)(55016003)(66946007)(66556008)(55236004)(7696005)(52536014)(8936002)(66446008)(66476007)(71200400001)(8676002)(64756008)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QmtIbnhJU1RlQ3pCdGx2MzJBeVRwVFJZaFBnV1FpUnMwYzhwMHJ3SHlndEUx?=
 =?utf-8?B?ZVBiZ0ZIamhxNWVQOUV0c0NGNHJwVXdFV0pkNkNNRExhU05XN1BOQWNLYW9W?=
 =?utf-8?B?b2V2N3ViQVQ3U3NvdzlnRmlHN2M4aHFpZjMrdEhEamtHMWpPWWtBbXpaWWx3?=
 =?utf-8?B?SUNoNmRwTUxIL3NER1lQOXZ4aFIzQis2eUFaSFIvSENMenVKMER2SE5ocTBt?=
 =?utf-8?B?dVJRZnRDZXVhRG5LeVhLajI1TnR4SVZjUEZjWUZnZmc5UmlOOXFGTW5hZkRZ?=
 =?utf-8?B?Qi9jV3JtdTZqZkIybGVIVzh4RkZZSlZTSW1LNS9IZkNwTFgvanJBNzAzK0d5?=
 =?utf-8?B?S1Z0RERab1NiYitTK0lXMUFBRzB2NGZiZGlPZEthQ1lsTGNUNFFsMWJ0U0U0?=
 =?utf-8?B?VEpzUXFBMXBXa0dWeVEvV0dsM1N0aWxjZ1lRNEk5MWVISzE0elJRRXpVb0Rh?=
 =?utf-8?B?NlNXa1ZtWkRyWXFNdm1Mb2pLUUdmTVdIeWdnNDBGd1Q2RUEwNEMzQldtdWM1?=
 =?utf-8?B?dWxvankzY0w5SEdLQkpHeXc3dlFyOU5VOURRMnRlTVBEQ0EvREo0eFFjVy9o?=
 =?utf-8?B?RnByVEtNTHJ3bDd6TWRJZ3hyVDQrL2VCaEExOUR5bzNjZ1ZpWnVCZE1sODNh?=
 =?utf-8?B?QVRvbkszNVdpL2ZtUlpha0ZGTVZURFphdE00SnpnQVZNb0FUQi9YQzFsdE9I?=
 =?utf-8?B?S1huT0k4cUlicmVVT1V4Si9uMzJwcGRSRGp3R0xqNlVhMTlwN2t1dVBoRkxt?=
 =?utf-8?B?aEVJNHBCeXpMZ2VCajROOHZPa1pGbHNSUHVlM1Ezc3F1eGlVZG1WV3NWUzZT?=
 =?utf-8?B?cjV1cTY1SkEyZ0RzbHRCWVVyQVZRSlRjakRMaXphZ2JQMXAyWDNtZGtCRDhw?=
 =?utf-8?B?bW91Q0E0UE1IWjlDL0U0b0w3RXQvTzBIUFo3amdVVEhWM0RUOEZubURPVWNa?=
 =?utf-8?B?a2tmYzI0b0dad0xyb29WTG1ub011Nnc3Q2F2MWpma2JObi9oeEFHMVpVSnpm?=
 =?utf-8?B?WkNjdWNGeXJPRUw3YVhFczBqNUhJRVlpTG5XbTgrNnVOWnNUZ0tPbmJnUCtl?=
 =?utf-8?B?cTljMTVJdXpIc2JaVjBqWnJmb1VIb0wweW1wem1tbDhXMVRIQUxIN3pBYTJD?=
 =?utf-8?B?VDFDL1RFSXVyNFlCK1d4T2dseFNJbnA1a1ZhY0NQQk8xeERWOU50eWdlNlFj?=
 =?utf-8?B?QTNrYU5hSTdtMEQvMktFb1cyK3RIcEU3eWdRUjljczMxNWF0bVNRak9ER1dy?=
 =?utf-8?B?STNCTjBnaUx6UHhGTElvYjdoNmtibGllVFVieVBzV0dUL1pTSGpyTGlWM2I3?=
 =?utf-8?B?VUdIcmVZQnFReXJNbFRNeXduSmtjOWV4QTFDTDZRNVg3UkV6ek5JWnFNVU9o?=
 =?utf-8?B?VTBOSVo4ZU5aME5IUSt4Z0doUWJKZGpPdUpjMnJuam5tVFpGRy9BaUtkTUxR?=
 =?utf-8?B?M0xhWGEwMktoVnhhRmJ6LzFYZ0YwWWdPRS9IWk1jaXBKdlVzZGRORXpzVnc3?=
 =?utf-8?B?a2M4VzVKbHgyOWJQSlNVbSthbGhFRStiTHJFWEZCRDVka2k3SGFkQWlWcjZa?=
 =?utf-8?B?TG5hMEhlcmQwRmkyU2ZHTHVJTnZ1YUxKcENuZHZMZnZWOTNLdTVOMlczRkdR?=
 =?utf-8?B?L0J0bmVGNm9qbUhxTVpxQTY5K05NZHVMY0E2SXUwSzRYcWYvd1NBaWNRNHJi?=
 =?utf-8?B?TWdVSFgvYTNucTVyOCswQ1VxMjZDalNmRlBFU3dnTWV0akNyNVhNNklIanhv?=
 =?utf-8?B?R0U3SEs2NmdobVJ0TzVUb2NoL1VQUnZ6VnkxaWJ5S2lyZXRGTlBEV0xPZEZv?=
 =?utf-8?B?QTlQOGcxMkhDN2tqbVQ4WjBRVnRGdjhMQlVxVXZIaUNqQXZJTGdYQUxlWElu?=
 =?utf-8?B?NWxwSFNDeDVuelQ5VG8yUkk2ZkVCWjd6MXNwaWx6RFhSSzJIOWkycHZhcGlG?=
 =?utf-8?B?VWFJeUZzejlsSmVFa2N2TmxnOWdWZnlPQ2pwNWtndWVRS0NlTHhVSkx2bi9a?=
 =?utf-8?B?cFpNaTQ1UXNkRnl1T05PQjRuTVlsczFudVZzc014cTdMVjIyUGQ4WnBNa1g0?=
 =?utf-8?B?NjNBQVRQSU1uWXo3d2pEV282R3Irazd2YUVsY1hTT2c5RTB0dk1TUis1V3lV?=
 =?utf-8?B?QTNUQk81Wks0ODlmUTAwckNJbW9Qdnk1NkwxZjhrVEJyQlJrVGNMa1BUUlRS?=
 =?utf-8?Q?+C2HhVPWxi9TdFQqGbfvWSU=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 413e5bc6-a948-48c7-6504-08d9ebea56e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2022 16:36:36.1553 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iNHaTPddLr24zp/FR3+BX9vW4btgTS6a4ywExH03eYwdMZIIYkg4Bl8Yv2Fyugspt89JxlKtG8xgURrcGe5Igg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2568
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915: Consolidate all pre plane
 update vblank waits
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgRmVicnVhcnkgOSwgMjAyMiA1OjA1IFBNDQo+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1n
ZnhdIFtQQVRDSCA3LzddIGRybS9pOTE1OiBDb25zb2xpZGF0ZSBhbGwgcHJlIHBsYW5lIHVwZGF0
ZQ0KPiB2Ymxhbmsgd2FpdHMNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBUaGVyZSBhcmUgc2V2ZXJhbCByZWFzb25zIHdo
eSB3ZSBtaWdodCBoYXZlIHRvIGRvIGEgdmJsYW5rIHdhaXQgYmV0d2Vlbg0KPiBzb21lIG9mIHRo
ZSBwcmVfcGxhbmVfdXBkYXRlKCkgc3RlcHMgYW5kIHRoZSBhY3R1YWwgcGxhbmUgdXBkYXRlLg0K
PiBDdXJyZW50bHkgd2UgZG8gYSB2Ymxhbmsgd2FpdCBmb3IgZWFjaCBvZiB0aG9zZSBpbmRpdmlk
dWFsbHkuIExldCdzIGNvbnNvbGlkYXRlDQo+IHRoaW5ncyBzbyB0aGF0IHdlIGp1c3QgZG8gYSBz
aW5nbGUgdmJsYW5rIHdhaXQgYXQgdGhlIGVuZCBvZiB0aGUNCj4gcHJlX3BsYW5lX3VwZGF0ZSgp
IHN0ZXAuDQo+IA0KPiBOb3RlIHRoYXQgSSBkb24ndCB0aGluayB3ZSBzaG91bGQgYmUgaGl0dGlu
ZyBtdWx0aXBsZSB2Ymxhbmsgd2FpdHMgaGVyZQ0KPiBjdXJyZW50bHksIGF0IGxlYXN0IGluIG1v
c3QgY2FzZXMuIEJ1dCBubyByZWFsIHJlYXNvbiB0aGF0IGNvdWxkbid0IGhhcHBlbiBpbg0KPiB0
aGUgZnV0dXJlIHdoZW4gc29tZSBuZXcgZmVhdHVyZXMvd29ya2Fyb3VuZHMgYXJlIGludHJvZHVj
ZWQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPg0KPiAtLS0NCg0KUmV2aWV3ZWQtYnk6IEFydW4gUiBNdXJ0aHkgPGFy
dW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KDQoNClRoYW5rcyBhbmQgUmVnYXJkcywNCkFydW4gUiBN
dXJ0aHkNCi0tLS0tLS0tLS0tLS0tLS0tLS0tDQo=
