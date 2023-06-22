Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EA273A08D
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 14:09:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CEBE10E54F;
	Thu, 22 Jun 2023 12:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4A4110E54F
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 12:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687435782; x=1718971782;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=m4nMFEx5KGlWFiBs+eoTHfDS1FI8oi2IqP4pQ1+H2Vc=;
 b=dgVaYMOSFMTyW32FJXJ01ot/HqPOH4qyIQkYd7W+I7gYI63Hvd+oenLH
 evFu8u7LXkp9Y5Lx6SR0EpWobWOaqUPzYfcDJc3NpcgLwMsWMNC1Sxi9G
 88VYORzyLa0uI+JxNqTl2DA/6pMwfX+HO7l/ykdQof1pwLenkyqNIuNeU
 ao5HIMDqmedJOe3a+alNewR6043J/gDZcl9wft4uu9q6fVGqBjMOvlt8o
 Um63GCdoOAuepfABS4m4P5Fh3iN2aXnTwmqF6/JJx5D875uW018QKAPh/
 sLjr9XXQ9pJfH2FBI0GtPTLekTzDizND8nv7gWjkFuF6Uty3oDr1kzySb g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="350205504"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; d="scan'208";a="350205504"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 05:09:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="961561302"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; d="scan'208";a="961561302"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 22 Jun 2023 05:09:40 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 22 Jun 2023 05:09:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 22 Jun 2023 05:09:39 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 22 Jun 2023 05:09:39 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 22 Jun 2023 05:09:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zo8Oh8C2tkZgLlHqeihR44dXc9+/PxGMPENpjhehigm81gxcQUkhMWfvK1toG74eeyOdxsOp7S9pkMvulUc54zITiWpF1bNA0JMmcAi8nYqZ9mpmn/4fLmmMY2KD7osJgLCwRmNR7kT4l19Vl1wDdVh8sCW6RD9rrEmtkMIQtVzAbOfM2zPLq8qJsXZSjhnAObz/wnOpi/MCok6lC3sPJSmhkG5beTYh/AAhWuH9saMfEi1lgnG4ofNxJJCR4gyowuDc9OSfut45NQGL8HxPw/yeJfI3r2joK73XLc8y5SfmQXdNZXGIoV6WZFjAiWifkOGBW/wAqYIpymnVHcrmSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m4nMFEx5KGlWFiBs+eoTHfDS1FI8oi2IqP4pQ1+H2Vc=;
 b=oOYLNirQii5xg5Q51Oihqu0O4MDXLMrKUH+hy4Je3IlQhZJ9+UAJjPeOqdMgAYYo0ZlZqtcNXs16njNZnrMfP3RikgOTC1FkQTct2nti2A9zAJuxsYuylf2ECcJnr8G1XOaww+kbZkSGGt88Pp27ljl+YOmDGjoljADcuLEQj9B96bUlhQxY/YTOcfwY2QtMx6D6qXv4ARVxjMHViWTJT29mgxjcX4XgWB2lGmOssihshXBby5KxcbcSb+T/pbGUZojJR1Ec5kE6rL9Hlp/71L1qEvTnJCmuTFxiJnHPyVn4CzAQJg3cezPTFcbW6jHiSXRRI9A6i50gIzZ1k+5dwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Thu, 22 Jun
 2023 12:09:37 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::7c95:e842:18f6:92f9]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::7c95:e842:18f6:92f9%6]) with mapi id 15.20.6521.023; Thu, 22 Jun 2023
 12:09:36 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: pre-initialize some values
 in probe_gmdid_display()
Thread-Index: AQHZlGgImCpUUD3SOUiokhfcIc0Y/K+TmcEAgAMbVgCAAAOxsIAAIzgA
Date: Thu, 22 Jun 2023 12:09:36 +0000
Message-ID: <bc85ed8c4f6c524b79bbee46d8609ea6ae4a25bf.camel@intel.com>
References: <20230601090338.80284-1-luciano.coelho@intel.com>
 <SN7PR11MB675089A23F9DFA474BF19721E35CA@SN7PR11MB6750.namprd11.prod.outlook.com>
 <cd448c6eed0d0da17ed21f4c25be3ffb20028792.camel@intel.com>
 <SN7PR11MB6750474066287C83A4F87A8DE322A@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750474066287C83A4F87A8DE322A@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|PH0PR11MB5657:EE_
