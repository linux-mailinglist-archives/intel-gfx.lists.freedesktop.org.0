Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9D364C317
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 05:16:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E519610E213;
	Wed, 14 Dec 2022 04:16:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8E9210E213
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 04:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670991363; x=1702527363;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cdhpClhfmeTJTqiHHHX4P55w5LjWBrHhi4mcpOhxw1Q=;
 b=C3Sw4ZInYVVb3/AQ0xA5Sj0Cq47psuIJkkb0fgtq82x4V8HDFcBRlWYG
 NfjS2+Q1ZAVa83tVI+jWVCR88qhOoyKRtqJR8RYjPbdU1xwhrkMMV9Klk
 K2QPw1VZiFALcNvWxsfQ/IrGk6x2AHaj4tNQkqRTnY6jEHfYpC2c19V35
 ygl5Yv2DseYeFK4I0zdXCl+NMY43rxdiFeGbnT4UynErHjRn6vIJzuKZ8
 ysweSNywl0GQ/++U+EWfHpUCc8VyCEBLQUGlyGZvG3eJZns0v9EwKmZdR
 NyaF0a73GUaBrMPfVFeR8M9mEAeT9Uqa+RoPURQcSVqyu9VCm5B6Jwp4h w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="305946026"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="305946026"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 20:16:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="642369834"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="642369834"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 13 Dec 2022 20:16:03 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 20:16:02 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 13 Dec 2022 20:16:02 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 13 Dec 2022 20:16:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WVfuHsyhFTP73PUiZXdzPPTruNy3daW2GTEWuJoOwYDjx5xLBRh1JAfimKdUs5gXuTRXFAEeF42wpnqluSO9UJTNVWa7Odu/lAyVARZgH/jtEKaDlk+mmkz6fvcp6QhQ2shL22wFg5m+nuqJ0vwyhpIa8FVdRBsPR5RTdZtPBFeQIEaezVijabJuy9Jy5Oqbiw/tMSpFQJfzgmw2jFAGTHbtPVjcigKm8rAntcym1Ni7dFIWByDK6wVgYqv/tTbmTyuh8WjiRbAaEosMT56mE07W9uV0RHn6t0ReEtEEDtVmSKavsBVEoTXUZc1B6t6mAI3uLxDEMyW3YxXgo8SEfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cdhpClhfmeTJTqiHHHX4P55w5LjWBrHhi4mcpOhxw1Q=;
 b=kxyCbevPGeIsxr/598nz3QbaPKNVIIN3RO6tDH0hRr2ps65udhGba5s1IpmnsIYDrfaTIEZ1OfZaeUytDnw9/F1ec5R1CBdoD39M6rgXVReALVIoIs1+vvMFPu+o84uFXcgTrEKMkjl2D2d0wp3cF9VGTQa32wsyVFUUzi1+egz9/njoT+myzS4JMwp6Eds2oqN1fyX/O4dNXuEE9JTf/2rMzJ5f7pyAn8XhyoBL8Ls8G9bQCvmJzBXmq6dh3EdUdNTtgR3zJwoln6iHNpnqqIIi19W0rb2aupX4nQkVmjMjAUucFjv+jcMosZbczve8RPQ924hU4LkIi/p+pDRBhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3170.namprd11.prod.outlook.com (2603:10b6:208:64::10)
 by DM4PR11MB6120.namprd11.prod.outlook.com (2603:10b6:8:af::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Wed, 14 Dec
 2022 04:15:59 +0000
Received: from BL0PR11MB3170.namprd11.prod.outlook.com
 ([fe80::8189:b5f5:4397:3530]) by BL0PR11MB3170.namprd11.prod.outlook.com
 ([fe80::8189:b5f5:4397:3530%6]) with mapi id 15.20.5880.019; Wed, 14 Dec 2022
 04:15:59 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/7] drm/i915/display: move more scanline
 functions to intel_vblank.[ch]
