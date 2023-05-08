Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31CE06FB618
	for <lists+intel-gfx@lfdr.de>; Mon,  8 May 2023 19:49:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0522A10E2F2;
	Mon,  8 May 2023 17:49:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5511C10E2EC
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 May 2023 17:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683568178; x=1715104178;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=IvbJuL3O1xJVB7S40bwAuqcXok/UFu3Qr4fTXpIt8zI=;
 b=ZJ0d6YAf3Gi0dq6aInZUjF4jaDvky2dPwfb+QaAypa80wY2z6RgXmkwi
 cB69AglfBnwK1AxZvufLbisMsZuP6UF//cGlFD0cJJ2weBgJi/Oe4mpsf
 tI8ryWxMK+OvpQcd0SBM77Fv95F/pwdf/ixOFbiBOIwDP2N3+GqzvZN0d
 RX2YjzjRAh4JYKrGTIQ5inWrtcLH3QkDoOA0PX03s9IZ/a7AebdS4bUiR
 5fiG13VYACVqy0PDvtj+oCLsgVdwsJB77WV4Ww8lG+kzIHvdbdJGyHvHd
 zzNcMP1zXsP92ConuFZEsf/Rl9bNFQzSJC8ux8WetFb3Itv4F3iCwKa1+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="338937513"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="338937513"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 10:49:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="701505893"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="701505893"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 08 May 2023 10:49:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 10:49:37 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 8 May 2023 10:49:37 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 8 May 2023 10:49:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hIcPmIi4LSIhaFDmQuU8EhR3GhYUeA/FkxHEwlJLlW/1u7GLdAmL7gFLScf2ytl4GwpQaQCcHyy1kGzDKhOhajrXGtObQT9/GES9d4uSQbxy0zweY6yWPjZfUFbkdS9IcdPDQ7jb8U8c4OznzZ3k4BR5UVLArSB9a85uIDSvK3ngJ8K1BKn/eGoizUR5xzVubdXS7ysw6VRwk/dpDcFVfWId5Kbr9D3ClIUAwbtqYoNLyjDzSVPar+/i+da7otc3P0ls68+DSAJsTLDV+KO5hXcV5vXaHERG8eATwL5PisNdQd03bF247RuTgawGiLx/NTBEMqwWyXhFzVj5uq99Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IvbJuL3O1xJVB7S40bwAuqcXok/UFu3Qr4fTXpIt8zI=;
 b=a6TyxfUdQOw8JP+uCjjBZxiU8UBIfrQWXozrSbxmsmzLwqIW/LpJz4p2vpoRNsxjJ+iE5RPzPY0XO6lPemyid6KtvrqDd6bXBxpmiyKMwTokOniHhJTQozAaeRKBSiHNqVIw3EzbflTe4gJNM6SQL5T3HHlhAGxhKU/QJU32+gSoUWaFzFF8DSHm1/CRUM1Eh2mpjzhgB0oTq3tQ1GkpT3iRYlHY9p5wph5skt6SdgIPQEHTa64DfWKpCtW3Rhs6/5wGiErmsVbrAUx0HX2LsrO5ol6jMkK+xr/o68zMBxJXbMuzS/AEub+3lcptnKW4VzZFr4+H0AB3qsST7jWT3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 BL1PR11MB5462.namprd11.prod.outlook.com (2603:10b6:208:31e::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6363.32; Mon, 8 May 2023 17:49:35 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::34a1:94e9:ec9b:dfe3]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::34a1:94e9:ec9b:dfe3%5]) with mapi id 15.20.6363.032; Mon, 8 May 2023
 17:49:34 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Justen, Jordan L" <jordan.l.justen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v9 6/8] drm/i915/uapi/pxp: Add a GET_PARAM for PXP
