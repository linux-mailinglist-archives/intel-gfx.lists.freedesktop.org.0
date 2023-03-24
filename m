Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E806C7FC6
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 15:21:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97A8F10E174;
	Fri, 24 Mar 2023 14:21:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5D5510E174
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 14:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679667701; x=1711203701;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=yX3ZzTecFspejRbnMmhY5o/cwFvmpUxAljGNqgTFslc=;
 b=eMiOmI+1EJS4ukWKjJenMIaE1sY4YxPNAUKXnTi7F/JVQNk/MiU/bE0M
 HPx9oJ4zbMvGADnmNQMdFha3ZLf47EylaRJzMtffw2ngk42GfbUuzdo6C
 CP7K9FzLUFVuxXjeq1fCibXgu8JgnmnPu1en9o0PPrvSXKOH4bxoHyU1J
 0PvAAXuoyfwcGU+BmxMTzhIJMzR40OHncLMF112gjkB1N0rQ/s17H1nUE
 TOBcLcVvVF9cCfC6WGJYt+aRd/6qWlqbCz2uNjuYyx17E9oHvJh6yyev9
 h3PWEcZAn6vMnxYPo2zWLLE/e/e51ZSISU+xGLz/NkTQ+xRkC73gfc52a Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="367520974"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="367520974"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 07:21:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="632846878"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="632846878"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 24 Mar 2023 07:21:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 07:21:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 24 Mar 2023 07:21:40 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 24 Mar 2023 07:21:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A4mEf4KsktVZtXguKwEf/LnlaXw2DbQAy3Z0xGBIK/sXqH/UYOW6QUpcsy7SiMG3K5J6twvY+Hqc5n5gMtOBF924R+alq1oa8j+Q4wnsbsAWd/+YppOObltKPODNxLxmsBJBBcfZbGMFh1vJwbNZjC3OZrbT+Wm4E0H/A0Yh7JjpMaAsMc8/aOCP4e6FjDf+te52qbIUFYmjn/t+TYaNh/cFaW+m7fH2c3nvaXIRS5v9xAuJ0p3euAgVQzNiHmaPTxVoc4hnlndRWDad53FVPKfXBlP319esNHkytqYFWroX83B8emBiFpEOMcXUpKAAEPG0FZMDkgzbdyLHGphenA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yX3ZzTecFspejRbnMmhY5o/cwFvmpUxAljGNqgTFslc=;
 b=aEDB5ukjMdQEhHWli0MnqfuBtxkLYyLFAhjYVWafsoly8WOLXOSI+Vf4KTpOH5rPbU0bftfZjXifHoeWUiH0HSOFilos6IcPUcMggXVeW4DXRijcJN5HqIW98A5iWXeQlotiW42lapW9QSNHgE7NflUAPuP+zA6fRdsXsQfODbl/ZvMduqHGoGJnH2BfrcuVYY0G3oa8UA8Y70MwFuqPtsFo4H733NRz8R1q2aeQUbltb9hykrX5cF/a4N+xrvQT27itWtYBdvUAAlLd/rvRdpIlCVBDMCJTEP3ep/sdX/znwMVMWWvKrfzy3lMPjURMUCnXvzwPGsMFAV42FYhLEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by IA1PR11MB6443.namprd11.prod.outlook.com (2603:10b6:208:3a8::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Fri, 24 Mar
 2023 14:21:37 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%7]) with mapi id 15.20.6178.038; Fri, 24 Mar 2023
 14:21:34 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 12/29] drm/i915/tc: Factor out
 tc_phy_verify_legacy_or_dp_alt_mode()
