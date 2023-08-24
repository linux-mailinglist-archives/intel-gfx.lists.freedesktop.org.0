Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DA9786C90
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 12:08:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3442410E513;
	Thu, 24 Aug 2023 10:08:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A9BF10E51F
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 10:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692871729; x=1724407729;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=ahZyPvca2yXPKEmcVAwHsL5VzrjIAKZzl2ELVAquNQ4=;
 b=SNKV3V8WJ/T56d2Bf/PMmpp9aIf/mDetwV00litf+nmiq81PqZJIExyi
 b6jU1T7SIYmVP7EoKww0bQ5gPQamRByvoPmtKhJ3pPTTg8rJ/FvQi5z/p
 pYDlbJ3f2jlbgTvgLSpZ4mfxiK3dvWU+eRZ/TO5Eb1bhsbLyRCjvBANzf
 be8N17wF1+iFLIj5jTj9A2hnrYHu4x59rnVsG+ODEEiJjy5ZmNOTQIVr5
 oh2XxT4u3q54XII1WY8nV3aTUp3bv6+6PII9o6CnnBs78kQlnLMHWHRyY
 E+rforcm6j3Zt0/Dbn+nT48TgtWjD9uEkLR1UofQYGXNQmVcY0RJ3EH+C Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="378153084"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="378153084"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 03:08:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="851440514"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="851440514"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 24 Aug 2023 03:06:39 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 03:06:39 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 03:06:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 03:06:38 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 03:06:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NGRh6OXAyAvmBNyTtVN3aIHp/0NRxOb90rEQi3IiUX2pawp6XNiZddUMTwh8N4G/ghZLUShkUeKXb0mq80TKtfUFDLy1bXej9pYzVemTw0gmPZ0Vj6j3+tm7/uTCkfpROWZlvtQT1HBGIdEBr3P4FGr3fvCHYHf2U/54IBigTm1Xl61Wq0Dz2iKtdAUWF7p7hwh/8BOs0pL4dwOFCD6tJNwH0JKwPCljqsNkyiQDSklkEShaFhDBuCxImFaYgXDf3IYyBj6PndntCIk3iRLX716hPWF1MV5Loeo/L1BAm5/mpbcG45Nhu2hSSVVZ0zSpE6ujzxOThGMmqRcez5WMLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ahZyPvca2yXPKEmcVAwHsL5VzrjIAKZzl2ELVAquNQ4=;
 b=nx5wt4rJ+pZb0j9a7IaJow8vOprQm0d2O33j3LDxmfHBRNzwKsZFRYjATHVMUqzaLSCmppaLCm9hXW2Id22PIgekcwgwsDH1M8/vBkb199IocjSyZzBt6ocCZc8BblySiKC94euLCJOL6ZUCevaQXkGLqX/v/N26962ZFeaquIywgTqRT/yewdZj3W9Q9K7dQkbb6nzIbMLim07ci+F/Bzki83vQc+K/BvVuOCVX6zKfXXOJ2u+KQVyn2jBTw0cHrTisUoWZ8P1+hNJDIHOxbXqAqRcyekEH3xzXsxHTw45oELVXawMlSJ1CAKLuWZml85Iytr1GLoDGU5JunftC9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BL3PR11MB6412.namprd11.prod.outlook.com (2603:10b6:208:3bb::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.27; Thu, 24 Aug 2023 10:06:36 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e%5]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 10:06:35 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "juhapekka.heikkila@gmail.com" <juhapekka.heikkila@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: add lock while printing
 frontbuffer tracking bits to debugfs
Thread-Index: AQHZzs1lmMRZap7EN0mpfFCefCuot6/0VRAAgATypwA=
Date: Thu, 24 Aug 2023 10:06:35 +0000
Message-ID: <51ed8c67c12b959fc2034c5513bab580b15a9890.camel@intel.com>
References: <20230814163452.2925-1-juhapekka.heikkila@gmail.com>
 <81e0415bc19ec59f0ff1f9575681a892821c56f8.camel@intel.com>
