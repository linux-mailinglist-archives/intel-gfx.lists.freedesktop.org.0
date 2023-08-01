Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 889F576A9B5
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 09:04:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0884B10E0E2;
	Tue,  1 Aug 2023 07:04:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29FCA10E0DC
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 07:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690873467; x=1722409467;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=hi/m+GT97nS0DhVUzu6KRc8Kh1KjLd31snRlSIMOFqE=;
 b=J1W9gUH/ycrjSyZ3mqFpsxv9PbcfnzqZnjXL+cI6WkQEUxFfNtx2mayt
 VOoGyrWlQ+pjl0Jh6KYjHsMNZCGub2QlQRZTbwkYLRm8OxouPK0z3a+FS
 2fS39/jS3szouN/upmS2ziQ6oEnTk51CesZPiy3Zd6KjiiLqA+gBz3YN7
 h6NOalW23xAqiMhQPGPzKWumwps/2kFgv3Q5596RAsJyjTA67Vjfy9olS
 liebO47cydKqitWeEWTBmfZukCkGwBo6qP3eHRFqI5ultTfjV20CvFDB5
 NtVxASEokg2I9IVks9TT97THeTaGthbyaGnl2KrrkAPZ8ZBSvUZX/gBX4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="400166516"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="400166516"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 00:04:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="705729066"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="705729066"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 01 Aug 2023 00:04:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 1 Aug 2023 00:04:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 1 Aug 2023 00:04:26 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 1 Aug 2023 00:04:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a5Q/IjqeO6HqPvnsVKaKpapPEDwU8t6vEvWkBrkJRCAbJthNhXP7rpi94fTcKcnHjhymGdeEHtZE2mtme5QtFxY6XdUTs/dl6MjGVXfDb7lhowRZz4KRg1Qkk+dCxdvchqvHP8JE2V2argjFmLKWHb00U8wkE9d12KyEvtza4kKP9+JzqUuLZ+t2dDYrx6MqpCkFbhDVrcIKd0FwZ3a11BMRdfdTh5wgltXKqZLo8mzPKAHF2+qoa4pvoUQDv9w/wzb8TT9TIOwnEiEeZN4eDJ4KyvHO6Ka4ZdhZmZV48G51USlW2LrJzCgAGN9JQQfcA0E5KU8WFKiyX097psxJOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hi/m+GT97nS0DhVUzu6KRc8Kh1KjLd31snRlSIMOFqE=;
 b=ItGNH7N6Z2fLIGifD1roM01v028+zlwIT4QeprVCP6mPtPp1bfxmciKIiEdbmb1vfA4QYQvrbA1l5f01STHinYMu4iPauz4I8r4E6M8A7SxassbznvrtlcIgIF7Ng9zrew98XdYWzHpdOB++1zUQ4s7BKO+banDqPYR7+YZojfiKCAtTftzT5sB8McubI/UYjC+E6DpcCwvlccb8imEAJ7+9iCipKsoWfhonogOysYFfOSgOW0P6YxPg9T3x+acueKvuk7EHXEdrFkbjK6EuoUyYYqfLj4/oGhS5qzLYUGWzyaeS4xnc3UI1WLJyma9CYEM5KL9fS+Aiv5b6RR5xYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6631.39; Tue, 1 Aug 2023 07:04:24 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e%5]) with mapi id 15.20.6631.043; Tue, 1 Aug 2023
 07:04:24 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 0/4] Do not access i915_gem_object members from
 frontbuffer tracking
