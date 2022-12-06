Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC7A643B0A
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 02:59:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB65710E033;
	Tue,  6 Dec 2022 01:58:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 840DD10E033
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 01:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670291933; x=1701827933;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=35DTWPclo2aj9ylfGeLdlRAiD7jOeqq7HbLbgWgKTGk=;
 b=TL/P83w3G+AO4N+nSeno646a6JFyP58TAS7vPl9hQT9ifjI+OLMLYx8w
 QG5qyKmM2ai2t1/EHZDZD7OLfcbtUoPw/8RbJtqDsSMqPLPF4BLA6EuxP
 2VpRmGDyHlIHSTSwujVmm0RPbhuI4eKuzbYTTsfn2H9aNRRvub8RUB9s4
 Dx3g+mT3P5GwLQrdZAn5GTicA1o5uNHBR7XLPYA1HNmVFCDaAAwJ1AWhu
 pQAb+erK+42WqgkuScK+0psy4GDCD5V5aGEkEE+XZD9SstYdNutCl4oYO
 gExDMK2medEzTbmoNoKgaBgOmgS5l3H3otmKztk3F3a83L+U6DyFX4Bi3 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="402788065"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="402788065"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 17:58:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="676807968"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="676807968"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 05 Dec 2022 17:58:52 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 17:58:51 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 17:58:51 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 5 Dec 2022 17:58:51 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 5 Dec 2022 17:58:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kqSwdQwUbHtJytPdjvOl9TqMtvHc93K4JbvFGScoyIndPZHLdqrZ2tWoMZMEqlt7ZSPrpsRs+p1IFUuIZ+yR3Tgz4G4wRPQvjDHDXFeXokl6glOWUPwMKOIBEEnoi+71pcfZstonelMB0C8Vsi798ZLvHxRNywMvxY+3h9ahKbZWmj8XKu70vVkGMz6QuTFOEzeNZVIyehvOVNL3ae982oZykS899g7LG+AmcRphDxV4HNkqtXUs7Lk33HQP4SAaGxXgAx/5DHZJqXCulgFXdSjU3jtACpaotepIqXYQqit8N1XxBscWAuIxfa/EkBWqBAT91n+yZBeH8D19zXU8rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=35DTWPclo2aj9ylfGeLdlRAiD7jOeqq7HbLbgWgKTGk=;
 b=AMscLS2ZCKhueWn4JoH1CKiDCrTnhpJReyq6pl7wyzb8fakDySjb7brIv93kn6FIP+thH12FOQIc+EW7qT2V0wZiVqVj+lNCqhPdUY+e9nPEsiR7cadYJwoebMFhQpl3z8wwV7zOuPtz58hqH3OAS9bgaNNHiJUJgRD14g0waD28pfZaFEM9HmWCCWcAPBFHCd5/EXP5dtR9IMLbcy7Km9rBJ/F7ow6AZZepkEeXZCPFNxKEjBN/TohKWCWEoSedkevUZg7BwindXZpfi+TzcSvYFx78Ot44LYPq0XqYM/X3Y0tPxKlAsz0b1m2yR8zCJ/aET+NJPY6Z4Uzbd+IOHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 DS0PR11MB7830.namprd11.prod.outlook.com (2603:10b6:8:f2::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.14; Tue, 6 Dec 2022 01:58:49 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6%4]) with mapi id 15.20.5880.014; Tue, 6 Dec 2022
 01:58:49 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Thread-Topic: [Intel-gfx] [Intel-gfx 5/6] drm/i915/guc: Rename GuC log relay
 debugfs descriptively
Thread-Index: AQHYY+gTHK8yg9O0yEGj7aaGP3Cu+K2HLkOAgNo3R4A=
Date: Tue, 6 Dec 2022 01:58:49 +0000
Message-ID: <d6e3adceee2bf581a0eceb46b6d7d99a85635642.camel@intel.com>
References: <20220509210151.1843173-1-alan.previn.teres.alexis@intel.com>
 <20220509210151.1843173-6-alan.previn.teres.alexis@intel.com>
 <87k088baww.wl-ashutosh.dixit@intel.com>
