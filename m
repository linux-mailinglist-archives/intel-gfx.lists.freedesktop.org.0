Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE68D4F1003
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Apr 2022 09:30:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E368410EBBA;
	Mon,  4 Apr 2022 07:30:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89B3610EA5B
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Apr 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649057453; x=1680593453;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ueB3dryd/ugniPkHGZkvKTVPYVixCfJM1mLH+kwhz98=;
 b=VqPQT471E8+K5jr0vRsjJO3aBLHEQ/rD/4xCbutiyaJNojC26xXjklE6
 bDN7RabLUR6ss2h2YmitZmiE+jiScEa8LPqBWgyZaPdywrRhZ+9GCYyYo
 RwBFK8OkCsGOBkGOCMzyezYJl54yPZck6eBvr/aSHbhrHc0sYK2u1sUaS
 ViU0c+OMVoZTB1UlCFDmwFzkrmomFhBXuyvw3gWQC4dvxSvITpGRVTn0G
 ApPXuqBwW5kgdjYb1KFkbThlFtulChXcUi4yk9Vh/24MxhSEB7px2LppD
 6OSJFDUZq9OY/xzCaCUfaIdRoyF7axkyGgYjgsjDPIy8LYi82+PQwSunW A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10306"; a="260635757"
X-IronPort-AV: E=Sophos;i="5.90,233,1643702400"; d="scan'208";a="260635757"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 00:30:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,233,1643702400"; d="scan'208";a="721552485"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 04 Apr 2022 00:30:52 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 4 Apr 2022 00:30:51 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 4 Apr 2022 00:30:51 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 4 Apr 2022 00:30:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IhjAdZn5FcDEL6scNmTV2WxL0XByxqWM4PXcVECElsVlvyaYsXkoKcJ83HQ8pGNxqYKrQksclwHLyfRPvLnC0NRqsuR/LPikT7FWatzfpkJrP02KLFdXQVpqxHV4bK1RVPwh/DWqH8+CBE9VCecgJIBeWaOnvO/mHr5PUrtW1JAJSdwfVZ6oGBr6AYXH54mlaXvATJhaM83EIe994Z/+IcZkZSqAfqkmjUmnvCIcijR7Y/f2qPKivaLMRrPgIU809pVuGu/w/AoEirnt87eD7FiolNu5PfbAWpjAloYIVTJ8bwmM708rp1SY5kk19jl8Wp+VhbGwPE+sr7yu0kGdIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ueB3dryd/ugniPkHGZkvKTVPYVixCfJM1mLH+kwhz98=;
 b=ZyL+o0WKNQ6NMKzmw6KOE9HtSYO8nyrWBzseQ24JL892d+gYqu9BBteEgVP/yET1/5lxO4IYY0LEMkpIIzoEPHQIvgfvqqW3NwmbE6mmsFmJL51yEwOpxKxzILSONw0doFg8muBPWvzUA9Z1J3z/mWOTjoNgcuOqQRLEDi6yPwQgx7RZw9+1lT7FPaQAEsSYLh0XVPaqdWt2IouBtxD7/2bIFaOr+9y64NoWAkjmiFvYMr+oIkHOMD2YeTp7r1FOzDnIwtoJejtLRp/iYly3bDnw51zKOclWg54tupCI59M+eBu5/a8CfDeJw4H2YAdxfW9ghtbc4EIofnNRUqIjCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM6PR11MB4074.namprd11.prod.outlook.com (2603:10b6:5:5::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5123.31; Mon, 4 Apr 2022 07:30:49 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ac5e:2fe2:3bc6:fe36]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ac5e:2fe2:3bc6:fe36%7]) with mapi id 15.20.5123.031; Mon, 4 Apr 2022
 07:30:49 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 1/3] drm/i915/display/psr: Set partial frame enable when
 forcing full frame fetch