Thread-Index: AQHZeWLWx68i9/8KnU+Unxd6GaMLfq9LMoYAgAAkQACABWFXAA==
Date: Mon, 8 May 2023 17:49:34 +0000
Message-ID: <e40f2b8750b39facd98f72cda63bc733ca0319d5.camel@intel.com>
References: <20230427234843.2886921-1-alan.previn.teres.alexis@intel.com>
 <20230427234843.2886921-7-alan.previn.teres.alexis@intel.com>
 <8888e3dff8c1c4fd1702ded911850da30330fbfa.camel@intel.com>
 <168327239043.1096084.14316886882692698230@jljusten-skl>
In-Reply-To: <168327239043.1096084.14316886882692698230@jljusten-skl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|BL1PR11MB5462:EE_
x-ms-office365-filtering-correlation-id: 273227c0-307d-4596-e610-08db4fec95d3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SN4fd2gO7JphUsZmn/i87ioyx5K0WoRxTmlPVZQK2w7qAEcuy+4xKznTKicuwJsk4ywDIHWRdIL3sCrYHmA503Tyw7/GnIG3DdoARyfwHDSegHiGw7YcraeqQ/VjWBoRLj04lGHSJQHqtvROYiQTPOHP9+YkTajWrMVLnJzqzWP5LLjV4wEy+RY56McMmnfTlzMIN0TAyZ839+76Qb32nZ8/5iiZUv3khz6TbWrUamhD4e/ZbgJILAJ5u4NfsIkO6dOzVJJf1VMWdjVzjL8idsuIjduLSMjIX1NQOHvjX48ezs4KXFGM0jlLGJ9r6iwH8qUNRBcg1y8M66jX9vRpTS6w5IUJu4rbikhCInc89mhP8l4dI4Z5tK4QhukzzJngdOY0c6EQXtccSK81j8O6kYdK9hG9jqAE5VpPlPWhYaoDuI0rv/LJH2nWDfJFMQl23HN+0f/6uxiPeLFlgynFzNysQ8hQASpnnIsb69ArRtlWwmlw0gBVjaboAqbWn3s3OyuABaolORBtCPmGV9a7Z13vf46syaJKBojTSabL3Je77HYZNb+jz/Iz2WE+9Pi2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(376002)(39860400002)(346002)(396003)(451199021)(54906003)(2906002)(4326008)(8936002)(316002)(478600001)(64756008)(66476007)(5660300002)(66446008)(66556008)(8676002)(41300700001)(110136005)(71200400001)(76116006)(91956017)(66946007)(6486002)(966005)(6512007)(53546011)(26005)(6506007)(186003)(82960400001)(2616005)(36756003)(83380400001)(38070700005)(38100700002)(86362001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WHhQMEU3RVVNS2VXVUM1TUJKRGZFdWhDRUV1d2JBOFMwSmc3WEpZNzVBN0dZ?=
 =?utf-8?B?c3NMRE9nTGdJNjdORE5VbUZxc3VqZ0lYOTliVnZSL3Z3empQY3cycUtJak5L?=
 =?utf-8?B?aEE0OWVuam12SkdaazFGVTI5Nlg1Zm16OEJ0aTN3TFZCYkJYdDVIeWY2ZExN?=
 =?utf-8?B?aFc4VktJbTV6Z1VveVZScHFtOHBHV0lUKytCZExHTDB5ZjZXdDZPbGFSUktP?=
 =?utf-8?B?dzU5STdWRUZHdTlsQ3FqZ0IyeWRlVitMblRLb0RKeGxWUWxVekg2Yk9xd2w1?=
 =?utf-8?B?MVVFOHkwTkxzYlhjNlNlUHREQnZ5RXpJa1BDeGJQeUwya2d4NFQzZkduQ3Jt?=
 =?utf-8?B?azZtTk9Rc2RjSzA0a1l1am9mN3JwMmh4Q3pKK01LdEtuMWpVSTU2RW9UbjhQ?=
 =?utf-8?B?UjNvbjd6LzQvMkVhMTQrNytGZ2JwV25QaWlyaE56eG9Kdjdrc1YzamptSDhG?=
 =?utf-8?B?dnVlcXc5WkYrWDJ3T3lZcTkyMkIxL2V5aXBOcFZpT0w1VkVPNm16Y0NqQlN0?=
 =?utf-8?B?eDl3YXA5NmhEUmJ1MEYwZTFJdDZIWktOYnNXaFo1YjAxcG1Yelo4RUYxOWRj?=
 =?utf-8?B?Q01hNnVncjFNdXFwM0lvUngxVUk4ZnQ1bDNIT2Q1WEc0aGFYbWlqOVMwMGRZ?=
 =?utf-8?B?RzBEcDVHd1dyalBrRFVZb01OLy9Tam03QUpqUEFWNmVtaDJNajZ2UzNkakRQ?=
 =?utf-8?B?VitVZ1BlNDQvK0MyamJ5WFcyZlZsdXpvVHNQcDIzZEw2c2JERjlsQml6K3pm?=
 =?utf-8?B?YzN5NFRqQ3VwVnNCZkMwbDNJcVJnd09QVEdlYU84OEdWYmNnNW1jQmFhNVFn?=
 =?utf-8?B?eU04K2Nzc2tqVDg0ajNHeEZYeEtwbUw2RzdGb2FNMDM0UXZPZ2lQRUU5amt2?=
 =?utf-8?B?NzVaY29SMnI4QUp0akQzcGV0dkxtcWhPcUJ6L3pmQzYydVJIaytPczR4clpI?=
 =?utf-8?B?Rms0eVEvWXpZNkg2VFhyWWVPWEFiUnphbC9mM1MwV2RjV01sNTg5M0RtWW5K?=
 =?utf-8?B?OFdjQk1BbGt5R3VRTjF1N29ZYWUxc2d6V3NGWURoQTZwVzA3YWV0VnhIRWt6?=
 =?utf-8?B?dkN5d3czeEVqcEE2MlN4R3dCaFJKWUFYOWVhY3VWOWVlODAyNi9pOEdnaVQ3?=
 =?utf-8?B?WUtLUFF4dTRoeXJHTnR6WmFySnpIWEF6M2Y2Wnl4NWZXQ3hjb3VhZE14cm1B?=
 =?utf-8?B?Y2o0V1hQQk5nTlkrc1NRZ2xpclJpRjNDMExwdXJaL0I1ODRpdmR3bXJZS1Mx?=
 =?utf-8?B?MVJEMzAzR2Jrc2FGN2h1L0hOVTRQOUJLZG1QZldsS3lEbFlWODg2dyszcXMr?=
 =?utf-8?B?WHo1Rmk3VHJmQ3NkMUxHR09QM1Z2Qm4xK2xlYlRNNTUwRFo2Sjg2ZU9Vd2xN?=
 =?utf-8?B?Y09ONlBLdFd5Y2pGT3BqV0R3YTdjYmVOREdKTzdmR21DeXNyRUZSS2hSZFl5?=
 =?utf-8?B?SXFqanZnS3lXakNpemViUDZRTXhxTS9FUURDb2VXOGlJRjJiNEFXOU81MGZs?=
 =?utf-8?B?ZmRxL01KeXJFKzRORk00ZmxKTENmd2orVDVQVWFpS0lTNmpHMnhvU1V0S2FU?=
 =?utf-8?B?M3lzVVBPRmFyQVhETW5ucUdYK211bytRKytLMGoxSE1JenRuTEp2YmV0MzBQ?=
 =?utf-8?B?eGVIZEpNa0VpNlRUQWxPb0gvOThOQUVWbm45NzdCbUZHNy9CTjc4dUpJV1B2?=
 =?utf-8?B?L2dodSsyS1JPNWJWU3pHQmJWNHZTSktKaTg2cG50Ky91TmdKU1FNWE82Uzho?=
 =?utf-8?B?NVh0ODZHd01DOFR4U21aMWZQaXhveGVSY1dOOFkxZ1dKQXdLV3N4ZjhtRUo0?=
 =?utf-8?B?dXNuQXhkWFFrUmc4K2JubGdnVjNhaDUyU3ozMXdXSzNPZXJLdTR1anIzSHd2?=
 =?utf-8?B?cThZdGpTcFhZcFN1bEUwTjRkdmFHZElialNSRmNUeStBUjAxelpYeXRNL1p5?=
 =?utf-8?B?RWZ5UmJtUThJSEVLZFh0aU43Y1Rrc3RrSTNkU2JmMzA1Z3BsL1Q2YUJmZ0d1?=
 =?utf-8?B?TWN1OUU0NnlnOUJNeWpPSEVYOEdhMHYyQzRkMVlmMnJGYWlmRWV2b0JsT1FW?=
 =?utf-8?B?Qkw2V3VCdDdSR1VrcXhiUFNiRThWdVUxZkFFYkc0TVQyNG4wM0NYZE0yMG5W?=
 =?utf-8?B?U3RXVjRtS1FvT3FHcUVJYTVnL1BMTW5NMjdhZTBmbDNPRXM4TTB6Q01Genlk?=
 =?utf-8?Q?/9l1PrgzeDnEhiNl2wh0H8c=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5850096B83C0AF45B95066F496A587E6@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 273227c0-307d-4596-e610-08db4fec95d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2023 17:49:34.7587 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jdNu5a5iNDKhJabcrTV+V2toPRn/wIUsG54ZIYUK6h6FWDgDTAq7M4djHy8cJanUsEW+GJd0+KBGS0lYAJXB8HaHEeTygsOVceifF9cPQrNZ4B15if0alX1e+o078te+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5462
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 6/8] drm/i915/uapi/pxp: Add a GET_PARAM
 for PXP
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
Cc: "ustonli@chromium.org" <ustonli@chromium.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>,
 "ri-devel@lists.freedesktop.org" <ri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIzLTA1LTA1IGF0IDAwOjM5IC0wNzAwLCBKdXN0ZW4sIEpvcmRhbiBMIHdyb3Rl