In-Reply-To: <87k088baww.wl-ashutosh.dixit@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|DS0PR11MB7830:EE_
x-ms-office365-filtering-correlation-id: ed343a16-a8f7-4eee-5693-08dad72d6b1f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qG9lz+Z8271MzIsSFL5vmF9uVos8Q804aQrllQCaiERElgj7V+b6p+E9YtnLuCOxgu9Uug/GUaBlIajTLUxW0h/QY4cA131Sz8XyWNUVGHyt0E7yEpI2kjucn6V+jE6A5hv8ovGIuN7msueTd3p4buph7QCsBGGeFFcXsJd1QbdkgbJFYCFO2rMnq9lDJtHAhGHvWMEkyhWR/OrR3/yWagNOOcYHz0NMyA996s3TqIP1HbuLKf5tsFbUeBOcvs1oNlzikIK+qCn9JzTcI/3qbZA5T+Dx0ODHVPQZUfH1gljEfVsBUmuffL2h9xhK1h5S9si/lUa81aPGbC+87du/Iwn9Sm0bfdBvciNlKnk58JU6LH8UJ7v6hwRw43iiLszmcMGacuKdcv4s8ssgTwcoISiEMQwUyM8P3Q2cO4twLHkjgqfKKWoz+au4gK8PbzGD0Hh1ojjkvrIWBeXPYEGumD0I8EqTjyBgdDpnsl34BAy8oKOIzCwcbbPeSXB0bLA3ZtlymtIzWvbAjOKCJgycc3gUDsWAwCiA8vzyRMF4FGvDrwRUVwbtVfCgAxGqzV6HIpuIvwgTGHc1KT9ahTwJ6tmd4FAecGH/NzoSKwbaS0CrImj5ufihsIp3gT/0M4nAOB71Ev0lGoBicfO8zpx2vc6/VCf+FdVcgxgh4uOO5M3kYO2jxEUFubcFw+umrWW8Sz7lCFR9/LPVFR1SIEpGXw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(376002)(136003)(346002)(39860400002)(451199015)(86362001)(36756003)(91956017)(76116006)(41300700001)(2616005)(66946007)(66446008)(64756008)(4326008)(66476007)(4744005)(71200400001)(8936002)(6862004)(66556008)(8676002)(5660300002)(478600001)(6506007)(37006003)(6636002)(316002)(6486002)(6512007)(26005)(186003)(38100700002)(82960400001)(122000001)(38070700005)(83380400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RFpvaGJncEpoT01ELzErSHo5YjFIclFwTEFheXEwODJadHM4eERHeUhBTkxt?=
 =?utf-8?B?K0lESDYyeXBCeE8wUkg1cUpQTXdNZ3cybkhQTUo1RVFIMFRHcy91YTROMUpm?=
 =?utf-8?B?cFY4bTdqaDFEMFNMM1dNMEtTMjhQUHNFcmQxV1cvZFJOOU1KaThKaDZCYXM5?=
 =?utf-8?B?clZUcVZXSXhrQmFVSDlCVHZDVzhWeDhPeUc3LzhmMXFzRHF6SStxNnFNLy9s?=
 =?utf-8?B?cXUwZGM2UzlrYXc0VzdSQWxGN1RPeVo2cGNSMENMVXhIb0xkN2dhS2JQM0VZ?=
 =?utf-8?B?M05VeVVhNUkwbHNHQnJQUHVHYnlpeU9Vd2xCQStEYXBCV0ZtVXhkZE5mVm5Z?=
 =?utf-8?B?NndUMVNSYi9FZGUwWUV2S2FCTmYzVmZYT28zalNYRVdlc1RwOFpiMXc0b3Jx?=
 =?utf-8?B?QWlHSUk4UEEzMzcxK1U3UGxuNjBNREFFdlBZMDAvaWpjdUYwbzZSaTJ3amJx?=
 =?utf-8?B?ZHVWUjE1NDZCWE1JMzFQQVJRSzlPOElYSThZb1N3YVlBSWZkc1R2TlVBanJk?=
 =?utf-8?B?aVk1QmxWci9NNFRpRjF1S254ZmNydjUvbm11Um96ZWtxNnVKQnFuM1RUa2pS?=
 =?utf-8?B?R2dxRE8wSmYwczFwZEZDbFBJUWJLUXk5Mms0cFlURUd4UC93Mk5QbEJIQ0JH?=
 =?utf-8?B?RzFVaEVLeE5GdFljMlRpOWRQa1Vra05QeHhDS3FDUmg4VUc1VmpxdHBSMHF2?=
 =?utf-8?B?czRQa2V3cng0aE15eSs0RTlsM0VkY2JMemw2ZldXVWNDNXZVeVhmNHR6SC9Q?=
 =?utf-8?B?YWkrS1BSbVBDb3dYM3d0alM3citJMjUwdmtkZCtEem1MU1U0OWVJOVgyZ3ov?=
 =?utf-8?B?RXBCV1E0OG4rRE9NcVM5bHZoNkhGaG9MemY5MmNWaG5VVVh4engyU0h1akRv?=
 =?utf-8?B?MEJLWlBRVHB5ZGtpclZsWUh3aUluVFRla1c3bCszeEd4WG14N0xnWjM5UCsr?=
 =?utf-8?B?RnlBR3NsdTk2VSs1bDVzaUp5VGZFOE5meEtmRzM0ZTVSOGVZTnpDZnRVNUJ4?=
 =?utf-8?B?QWxrdjVPY3FWQUhqWTd6MmRlWm0rODVGWkxvR2F4UzFURVI2WHFLdlB4UzF6?=
 =?utf-8?B?NCsxb2VHK2tONll4b0Y5RjJCb1MzcFRJdnRzcEZzYUZ6eW5RZGpvYWpEaGRz?=
 =?utf-8?B?TUxkL2FqTWgySGVXUS9ING85Y3ZNanF2VG82M2IzSEhqUkdMMm9RY3J4Y1lC?=
 =?utf-8?B?Zjc0S3dKaWxXOTJvbm80alhEYWV6a3kreHRRQWFBOU9INGVrNlBBTUxGdzNj?=
 =?utf-8?B?OENHWGVXOHB3VDBWS29BRnVyY1g2N0lSMW9Mb2ltV1Y5YzV6OUl4ZHRwVUxy?=
 =?utf-8?B?ckdBRVlaMzc3anU5eWgyUkloR3U1d3lPeGNKL1BwZzhUQktZaHFmcTlQTExH?=
 =?utf-8?B?WUdhVndqRkN1YVpOT3hBaGp1UlE5VSsvUVpNcllTNEdTMDRRQzd4THhYU0M4?=
 =?utf-8?B?UFdMWEUzaGdkd1NvWURZOG42YjNzUnZaTEtBaTlMbGRlaHZsSm1EbHNWZVQw?=
 =?utf-8?B?NWFDd2pIb294WG81OEl6cStDQXFNSGhoTzQvWGlxZ2NFOW5NMnZOUTNKeVh4?=
 =?utf-8?B?Z2JyQXNmcWtPK0prQ2xGUFg1QVBWdGlpNHpRYlB2TFpwS2JYUEcxd2Q1Z3Vn?=
 =?utf-8?B?dXUrWUlnRVpKZ0Y2S3p1Uk1iTzJLMG1wdEpsUE1NQS9QVHBQWjNRVDlQZXFa?=
 =?utf-8?B?QkdLWVIzNC9Fa3Y3VUVWME12c3JyS3NuMmhNZHFOVU9RcFpNQVFjdHpWZzN4?=
 =?utf-8?B?Y3draThKckloNXo1RmJ6K0RQRjZtWTdrOVhsclloYm1KYXpNZUcvODdOMC8x?=
 =?utf-8?B?M0JZNFl5bjkxZHRiY3NPZUFBUFdxbUxGS0ViUlRoYlNTZXg3VU9IZmZTK0sy?=
 =?utf-8?B?QXVkK1JZZnMxYkFRR3VOTGRtY0hOS05Bb1pwTERlWU5nWDZRd2VzREViNll3?=
 =?utf-8?B?a29sbnpnS3ZTME8yUFEvWHY4YStOS2lYZGNFZFRsNCtCOVhLZW04RlY2RFZw?=
 =?utf-8?B?eFRTdFNWeXBITnY1RGM4Ky9TaDZlOHhKeXZqVTV6MTA3K3BpT2lycUROcTUy?=
 =?utf-8?B?STU4UURZTVhIU1FOZlg1Y3piVWZ2bGF4MXdlejhRckVzbTF5TUl4Qmp3ZGpB?=
 =?utf-8?B?d0ljUi9LQnZzZTU3bU4vWGErM2ZaRE8xOWVTSjZRVUlNaHk5dWI3d2V3U0w0?=
 =?utf-8?Q?/6zyhR0/fOXf/r5FU9gkz/s=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D1B91F5A9DE27A41872B466A2D8EDF38@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed343a16-a8f7-4eee-5693-08dad72d6b1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2022 01:58:49.6750 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7yTIxeSpAVi1uORweEHobgmpMnB4jXdbeFpIEcbMwjgrXrlgxYE5TEXL1JdFtdcJB/WVYjIs27k/B2O9PNx9W7Q0HQgYZWNOcFp3ruXsiIZhTaAFjht7C8w+GaSptKED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7830
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-gfx 5/6] drm/i915/guc: Rename GuC log relay
 debugfs descriptively
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiANCkFsYW46c25pcA0KPiANCg0KPiA+ICB2b2lkIGludGVsX2d1Y19sb2dfZGVidWdmc19yZWdp
c3RlcihzdHJ1Y3QgaW50ZWxfZ3VjX2xvZyAqbG9nLA0KPiA+IEBAIC0yMDQsNyArMjA0LDcgQEAg
dm9pZCBpbnRlbF9ndWNfbG9nX2RlYnVnZnNfcmVnaXN0ZXIoc3RydWN0IGludGVsX2d1Y19sb2cg
KmxvZywNCj4gPiAJCXsgImd1Y19sb2dfZHVtcCIsICZndWNfbG9nX2R1bXBfZm9wcywgTlVMTCB9
LA0KPiA+IAkJeyAiZ3VjX2xvYWRfZXJyX2xvZ19kdW1wIiwgJmd1Y19sb2FkX2Vycl9sb2dfZHVt
cF9mb3BzLCBOVUxMIH0sDQo+ID4gCQl7ICJndWNfbG9nX2xldmVsIiwgJmd1Y19sb2dfbGV2ZWxf
Zm9wcywgTlVMTCB9LA0KPiA+IC0JCXsgImd1Y19sb2dfcmVsYXkiLCAmZ3VjX2xvZ19yZWxheV9m
b3BzLCBOVUxMIH0sDQo+ID4gKwkJeyAiZ3VjX2xvZ19yZWxheV9jdGwiLCAmZ3VjX2xvZ19yZWxh
eV9jdGxfZm9wcywgTlVMTCB9LA0KPiANCj4gRXZlbiB0aG91Z2ggZGVidWdmcywgYW55IGlzc3Vl
IHdpdGggY2hhbmdpbmcgdGhlIGZpbGUgbmFtZSBmcm9tIHRoZSB1YXBpDQo+IHBvaW50IG9mIHZp
ZXc/IEFueSBzY3JpcHRzIGV0Yy4gd2hpY2ggd2lsbCBuZWVkIHRvIGJlIHVwZGF0ZWQ/DQo+IA0K
PiANCkFsYW46IEFjdHVhbGx5LCByZWxheSBsb2dnaW5nIHRvb2wgaW4gdGhlIElHVCB3b3VsZCBu
ZWVkIHRvIGNoYW5nZSBidXQgdXBzdHJlYW0gdmVyc2lvbiBvZiB0aGF0IHRvb2wgaGFzIGJlZW4g
YnJva2VuIGZvcg0KYSBsb25nIHdoaWxlIG5vdyBub3RoaW5nIG5ldyBjYW4gYnJlYWsgb24gdG9w
IG9mIGFib3ZlIGNoYW5nZS4gSSBkaWRudCBzZWUgYW55IG90aGVyIGNvbW1lbnRzIG9uIHRoaXMg
cGF0Y2ggLSBsZXQgbWUNCmtub3cgaWYgbWlzc2VkIHNvbWV0aGluZyBlbHNlIC0gYXMgaSB3aWxs
IGF0dGVtcHQgdG8gcG9zdCB0aGlzIGFnYWluIHRvbmlnaHQuDQoNCg==
