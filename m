Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FF96E23FA
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 15:04:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34BFA8825E;
	Fri, 14 Apr 2023 13:04:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D13F18825E
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 13:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681477444; x=1713013444;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=eUtujBixZ6gWBpDQNJ4uuIg13JVeCo/GjXhXsqwUnq4=;
 b=N9jQWTSG76h90d/t8i6AVS1lQtMV8PkoAERZlP4RMMredsk66wKdNebh
 S/XgYoLbvl/ImM0EW4mbBgTkuHQvDzvUAGi3F4CINKFm4UnWDT9z7y1GO
 v4p3ivZUCi/ejDkXeEkMlksTaiZJbKA9OaAyCWwqShZiauEeJDno9plCr
 69gj2E4xX9jH/M44DMiDsScjyaQE0CfRy13/6dxACbPLPq0KToNLfEj/D
 NvYCvACd8XkYzW4561wJDAvl8g7hOGpAlxvWplJQmmAC61OBQj3NHr9Zd
 HDaIuIupB4PDUSEhG0Wgg04xQws18arhYOhT4tgRGUbsAQEYGsKxt6f6j w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="409658310"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="409658310"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 06:04:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="667188080"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="667188080"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 14 Apr 2023 06:04:02 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 06:04:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 06:04:02 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 14 Apr 2023 06:04:02 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 14 Apr 2023 06:04:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TL+mdgiATyCpjSXmT6X7Il0ptcx5OjKEMMTu63FwG7t0use9+5MtNCaJVer1BCjJXkAGiDun26FCTu2mHPJBNVjsH9Er3ukwarFfQuCUvWy/BtI0aauq4FFA9bnnOQMPJ4Cq1Bnw++aGuiQV/Avh32j7ACiMdaj1bSEZQlrOsqnogZxe1ZbN38VFgRKFwoTrHsdXPDhrA3f9yO/mCFycpGnWzgq0jip/fKDHwqO2GxrGXliwe9iCv9g/SYDjyixC6hPLxZ6ccYsdtRvxIlfYBkR05A+r3nPcwtjAZfvgUSCx/VSQcMnJqzAHxBDJkVvi7W9VQt42bbhHAv4jtciQsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eUtujBixZ6gWBpDQNJ4uuIg13JVeCo/GjXhXsqwUnq4=;
 b=QH3FZAJDnTWKIwLFCed5RCdCtse8wjzs0ZcWLeViCM1c1XJWueh2XxCriDyD906KZR4rPeecM/hLaDzG1oMcq31soKqw63VpUtQiFaeK+bZdymsqx8bjz72xtVpGI/DAnRuYdPZKtXZF6Q9vMgHrPupeX9r/MGx0W6rO4oNC0/gC5ebeovQ9wCrcJhc7uO4khbiMYsAW6vXi0iNPY+r0867uqkn9vRFCq9eEI58aTR8NLKbj+yJjUl6MSChmqmp99i8qcXMBGMvIKa6x+SeWEe/KLXPx4uonlUlkWnQcFsRizTmnpMwjnLH+McTM6JAdIHNkue6TL8/+EM1bKvI4mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by CH0PR11MB8213.namprd11.prod.outlook.com (2603:10b6:610:18b::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Fri, 14 Apr
 2023 13:03:59 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::7fc4:d6bc:d221:261]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::7fc4:d6bc:d221:261%6]) with mapi id 15.20.6298.030; Fri, 14 Apr 2023
 13:03:58 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 6/7] drm/i915: Check HPD live state during
 eDP probe
Thread-Index: AQHZTSLCPDlx8QnhakKAvfhWxX37p68rCN4A
Date: Fri, 14 Apr 2023 13:03:58 +0000
Message-ID: <506a2d333765b7fa5dbfffa6811c957184039599.camel@intel.com>
References: <20230302161013.29213-1-ville.syrjala@linux.intel.com>
 <20230302161013.29213-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20230302161013.29213-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|CH0PR11MB8213:EE_