In-Reply-To: <81e0415bc19ec59f0ff1f9575681a892821c56f8.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BL3PR11MB6412:EE_
x-ms-office365-filtering-correlation-id: b372c110-c063-4dba-fe9e-08dba489ccb7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aXQDb8g2ml9HfrBxLPvurhdW7IAMugeYRtv4idlWLpEzEJ52x66Emvf/ydbU0gcpVrp/5yT992og/hIHuSiYchdfuIeKAQa0nuzm+J1eeYxXbANmDYEaUHUovpix82N341vkydSWAoETploVSvrK9RL6Naa9Qq6I/RVa++EuTPFwb+HTz1XfCKrYG9nzy1bSSaut+8KIoGFIpm5qDuhLrwmWWH3dOiCFBeZ2DtZNwt1AqYFqbeMLXKHfWoxe+mgUWsgymLjzExWhkBdf86PN+WmsBJYTpW56Fr/Z6QKunfZ4t7KC/3BsBchULMgTumdePBazxpnSl6W+k9lER+ogg0ZlQyTeR7lZAEktIQq7nTVi3+ubm+lUnuc6mOvMDaBus3uSw43yTXDtv0GnGOLxHzwgwrc6CUmNRl7A6S+aJcSbPoGa4EKzb+Irf9yrfOKC7Njwgb1b999yzDf/vHkXSavduwCt4AXekYVzaA2Yn2cJbd/2bVmTBfwSYIUvnJottr3p1OvQfSnAkZCpqP+V3IqZS+fdiRg4grZ5T6GHdJvGEZ/4qzMQF4HxkCWraBjpEFuMlsP2G7kbZxHXXzs3nPFyRxSxUP4ek47ib5XdtnU13ufvDuYy6YV6mEXiMNmV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(366004)(39860400002)(376002)(346002)(451199024)(186009)(1800799009)(64756008)(66446008)(66946007)(76116006)(66476007)(66556008)(316002)(82960400001)(122000001)(478600001)(110136005)(91956017)(26005)(38070700005)(38100700002)(71200400001)(41300700001)(86362001)(6486002)(6512007)(2906002)(6506007)(8676002)(8936002)(2616005)(5660300002)(83380400001)(66574015)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TTZwV3ZycUZFKzBBQXcwZVFrK1F4WU82QTB1KzluZTgvdE1KazFvTGdrZUlO?=
 =?utf-8?B?dEdhYldPbW1yZTl6eUtjZ1p0NXFXOFFkUWg1V3pkendMb2lmMnJ0S0lMMkZn?=
 =?utf-8?B?dGZNMGY1Z0lrdDNhR1FQdXNuWTFya0RLVTg0QnRpYk1MUzFWd3EyK3lNanZQ?=
 =?utf-8?B?STkrL21wMUg5Tm9hUnhrdnRwWFJoWUJURGpWQnZGYWdURnY4ZWxoY0dwQkpn?=
 =?utf-8?B?aERmTkF4MjdicXlhbkpCcncxOWlKMjZNNXc1WjNGbitueG9WYUxibWlTK0tI?=
 =?utf-8?B?eUJTck92RmhaSUgyNUdJcE9HTDJ3c0l1NzVCVWpRNU9DYnBVQWJKMkgwcDdG?=
 =?utf-8?B?NWZZVVQ0eXB4V0R6azJGdzdCTzdzRkJLSm5BTGYxQ0xTRGN5aW1UN2hWLzdX?=
 =?utf-8?B?ZmNZMHM4RVhKRjJoNyszY3VTNXV5ZTVhTXQrUllTdTJUc0dnc282TTR0bDVC?=
 =?utf-8?B?WlpJYXAwZFpUUDdNWkZFZWRyQlZ3YmlTSEhqcE9TQkJRNG95UG8yTVV4cHRa?=
 =?utf-8?B?V0NGbjhyckZrRElRZlh0Ty9GOTZwTXNPdWNkUFg2MjhGTS9DTmtuRVZMdTJR?=
 =?utf-8?B?RXJEdWt4dnZrVEJDVklzWTFZTHArajc4VUdRV3k4MVV0NVRNeFNUcVhGN0R3?=
 =?utf-8?B?cktlTXZDcTFONFVXYnpJOUVwa0kvejNBbHpITXRDRzVUWU5Hb2F2MlVOV1Vx?=
 =?utf-8?B?STVQd1VJbkdBY0lhNFRaVlV4Y0l2RzI3NHluOEJQU3dGOUQxbmp6T1h4RzBk?=
 =?utf-8?B?V2dUT2wrc0pXbGg5bTMra0pCckRMWFI4ZU0xVDJpaXhxMHBFUGhsQzJ3bEcz?=
 =?utf-8?B?NWVkdjlBUVFuL2hXT3doa3dEMnZWUWxmNGNFcnhSNktFUVFjZmZjQ0xlY0cy?=
 =?utf-8?B?dy9WQW1YaCtlMEhMckV0V1NMR1VCWkc2Q040RWt1aWg1WVF0ZTlvdTRUZ2Fy?=
 =?utf-8?B?c29lQWl4QWR5bHpQVWgrcFRCV1pZWlFZSHZZWXVMR2VncEFMNDdRbUVTeDN2?=
 =?utf-8?B?RmVQbkxZTnFLR2k3bG45MEt0OVNDMkJ6QTBiTytNbkdCVCszM210WnNXWDlJ?=
 =?utf-8?B?K1FDZjJ3VXFBb0JKZm85dUF0SU9NRXM3ZmVHTm4rVmgxMjhlOG9GTGR0czQ2?=
 =?utf-8?B?VDFCWWtwYVpkbE1FNTNmbGRpTGtXb3RlTW1rdXl3R0taZFdHSEFPNFk5Nytu?=
 =?utf-8?B?K2xKU1A4SjN2bjZzY3R4Q0pzbkptM0gwazRqOGN5cmdVMi9CcXRVYlJpTDdu?=
 =?utf-8?B?NENuL2JhNXFrSFdmNmJsN1A3VnUzb3NBOFUrbGI0aDJNQnZTb2xuSzdMU1ND?=
 =?utf-8?B?YURLSHVzbEZvb01ZeDVWcDY2bm5ZT1RTaWtVbldJaGVvZlErZTJiSXF1QVpx?=
 =?utf-8?B?dW9IWG10V3FCYXZCbTlTZ3RoN3ZmSE1CSFJaT2o1ZEZTS2RXYXZJL2xCV1J1?=
 =?utf-8?B?Nm93UmRYYUxzYzh5YjlXVFJ5dUpWMGsyQUlVNGdLQy9mK0FlajNDdGdpdS9P?=
 =?utf-8?B?aEh4bnJPMVp0TytOR3R1Y3hOVTkzZXY5ZkNSVVF4RXpsbm5pbXdjek5OeFVD?=
 =?utf-8?B?U3BCY3pNNW1RWlZmdjY2KzY5K2FXeTN3V2JyL0ZjUjVJUDZJUXN0WGRtdzdK?=
 =?utf-8?B?VVFzeTFqNWx1Nkpweng1OHZzNzE0MWpMQnRYcDhEYzN0dWE2TytpcElnVFdu?=
 =?utf-8?B?UVJKYkRZWnlSb0VyNlJ4aXV1V0xNWEppdzhrQnQrUXJCLzNpcUYxMUdTNkFh?=
 =?utf-8?B?T1hGa3F3NE5BNDM4QXp3QWxjS2dDamNtaTNoeWZSMENtUE42aFR4VjZqUWtv?=
 =?utf-8?B?ZmxlaEJNcm1kdmFVcVJ5dFRYNEJhaGJnZFV2SGxKWnVkMVorVERlWGJmdFNp?=
 =?utf-8?B?VnE3d29oQ21IMjJWaEpBSjMrSUV3VVdoVWZjcUdVNzRoR29RcWxOcnJSbFp3?=
 =?utf-8?B?S3lDU3ozei9TcXZYWWdYTVVhZXF4OUpadkFuOUV6cUw2SksxTGlPK3RxeE9s?=
 =?utf-8?B?ZnRrRys4Rlo2YURzeTNCb3FnalFEbFhBYlFkSldkOVREamxBQTNhQ3lHTHZn?=
 =?utf-8?B?NGw5WXNNakFWZFJWREpBSDV1bE1ESHRMTHlDTWFURVhPcDQzNzNneXdSRURD?=
 =?utf-8?B?TlF6elNaWVVhVERGQ2w3MGhlQ0QwMEtJRGRJZE0wUGFsNk5MYWV2SzkxNmRk?=
 =?utf-8?B?blE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EA54014B5545C948869197F314368E50@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b372c110-c063-4dba-fe9e-08dba489ccb7
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 10:06:35.4782 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b+xz3M1jBdjgR6WPGob3aLJ6nsJIneCUlwT/BYZQ7EZ0XCIq0QLJNwBugKDLj4jmReq2ILO1hTbG8OhgbOPWAJS8ap9Rl7uJdHuFvCES6+Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6412
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: add lock while printing
 frontbuffer tracking bits to debugfs
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

