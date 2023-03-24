Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 076566C7EE9
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 14:35:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE73C10E021;
	Fri, 24 Mar 2023 13:35:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B84FA10E021
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 13:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679664912; x=1711200912;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=w/awZ3HGhvLR5tQFJAPD5q3Pc6lwezEDwDvmQd/y6RY=;
 b=A7zwCpMFFbco0oiAu1pVjk0C/nhFhWXzg3587185KeooZs87SrR3Wdso
 yLMyb2SIlmx+Anu7YoIwX+Wapla+Jc/RKpsf1GnYijQ2KW+eSmkNx0Txv
 ImM48x+NPylYeLb3p5XS2/SpJ2hWW0mEToOdvkevl+85+uElATbl8wwAq
 N22izZVt//BFbyZg4+tPhWMtXTDFgPsKgqBzjDb5o2z6++2WnCehcCOi7
 gGpjizNnGIhKwUone7DYBxZy6RKEUuIrEzUc2jmT7ESTca+Yju6qELyl6
 4BcFGSE1sfq9S9qVYHMQPTpq5JIJUCW0UYS8aU97SYFT+ts3GZwiXPj4u Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="328195722"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="328195722"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 06:35:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="806667167"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="806667167"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 24 Mar 2023 06:35:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 06:35:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 06:35:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 24 Mar 2023 06:35:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 24 Mar 2023 06:35:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cqRddP0W4izUq0CFzVDKweXe/5RZXnj8nGQF8ekVaOP9b39u505p3krKDim18UQp0j2/y1U/c7wsf+UMR293YKzUY6ewR1Rhc3NbB2jH6J1kSIjyPWZ07/YstENPKbx+08aZ39TO8y/jXoO6no5/FIkJkeDADP5I74/B9DoBa4Eyzdt25L6Ben9Mj/m6OP6WxYU4bn21fNKmweTdjwczCzcvOXQLRtPLHSL7TxoQ7L8dyrzIpdvkje0qcHvH3vuIlfXnBAjm6WFPhKtLHnH0mlDQ1+DtwP+VcWmanMckaL6RaARQcWNVw9FLd+PNgnPK4i7ruCQ5dBbofwZBJeB+wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w/awZ3HGhvLR5tQFJAPD5q3Pc6lwezEDwDvmQd/y6RY=;
 b=NEG23NyeTWU7vGVI+kaDTlb7PcvYgbY3xcP76trkHHb095lFi8665n9dKE0Zf8hJACUEsyyvHFvsPgRuMxpoqYS0g01wqBPCeSpuf9/2wBAHQcD2C9e52BiUIDjIH5ZWq9H9Qfupqmw+eJDZirlAbbrYJJiIZYLwdJiXLtSX8jDzEx7OTs3v/xr3uRGIyuDTGYh+LS2sdjwzImclEdKw/2HTzSyu0lSXAdOJZ76jbZ5GOGO6Qt2rwIVfQh7OxbVIcjpS1Ug9qPxmoErOXHz5jLqqzWtdyU4WItwia3aQPV0XpBDTN3p5OFeCmYvhVxyrurs4wGj0UKkRMyXsuJC01Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by MW4PR11MB7005.namprd11.prod.outlook.com (2603:10b6:303:22e::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.39; Fri, 24 Mar
 2023 13:35:08 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%7]) with mapi id 15.20.6178.038; Fri, 24 Mar 2023
 13:35:08 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 10/29] drm/i915/tc: Add TC PHY hook to read
 out the PHY HW state
