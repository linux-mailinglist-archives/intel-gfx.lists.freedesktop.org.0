Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2EDB6FEB11
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 07:17:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63AB710E599;
	Thu, 11 May 2023 05:17:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3802010E599
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 05:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683782232; x=1715318232;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=QkmNdiI3U9HPuiKVMi1O7CnVunraLeB209+lRHoygck=;
 b=QPB6KYxOFEUE2xePemfMMUKoJFVY9DhLGgg/z4kIVC9uVCE47eRWJsdw
 u9LzNG5v62OvqnOIBBKt3/a1vqF6aw2BPZ9WRfG3bVNtMl+p1/RGmI+j/
 2xE+65KEwODFYNonQiEjZIcYdRnt/40feGjN0sChR++vSaKG1Rq8d7e12
 DCkITLc8DnsENpCvDuPshkUjF7NuluRfSz3JEye1jCLbmrWcVhRRmpoPT
 6qzuW/f+8H4KiavCm7hoQcb86WTbqsuYlXCUZYORxaCsmSguOpWbVaRGA
 t3x6XOA7v8LX6Vxh5sn1X/0WDjR5WNr7CyyW473Wj4RJOigsZ1KpzVPfZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="349237892"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="349237892"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 22:17:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="677123038"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="677123038"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 10 May 2023 22:17:11 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 10 May 2023 22:17:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 10 May 2023 22:17:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 10 May 2023 22:17:10 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 10 May 2023 22:17:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aU2kUvpHVkbfcAPEQJohQ/Hv6ydZduygbgNL0s/NDD/ogufUGEQmeatQI5OF3haCgG2F9MtF8OTQgLq3YyErIr5preYZPxWlevfhOrfvH/BzudIIXBrv+WQFRkADDALdlJF1SEeJ0VYjDn77YsdP+OrCgoNUaBMFXe7QYOwGFgX3ZHsdog8VvYBOJ5m0a3CAI516Y1EtAGbZAuJIYXZuKnRB5hartOwQsb9jiA9mmUwdQEtwl93hMjeCPiRS+HJDpFKp37QeaqhT6z1Tqhw7eZMRq4Q5wGmje4hSq1KKk5bBA+DFA5B+qCTOWqv9+p+6q9O54sngOeqQM2qncrJn2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QkmNdiI3U9HPuiKVMi1O7CnVunraLeB209+lRHoygck=;
 b=V+veWsC1gv1YTnqitA28Ea0SdN4oCpl6oF8PPHBxRRz3RfEgSqPC+amRkygMB69HcT33mgRbihalld/DgszZcupxZcFlZTA4tZhCEH5r1OySmPqtw/x+7gWeMYUCio+CTkrASkTptw8BFgJ/9coq1zjR+OXO2GSLMydQ4448nthrG9Ji3IaqifU2CrFWhhuxsDC7fb+eQmQQdEXkzWKYmG8pW0SZfUhvesfGN+9yQvSKnvWDlpm4PeUJOWK/u1ihl63P/LgQFJQq51hSIgA+lxQspiz4pQGkNhAWsvF0lW9dYaqCxF2otHF/2x1sc4pQ6WR607eclM+mslm0hCPDuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB7876.namprd11.prod.outlook.com (2603:10b6:930:7d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6363.33; Thu, 11 May 2023 05:17:03 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97%6]) with mapi id 15.20.6387.019; Thu, 11 May 2023
 05:17:03 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "andi.shyti@linux.intel.com" <andi.shyti@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Fix typo in intel_frontbuffer
Thread-Index: AQHZgxyTyNHfGEpbKEWsqM3ZM6VGpa9TOEeAgAFRIAA=
Date: Thu, 11 May 2023 05:17:03 +0000
Message-ID: <fc80ae518f69a9feed38763efbf41e2aee61764e.camel@intel.com>
References: <20230510085043.599326-1-jouni.hogander@intel.com>
 <ZFtffzlkDWujpMoH@ashyti-mobl2.lan>
