Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 144617E030D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 13:36:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34A2C10E0B4;
	Fri,  3 Nov 2023 12:36:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BA3F10E0B4
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 12:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699014999; x=1730550999;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VFY++dwNYXpNoyVKLKdLjpUmTsGLpfHPaDCB8fMmbyw=;
 b=Yll98o9/VywLQGDOItdFWOPp37EuXXTeehZ11emMmIcRwzJfDuOwqL2t
 xAsGNqfRak6y+JoKRGHoakLhBc1w673WTa6byOWZ1QSKBNeLl4ju6iBx0
 QZhu74DAMJmafj8/6ATB61mSieFYSIHEO2/sICC9iWgexWDtPxli59pfm
 Wd3VIr+PTIYnTOMX6cfzWTMhskZcO0bFZiyZBkDTvl27k/4U3XLrXTpCE
 NDdxKxxUmileZwx25ggxpBNW1naTe+l8/sdCdGnlmf8sETh03wFWmAdM6
 zeQGymcjRzY7QhuCFvwaX7s1uCtPxOrHRaotIixf97A+P57+5xGfX4Uve A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="1814792"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; 
   d="scan'208";a="1814792"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 05:36:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; 
   d="scan'208";a="9367367"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Nov 2023 05:36:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 3 Nov 2023 05:36:38 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 3 Nov 2023 05:36:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 3 Nov 2023 05:36:37 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 3 Nov 2023 05:36:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GPCInEYoZ8fqoA7MwwkuIlsIT+WtEcSvZrFR4zNgaMJA9h/UWOf1vfGmBbCsizaBQCW9r6a3gCXFm6c3QwkCsL5YP5oIXa9Amr5P5nYg72BvPCtDKQ7dG3mjzDet5KzkLNxaoYzTnYxB5T9FNiLK22vOMBIbOPbo3De1jU3MK/YQ+Zp7QJqnlU0E+gmUX3NJ6rZb2/PNjwyvoDYp6MQ8J+xEgixigRpXCKoX3UyWfi3RTYM/w5b3n24Kjrps5W1cSr2Rfltv6Wh41p47eTc8u3WmlQps8jVp2s2hmMvgKkIGFC1Bu4e3MayNxRPgLeOCksxlOJ9OUGAspvx8tKZSeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VFY++dwNYXpNoyVKLKdLjpUmTsGLpfHPaDCB8fMmbyw=;
 b=c1aRzsGbHlE85iau/N5XCKFS/s6S9H/9hEUoLr2QzTCzSuURUb80PWYxNqNcYWgsCAqMxNQuM8F8k8LwJGHzDAC4blYzU+G6q+/2knAIpMgCBl3tLbLh00OA/kr2cUXR5tiUxWFPWNXId8J6VH52Uqb0I45OyCa8iCQuQKpaJ0GYLY5iJv+wosnsfph+BeAdhtj1zykoPHqQDnFvnyg7ncp4RdBGZXj+0mv518t1NLgamHSPnvcBral5IkeziETeOmls66x9agaYLCvmF2qXsYFOApDkbTPY5UUaVlxz3TJLu3dvkHdGGEYbdJD0YxJMf+i7fYPAulVydtwkZcFqLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.21; Fri, 3 Nov
 2023 12:36:26 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca35:a0cf:9a74:f348]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca35:a0cf:9a74:f348%6]) with mapi id 15.20.6954.019; Fri, 3 Nov 2023
 12:36:26 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/mtl: C20 state verification