Thread-Index: AQHYRhfBI0eqYWNCg0SdN7gClZTjlKzfX58A
Date: Mon, 4 Apr 2022 07:30:49 +0000
Message-ID: <d2daac4b0a245cefbe17cd2a35b971a157f42cf1.camel@intel.com>
References: <20220401222911.199284-1-jose.souza@intel.com>
In-Reply-To: <20220401222911.199284-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a37190ac-e550-402c-e046-08da160d0aa2
x-ms-traffictypediagnostic: DM6PR11MB4074:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM6PR11MB40746F99E77EEE625FCD8B728AE59@DM6PR11MB4074.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GyHQsB+/JsjJVHdU7LXjhWssqj8Kux4rye2mLd0PH9Gotq+Y0NE9pLI27c485G8/QJUA9F/hgcU5VdrpiLKGHC0MNpHGZs7bKQnmV0S6eQ4a5/OrJ25KngB0el5MGl7gk7/I5AA1K1gIGsVWiK3lvSp8MsKu7b5P3MpfSxssc7h0Sg9c8NZYx1/GHJQzpuTIz7MNvuYSQZXCk1mVrfWmWq5RlWhW5q+AAE8bHHq76k6A+QEom73JhHrFndOWMeSexS5IQXf9wZ0VR+VC+MwdD1PCjY98AWvL0u0ljuSrCD/lSK3cpUHfYZw2NwSWL5BCgHDRfRxjB+KWw54qAEAnXOMQLtiFieJxsGtQziom5qTBU4P6veo3JeP8NaSfo07+xfc9Luoq9fjP/7zFlbm5KYgAkgG68twzM40uqRmyJTO0IsvCtvd6jSIJDXagznXTM5jkejwBaXkpa1J1BBmrj5oXZvlnG0awH0QcgLqpbzgrxBVnHJOVcs0io3gUs3bMWUx/lRnUQYwHrMBkKy4DAGCi3K7BHiBKaOSOwS8ixGVBG2mraKMepkwCcVgwSkGK1StDF+TnoXet6Zd4UCLgO9tkutnC6NaL4aaR1VSmHqlnQkALslfYcHfebTF4pQi3cQeABo0/d0kAtOD0PlUg749LIMAgKREOJzZr6w/coKoewNxNVeVbTst7uaPVHec+USV9kiXZnRsJmh91+l2yqg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66946007)(76116006)(66556008)(91956017)(5660300002)(122000001)(6636002)(82960400001)(316002)(6486002)(64756008)(66446008)(66476007)(8676002)(4326008)(508600001)(6506007)(36756003)(107886003)(38070700005)(110136005)(66574015)(2616005)(71200400001)(2906002)(86362001)(83380400001)(38100700002)(8936002)(6512007)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZHFVZkl6YzZXOWNiU1ppd1J2VXBFUk9QQXBMb3kxY0NvcDFsaUtUTUwwM1hY?=
 =?utf-8?B?MzFuUXlhY05HMkJyeWZwN3c5cnhseVFiMkJzRG1Hak1VU1ZKa0lKeVYvbVhD?=
 =?utf-8?B?YVhlUnlPMmxTNi9tMFhkcm00S2JiUjRTdDdtb3o3bmoreDFPWmdxbERlSXRS?=
 =?utf-8?B?dlI4NzRLM2hwU0N6NC9ZY3VpNFpFUFR3cGY1TkN2ZXRtSFl6UnhPRmRQUUtS?=
 =?utf-8?B?d1FOZDEvMEpsaHZQUHpOYUlHajVudVhlTnhUYjRsaCthMUx6UUxSMU5lam9x?=
 =?utf-8?B?bEk4aFo1TDlWeEdRQXRyd3YxMVZhSk5yd2QrODZQOGNoaUJwdTJRWUxoTUVz?=
 =?utf-8?B?WVZmdlZqeldadWRGTVM3bURCa254S2JhZzNSaHF0aTlGeXdSaXExSS9tYTN4?=
 =?utf-8?B?UnY4RmNEUkc3YWlxN0VmbDNqdWtCZHA2Q2cyMWIrVjlHSmFXNkd2YjFmWThy?=
 =?utf-8?B?MXliamJja0hrazhFYXU4Wkt4UEl2L0IvUEEwa1VBdXp4czRCZmhhWHBnRWND?=
 =?utf-8?B?UmJ2OHczbGtTcHhuUWlnNGVtRkxhZGVQNjJaRXFra0hpM1U4RkI4SVQ3dU1r?=
 =?utf-8?B?TXVOeUtIZmZVNGhQSU51NE84L25JODdIdXRYbnJ4TEtRbnI2RkdpQjJuR0xt?=
 =?utf-8?B?VnpOL2o1U2hvSGpNc1FZMSt4eFovZnFjU2Y0OG11dlUwNFc3by9mNGs1WmVW?=
 =?utf-8?B?RTVDeUMzRkVCcHRLZjRIczlSTmlQbWV1MDBWQ3RyT3ZTWHByNHl5UjdHMEpE?=
 =?utf-8?B?UktsT2NScEZBKzhCTHhVay9BN1VVck5NRHY4SElJcmJuSlJpTFIya2ZGdGJH?=
 =?utf-8?B?d0x6VS82Qk5hdGlVZTNwc0Jaci8wdDlnenJJUm9sWDJCN2hkc21BOHBIOEZu?=
 =?utf-8?B?M0R1cXYydnJoY21MaFo0K3NqUjQ4MFdkNFdzY0toTWhDaFQ5aHJCZEtNWUFE?=
 =?utf-8?B?ZC9MaldYQXhIQnpzL2I0Slp5dS9pb00zcS9lbW0zRE1GZGozQm1jaXZybzBj?=
 =?utf-8?B?d1hsUzFqajdYNVN0SjlQTzE4YUV5K210dkwvSVhJZWZNQUFUdHAvT2FTNUV4?=
 =?utf-8?B?UzdYaFZ2d3hHdTdoYW8zK2MraHZOVXlWaFlwVGpoNzFCRzA4NHBnNUEzRUpu?=
 =?utf-8?B?eEhkNVhicWduTG5MeWJQSExnN0VmN3hUMTlYaDdVQUc1M0tGcTYzQURxNTE0?=
 =?utf-8?B?aWZpQWxTTk81VHoraUxSZnJUOUZxNHJwR0lxUUdySC9TOGJLZUxGUDlCajJG?=
 =?utf-8?B?VzZHc3RPWDNpTUc4MjlUQ3diNXYraktXSnJncHp6d3B1cHpSejhkck5EWkFK?=
 =?utf-8?B?cFRFL3Nub2dERUp6OE15ZlpmNGFIUGlMSGtjUWtjMHhySzVXaGNjWllWWjgz?=
 =?utf-8?B?YWJaZWRwOGMzVVdLMVg2TEwzbGtsSGxtU2hxZnpaN3ZCWHRnY2Q5ckdxTHFk?=
 =?utf-8?B?ZXVZWUU3OGtYbk1yQUF6Z3BoK2hENzZRc0phbVBpV0crUFNrU2I1SklWRmF0?=
 =?utf-8?B?bFg0RStjQ3lGWTNUV01iaDJMZ0cxN1plVWtiSUNDbXZQM1d3VGtUVi9LdHlT?=
 =?utf-8?B?aUVGK3BKK3BkWjdudFBhSWFLWkcrSmFKYXBBaUZUbnFWcWNVTnlQTFJJK0pZ?=
 =?utf-8?B?ZmMreG0ydU1rd01OcE1oVzAzZ2xIR2FFcTFZeXJ2cnVxVjRBbSsySjU2cWhy?=
 =?utf-8?B?QlFNM3BQK2JMN3QzaVgyRTZJMXQ4TUh0VjhVY1BSVTAvVXZsMkdiSUVWVkcx?=
 =?utf-8?B?MHpKK0ZFQW9KZjFRKzlsNDAwZlZ5RVloS3JsdjBEMC9ldVZzZzFEczNTVjRi?=
 =?utf-8?B?OWpUQURMR2ZCNGdlSno5WU4xNXRYTjFqOTQ3OGxVcG53dm5vYTVucENTV0Uv?=
 =?utf-8?B?RE4wSXkydUprellISUE1bDR5YUtrc2FmaEl2a0lwT0F1U3FZL0ZleHBiVENN?=
 =?utf-8?B?ZGw1OG5zMGc1aFpFUkt6NUNsc2xoSXZPOXV1Rk15NXYzTFJsK1VBMnM4ekRZ?=
 =?utf-8?B?cFl0aTluOS9kUzZVczNmMmJHbzNRMGtLTkpaR3NSSko4N0RtU0kzb2xTZE83?=
 =?utf-8?B?Rkd0SU96WEtMV21YWDBlZFBOclJseUliZTlyQk12empzeUhsSVplUUZlYzVN?=
 =?utf-8?B?ZWxjOCt1bTBxQWJVWjdSOWF1aFcwbXZSeEE2T3VqeXZhNm81eVo1NVg0cXJy?=
 =?utf-8?B?N2JpZGU3R3g2ZEZUOFdDSkR0U0twOU9FREk0emMwVGNoRzJZbHZ4NmtQMWNR?=
 =?utf-8?B?VWtIUlFxWDZqcGdKMGdnNU5RSExwMnVQTS9VSlhTZU1kY01ma1U3dk1od2tZ?=
 =?utf-8?B?ZHhXem5SS1pabDZmVTBkUThkSTVsQVplN0Q3dGg5Uk15L0dlUStNN1ltNWlh?=
 =?utf-8?Q?VeM+7miXIIihnjdbg0Jq2cp8yu0bsFV+Av/rWjKAAQoNK?=