Thread-Index: AQHZDjY7S6mr+lYzqEqInl+7DRVqrK5syLlw
Date: Wed, 14 Dec 2022 04:15:59 +0000
Message-ID: <BL0PR11MB31703B1D64C3125DE1B3EADDBAE09@BL0PR11MB3170.namprd11.prod.outlook.com>
References: <cover.1670855299.git.jani.nikula@intel.com>
 <ad40080099b3d0c95f0fac89053b5c34d2ef4549.1670855299.git.jani.nikula@intel.com>
In-Reply-To: <ad40080099b3d0c95f0fac89053b5c34d2ef4549.1670855299.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3170:EE_|DM4PR11MB6120:EE_
x-ms-office365-filtering-correlation-id: 0754d9e8-2cc2-45a9-e3ca-08dadd89e7b4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZIC7pr2a0dNL9HxaJizfGVCZMtQ+t3FV8kR1iMFoIak4rKEkMPpmSUaYAPU4bXLCpr+RYfTrXMqVcx19XGeybKaUYLt0qMQyCNX0kPfne2cBmyBGcjNqlu/RNLC4HP0yQSfY6jFgLXrleEekgCdJjRk/ZURVpy/UKWd2bQS+fHGQ8Da1MWdZAGJpUsghv40GMutepJ9x0qMNoaVGNzYlD4JiwNQxCyyippVyI3fOEiDpwQow4+LP2TyPOcz6ITUeqUHyKLlrF8ngsC/ORGjnYjNICOzu9I+PBICYCDrG/D+FMvYMDl10DGPBF5FyJ7/0Lj8BSMQSpabVghSxRp555u8Ni7u6xlyG6HMIwtXSZfCaJIVttIFEIlfQaLz71p+I5lpXVhUoF6zz94Mcpf4YcXnpmlFsYcEFVsrqWHGKtu6YwrlMjHyH0WstogbIiwh5QXYQuveraapVa36kdcU6QJSgHshm5TyYqZihcfA7GHHw3/ZSeCyQ01JyCWpQ3M4cwjumN+LkSxUO0OHouZwMGoOkqnzWmFmcyOmaFpxYb+AOvwOFPFENihMKnxT2ifUFxxusHHNViYu/AMhnsZtytVnvSKEhHepZScIrsjNyQXRXiJjsxjE4P0QOIUte8YGwl1vkhSE8oTCEqUF61W63ChKnPnmAw7oAoS0/k/Kqu2HHPuiEUpxFaAZV/AxJcSQ5CJCRKf11Z9DiGrL3PzOP/g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3170.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(136003)(376002)(396003)(346002)(451199015)(478600001)(55016003)(86362001)(38070700005)(7696005)(26005)(71200400001)(55236004)(38100700002)(66446008)(66476007)(110136005)(53546011)(5660300002)(8676002)(76116006)(64756008)(4326008)(107886003)(66556008)(66946007)(6506007)(9686003)(8936002)(2906002)(41300700001)(316002)(82960400001)(52536014)(122000001)(186003)(33656002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V25QR3dYcW1JL295eFE0T3ZnM045cnRReWIxL2ExaDBzelhaNmlrSE96djVi?=
 =?utf-8?B?TjhGKzNITXkxK2ROWi9iS0xGUytJb1V1T1NtQ09vb2ZXWkVYczlrazlQTmVm?=
 =?utf-8?B?VGdqZVhYUGN6dVpFUkJHNEtYRjE4Q0NVYTBNeXdOYi9hT0RTUGc0a3VzRTVL?=
 =?utf-8?B?a1A0RDJyRjkwRDdCN1VUUjZJNGlUZk5ZNjhqVkxEcHJPVkVtQmJIeDlDWDEw?=
 =?utf-8?B?N1ZSMjJKRmN2VFNQK2pMTVhXWGhBSFRDYXJ6WVlYaExrcGhxdVdGWFFCM0pL?=
 =?utf-8?B?WTNVZ0ZhTkRlVm84czNGbi9rWkFsMWVWNGFZeElUR1BpZzgvTG9ZMExtN1dQ?=
 =?utf-8?B?L0tjVmZqemN6TGlSaXJPTHdzZmNUUExhd3lieWhJNUZ5b1dUTEhGZnJYcklr?=
 =?utf-8?B?WmxucmFOcVNEbm1LNWxNbjIyQUhLWFRBc093SDdvTFc2THZaRGwwVW11clVq?=
 =?utf-8?B?NFRXOEkyZ1hYNC9yR1RUcmRzWG4zcTJHL3FMU0FUUW9jUTVEa3lpKzEwU0cv?=
 =?utf-8?B?cWVsMHBBUDhLY3VISGlMMTdWeGFObml6c012K0xUZ2djSFJ4ZzlrMkNzNTg3?=
 =?utf-8?B?c090RFc5dlJqTlRabC9zam1OTHV5Titab0FyVVhWa2xNMWRYL2czRGkxbWxn?=
 =?utf-8?B?ZDBMdy9jSUxGaXpWSWxla2pUQytmeDlRT2RyZUlXS1l5NVJKWTBPSW9aS3Na?=
 =?utf-8?B?YldZbW9mbUNVUjRZWVUrMnB2RkdPTkpmcWZUQkNJczVuZ2VheFJ5WHNjRHp5?=
 =?utf-8?B?dzU1ZGdJZU5RNjdlazhMWVVoOEdlOG1CMGtrYXNnV25XK0Y2ZWY1UXlvdkpm?=
 =?utf-8?B?S3orRVdXQll4ZDV1ZGRNOTEwbUw5Rm85TUFsSmdILzNmSjlrcXZDUFN0Ymkv?=
 =?utf-8?B?RTdPL2VNZnR3TytpaFQzQzROSnd2V3FOSE9USzk3Vk1zWThwaCtrME81eHYr?=
 =?utf-8?B?V1NrUW5CaDc2bUxlcWIvYnU5ZDlTQ1dqRlhibjFZNm5SUGlQcjdFL0hiNWQ0?=
 =?utf-8?B?TzROVC9oS25YRWhidVZSZDhkVGtMU1QwdjN5ZWZSU013SnF6TFo3R05Fb1lI?=
 =?utf-8?B?Mm8wOHlneURqTWpQUStEaG9JcnAxcXlpeEVrVWtHQXVYVmd4T3hkaWl6RmNP?=
 =?utf-8?B?Z0dLdEtkdmwrM3ROUmpOb2NXZWhEQWYvYWxIczJoSWVQdi9rOTB1RVRWYml0?=
 =?utf-8?B?cjJEaFJtdU03MnA2Z2pYY1p5Y3h0ZEFmMVlBSmRwV3RjTW5aSGhUSFliK1B1?=
 =?utf-8?B?bFcrRFVqMzY2NHNMeTdWNFBDOTk5cjNLWG5WWk8xQ2Q0RzlNcG9LM2doeUI0?=
 =?utf-8?B?NkU3WlF2T2k2N0g2cmU2ZUR2RHJOWThuRWZnb0xIZkRvT29HaHBZK2pKQkVB?=
 =?utf-8?B?V1lOdlcrVUFTVnFqKytvOUUxZGo4bENrTkl1MzhPOVF5Z2dQVjJMb2J1UWVq?=
 =?utf-8?B?VXNhOUdyU0Z5QVB6RC9DYjhGVFhzdEFvTUl4UGxKajRkVTdaMzVkWlQyelg0?=
 =?utf-8?B?OFlZMEVKTURNQzUzQmJyL0dMQnFlbXQ3NUQ4QTYzdjVpOHh5bE5WUDBLbUtv?=
 =?utf-8?B?WDdFbHFab1ZZTy9XWGFwaGRibjI1am5YejJkTTdyMHc3OHpUWENQd2FBVkJD?=
 =?utf-8?B?SnR0bytFUDFxbWF0VjlpUm1OVEx1UFpLM3M1QnBhdEo3WnR4aithN05YUHJO?=
 =?utf-8?B?dW0xZGwzZHE4bVFGQU82eG84S0Zqd2lObmtJZDh4aW4rOUFnSUZCZGtrWlFs?=
 =?utf-8?B?WnpFS0dwREJudHBLa21xTXlVS0xZelkxVWI3RWdPUUpycEVUckdLNjNDYUxR?=
 =?utf-8?B?MWdvVDVQR2p1SW96UFp2dk9taCtDSmZWcVRjWnNSb2ZJUWt1cC9hcThTeXdy?=
 =?utf-8?B?OXlzbDdvSjdMY3dsYy9KaWJobTJldWZrcHZYek14dm9NLzZCdFpzZkZOOVJW?=
 =?utf-8?B?SWxQU3lMVnN4SUVpOExwSmp3aS9Bd1NmbFljQUZXUzBhV3dFa2JUTThURFBj?=
 =?utf-8?B?aFZIeDhRWTNWK0NvYVN0UnlMMjFoNHB2NTJnV3kwV1JSdUIrMlZzTXA4aEFQ?=
 =?utf-8?B?RHFwTVNMNWZ2MUdBaSsvVnBzOWZmQStHL2s5bWRKOWw3dGRpVDVzanZGZThs?=
 =?utf-8?Q?Oq1PfbRs+/ZWmx/yiu8F1QqS8?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3170.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0754d9e8-2cc2-45a9-e3ca-08dadd89e7b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2022 04:15:59.3527 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mf56quTZmdE9bVBRUKHx7+ScFr1xXQNb3mboxvATHKPeOHZz2hKuG4iLMNBci5teYnQUhu4jJvkJgMzjJkWiAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6120
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/display: move more scanline
 functions to intel_vblank.[ch]
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEphbmkNCj4gTmlr
dWxhDQo+IFNlbnQ6IE1vbmRheSwgRGVjZW1iZXIgMTIsIDIwMjIgNzo1OSBQTQ0KPiBUbzogaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTmlrdWxhLCBKYW5pIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCAyLzddIGRybS9p
OTE1L2Rpc3BsYXk6IG1vdmUgbW9yZSBzY2FubGluZQ0KPiBmdW5jdGlvbnMgdG8gaW50ZWxfdmJs
YW5rLltjaF0NCj4gDQo+IFJlZHVjZSBjbHV0dGVyIGluIGludGVsX2Rpc3BsYXkuYyBieSBtb3Zp
bmcgdGhlIHNjYW5saW5lIG1vdmluZy9zdG9wcGVkIHdhaXQNCj4gZnVuY3Rpb25zIHRvIGludGVs
X3ZibGFuay5bY2hdLg0KPiANCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3Vs
YUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgfCAzNiArLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jICB8IDM1ICsrKysrKysrKysrKysrKysrKysNCj4g
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuaCAgfCAgMiArKw0KPiAg
MyBmaWxlcyBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspLCAzNSBkZWxldGlvbnMoLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGlu
ZGV4IDZjZGZkYWUyYzcxMi4uMGNkYjUxNGQ3ZWUwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtMTE1LDYgKzExNSw3IEBADQo+
ICAjaW5jbHVkZSAiaW50ZWxfcXVpcmtzLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfc3ByaXRlLmgi
DQo+ICAjaW5jbHVkZSAiaW50ZWxfdGMuaCINCj4gKyNpbmNsdWRlICJpbnRlbF92YmxhbmsuaCIN
Cj4gICNpbmNsdWRlICJpbnRlbF92Z2EuaCINCj4gICNpbmNsdWRlICJpOXh4X3BsYW5lLmgiDQo+
ICAjaW5jbHVkZSAic2tsX3NjYWxlci5oIg0KPiBAQCAtMzg2LDQxICszODcsNiBAQCBzdHJ1Y3Qg
aW50ZWxfY3J0YyAqaW50ZWxfbWFzdGVyX2NydGMoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUpDQo+ICAJCXJldHVybiB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUt
PnVhcGkuY3J0Yyk7DQo+ICB9DQo+IA0KPiAtc3RhdGljIGJvb2wgcGlwZV9zY2FubGluZV9pc19t
b3Zpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiAtCQkJCSAgICBlbnVt
IHBpcGUgcGlwZSkNCj4gLXsNCj4gLQlpOTE1X3JlZ190IHJlZyA9IFBJUEVEU0wocGlwZSk7DQo+
IC0JdTMyIGxpbmUxLCBsaW5lMjsNCj4gLQ0KPiAtCWxpbmUxID0gaW50ZWxfZGVfcmVhZChkZXZf
cHJpdiwgcmVnKSAmIFBJUEVEU0xfTElORV9NQVNLOw0KPiAtCW1zbGVlcCg1KTsNCj4gLQlsaW5l
MiA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIHJlZykgJiBQSVBFRFNMX0xJTkVfTUFTSzsNCj4g
LQ0KPiAtCXJldHVybiBsaW5lMSAhPSBsaW5lMjsNCj4gLX0NCj4gLQ0KPiAtc3RhdGljIHZvaWQg
d2FpdF9mb3JfcGlwZV9zY2FubGluZV9tb3Zpbmcoc3RydWN0IGludGVsX2NydGMgKmNydGMsIGJv
b2wgc3RhdGUpDQo+IC17DQo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
dG9faTkxNShjcnRjLT5iYXNlLmRldik7DQo+IC0JZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBl
Ow0KPiAtDQo+IC0JLyogV2FpdCBmb3IgdGhlIGRpc3BsYXkgbGluZSB0byBzZXR0bGUvc3RhcnQg
bW92aW5nICovDQo+IC0JaWYgKHdhaXRfZm9yKHBpcGVfc2NhbmxpbmVfaXNfbW92aW5nKGRldl9w
cml2LCBwaXBlKSA9PSBzdGF0ZSwgMTAwKSkNCj4gLQkJZHJtX2VycigmZGV2X3ByaXYtPmRybSwN
Cj4gLQkJCSJwaXBlICVjIHNjYW5saW5lICVzIHdhaXQgdGltZWQgb3V0XG4iLA0KPiAtCQkJcGlw
ZV9uYW1lKHBpcGUpLCBzdHJfb25fb2ZmKHN0YXRlKSk7DQo+IC19DQo+IC0NCj4gLXN0YXRpYyB2
b2lkIGludGVsX3dhaXRfZm9yX3BpcGVfc2NhbmxpbmVfc3RvcHBlZChzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YykgLXsNCj4gLQl3YWl0X2Zvcl9waXBlX3NjYW5saW5lX21vdmluZyhjcnRjLCBmYWxz
ZSk7DQo+IC19DQo+IC0NCj4gLXN0YXRpYyB2b2lkIGludGVsX3dhaXRfZm9yX3BpcGVfc2Nhbmxp
bmVfbW92aW5nKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKSAtew0KPiAtCXdhaXRfZm9yX3BpcGVf
c2NhbmxpbmVfbW92aW5nKGNydGMsIHRydWUpOw0KPiAtfQ0KPiAtDQo+ICBzdGF0aWMgdm9pZA0K
PiAgaW50ZWxfd2FpdF9mb3JfcGlwZV9vZmYoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
Km9sZF9jcnRjX3N0YXRlKSAgeyBkaWZmIC0tDQo+IGdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3ZibGFuay5jDQo+IGluZGV4IDc4YTU3OTQ5NmFkMS4uZjI1ZWM2NDNhMGEzIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gQEAg
LTQxNywzICs0MTcsMzggQEAgaW50IGludGVsX2dldF9jcnRjX3NjYW5saW5lKHN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjKQ0KPiANCj4gIAlyZXR1cm4gcG9zaXRpb247DQo+ICB9DQo+ICsNCj4gK3N0
YXRpYyBib29sIHBpcGVfc2NhbmxpbmVfaXNfbW92aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwNCj4gKwkJCQkgICAgZW51bSBwaXBlIHBpcGUpDQo+ICt7DQo+ICsJaTkxNV9y
ZWdfdCByZWcgPSBQSVBFRFNMKHBpcGUpOw0KPiArCXUzMiBsaW5lMSwgbGluZTI7DQo+ICsNCj4g
KwlsaW5lMSA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIHJlZykgJiBQSVBFRFNMX0xJTkVfTUFT
SzsNCj4gKwltc2xlZXAoNSk7DQo+ICsJbGluZTIgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBy
ZWcpICYgUElQRURTTF9MSU5FX01BU0s7DQo+ICsNCj4gKwlyZXR1cm4gbGluZTEgIT0gbGluZTI7
DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyB2b2lkIHdhaXRfZm9yX3BpcGVfc2NhbmxpbmVfbW92aW5n
KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLCBib29sDQo+ICtzdGF0ZSkgew0KPiArCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOw0KPiAr
CWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsNCj4gKw0KPiArCS8qIFdhaXQgZm9yIHRoZSBk
aXNwbGF5IGxpbmUgdG8gc2V0dGxlL3N0YXJ0IG1vdmluZyAqLw0KPiArCWlmICh3YWl0X2Zvcihw
aXBlX3NjYW5saW5lX2lzX21vdmluZyhkZXZfcHJpdiwgcGlwZSkgPT0gc3RhdGUsIDEwMCkpDQo+
ICsJCWRybV9lcnIoJmRldl9wcml2LT5kcm0sDQo+ICsJCQkicGlwZSAlYyBzY2FubGluZSAlcyB3
YWl0IHRpbWVkIG91dFxuIiwNCj4gKwkJCXBpcGVfbmFtZShwaXBlKSwgc3RyX29uX29mZihzdGF0
ZSkpOyB9DQo+ICsNCj4gK3ZvaWQgaW50ZWxfd2FpdF9mb3JfcGlwZV9zY2FubGluZV9zdG9wcGVk
KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKSB7DQo+ICsJd2FpdF9mb3JfcGlwZV9zY2FubGluZV9t
b3ZpbmcoY3J0YywgZmFsc2UpOyB9DQo+ICsNCklzIHRoaXMgd3JhcHBlciBmdW5jdGlvbiByZXF1
aXJlZCwgc2luY2Ugbm90aGluZyBlbHNlIGlzIGJlaW5nIG90aGVyIHRoYW4gY2FsbGluZyB0aGUg
ZnVuY3Rpb24gd2FpdF9mb3JfcGlwZV9zY2FubGluZV9tb3ZpbmcsIGNhbiB0aGlzIGJlIHJlcGxh
Y2VkPw0KDQpUaGFua3MgYW5kIFJlZ2FyZHMsDQpBcnVuIFIgTXVydGh5DQotLS0tLS0tLS0tLS0t
LS0tLS0tLQ0KDQo+ICt2b2lkIGludGVsX3dhaXRfZm9yX3BpcGVfc2NhbmxpbmVfbW92aW5nKHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjKSB7DQo+ICsJd2FpdF9mb3JfcGlwZV9zY2FubGluZV9tb3Zp
bmcoY3J0YywgdHJ1ZSk7IH0NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdmJsYW5rLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3ZibGFuay5oDQo+IGluZGV4IDljMDAzNGQ3NDU0ZC4uNTQ4NzBjYWJkNzM0IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5oDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmgNCj4gQEAgLTE3
LDUgKzE3LDcgQEAgdTMyIGc0eF9nZXRfdmJsYW5rX2NvdW50ZXIoc3RydWN0IGRybV9jcnRjICpj
cnRjKTsNCj4gYm9vbCBpbnRlbF9jcnRjX2dldF92YmxhbmtfdGltZXN0YW1wKHN0cnVjdCBkcm1f
Y3J0YyAqY3J0YywgaW50ICptYXhfZXJyb3IsDQo+ICAJCQkJICAgICBrdGltZV90ICp2Ymxhbmtf
dGltZSwgYm9vbCBpbl92YmxhbmtfaXJxKTsNCj4gaW50IGludGVsX2dldF9jcnRjX3NjYW5saW5l
KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsNCj4gK3ZvaWQgaW50ZWxfd2FpdF9mb3JfcGlwZV9z
Y2FubGluZV9zdG9wcGVkKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsNCj4gK3ZvaWQgaW50ZWxf
d2FpdF9mb3JfcGlwZV9zY2FubGluZV9tb3Zpbmcoc3RydWN0IGludGVsX2NydGMgKmNydGMpOw0K
PiANCj4gICNlbmRpZiAvKiBfX0lOVEVMX1ZCTEFOS19IX18gKi8NCj4gLS0NCj4gMi4zNC4xDQoN
Cg==
