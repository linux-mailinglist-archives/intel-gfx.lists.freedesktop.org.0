Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4C05E7AF3
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 14:37:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCE3110E525;
	Fri, 23 Sep 2022 12:37:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FE7810E525
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 12:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663936663; x=1695472663;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=LsUmy/PBL5ghDGhWUxR5XLx+ICILhR5XqY5lty8xMDU=;
 b=VKzWnpPARuJX7Vc07ql1wh8Ecr54gC+Ut1WH3RvrzP3hM/u5lB7Ga3VQ
 eIbCwBprN7f18cmEXodrBeckacExve5y7xZnQtsKYYXDWkwwFmV/Nd+hA
 /YORPvsvcGhMTyEDg6tmEv/eFEslCTx4eaHaRIxXa3ya/rxOF0W+6zBZ2
 O/hSLzPpCFlCm7FFeSf0A1iH8BWAaot8IRyiFBLs+y6Afkn5c8eiN6F+u
 GOS6CyM0ckT+INpyZk5I6l4ue/3Ici/7A8qZmd0GeTg/EKbWwKo64B8VK
 57gDPVzeWZMIg2kNBJyI4WO+ix0v1XNKmuf3M31YQfJwZzsa/EblIK5Kf w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10479"; a="302029271"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="302029271"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 05:37:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="650940886"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 23 Sep 2022 05:37:43 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 05:37:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 23 Sep 2022 05:37:42 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 23 Sep 2022 05:37:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qroikfp99LA/4L0P1FqzMqOsgrOpRWH+aVoE4Zae8zX4bMaGzPeP5dKtW0eEmmyt18bFYhaetflEyb2HFcL94u+r439+x+mf/gBDI/M9404bbMdfv3JTEG/qvzkDCmQoYNEywJyxfnsJ6knGVjZKnNjA19ewZKhBiJrJIZCgMiCatVjlBzBHP2iCBCZi8lHVlVPomrkFLDrCEqWQk7A84wDsKSNvTfBHFGJKJk2sr0JPNt7b1DnIrGykOXTzC1gHuRyd3TUswq25a/D3Q11HtCrkpbR/PyVJRVJeDJeqiZQuv+YDVVTrYClGqwVJ0DFIo/76oSWR4GOL7m0JMAD+wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LsUmy/PBL5ghDGhWUxR5XLx+ICILhR5XqY5lty8xMDU=;
 b=hfIUCev6Jh6hlKu2EhmO3LcrKxqTdIDSnc0I3rWr98uUyXOlCE70jAycPoCy9O4C/HnEprVxSvCbcBrBjWBKxx5wjL8hOhrxlJeiOXFcBO45vuRW/B8hw/h9gQcCNV5AESEnGav4h+bC7jSeD09TlxcPtP7ggc3hv/rYSJH1PXec9R8z/pXwPE+hh1fL+7oimv2kyFCPoyELl3dvXZ3qC21spVXhQwyQhbkQfOtu6tKDi4/iiprCFVuxrUNtpJfXihxRWiS1ud1vm+oJGpz8Nu6WtilJKG232carRbfgEIxEAjaDxn3Df35yekIEiD+8FzGoL4QtjE8GbVs6XNNbSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB2054.namprd11.prod.outlook.com (2603:10b6:903:2d::9)
 by IA1PR11MB6491.namprd11.prod.outlook.com (2603:10b6:208:3a5::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.14; Fri, 23 Sep
 2022 12:37:40 +0000
Received: from CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::b5b6:21ed:ab69:e7c5]) by CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::b5b6:21ed:ab69:e7c5%12]) with mapi id 15.20.5654.019; Fri, 23 Sep
 2022 12:37:40 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH v2] drm/i915/psr: Fix PSR_IMR/IIR field handling