T24gTW9uLCAyMDIzLTA4LTIxIGF0IDA2OjMzICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIE1vbiwgMjAyMy0wOC0xNCBhdCAxOTozNCArMDMwMCwgSnVoYS1QZWtrYSBIZWlra2ls
YSB3cm90ZToNCj4gPiBBZGQgbWlzc2luZyBzcGluX2xvY2svdW5sb2NrDQo+ID4gDQo+ID4gU2ln
bmVkLW9mZi1ieTogSnVoYS1QZWtrYSBIZWlra2lsYSA8anVoYXBla2thLmhlaWtraWxhQGdtYWls
LmNvbT4NCj4gDQo+IFJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVy
QGludGVsLmNvbT4NCg0KVGhhbmsgeW91IGZvciB0aGUgcGF0Y2guIFRoaXMgaXMgbm93IG1lcmdl
ZC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYyB8IDQgKysrKw0K
PiA+IMKgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5j
DQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdm
cy5jDQo+ID4gaW5kZXggNjNjMWZiOWU0NzlmLi5mMDViNTIzODFhODMgMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYw0K
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1
Z2ZzLmMNCj4gPiBAQCAtNDMsMTIgKzQzLDE2IEBAIHN0YXRpYyBpbnQgaTkxNV9mcm9udGJ1ZmZl
cl90cmFja2luZyhzdHJ1Y3QNCj4gPiBzZXFfZmlsZSAqbSwgdm9pZCAqdW51c2VkKQ0KPiA+IMKg
ew0KPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSBub2RlX3RvX2k5MTUobS0NCj4gPiA+cHJpdmF0ZSk7DQo+ID4gwqANCj4gPiArwqDCoMKgwqDC
oMKgwqBzcGluX2xvY2soJmRldl9wcml2LT5kaXNwbGF5LmZiX3RyYWNraW5nLmxvY2spOw0KPiA+
ICsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgc2VxX3ByaW50ZihtLCAiRkIgdHJhY2tpbmcgYnVzeSBi
aXRzOiAweCUwOHhcbiIsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGRldl9wcml2LT5kaXNwbGF5LmZiX3RyYWNraW5nLmJ1c3lfYml0cyk7DQo+ID4gwqANCj4gPiDC
oMKgwqDCoMKgwqDCoMKgc2VxX3ByaW50ZihtLCAiRkIgdHJhY2tpbmcgZmxpcCBiaXRzOiAweCUw
OHhcbiIsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRldl9wcml2
LT5kaXNwbGF5LmZiX3RyYWNraW5nLmZsaXBfYml0cyk7DQo+ID4gwqANCj4gPiArwqDCoMKgwqDC
oMKgwqBzcGluX3VubG9jaygmZGV2X3ByaXYtPmRpc3BsYXkuZmJfdHJhY2tpbmcubG9jayk7DQo+
ID4gKw0KPiA+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsNCj4gPiDCoH0NCj4gPiDCoA0KPiAN
Cg0K