Thread-Index: AQHaDMxzEhBMg/fuU0mSvVSuwwtu17BoiuqA
Date: Fri, 3 Nov 2023 12:36:26 +0000
Message-ID: <MW4PR11MB7054AE75E522423D68C7061BEFA5A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231101140501.160582-1-mika.kahola@intel.com>
In-Reply-To: <20231101140501.160582-1-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|IA1PR11MB6266:EE_
x-ms-office365-filtering-correlation-id: dbe8dc51-77ea-44fa-9d18-08dbdc697efa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eDZlFOvDyZZn6ypQi9fcsdc5T/Px/cjFqkZJ+T4ydkjYkbapIeug3oDF61R1v2xG7SF1t6X0uqI8I+OWBdbrOY4eE+BBKqJvtesqR6Q16B2H9Sui2SzsVoBM9N/iTI7na7rsT5tvSD1A47MfmRmw8AEsuNYXBdSOII71MDItuiUdfnm5NJo5CAewnkXrPP9TpaHg2mLyLOWGmnblAIUmKz4F85SnYeom88tFxrQmKvkT1XznLuwWUTSQCMpqNr3Wcy8mehnPd+f+bR9O/r4o+8s7FIe+UySerMxxWXaoLh4xIrOBSGDzQgLkG19gGPFY0XpVp1JZMCIedstAfxsIm0174Y8+UiKKRm++R7IoIRW8XAoo8YPcx2B2bqA+QmLTDalc4OU3TwVwXn+mh9k1MrCugKTGYC/kTBvIAJRg4O6/tZUn2M2SY315jBNixf2OO0mv1tINIAJwmt+Fb9DqyOiOsJoHIJKwTZCi9O5vAL0XP7haNtYeRN1BTkqQzmpx9iXZM7Eenr03f/sbEdQoNR+BHMCNkgQ6N8nfze/Fa0Wr8xZTWwwo/X9URIHl9Duur0GnY5XwhS+HDvWCRLdFKlNl263XFkzqyUNM5XXqXlzvKCk9Bmt49ea/B8AeiFym
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(366004)(376002)(39860400002)(396003)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(122000001)(82960400001)(86362001)(33656002)(38070700009)(55016003)(71200400001)(53546011)(15650500001)(2906002)(478600001)(41300700001)(4326008)(8676002)(316002)(52536014)(6916009)(6506007)(9686003)(7696005)(8936002)(5660300002)(26005)(107886003)(83380400001)(66446008)(66946007)(76116006)(66556008)(66476007)(38100700002)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RFpVL0U2ZXF1NUdVak5yd2F1bFVHZ1VYTEp6Q1JIOTAyNFR5eEp4WkNVNG9v?=
 =?utf-8?B?Y05DT0FrVThSVE5hcmIrMmVjbWFRLzYvaGgxQ1RBRkZFcU9mNTR0YkI3cGRB?=
 =?utf-8?B?ejZDTkQvNHFFS2xWQUYwNWJUUXlxakJ3WWczTExkMFhDQjduaUlJTUp5ZC9S?=
 =?utf-8?B?VzlvQmFobUJYWGs1QkZid0V6V0JTdFc3K2tFeSt1UGVOWUNUZlBac3FtZm5i?=
 =?utf-8?B?M1BaZ3BOd0ZqRHV4dDlZQ2k0SUhZM0hQYkhvWGR0NzBRK0RZWDNHUmRQZGdS?=
 =?utf-8?B?VENsVWkySSt5L3NnNUNLOFJJSndwc1ROQ3RXVU5KY280WHpQaitaMDhsWEdP?=
 =?utf-8?B?NTVyMUkxTXhBQVkvQ3Uzc1c0S3JGanMxbmlaV21pQnBkZE1OTmdRVTVQT3Ir?=
 =?utf-8?B?OWFlVHJaa3UyWjZYTlRQN3lsUDB6czBYZ0IwdWxwWlNPZXFEYVJvSUpUSVFT?=
 =?utf-8?B?WEt5RE9haUMxZ2VTQW83MkJRdjEwSG9jUVp2UGkzeS9BZnZnZE1tRFlzMWhX?=
 =?utf-8?B?Q3FFOXNlbUVJUXVIMERCeTUzVERzVWlHeEJEQThXYjZxdjNBcElTeTAzcGpH?=
 =?utf-8?B?aHNWeGlGRlpVOGpjaC95aWhlcmsyMzdzNzd0eFVBeC9oQUR3SUxjZkJ0OEN6?=
 =?utf-8?B?ZEEzZVd5T2xaTGVadmFheUVBOWFuYkFMNHM3LzNyUEFLY3h1MnhaK2IyL1hw?=
 =?utf-8?B?b2ZVbXVWa1dEdFl2b2EwN3NXeklTVjNpdG9pVzVaMnlvaTNsLzBKaUVXamNv?=
 =?utf-8?B?ei9sakRPWjIxQStVRUNIRnFJS3hES1VkMDFUWmRBUmJ2TVNnVno0Vkd3Q2FP?=
 =?utf-8?B?V29IVzJLbjBUbU5pNkgxSjV6YzZLZFlLdE9RbWdIRWhodUlGM21vcXNWYU0x?=
 =?utf-8?B?UDZKNThvV2dtblpONDh2RVI4UXkrZEQwaGtMZ3NQb09SR1V4Z0o0dXJPYUxo?=
 =?utf-8?B?WnVjTUgvMWpncUtUUnk3SlN4eGFGclQ5eUZXc3dCVHB3UUJsWXhrOVJOcFRK?=
 =?utf-8?B?cndoSFY1YnkxSDNZMVdoQkRER2oxczVxZ1gwNldacWJtYjdYb3l0QXVsRXhT?=
 =?utf-8?B?ZWk0emNMRWs5QVg2R2UzT0tVZFBvaEFUOEh4V2V5SWlrRlJjdkFEalJUY1Ru?=
 =?utf-8?B?K0YzeGxKcFcxbDQyYkVhclc2UWJtSTFzQzg5ZjJDa3krdUhwMDUvMkh5N1I2?=
 =?utf-8?B?Y3g2Z0JCNlZXaDg5Tlo1VVdWZENLQTNlQUJxOWpaTGhRd3RrYnlBTUZLSW51?=
 =?utf-8?B?VU1qR25FNVJhdWp2TEE4WFlIM29SRElVRWYzZW94TGVCMXJWV1RRQWpnY2FO?=
 =?utf-8?B?M1BhL2dwK0xXSlZEcWpINk5NRHJGVjc4SlU2eXVKdUdNWFpsZHNFSkNsQzJD?=
 =?utf-8?B?WllxTVdKcEV2NUJYMFEveENXaFZMNkNHaXJVanVRYmpvWlYwbFlOYmh5c3M3?=
 =?utf-8?B?WCtkK1NodGNzdzR3ZlNtTENoamFYUEt3YXRFN24xb2R4bExRMUR5NlVZWklu?=
 =?utf-8?B?M1p6UTYxMzFqdDVUc1FacTFadlByb2Irb3dLTlBlbDhSd0J2endMdFdRTmV2?=
 =?utf-8?B?cFY4VFV1TE9rTklpRlhvK2lidFgzd1RkUmFxd1JHazk2ZlBXeVlyM2orWkI2?=
 =?utf-8?B?Nzc2Y0J0dXVXSHFhdGExYlM1NGxTSHVqdWtiR2lEb0lsL05kUjRrcWpTN1h0?=
 =?utf-8?B?SGFwVkpLM0liWFVrUGRuZlFOVHpwRGFJYkVLS1pET2F3TVBYekxKenYvMDcz?=
 =?utf-8?B?TGRCQXVLdjF2Yk9zNmlvMVVFR2xJZElFRkd4N1A1YUh5REVweHVzOGQyNHA2?=
 =?utf-8?B?WEhTS0UzVUROcytiUGpSRldBcTVWNFZMRTd1cVFpNDlTV0hneHNKaUhzWDUx?=
 =?utf-8?B?QzUxRDhxb3lPZDVOazd0anRWa29sNWYvZlZINkdGczMzQ0twTUlYcEg5VTZH?=
 =?utf-8?B?Mk1XREFQLy9RSVdvU3ZRSVl0b252M1FndFJ1YWpJbUlxWFRsTEI1blJNZTJv?=
 =?utf-8?B?a1Y1azJiNTZRR2xraXIreDc2a0pSTVlSUjliaXpnRmlXZjBrQVByb1ZpS09M?=
 =?utf-8?B?VGxpQysycU1DSHJRUUNLSm9XYzhhY0tIT3V4Y0JYQlpud05Uc2JHdWljbFND?=
 =?utf-8?Q?8PmKcUbN5ZYHAjYGjaIkoQ/2/?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbe8dc51-77ea-44fa-9d18-08dbdc697efa
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2023 12:36:26.2876 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 52JLujtbicxPdxr0n1Rb5M+uv85XRJw2E3+C+7zTlqOzCdu194N4Hek/1htR32ESRJlhjshNMKlx5RVhMespjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6266
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: C20 state verification
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