Thread-Index: AQHYzllhiDr/c6LwkUSnU2UTUOSTEa3rbCYAgAEduACAAGv2AA==
Date: Fri, 23 Sep 2022 12:37:39 +0000
Message-ID: <86089a49cbb3123d0e8603c592a740587b3e6f2f.camel@intel.com>
References: <20220922075948.111558-1-jouni.hogander@intel.com>
 <3dddd19c98061e1e8173c65d1a8dcc8f5b380b80.camel@intel.com>
 <af9c90fbd52633203095dc10fb62902b190f32cc.camel@intel.com>
In-Reply-To: <af9c90fbd52633203095dc10fb62902b190f32cc.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR11MB2054:EE_|IA1PR11MB6491:EE_
x-ms-office365-filtering-correlation-id: 22d2dd56-d101-4225-0b55-08da9d606730
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qbKbB6G1e1qILfMOi/T1EPP0rLF/2vpE+YU2B1KjRSRIdw94iblTJVray0cXv9YGrunk7ZXlK9hutFyY+WF6yf8wD7xUc9dmyJcQRzhQsw1tQxKYYTwy/2T7leKZG0ugzHS0qX+/YAc7f0QMFeysR6sJSLvVr+RA/KY7c8S7eN8+rOG0sTYHtiyY8Nbndw5NsCpIcs428VaXJof1MfDmg708V2urM1Oxv4caQ4pXtY0r7OL2EKFOuAxYDb+7MR3gEYshMWk7owiZ3Crmlv7hYRlHVn37cRiSNcrggbhjQrkrQjL5P3w24iyO9fuNWoTueveNHsqM1zT8rxwTVqkwgEccO8YQFl9hPZkTPLPhd2bTQoKQMBqZjCbiLdVrQmO4WY1gZdpdEb1hp7cllvxuOjR/2SRi0I8fRvDUko0e+NMqnqr5kIzm9ZaEBnqENPUGrMHjvkScG8i/IYtA6/VdY7bEOeIDTMiBp1YHMhCyenpCBu35MvtMK9Gcu/iavK+AwyX9Ixcl+dn+EQZIAqM3vkAPctvG5aFV26NkS+iz+zP/8UEnakWXr/ywHHkbZ2t6NT4Zb7Eww3QzDXQIcHUT2i/e07I+1T7fydKERBuBvWn9nA+uVAifxfexitrbXhYWESmGTXmfbgzgGn88rHBo4aKMuYDWzdp2pkpu0XYA5cOCt2uwpv7PgLMpXVclpcaVLsCPvE8lQYjYy22YeZMDd2P0eOJ+IukJWCaMgEZEi75jLhjwF0P0ayhVXI/02cn7K2CQFyuKyoEoLOxVaSoWDiNbuBmFxJ0jF5kPcRXvJEE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB2054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(366004)(376002)(136003)(396003)(451199015)(8676002)(41300700001)(316002)(966005)(83380400001)(76116006)(86362001)(38070700005)(36756003)(91956017)(66556008)(66476007)(66446008)(64756008)(66946007)(2906002)(66574015)(4326008)(82960400001)(6486002)(38100700002)(478600001)(122000001)(26005)(71200400001)(6512007)(6636002)(110136005)(2616005)(107886003)(186003)(8936002)(5660300002)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aTZaUU1IQUhvZ21MbmhHZ1M0dEdtQzduZ2pMY1UyNnFxNHJMNHBlcjFIM1VD?=
 =?utf-8?B?MmxCT21iNm5aempkVDZQTWwvYkQzQ0tpRmFJL3k3QTBOQVFFR21uZWtnNm1y?=
 =?utf-8?B?bEcyOWpZSG83bENEUDNxbThhdVpMSXBDdG5NUmVnZWVMdk1uQ0lnUVZDbmU2?=
 =?utf-8?B?K1pZSDJhdXI0V2l0OHExL055bFZQUkRwRHFwTkpuSFloQkJvdHlibTBSdm9w?=
 =?utf-8?B?eklJT2p3Nkt0MThBV29BRGJJeVZVcGE5dWV5L1FUVFRwWE9TRzUwY0hHQTUw?=
 =?utf-8?B?MzhhR3FjMzZua1h1WmlTaWk3Ri9vVFN2aWZSRWJjaUZMWDdUZjZPZktIYVdi?=
 =?utf-8?B?U3dMYUJXZDRtVjJ1bmlmSERQZTlmS1NHSVlETFNwWVd1K3RVdThBTWNQUEsx?=
 =?utf-8?B?SGVYTjBTQUpvc0Y1V2YyL2J5SVdXU1NHQmZxYks5OUgrY24zVmFXRUFnUlcx?=
 =?utf-8?B?VnFEQjdmVnVDNHduSm1xV0V4NGRzUC9QRzdjQ3QwVkVFb1lkUHYwU0NocE9R?=
 =?utf-8?B?LzRtM1dRK04wUWNSUHFFNWdYMXArWTIrNTQxTjdNYzRBWG4wSWtoL09zMTBY?=
 =?utf-8?B?Y25TWHhNVUdkR3lJOHNYWW0vSXVKRmIzZitOVVdJcjFEOVU0TXVkQ1ZsMUxI?=
 =?utf-8?B?RFlHNXNlRCs5NWFxZndHODMrYW5EV2Q4bU1iVXkrdFZ1RTUyVXhXNDIraStp?=
 =?utf-8?B?OUg0RHpaY1lrZmhDWGoxVjBEckoxNVBCc2FiUjhYUjZMRnVCNFU1VE1XdGlY?=
 =?utf-8?B?elZ5ZU94SVROdUlrZFZlUW9iTGtKeUQzeXlEWHNKOG1DaVR3ZHFNeFhQTDBY?=
 =?utf-8?B?Z29Za0JuZzNXVnpiWTMxaVRkaTZiMS9rRU5XZmtvRjJad2ZCMDVBaVRqcFVU?=
 =?utf-8?B?NUszNTdtZzF0akcxaUs4UnRTU1J5LzhDaUdoR0cyOURpdEpXeThiSmMxY09Q?=
 =?utf-8?B?TU5sMFlyY2g5SjcvVXc0V3pTSWY2ajk0NjRaOE1aZDZZa1Z5SWEwZmVucXF2?=
 =?utf-8?B?N1hzbnlwZUZFc29BQ05VWXBOVUJJazZmNDB1UlVSdDRIb0dTdndwZFE2ZW1M?=
 =?utf-8?B?U0dDVmJzYnRmZzFqWWJtVGxMaWRrb2lpTnFBR3dVMkxEKzZqN0o3ejhOcm5D?=
 =?utf-8?B?SERTUS84NDU4bDdhM0YybkREYTUzaWRMMmJQMnBXUERYVkVYbVRoMlVZQytx?=
 =?utf-8?B?UGNPMDlweXNhQ3A5Y3BSUVJwT1VTaFFDdzhNQlBFV1lPQm1xbjVlNXQyNUZv?=
 =?utf-8?B?bDY4SDU0bXRzZ3FxSFlUeGFyV0c1c0FodlJXc0x4emdFcWhEcjYva3Fsb095?=
 =?utf-8?B?U2pFL20xZExZR2o1b0ZBamk3U2gzeTB3bDZHUFBrQkxOTmRYeVRvWUMrWTFm?=
 =?utf-8?B?ckVxcEcrS0tpOWVJb25tZG0xRy9BYVJ0TUtmKzYrWnI1RHpHWU5MbFUvN2VJ?=
 =?utf-8?B?alhZK1dQZ1N6QS9zYjQ1TW9KNW53R3pDL2REUXJRaTJKMzNXaUM2Qko4RUdh?=
 =?utf-8?B?K2RhYUgrVENERC9ycW5wc3JIaXFFNExnVGcxOXVUZUdpWFFNNnJpdGwyMzNW?=
 =?utf-8?B?WXVrdFNRaUhDYjhiY04xV3ZhY3oxSDRYWExmQjdySVUvcmtMeVRYWW43eHRQ?=
 =?utf-8?B?akZ3Uk9zWmJKTmpyY0tFaEJId3JVVThsTlJKUlVTZHQwaXppQmZZeG9panE2?=
 =?utf-8?B?cnVqQ0lxcEVvOE9Pc1NEWXB4blMvRlVXbi96SzhkUUdCZ21IRVhPTHpDai9p?=
 =?utf-8?B?ODFSNlFOYnBSNXRDUisxZjkvYlZvcUV6cHBEZGsvT3NXM2tsZ1VLMlR1VFlz?=
 =?utf-8?B?ZHJuZXpJeWcraEV1NTRSbTVYa0FJNHJIRkhqaElrMVBJanRCYURUazkvc1I5?=
 =?utf-8?B?c3pndXNZdjNoMzBSMnNWbmVQb2Q0NytkQkt4MkhJRXVCOUhRemcyV0FiMC9F?=
 =?utf-8?B?R0VSWkNZUWU4eXpkZEFXS01DUFBFbTdvUGhSV2RXeDBGSlpsTVUxZzNHSms1?=
 =?utf-8?B?WjRZSUdsdkdGWXNkNUpRK2lJV3RBQTRIaktsTzlaanUzRzQxdWpvTlIzS2Mv?=
 =?utf-8?B?VjVlUDVQOFcyNXdtR2t6UG9MY2p5WDFkVEZIeVl3RTB6REFEd2MwWTJ4Nkti?=
 =?utf-8?B?KzVQSTVpMFpmZ084ZEZIOTBsc1VDV1RudU5OWTFUSkpEUno1WEVTd1RsYzgv?=
 =?utf-8?B?MXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7E12B44380AFAC4C9B614D4269EF6FC4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB2054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22d2dd56-d101-4225-0b55-08da9d606730
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2022 12:37:39.9813 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ck7scM1oJsaZxJbZJcLAkA4kuAAJJSFw/HW6YCBB/0hVnyqKD1SwIBEhwCin9QEMKwaCqBKK2XDSHjbZtfo5jg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6491
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/psr: Fix PSR_IMR/IIR field
 handling
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

