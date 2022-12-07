Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D092A645605
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 10:06:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1E0D10E18E;
	Wed,  7 Dec 2022 09:06:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42B4510E0D4
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 09:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670403981; x=1701939981;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZJD7hvtG6WgZ/nyBeLLCVub+TELw7ScGO8Nrv9TlgMI=;
 b=VLKZWgArAUGeRZBkRp12SYcDbehFBbzs57Q+ZQpzv1Slv7iB4NzRUA00
 KTRYipD2Yd5Ua84eGcyfozyBrhxMzBiXL4M1ghLL0v35UNDwJZjvjqUNi
 8He2lr/hjqvsNLjVpEG5sGGVK4oQshP0uPks2K4SwhWpdygvZh/GAqj/M
 PLPmVI00OZphMIAGsgbMA5nMJC2OV9C9kySTq2nv+IJ30HCccXEp2vS/n
 H8/oWKm0PrHUGN7kWMNhqQmNsRX4A2lU4BvKfReL/I3bHvG574AuTjDKq
 L9DotVE+/lL0/o1zY2Ns4sjGFm+/CWXFsdu4dn4dMqiQ0meZ3NfeJhjQs Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="304472835"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="304472835"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 01:06:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="646535446"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="646535446"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 07 Dec 2022 01:06:18 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 01:06:18 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 7 Dec 2022 01:06:18 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 7 Dec 2022 01:06:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fbYpZk4RF+xkm9qo3yH8i6oI/hpcNSjpC5YwJrNHTOXQWFwt1yHMLYIAClQjSSfRYb9HfQKzqbVVJxf30UOJ2SH6uLehsAsg7cH+FroZmwvOpbJps2IKPjSClfx4fBGhPrz+QsJX42Q7tmydhbGtHs475+q1jDj+y7bILzacYXW7jr6+GqWjUNRcu31BK1hf0jhTqvky/J02v1tSnCFJKONtwS6S5oFOq7sQ8wrM9HwRSfDQzNdRvll7fRYH00c0u4NIJpg3EPMyG0YRaOipnp+GOl/FGogWb388CZJuSquRo/5nDCdW0WN3cxfOCR+N/khUXkOxmFooZOY70/pHPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZJD7hvtG6WgZ/nyBeLLCVub+TELw7ScGO8Nrv9TlgMI=;
 b=kEQB88Hy7syt5y2Kh9GRPFu8XPnxfrndexTdOpZU8NuerRNsAowMDkdy1HzwA6161bQz73WqO7zDP1P++f0vVnUhZ2vbaQG8NvaZYUl2APIbODPTrT2Zsg6dQv7TMKGOtKw0eKGPBeSYupi/aN2x1vonPAZcEUDxu+FNsy/wmHK8d/AWVqAq07qU/YRvUyUiVP11nJ6GEnzb08wSp4S11sbFqLcsHJBUBVrw5eHls1TbY9rfIilDsQiaG0m6+B4MTOC8dNx7JAQN6yuZC9qXPPtLDLQkdsLtBMaOHs1qixL1V3B1xiNOxXMmAJvlediBX8zbCSlXNmfViyMEehLXJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MN0PR11MB6036.namprd11.prod.outlook.com (2603:10b6:208:377::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Wed, 7 Dec
 2022 09:06:16 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488%4]) with mapi id 15.20.5880.014; Wed, 7 Dec 2022
 09:06:16 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 05/13] drm/i915: Standardize auto-increment
 LUT load procedure
Thread-Index: AQHY/1AcDlFJgdvKgUKz/Gm8oV5q1q5iN0bg
Date: Wed, 7 Dec 2022 09:06:16 +0000
Message-ID: <DM4PR11MB6360A01B4F1F6984724DAD7DF41A9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
 <20221123152638.20622-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20221123152638.20622-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MN0PR11MB6036:EE_