x-ms-exchange-antispam-messagedata-1: JxdBnyG9MmsRATmsc7Qtn+6GjP3VUkOWhlU=
Content-Type: text/plain; charset="utf-8"
Content-ID: <69FF190E79BB1742A5ED2D354D8A2E41@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a37190ac-e550-402c-e046-08da160d0aa2
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2022 07:30:49.4241 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5nq9SegRn+YpMGPWiB/L3D8feUhvNqU2JexU2133TM0Pm6ccv4M2Y1TPp5uCzQQsuQ4h73X7F+eAeU0edXBrO7JOU0OCEU4hz37x6hU78Gg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4074
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/display/psr: Set partial frame
 enable when forcing full frame fetch
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

T24gRnJpLCAyMDIyLTA0LTAxIGF0IDE1OjI5IC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBGb2xsb3dpbmcgdXAgd2hhdCB3YXMgZG9uZSBpbiBjb21taXQgODA0ZjQ2ODg1
MzE3ICgiZHJtL2k5MTUvcHNyOiBTZXQNCj4gIlNGIFBhcnRpYWwgRnJhbWUgRW5hYmxlIiBhbHNv
IG9uIGZ1bGwgdXBkYXRlIikgYW5kIGFsc28gc2V0dGluZw0KPiBwYXJ0aWFsIGZyYW1lIGVuYWJs
ZSB3aGVuIHBzcl9mb3JjZV9od190cmFja2luZ19leGl0KCkgaXMgY2FsbGVkLg0KPiANCj4gQWxz
byBhcyBQU1IyX01BTl9UUktfQ1RMIGlzIGEgZG91YmxlIGJ1ZmZlcmVkIHJlZ2lzdGVycyBkbyBh
IFJNVw0KPiBpcyBub3QgYSBnb29kIGlkZWEgc28gaGVyZSBhbHNvIHNldHRpbmcgdGhlIG1hbl90
cmtfY3RsX2VuYWJsZV9iaXQoKQ0KPiB0aGF0IGlzIHJlcXVpcmVkIGluIFRHTCBhbmQgb25seSBk
b2luZyBhIHJlZ2lzdGVyIHdyaXRlLg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxq
b3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IA0KPiB2MjoNCj4gLSBub3QgZG9pbmcgYSBybXcN
Cj4gDQo+IENjOiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4g
Q2M6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6
IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxOCArKysrKysrKysr
Ky0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
IGluZGV4IDgwMDAyY2E2YTZlYmUuLjJkYTI0NjhmNTU1ZWMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMTQzNiw2ICsxNDM2LDExIEBAIHZv
aWQgaW50ZWxfcHNyX3Jlc3VtZShzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiAgCW11
dGV4X3VubG9jaygmcHNyLT5sb2NrKTsNCj4gIH0NCj4gIA0KPiArc3RhdGljIGlubGluZSB1MzIg
bWFuX3Rya19jdGxfZW5hYmxlX2JpdF9nZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gKmRl
dl9wcml2KQ0KPiArew0KPiArCXJldHVybiBJU19BTERFUkxBS0VfUChkZXZfcHJpdikgPyAwIDog
UFNSMl9NQU5fVFJLX0NUTF9FTkFCTEU7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBpbmxpbmUgdTMy
IG1hbl90cmtfY3RsX3NpbmdsZV9mdWxsX2ZyYW1lX2JpdF9nZXQoc3RydWN0DQo+IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgew0KPiAgCXJldHVybiBJU19BTERFUkxBS0VfUChkZXZf
cHJpdikgPw0KPiBAQCAtMTQ1NSw5ICsxNDYwLDExIEBAIHN0YXRpYyB2b2lkIHBzcl9mb3JjZV9o
d190cmFja2luZ19leGl0KHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ICAN
Cj4gIAlpZiAoaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkKQ0KPiAtCQlpbnRl
bF9kZV9ybXcoZGV2X3ByaXYsDQo+IC0JCQkgICAgIFBTUjJfTUFOX1RSS19DVEwoaW50ZWxfZHAt
DQo+ID5wc3IudHJhbnNjb2RlciksIDAsDQo+IC0JCQkgICAgIG1hbl90cmtfY3RsX3NpbmdsZV9m
dWxsX2ZyYW1lX2JpdF9nZXQoZGV2Xw0KPiBwcml2KSk7DQo+ICsJCWludGVsX2RlX3dyaXRlKGRl
dl9wcml2LA0KPiArCQkJICAgICAgIFBTUjJfTUFOX1RSS19DVEwoaW50ZWxfZHAtDQo+ID5wc3Iu
dHJhbnNjb2RlciksDQo+ICsJCQkgICAgICAgbWFuX3Rya19jdGxfZW5hYmxlX2JpdF9nZXQoZGV2
X3ByaXYpIHwNCj4gKwkJCSAgICAgICBtYW5fdHJrX2N0bF9wYXJ0aWFsX2ZyYW1lX2JpdF9nZXQo
ZGV2X3ByDQo+IGl2KSB8DQo+ICsJCQkgICAgICAgbWFuX3Rya19jdGxfc2luZ2xlX2Z1bGxfZnJh
bWVfYml0X2dldChkZQ0KPiB2X3ByaXYpKTsNCj4gIA0KPiAgCS8qDQo+ICAJICogRGlzcGxheSBX
QSAjMDg4NDogc2tsKw0KPiBAQCAtMTU1NCwxMCArMTU2MSw3IEBAIHN0YXRpYyB2b2lkIHBzcjJf
bWFuX3Rya19jdGxfY2FsYyhzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwN
Cj4gIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19z
dGF0ZS0+dWFwaS5jcnRjKTsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsNCj4gLQl1MzIgdmFsID0gMDsNCj4gLQ0KPiAtCWlm
ICghSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpKQ0KPiAtCQl2YWwgPSBQU1IyX01BTl9UUktfQ1RM
X0VOQUJMRTsNCj4gKwl1MzIgdmFsID0gbWFuX3Rya19jdGxfZW5hYmxlX2JpdF9nZXQoZGV2X3By
aXYpOw0KPiAgDQo+ICAJLyogU0YgcGFydGlhbCBmcmFtZSBlbmFibGUgaGFzIHRvIGJlIHNldCBl
dmVuIG9uIGZ1bGwgdXBkYXRlICovDQo+ICAJdmFsIHw9IG1hbl90cmtfY3RsX3BhcnRpYWxfZnJh
bWVfYml0X2dldChkZXZfcHJpdik7DQoNCg==