T24gRnJpLCAyMDIyLTA5LTIzIGF0IDA2OjExICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIFRodSwgMjAyMi0wOS0yMiBhdCAxMzowOCArMDAwMCwgU291emEsIEpvc2Ugd3JvdGU6
DQo+ID4gT24gVGh1LCAyMDIyLTA5LTIyIGF0IDEwOjU5ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIg
d3JvdGU6DQo+ID4gPiBDdXJyZW50IFBTUiBjb2RlIGlzIHN1cHBvc2VkIHRvIHVzZSBUUkFOU0NP
REVSX0VEUCB0byBmb3JjZSAwIHNoaWZ0DQo+ID4gPiBmb3INCj4gPiA+IGJpdHMgaW4gUFNSX0lN
Ui9JSVIgcmVnaXN0ZXJzOg0KPiA+ID4gDQo+ID4gPiAvKg0KPiA+ID4gwqAqIGdlbjEyKyBoYXMg
cmVnaXN0ZXJzIHJlbGF0aXZlIHRvIHRyYW5zY29kZXIgYW5kIG9uZSBwZXINCj4gPiA+IHRyYW5z
Y29kZXINCj4gPiA+IMKgKiB1c2luZyB0aGUgc2FtZSBiaXQgZGVmaW5pdGlvbjogaGFuZGxlIGl0
IGFzIFRSQU5TQ09ERVJfRURQIHRvDQo+ID4gPiBmb3JjZQ0KPiA+ID4gwqAqIDAgc2hpZnQgaW4g
Yml0IGRlZmluaXRpb24NCj4gPiA+IMKgKi8NCj4gPiA+IA0KPiA+ID4gQXQgdGhlIHRpbWUgb2Yg
d3JpdGluZyB0aGUgY29kZSBhc3N1bXB0aW9uICJUUkFOU0NPREVSX0VEUCA9PSAwIg0KPiA+ID4g
d2FzIG1hZGUuDQo+ID4gPiBUaGlzIGlzIG5vdCB0aGUgY2FzZSBhbmQgYWxsIGZpZWxkcyBpbiBQ
U1JfSU1SIGFuZCBQU1JfSUlSIGFyZQ0KPiA+ID4gc2hpZnRlZA0KPiA+ID4gaW5jb3JyZWN0bHkg
aWYgRElTUExBWV9WRVIgPj0gMTIuDQo+ID4gDQo+ID4gRnJvbSB3aGVyZSBhcmUgeW91IGdldHRp
bmcgdGhhdCBUUkFOU0NPREVSX0VEUCA9PSAwPw0KPiANCj4gSXQncyBub3QuIFRoYXQgaXMgbXkg
cG9pbnQuIElmIHlvdSBsb29rIGF0IHRoaXMgY29tbWl0Og0KPiANCj4gaHR0cHM6Ly9naXRodWIu
Y29tL2ZyZWVkZXNrdG9wL2RybS10aXAvY29tbWl0LzgyNDFjZmJlNjdmNDA4MmVlZTVmYzcyZTVh
ODAyNWM1YjU4YzJkZGYNCj4gDQo+IGFkZGluZyB0aGlzIGNvbW1lbnQ6DQo+IA0KPiArICAgICAg
IC8qDQo+ICsgICAgICAgICogZ2VuMTIrIGhhcyByZWdpc3RlcnMgcmVsYXRpdmUgdG8gdHJhbnNj
b2RlciBhbmQgb25lIHBlcg0KPiB0cmFuc2NvZGVyDQo+ICsgICAgICAgICogdXNpbmcgdGhlIHNh
bWUgYml0IGRlZmluaXRpb246IGhhbmRsZSBpdCBhcyBUUkFOU0NPREVSX0VEUA0KPiB0byBmb3Jj
ZQ0KPiArICAgICAgICAqIDAgc2hpZnQgaW4gYml0IGRlZmluaXRpb24NCj4gKyAgICAgICAgKi8N
Cj4gDQo+IGFuZCB0aGUgY29kZSBhZGRlZCBieSB0aGlzIGNvbW1pdCBpcyBkb2luZw0KPiANCj4g
Li4uDQo+ICsgICAgICAgICAgICAgICB0cmFuc19zaGlmdCA9IDA7DQo+IG1hc2sgPSBFRFBfUFNS
X0VSUk9SKHRyYW5zX3NoaWZ0KTsNCj4gLi4uDQo+IA0KPiArICAgICAgIG1hc2sgPSBFRFBfUFNS
X0VSUk9SKHRyYW5zX3NoaWZ0KTsNCj4gLi4uDQo+IA0KPiBhbmQgaWYgd2UgbG9vayBhdCBFRFBf
UFNSX0VSUk9SIGRlZmluaXRpb246DQo+IA0KPiAuLi4NCj4gI2RlZmluZSAgIF9FRFBfUFNSX1RS
QU5TX1NISUZUKHRyYW5zKQkJKCh0cmFucykgPT0NCj4gVFJBTlNDT0RFUl9FRFAgPyBcDQo+IAkJ
CQkJCSAwIDogKCh0cmFucykgLQ0KPiBUUkFOU0NPREVSX0EgKyAxKSAqIDgpDQo+IC4uLg0KPiAj
ZGVmaW5lICAgRURQX1BTUl9FUlJPUih0cmFucykJCQkoMHg0IDw8DQo+IF9FRFBfUFNSX1RSQU5T
X1NISUZUKHRyYW5zKSkNCj4gLi4uDQo+IA0KPiBFRFBfUFNSX0VSUk9SKDApIGlzIDB4NDAwIHdo
aWNoIGlzIHdyb25nIGZvciBlLmcuIFRHTC4gVXNpbmcNCj4gVFJBTlNDT0RFUl9FRFAgYXMgbWVu
dGlvbmVkIGluIHRoZSBhZGRlZCBjb21tZW50Og0KPiBFRFBfUFNSX0VSUk9SKFRSQU5TQ09ERVJf
RURQKSBpcyAweDQgd2hpY2ggaXMgY29ycmVjdC4NCj4gDQo+IE15IHBhdGNoIGlzIGRvaW5nIHdo
YXQgaXMgaW4gdGhlIGNvbW1lbnQuIFRoZXJlIGFyZSBvdGhlciB3YXkgdG8gZml4DQo+IHRoaXMs
IGJ1dCB0byBteSBvcGluaW9uIG9yaWdpbmFsIGlkZWEgdXNpbmcgVFJBTlNDT0RFUl9FRFAgaW4g
Y29tbWl0IA0KPiA4MjQxY2ZiZTY3ZjQwODJlZWU1ZmM3MmU1YTgwMjVjNWI1OGMyZGRmIHRvIGZv
cmNlIDAgc2hpZnQga2VlcHMgdGhlDQo+IGNvZGUgcHJldHR5IGNsZWFuLg0KPiANCj4gPiANCj4g
PiBlbnVtIHBpcGUgew0KPiA+IMKgwqDCoMKgwqDCoMKgwqBJTlZBTElEX1BJUEUgPSAtMSwNCj4g
PiANCj4gPiDCoMKgwqDCoMKgwqDCoMKgUElQRV9BID0gMCwNCj4gPiDCoMKgwqDCoMKgwqDCoMKg
UElQRV9CLA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBQSVBFX0MsDQo+ID4gwqDCoMKgwqDCoMKgwqDC
oFBJUEVfRCwNCj4gPiDCoMKgwqDCoMKgwqDCoMKgX1BJUEVfRURQLA0KPiA+IA0KPiA+IMKgwqDC
oMKgwqDCoMKgwqBJOTE1X01BWF9QSVBFUyA9IF9QSVBFX0VEUA0KPiA+IH07DQo+ID4gDQo+ID4g
I2RlZmluZSBwaXBlX25hbWUocCkgKChwKSArICdBJykNCj4gPiANCj4gPiBlbnVtIHRyYW5zY29k
ZXIgew0KPiA+IMKgwqDCoMKgwqDCoMKgwqBJTlZBTElEX1RSQU5TQ09ERVIgPSAtMSwNCj4gPiDC
oMKgwqDCoMKgwqDCoMKgLyoNCj4gPiDCoMKgwqDCoMKgwqDCoMKgICogVGhlIGZvbGxvd2luZyB0
cmFuc2NvZGVycyBoYXZlIGEgMToxIHRyYW5zY29kZXIgLT4gcGlwZQ0KPiA+IG1hcHBpbmcsDQo+
ID4gwqDCoMKgwqDCoMKgwqDCoCAqIGtlZXAgdGhlaXIgdmFsdWVzIGZpeGVkOiB0aGUgY29kZSBh
c3N1bWVzIHRoYXQNCj4gPiBUUkFOU0NPREVSX0E9MCwgdGhlDQo+ID4gwqDCoMKgwqDCoMKgwqDC
oCAqIHJlc3QgaGF2ZSBjb25zZWN1dGl2ZSB2YWx1ZXMgYW5kIG1hdGNoIHRoZSBlbnVtIHZhbHVl
cyBvZg0KPiA+IHRoZSBwaXBlcw0KPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiB0aGV5IG1hcCB0by5F
RFBfUFNSX1RSQU5TXw0KPiA+IMKgwqDCoMKgwqDCoMKgwqAgKi8NCj4gPiDCoMKgwqDCoMKgwqDC
oMKgVFJBTlNDT0RFUl9BID0gUElQRV9BLA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBUUkFOU0NPREVS
X0IgPSBQSVBFX0IsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoFRSQU5TQ09ERVJfQyA9IFBJUEVfQywN
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgVFJBTlNDT0RFUl9EID0gUElQRV9ELA0KPiA+IA0KPiA+IMKg
wqDCoMKgwqDCoMKgwqAvKg0KPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiBUaGUgZm9sbG93aW5nIHRy
YW5zY29kZXJzIGNhbiBtYXAgdG8gYW55IHBpcGUsIHRoZWlyIGVudW0NCj4gPiB2YWx1ZQ0KPiA+
IMKgwqDCoMKgwqDCoMKgwqAgKiBkb2Vzbid0IG5lZWQgdG8gc3RheSBmaXhlZC4NCj4gPiDCoMKg
wqDCoMKgwqDCoMKgICovDQo+ID4gwqDCoMKgwqDCoMKgwqDCoFRSQU5TQ09ERVJfRURQLA0KPiA+
IA0KPiA+IGh0dHBzOi8vY2dpdC5mcmVlZGVza3RvcC5vcmcvZHJtLXRpcC90cmVlL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oI244Nw0KPiA+IA0KPiA+ID4gDQo+
ID4gPiBGaXggdGhpcyBieSB1c2luZyBUUkFOU0NPREVSX0VEUCBkZWZpbml0aW9uIGluc3RlYWQg
b2YgMC4gRXZlbg0KPiA+ID4gdGhvdWdodA0KPiA+ID4gVFJBTlNDT0RFUl9FRFAgZG9lc24ndCBl
eGlzdCBpbiBkaXNwbGF5X3ZlciA+PSAxMiBkb2luZyBpdCB0aGlzIHdheQ0KPiA+ID4ga2VlcHMN
Cj4gPiA+IGNvZGUgY2xlYW4gYW5kIHJlYWRhYmxlLg0KPiA+IA0KPiA+IHRyYW5zX3NoaWZ0ID0g
MCBpcyBmaW5lLCB3ZSBuZWVkZWQgdGhpcyBiZWNhdXNlIGRpc3BsYXkxMisgc3BsaXRlZA0KPiA+
IGZyb20gYSBzaW5nbGUgcmVnaXN0ZXIgd2l0aCBhbGwgdHJhbnNjb2RlciB0byBvbmUgcmVnaXN0
ZXIgcGVyDQo+ID4gdHJhbnNjb2Rlci4NCj4gPiANCj4gDQo+IE5vLCBpdCdzIG5vdC4gU2VlIHRo
ZSBkZWZpbml0aW9uIG9mICBfRURQX1BTUl9UUkFOU19TSElGVCBhbmQNCj4gRURQX1BTUl9UUkFO
U18qLiBNYXliZSByZW5hbWluZyB0cmFuc19zaGlmdCB0byB0cmFuc2NvZGVyIHdvdWxkIHByZXZl
bnQNCj4gbWlzdW5kZXJzdGFuZGluZyBoZXJlLg0KDQpPa2F5IG5vdyBJIHVuZGVyc3Rvb2QuDQpJ
biBteSBvcGluaW9uIHRoZSBwcm9wZXIgZml4IHdvdWxkIGJlIGFkZCBUR0xfWCBtYWNyb3MgdG8g
YmUgdXNlZCBpbiBkaXBsYXkxMisgcGF0aHMgYW5kIGRyb3AgdGhlIEVEUCB0cmFuc2NvZGVyIGNv
bmNlcHQgdGhhdCBkbyBub3QgZXhpc3QgaW4gVEdMKy4NCg0KQWxzbyBwbGVhc2UgaW5jbHVkZSBh
IGZpeGVzIHRhZyBwb2ludGluZyB0byA4MjQxY2ZiZTY3ZjQwODJlZWU1ZmM3MmU1YTgwMjVjNWI1
OGMyZGRmIHNvIHRoaXMgZ2V0cyBiYWNrcG9ydGVkLg0KDQo+IA0KPiA+ID4gDQo+ID4gPiB2Mjog
SW1wcm92ZSBjb21taXQgbWVzc2FnZSAoSm9zw6kpDQo+ID4gPiANCj4gPiA+IENjOiBNaWthIEth
aG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+ID4gQ2M6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+ID4gDQo+ID4gPiBTaWduZWQtb2ZmLWJ5
OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0K
PiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNiArKyst
LS0NCj4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiA+ID4gaW5kZXggOWRlZjhkOWZhZGU2Li45ZWNmMWE5YTExMjAgMTAwNjQ0DQo+
ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiBA
QCAtMTI5LDcgKzEyOSw3IEBAIHN0YXRpYyB2b2lkIHBzcl9pcnFfY29udHJvbChzdHJ1Y3QgaW50
ZWxfZHANCj4gPiA+ICppbnRlbF9kcCkNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiAwIHNoaWZ0
IGluIGJpdCBkZWZpbml0aW9uDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgICovDQo+ID4gPiDCoMKg
wqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMikgew0KPiA+ID4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHRyYW5zX3NoaWZ0ID0gMDsNCj4gPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB0cmFuc19zaGlmdCA9IFRSQU5TQ09ERVJfRURQOw0K
PiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbXJfcmVnID0gVFJBTlNfUFNS
X0lNUihpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXIpOw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoH0g
ZWxzZSB7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHRyYW5zX3NoaWZ0
ID0gaW50ZWxfZHAtPnBzci50cmFuc2NvZGVyOw0KPiA+ID4gQEAgLTE5NSw3ICsxOTUsNyBAQCB2
b2lkIGludGVsX3Bzcl9pcnFfaGFuZGxlcihzdHJ1Y3QgaW50ZWxfZHANCj4gPiA+ICppbnRlbF9k
cCwgdTMyIHBzcl9paXIpDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgaTkxNV9yZWdfdCBpbXJfcmVn
Ow0KPiA+ID4gwqANCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoZGV2X3By
aXYpID49IDEyKSB7DQo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdHJhbnNf
c2hpZnQgPSAwOw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHRyYW5zX3No
aWZ0ID0gVFJBTlNDT0RFUl9FRFA7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGltcl9yZWcgPSBUUkFOU19QU1JfSU1SKGludGVsX2RwLT5wc3IudHJhbnNjb2Rlcik7DQo+
ID4gPiDCoMKgwqDCoMKgwqDCoMKgfSBlbHNlIHsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgdHJhbnNfc2hpZnQgPSBpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXI7DQo+ID4g
PiBAQCAtMTE5Nyw3ICsxMTk3LDcgQEAgc3RhdGljIGJvb2wgcHNyX2ludGVycnVwdF9lcnJvcl9j
aGVjayhzdHJ1Y3QNCj4gPiA+IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiA+IMKgwqDCoMKgwqDC
oMKgwqBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEyKSB7DQo+ID4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsDQo+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIFRSQU5TX1BTUl9JSVIoaW50ZWxfZHAtDQo+ID4gPiA+IHBzci50cmFu
c2NvZGVyKSk7DQo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdmFsICY9IEVE
UF9QU1JfRVJST1IoMCk7DQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdmFs
ICY9IEVEUF9QU1JfRVJST1IoVFJBTlNDT0RFUl9FRFApOw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDC
oH0gZWxzZSB7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZhbCA9IGlu
dGVsX2RlX3JlYWQoZGV2X3ByaXYsIEVEUF9QU1JfSUlSKTsNCj4gPiA+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgdmFsICY9IEVEUF9QU1JfRVJST1IoaW50ZWxfZHAtPnBzci50cmFu
c2NvZGVyKTsNCj4gPiANCj4gDQoNCg==