UGxlYXNlIGlnbm9yZSB0aGlzIHBhdGNoLiBUaGVyZSBpcyBhIGJ1ZyBpbiB0aGUgcGF0Y2ggdGhh
dCBJIHN0aWxsIG5lZWQgdG8gZml4Lg0KDQpUaGFua3MhDQoNCi1NaWthLQ0KDQo+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50
ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIE5vdmVtYmVyIDEsIDIwMjMgNDowNSBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogU291c2EsIEd1c3Rhdm8g
PGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPjsgS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRl
bC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSF0gZHJtL2k5MTUvbXRsOiBDMjAgc3RhdGUgdmVyaWZp
Y2F0aW9uDQo+IA0KPiBBZGQgc3RhdGUgdmVyaWZpY2F0aW9uIGZvciBDMjAgYXMgd2UgaGF2ZSBv
bmUgZm9yIEMxMC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9s
YUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jeDBfcGh5LmMgIHwgMTExICsrKysrKysrKysrKysrLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmggIHwgICAyICstDQo+ICAuLi4vZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9tb2Rlc2V0X3ZlcmlmeS5jICAgfCAgIDIgKy0NCj4gIDMgZmlsZXMgY2hh
bmdlZCwgODggaW5zZXJ0aW9ucygrKSwgMjcgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiBpbmRleCBiMmFkNGM2MTcy
ZjYuLjY1NGU5MWRlYjdlOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jeDBfcGh5LmMNCj4gQEAgLTMwMTcsMzUgKzMwMTcsMTUgQEAgaW50ZWxfbXRsX3Bv
cnRfcGxsX3R5cGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJCXJldHVybiBJ
Q0xfUE9SVF9EUExMX0RFRkFVTFQ7DQo+ICB9DQo+IA0KPiAtdm9pZCBpbnRlbF9jMTBwbGxfc3Rh
dGVfdmVyaWZ5KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAtCQkJICAgICAg
IHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiArc3RhdGljIHZvaWQgaW50ZWxfYzEwcGxsX3N0
YXRlX3ZlcmlmeShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqc3RhdGUsDQo+ICsJCQkJ
ICAgICAgc3RydWN0IGludGVsX2NydGMgKmNydGMsDQo+ICsJCQkJICAgICAgc3RydWN0IGludGVs
X2VuY29kZXIgKmVuY29kZXIpDQo+ICB7DQo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7DQo+IC0JY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlID0NCj4gLQkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0
Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsNCj4gIAlzdHJ1Y3QgaW50ZWxfYzEwcGxsX3N0YXRl
IG1wbGxiX2h3X3N0YXRlID0ge307DQo+IC0JY29uc3Qgc3RydWN0IGludGVsX2MxMHBsbF9zdGF0
ZSAqbXBsbGJfc3dfc3RhdGUgPSAmbmV3X2NydGNfc3RhdGUtPmN4MHBsbF9zdGF0ZS5jMTA7DQo+
IC0Jc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7DQo+IC0JZW51bSBwaHkgcGh5Ow0KPiAr
CWNvbnN0IHN0cnVjdCBpbnRlbF9jMTBwbGxfc3RhdGUgKm1wbGxiX3N3X3N0YXRlID0NCj4gKyZz
dGF0ZS0+Y3gwcGxsX3N0YXRlLmMxMDsNCj4gIAlpbnQgaTsNCj4gDQo+IC0JaWYgKERJU1BMQVlf
VkVSKGk5MTUpIDwgMTQpDQo+IC0JCXJldHVybjsNCj4gLQ0KPiAtCWlmICghbmV3X2NydGNfc3Rh
dGUtPmh3LmFjdGl2ZSkNCj4gLQkJcmV0dXJuOw0KPiAtDQo+IC0JLyogaW50ZWxfZ2V0X2NydGNf
bmV3X2VuY29kZXIoKSBvbmx5IHdvcmtzIGZvciBtb2Rlc2V0L2Zhc3RzZXQgY29tbWl0cyAqLw0K
PiAtCWlmICghaW50ZWxfY3J0Y19uZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKSAmJg0KPiAt
CSAgICAhaW50ZWxfY3J0Y19uZWVkc19mYXN0c2V0KG5ld19jcnRjX3N0YXRlKSkNCj4gLQkJcmV0
dXJuOw0KPiAtDQo+IC0JZW5jb2RlciA9IGludGVsX2dldF9jcnRjX25ld19lbmNvZGVyKHN0YXRl
LCBuZXdfY3J0Y19zdGF0ZSk7DQo+IC0JcGh5ID0gaW50ZWxfcG9ydF90b19waHkoaTkxNSwgZW5j
b2Rlci0+cG9ydCk7DQo+IC0NCj4gLQlpZiAoIWludGVsX2lzX2MxMHBoeShpOTE1LCBwaHkpKQ0K
PiAtCQlyZXR1cm47DQo+IC0NCj4gIAlpbnRlbF9jMTBwbGxfcmVhZG91dF9od19zdGF0ZShlbmNv
ZGVyLCAmbXBsbGJfaHdfc3RhdGUpOw0KPiANCj4gIAlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0la
RShtcGxsYl9zd19zdGF0ZS0+cGxsKTsgaSsrKSB7IEBAIC0zMDkxLDMgKzMwNzEsODQgQEAgaW50
IGludGVsX2N4MHBsbF9jYWxjX3BvcnRfY2xvY2soc3RydWN0DQo+IGludGVsX2VuY29kZXIgKmVu
Y29kZXIsDQo+IA0KPiAgCXJldHVybiBpbnRlbF9jMjBwbGxfY2FsY19wb3J0X2Nsb2NrKGVuY29k
ZXIsICZwbGxfc3RhdGUtPmMyMCk7ICB9DQo+ICsNCj4gK3N0YXRpYyB2b2lkIGludGVsX2MyMHBs
bF9zdGF0ZV92ZXJpZnkoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnN0YXRlLA0KPiAr
CQkJCSAgICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiArCQkJCSAgICAgIHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyKSB7DQo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsNCj4gKwlzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0
YXRlIG1wbGxfaHdfc3RhdGUgPSB7fTsNCj4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0
YXRlICptcGxsX3N3X3N0YXRlID0gJnN0YXRlLT5jeDBwbGxfc3RhdGUuYzIwOw0KPiArCWJvb2wg
dXNlX21wbGxhOw0KPiArCWludCBpOw0KPiArDQo+ICsJaW50ZWxfYzIwcGxsX3JlYWRvdXRfaHdf
c3RhdGUoZW5jb2RlciwgJm1wbGxfaHdfc3RhdGUpOw0KPiArDQo+ICsJdXNlX21wbGxhID0gaW50
ZWxfYzIwX3VzZV9tcGxsYShtcGxsX2h3X3N0YXRlLmNsb2NrKTsNCj4gKwlpZiAodXNlX21wbGxh
KSB7DQo+ICsJCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKG1wbGxfc3dfc3RhdGUtPm1wbGxh
KTsgaSsrKSB7DQo+ICsJCQl1OCBleHBlY3RlZCA9IG1wbGxfc3dfc3RhdGUtPm1wbGxhW2ldOw0K
PiArDQo+ICsJCQlJOTE1X1NUQVRFX1dBUk4oaTkxNSwgbXBsbF9od19zdGF0ZS5tcGxsYVtpXSAh
PSBleHBlY3RlZCwNCj4gKwkJCQkJIltDUlRDOiVkOiVzXSBtaXNtYXRjaCBpbiBDMjBNUExMQTog
UmVnaXN0ZXJbJWRdIChleHBlY3RlZCAweCUwMngsIGZvdW5kDQo+IDB4JTAyeCkiLA0KPiArCQkJ
CQljcnRjLT5iYXNlLmJhc2UuaWQsIGNydGMtPmJhc2UubmFtZSwgaSwNCj4gKwkJCQkJZXhwZWN0
ZWQsIG1wbGxfaHdfc3RhdGUubXBsbGFbaV0pOw0KPiArCQl9DQo+ICsJfSBlbHNlIHsNCj4gKwkJ
Zm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUobXBsbF9zd19zdGF0ZS0+bXBsbGIpOyBpKyspIHsN
Cj4gKwkJCXU4IGV4cGVjdGVkID0gbXBsbF9zd19zdGF0ZS0+bXBsbGJbaV07DQo+ICsNCj4gKwkJ
CUk5MTVfU1RBVEVfV0FSTihpOTE1LCBtcGxsX2h3X3N0YXRlLm1wbGxiW2ldICE9IGV4cGVjdGVk
LA0KPiArCQkJCQkiW0NSVEM6JWQ6JXNdIG1pc21hdGNoIGluIEMyME1QTExCOiBSZWdpc3Rlclsl
ZF0gKGV4cGVjdGVkIDB4JTAyeCwgZm91bmQNCj4gMHglMDJ4KSIsDQo+ICsJCQkJCWNydGMtPmJh
c2UuYmFzZS5pZCwgY3J0Yy0+YmFzZS5uYW1lLCBpLA0KPiArCQkJCQlleHBlY3RlZCwgbXBsbF9o
d19zdGF0ZS5tcGxsYltpXSk7DQo+ICsJCX0NCj4gKwl9DQo+ICsNCj4gKwlmb3IgKGkgPSAwOyBp
IDwgQVJSQVlfU0laRShtcGxsX3N3X3N0YXRlLT50eCk7IGkrKykgew0KPiArCQlJOTE1X1NUQVRF
X1dBUk4oaTkxNSwgbXBsbF9od19zdGF0ZS50eFtpXSAhPSBtcGxsX3N3X3N0YXRlLT50eFtpXSwN
Cj4gKwkJCQkiW0NSVEM6JWQ6JXNdIG1pc21hdGNoIGluIEMyME1QTEwlczogUmVnaXN0ZXIgVFhb
JWldIChleHBlY3RlZCAweCUwMngsIGZvdW5kIDB4JTAyeCkiLA0KPiArCQkJCWNydGMtPmJhc2Uu
YmFzZS5pZCwgY3J0Yy0+YmFzZS5uYW1lLA0KPiArCQkJCXVzZV9tcGxsYSA/ICJBIiA6ICJCIiwN
Cj4gKwkJCQlpLA0KPiArCQkJCW1wbGxfc3dfc3RhdGUtPnR4W2ldLCBtcGxsX2h3X3N0YXRlLnR4
W2ldKTsNCj4gKwl9DQo+ICsNCj4gKwlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShtcGxsX3N3
X3N0YXRlLT5jbW4pOyBpKyspIHsNCj4gKwkJSTkxNV9TVEFURV9XQVJOKGk5MTUsIG1wbGxfaHdf
c3RhdGUuY21uW2ldICE9IG1wbGxfc3dfc3RhdGUtPmNtbltpXSwNCj4gKwkJCQkiW0NSVEM6JWQ6
JXNdIG1pc21hdGNoIGluIEMyME1QTEwlczogUmVnaXN0ZXIgQ01OWyVpXSAoZXhwZWN0ZWQgMHgl
MDJ4LCBmb3VuZCAweCUwMngpIiwNCj4gKwkJCQljcnRjLT5iYXNlLmJhc2UuaWQsIGNydGMtPmJh
c2UubmFtZSwNCj4gKwkJCQl1c2VfbXBsbGEgPyAiQSIgOiAiQiIsDQo+ICsJCQkJaSwNCj4gKwkJ
CQltcGxsX3N3X3N0YXRlLT5jbW5baV0sIG1wbGxfaHdfc3RhdGUuY21uW2ldKTsNCj4gKwl9DQo+
ICt9DQo+ICsNCj4gK3ZvaWQgaW50ZWxfY3gwcGxsX3N0YXRlX3ZlcmlmeShzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gKwkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YykNCj4gK3sNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoc3Rh
dGUtPmJhc2UuZGV2KTsNCj4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2Ny
dGNfc3RhdGUgPQ0KPiArCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBj
cnRjKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsNCj4gKwllbnVtIHBoeSBw
aHk7DQo+ICsNCj4gKwlpZiAoRElTUExBWV9WRVIoaTkxNSkgPCAxNCkNCj4gKwkJcmV0dXJuOw0K
PiArDQo+ICsJaWYgKCFuZXdfY3J0Y19zdGF0ZS0+aHcuYWN0aXZlKQ0KPiArCQlyZXR1cm47DQo+
ICsNCj4gKwkvKiBpbnRlbF9nZXRfY3J0Y19uZXdfZW5jb2RlcigpIG9ubHkgd29ya3MgZm9yIG1v
ZGVzZXQvZmFzdHNldCBjb21taXRzICovDQo+ICsJaWYgKCFpbnRlbF9jcnRjX25lZWRzX21vZGVz
ZXQobmV3X2NydGNfc3RhdGUpICYmDQo+ICsJICAgICFpbnRlbF9jcnRjX25lZWRzX2Zhc3RzZXQo
bmV3X2NydGNfc3RhdGUpKQ0KPiArCQlyZXR1cm47DQo+ICsNCj4gKwllbmNvZGVyID0gaW50ZWxf
Z2V0X2NydGNfbmV3X2VuY29kZXIoc3RhdGUsIG5ld19jcnRjX3N0YXRlKTsNCj4gKwlwaHkgPSBp
bnRlbF9wb3J0X3RvX3BoeShpOTE1LCBlbmNvZGVyLT5wb3J0KTsNCj4gKw0KPiArCWlmIChpbnRl
bF9pc19jMTBwaHkoaTkxNSwgcGh5KSkNCj4gKwkJaW50ZWxfYzEwcGxsX3N0YXRlX3ZlcmlmeShu
ZXdfY3J0Y19zdGF0ZSwgY3J0YywgZW5jb2Rlcik7DQo+ICsJZWxzZQ0KPiArCQlpbnRlbF9jMjBw
bGxfc3RhdGVfdmVyaWZ5KG5ld19jcnRjX3N0YXRlLCBjcnRjLCBlbmNvZGVyKTsgfQ0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuaA0KPiBpbmRleCAyMjJh
ZWQxNmU3MzkuLmM2NjgyNjc3MjUzYSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jeDBfcGh5LmgNCj4gQEAgLTM4LDcgKzM4LDcgQEAgaW50IGludGVsX2N4
MHBsbF9jYWxjX3BvcnRfY2xvY2soc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+IA0K
PiAgdm9pZCBpbnRlbF9jMTBwbGxfZHVtcF9od19zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsDQo+ICAJCQkJY29uc3Qgc3RydWN0IGludGVsX2MxMHBsbF9zdGF0ZSAqaHdf
c3RhdGUpOyAtdm9pZCBpbnRlbF9jMTBwbGxfc3RhdGVfdmVyaWZ5KHN0cnVjdA0KPiBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLA0KPiArdm9pZCBpbnRlbF9jeDBwbGxfc3RhdGVfdmVyaWZ5KHN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkJICAgICAgIHN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjKTsNCj4gIHZvaWQgaW50ZWxfYzIwcGxsX2R1bXBfaHdfc3RhdGUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ICAJCQkJY29uc3Qgc3RydWN0IGludGVsX2MyMHBs
bF9zdGF0ZSAqaHdfc3RhdGUpOyBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9tb2Rlc2V0X3ZlcmlmeS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9tb2Rlc2V0X3ZlcmlmeS5jDQo+IGluZGV4IDVlMWMyYzc4MDQxMi4uMDc2Mjk4
YThkNDA1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X21vZGVzZXRfdmVyaWZ5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9tb2Rlc2V0X3ZlcmlmeS5jDQo+IEBAIC0yNDQsNyArMjQ0LDcgQEAgdm9pZCBpbnRlbF9t
b2Rlc2V0X3ZlcmlmeV9jcnRjKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAg
CXZlcmlmeV9jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gIAlpbnRlbF9zaGFyZWRfZHBsbF9z
dGF0ZV92ZXJpZnkoc3RhdGUsIGNydGMpOw0KPiAgCWludGVsX21wbGxiX3N0YXRlX3ZlcmlmeShz
dGF0ZSwgY3J0Yyk7DQo+IC0JaW50ZWxfYzEwcGxsX3N0YXRlX3ZlcmlmeShzdGF0ZSwgY3J0Yyk7
DQo+ICsJaW50ZWxfY3gwcGxsX3N0YXRlX3ZlcmlmeShzdGF0ZSwgY3J0Yyk7DQo+ICB9DQo+IA0K
PiAgdm9pZCBpbnRlbF9tb2Rlc2V0X3ZlcmlmeV9kaXNhYmxlZChzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSkNCj4gLS0NCj4gMi4zNC4xDQoNCg==
