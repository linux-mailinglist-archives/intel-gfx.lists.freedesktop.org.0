Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 461F26CA2E6
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 13:55:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5038D10E563;
	Mon, 27 Mar 2023 11:55:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B36110E563
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 11:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679918147; x=1711454147;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8ge8UcYN2Spk9EXcJzLIVpeLH3DlauSgMv53qvSOJKk=;
 b=bbhd560fx0ijQQO5bPGsZqYJOl+TTqODhrtMTgYrb1HWBdoCu0yg+MCp
 luUFGwhNkxIhn9qqzxfd+xqkuKpz+M7h+Va/gNvHvX7VU1exV0aMEW+Cd
 pQzqdmlC4o5UtWmqnGLiPghIkDBwsAOADmqdY/c+7GRtUQN3UJaPUTtc3
 KOgRRAfzL5w2DuLSy+0WhZacdVaCTdzwXhsuyhsNgOmelyT1k98pHfwcU
 TnSVKTiZTFGnw/bqsSX9e4VJ7F6lDNLSLZDTDoCRl48QfaNdPOLulO21U
 01xd7F0VzzWKONePSFM+ZpHGkCoqJfPw1CocDbGvs/LlItm125UNey/0g w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="341818746"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="341818746"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 04:55:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="827016034"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="827016034"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 27 Mar 2023 04:55:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 04:55:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 04:55:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 04:55:46 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 04:55:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QAnWoPa8w/O9zYVKTS+M5u5H7O+eR3V3yGcSrIkNo6IdYhjhrwYCw6r3MPJipXx73GrQ/Scb56RUeJa1alrahxb1YGArimyfNbbOKPhnsNVoWsabbZMTYMxzn6D5A70Xr3+ztiKRehn2iOI/PoCRveWjPIunambjrY/1VKbLjqCFf04FXUexcIQ1kSLozjmqVlTlI1kx3WMlm26KlzwqGFHwa19b6WTgUUipc/CDrfYjjqmqZxmyl9G24f6q+CKv+G7bXxRZ4dvYHr8uDyzGpvHouwy3KzKltzZcSB1k7n1uB6UpSnMiO3jAJCQB3OdCnnmSsS0Vn/L8ErEcRi8XGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8ge8UcYN2Spk9EXcJzLIVpeLH3DlauSgMv53qvSOJKk=;
 b=LenGeYbnSc45k2kRnYXRGxeh2z9XdXcAbjyYWN6/6LzcWpOfiDonaX+VHGiqOed6SQOBMhVqvxmJqHakXQdLEtjZMIEtCyiCap7cbW9FJcEuWmFiz2rACwdS6tzVYp9BTGD+BXn8HNiij4JzKnje/NURx6wCBYk1uih/+vnoLSANKV1eqs3cjnm1aIXO3lWRPinB3o6v48PAcgXRC6bIEA17F+Ljl7IS0uc7XkWabX2QGvXWNuNNaovUKMdnLAj1w3EqsbufMRIkZVRYYJF9RTw1Mxqy/ttpQT4o2CW2whpfa2TmZemqTCBJhD17Hpa080vvHp6VFcNVX0DnQwzikw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DS0PR11MB7649.namprd11.prod.outlook.com (2603:10b6:8:146::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.41; Mon, 27 Mar
 2023 11:55:44 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%6]) with mapi id 15.20.6178.041; Mon, 27 Mar 2023
 11:55:44 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 18/29] drm/i915/tc: Drop
 tc_cold_block()/unblock()'s power domain parameter