Thread-Index: AQHZXZLJawwgMRb/XEGy0Gev4+ydOK8J/KHw
Date: Fri, 24 Mar 2023 14:21:34 +0000
Message-ID: <MW4PR11MB7054F32A272B1F0F596B67D6EF849@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-13-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-13-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|IA1PR11MB6443:EE_
x-ms-office365-filtering-correlation-id: 11069eaf-4155-4d6e-9db1-08db2c73123d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1d4NTyF7XBifqbzVIUafzknnh3FCzOX7JYYeDaSQn9+Z6w7pIA0uAs2Fxqw9hDXg/XrEs9BMcSwp6/lxRxb8pkbP4+DamDZYGqOaC3bPQVF9uMUMeRBtKDWiBpl8jr4QHqtQsgF+d2coE6q+B3f04vBhn7Wvz7mBTc2so0s3KI55j2nZVQVbUUxkO5ZV4lxQw/PioLzdTMAn2e8T1ZTHKrxxprjDkwU0JckAOFiW86JKL+Elhwt5PUA9Nr/V38AmQ/M12e568UjxkrPQMimuYuXsbr9btpJFayH14NgtEphFG2rcYlT6Aqts5z/MJbcJbsWWgiVkxjj4CId7zMQeClC93VhQKoExzHS442dgRtGQLwjVM1ZFKYVKwwFrKursiP08haQ7TqsDhUWTrIOV8jvw6UJ9dy/XOyNdIfwWOrMdEzjZnKSCWj91uUUjLRP+/51tQ7QZP6u2iFMSGjSuKVYkrd9F5cWhYFdApvpMdcoNBhLLr4XtV6VyzgVNbIv/kx1307WqDim1OgAtHcWDg6kDgPN76Vkuf3rd52/+Qj4Tm+b5h9m7uzkbPOX8wTV7LQpuAN3fvMh+Tnluq8hLqcYr39AOKYYYvF7jajxWB+6+Y2bNSBwn+oKIXoPptt+BND9h9+WtqoeiY/bS9V8/Ckyjbg1nzsnoYfR7kvpXGBut82yBZn4ZCreNl7AkJ1P0I+Pye9MTBatoQ+K2ubG+qw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(346002)(376002)(136003)(366004)(396003)(451199018)(38100700002)(33656002)(55016003)(83380400001)(7696005)(64756008)(316002)(6506007)(110136005)(5660300002)(2906002)(76116006)(86362001)(66446008)(66476007)(71200400001)(8676002)(66946007)(9686003)(82960400001)(26005)(66556008)(8936002)(122000001)(41300700001)(186003)(38070700005)(53546011)(52536014)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SmZBWXpCME5IcDhzSWZ3MnZYN1BCTWltRUQzRFBYRXdZbVdYbTQyWDd2dDlM?=
 =?utf-8?B?QVB1NWltN2pEL2xDYWpWR3V0b0hHajZYNnRpOTVXZ245MVR6QUZieGhRdnBM?=
 =?utf-8?B?Z1VQOG1OWU9takJ4M2ZxUDBsWTlkSEpuZkRWUTJOc2tHMkNYamYycGtuL3Nt?=
 =?utf-8?B?dnJvTVE3a0VCd1Ric2Z6cFBYcUZuQjd5bGZWUUlkd01LS1Vmam9ESlVqL3NF?=
 =?utf-8?B?Mm9Ic2NCOFVYQncwUkc1dldaUkZwTTc2Z0NhWnVoYzNGYzg4aXpuZjI1Q25V?=
 =?utf-8?B?bG5WdzdpRkdFa21vOVdtSjZzS1ZjWFpTeEJ0WWR0SkF0R2Rvcm92RE9KbWJp?=
 =?utf-8?B?N3kvT2FKV3dGaU50eUdTRXduTVE1N05XZGFPRHZHWTV2VnVlTHpJbXMvK2VM?=
 =?utf-8?B?WTdjOWE4bnhaSVRJTitXOGR6aGtaU0diWXFmem5tUExlS2xSU0hiZ0M2Tkpp?=
 =?utf-8?B?Y2JMNjA0ckhiZFRHeis4REVmaUJ3RVJPbjdadFNSVy96NkVHbkFHOVdJSXZm?=
 =?utf-8?B?LzFaNERWRjhzc3VtQlVNaThDNVpuSTF2WWp1bTJxK25GWUlaZFNteEMzYUVm?=
 =?utf-8?B?VS9ibnFyVjIyZVp0TkdzZ1ZvN1YxN3llUVFMS0hENHJKYmV3Z0djb3NWaDZV?=
 =?utf-8?B?d0RXSHkxM1JsZ0Y5UVBVZnZLanJDc2NkamljV0t1cDlMMGxxbTl5NXd2MWRR?=
 =?utf-8?B?RDF5SUlxdDU2dENoa0UrUXNiYlVYSVloWnlnYWdqRjlRUWJ5SStMM0RFUW1w?=
 =?utf-8?B?YWJadWxmL3hPQjdUWWpLOUFBMFZxTnZmRjcxaUZlSkJQblFGR3BHOVFXaDlF?=
 =?utf-8?B?U3NnLzdnenpRbm1sSncwMUlWYjJtbkY3NEcvWklad01aTzFKSGRFUmxiVE5j?=
 =?utf-8?B?QlQ5Z3NZdWFpdXY0S2hmbVNvSDZkVFdwVHlnV0lHWWdoRkFYM0krL0cweFht?=
 =?utf-8?B?L1c4b1ZKR3BiN3Q4Q0RQTThRWGJuWjJOZlpZK1NNM2RNdC9iMExGZ29PRWFm?=
 =?utf-8?B?alhxV1NhTldsV3FRM2plUlZHeVRZV0pna213RVY1OFQza3FLMmlkdGMvZ05r?=
 =?utf-8?B?dkEvY004Ylc3b2MxbUV1WWY1cTlwTHVJV0RMOGZzditiU3YzZkNSSnZwL3JL?=
 =?utf-8?B?Zlh3cEhIblNrZ255em9jY3pzR3JRTDd5NWJ0RDk3RHJXZkZzKyt3SUd2ejNv?=
 =?utf-8?B?SDlQOU9FMjNONGtKSlVRdjU2Yi9OVnY4cUdFQnFzV3BsWjBEN2VVRllDcGJ3?=
 =?utf-8?B?QUdnVEVsYWI0ZnBFUUY4SytyZjBFcHNvRlppQUdRd21DQVhlT0d1bFltSDlr?=
 =?utf-8?B?QU4rMzE3bUNtcml1aE1nZXNwNTRYamFWWkkyckJNRllXdXFlOFdqTVVOWnBK?=
 =?utf-8?B?OVk0dEV6WmFJZi9ZV3Q5ZWpDNVZxN1BmUS9NL3JGQ2FJV2JMRTlYcFVyUjhj?=
 =?utf-8?B?TTUzOGRFam5NMnEwNThxRCsyZkJBVGdUTHBqS0hlTzFudExvYzFnQm9lZTMw?=
 =?utf-8?B?U25jL0ZLcHFRMEdqQjllcFJ0TWo5ZzVRQVhIQllPU2tualYrRVg3TW1CVUFj?=
 =?utf-8?B?WFZhaUo0eHg0UmZJcEtXSUllSEtUNlkwYUs1N29BQ3NBTkR0NVZ0bWlWSXVP?=
 =?utf-8?B?bFd5eGxmUW10b2hkVHhOOU1zcXFSWThwTjZyZ2ZaTGZXVDBWRURVeE1WWEls?=
 =?utf-8?B?ZU11ZXJNZmlhSDFpMklTcTljaHI2OWVtQWFkb2JDT2pCWDNpMDVKbDhIVXJ2?=
 =?utf-8?B?SEJzeWUreE4rZ3MybW1qM3N1QVQ1WE1tODYwcTBxa2lvTCttY0QvVlZmakVT?=
 =?utf-8?B?SW50QU1sTlNZekM3cnoyQm0zVnZqR0FuaTEwdDJ5cWpmelJJZDU2RHQyaC9M?=
 =?utf-8?B?L3hPRWNkRTJZWUo1bzZCYmI1UFljVkN5QVF4N0hNTkVQTnVPd1hsQ2tsV21P?=
 =?utf-8?B?dVBhYk9yazdzSlhIWHZLQlNKSUVBS2FsY2dKTzR4d3RESVFHTExRUGY5SEtY?=
 =?utf-8?B?NXJRRnB6dHNQSGRjbmdabDl2ajBSMDFYYVFnN284MEs0TG0xd3dvU1BRcE1q?=
 =?utf-8?B?Y1dVZ3E5U28yMnh1ZGxpbUxxSU5CTXZTb3V2SFliaE1LZkhvNnBZWnlDWGI0?=
 =?utf-8?Q?EZLQBK5aE+nylUD/9a6KYI+rh?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11069eaf-4155-4d6e-9db1-08db2c73123d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2023 14:21:34.1477 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iMaSRTx/6P2NwNXn64njkkbASi5suZKdv28ReUB+cCjwFvemXrfeBOvoQ+pSYV/k38bq06yMTgXUwY7lANkwag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6443
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 12/29] drm/i915/tc: Factor out
 tc_phy_verify_legacy_or_dp_alt_mode()
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
MTIvMjldIGRybS9pOTE1L3RjOiBGYWN0b3Igb3V0DQo+IHRjX3BoeV92ZXJpZnlfbGVnYWN5X29y
X2RwX2FsdF9tb2RlKCkNCj4gDQo+IEZhY3RvciBvdXQgYSBmdW5jdGlvbiB2ZXJpZnlpbmcgdGhl
IFBIWSBjb25uZWN0ZWQgc3RhdGUgaW4gbGVnYWN5IG9yIERQLWFsdA0KPiBtb2RlLiBUaGlzIGlz
IGNvbW1vbiB0byBhbGwgcGxhdGZvcm1zLCB3aGljaCBjYW4gYmUgcmV1c2VkIGluIHBsYXRmb3Jt
IHNwZWNpZmljDQo+IGNvbm5lY3QgaG9va3MgYWRkZWQgaW4gZm9sbG93LXVwIHBhdGNoZXMuDQo+
IA0KPiBObyBmdW5jdGlvbmFsIGNoYW5nZXMuDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhv
bGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsg
PGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF90Yy5jIHwgNDcgKysrKysrKysrKysrKysrLS0tLS0tLS0tLQ0KPiAgMSBmaWxl
IGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBpbmRleCA5MTc5Zjg2Mjg3YWIw
Li5lZTRkYjlkMGViOTc4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3RjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF90Yy5jDQo+IEBAIC00MzQsMjcgKzQzNCwxMyBAQCBzdGF0aWMgdm9pZCBpY2xfdGNfcGh5X2dl
dF9od19zdGF0ZShzdHJ1Y3QNCj4gaW50ZWxfdGNfcG9ydCAqdGMpDQo+ICAgKiBjb25uZWN0IGFu
ZCBkaXNjb25uZWN0IHRvIGNsZWFubHkgdHJhbnNmZXIgb3duZXJzaGlwIHdpdGggdGhlIGNvbnRy
b2xsZXIgYW5kDQo+ICAgKiBzZXQgdGhlIHR5cGUtQyBwb3dlciBzdGF0ZS4NCj4gICAqLw0KPiAt
c3RhdGljIGJvb2wgaWNsX3RjX3BoeV9jb25uZWN0KHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YywN
Cj4gLQkJCSAgICAgICBpbnQgcmVxdWlyZWRfbGFuZXMpDQo+ICtzdGF0aWMgYm9vbCB0Y19waHlf
dmVyaWZ5X2xlZ2FjeV9vcl9kcF9hbHRfbW9kZShzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMsDQo+
ICsJCQkJCQlpbnQgcmVxdWlyZWRfbGFuZXMpDQo+ICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUgPSB0Y190b19pOTE1KHRjKTsNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9w
b3J0ICpkaWdfcG9ydCA9IHRjLT5kaWdfcG9ydDsNCj4gIAlpbnQgbWF4X2xhbmVzOw0KPiANCj4g
LQlpZiAodGMtPm1vZGUgPT0gVENfUE9SVF9UQlRfQUxUKQ0KPiAtCQlyZXR1cm4gdHJ1ZTsNCj4g
LQ0KPiAtCWlmICghdGNfcGh5X2lzX3JlYWR5KHRjKSAmJg0KPiAtCSAgICAhZHJtX1dBUk5fT04o
Jmk5MTUtPmRybSwgdGMtPmxlZ2FjeV9wb3J0KSkgew0KPiAtCQlkcm1fZGJnX2ttcygmaTkxNS0+
ZHJtLCAiUG9ydCAlczogUEhZIG5vdCByZWFkeVxuIiwNCj4gLQkJCSAgICB0Yy0+cG9ydF9uYW1l
KTsNCj4gLQkJcmV0dXJuIGZhbHNlOw0KPiAtCX0NCj4gLQ0KPiAtCWlmICghdGNfcGh5X3Rha2Vf
b3duZXJzaGlwKHRjLCB0cnVlKSAmJg0KPiAtCSAgICAhZHJtX1dBUk5fT04oJmk5MTUtPmRybSwg
dGMtPmxlZ2FjeV9wb3J0KSkNCj4gLQkJcmV0dXJuIGZhbHNlOw0KPiAtDQo+ICAJbWF4X2xhbmVz
ID0gaW50ZWxfdGNfcG9ydF9maWFfbWF4X2xhbmVfY291bnQoZGlnX3BvcnQpOw0KPiAgCWlmICh0
Yy0+bGVnYWN5X3BvcnQpIHsNCj4gIAkJZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgbWF4X2xhbmVz
ICE9IDQpOyBAQCAtNDcwLDcNCj4gKzQ1Niw3IEBAIHN0YXRpYyBib29sIGljbF90Y19waHlfY29u
bmVjdChzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMsDQo+ICAJaWYgKCEodGNfcGh5X2hwZF9saXZl
X3N0YXR1cyh0YykgJiBCSVQoVENfUE9SVF9EUF9BTFQpKSkgew0KPiAgCQlkcm1fZGJnX2ttcygm
aTkxNS0+ZHJtLCAiUG9ydCAlczogUEhZIHN1ZGRlbg0KPiBkaXNjb25uZWN0XG4iLA0KPiAgCQkJ
ICAgIHRjLT5wb3J0X25hbWUpOw0KPiAtCQlnb3RvIG91dF9yZWxlYXNlX3BoeTsNCj4gKwkJcmV0
dXJuIGZhbHNlOw0KPiAgCX0NCj4gDQo+ICAJaWYgKG1heF9sYW5lcyA8IHJlcXVpcmVkX2xhbmVz
KSB7DQo+IEBAIC00NzgsOSArNDY0LDM0IEBAIHN0YXRpYyBib29sIGljbF90Y19waHlfY29ubmVj
dChzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMsDQo+ICAJCQkgICAgIlBvcnQgJXM6IFBIWSBtYXgg
bGFuZXMgJWQgPCByZXF1aXJlZCBsYW5lcyAlZFxuIiwNCj4gIAkJCSAgICB0Yy0+cG9ydF9uYW1l
LA0KPiAgCQkJICAgIG1heF9sYW5lcywgcmVxdWlyZWRfbGFuZXMpOw0KPiAtCQlnb3RvIG91dF9y
ZWxlYXNlX3BoeTsNCj4gKwkJcmV0dXJuIGZhbHNlOw0KPiArCX0NCj4gKw0KPiArCXJldHVybiB0
cnVlOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgYm9vbCBpY2xfdGNfcGh5X2Nvbm5lY3Qoc3RydWN0
IGludGVsX3RjX3BvcnQgKnRjLA0KPiArCQkJICAgICAgIGludCByZXF1aXJlZF9sYW5lcykNCj4g
K3sNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRjX3RvX2k5MTUodGMpOw0K
PiArDQo+ICsJaWYgKHRjLT5tb2RlID09IFRDX1BPUlRfVEJUX0FMVCkNCj4gKwkJcmV0dXJuIHRy
dWU7DQo+ICsNCj4gKwlpZiAoIXRjX3BoeV9pc19yZWFkeSh0YykgJiYNCj4gKwkgICAgIWRybV9X
QVJOX09OKCZpOTE1LT5kcm0sIHRjLT5sZWdhY3lfcG9ydCkpIHsNCj4gKwkJZHJtX2RiZ19rbXMo
Jmk5MTUtPmRybSwgIlBvcnQgJXM6IFBIWSBub3QgcmVhZHlcbiIsDQo+ICsJCQkgICAgdGMtPnBv
cnRfbmFtZSk7DQo+ICsJCXJldHVybiBmYWxzZTsNCj4gIAl9DQo+IA0KPiArCWlmICghdGNfcGh5
X3Rha2Vfb3duZXJzaGlwKHRjLCB0cnVlKSAmJg0KPiArCSAgICAhZHJtX1dBUk5fT04oJmk5MTUt
PmRybSwgdGMtPmxlZ2FjeV9wb3J0KSkNCj4gKwkJcmV0dXJuIGZhbHNlOw0KPiArDQo+ICsJaWYg
KCF0Y19waHlfdmVyaWZ5X2xlZ2FjeV9vcl9kcF9hbHRfbW9kZSh0YywgcmVxdWlyZWRfbGFuZXMp
KQ0KPiArCQlnb3RvIG91dF9yZWxlYXNlX3BoeTsNCj4gKw0KPiAgCXJldHVybiB0cnVlOw0KPiAN
Cj4gIG91dF9yZWxlYXNlX3BoeToNCj4gLS0NCj4gMi4zNy4xDQoNCg==