Thread-Index: AQHZwFV0Qr/zUJpFjE2sDX3Ko+TW/q/VDCAA
Date: Tue, 1 Aug 2023 07:04:24 +0000
Message-ID: <1f3c2ed6a4e4c3c92d68130981b9380606354215.camel@intel.com>
References: <20230727064142.751976-1-jouni.hogander@intel.com>
In-Reply-To: <20230727064142.751976-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO6PR11MB5651:EE_
x-ms-office365-filtering-correlation-id: e8db4e4a-1692-40cc-ba8d-08db925d8998
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lsJ8vxkHyLIhPbgLkLILhoyyKd1BANC3TNsLxj1+hOTIWT26F6oLPNAuwtBVolU2mtnds+81NiVwdis0HPTMaVEUv4gaJhhAlOB4wBIe56cnuzFpdA6M99y/lDSiPmShfoeLVYXrh8rxhqChJrSXZsbX2J5xLeU/DYBQuZvDbU8YAJL7WCPKhhOzOZhl6+ey040AosVlWlnsnghhVlK6NeCxLBOzSMZUiQJYXDKDaHOl+rKFvc/CGCnhDB1ZmiHU0dELpFOSbDnYbExqq/UPBuhqTslxpGz8lT0ALToOfo4VkCtO88sdEsOiwTcOOE+qWc9dy0WFD1NA49EOzOAjGimhPJTM3rAW+xHtoHao/Iq4EraC6gYYfgPGKSVba6u4+OxRfBqL9U88neV2jj3Ej3mHwa94wxAFcQNBkywZ6/xCPtdnK9+FN27DWwegqy6UOK84q8l+cltDSLo6NNWA7wD/2iFhlGC+OywvAitMd1bJWKBsK5YgCNbZXrpyXrYlopqPl4p9kp3bw4dFnunJuLueF5CBgyA8JJ+r+aD78lq8jRzL6ikYycJsPuXHu9YD+O3vfnZfjMeWLlySDTIGnAyDo1voZZxPZWiuFM/czws9V3ik6ZobrWryR0O8MjLZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(39860400002)(376002)(136003)(396003)(451199021)(6512007)(6486002)(36756003)(2616005)(6506007)(26005)(83380400001)(186003)(66574015)(76116006)(66946007)(66556008)(91956017)(54906003)(122000001)(82960400001)(38070700005)(41300700001)(38100700002)(86362001)(66476007)(316002)(5660300002)(66446008)(6916009)(4326008)(8676002)(8936002)(64756008)(2906002)(71200400001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TXovUytMMnB1SDZpdmhHZUlYcS9Xc2pBaW90QUtsRFdyMG5nRVBwVUY2UEYw?=
 =?utf-8?B?a3RSeUVBYXBLY09NdXRpMi81eCtDODlLTTlZMEliaEltQy9YZ3NYMFpLdlJK?=
 =?utf-8?B?TmR0d0NudFUrTFJKWmRUOGlxU29tY0luTFRyM0x1d2RvMHhuMlJFME1mV25Z?=
 =?utf-8?B?aFI1bERIdzZoMlN5Q1V6bERDZDJ3enFHYytmbU9JdWdCZXFPRlJRSHlpaUM5?=
 =?utf-8?B?UnZ5dEVjaHVOeUZLbW1ucTBWWlN3YXJ4bldyVXQ1blgxZW1IekNMM2lpSU1q?=
 =?utf-8?B?UVZwZzRoUGR4ZzdMeDhWVHhodzNFVmFVYmR4ZnlUZ3JPSWE4NHZOUWYzaDBQ?=
 =?utf-8?B?Tk85eHd5dkZjZTJBaWpxMGlMSGdmZk1DMDYzT2NGODdzTmcrSUlUZUhFZHh1?=
 =?utf-8?B?NGx3WXRMeUxUY29DbGJXY3ByeWlqK2I5MWY2M2w0ZUl3SHNubWVuaml1WDNQ?=
 =?utf-8?B?WjkwZ1dIV1hDOHFNUjhJN0Z3ZmFiWk5pOEpuM0gyQUo2VWJOTHpHclZoNmpG?=
 =?utf-8?B?eS9RbGZXUGNMVFQyaWR0VWNPS2xFZHN2aXAycmp0ako2QTZzbzd2WG12UHF3?=
 =?utf-8?B?cTF2TFRDUGFDMWV5bGVpRFIzbzUzb1VuRzExVUpvcVNoRWIySmw5N0FXV2hO?=
 =?utf-8?B?S1krbGtOR1IyWnhudmZVM0dZdWlJL2VJNERSdzdlVnduclNiSVFVVGZkVDY4?=
 =?utf-8?B?dEVJVE15T1B4TWlUYWpLTWxrWXBObWlESDduU05XN1Zza3FmN1lDTUgzMlN2?=
 =?utf-8?B?MTR0b3FlUjViUjFmS2NaMWxyREsxT3lxSVVFbGc4SnNVVXl3Skt0U1JFVTcz?=
 =?utf-8?B?ZnhENkxKdHFDc0tiNDZHYjJ2dG1WSE56MlV5NFlMeXB1SHJ3VHpXdk90Z0Vj?=
 =?utf-8?B?SFNVMFhscERqa0FTb29pN29XMWx6K29MRklrZGgxR01BKzdZQ0ZkdlgvaWlS?=
 =?utf-8?B?QmlpbDdGdituc2pBL1ZRRFdYQzBSQVFYcE9lb2p2OFF1NW5uN0dpUHlCYzk2?=
 =?utf-8?B?ZzNXdFJIL1dVaTdXUHBIVXdJbk4xK1diR1NOYmZwUDJobG9ZWTViWkRnSTMz?=
 =?utf-8?B?UzhGalBVbDJTVmhqSWoxbmcxWnhrdGRCWHduOFM2cytoc2VJenpmajVmYjk1?=
 =?utf-8?B?cDJ2V2tlWWdpaEhHZjg5NDFqODNIc3F2d29xRm1LOTJNWDFscUdweHdyRlkw?=
 =?utf-8?B?aHYxdFdkVG93ekFKb1hlaVNVeGpyZ3E5MWQ0UGhIWDJZQUVXa2xtK0tFU0R5?=
 =?utf-8?B?Qk56d1ZFY21uK2tFdXdGdUVEbVcvS2tOLzFxNFdETkJaa3BiOXc4VE1LNlQz?=
 =?utf-8?B?dGNlOXNqQzZFZFNxZXpkbG1QV0R0L3VyWWJqM2JyZW9YYSs0bkNXdEFRSWdj?=
 =?utf-8?B?a3dBQlRabWxwam0vUGVHQmxIWG5zdDNuTzBQTWp1VVc5clA1aVpzWGZMSXlU?=
 =?utf-8?B?OGFoV1J1Z0hxdG1RQ1RTZmwvQjU2YWxLNGpVcGxBQjR5Kyt2MDNDNlczRDcv?=
 =?utf-8?B?eW1LbkZNdldKdC9rQXNvSTNDUDczVXNXUVJpbkZqR3lkdkc0YzBMYWpNMGUy?=
 =?utf-8?B?ZVhtSEFhcWZyRXhWNlJXV1ZmaHJrei9Mbk56czI5azh1bkVuUlg4VU9zTkVN?=
 =?utf-8?B?NEdTRlVLL00vSGtxR2xPMG9JeitRU00vYjgybEFQWWgrbHpqNk5qVkttZ0RO?=
 =?utf-8?B?QkRmU2oxbC9nSG5JQXF4SFhLc0hQSTNNS2grUFk1cHMwamVEWGh0djMrZHZm?=
 =?utf-8?B?Y0k5aDk1R1FmcjVDU1lqWVF3Qy9nU25VbncwVG1WTXFEMGlkSnBtVVA2RjVN?=
 =?utf-8?B?bUF6S2tOVjlyRFh1aDFlT1hLUEFRVmVCOE9BbEdaKzh6RlhiY053ZkZQbDd0?=
 =?utf-8?B?NjFrazQ2SVNxZEx0a2R3U3RTRHNqcjRGTGZsYnJrQ1hOMDJKOFhUNXY1OVFH?=
 =?utf-8?B?SkN5TWM2MEY2UmYxVElBY241dnJjVEtOVm1SQ2ZlUmhheUNpcUpIYVZPcnQ3?=
 =?utf-8?B?ZEhNN01YYncwRVcrT3A1NklXVVl5U2ZtRmF2eFRGeEJObnVIOUQvRWFmWEhH?=
 =?utf-8?B?c2loU2lwQnNITTZIM1RXazJKL2tTdEQwbmg4RGpCTW42enhPbjY0VjZJSUdO?=
 =?utf-8?B?dnUxZDRXcnFWcWtCWG4yd2h6aUp0dDN1V3U3M01XSWJKVUVraXpzUHZyY1Rz?=
 =?utf-8?B?Z3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7CBAC272968B634F9B172822BFE5C87A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8db4e4a-1692-40cc-ba8d-08db925d8998
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2023 07:04:24.0575 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /VbqNrRXlS+DXLg242phMuPFX2uVsE+T+ILAq0Rpem17xYsy1F/h1fyrH6CfSjQkqIQtx7KrgSilUXMYr99BNrx9yHw9UnKLJrzH5iGmCGo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5651
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 0/4] Do not access i915_gem_object
 members from frontbuffer tracking
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "Das, Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIzLTA3LTI3IGF0IDA5OjQxICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IFdlIGFyZSBwcmVwYXJpbmcgZm9yIFhlIGRyaXZlci4gQmluYXJ5IG9iamVjdHMgd2lsbCBo
YXZlIGRpZmZlcmluZw0KPiBpbXBsZW1lbnRhdGlvbiBpbiBYZSBkcml2ZXIuIER1ZSB0aGlzIHdl
IHdhbnQgdG8gcmVtb3ZlIGRpcmVjdA0KPiBhY2Nlc3NlcyB0byBpOTE1X2dlbV9vYmplY3QgbWVt
YmVycyBhbmQgbGVhdmUgZGV0YWlscyB0byBiaW5hcnkNCj4gb2JqZWN0DQo+IGltcGxlbWVudGF0
aW9uLg0KDQpUaGFuayB5b3UgTmlybW95LCBKYW5pIGFuZCBKZWV2YW4gZm9yIHJldmlld3MuIFRo
aXMgaXMgbm93IG1lcmdlZC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KPiANCj4gQ2M6IEph
bmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IENjOiBSb2RyaWdvIFZpdmkgPHJv
ZHJpZ28udml2aUBpbnRlbC5jb20+DQo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5s
YW5raG9yc3RAbGludXguaW50ZWwuY29tPg0KPiBDYzogTmlybW95IERhcyA8bmlybW95LmRhc0Bp
bnRlbC5jb20+DQo+IA0KPiB2NDoNCj4gwqAgLSBGaXggaW50ZWxfZnJvbnRidWZmZXJfZ2V0IHJl
dHVybiB2YWx1ZQ0KPiDCoCAtIHMvZnJvbnRfcmV0L2N1ci8NCj4gdjM6DQo+IMKgIC0gTW92ZSBn
ZW0gb2JqZWN0IGZyb250YnVmZmVyIGdldHRlci9zZXR0ZXIgaW50byBoZWFkZXIgZmlsZQ0KPiDC
oCAtIG9wZXJhdGUgb24gYW5kIHJldHVybiBwb2ludGVyIGluIGRlZmluZWQgbWFjcm9zDQo+IHYy
OiBkZXNyaWJlIGk5MTVfZ2d0dF9jbGVhcl9zY2Fub3V0IGZ1bmN0aW9uIHBhcmFtZXRlcg0KPiAN
Cj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IENjOiBSb2RyaWdv
IFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8
bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPg0KPiANCj4gSm91bmkgSMO2Z2FuZGVy
ICg0KToNCj4gwqAgZHJtL2k5MTU6IEFkZCBtYWNyb3MgdG8gZ2V0IGk5MTUgZGV2aWNlIGZyb20g
aTkxNV9nZW1fb2JqZWN0DQo+IMKgIGRybS9pOTE1OiBBZGQgZ2V0dGVyL3NldHRlciBmb3IgaTkx
NV9nZW1fb2JqZWN0LT5mcm9udGJ1ZmZlcg0KPiDCoCBkcm0vaTkxNS9kaXNwbGF5OiBSZW1vdmUg
aTkxNV9nZW1fb2JqZWN0X3R5cGVzLmggZnJvbQ0KPiDCoMKgwqAgaW50ZWxfZnJvbnRidWZmZXIu
aA0KPiDCoCBkcm0vaTkxNTogQWRkIGZ1bmN0aW9uIHRvIGNsZWFyIHNjYW5vdXQgZmxhZyBmb3Ig
dm1hcw0KPiANCj4gwqAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIu
Y8KgIHwgNDYgKysrKystLS0tLS0tLQ0KPiDCoC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9mcm9udGJ1ZmZlci5owqAgfCAyOCAtLS0tLS0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9vYmplY3QuY8KgwqDCoCB8wqAgNCArLQ0KPiDCoGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaMKgwqDCoCB8IDY3DQo+ICsrKysrKysrKysrKysr
KysrKysNCj4gwqAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaMKg
IHzCoCAzICsNCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB8IDIyICsrKysrLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfdm1hLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAyICsNCj4gwqA3IGZpbGVz
IGNoYW5nZWQsIDExMiBpbnNlcnRpb25zKCspLCA2MCBkZWxldGlvbnMoLSkNCj4gDQoNCg==