x-ms-office365-filtering-correlation-id: 5fdf7b33-ee3d-4425-a50a-08dad8324c01
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oFs6az3n0nxKqffvDhI4p997j5UH5MrgBDvI1xbTODh8uM0tDYJJUnVuz03QF3+m6CkPnNUF2T4uo6ONiBcsQ0Ifuus33V0xccmvl3cVIHn7KtjX9qxW9//eL8cWOwkJfPoo8zOPmOTD+/0CM6uzBk81QtLpfrRbnTQBhnemCD/pO9qhtQu2yQr16+YCZqyobgIZSLLsbHbqsVToyf47MLIOpppRijAdfmuTcYAqFzEaWHf7tYq0s7q0bDh5vBEvwt34+RH3NEJep2qV4V57g1BE1R5+Dwtmq05Rs+CSR+zu9DkjF6/DWFpr9v2uFFprsMtNH7Z14mf7B4OYO42zAAbuBINeOfNJhwDTGqc53UQ9XXiURb9yPM0TGdVWf8TRLzfpgL1I2lo88kd8zOp+Y6enwAzzEFw5JCmTbeU67Cv46ioqtRH86rnBhO4WKkBx2u1m723wvW7QiA/i3z/FAH6OtddDIkiMjt/Af1/Ve9GER5S2Qkv739FSoSrm+mmqg2UdnCy/NccWspDQQ/ntiwEfKSeZJm88PlmBO7r+pqX29sqtZT/R/IPKcpSK4cW07Q4vj9QmpcAl22EIptKFxK8FeFDprftvEBNkhf82aerOJNuB6oZR1j8vjYgjFn5hxcU9kNS+UFjPgAliiXCr0M0UToeJNrivw8IXcyZ8B/UdDQAC3VuoW/1YarywJppXUjomgx4a1H3GTgKNVOjVRg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(39860400002)(376002)(366004)(396003)(451199015)(82960400001)(33656002)(38100700002)(122000001)(8936002)(5660300002)(52536014)(2906002)(41300700001)(55016003)(66574015)(186003)(86362001)(38070700005)(83380400001)(66446008)(64756008)(316002)(110136005)(66476007)(66556008)(71200400001)(76116006)(8676002)(6506007)(53546011)(66946007)(9686003)(478600001)(26005)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UE50WTBkRFhnSUh4VUNnR0E4N2FEcytYdzdIMkIzazhNN0pvMUk0NzAwb0hs?=
 =?utf-8?B?U2tsMzFHT2Q4MmNYc1RpQVVydHBNdWNxUXVPMG5ya3lYZURQTThBKzVHQ29x?=
 =?utf-8?B?blRDbUV0VjU4L3h4YXJ0ZmVjMTJ1eFRXaXhYTGxhcW5OclREZFdOVHJGZ1Ru?=
 =?utf-8?B?bnphNjlFZjdqYzZjS3JjdzBvK0tRY2FKcWVvZFFicklJaC9OSlV0QU9vS0ZQ?=
 =?utf-8?B?NWRqRzc4amsweDVSc0xkNlZid1E5VUdtcC8xT3E3RlovcURCQVRaWkp5akM2?=
 =?utf-8?B?bGttKyt0RVJlSzBWb01ncExYQnhqOGRhTVZwZVpZZE5KUlYycllsT2VLZWkr?=
 =?utf-8?B?Q29aWjNUaVQ1V1l4M1B2THVxSEVuUGtYcXZMeHRnVjBNY3hvOXBFdmxZOEZI?=
 =?utf-8?B?UzVaOEZybWRPY0FYVmhvaGtJbXlQN0h3dmZUMTBCZDMrOTBGYlBTQXBWV3RQ?=
 =?utf-8?B?eHRNMjhmZlpYZ1dYRU0zOXBCblM0VnJ0ZDVDSjBoM1R3WG10dmsybjVKN1Zk?=
 =?utf-8?B?ZHo1OFc5Y0JVeTFSZVc1b2U0NlY2aEJzUG5TVVFhdmFSK1pvNTIxWTFwWHNh?=
 =?utf-8?B?MFZIRHJsOTdlUTR2MEZ1MGdFQ01RN255UUFJU3NNNmRWSTBJVXpRRWdMQm0z?=
 =?utf-8?B?LzVSYXR4c2lydlBuZFJrVnVYM2ZHMUxvOXJuSXV0bjFUOVZHS3IvTHR4WUFQ?=
 =?utf-8?B?RzRuYmdnblJ2ZVM0OWtXTzdwYVlOWXl3MmQ0d0QyMlNyeUxYL0V5Z0RHNlpL?=
 =?utf-8?B?Ti9saEhjaWEzNFBsMThYN0lwTzFPZkdCVzBNYXY0UDFhSXJRV3NYOUNjM2U5?=
 =?utf-8?B?dzV6MEpTQU1QTWZJSjVyNlBSVlo4ci9ERERMN25oOW1SQkM5YmVYUVFXeTlD?=
 =?utf-8?B?d3NpMDdlaVhhczlRY0NOWjI0Wm9jamJCeWtsenM4VmtHRU5xb3pYUVh2VXhN?=
 =?utf-8?B?MU1wVlc3QmlhWDZRWE1Wbkt2eXE1djk5NjljVWlKTm4wZ1JrcFE4aUs1RU9N?=
 =?utf-8?B?R3IrMGszNS9oM0QvMW9ObmVSRUFLbWdvSEJXM3F3RlhhUFc2QlBQVUVTUWtr?=
 =?utf-8?B?eis5dXZjOCtFUi9VdmQvSWVEQ2w3NFFHVU16ekFKYmlzYmhIVDZvckJ4VWcw?=
 =?utf-8?B?b1ZYbTZPZ0l6eC9PVjZab2NTSTVsd29JdFRGUllLYUJibFBiN0IvRVBrVHps?=
 =?utf-8?B?ZFpUVUxyaTkzQ1hjeEFjaTllVU1KZU1RTzRqbmhBajFlamFTYjdyWWZVbDRG?=
 =?utf-8?B?dW5DKytTM1JhT2I5TW94NFdOSXB1bUMwMThqOWMzSTVkMGhGYloxR09EVDIr?=
 =?utf-8?B?SzByWmFPTUw4K2tGK0RkVjk1WVo3WEZsZ0o5TTlOdkx0dGwyYVA2a2xTdmll?=
 =?utf-8?B?cHArU0pGRlgrOFJMM2pzSHJLNUVrSUVtcGJ3cFRYU3FoSjRNWmZ6UW4yYkcr?=
 =?utf-8?B?WVFiMWt0S1ZEMXluNCtJUzYrTkJibUpxZjBUSXRnUC9yWGVRejhUSENvTEZ0?=
 =?utf-8?B?b2lUVk5MZjJEQ04vdUxIbDRaVFBUdmM1TEJIVTdFalMxMXZFb2Vhd2V6cVRr?=
 =?utf-8?B?ZEpLRnFPZGpPQkdieHV4dzlKelhVVTUwT3laOHhjclBBd1YrM0ZXR3RRWUhM?=
 =?utf-8?B?ZjJVM1d3UkNEZ05MbjI1SnlweldISlZoMVRKTk41YUZtMG5zejc1SFEvaG9x?=
 =?utf-8?B?cU9wbGZNY3dvZkhySkFYQU5mT2V1QVIrS3RJNkpmM2Q0MjVIQkVFeFU3VVh3?=
 =?utf-8?B?b0c4Q1RTOVgybE40OUhBRmJWVU52N21CV1cxZFhWdmwxbTMrekhOYnRMbVI2?=
 =?utf-8?B?ZmViSlRIeUZwZ1AwRGcxbGxGWmJaN04vTUMraGRSMDFDOGdCYWR3VlhMOFQz?=
 =?utf-8?B?OXI4WWdncC8rOXg4ZmtYSTFrMzFSaFZpOHkyang2UGlCeURHYlg3cC9VaVpk?=
 =?utf-8?B?VmxTOVhaTEV1cjhCSVhLcFFyMVo2T1JNYVI4WXZyZmpudWkyQnlNYzlhV2pn?=
 =?utf-8?B?TGhWVGNqaHA0QUgyM25sK1ZHU0JYR24rNDh4NURXNitvK3lQTGw5bitxYmhK?=
 =?utf-8?B?Qm5YTFA2ellRcG9wZ2xqU0hJV3d2QmlxKzlNV2w3OUVWYmVrOWc2Ull0bFRY?=
 =?utf-8?Q?hbWVnMLZMlhaFsp6JCzMu5bgP?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fdf7b33-ee3d-4425-a50a-08dad8324c01
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2022 09:06:16.0862 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FaHoTjqzyzlFXxNx8NGG+EnMQ9xUCMr/vaRPq7F27Xh0JncIrZz4GLIRQPpcGuhvBolzrLD2pg76lseRF7KBsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6036
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 05/13] drm/i915: Standardize auto-increment
 LUT load procedure
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgTm92ZW1iZXIgMjMsIDIwMjIgODo1NyBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4
XSBbUEFUQ0ggMDUvMTNdIGRybS9pOTE1OiBTdGFuZGFyZGl6ZSBhdXRvLWluY3JlbWVudCBMVVQg
bG9hZA0KPiBwcm9jZWR1cmUNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBWYXJpb3VzIGdhbW1hIHVuaXRzIG9uIHZhcmlv
dXMgcGxhdGZvcm1zIGhhdmUgc29tZSBwcm9ibGVtcyBsb2FkaW5nIHRoZSBMVVQNCj4gaW5kZXgg
YW5kIGF1dG8taW5jcmVtZW50IGJpdCBhdCB0aGUgc2FtZSB0aW1lLiBXZSBoYXZlIHRvIGRvIHRo
aXMgaW4gdHdvIHN0ZXBzLiBUaGUNCj4gZmlyc3Qga25vd24gY2FzZSB3YXMgdGhlIGdsayBkZWdh
bW1hIExVVCwgYnV0IGF0IGxlYXN0IEFETCBoYXMgYW5vdGhlciBrbm93bg0KPiBjYXNlLg0KPiAN
Cj4gV2UncmUgbm90IGdvaW5nIHRvIHN1ZmZlciB0b28gYmFkbHkgZnJvbSBhIGNvdXBsZSBvZiBl
eHRyYSByZWdpc3RlciB3cml0ZXMgaGVyZSwgc28NCj4gbGV0J3MganVzdCBzdGFuZGFyZGl6ZSBv
biB0aGlzIHByYWN0aWNlIGZvciBhbGwgYXV0by1pbmNyZW1lbnQgTFVUIGxvYWRzL3JlYWRzLiBU
aGlzDQo+IHdheSB3ZSBuZXZlciBoYXZlIHRvIHdvcnJ5IGFib3V0IHRoaXMgc3BlY2lmaWMgaXNz
dWUgYWdhaW4uIEFuZCBmb3IgZ29vZCBtZWFzdXJlDQo+IGFsd2F5cyByZXNldCB0aGUgaW5kZXgg
YmFjayB0byB6ZXJvIGF0IHRoZSBlbmQgKHdlIGFscmVhZHkgZGlkIHRoaXMgaW4gYSBmZXcgcGxh
Y2VzKS4NCg0KTG9va3MgR29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1h
LnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgMTkgKysrKysrKysrKysrKysrKysrLQ0KPiAg
MSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gaW5kZXggYzk2
MGMyYWFmMzI4Li5iZDdlNzgxZDlkMDcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gQEAgLTkzNCw2ICs5MzQsOCBAQCBzdGF0aWMgdm9pZCBi
ZHdfbG9hZF9sdXRfMTAoc3RydWN0IGludGVsX2NydGMgKmNydGMsDQo+ICAJaW50IGksIGx1dF9z
aXplID0gZHJtX2NvbG9yX2x1dF9zaXplKGJsb2IpOw0KPiAgCWVudW0gcGlwZSBwaXBlID0gY3J0
Yy0+cGlwZTsNCj4gDQo+ICsJaW50ZWxfZGVfd3JpdGVfZncoaTkxNSwgUFJFQ19QQUxfSU5ERVgo
cGlwZSksDQo+ICsJCQkgIHByZWNfaW5kZXgpOw0KPiAgCWludGVsX2RlX3dyaXRlX2Z3KGk5MTUs
IFBSRUNfUEFMX0lOREVYKHBpcGUpLA0KPiAgCQkJICBQQUxfUFJFQ19BVVRPX0lOQ1JFTUVOVCB8
DQo+ICAJCQkgIHByZWNfaW5kZXgpOw0KPiBAQCAtMTEzOCw3ICsxMTQwLDEwIEBAIGljbF9wcm9n
cmFtX2dhbW1hX3N1cGVyZmluZV9zZWdtZW50KGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKQ0KPiAgCSAqIDIvKDggKiAxMjggKiAyNTYpIC4uLiA4Lyg4ICogMTI4
ICogMjU2KS4NCj4gIAkgKi8NCj4gIAlpbnRlbF9kc2JfcmVnX3dyaXRlKGNydGNfc3RhdGUsIFBS
RUNfUEFMX01VTFRJX1NFR19JTkRFWChwaXBlKSwNCj4gLQkJCSAgICBQQUxfUFJFQ19BVVRPX0lO
Q1JFTUVOVCk7DQo+ICsJCQkgICAgUEFMX1BSRUNfTVVMVElfU0VHX0lOREVYX1ZBTFVFKDApKTsN
Cj4gKwlpbnRlbF9kc2JfcmVnX3dyaXRlKGNydGNfc3RhdGUsIFBSRUNfUEFMX01VTFRJX1NFR19J
TkRFWChwaXBlKSwNCj4gKwkJCSAgICBQQUxfUFJFQ19BVVRPX0lOQ1JFTUVOVCB8DQo+ICsJCQkg
ICAgUEFMX1BSRUNfTVVMVElfU0VHX0lOREVYX1ZBTFVFKDApKTsNCj4gDQo+ICAJZm9yIChpID0g
MDsgaSA8IDk7IGkrKykgew0KPiAgCQljb25zdCBzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqZW50cnkg
PSAmbHV0W2ldOyBAQCAtMTE0OCw2ICsxMTUzLDkNCj4gQEAgaWNsX3Byb2dyYW1fZ2FtbWFfc3Vw
ZXJmaW5lX3NlZ21lbnQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3Rh
dGUpDQo+ICAJCWludGVsX2RzYl9pbmRleGVkX3JlZ193cml0ZShjcnRjX3N0YXRlLA0KPiBQUkVD
X1BBTF9NVUxUSV9TRUdfREFUQShwaXBlKSwNCj4gIAkJCQkJICAgIGlsa19sdXRfMTJwNF91ZHco
ZW50cnkpKTsNCj4gIAl9DQo+ICsNCj4gKwlpbnRlbF9kc2JfcmVnX3dyaXRlKGNydGNfc3RhdGUs
IFBSRUNfUEFMX01VTFRJX1NFR19JTkRFWChwaXBlKSwNCj4gKwkJCSAgICBQQUxfUFJFQ19NVUxU
SV9TRUdfSU5ERVhfVkFMVUUoMCkpOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyB2b2lkDQo+IEBAIC0x
MTcwLDYgKzExNzgsOCBAQCBpY2xfcHJvZ3JhbV9nYW1tYV9tdWx0aV9zZWdtZW50KGNvbnN0IHN0
cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAgCSAqIFBBTF9QUkVDX0lO
REVYWzBdIGFuZCBQQUxfUFJFQ19JTkRFWFsxXSBtYXAgdG8gc2VnMlsxXSwNCj4gIAkgKiBzZWcy
WzBdIGJlaW5nIHVudXNlZCBieSB0aGUgaGFyZHdhcmUuDQo+ICAJICovDQo+ICsJaW50ZWxfZHNi
X3JlZ193cml0ZShjcnRjX3N0YXRlLCBQUkVDX1BBTF9JTkRFWChwaXBlKSwNCj4gKwkJCSAgICBQ
QUxfUFJFQ19JTkRFWF9WQUxVRSgwKSk7DQo+ICAJaW50ZWxfZHNiX3JlZ193cml0ZShjcnRjX3N0
YXRlLCBQUkVDX1BBTF9JTkRFWChwaXBlKSwNCj4gIAkJCSAgICBQQUxfUFJFQ19BVVRPX0lOQ1JF
TUVOVCB8DQo+ICAJCQkgICAgUEFMX1BSRUNfSU5ERVhfVkFMVUUoMCkpOw0KPiBAQCAtMTIwMiw2
ICsxMjEyLDkgQEAgaWNsX3Byb2dyYW1fZ2FtbWFfbXVsdGlfc2VnbWVudChjb25zdCBzdHJ1Y3QN
Cj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gIAkJCQkJICAgIGlsa19sdXRfMTJw
NF91ZHcoZW50cnkpKTsNCj4gIAl9DQo+IA0KPiArCWludGVsX2RzYl9yZWdfd3JpdGUoY3J0Y19z
dGF0ZSwgUFJFQ19QQUxfSU5ERVgocGlwZSksDQo+ICsJCQkgICAgUEFMX1BSRUNfSU5ERVhfVkFM
VUUoMCkpOw0KPiArDQo+ICAJLyogVGhlIGxhc3QgZW50cnkgaW4gdGhlIExVVCBpcyB0byBiZSBw
cm9ncmFtbWVkIGluIEdDTUFYICovDQo+ICAJZW50cnkgPSAmbHV0WzI1NiAqIDggKiAxMjhdOw0K
PiAgCWl2Yl9sb2FkX2x1dF9tYXgoY3J0Y19zdGF0ZSwgZW50cnkpOw0KPiBAQCAtMjgxOSw2ICsy
ODMyLDggQEAgc3RhdGljIHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmR3X3JlYWRfbHV0XzEw
KHN0cnVjdA0KPiBpbnRlbF9jcnRjICpjcnRjLA0KPiANCj4gIAlsdXQgPSBibG9iLT5kYXRhOw0K
PiANCj4gKwlpbnRlbF9kZV93cml0ZV9mdyhpOTE1LCBQUkVDX1BBTF9JTkRFWChwaXBlKSwNCj4g
KwkJCSAgcHJlY19pbmRleCk7DQo+ICAJaW50ZWxfZGVfd3JpdGVfZncoaTkxNSwgUFJFQ19QQUxf
SU5ERVgocGlwZSksDQo+ICAJCQkgIFBBTF9QUkVDX0FVVE9fSU5DUkVNRU5UIHwNCj4gIAkJCSAg
cHJlY19pbmRleCk7DQo+IEBAIC0yOTQ3LDYgKzI5NjIsOCBAQCBpY2xfcmVhZF9sdXRfbXVsdGlf
c2VnbWVudChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gDQo+ICAJbHV0ID0gYmxvYi0+ZGF0
YTsNCj4gDQo+ICsJaW50ZWxfZGVfd3JpdGVfZncoaTkxNSwgUFJFQ19QQUxfTVVMVElfU0VHX0lO
REVYKHBpcGUpLA0KPiArCQkJICBQQUxfUFJFQ19NVUxUSV9TRUdfSU5ERVhfVkFMVUUoMCkpOw0K
PiAgCWludGVsX2RlX3dyaXRlX2Z3KGk5MTUsIFBSRUNfUEFMX01VTFRJX1NFR19JTkRFWChwaXBl
KSwNCj4gIAkJCSAgUEFMX1BSRUNfTVVMVElfU0VHX0FVVE9fSU5DUkVNRU5UIHwNCj4gIAkJCSAg
UEFMX1BSRUNfTVVMVElfU0VHX0lOREVYX1ZBTFVFKDApKTsNCj4gLS0NCj4gMi4zNy40DQoNCg==