Thread-Index: AQHZXZLeqG32JDqK7k2v9M7BH03EWa8OiuOA
Date: Mon, 27 Mar 2023 11:55:44 +0000
Message-ID: <MW4PR11MB7054BDB170359E2A736EAFB3EF8B9@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-19-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-19-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DS0PR11MB7649:EE_
x-ms-office365-filtering-correlation-id: 17d3081c-ebb5-4f2f-c14a-08db2eba3237
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Os//PScaQJaZ8qpa/I8qWHy5iVzBMT+iLy5LG6CDR4upKVP2GCJLrRicSHMBZuzRYQdt6gChXq7TzKsBzu24CXss8+HQXxQmC88wx3BEzTX6SSHI9WTt5qPO9/Jva0kjzMQ6RInQNLXF+AmNqzxHMwAZLdlVQXMbZsHd1Qm++Fv/MMnBeHDFBNwW2/aPfpt5Ja7bSXpmVW2vr1QYFyS5QR/HVbJjTBofgze6CG4YBPVoF27e/mi7W8dZkU33zohoWYd1zgAz9MGAzTlJAZo7GIftTk2mahJ9WezO753O6YCbeXbl2c2QTgxeHGPOQYzlMHqnwyTRXI+Z5lDGyU/xJu1R7CEUU2Phil2sJeodvyqE+Ewrq0ysQR8IW0gN3E6QpWCTWorO5urODtZu0gJ42SYWAOuGsYhobKo54lYyLZGbDP2CWP/LiVPsU+S5wB+moRv8L24V4UiYNvbVUsT95I4QdmHETNLfPwuHgkQIqZ0nWWr9ht9iJAY660Wit70S3INgqXHPW9iVI5YXkI+PC4YvjcdmULkmBuIvV6NbXxUusiRb34p5+OMmW2sxGfaczXZ9ro4vYQBe3Wm00u3QGqYfeWIiU4HIBWxNUi29wivyzq9OfqFTubntfZmPwDC3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(39860400002)(136003)(376002)(396003)(451199021)(478600001)(71200400001)(7696005)(41300700001)(110136005)(9686003)(316002)(6506007)(55016003)(26005)(53546011)(66446008)(76116006)(66946007)(8676002)(66556008)(66476007)(64756008)(186003)(33656002)(83380400001)(2906002)(52536014)(122000001)(5660300002)(38100700002)(38070700005)(86362001)(8936002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SkxjS3ZRbU9ta0dsb0JaYk9DT2N1NC9GVmdSdmRvOTZLUjdjZkJEV2ZEQ29Q?=
 =?utf-8?B?L0psSFhSUkxjNkVJanQwMUVMbGNsRFMxUEV6Tm40NHk5VFZuSFNrV0NWMHp6?=
 =?utf-8?B?UlcybDhaOE9pS0JISHRyTGJjQ1VkQ3JZSTVzRW9kNzk0dVBZVm95UmNsckFi?=
 =?utf-8?B?cFZoSkpwTGZ2MUxINEZkT0EyZHQ3NC8rUWZZL2NXcDhQUVRlaEZEcjFJYUxr?=
 =?utf-8?B?WFhRQWhEbVk1dXRwWGYwSHdjY2wyK3hZRGQzUVplanN6amJkNENqYXRRVEkv?=
 =?utf-8?B?VmZ5eVcyRkQ4QVRkcWl4a1FHNC9NZUtYT3dzd1BpamErYmVET1Z6UmtHUUsx?=
 =?utf-8?B?WHUzbVQveHJ6dHU5L1EwNkxvU0VGVWZGTUxBazdxOUtJbllUc2NFL0pjckR4?=
 =?utf-8?B?bkhZZ091aGFrMjUvSitxSUJxQmxNV3VFZE5xUWF4bUR4dTQ5YjF6aE9zbURq?=
 =?utf-8?B?OVpiVS9zcGFWL2duWEtMa0x2b3gxUEVMZ1ErVitZUWl0cFJ1R093VmhVUTVN?=
 =?utf-8?B?a0RzTzA0UnRwM2RGUGp0WGF1VEpZWkNYMmdsdHZoMGllN3pvaXMycmJjKzNE?=
 =?utf-8?B?RGtmSXZpWGgzbzJRdExhZlFEVE43N2dKZ0xpZEFCb3JWenB0VHoyRTczSVBj?=
 =?utf-8?B?WHdoUE0xQlNTb1B6QWdYSnV2em4razFwM2Q3V0NwM0NhcGc5OFhaM0M4RkdL?=
 =?utf-8?B?NFBPaHBydHVxeDl6TjE5VStXa0VpN085cWJUT2tlYW9vUDduTDVXdlNpNmJq?=
 =?utf-8?B?eTB3SkJJUGdGZHBPM3RhcHpnMlNsVlBENC80VG9XK3ZVdjQ5WDRwT1RvSHhL?=
 =?utf-8?B?TEhORm5jeW1kQ1o5M3ZERlczSnNpNkVMSDY5Z2kzclBYMThnM1B1b21kNXZj?=
 =?utf-8?B?THhIYWlEQkZ4MU1jZTlKYVRFbWpXVW1RVDUwUVFCYUxBd3doNmRROVljSC8x?=
 =?utf-8?B?TTA4d0pURTZzSzFmbXRlL0h6b0VrZ3NKVk5tWjdvbFllQUpqRlJHMUkxMkEw?=
 =?utf-8?B?OGxPNU5hbjVxUm1ySklWcFA2UmxwUzI4SGpKdHU1V0JZV2tPTDh4UlNvMzR3?=
 =?utf-8?B?RHNDTU9ZZ2pMbXFWa3BRME5ib3lGWFZpWHJJT2owUFpyTmtlam5LS2IwMjVI?=
 =?utf-8?B?TnkxdGhlTTYwMWRLa2UwUEZmbmdLNmhCWEZ3QTk3RUNib2gwVkFlcTc5OTgr?=
 =?utf-8?B?Q2FZRmlRcWlUdGNsbTM1SXc5ckU1R2ovRG5CRzRXNGVac0FvK09iYVZLVzZn?=
 =?utf-8?B?NWE5Z1B4b25tMEtTWm84MFhGYm53ajJyemJDZUluUzNIVzlqdHJkbGtyUDZl?=
 =?utf-8?B?VGduZTRZaFVFUE5FYXRLZTB0WnVOVnZpNVQ5ajY2cS91T28rdTJsazArTHpx?=
 =?utf-8?B?WXRYWTd4cDJXWXVEVTJpNEdBOUgvMndzWnY0TVo1TExncHlVbWlPWG9MbHVO?=
 =?utf-8?B?RGVhblkxVHVLMGoyS1BKU1hCRXQzamxuSWVqWUZmdWZ1RTNvVGJWK2hPZ05O?=
 =?utf-8?B?cHBYc3BKaG1zQlc4MGI4MHZkbXZxclpJNVk0L1hJMzRQNWlTNTRKUkxtdVdR?=
 =?utf-8?B?enZ2MlJya3lhRlJ2Q2NJQlQ0NWMyQWVrRFpSbWpPbVB1SWFmR3lBdWd0SlBu?=
 =?utf-8?B?YTVpQzhIVTcwZWhCVWdXZ2lMeEw3dE5ZYlhKNUxoTWlCR2wxSDkwM0E4R2d5?=
 =?utf-8?B?ZWt3VTVnbHlDdXpLR1lnYXJsNC9SVkQ3cDFCTzEvbHJrTnJBcGZybDAxUW9s?=
 =?utf-8?B?ZDVtekdRWXlnSW5JdTcxa0xnWTZPQzZUYlM2d2RKVlVzbkJSRWZFZC9MODJ0?=
 =?utf-8?B?ckZUd2NobTNYNmFEamhWaFArSjY5bHlJRUtIVURPS2EvSkJBbTRLdU5POHlT?=
 =?utf-8?B?aWRZMXZXQ3VVL1lTRWhybi9OSzA3TjAyYlVUN29lN1owL29Cc3N6aHlVSllV?=
 =?utf-8?B?SEZabVhEbjhRNWJlY3pyeFFNQ2t2TTJ0T3VEenBLM3dKQm55c0llLzZNQW1t?=
 =?utf-8?B?UnF6L1JlZXNlZEVtQ3N2aGtKeWZnK2pqTWJwemZ1NnlXeFEzRnVITjYrNjg0?=
 =?utf-8?B?L2kyaUE2OVRObGxPb1d6QVkzc3l5dDV6eGxrTzhJL29meUw1S1UxUy9ieEpv?=
 =?utf-8?Q?lYUDVAiiowi+gsVrph/w+RsRJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17d3081c-ebb5-4f2f-c14a-08db2eba3237
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2023 11:55:44.4054 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uLGvXXMWmCZZKjWXAYSl1F7oPuHpvPrsQLGJi008nrZEMc/k7kmGi23gSMcQoHvNL330pamAxvxbWgLFTUMR4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7649
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 18/29] drm/i915/tc: Drop
 tc_cold_block()/unblock()'s power domain parameter
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUNCj4gRGVh
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMjMsIDIwMjMgNDoyMCBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MTgvMjldIGRybS9pOTE1L3RjOiBEcm9wIHRjX2NvbGRfYmxvY2soKS91bmJsb2NrKCkncw0KPiBw
b3dlciBkb21haW4gcGFyYW1ldGVyDQo+IA0KPiBTaW1wbGlmeSB0Y19jb2xkX2Jsb2NrKCkvdW5i
bG9jaygpIGJ5IGRyb3BwaW5nIHRoZWlyIHBvd2VyIGRvbWFpbiBwYXJhbWV0ZXIuDQo+IFRoZSBw
b3dlciBkb21haW4gZGVwZW5kcyBvbiB0aGUgY3VycmVudCBUQyBtb2RlLCB3aGljaCAtIGFmdGVy
IHRoZSBwcmV2aW91cw0KPiBwYXRjaCAtIGNhbid0IGNoYW5nZSB3aGlsZSB0aGUgUEhZIGlzIGNv
bm5lY3RlZCwgaG9sZGluZyBhIFRDLWNvbGQtb2ZmIHBvd2VyDQo+IGRvbWFpbiByZWZlcmVuY2Uu
IEJhc2VkIG9uIHRoaXMgdGhlIGRvbWFpbiBjYW4gYmUgZGVkdWN0ZWQgZnJvbSB0aGUgY3VycmVu
dA0KPiBUQyBtb2RlIGluc3RlYWQgb2YgaGF2aW5nIHRvIHBhc3MgdGhpcyBhcyBhIHBhcmFtZXRl
ci4NCj4gDQo+IEJsb2NraW5nIFRDLWNvbGQgZm9yIHRoZSBQSFkgSFcgcmVhZG91dCBoYXBwZW5z
IGJlZm9yZSB0aGUgY3VycmVudCBUQyBtb2RlDQo+IGlzIGRldGVybWluZWQsIHNvIGhlcmUgdGhl
IGluaXRpYWwgcG93ZXIgZG9tYWluIG11c3QgYmUgc3RpbGwgbWFudWFsbHkgcGFzc2VkLg0KPiAN
Cj4gRm9yIGRlYnVnZ2luZyBzdGlsbCBrZWVwIHRyYWNrIG9mIHRoZSBkb21haW4gdXNlZCBmb3Ig
dGNfY29sZF9ibG9jaygpIGFuZCB2ZXJpZnkNCj4gdGhhdCBpdCByZW1haW5lZCB0aGUgc2FtZSB1
bnRpbCB0Y19jb2xkX3VuYmxvY2soKS4NCj4gDQo+IFdoaWxlIGF0IGl0IHJlbmFtZSB0Y19jb2xk
X2dldF9wb3dlcl9kb21haW4oKSB0byB0Y19waHlfY29sZF9vZmZfZG9tYWluKCksDQo+IHJlZmxl
Y3RpbmcgdGhlIG5hbWUgb2YgcGxhdGZvcm0gc3BlY2lmaWMgaG9vayBhZGRlZCBpbiB0aGUgbmV4
dCBwYXRjaC4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50
ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNv
bT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgfCA2
MSArKysrKysrKysrKysrKystLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMzcgaW5zZXJ0
aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF90Yy5jDQo+IGluZGV4IDIxYzZlZjgwNjQ4ODMuLjk0MzY2MDA0NGUzN2EgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gQEAgLTQwLDcg
KzQwLDkgQEAgc3RydWN0IGludGVsX3RjX3BvcnQgew0KPiANCj4gIAlzdHJ1Y3QgbXV0ZXggbG9j
azsJLyogcHJvdGVjdHMgdGhlIFR5cGVDIHBvcnQgbW9kZSAqLw0KPiAgCWludGVsX3dha2VyZWZf
dCBsb2NrX3dha2VyZWY7DQo+ICsjaWYgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVfREVCVUdf
UlVOVElNRV9QTSkNCj4gIAllbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluIGxvY2tfcG93
ZXJfZG9tYWluOw0KPiArI2VuZGlmDQo+ICAJc3RydWN0IGRlbGF5ZWRfd29yayBkaXNjb25uZWN0
X3BoeV93b3JrOw0KPiAgCWludCBsaW5rX3JlZmNvdW50Ow0KPiAgCWJvb2wgbGVnYWN5X3BvcnQ6
MTsNCj4gQEAgLTExNiw0MyArMTE4LDYwIEBAIGJvb2wgaW50ZWxfdGNfY29sZF9yZXF1aXJlc19h
dXhfcHcoc3RydWN0DQo+IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpICB9DQo+IA0KPiAg
c3RhdGljIGVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4NCj4gLXRjX2NvbGRfZ2V0X3Bv
d2VyX2RvbWFpbihzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMsIGVudW0gdGNfcG9ydF9tb2RlDQo+
IG1vZGUpDQo+ICt0Y19waHlfY29sZF9vZmZfZG9tYWluKHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0
YykNCj4gIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRjX3RvX2k5MTUo
dGMpOw0KPiAgCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0gdGMtPmRpZ19w
b3J0Ow0KPiANCj4gLQlpZiAobW9kZSA9PSBUQ19QT1JUX1RCVF9BTFQgfHwNCj4gIWludGVsX3Rj
X2NvbGRfcmVxdWlyZXNfYXV4X3B3KGRpZ19wb3J0KSkNCj4gKwlpZiAodGMtPm1vZGUgPT0gVENf
UE9SVF9UQlRfQUxUIHx8DQo+ICshaW50ZWxfdGNfY29sZF9yZXF1aXJlc19hdXhfcHcoZGlnX3Bv
cnQpKQ0KPiAgCQlyZXR1cm4gUE9XRVJfRE9NQUlOX1RDX0NPTERfT0ZGOw0KPiANCj4gIAlyZXR1
cm4gaW50ZWxfZGlzcGxheV9wb3dlcl9sZWdhY3lfYXV4X2RvbWFpbihpOTE1LCBkaWdfcG9ydC0N
Cj4gPmF1eF9jaCk7ICB9DQo+IA0KPiAgc3RhdGljIGludGVsX3dha2VyZWZfdA0KPiAtdGNfY29s
ZF9ibG9ja19pbl9tb2RlKHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YywgZW51bSB0Y19wb3J0X21v
ZGUgbW9kZSwNCj4gLQkJICAgICAgZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiAqZG9t
YWluKQ0KPiArX190Y19jb2xkX2Jsb2NrKHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YywgZW51bQ0K
PiAraW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gKmRvbWFpbikNCj4gIHsNCj4gIAlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRjX3RvX2k5MTUodGMpOw0KPiANCj4gLQkqZG9tYWlu
ID0gdGNfY29sZF9nZXRfcG93ZXJfZG9tYWluKHRjLCBtb2RlKTsNCj4gKwkqZG9tYWluID0gdGNf
cGh5X2NvbGRfb2ZmX2RvbWFpbih0Yyk7DQo+IA0KPiAgCXJldHVybiBpbnRlbF9kaXNwbGF5X3Bv
d2VyX2dldChpOTE1LCAqZG9tYWluKTsgIH0NCj4gDQo+ICBzdGF0aWMgaW50ZWxfd2FrZXJlZl90
DQo+IC10Y19jb2xkX2Jsb2NrKHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YywgZW51bSBpbnRlbF9k
aXNwbGF5X3Bvd2VyX2RvbWFpbg0KPiAqZG9tYWluKQ0KPiArdGNfY29sZF9ibG9jayhzdHJ1Y3Qg
aW50ZWxfdGNfcG9ydCAqdGMpDQo+ICB7DQo+IC0JcmV0dXJuIHRjX2NvbGRfYmxvY2tfaW5fbW9k
ZSh0YywgdGMtPm1vZGUsIGRvbWFpbik7DQo+ICsJZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2Rv
bWFpbiBkb21haW47DQo+ICsJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7DQo+ICsNCj4gKwl3YWtl
cmVmID0gX190Y19jb2xkX2Jsb2NrKHRjLCAmZG9tYWluKTsgI2lmDQo+ICtJU19FTkFCTEVEKENP
TkZJR19EUk1fSTkxNV9ERUJVR19SVU5USU1FX1BNKQ0KPiArCXRjLT5sb2NrX3Bvd2VyX2RvbWFp
biA9IGRvbWFpbjsNCj4gKyNlbmRpZg0KPiArCXJldHVybiB3YWtlcmVmOw0KPiAgfQ0KPiANCj4g
IHN0YXRpYyB2b2lkDQo+IC10Y19jb2xkX3VuYmxvY2soc3RydWN0IGludGVsX3RjX3BvcnQgKnRj
LCBlbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluDQo+IGRvbWFpbiwNCj4gLQkJaW50ZWxf
d2FrZXJlZl90IHdha2VyZWYpDQo+ICtfX3RjX2NvbGRfdW5ibG9jayhzdHJ1Y3QgaW50ZWxfdGNf
cG9ydCAqdGMsIGVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4NCj4gZG9tYWluLA0KPiAr
CQkgIGludGVsX3dha2VyZWZfdCB3YWtlcmVmKQ0KPiAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1ID0gdGNfdG9faTkxNSh0Yyk7DQo+IA0KPiAgCWludGVsX2Rpc3BsYXlfcG93
ZXJfcHV0KGk5MTUsIGRvbWFpbiwgd2FrZXJlZik7ICB9DQo+IA0KPiArc3RhdGljIHZvaWQNCj4g
K3RjX2NvbGRfdW5ibG9jayhzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMsIGludGVsX3dha2VyZWZf
dCB3YWtlcmVmKSB7DQo+ICsJZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBkb21haW4g
PQ0KPiB0Y19waHlfY29sZF9vZmZfZG9tYWluKHRjKTsNCj4gKw0KPiArI2lmIElTX0VOQUJMRUQo
Q09ORklHX0RSTV9JOTE1X0RFQlVHX1JVTlRJTUVfUE0pDQo+ICsJZHJtX1dBUk5fT04oJnRjX3Rv
X2k5MTUodGMpLT5kcm0sIHRjLT5sb2NrX3Bvd2VyX2RvbWFpbiAhPQ0KPiBkb21haW4pOw0KPiAr
I2VuZGlmDQo+ICsJX190Y19jb2xkX3VuYmxvY2sodGMsIGRvbWFpbiwgd2FrZXJlZik7IH0NCj4g
Kw0KPiAgc3RhdGljIHZvaWQNCj4gIGFzc2VydF90Y19jb2xkX2Jsb2NrZWQoc3RydWN0IGludGVs
X3RjX3BvcnQgKnRjKSAgeyBAQCAtMTYwLDggKzE3OSw3IEBADQo+IGFzc2VydF90Y19jb2xkX2Js
b2NrZWQoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjKQ0KPiAgCWJvb2wgZW5hYmxlZDsNCj4gDQo+
ICAJZW5hYmxlZCA9IGludGVsX2Rpc3BsYXlfcG93ZXJfaXNfZW5hYmxlZChpOTE1LA0KPiAtDQo+
IHRjX2NvbGRfZ2V0X3Bvd2VyX2RvbWFpbih0YywNCj4gLQkJCQkJCQkJCSAgdGMtDQo+ID5tb2Rl
KSk7DQo+ICsJCQkJCQkgdGNfcGh5X2NvbGRfb2ZmX2RvbWFpbih0YykpOw0KPiAgCWRybV9XQVJO
X09OKCZpOTE1LT5kcm0sICFlbmFibGVkKTsNCj4gIH0NCj4gDQo+IEBAIC00MTMsMTMgKzQzMSwx
MyBAQCBzdGF0aWMgdm9pZCBpY2xfdGNfcGh5X2dldF9od19zdGF0ZShzdHJ1Y3QNCj4gaW50ZWxf
dGNfcG9ydCAqdGMpDQo+ICAJZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBkb21haW47
DQo+ICAJaW50ZWxfd2FrZXJlZl90IHRjX2NvbGRfd3JlZjsNCj4gDQo+IC0JdGNfY29sZF93cmVm
ID0gdGNfY29sZF9ibG9jayh0YywgJmRvbWFpbik7DQo+ICsJdGNfY29sZF93cmVmID0gX190Y19j
b2xkX2Jsb2NrKHRjLCAmZG9tYWluKTsNCj4gDQo+ICAJdGMtPm1vZGUgPSB0Y19waHlfZ2V0X2N1
cnJlbnRfbW9kZSh0Yyk7DQo+ICAJaWYgKHRjLT5tb2RlICE9IFRDX1BPUlRfRElTQ09OTkVDVEVE
KQ0KPiAtCQl0Yy0+bG9ja193YWtlcmVmID0gdGNfY29sZF9ibG9jayh0YywgJnRjLQ0KPiA+bG9j
a19wb3dlcl9kb21haW4pOw0KPiArCQl0Yy0+bG9ja193YWtlcmVmID0gdGNfY29sZF9ibG9jayh0
Yyk7DQo+IA0KPiAtCXRjX2NvbGRfdW5ibG9jayh0YywgZG9tYWluLCB0Y19jb2xkX3dyZWYpOw0K
PiArCV9fdGNfY29sZF91bmJsb2NrKHRjLCBkb21haW4sIHRjX2NvbGRfd3JlZik7DQo+ICB9DQo+
IA0KPiAgLyoNCj4gQEAgLTQ3NCw3ICs0OTIsNyBAQCBzdGF0aWMgYm9vbCBpY2xfdGNfcGh5X2Nv
bm5lY3Qoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjLA0KPiB7DQo+ICAJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUgPSB0Y190b19pOTE1KHRjKTsNCj4gDQo+IC0JdGMtPmxvY2tfd2FrZXJl
ZiA9IHRjX2NvbGRfYmxvY2sodGMsICZ0Yy0+bG9ja19wb3dlcl9kb21haW4pOw0KPiArCXRjLT5s
b2NrX3dha2VyZWYgPSB0Y19jb2xkX2Jsb2NrKHRjKTsNCj4gDQo+ICAJaWYgKHRjLT5tb2RlID09
IFRDX1BPUlRfVEJUX0FMVCkNCj4gIAkJcmV0dXJuIHRydWU7DQo+IEBAIC00OTcsOSArNTE1LDcg
QEAgc3RhdGljIGJvb2wgaWNsX3RjX3BoeV9jb25uZWN0KHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0
YywNCj4gIG91dF9yZWxlYXNlX3BoeToNCj4gIAl0Y19waHlfdGFrZV9vd25lcnNoaXAodGMsIGZh
bHNlKTsNCj4gIG91dF91bmJsb2NrX3RjX2NvbGQ6DQo+IC0JdGNfY29sZF91bmJsb2NrKHRjLA0K
PiAtCQkJdGMtPmxvY2tfcG93ZXJfZG9tYWluLA0KPiAtCQkJZmV0Y2hfYW5kX3plcm8oJnRjLT5s
b2NrX3dha2VyZWYpKTsNCj4gKwl0Y19jb2xkX3VuYmxvY2sodGMsIGZldGNoX2FuZF96ZXJvKCZ0
Yy0+bG9ja193YWtlcmVmKSk7DQo+IA0KPiAgCXJldHVybiBmYWxzZTsNCj4gIH0NCj4gQEAgLTUx
Niw5ICs1MzIsNyBAQCBzdGF0aWMgdm9pZCBpY2xfdGNfcGh5X2Rpc2Nvbm5lY3Qoc3RydWN0IGlu
dGVsX3RjX3BvcnQNCj4gKnRjKQ0KPiAgCQl0Y19waHlfdGFrZV9vd25lcnNoaXAodGMsIGZhbHNl
KTsNCj4gIAkJZmFsbHRocm91Z2g7DQo+ICAJY2FzZSBUQ19QT1JUX1RCVF9BTFQ6DQo+IC0JCXRj
X2NvbGRfdW5ibG9jayh0YywNCj4gLQkJCQl0Yy0+bG9ja19wb3dlcl9kb21haW4sDQo+IC0JCQkJ
ZmV0Y2hfYW5kX3plcm8oJnRjLT5sb2NrX3dha2VyZWYpKTsNCj4gKwkJdGNfY29sZF91bmJsb2Nr
KHRjLCBmZXRjaF9hbmRfemVybygmdGMtPmxvY2tfd2FrZXJlZikpOw0KPiAgCQlicmVhazsNCj4g
IAlkZWZhdWx0Og0KPiAgCQlNSVNTSU5HX0NBU0UodGMtPm1vZGUpOw0KPiBAQCAtMTE3Nyw3ICsx
MTkxLDYgQEAgdm9pZCBpbnRlbF90Y19wb3J0X3B1dF9saW5rKHN0cnVjdCBpbnRlbF9kaWdpdGFs
X3BvcnQNCj4gKmRpZ19wb3J0KSAgc3RhdGljIGJvb2wgIHRjX2hhc19tb2R1bGFyX2ZpYShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gc3RydWN0IGludGVsX3RjX3BvcnQgKnRjKSAg
ew0KPiAtCWVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gZG9tYWluOw0KPiAgCWludGVs
X3dha2VyZWZfdCB3YWtlcmVmOw0KPiAgCXUzMiB2YWw7DQo+IA0KPiBAQCAtMTE4NSw5ICsxMTk4
LDkgQEAgdGNfaGFzX21vZHVsYXJfZmlhKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0K
PiBzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMpDQo+ICAJCXJldHVybiBmYWxzZTsNCj4gDQo+ICAJ
bXV0ZXhfbG9jaygmdGMtPmxvY2spOw0KPiAtCXdha2VyZWYgPSB0Y19jb2xkX2Jsb2NrKHRjLCAm
ZG9tYWluKTsNCj4gKwl3YWtlcmVmID0gdGNfY29sZF9ibG9jayh0Yyk7DQo+ICAJdmFsID0gaW50
ZWxfZGVfcmVhZChpOTE1LCBQT1JUX1RYX0RGTEVYRFBTUChGSUExKSk7DQo+IC0JdGNfY29sZF91
bmJsb2NrKHRjLCBkb21haW4sIHdha2VyZWYpOw0KPiArCXRjX2NvbGRfdW5ibG9jayh0Yywgd2Fr
ZXJlZik7DQo+ICAJbXV0ZXhfdW5sb2NrKCZ0Yy0+bG9jayk7DQo+IA0KPiAgCWRybV9XQVJOX09O
KCZpOTE1LT5kcm0sIHZhbCA9PSAweGZmZmZmZmZmKTsNCj4gLS0NCj4gMi4zNy4xDQoNCg==