Thread-Index: AQHZXZK9g8GiakE4h0CpBHKtvQztB68J76xg
Date: Fri, 24 Mar 2023 13:35:08 +0000
Message-ID: <MW4PR11MB7054CD1C2484B710D4126144EF849@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-11-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-11-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|MW4PR11MB7005:EE_
x-ms-office365-filtering-correlation-id: 90d76281-0dbc-4ddb-3cd6-08db2c6c95d5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FMlIletYN+feD4KH0h8Y8vtOhJ6kLAfOR7rMm5n8EJUP23kPn2I9pkaA3vaZDhbfEnwohqLiHtWpRHeSYSBqrulP8kEFHTx+h47CqWLk5KlvPbeaABn4pgIvZvIubTpEriblpPFlDXmHjinXeKC1gDH2jX65phiM3I7w/FCb4u9N7Y/ZpHhtgxhbsRHSsq+cu9rjdFKwLDrU2ruDmWnUN8maBAFR/1e/dLIG/y6PRRUiKaRddm5ZU+MScKlK8SL5nU7fILVlZTo3YHwLrwRPuJY/HOX9B/kHMl2L5ZkI9plbmztcpbH7LNahaSDmDKkQ/whLOsS6Rkj5U6jpeteYyq37r+ngc5zAovUccKWG3DK8e47A6LBcALTWvXvwIOOEmkTisEICN0McsJzkMN4/mpNnNIyQ/G87iDQ2wS+p+I1FkITe29OY+H6O3FkOh9VMeOQIvCmXPI1/r+GxljSElaUh+ZEB9lJ/SLrUUkVigqNy5K8JNYwKsoQ+md35JSCTYPn2dkLJPPJSOdokQS4XHqybcyKa4x53axSrMz3FfHwvHTrmPUChIL5XsX6k8Ncunp/RJ6OWAaeDyqWOBVbSxH8b0Eg7wT2XXD/Bs8QNaHMVBQbl3QugCNBLn2f4YuriOFF6W05iSkSmXYWSgwntaD4OnNMYYSDkSYxMWWpmJNr/RWPNRbMY7ZE95nAdKomJwlxM1OT9VuWcSpBAgHtqqg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(376002)(39860400002)(396003)(366004)(136003)(451199018)(8936002)(5660300002)(76116006)(66476007)(66946007)(8676002)(26005)(66446008)(66556008)(64756008)(52536014)(2906002)(478600001)(110136005)(316002)(41300700001)(71200400001)(7696005)(53546011)(6506007)(9686003)(82960400001)(186003)(55016003)(83380400001)(33656002)(122000001)(38070700005)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?djF3M3IzeW9qRTJFL21VR2Y4Q0RuRU0wNEZUcHNYVDIxWjNaSm40V2ZCNStZ?=
 =?utf-8?B?Q0gxbmNNSllwSUxBdzd0eVFHNE1hZlRFTjkzNEhneVpjeldQd2FyaGVKeW5L?=
 =?utf-8?B?eG9xNmZiT0czbitYVEpJQ216amJHMHVSalRXM1J3YlFrUVdGYkYzR250eE1V?=
 =?utf-8?B?cS8rMjZVQS9BVjdLKzU3Z1BvT0xpTjhNejBtUkYrZWNmaUsyeHp6bHhqUE5R?=
 =?utf-8?B?S1A1MFZHRkYveWdNWnJPc1pCTkFoN2p5aU1DekZ1VTI0TFc3eklIb2x4SVUr?=
 =?utf-8?B?QWRaY051VEUwZWordE1WejdDR2hrN2haMTBkT2h1UHRzRHpDSjVCYitqZmFv?=
 =?utf-8?B?QXpHWmFyL1hvQjllVkxCNVgyV1B4SjVOenpFRnVhc04yN3kwR2Nud3UzSFVr?=
 =?utf-8?B?ZmlVZkRvbi92eFYxTmttc2E3MVFaVjNYQlZCdFFkVUM3aXhTZnltSVJaR3pY?=
 =?utf-8?B?SU12UUloUjJDc2s1T1JXNTFPVUhaaFR2U2xWeWVkL2IrWjZkNmcyeFJEUWlS?=
 =?utf-8?B?ck41dURXQUVYU21tTFFUU3hTK01GZTBseWVuT2tJNTkya3NaV2Vpb2JjRnRl?=
 =?utf-8?B?eHlCRG1Lay9OVUhUSlEyaTBPQTUyemRJaSt5NU1JY2oxSjh4TytCUHJITEtO?=
 =?utf-8?B?Mi8wVGRtRWpFZ1VXbVdBQkNKRjFjU0FJS0RpYnRDNnJGQ3ZoZ3FZRFhyTUly?=
 =?utf-8?B?N2NnWlpZdFlnUGRXYjJjSEROckFzN3ZSaU96dDNnWDg4MWUxbi8wNzI4QzJ6?=
 =?utf-8?B?V3kvZjlkNmNVTXJrenByZytnbCtFRlJ0WERLdnNCRnhWQ1psbDlUS3RyazRl?=
 =?utf-8?B?NFVIS2MrcEwzSVhZQWR5dEtHcWRDNTBOOGlHUkxjdnp4Y2J4YUlhdGVpVzll?=
 =?utf-8?B?R2ZaVnBId2Vtc00rcUlKemNoaFN0aWpTSXMwQzE5VDFiOEVqb3diRTNjWGVx?=
 =?utf-8?B?eXpHWGIwT0lYa2lqUUNyK0c0YUYzNERuNkhZV2d4QTg0WjJaeUNPVll4UU12?=
 =?utf-8?B?aTQxeVlnV01Kd2FrOU9EdHp0MGw5b1RON0lZWnB1bnI3d3gvTVBTTVpYSDM5?=
 =?utf-8?B?MThGaGpCYkdBTWVJUzJxSmJkS3psaENzSVFvY1h4M2Jpd001OVhJR3oybG9K?=
 =?utf-8?B?NnZiT3VhRDlmVEgvd2lrZmdvd3I2Y2N0U3prdXhLRWQvT0ZLaXozanJUQ2JE?=
 =?utf-8?B?WnNIUmRQOGUxREZzSGp2M2M2dUF4TkZ1elBQN1picU02UVk4NFZ2a214bzFy?=
 =?utf-8?B?L3lXVzBhSlFMNE5pdEtVMjBrb1FocTFRdDYrVHhLcUxOVVYxTHFySytXNzJ3?=
 =?utf-8?B?bGozQ05WR2pZclcwRVBXeUFXTnNjT3ZMdkI0aU1MRDFXU09teVdLUXR1OGd1?=
 =?utf-8?B?REhmenUrQy9EU3NBMlZOT3NjTGJkRld2TTMzMUJseUlvZDBXZTlVNUl6S0Vh?=
 =?utf-8?B?dUJYTVVPdi95d0hxQUdHV1NtS3JhNlVVTjZneW5Ycld2N2hWamJPdVdSOERv?=
 =?utf-8?B?Y0E4cWx6NGRaZ0FaSzRGNWdxb0xDRzV6a0g0Vks0MWZleDZMMHZOalJkODgv?=
 =?utf-8?B?Y1pDL3hHV2RBS1pJSk9xTUFlcU1xZnhhRDJzcUIwaExmYTlGZVJ0ZmdXY2Rr?=
 =?utf-8?B?VHNUd1JwdTE5Y2VWQjFKTXZyU0t2MkxscHAxWFJNMkg2eitSMmR5czR5YVBB?=
 =?utf-8?B?NHkyVzByR1RPZGxxL0o2MWRmWTdXaFdDcVlsaW41QnBUSnlaQVk1YURmQ3ZD?=
 =?utf-8?B?T0RDUG8vMDhjNWkwUENyWDViR1lWZXlQbjAzbUhHN0RpZVJHYi93YlovVUpu?=
 =?utf-8?B?VUJiWEw1dGtXb3FianRJUDcrOGJ5SXFYSXJZdW9URFBQM2pEYUFpQVQyOVFt?=
 =?utf-8?B?VHF4bkY1emNmQWo0T2E2bEpNbnpYampSL0d4cVVuOExER1l2dlhhNGxPaUxR?=
 =?utf-8?B?UWIrMzNLMFVDYWFsMDZsRVRkejFtZTRGb05wRXp6VS93WjYwSGxGM0lLMTZj?=
 =?utf-8?B?NGVBOHFpb0VQUHRSV1JIeWpqVUdqV3NoVUx4UTlSSHNNblJnOFdNd09BeGNp?=
 =?utf-8?B?a3Q4MHNmOGFnaDdDeE1yeCtsbUZnek4vcm9VSDVsTCtlbHlWbGdicWVPQWlZ?=
 =?utf-8?Q?wBNHAve3fFbPXx0kd3qD71Mef?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90d76281-0dbc-4ddb-3cd6-08db2c6c95d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2023 13:35:08.4302 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r3W1Z2PSakMiJCaRGdpJlt9Dd5Q8JlPbktaepDOPz9m6BlyOnBr3iuR3ivEd1ir20P/8t7I1IYVPP7Y0MRIkKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7005
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 10/29] drm/i915/tc: Add TC PHY hook to read
 out the PHY HW state
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
MTAvMjldIGRybS9pOTE1L3RjOiBBZGQgVEMgUEhZIGhvb2sgdG8gcmVhZCBvdXQgdGhlDQo+IFBI
WSBIVyBzdGF0ZQ0KPiANCj4gQWRkIGEgVEMgUEhZIGhvb2sgdG8gcmVhZCBvdXQgdGhlIFBIWSBI
VyBzdGF0ZSBvbiBlYWNoIHBsYXRmb3JtLCBtb3ZlIHRoZQ0KPiBjb21tb24gcGFydHMgdG8gdGhl
IGdlbmVyaWMgaGVscGVyLg0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmth
aG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtA
aW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dGMuYyB8IDM0ICsrKysrKysrKysrKysrKysrLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAy
NCBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gaW5kZXggN2Q2NGNiMzEwY2EzZS4uYWEzOTgxMDk2
MjU5MiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90
Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBA
QCAtMjgsNiArMjgsNyBAQCBzdHJ1Y3QgaW50ZWxfdGNfcGh5X29wcyB7DQo+ICAJdTMyICgqaHBk
X2xpdmVfc3RhdHVzKShzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMpOw0KPiAgCWJvb2wgKCppc19y
ZWFkeSkoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjKTsNCj4gIAlib29sICgqaXNfb3duZWQpKHN0
cnVjdCBpbnRlbF90Y19wb3J0ICp0Yyk7DQo+ICsJdm9pZCAoKmdldF9od19zdGF0ZSkoc3RydWN0
IGludGVsX3RjX3BvcnQgKnRjKTsNCj4gIH07DQo+IA0KPiAgc3RydWN0IGludGVsX3RjX3BvcnQg
ew0KPiBAQCAtNTEsNiArNTIsNyBAQCBzdHJ1Y3QgaW50ZWxfdGNfcG9ydCB7ICBzdGF0aWMgdTMy
DQo+IHRjX3BoeV9ocGRfbGl2ZV9zdGF0dXMoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjKTsgIHN0
YXRpYyBib29sDQo+IHRjX3BoeV9pc19yZWFkeShzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMpOyAg
c3RhdGljIGJvb2wNCj4gdGNfcGh5X3Rha2Vfb3duZXJzaGlwKHN0cnVjdCBpbnRlbF90Y19wb3J0
ICp0YywgYm9vbCB0YWtlKTsNCj4gK3N0YXRpYyBlbnVtIHRjX3BvcnRfbW9kZSB0Y19waHlfZ2V0
X2N1cnJlbnRfbW9kZShzdHJ1Y3QgaW50ZWxfdGNfcG9ydA0KPiArKnRjKTsNCj4gDQo+ICBzdGF0
aWMgY29uc3QgY2hhciAqdGNfcG9ydF9tb2RlX25hbWUoZW51bSB0Y19wb3J0X21vZGUgbW9kZSkg
IHsgQEAgLQ0KPiA0MDcsNiArNDA5LDIwIEBAIHN0YXRpYyBib29sIGljbF90Y19waHlfaXNfb3du
ZWQoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjKQ0KPiAgCXJldHVybiB2YWwgJiBEUF9QSFlfTU9E
RV9TVEFUVVNfTk9UX1NBRkUodGMtPnBoeV9maWFfaWR4KTsNCj4gIH0NCj4gDQo+ICtzdGF0aWMg
dm9pZCBpY2xfdGNfcGh5X2dldF9od19zdGF0ZShzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMpIHsN
Cj4gKwllbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluIGRvbWFpbjsNCj4gKwlpbnRlbF93
YWtlcmVmX3QgdGNfY29sZF93cmVmOw0KPiArDQo+ICsJdGNfY29sZF93cmVmID0gdGNfY29sZF9i
bG9jayh0YywgJmRvbWFpbik7DQo+ICsNCj4gKwl0Yy0+bW9kZSA9IHRjX3BoeV9nZXRfY3VycmVu
dF9tb2RlKHRjKTsNCj4gKwlpZiAodGMtPm1vZGUgIT0gVENfUE9SVF9ESVNDT05ORUNURUQpDQo+
ICsJCXRjLT5sb2NrX3dha2VyZWYgPSB0Y19jb2xkX2Jsb2NrKHRjLCAmdGMtDQo+ID5sb2NrX3Bv
d2VyX2RvbWFpbik7DQo+ICsNCj4gKwl0Y19jb2xkX3VuYmxvY2sodGMsIGRvbWFpbiwgdGNfY29s
ZF93cmVmKTsgfQ0KPiArDQo+ICAvKg0KPiAgICogVGhpcyBmdW5jdGlvbiBpbXBsZW1lbnRzIHRo
ZSBmaXJzdCBwYXJ0IG9mIHRoZSBDb25uZWN0IEZsb3cgZGVzY3JpYmVkIGJ5IG91cg0KPiAgICog
c3BlY2lmaWNhdGlvbiwgR2VuMTEgVHlwZUMgUHJvZ3JhbW1pbmcgY2hhcHRlci4gVGhlIHJlc3Qg
b2YgdGhlIGZsb3cNCj4gKHJlYWRpbmcgQEAgLTUwNiw2ICs1MjIsNyBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IGludGVsX3RjX3BoeV9vcHMNCj4gaWNsX3RjX3BoeV9vcHMgPSB7DQo+ICAJLmhwZF9s
aXZlX3N0YXR1cyA9IGljbF90Y19waHlfaHBkX2xpdmVfc3RhdHVzLA0KPiAgCS5pc19yZWFkeSA9
IGljbF90Y19waHlfaXNfcmVhZHksDQo+ICAJLmlzX293bmVkID0gaWNsX3RjX3BoeV9pc19vd25l
ZCwNCj4gKwkuZ2V0X2h3X3N0YXRlID0gaWNsX3RjX3BoeV9nZXRfaHdfc3RhdGUsDQo+ICB9Ow0K
PiANCj4gIC8qKg0KPiBAQCAtNTg3LDYgKzYwNCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50
ZWxfdGNfcGh5X29wcyBhZGxwX3RjX3BoeV9vcHMgPSB7DQo+ICAJLmhwZF9saXZlX3N0YXR1cyA9
IGFkbHBfdGNfcGh5X2hwZF9saXZlX3N0YXR1cywNCj4gIAkuaXNfcmVhZHkgPSBhZGxwX3RjX3Bo
eV9pc19yZWFkeSwNCj4gIAkuaXNfb3duZWQgPSBhZGxwX3RjX3BoeV9pc19vd25lZCwNCj4gKwku
Z2V0X2h3X3N0YXRlID0gaWNsX3RjX3BoeV9nZXRfaHdfc3RhdGUsDQo+ICB9Ow0KPiANCj4gIC8q
Kg0KPiBAQCAtNjE3LDYgKzYzNSwxMSBAQCBzdGF0aWMgYm9vbCB0Y19waHlfaXNfb3duZWQoc3Ry
dWN0IGludGVsX3RjX3BvcnQgKnRjKQ0KPiAgCXJldHVybiB0Yy0+cGh5X29wcy0+aXNfb3duZWQo
dGMpOw0KPiAgfQ0KPiANCj4gK3N0YXRpYyB2b2lkIHRjX3BoeV9nZXRfaHdfc3RhdGUoc3RydWN0
IGludGVsX3RjX3BvcnQgKnRjKSB7DQo+ICsJdGMtPnBoeV9vcHMtPmdldF9od19zdGF0ZSh0Yyk7
DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBib29sIHRjX3BoeV90YWtlX293bmVyc2hpcChzdHJ1Y3Qg
aW50ZWxfdGNfcG9ydCAqdGMsIGJvb2wgdGFrZSkgIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSA9IHRjX3RvX2k5MTUodGMpOyBAQCAtODg5LDggKzkxMiw2IEBADQo+IHZvaWQg
aW50ZWxfdGNfcG9ydF9pbml0X21vZGUoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3Bv
cnQpICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19w
b3J0LT5iYXNlLmJhc2UuZGV2KTsNCj4gIAlzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMgPSB0b190
Y19wb3J0KGRpZ19wb3J0KTsNCj4gLQlpbnRlbF93YWtlcmVmX3QgdGNfY29sZF93cmVmOw0KPiAt
CWVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gZG9tYWluOw0KPiAgCWJvb2wgdXBkYXRl
X21vZGUgPSBmYWxzZTsNCj4gDQo+ICAJbXV0ZXhfbG9jaygmdGMtPmxvY2spOw0KPiBAQCAtODk5
LDE3ICs5MjAsMTIgQEAgdm9pZCBpbnRlbF90Y19wb3J0X2luaXRfbW9kZShzdHJ1Y3QgaW50ZWxf
ZGlnaXRhbF9wb3J0DQo+ICpkaWdfcG9ydCkNCj4gIAlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCB0
Yy0+bG9ja193YWtlcmVmKTsNCj4gIAlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCB0Yy0+bGlua19y
ZWZjb3VudCk7DQo+IA0KPiAtCXRjX2NvbGRfd3JlZiA9IHRjX2NvbGRfYmxvY2sodGMsICZkb21h
aW4pOw0KPiAtDQo+IC0JdGMtPm1vZGUgPSB0Y19waHlfZ2V0X2N1cnJlbnRfbW9kZSh0Yyk7DQo+
ICsJdGNfcGh5X2dldF9od19zdGF0ZSh0Yyk7DQo+ICAJLyoNCj4gIAkgKiBTYXZlIHRoZSBpbml0
aWFsIG1vZGUgZm9yIHRoZSBzdGF0ZSBjaGVjayBpbg0KPiAgCSAqIGludGVsX3RjX3BvcnRfc2Fu
aXRpemVfbW9kZSgpLg0KPiAgCSAqLw0KPiAgCXRjLT5pbml0X21vZGUgPSB0Yy0+bW9kZTsNCj4g
LQlpZiAodGMtPm1vZGUgIT0gVENfUE9SVF9ESVNDT05ORUNURUQpDQo+IC0JCXRjLT5sb2NrX3dh
a2VyZWYgPQ0KPiAtCQkJdGNfY29sZF9ibG9jayh0YywgJnRjLT5sb2NrX3Bvd2VyX2RvbWFpbik7
DQo+IA0KPiAgCS8qDQo+ICAJICogVGhlIFBIWSBuZWVkcyB0byBiZSBjb25uZWN0ZWQgZm9yIEFV
WCB0byB3b3JrIGR1cmluZyBIVyByZWFkb3V0DQo+IGFuZCBAQCAtOTM4LDggKzk1NCw2IEBAIHZv
aWQgaW50ZWxfdGNfcG9ydF9pbml0X21vZGUoc3RydWN0DQo+IGludGVsX2RpZ2l0YWxfcG9ydCAq
ZGlnX3BvcnQpDQo+ICAJLyogUHJldmVudCBjaGFuZ2luZyB0Yy0+bW9kZSB1bnRpbCBpbnRlbF90
Y19wb3J0X3Nhbml0aXplX21vZGUoKSBpcw0KPiBjYWxsZWQuICovDQo+ICAJX19pbnRlbF90Y19w
b3J0X2dldF9saW5rKHRjKTsNCj4gDQo+IC0JdGNfY29sZF91bmJsb2NrKHRjLCBkb21haW4sIHRj
X2NvbGRfd3JlZik7DQo+IC0NCj4gIAltdXRleF91bmxvY2soJnRjLT5sb2NrKTsNCj4gIH0NCj4g
DQo+IC0tDQo+IDIuMzcuMQ0KDQo=