x-ms-office365-filtering-correlation-id: cb09df72-76f3-4483-a60d-08db73198bff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7RJtsEbzHQoDeCngHtLmdds7MopIE0IPIOq5HsrIAtlQwjq7y/CoffUrOxJLrnLyDeLZ8dodKlhW568Ye+fA5oWNdK19hNM26naUqfd18y9MZQHEceO3/r0RxGPsE2XCSwtrsHTrZIqJf09nT1smMuxodw6DeZtfTAXAwwqJDK+NX3VazXKt3h2IUhH96PDJHK5EHA/P4i9WdgGA2f2GdAvJ254Fx054wqeczVOY3S1N43x4kkLw6l6SlZkChOZ//rgCxkzXSj6xgPUM5VjhmO0fe5z2pLY8+XhsW0xRDLtukRcA4wvQwzJWMRNo0VdaOlEtGIXUystK8tRoJXSh+RENmPGm32MbRPv7XrzTSISeH4lbbZhgdrHIG5aPwRItlEDi9xlwENy5x9NHAgML+KSva3OdkiOc6MWfTnMPSW/ieC6zPS6qSREoWDCZHiLVCsw2UZJaIpjgogKaDSGPa+V2KmM3NrsTzQ/waogzrbu24rcXi0Opq6XyPteBbrkmIIBVfongY9RX7yls2m+vrOF9rAvo68QM2X3zX6yXnMv1vMpqW9rUZ9v8DT+WGOHhD7GmpjYDGIKMrlOENW0AboXn7NlkUkjDvXoykGVaZb4TZVIA0AOzf9Uedx9TcdFs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(346002)(366004)(39860400002)(376002)(451199021)(2906002)(478600001)(38100700002)(110136005)(2616005)(36756003)(122000001)(5660300002)(6486002)(76116006)(83380400001)(66946007)(91956017)(64756008)(66446008)(66476007)(66556008)(38070700005)(316002)(86362001)(82960400001)(41300700001)(8936002)(8676002)(6506007)(6512007)(71200400001)(186003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R083K0VhUk1UYmtTb2RPUWpDRVN3VXhQTW10bjJYVW1Lc2xwRjVnUmtjNmh6?=
 =?utf-8?B?YmVFb3JUS1hUTUlkU0lIR1V4YUM2MysxTTdQYlI4ZDNlS3hZcVNmWnQ0UFhj?=
 =?utf-8?B?N0cyS05kTGduMVcrdE9QWStrQ1lKRDlaM1JUYlB5dU5xbnZWbEM2d3FTRmJK?=
 =?utf-8?B?cm1OejExTkpZOWw5cEdMdGNNd1J2NmF3SjJ2SmFvZWUzdDY5VTlUOWVGNSsw?=
 =?utf-8?B?OG5FeWxud1RmQnhsRWhjcHpMelhTKzlHR2czME1xSXc5TWhLT3BWSmY2TDlO?=
 =?utf-8?B?OWJDYjdscjI0TWZ3TFlqQ3hQdVZEQWdKNExIUnVGY09XTFl3bnNsWDJlSnVK?=
 =?utf-8?B?bVBiMVBFZEd6OUNpY3NzbkVhbTlYeFpiTjgxWTZVL1g3OUZYMUZoaWsveVNH?=
 =?utf-8?B?b0pLZlliaVpxQ3FlR2I4TURJTUVCSjZZdTZsVStKSEFzejk4TWRkS3kwRlN6?=
 =?utf-8?B?MUErZmJ6bkNxMEtvc3ZrNlZSU21ZcURRc3BobGVnUXRsNVltTkMrUVZJZFhi?=
 =?utf-8?B?RThNQkhEZElkKytsZjBNYmZWOWtqeVBNSFE0ejRXemNDQkg0TmlnTkR0bmhz?=
 =?utf-8?B?OEY0YitxN3hvTmZsT2x2Ly9HUE0ySjVnWDU0MEcyYjRnTXBNY3hPRUIrYnFx?=
 =?utf-8?B?WEc3OWZCbFJTeUFiTFhhYnlvSDRZNitMcGJHOVphckN6cVBwZ3FEbGRVZ0Rm?=
 =?utf-8?B?Qnl4OWsrY3hmanNnaUplRzBBSVd6STV6dndTUVZ0OVBlMkJTNTRZSG9mQU9Y?=
 =?utf-8?B?a3J3R0lrOEIxaVR6b0dHQWt4TGpMbmlUTjg3ZzV0OUUzN0VJZ2x6UE12U2xy?=
 =?utf-8?B?SmNmRkRFcldQalE5R1g4cHNhcUxBcCthVzgwWml1VnE1YkNOKzlBZ0xoWEJj?=
 =?utf-8?B?Q09wU3RiWHEyVzRsSVpaZkF1OFFNT3VpT09PUjIyQS9JNjhzbGkxdnliNi9l?=
 =?utf-8?B?U010a0JmamxKK25LQlBIWVVkdHdnRDQ3THVsWjFzVll4QSs3S1NyWXpYOUJC?=
 =?utf-8?B?RnpPYW43R1I0SkV6VnMyV3pVR0Uza1dHRWN4NzZXVTF4blBtYkZvbC85K01r?=
 =?utf-8?B?emx0YXVwYTRxNHYrQ3ZHb0xKVmdYWFBlMFFhM1dPbWpVdmJQM2MzeWRKUlJs?=
 =?utf-8?B?eGR1OGJ5U3dRQVBMVm5JWklVSkd4SFgrZlkraUJ3VC9HUHBNOWdSUG9lK1RI?=
 =?utf-8?B?RDhZNkw5M0ZyOEJaY1podGpPVUg3U2tvdE9iV3JzcmMvcjFJZENMOVJ1WHkx?=
 =?utf-8?B?VHpTSG5tRjlLZGVQZVdBS1M2WWcwa1FpdUZNZ2lRb1BFL1lHbUhOSGZLS3Vs?=
 =?utf-8?B?NGtabEJ2aGlpNkpib2lIOXhzU3c0ZUdRVWliWW9jTytINm12WlhhT1ovU0M2?=
 =?utf-8?B?b2ZKa0x3OWJ0TFdSdjN2QTB5RTVDOHFKaHZVMDFrM2RST3VDYXlkMEpKWEx6?=
 =?utf-8?B?VU9XN3owemRkMnEyK3JpUkx1VnNueERwZWdxeVMvL0pxMjN4Nk1WbzhQWExM?=
 =?utf-8?B?Vm5zcWF5ZXlFMktJTmRqY2FVeGZzNkp0S09SUFROcStpT3M3NUN2MkwvUVl2?=
 =?utf-8?B?akpsZFdhcXR3aUM0WFh5M0FkSW4xWTdIaEpJRk8rS2RrbkpRc3RhV1g4ZnNL?=
 =?utf-8?B?SXlZMFdHWExNWnpMZ0ZvUXQ4aW5iVFBaYjBMcHpqSGJ2OGVoVjBia1pzVHJ0?=
 =?utf-8?B?aTVXUk41OXdkc2M3VHp2Vmp4NFZ1TDJuOWpyL05iRnhhMHI4YTNiL25uZjZp?=
 =?utf-8?B?b2JQTlpuQXRocDRTQzczSjNKc3RQb3dWNEdzTVB4OVI4RWRsL0dIV2dtZTVZ?=
 =?utf-8?B?Vm5rQ1ZOMEw0ME1pVzl3NEc0Nk1kQ0NhdXcwdXpzc3orK1YzNWJzbTRVRG90?=
 =?utf-8?B?OGZVc1hJRDE0Y3ZzdkxSN0xOK3plTUJJc2F3c2VHL1lrQm95K2YyL3ZLWEdw?=
 =?utf-8?B?RVJsVGQ1RE1vTnVRMUdoMEhhQnZPclIwYVhTU0F6OVVkSk8rZm9yWC9qNlZs?=
 =?utf-8?B?ajh2OGFFdTdkR3p4OWNZa2pCNWZPM2VGdnN3SCtaY3R2bzBnc1Q0emVKQm4w?=
 =?utf-8?B?U1cwSDJZS0FwRGlScXk2YmtJSFZsMk52cUdsV2ZTM3FPdzlOLzNFTG1IRnNp?=
 =?utf-8?B?KzZmdHUwTWpCUjMyZVdNb1h1MUR3MHBUVXBRdG5RcDBoRlhSNEpSWldLUThT?=
 =?utf-8?B?OGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E40D09433BBDD44585424D583F8BB9B4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb09df72-76f3-4483-a60d-08db73198bff
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2023 12:09:36.3057 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GvarENTJhfd57clozCjU983ECp6vLHBfr7gxuYVEog6W375OFFrZU9/E9tJX4EwINXgYpMRX8/3apPt5Sd8Q+eo2i5YMXSFxAb1tcm7IwI0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5657
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: pre-initialize some
 values in probe_gmdid_display()
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