x-ms-office365-filtering-correlation-id: 835b7d67-4e21-444a-3254-08db3ce8b603
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: No5aSaX533wcBHCVaQBG5NjI4/bADR0kzhpTsIdSkWsIlLLc+rXHbLMstIUwVc+Y6xQyUGmyhZSZS5GQOKrJ/RWNJNOWVRiuFhkWZ2XSAjvaFZVADuczdr4J0Ocr1y6SXoset1uUiZB6VGjce7dRR9VNI9FtlyvEMqGd/gOp0wjqxHvkI4JNyiKmvyLqj1QpUTbtPw4UyLXCiZO85nl2SxdPCPyrS0Yz+qECvxEi4NB5CXfKdEdKqpZLKjPBvFOh8g/hNflf64mzY0KU5dXZMcQn2x+VCwM4N+0cf2lQqwcoTazqtkvnQUaNqQzA2PVkwrq8SHSzo4gOCWEE5lvspbjXO7gPb1lD1IqQxXl+qgsBkMD65javIzvTFZQ2h0M0ZlQ/tlVe1q92WFtiljYvKtEIbuoFtCkV+qjNhJmgB6qaM28bZe1NwCBqutkKGiwxGK5YYfZhNem2D+F9iVLBrfDQ2/ceL5VARzylRm8cHtEHJtCTAMtoCSXovnolZ6YXnvOjvzCQpN+k+OP6u3SZ15dzgW7tgG2yIucjB0Z+fkY4wpub3XA0IJbgykokGM5W
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(136003)(366004)(396003)(346002)(451199021)(36756003)(38100700002)(122000001)(5660300002)(8676002)(66556008)(86362001)(8936002)(38070700005)(41300700001)(66946007)(64756008)(2906002)(66476007)(66446008)(82960400001)(2616005)(966005)(6486002)(316002)(76116006)(6506007)(66574015)(91956017)(186003)(6512007)(110136005)(26005)(478600001)(71200400001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MTRWcllDb2FqYk1xNFpNRnQzOWhhbEl6T1VjZEJBM3o0aXNMR1h2bGJiRFdI?=
 =?utf-8?B?R1JWVzJYdXJBcG5PTi9MYkxuZlZMVisyZTdqcFJqWDM5MUgxdEtldDBhczI4?=
 =?utf-8?B?bkMvSjZzbEl1bE93STIweWc5TStmUUlOWG5HeXZlUzB4K2s4TjVOUXhSdmNL?=
 =?utf-8?B?T0RUdTg5WlhGQjl0N2pNelhKck9FRHZucGlVMEtVd05wL0JBVmc5c2xvdk15?=
 =?utf-8?B?UCtvcVBHVDRjanV2SHV5bUEzTFZvbk5kcS9HMlZnL2tWTUlhMjlKWFFiOXdl?=
 =?utf-8?B?NzdwRlhpbHh6ZEJsSlFnSFpHVU9vYjN3ZCs3SWp6OW1DNGJ6T3JKUGhTS3Y2?=
 =?utf-8?B?YkxLMDkvbWxtL20vc3JaUkJGODluSURUYWZIL25MVmJYbm1OQ2xsUnVrUTFB?=
 =?utf-8?B?bSt3OC90WVg0TURnU2tlaG9DWlFpdWQ2U2xrS05uSVc3bVNJaVRNZzY2ZHdv?=
 =?utf-8?B?QjJhcGppcTF1U0dTQlJNY0pZZGx4RUR6N1pCRjcrWWdWbzY5aHNYOHZBSXl4?=
 =?utf-8?B?QUo0L2lYL2N2Nk93d1dtYlppM1VnYWNoTEdTVEVONS9YNjRwcEF5dm4weUYz?=
 =?utf-8?B?bmdUZG5jTEduUDVnVXEydXdsS0dRazduM25DUk5MR290KzBzSk1XZmtVWVl1?=
 =?utf-8?B?a2ErWXFzSEFqTXcwa1lRby92MDE1OG56Z2ptZ0FsTTJvTk1paTY3L3R6aThZ?=
 =?utf-8?B?RFVaTVVLRCt5ZjNPaU12WkZRUmFCczQ3dmxmYXg3TG1HbmJ1eElYQ2NZUjNz?=
 =?utf-8?B?cmQvUzRMTEIzSnNoRitoV0tva0txVnRCODZrK21oK3NXWk9tdGp1cU5IWjN5?=
 =?utf-8?B?OHpqQ2hFeFBaYXBFYVN2VEZ3d2ZNbktDY0ZGTDZsWjVFYTBnMnBwZWdZQUdZ?=
 =?utf-8?B?YXVyMC80M0tTSitKSGZ1NFlBU3cwb2l2Vmh1ckZVakJLSnF5YVpqZExBOFl0?=
 =?utf-8?B?WXR1eFRXaVBROTFjOEdPUW1jK1RBMC9PU1BQZytHWUhDZnhMcmJnajhMZmd4?=
 =?utf-8?B?bW4rZVMxWDVqRFc4ZjF2Zk1aT0ZhTkFFSTNwWkh2RVBxTzZ6aSsxdmNmU2Vh?=
 =?utf-8?B?c01mSEpYZktZK3lkSmxzM2h5K0V5YzhnU2VJU29sU2xpMCtCWnYzSFl0RlNh?=
 =?utf-8?B?WjE0WFFtSUhLSEJZeTdTblRVK1pxSy9ORkJYRE1zYmVNVHpZcUhLQnFYRTF6?=
 =?utf-8?B?cm8wai9wZmtuQjZFaCtZTzhzcGlLN25DRWxrbE03OUFGMDFCVkdjTWZjUSt5?=
 =?utf-8?B?VEtMQlNiVmExNUhOU3NFYlMxa0hxeEpyVmtySjdoQ2dCUkFELzllMm1kTWY4?=
 =?utf-8?B?aUtibVQrWmhZWXc2aXRJMC9FdVlHT1VhMG9SdGZObzkvV2N4Vzl4eXZLWmZL?=
 =?utf-8?B?cmVRRVRqVkdFbTN5c3hJLzRxNkxzM3ZSQ3FiNTA2V3B2QWVLVXNZVWd4UDNx?=
 =?utf-8?B?czZMald4Rk4wN3ZwVXVTZU9RS2tZVkFiOHZwYWZPeFQ3VURlSWxpMHkreGZa?=
 =?utf-8?B?R2VTbTZncWc3SEt1VTJsUlhlUVpUQlNiNy8vSytFaG9TdzJocnFOdXZKbzhH?=
 =?utf-8?B?bENCMTB4djFmSGtOWHJGbncrUEt1Tlk2THVsVVZiTGxpekJRaFZDNzZtNkVB?=
 =?utf-8?B?aWlicmxnbEhxcjJwb21XSiszOGFYR0xYdnR2SERKaHpuWVl3OTd6eHlFb3lz?=
 =?utf-8?B?TXMxSGsvdGlDczA5VjdjK2FYVlNsVUQ0dVM2aGJXR0xLaDhmUERsQnk0WjBH?=
 =?utf-8?B?aEFCdUJBMmdOUnlzYXVZQ25OWlNKa1BqNUREblI2NE9ySG81M1NnT1pvZzBV?=
 =?utf-8?B?bXcyQTgvQzEyclFqTmRyQlVJa0JvMC9xQXZoblhJNDFHSHh6ZkUxS2pWSWNF?=
 =?utf-8?B?S0x6ZHQwZ0hzK0w1SEdoaERFdlZkSFJEMUdLV0k3Y0hFSWswU05McUpEM1Vw?=
 =?utf-8?B?RTR3Q0VFUndlT1N5MXhpQ1ZOZEFLaURzRTNjdWV6clNhK055OE0yNkJrK0tS?=
 =?utf-8?B?MklxKzZoN0pQMzV6TkI0Z3NkdmFSU3lTZzVUOEIwaWlWNXIxM1hhTHNocTBs?=
 =?utf-8?B?eW9Ta3NzcEp5S3JsbG5hWkVwNnIxYTFUWDRmK0Nid0JKdVovK05HanE4Z3lq?=
 =?utf-8?B?S2ZOdWozNGgzRFBCWlBFeFhOd1REa0NrTHdXa20ydmREWTM0MThoeTg4R25q?=
 =?utf-8?Q?Dye3E3MNYInoQXa6mjSNmhE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B424D9D5B962574EAE5816D838A2A6B4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 835b7d67-4e21-444a-3254-08db3ce8b603
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2023 13:03:58.6774 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +tHlFsysoJYLHK4p/qgllWOMZiH/D4iTar57hqzlcRQYic1fAvwf59ys1i49O08/B50lay3hl8Zbsk6M+Z9ZhmTilTxMboOF6dwnujH3Lfk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8213
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: Check HPD live state during
 eDP probe
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

T24gVGh1LCAyMDIzLTAzLTAyIGF0IDE4OjEwICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gV2UgbmVlZCB0byB1bnRhbmdsZSB0aGUgbWVzcyB3aGVyZSBzb21lIFNLTCBtYWNoaW5l
cyAoYXQgbGVhc3QpDQo+IGRlY2xhcmUgYm90aCBEREkgQSBhbmQgRERJIEUgdG8gYmUgcHJlc2Vu
dCBpbiB0aGVpciBWQlQsIGFuZA0KPiBib3RoIHVzaW5nIEFVWCBBLiBEREkgQSBpcyBhIGdob3N0
IGVEUCwgd2hlcmVzIERESSBFIG1heSBiZSBhDQo+IHJlYWwgRFAtPlZHQSBjb252ZXJ0ZXIuDQo+
IA0KPiBDdXJyZW50bHkgdGhhdCBpcyBoYW5kbGVkIGJ5IGNoZWNraW5nIHRoZSBWQlQgY2hpbGQg
ZGV2aWNlcw0KPiBmb3IgY29uZmxpY3RzIGJlZm9yZSBvdXRwdXQgcHJvYmluZy4gQnV0IHRoYXQg
a2luZCBvZiBzb2x1dGlvbg0KPiB3aWxsIG5vdCB3b3JrIGZvciB0aGUgQURMIHBoYW50b20gZHVh
bCBlRFAgVkJUcy4gSSB0aGluayBvbg0KPiB0aG9zZSB3ZSBqdXN0IGhhdmUgdG8gcHJvYmUgdGhl
IGVEUCBmaXJzdC4gQW5kIHdvdWxkIGJlIG5pY2UNCj4gdG8gdXNlIHRoZSBzYW1lIHByb2JlIHNj
aGVtZSBmb3IgZXZlcnl0aGluZy4NCj4gDQo+IE9uIHRoZXNlIFNLTCBzeXN0ZW1zIGlmIHdlIHBy
b2JlIERESSBBIGZpcnN0ICh3aGljaCBpcyBvbmx5DQo+IG5hdHVyYWwgZ2l2ZW4gaXQncyBkZWNs
YXJlZCBieSBWQlQgZmlyc3QpIHdlIHdpbGwgZ2V0IGFuIGFuc3dlcg0KPiB2aWEgQVVYLCBidXQg
aXQgY2FtZSBmcm9tIHRoZSBEUC0+VkdBIGNvbnZlcnRlciBob29rZWQgdG8gdGhlDQo+IERESSBF
LCBub3QgRERJIEEuIFRodXMgd2UgbWlzdGFrZW5seSByZWdpc3RlciBlRFAgb24gRERJIEENCj4g
YW5kIHNjcmV3IHVwIHRoZSByZWFsIERQIGRldmljZSBpbiBEREkgRS4NCj4gDQo+IFRvIGZpeCB0
aGlzIGxldCdzIGNoZWNrIHRoZSBIUEQgbGl2ZSBzdGF0ZSBkdXJpbmcgdGhlIGVEUCBwcm9iZS4N
Cj4gSWYgd2UgZ290IGFuIGFuc3dlciB2aWEgRFBDRCBidXQgSFBEIGlzIHN0aWxsIGRvd24gbGV0
J3MgYXNzdW1lDQo+IHdlIGdvdCB0aGUgYW5zd2VyIGZyb20gc29tZW9uZSBlbHNlLg0KPiANCj4g
U21va2UgdGVzdGVkIG9uIGFsbCBteSBlRFAgbWFjaGluZXMgKGlsayxoc3ctdWx0LHRnbCxhZGwp
IGFuZA0KPiBJIGFsc28gdGVzdGVkIHR1cm5pbmcgb2ZmIGFsbCBIUEQgaGFyZHdhcmUgcHJpb3Ig
dG8gbG9hZGluZw0KPiBpOTE1IHRvIG1ha2Ugc3VyZSBpdCBhbGwgY29tZXMgdXAgcHJvcGVybHku
IEFuZCBJIHNpbXVsYXRlZA0KPiB0aGUgZmFpbHVyZSBwYXRoIHRvbyBieSBub3QgdHVybmluZyBv
biBIUEQgc2Vuc2UgYW5kIHRoYXQNCj4gY29ycmVjdGx5IGdhdmUgdXAgb24gZURQLg0KPiANCj4g
SSAqdGhpbmsqIFdpbmRvd3MgbWlnaHQganVzdCBmdWxseSBkZXBlbmQgb24gSFBEIGhlcmUuIEkN
Cj4gY291bGRuJ3QgcmVhbGx5IGZpbmQgYW55IG90aGVyIHdheSB0aGV5IHByb2JlIGRpc3BsYXlz
LiBBbmQNCj4gSSBkaWQgZmluZCBjb2RlIHdoZXJlIHRoZXkgYWxzbyBjaGVjayB0aGUgbGl2ZSBz
dGF0ZSBwcmlvcg0KPiB0byBBVVggdHJhbnNmZXJzIChzb21ldGhpbmcgSW1yZSBhbmQgSSBoYXZl
IGFsc28gdGFsa2VkDQo+IGFib3V0IHBlcmhhcHMgZG9pbmcpLiBUaGF0IHdvdWxkIGFsc28gc29s
dmUgdGhpcyBhcyB3ZSdkDQo+IG5vdCBzdWNjZWVkIGluIHRoZSBlRFAgcHJvYmUgRFBDRCByZWFk
cy4NCj4gDQo+IE90aGVyIHNvbHV0aW9ucyBJJ3ZlIGNvbnNpZGVyZWQ6DQo+IA0KPiAtIFJlaW50
cmR1Y2UgRERJIHN0cmFwIGNoZWNrcyBvbiBTS0wuIFVuZm9ydHVuYXRlbHkgd2UganVzdA0KPiDC
oCBkb24ndCBoYXZlIGFueSBpZGVhIGhvdyByZWxpYWJsZSB0aGV5IGFyZSBvbiByZWFsIHByb2R1
Y3Rpb24NCj4gwqAgaGFyZHdhcmUsIGFuZCBjb21taXQgNWEyMzc2ZDEzNjBiICgiZHJtL2k5MTUv
c2tsOiBXYUlnbm9yZURESUFTdHJhcA0KPiDCoCBpcyBmb3JldmVyLCBhbHdheXMgaW5pdCBEREkg
QSIpIGRvZXMgc3VnZ2VzdCB0aGF0IG5vdCB2ZXJ5Lg0KPiDCoCBTYWRseSB0aGF0IGNvbW1pdCBp
cyB2ZXJ5IHBvb3IgaW4gZGV0YWlscyA6Lw0KPiANCj4gwqAgQWxzbyB0aGUgc3lzdGVtcyAoQXNy
b2NrIEIyNTBNLUhEViBhdCBsZWFzdCkgZml4ZWQgYnkgY29tbWl0DQo+IMKgIDQxZTM1ZmZiMzgw
YiAoImRybS9pOTE1OiBGYXZvciBsYXN0IFZCVCBjaGlsZCBkZXZpY2Ugd2l0aA0KPiDCoCBjb25m
bGljdGluZyBBVVggY2gvRERDIHBpbiIpIG1pZ2h0IHN0aWxsIG5vdCB3b3JrIHNpbmNlIHdlDQo+
IMKgIGRvbid0IGtub3cgd2hhdCB0aGVpciBzdHJhcHMgaW5kaWNhdGUuIFN0dXBpZCBtZSBmb3Ig
bm90DQo+IMKgIGFza2luZyB0aGUgcmVwb3J0ZXIgdG8gY2hlY2sgdGhvc2UgYXQgdGhlIHRpbWUg
OigNCj4gDQo+IMKgIFdlIGhhdmUgY3VycmVudGx5IHR3byBDSSBtYWNoaW5lcyAoZmktY2ZsLWd1
YyxmaS1jZmwtODcwMGsNCj4gwqAgYm90aCBNUy03QjU0L1ozNzBNKSB0aGF0IGFsc28gZGVjbGFy
ZSBib3RoIERESSBBIGFuZCBEREkgRQ0KPiDCoCBpbiBWQlQgdG8gdXNlIEFVWCBBLCBhbmQgb24g
dGhlc2UgdGhlIERESSBBIHN0cmFwIGlzIGFsc28NCj4gwqAgc2V0LiBUaGVyZSBkb2Vzbid0IHNl
ZW0gdG8gYmUgYW55dGhpbmcgaG9va2VkIHVwIHRvIGVpdGhlcg0KPiDCoCBEREkgaG93ZXZlci4g
QnV0IGdpdmVuIHRoZSBEREkgQSBzdHJhcCBpcyB3cm9uZyBvbiB0aGVzZSBpdA0KPiDCoCBtaWdo
dCB3ZWxsIGJlIHdyb25nIG9uIHRoZSBBc3JvY2sgdG9vLg0KPiANCj4gwqAgTW9zdCBvdGhlciBD
SSBtYWNoaW5lcyBzZWVtIHRvIGhhdmUgc3RyYXBzIHRoYXQgZ2VuZXJhbGx5DQo+IMKgIG1hdGNo
IHRoZSBWQlQuIGZpLWtibC1zb3Jha2EgaXMgYW4gZXhjZXB0aW9uIHRob3VnaCBhcyBEREkgRA0K
PiDCoCBzdHJhcCBpcyBub3Qgc2V0LCBidXQgaXQgaXMgZGVjbGFyZWQgaW4gVkJUIGFzIGEgRFAr
KyBwb3J0Lg0KPiDCoCBObyBpZGVhIGlmIHRoZXJlJ3MgYSByZWFsIHBoeXNpY2FsIHBvcnQgdG8g
Z28gd2l0aCBpdCBvciBub3QuDQo+IA0KPiAtIFNvbWUga2luZCBvZiBxdWlyayBqdXN0IGZvciB0
aGUgY2FzZXMgd2hlcmUgYm90aCBEREkgQSBhbmQgRERJIEUNCj4gwqAgYXJlIHByZXNlbnQgaW4g
VkJULiBNaWdodCBiZSBmZWFzaWJsZSBnaXZlbiB3ZSd2ZSBpZ25vcmVkDQo+IMKgIERESSBBIGlu
IHRoZXNlIGNhc2VzIHVwIHRvIG5vdyBzdWNjZXNzZnVsbHkuIEJ1dCBmZWVscyByYXRoZXINCj4g
wqAgdW5zYXRpc2ZhY3RvcnksIGFuZCBub3QgdmVyeSBmdXR1cmUgcHJvb2YgYWdhaW5zdCBmdW5u
eSBWQlRzLg0KPiANCj4gUmVmZXJlbmNlczogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTExOTY2DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KDQpSZXZpZXdlZC1ieTogVmlu
b2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCj4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAyOCArKysrKysrKysrKysr
KysrKysrKysrKysrDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKykNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXggYWVlOTNiMGQ4
MTBlLi4zNWIwMjI3OGQ4NDAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMNCj4gQEAgLTQ2LDYgKzQ2LDcgQEANCj4gwqAjaW5jbHVkZSAiZzR4X2RwLmgiDQo+
IMKgI2luY2x1ZGUgImk5MTVfZGVidWdmcy5oIg0KPiDCoCNpbmNsdWRlICJpOTE1X2Rydi5oIg0K
PiArI2luY2x1ZGUgImk5MTVfaXJxLmgiDQo+IMKgI2luY2x1ZGUgImk5MTVfcmVnLmgiDQo+IMKg
I2luY2x1ZGUgImludGVsX2F0b21pYy5oIg0KPiDCoCNpbmNsdWRlICJpbnRlbF9hdWRpby5oIg0K
PiBAQCAtNTMwOCw2ICs1MzA5LDE1IEBAIHN0YXRpYyBib29sIGludGVsX2VkcF9pbml0X2Nvbm5l
Y3RvcihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGdvdG8gb3V0X3ZkZF9vZmY7DQo+IMKgwqDCoMKgwqDCoMKgwqB9DQo+IMKgDQo+
ICvCoMKgwqDCoMKgwqDCoC8qDQo+ICvCoMKgwqDCoMKgwqDCoCAqIEVuYWJsZSBIUEQgc2Vuc2Ug
Zm9yIGxpdmUgc3RhdHVzIGNoZWNrLg0KPiArwqDCoMKgwqDCoMKgwqAgKiBpbnRlbF9ocGRfaXJx
X3NldHVwKCkgd2lsbCB0dXJuIGl0IG9mZiBhZ2Fpbg0KPiArwqDCoMKgwqDCoMKgwqAgKiBpZiBp
dCdzIG5vIGxvbmdlciBuZWVkZWQgbGF0ZXIuDQo+ICvCoMKgwqDCoMKgwqDCoCAqDQo+ICvCoMKg
wqDCoMKgwqDCoCAqIFRoZSBEUENEIHByb2JlIGJlbG93IHdpbGwgbWFrZSBzdXJlIFZERCBpcyBv
bi4NCj4gK8KgwqDCoMKgwqDCoMKgICovDQo+ICvCoMKgwqDCoMKgwqDCoGludGVsX2hwZF9lbmFi
bGVfZGV0ZWN0aW9uKGVuY29kZXIpOw0KPiArDQo+IMKgwqDCoMKgwqDCoMKgwqAvKiBDYWNoZSBE
UENEIGFuZCBFRElEIGZvciBlZHAuICovDQo+IMKgwqDCoMKgwqDCoMKgwqBoYXNfZHBjZCA9IGlu
dGVsX2VkcF9pbml0X2RwY2QoaW50ZWxfZHApOw0KPiDCoA0KPiBAQCAtNTMxOSw2ICs1MzI5LDI0
IEBAIHN0YXRpYyBib29sIGludGVsX2VkcF9pbml0X2Nvbm5lY3RvcihzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwLA0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gb3V0X3Zk
ZF9vZmY7DQo+IMKgwqDCoMKgwqDCoMKgwqB9DQo+IMKgDQo+ICvCoMKgwqDCoMKgwqDCoC8qDQo+
ICvCoMKgwqDCoMKgwqDCoCAqIFZCVCBhbmQgc3RyYXBzIGFyZSBsaWFycy4gQWxzbyBjaGVjayBI
UEQgYXMgdGhhdCBzZWVtcw0KPiArwqDCoMKgwqDCoMKgwqAgKiB0byBiZSB0aGUgbW9zdCByZWxp
YWJsZSBwaWVjZSBvZiBpbmZvcm1hdGlvbiBhdmFpbGFibGUuDQo+ICvCoMKgwqDCoMKgwqDCoCAq
Lw0KPiArwqDCoMKgwqDCoMKgwqBpZiAoIWludGVsX2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQoZW5j
b2RlcikpIHsNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qDQo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBJZiB0aGlzIGZhaWxzLCBwcmVzdW1lIHRoZSBEUENE
IGFuc3dlciBjYW1lDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBmcm9tIHNv
bWUgb3RoZXIgcG9ydCB1c2luZyB0aGUgc2FtZSBBVVggQ0guDQo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgKg0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogRklY
TUUgbWF5YmUgY2xlYW5lciB0byBjaGVjayB0aGlzIGJlZm9yZSB0aGUNCj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAqIERQQ0QgcmVhZD8gV291bGQgbmVlZCBzb3J0IG91dCB0aGUg
VkREIGhhbmRsaW5nLi4uDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8NCj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9pbmZvKCZkZXZfcHJpdi0+ZHJtLA0K
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiW0VOQ09E
RVI6JWQ6JXNdIEhQRCBpcyBkb3duLCBkaXNhYmxpbmcgZURQXG4iLA0KPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbmNvZGVyLT5iYXNlLmJhc2UuaWQs
IGVuY29kZXItPmJhc2UubmFtZSk7DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBn
b3RvIG91dF92ZGRfb2ZmOw0KPiArwqDCoMKgwqDCoMKgwqB9DQo+ICsNCj4gwqDCoMKgwqDCoMKg
wqDCoG11dGV4X2xvY2soJmRldl9wcml2LT5kcm0ubW9kZV9jb25maWcubXV0ZXgpOw0KPiDCoMKg
wqDCoMKgwqDCoMKgZHJtX2VkaWQgPSBkcm1fZWRpZF9yZWFkX2RkYyhjb25uZWN0b3IsICZpbnRl
bF9kcC0+YXV4LmRkYyk7DQo+IMKgwqDCoMKgwqDCoMKgwqBpZiAoIWRybV9lZGlkKSB7DQoNCg==