Og0KPiBPbiAyMDIzLTA1LTA0IDIyOjMwOjA3LCBUZXJlcyBBbGV4aXMsIEFsYW4gUHJldmluIHdy
b3RlOg0KPiA+IE9uIFRodSwgMjAyMy0wNC0yNyBhdCAxNjo0OCAtMDcwMCwgVGVyZXMgQWxleGlz
LCBBbGFuIFByZXZpbiB3cm90ZToNCj4gPiA+IEJlY2F1c2Ugb2YgdGhlIGFkZGl0aW9uYWwgZmly
bXdhcmUsIGNvbXBvbmVudC1kcml2ZXIgYW5kDQo+ID4gPiBpbml0aWFsaXphdGlvbiBkZXBlZGVu
Y2llcyByZXF1aXJlZCBvbiBNVEwgcGxhdGZvcm0gYmVmb3JlIGENCj4gPiA+IFBYUCBjb250ZXh0
IGNhbiBiZSBjcmVhdGVkLCBVTUQgY2FsbGluZyBmb3IgUFhQIGNyZWF0aW9uIGFzIGENCj4gPiA+
IHdheSB0byBnZXQtY2FwcyBjYW4gdGFrZSBhIGxvbmcgdGltZS4gQW4gYWN0dWFsIHJlYWwgd29y
bGQNCj4gPiA+IGN1c3RvbWVyIHN0YWNrIGhhcyBzZWVuIHRoaXMgaGFwcGVuIGluIHRoZSA0LXRv
LTggc2Vjb25kIHJhbmdlDQo+ID4gPiBhZnRlciB0aGUga2VybmVsIHN0YXJ0cyAod2hpY2ggc2Vl
cyBNRVNBJ3MgaW5pdCBhcHBlYXIgaW4gdGhlDQo+ID4gPiBtaWRkbGUgb2YgdGhpcyByYW5nZSBh
cyB0aGUgY29tcG9zaXRvciBjb21lcyB1cCkuIFRvIGF2b2lkDQo+ID4gPiB1bm5jZXNzYXJ5IGRl
bGF5cyBleHBlcmllbmNlZCBieSB0aGUgVU1EIGZvciBnZXQtY2FwcyBwdXJwb3NlcywNCj4gPiA+
IGFkZCBhIEdFVF9QQVJBTSBmb3IgSTkxNV9QQVJBTV9QWFBfU1VQUE9SVC4NCj4gPiA+IA0KPiA+
IGFsYW46c25pcC4NCj4gPiBQcm9ncmVzcyB1cGRhdGUgb24gdGhlIFVNRCBzaWRlIC0gSSdtIHdv
cmtpbmcgb24gcGF0Y2ggZm9yIFBSIGhlcmU6IA0KPiA+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNr
dG9wLm9yZy9hbGFuX3ByZXZpbl9pbnRlbC9tZXNhLWFsYW4tcHJldmluLWZlYXR1cmVzLy0vY29t
bWl0L2ZiOWQ0ZmJmYmVmN2RmZDNmNDFkZjMzNWNkMzE1NDlmZDM5ZGRiNTcNCj4gPiBidXQgdGFr
aW5nIHRpbWUgdG8gdmVyaWZ5IGNlcnRhaW4gY29kZSBwYXRocw0KPiANCj4gSnVzdCB0byBjb25m
aXJtLCBpZiBJOTE1X1BBUkFNX1BYUF9TVEFUVVMgcmV0dXJucyAyICgid2lsbCBiZSByZWFkeQ0K
PiBzb29uIiksIHRoZW4gaXQgaXMgYmFzaWNhbGx5IGNlcnRhaW4gdGhhdCBpbiBhIHByb2R1Y3Rp
b24gZW52aXJvbm1lbnQsDQo+IHRoZW4gaXQgd2lsbCBldmVudHVhbGx5IHJldHVybiAxIG1lYW5p
bmcgaXQncyByZWFkeSwgcmlnaHQ/DQphbGFuOiB5ZXMgLSBidXQgbm90IDEwMCUuIG5vbi1wbGF0
Zm9ybS1zdGF0ZS1tYWNoaW5lIGNvdWxkIHN0aWxsDQpjYXVzZSB1bmV4cGVjdGVkIGZhaWx1cmVz
IGZvciBleGFtcGxlLCBbMV0gaWYgaHcgd2FzIGZ1c2VkIGluIGEgd2F5DQp0aGF0IGRvZXNudCBw
ZXJtaXQgUFhQIG9yIFsyXSBlbmFibGluZyBjZXJ0YWluIEJJT1MgZGVidWcga25vYnMNCmRvZXNu
dCBhbGxvdyBQWFAuIEhvd2V2ZXIgYXQgdGhlIG1vbWVudCwgdGhlcmUgaXMgbm8gd2F5IGZvciB1
cw0KdG8ga25vdyBmb3Igc3VyZSB3aXRob3V0IGFjdHVhbGx5IGNyZWF0aW5nIGEgcHJvdGVjdGVk
IGNvbnRleHQuDQpPZiBjb3Vyc2UgaGF2aW5nIGh3LWZ1c2luZyArIGJpb3MtY29uZmlnIHRoYXQg
c3VwcG9ydHMgUFhQIGhhdmUNCmFsd2F5cyAxMDAlIHN1Y2NlZWRlZCBmb3IgbWUuDQoNCj4gDQo+
IElmIHRoaXMgaXMgY29ycmVjdCwgdGhlbiBJIHRoaW5rIHRoYXQgdGhlIGNoYW5nZSBpbg0KPiBp
OTE1X2dlbV9zdXBwb3J0c19wcm90ZWN0ZWRfY29udGV4dCgpIGlzIGdvb2QsIGFuZCBwcm9iYWJs
eSB3ZSBjYW4NCj4gc2tpcCB0aGUgY2hhbmdlIGluIGlyaXNfY3JlYXRlX2h3X2NvbnRleHQoKS4N
Cj4gDQo+IEJhc2ljYWxseSwgd2UncmUgdGltaW5nIG91dCBmb3IgbXVsdGlwbGUgc2Vjb25kcyBl
aXRoZXIgd2F5LiBBbmQsIEknbQ0KPiBob3BpbmcgdGhhdCB0aGUga2VybmVsIHdpbGwgZXZlbnR1
YWxseSBnZXQgdGhlIFBYUCBpbml0IGRvbmUgYW5kDQo+IGNyZWF0ZSB0aGUgY29udGV4dC4NCj4g
DQo+IEkgdGhpbmsgdGhlcmUncyAyIGNhc2VzIG9mIGludGVyZXN0IGhlcmUuDQo+IA0KPiBGaXJz
dCwgYW5kIG1vc3QgbGlrZWx5LCB0aGUgYXBwbGljYXRpb24gcnVubmluZyBkb2Vzbid0IGNhcmUg
YWJvdXQNCj4gcHJvdGVjdGVkIGNvbnRlbnQuIEluIHRoaXMgY2FzZSB3ZSBjYW4gcXVpY2tseSBh
ZHZlcnRpc2UgdGhlIHN1cHBvcnQsDQo+IGJ1dCB0aGVyZSB3aWxsIGJlIG5vIGNvbnNlcXVlbmNl
IGJlY2F1c2UgdGhlIGFwcGxpY2F0aW9uIHdvbid0IHVzZSB0aGUNCj4gZmVhdHVyZS4NCmFsYW46
IHllcyAtIHRoYXQgd2FzIG9uZSBvZiB0aGUgZ29hbHMgb2YgdGhpcyBVQVBJLg0KPiANCj4gU2Vj
b25kLCB0aGUgYXBwbGljYXRpb24gZG9lcyBjYXJlIGFib3V0IHByb3RlY3RlZCBjb250ZW50LiBJ
biB0aGlzDQo+IGNhc2Ugd2UgY2FuIHF1aWNrbHkgYWR2ZXJ0aXNlIHRoZSBzdXBwb3J0LCBidXQg
aWYgdGhlIGZlYXR1cmUgaXMgdXNlZA0KPiB0b28gcXVpY2tseSwgdGhlbiB0aGUgY29udGV4dCBj
cmVhdGUgbWlnaHQgdGFrZSBhIGxvbmcgdGltZS4NCmFsYW46IG5vLCB0aGF0IGlzbnQgdGhlIGNh
c2Ugbm93LCB3ZSBzdGFydGVkIGF0IDgtc2VjcywgdGhlbiAyLXNlY3MsDQphbmQgZmluYWxseSBz
ZXR0bGVkIG9uIHRoZSBzYW1lIHRpbWVvdXQgYXMgQURMIHNpbmNlIHRoaXMgbmV3IFVBUEkNCndp
bGwgYmUgc29tZXRoaW5nIHRoYXQgY2FuIGJlIHBvbGxlZCBvbiB0byBiZSBzdXJlIHdlIGhhdmUg
cmVhZGluZXNzDQp0byBtYWtlIHRoZSBjcmVhdGUtY29udGV4dC1jYWxsLiBUaGF0J3Mgd2h5IGkg
d2FudGVkIHRvIGFkZCB0aGUNCnBvbGxpbmcgd2FpdCBpbiB0aGUgYWN0dWFsIGNyZWF0ZSBjYWxs
IC0gYnV0IG5vdCB0aGUgZ2V0IGNhcHMgY2FsbA0Kd2hpY2ggY2FuIGJlIHF1aWNrIChhcyB5b3Ug
c2FpZCBhYm92ZSkuDQoNCj4gDQo+IElmIEk5MTVfUEFSQU1fUFhQX1NUQVRVUyByZXR1cm5pbmcg
MiBoYXMgYSByZWFzb25hYmxlIGNoYW5jZSBpbiBhDQo+IHByb2R1Y3Rpb24gZW52aXJvbm1lbnQg
b2YgZXZlbnR1YWxseSBmaW5kaW5nIG91dCB0aGF0IHB4cCBjYW4ndCB3b3JrLA0KPiB0aGVuIHBl
cmhhcHMgbW9yZSBkaXN1c3Npb24gaXMgbmVlZGVkLiBJIGd1ZXNzIHRoZSB3b3JzdCBjYXNlIHNj
ZW5hcmlvDQo+IGlzIG5vIHdvcnNlIHRoYW4gdG9kYXkgdGhvdWdoLiAoRXhjZXB0IGl0IGlzIHN0
aWxsIHNvbWV3aGF0IGJldHRlciwNCj4gYmVjYXVzZSB0aGUgY29tbW9uIGNhc2Ugd291bGQgbm90
IGludm9sdmUgcHJvdGVjdGVkIGNvbnRlbnQgYmVpbmcNCj4gdXNlZCBieSB0aGUgYXBwbGljYXRp
b24uKQ0KYWxhbjogaG1tbS4uLiBpIGd1ZXNzIGl0IGRlcGVuZHMgb24gdGhlIG1lYW5pbmcgb2Yg
cmVzb25hYmxlOiBpZiA1MCUNCm9mIHRoZSBDSSBwbGF0Zm9ybXMgYmVpbmcgcnVuIGhhdmUgaW5j
b3JyZWN0IGJpb3MgY29uZmlnIC8gaHcgZnVzaW5nDQpkb2VzIGl0IG1lYW4gdGhpcyBVQVBJIGlz
IG9ubHkgNTAlIHVzZWZ1bD8gTXkgb3BpbmlvbiBpcyB0aGUgYWx0ZXJuYXRpdmU6DQppbiB0aGUg
Y2FzZSBvZiBwbGF0Zm9ybSB0aGF0IGhhcyBjb3JyZWN0bHkgY29uZmlndXJlZCBCSU9TICsgZnVz
aW5nLA0KaXMgdGhlIGNoYW5jZSBvZiAyIGV2ZW50dWFsbHkgbGVhZGluZyB0byBhIGZhaWx1cmUg
aGlnaD8gVGhlIGFuc3dlciBpcyBuby4NCkh5cG90aGV0aWNhbGx5IGkgaGF2ZSBhY3R1YWxseSBu
ZXZlciBzZWVuIHRoaXMgaGFwcGVuIChub3RlOiB0aGlzIFVBUEkNCmlzIG5ldyBidXQgaSBrbm93
IGZyb20gcGFzdCBkZWJ1ZyBvZiBjdXN0b21lciBpc3N1ZXMpLiBUaGVyZSBhcmUgc29tZSB2ZXJ5
DQpjb3JuZXItY2FzZXMgYnV0IHRob3NlIGdldCBpbnRvIHRoZSB3ZWVkcyBvZiBweHAgcnVudGlt
ZSBzdGF0ZSBtYWNoaW5lLi4NCkkgYW0gc3VyZSB3ZSBkb24ndCB3YW5uYSBkaXNjdXNzIHRoYXQg
cmFiYml0IGhvbGUgcmlnaHQgbm93Lg0KPiANCj4gQW5vdGhlciBvcHRpb24gYmVzaWRlcyBmcm9t
IHRoZSB0aW1lb3V0IGxvb3AgaW4NCj4gaXJpc19jcmVhdGVfaHdfY29udGV4dCgpIG1pZ2h0IGJl
IHRvIGNoZWNrIEk5MTVfUEFSQU1fUFhQX1NUQVRVUyBhZnRlcg0KPiB0aGUgY29udGV4dCBjcmVh
dGUgZmFpbHMgdG8gdHdlYWsgdGhlIGRlYnVnIG1lc3NhZ2UuDQphbGFuOiBZZWFoLCB0aGF0IGlz
IGFuIG9wdGlvbiAtIEknbSB0aGlua2luZyB3ZSBjYW4gYWRkIGEgREJHIHRoYXQgcmVhZHMNCmVp
dGhlciJQWFAgY29udGV4dCBmYWlsdXJlIGV4cGVjdGVkIGR1ZSBub3QgcmVhZHkiIHZzDQoiVW5l
eHBlY3RlZCBQWFAgY29udGV4dCBmYWlsdXJlIiANCg0KPiANCj4gLUpvcmRhbg0KDQo=