In-Reply-To: <ZFtffzlkDWujpMoH@ashyti-mobl2.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB7876:EE_
x-ms-office365-filtering-correlation-id: 8448715a-7436-4bdb-1d66-08db51def498
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4hd89D6zNHP8orid3wME9HBIrDjJQ+WwWVj1rXvDIyq4z3ntCRhsN6ax3cuwPR1vt746rekrp88tzleMgEtLKNNqB7/e9/F6+NP5sHMUxImpY0FnYwp41wyP9o6bGastSwNizpIwnmzTHETU31yTAJymHzqRMlEHyp0TydjmVGAXVucg2s9TlO/H6su7245T2d/AdW06k/f+SAo+C2v+j7hJgydhM4f9kumBOCBFzP2nxYHf0okYnSvPdntNbC4DKyDscWa8h4fLSouvSlegWKBdUnzFELV89rlqvRs9fQEycLnxFP7PYqf/7t1Oxxs6P8Ivn3KZE2wqxrjJqooX0SQVhLHk6v8WoDC/dComTSP2ztXzDMzmnSf6QOXE8SdgRU8STHB7yTztWBgFA6ujMa/dcLYF1we2QtD1X0johwUamVazMsrXHyKArDmDdWzzkq+DleZ0HZm2vvdbmOwgUVu8wfIDM7T2/JhK2XUDWPj7iUMQytRdctcvtvBbtesBlHpywBfFnXSCpe/xZmHttgb44ZwSuQ/BZ1bDSfS2bq1Ua+Q1fWalN+IW6a1jeXKeRjXctDlIclwT+rwXGNamMZ2qNmCaeOsaHU1SiWyAppYmumXELvMnzHrVzCAiyWwF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(346002)(39860400002)(396003)(136003)(451199021)(86362001)(122000001)(316002)(41300700001)(2906002)(36756003)(26005)(186003)(8936002)(8676002)(82960400001)(5660300002)(6512007)(478600001)(6506007)(54906003)(38070700005)(6486002)(66556008)(71200400001)(66446008)(2616005)(91956017)(66476007)(76116006)(64756008)(6916009)(66946007)(83380400001)(66574015)(4326008)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b3hqOEdkQTVVcFBZZElQTjYyRjlLcG4wVUdhbHZDejh4dmlDZGNQejNsL0Ix?=
 =?utf-8?B?S1BTNFNuQjd4YlB1SDBSVm9ZQUxTK0k5QTFZNmU2cDlrVkFkVG5laWdmYnB1?=
 =?utf-8?B?SnlVeE11STI4T3NhMHFTbCtrSGlnRHFQRU9FbmpYOFB2ZUtZa0ZKTXVRZEd2?=
 =?utf-8?B?VjBjY2NDQUl5QWNmUndrODNyeE5hZWFIdWZCaTJPSmNzNTBmNU4wZzNkbFVK?=
 =?utf-8?B?dnpra0lQbU9rcVBNanhzakpaM3pjTm54TTRlTEtXSmRqOEoxYlloYzdZUm56?=
 =?utf-8?B?L1VMZXdINXRMYVRyejFncERFbG9aYW16N3N0TG1hM1o0Y2x6MU5EQnpTVzRF?=
 =?utf-8?B?Z2hpT1JTNE5QQXRDTkVlVERCSXBualdvODdwVUZNMlZBZTRzWnZrTHZwb0VT?=
 =?utf-8?B?MzJqYk1UdEtCRjUxQm5UZXZrK1ZVYjd5V09WTjRmcERQaUhXMzkzMjRVcmV0?=
 =?utf-8?B?aEp6SkZlclhxTDRjK1kvWkc3VjR1YnVCSmk0K25VRzJuTHNTTjFtWldNT0tY?=
 =?utf-8?B?dkc0ZEJtTmFEbWtrZnd6NTJYRktNMXNUclBhSHVWRG9lc1VtSmxIdHM0eFQ1?=
 =?utf-8?B?YS80TkZTMzVDNWpaMVgxYm82Szg1SnArc2Z0T2VWbFBQVHA1ZlpTV3lBdVRn?=
 =?utf-8?B?SWJlOU5ZR1JqV0d2ckNyRUN0SFFFMW9ISW1IRHN5TjhkUGtEZXhRK3hGS0t3?=
 =?utf-8?B?czVuMWtmbEgrQWN4NmpSdGJSMTZ2QU1CUzFXMkxJMG5pNjFienBkWEd4RGRl?=
 =?utf-8?B?MXYvVEd0VTFJRWs0S1NJeWtrSHhFTUJ4cjlxeFNseEUxanp1bjBOOXM4cTRO?=
 =?utf-8?B?ZzcwTWIxdDErWlFDK0t2NnZLVkpBRW1zUWJWbWZNdXJ4WnNES3UwOHE5cHg3?=
 =?utf-8?B?YUpESjJkK1dVOHY4bm9VOCswblQxRE5ndzdDRTgyUi9yd1pzT1dxRlp0MzBY?=
 =?utf-8?B?NXZoenBoOEFmTkE2Q2Y4YzdZOWk2MkRMSVNNQ0s0VkVRU08vSHB2SzZLTjBk?=
 =?utf-8?B?NzRmWjdYYW1LU0pSS285ZTdZOWFzUDBiNmpEektBSDY5V1R1alNBeHVxWWdh?=
 =?utf-8?B?ai9qeXdLeGVyeHdsUHJVd0FRWTZkNkRpZzRwaW1LK1ZraDVJNUJ3WXM4T01r?=
 =?utf-8?B?NVlXdGpnU0dqVWxvRElwTkVzeUI3bEZmRFZhM0lNa3JDbUE0UnBKcnQ3NHN0?=
 =?utf-8?B?ZWYyTjZkU3dSY3NiZzlLb0tsWk1Oa2Y1UkpySklORHlablliZktQT2MvNnEx?=
 =?utf-8?B?NzJmL0Qyb2QrQlV3bTZLZXFTMFo5MmQyY09BY2hObXpVaHNHTGw0Rld4bnJP?=
 =?utf-8?B?amE0WVh1TUQ4RmRTVzZIRGhhaHZPanZoc2s4anZEQjZZMkZSK0RkQlRBYlhu?=
 =?utf-8?B?VXJpQUszWEI3UEtDc1lmUVl4NTBiVjYxbThHNWNmYjQzR3cyejFoaTlyanFB?=
 =?utf-8?B?dVJXeTViMnNEaVo5cXppMFVOYUZBM050MjBHNmxsMFNBVDFKNlVNK3YyQ2Jv?=
 =?utf-8?B?bDJ0WlNJSVlVYVg3ZmEwWGdFK0pKNHR0REtXSURrTTh0LzlSK25VK1BTWUxk?=
 =?utf-8?B?MkJwYkNtUjdqaFV5bVlSSm56MEFGeDlSWWZKN0dJanVZZFY5dWF0b3R4MW9U?=
 =?utf-8?B?M3R1b2ZMdkxlcEhZakd2UlhjbXJxalFlOE81MTJMUDNmdjhlVmhtQVhVYlhp?=
 =?utf-8?B?Z29iRlhzRlROeHNxSEFvbFRtL2o1ZkRDQnhNVzFDZkVwdHhTQ0RjaHhiQ2xn?=
 =?utf-8?B?Y2ZwSzFZTWhmSEE2K2hLZGYwWkkwS2FUb09Ibjd3aWoxbmJIUGlHM2NvSkEv?=
 =?utf-8?B?dy9iVElBOHhXN2I3UTEvTHg3amg4akllNng2cjEyWmhSMDI0d2ZBWnRHY2pC?=
 =?utf-8?B?YXQ1SlRxajloR2hjU0lZdENSR2hMZUsrWXBuSHoxVEFVSll4NDI1QkpsaHRy?=
 =?utf-8?B?RVgwdUpWcUQrWUk2YmxwMVQyaG8vaTRNdVB0aCtlTU9mUlhPWE5UbzE0VVZN?=
 =?utf-8?B?WGNOOXVKamRmZ2ZBQ2kyWHdSd0JTbXZCVkJqcDFHVTVUcUhhaEU1WjV3QW1H?=
 =?utf-8?B?T2pEc1BMU0syY3lueG1zQmFxcWh0M0dSaS9leXdtOFcwYUxqNVYwSVNWK1pC?=
 =?utf-8?B?aUI3S2JxaUZicmN4ejROL3ppVUE5NUZuZjE0NWp3MXQwRDNCMmJwSVNrMWNY?=
 =?utf-8?B?UFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <98989728E743FC408580EBF0C0E45A1E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8448715a-7436-4bdb-1d66-08db51def498
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2023 05:17:03.1254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rKnC80bVdRma3XxoU1EGvLD/LiD3sL+RbcWUuCyGbU2k1/xt/NeChcSJ67gDukP4S4V9JWDsdaHOjd7xLMMk4IGlS95eV7TNuhm62Ozvw+s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7876
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix typo in intel_frontbuffer
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIzLTA1LTEwIGF0IDExOjEwICswMjAwLCBBbmRpIFNoeXRpIHdyb3RlOg0KPiBI
aSBKb3VuaSwNCg0KSGkgQW5kaSwgdGhhbmsgeW91IGZvciBjaGVja2luZyBteSBwYXRjaC4NCg0K
PiANCj4gT24gV2VkLCBNYXkgMTAsIDIwMjMgYXQgMTE6NTA6NDNBTSArMDMwMCwgSm91bmkgSMO2
Z2FuZGVyIHdyb3RlOg0KPiA+IEZpeCBvYnZpb3VzIHR5cG8gaW4gaW50ZWxfZnJvbnRidWZmZXIg
Zm9yd2FyZCBkZWNsYXJhdGlvbi4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7Zn
YW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaCB8IDIgKy0NCj4gPiDCoDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiA+IA0KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVz
LmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMu
aA0KPiA+IGluZGV4IDgzMGMxMTQzMWVlOC4uY2IzNjJiMDliZjIxIDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaA0KPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaA0KPiA+
IEBAIC0xOCw3ICsxOCw3IEBADQo+ID4gwqAjaW5jbHVkZSAiaTkxNV92bWFfcmVzb3VyY2UuaCIN
Cj4gPiDCoA0KPiA+IMKgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Q7DQo+ID4gLXN0cnVjdCBp
bnRlbF9mcm9uYnVmZmVyOw0KPiA+ICtzdHJ1Y3QgaW50ZWxfZnJvbnRidWZmZXI7DQo+IA0KPiBU
aGVuIEkgZ3Vlc3MgdGhpcyBpcyBub3QgbmVjZXNzYXJ5Lg0KDQpSZW1vdmluZyBpdCBpcyBhbHNv
IHBvc3NpYmxlLiBJIHdhcyB0aGlua2luZyBhcyBpOTE1X2dlbV9vYmplY3QNCmNvbnRhaW5zIGlu
dGVsX2Zyb250YnVmZmVyIHBvaW50ZXIga2VlcGluZyBpdCB3b3VsZCBiZSBtb3JlIGNvcnJlY3Q6
DQoNCnN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0IHsNCi4uLg0KCXN0cnVjdCBpbnRlbF9mcm9u
dGJ1ZmZlciBfX3JjdSAqZnJvbnRidWZmZXI7DQouLi4NCn0NCg0KPiBBbmRpDQo+IA0KPiA+IMKg
c3RydWN0IGludGVsX21lbW9yeV9yZWdpb247DQo+ID4gwqANCj4gPiDCoC8qDQo+ID4gLS0gDQo+
ID4gMi4zNC4xDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0K