T24gVGh1LCAyMDIzLTA2LTIyIGF0IDEwOjA4ICswMDAwLCBLYW5kcGFsLCBTdXJhaiB3cm90ZToN
Cj4gPiBPbiBUdWUsIDIwMjMtMDYtMjAgYXQgMTA6MzAgKzAwMDAsIEthbmRwYWwsIFN1cmFqIHdy
b3RlOg0KPiA+ID4gPiBXaGVuIGludGVsX2Rpc3BsYXlfZGV2aWNlX3Byb2JlKCkgKGFuZCwgc3Vi
c2VxdWVudGx5LA0KPiA+ID4gPiBwcm9iZV9nbWRpZF9kaXNwbGF5KCkpIHJldHVybnMsIHRoZSBj
YWxsZXIgZXhwZWN0cyB2ZXIsIHJlbCBhbmQNCj4gPiA+ID4gc3RlcA0KPiA+ID4gPiB0byBiZSBp
bml0aWFsaXplZC4gIFNpbmNlIHRoZXJlJ3Mgbm8gd2F5IHRvIGNoZWNrIHRoYXQgdGhlcmUNCj4g
PiA+ID4gd2FzIGENCj4gPiA+ID4gZmFpbHVyZSBhbmQgbm9fZGlzcGxheSB3YXMgcmV0dXJuZWQg
d2l0aG91dCBzb21lIGZ1cnRoZXINCj4gPiA+ID4gcmVmYWN0b3JpbmcsIHByZS0gaW5pdGlsaWF6
ZSBhbGwgdGhlc2UgdmFsdWVzIHRvIHplcm8gdG8ga2VlcA0KPiA+ID4gPiBpdA0KPiA+ID4gPiBz
aW1wbGUgYW5kIHNhZmUuDQo+ID4gPiA+IA0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBMdWNhIENv
ZWxobyA8bHVjaWFuby5jb2VsaG9AaW50ZWwuY29tPg0KPiA+ID4gDQo+ID4gPiBMb29rcyBva2F5
IHRvIG1lIGp1c3QgYSBzbWFsbCBzdWdnZXN0aW9uL3F1ZXN0aW9uIGJlbG93Lg0KPiA+ID4gDQo+
ID4gPiA+IC0tLQ0KPiA+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9kZXZpY2UuYyB8IDkNCj4gPiA+ID4gKysrKysrKysrDQo+ID4gPiA+IMKgMSBmaWxl
IGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQ0KPiA+ID4gPiANCj4gPiA+ID4gZGlmZiAtLWdpdA0K
PiA+ID4gPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZp
Y2UuYw0KPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9kZXZpY2UuYw0KPiA+ID4gPiBpbmRleCA0NjRkZjE3NjRhODYuLmZiNjM1NGU5ZTcwNCAxMDA2
NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X2RldmljZS5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9kZXZpY2UuYw0KPiA+ID4gPiBAQCAtNzMxLDYgKzczMSwxNSBAQCBwcm9i
ZV9nbWRpZF9kaXNwbGF5KHN0cnVjdA0KPiA+ID4gPiBkcm1faTkxNV9wcml2YXRlDQo+ID4gPiA+
ICppOTE1LCB1MTYgKnZlciwgdTE2ICpyZWwsIHUxNiAqc3RlcA0KPiA+ID4gPiDCoAl1MzIgdmFs
Ow0KPiA+ID4gPiDCoAlpbnQgaTsNCj4gPiA+ID4gDQo+ID4gPiA+ICsJLyogVGhlIGNhbGxlciBl
eHBlY3RzIHRvIHZlciwgcmVsIGFuZCBzdGVwIHRvIGJlDQo+ID4gPiA+IGluaXRpYWxpemVkDQo+
ID4gPiA+ICsJICogaGVyZSwgYW5kIHRoZXJlJ3Mgbm8gZ29vZCB3YXkgdG8gY2hlY2sgd2hlbiB0
aGVyZQ0KPiA+ID4gPiB3YXMgYQ0KPiA+ID4gPiArCSAqIGZhaWx1cmUgYW5kIG5vX2Rpc3BsYXkg
d2FzIHJldHVybmVkLiAgU28gaW5pdGlhbGl6ZQ0KPiA+ID4gPiBhbGwNCj4gPiA+ID4gdGhlc2UN
Cj4gPiA+ID4gKwkgKiB2YWx1ZXMgaGVyZSB6ZXJvLCB0byBiZSBzdXJlLg0KPiA+ID4gPiArCSAq
Lw0KPiA+ID4gPiArCSp2ZXIgPSAwOw0KPiA+ID4gPiArCSpyZWwgPSAwOw0KPiA+ID4gPiArCSpz
dGVwID0gMDsNCj4gPiA+ID4gKw0KPiA+ID4gDQo+ID4gPiBGcm9tIHdoYXQgSSBjYW4gc2VlIHRo
aXMgaXMgb25seSBjYWxsZWQgZnJvbQ0KPiA+ID4gaW50ZWxfZGlzcGxheV9kZXZpY2VfcHJvYmUo
KSB3aGljaCBpcyBpbiB0dXJuIGNhbGxlZCBmcm9tDQo+ID4gPiBpbnRlbF9kZXZpY2VfaW5mb19k
cml2ZXJfY3JlYXRlKCkgd2hlcmUgdGhlIGFib3ZlIHZhcmlhYmxlcyBhcmUNCj4gPiA+IGRlZmlu
ZWQgbWF5YmUgd2UgaW5pdGlhbGl6ZSB0aGVzZSB2YWx1ZXMgdGhlcmUgaXRzZWxmLg0KPiA+IA0K
PiA+IFRoYW5rcyBmb3IgdGhlIHJldmlldyENCj4gPiANCj4gPiBJIHRob3VnaHQgYWJvdXQgaW5p
dGlhbGl6aW5nIHRoZSB2YXJpYWJsZXMgb24gdGhlIGNhbGxlciBzaWRlLCBidXQNCj4gPiByZWNr
b25lZCB0aGF0DQo+ID4gaXQgd291bGQgYmUgbW9yZSBpbnR1aXRpdmUgdG8gaW5pdGlhbGl6ZSB0
aGVtIGluIHRoZQ0KPiA+IHByb2JlX2dtZGlkX2Rpc3BsYXkoKSBmdW5jdGlvbiBpbnN0ZWFkLCBi
ZWNhdXNlIHRoZSBjYWxsZXIgZXhwZWN0cw0KPiA+IHRob3NlDQo+ID4gdmFsdWVzIHRvIGJlIHNl
dCBpbiBzdWNjZXNzZnVsIGNhc2VzIGFuZCB0aGVyZSdzIG5vIHdheSBmb3IgaXQgdG8NCj4gPiBr
bm93IHdoZXRoZXINCj4gPiB0aGVyZSB3YXMgYSBmYWlsdXJlIG9yIG5vdCAoYmVjYXVzZSB3ZSBy
ZXR1cm4gYSBwb2ludGVyIHRvIGxvY2FsDQo+ID4gbm9fZGlzcGxheQ0KPiA+IHN0cnVjdHVyZSB0
aGF0IHRoZSBjYWxsZXIgZG9lc24ndCBrbm93IGFib3V0KS4NCj4gPiANCj4gPiBPYnZpb3VzbHkg
d2l0aCB0aGUgY3VycmVudCBjb2RlIGluIHRoZSBjYWxsZXIsIHRoYXQgZG9lc24ndCBtYWtlDQo+
ID4gbXVjaA0KPiA+IGRpZmZlcmVuY2UsIGJ1dCBJIHRob3VnaHQgaXQgd2FzIGNsZWFuZXIgYXMg
SSBkaWQuDQo+ID4gDQo+ID4gQnV0IEknbSBva2F5IHRvIGNoYW5nZSBpdCBhbmQgaW5pdGlhbGl6
ZSB0aGVtIGF0IHRoZSBjYWxsZXIsIHNvDQo+ID4ganVzdCBsZXQgbWUga25vdw0KPiA+IGlmIHlv
dSB3YW50IHRoYXQuDQo+IA0KPiBJIGRvbuKAmXQgdGhpbmsgaXQgbmVlZHMgdG8gYmUgY2hhbmdl
ZCB0aGVuIGFuZCB0aGUgZXhwbGFuYXRpb24gbG9va3MNCj4gcmVhc29uYWJsZS4NCj4gU28gdGhp
cyBMR1RNDQo+IA0KPiBSZXZpZXdlZC1ieTogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBp
bnRlbC5jb20+DQo+IA0KDQpUaGFua3MsIFN1cmFqISBDYW4gc29tZW9uZSBtZXJnZSB0aGlzIGZv
ciBtZSwgcGxlYXNlPw0KDQotLQ0KQ2hlZXJzLA0KTHVjYS4NCg==
