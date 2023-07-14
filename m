Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7147C753058
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jul 2023 06:06:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCD2610E184;
	Fri, 14 Jul 2023 04:06:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C34A10E114
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jul 2023 04:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689307594; x=1720843594;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=63I3taigDaWLidRPtXvnFKrt/IBntoMu21v2PQ1AenU=;
 b=lvtnRYorL4khVOkYjrauznPT4et4dSVDY+Lvd4Kv/m/KpIhaELxg2SsV
 FMRzwppiqum9d0K9c2s1JNEAkhMWRyzgp0Pc+E+B2Xnp1KULAslnaRiDJ
 ls2ZLGBBXCTFnLbZjR5qKtF8uOGuVmjOdxvfHJA50Fh2ihl16XIsFaXXU
 r/TGoqkL2ZZb8IWgKNxa9O4oP6uVKAZhr6ICEiL6yN+zcepPgzOtEoXLq
 Ay7YbrMt6vYrRYmdK56HcDYwuRQUQmwibgdXPRNbZ+AeuNxpgNq/XNzIp
 wXG1pwF2ybnhOj9oQ7FDCF7ZBos2/6EVBx7gQk0gRwXUmGkchppxSLaX3 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="429149908"
X-IronPort-AV: E=Sophos;i="6.01,204,1684825200"; d="scan'208";a="429149908"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 21:06:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="722242091"
X-IronPort-AV: E=Sophos;i="6.01,204,1684825200"; d="scan'208";a="722242091"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 13 Jul 2023 21:06:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 13 Jul 2023 21:06:33 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 13 Jul 2023 21:06:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 13 Jul 2023 21:06:32 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 13 Jul 2023 21:06:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nW+ydtI4SoANw78yLoJWDGcDH77kJi8fQRU1HIi872QCqjvJ7nfz+H+uYPrCZk425vHvKS6SloZmX1huxYJ6I2outH/5MHIP82OERyJzuEh8viComPzmjqJ1O0AHfL41qwED+2VcCRO3lDUK1Vm0b4qrIjeJKlIcY68YrKkAgZ/cnb+bRXobYJFw4F//FHdNQaABiVidYxMIRELsYLqYJIod2ZNV+mo0y8hX84NQH2bwUjr4Hnl/pNeMvd6VKEmpMDDjffpgVJPVj9a20hn4gwCFhUKh8hz7VA0HxdZEHrS8KD+rBRODaU1aA7rXWCr/Ia4XJGZTJRW9aEVe9/j6Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=63I3taigDaWLidRPtXvnFKrt/IBntoMu21v2PQ1AenU=;
 b=VXLD7elGzz4nVVbsISwWXGAOSIbgME91U+Otuxr9ckunCmA6WsZ+eMjwG/3+YRVz5UGwb8Zxz0L3AjKftO7pT86jneF1uxJmGjTDhEDaxYzEWUm1H7j/nZsnuywFu5XyBmF5ZT0oNXxYQHwnfW8nLXxj8LwYVXJIrqyLihKymln4a3/ES7az53lXQp2eoqbQLVSIEwh3Og/nQ8s6f7Snc4aFd1jUVv1aFIHC7P37sJVrcxGS8d6PEa1PnIblwBCFVkPQqEBiwPohLdpfUYEN8aAxjogkPs6bPkSndtg+Xrtap3I1lYUWQfuJ22MHpOOW0eEV2IgKr96vZEXg52Ds8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CO1PR11MB5042.namprd11.prod.outlook.com (2603:10b6:303:99::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6565.31; Fri, 14 Jul 2023 04:06:31 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::1cda:590c:994a:abe0]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::1cda:590c:994a:abe0%4]) with mapi id 15.20.6588.027; Fri, 14 Jul 2023
 04:06:30 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/4] drm/i915/panelreplay: dpcd register
 definition for panelreplay
Thread-Index: AQHY9RZN5oo94CL9YUW7DmutUUNFe6+6JTDg
Date: Fri, 14 Jul 2023 04:06:30 +0000
Message-ID: <DM6PR11MB3177D45E5B4BDBF60B5983A5BA34A@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20221110150307.3366-1-animesh.manna@intel.com>
 <20221110150307.3366-2-animesh.manna@intel.com>
In-Reply-To: <20221110150307.3366-2-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|CO1PR11MB5042:EE_
x-ms-office365-filtering-correlation-id: ba46206e-7c6d-443c-8658-08db841fb400
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wzzDsUS8eh7WK7rLNhzTdXeYTF7pC0hRE/QaeNnQMKFKqHRXpeCpjbJ1TcNRVmC0KhMuOCOOGLQ1njNo5sgRPqkw5KVmrXjQNpeZqtPtBtDJQGnNLnE5xRQ5wzvdawJ1KrY9QMuvZemffEZaM1qgckFU8PXQgYqN0DnilLZ0G5u0PArF24NoWfaXaD2P8mWz22svsG5NbwP36OB1dhR4lbgfxykpn3RIkE/QBlmW9EZjPYWTHSjYg7wxg3IE4S/cUDJo+GvubExbVfQUB3D6ZAeBA0NvMUCuyDITi7X+2s9NqfDkHlSsnbF+XskqFsyUaHIIEHOoWx6NMBfbVhD7xqBR2BlVdt0wTqu/JvmZLbZF1vvw1boUggh0HK2BvtGu/Qnjc/1TMI4TnwQq6xXcgi8mjVWlCc/5OW1Tdthjb5oQpq32GjkpqmHHpQLjci4DSPnxyKGqbZ4s3nTbJDw2YVdTNVswH0A/fU3IYVK0OQfY/JFEW2PK7lioDQ4HIuN7L696zVz7xGPnKckG1E5xpgh5yvXZfdA2xS5B+b5bUslgcWcxr7JoNLU4YOeGO9rUhPwRYYV2NDSixW4b6ilcUWz8D4wkWc9yjB5PkzbmnPRuWFIGNhIBwQtcAQ/aQCyq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(376002)(366004)(396003)(136003)(451199021)(186003)(5660300002)(316002)(52536014)(64756008)(8936002)(66446008)(66946007)(66556008)(2906002)(76116006)(41300700001)(66476007)(71200400001)(8676002)(7696005)(6506007)(53546011)(26005)(9686003)(83380400001)(66574015)(38100700002)(110136005)(478600001)(82960400001)(122000001)(33656002)(38070700005)(86362001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NnJtdDl0REJNb1ZraXdnWFZ0azRBRzh4LzJBYzZiVUY3ZGhPN2Vvc3VXdGs3?=
 =?utf-8?B?dXA2SUVGcWFsbU42dEF6bUhVdVkwem1yRGo2bGpRbFVQSGwrc0pJUUprd2ds?=
 =?utf-8?B?YzJRZ2NRalQxYVJBYldvaWRmYTlteTV0U2x2T0hCVFFhL2gxaWZnUHAreito?=
 =?utf-8?B?WFNDbFlFSjgvQWNIVUN1TVFadGRJVjlBYitSdnRneWM4WnFYdHNHQnVyeFZQ?=
 =?utf-8?B?c2QwY0JDNzBKYVQ4d2k2UVpTR2Y0QzhFdVNacGhqUEJMR1hXVHdMMTBwNGdv?=
 =?utf-8?B?ZmtLMXU2b21WdVVMTkdhZkhLaGwvU1JNanFCbjFpWm9heVp3VzZwREVmMFk2?=
 =?utf-8?B?bnJMOVRpSmRON3BBTTk1YS9lMXg1U1VxbU0rWGM4cHRKU29nNjBHY1JwR054?=
 =?utf-8?B?a2wzMk40Qjczemh6bHJOSUtxb2gwNXB5TkVXbTRZdmlCWDA4VDJrYjluUFho?=
 =?utf-8?B?MnptNlRUMmlsOEZMZGhpRWZvbXBaUlM1bTVVVmx1b3lzRHpCbmw4ZEhKWFNY?=
 =?utf-8?B?TS9Ia0k4OWJKYnljQXBVOU9rYk9XRGpUeXQrLzF0R0x2MmR5Y1NkK0xEdWt3?=
 =?utf-8?B?MXFqSEZ3dnBOOGdPT0xndHN0MmFmWmx4eU9qdVFGMTdaUGFJRTcybDN0ODM1?=
 =?utf-8?B?OFd3c0EzVkpJOE9ZUXM2U1ZRNmo4eDQxYlUyZUppZ296WWV0K2dhblJpVldw?=
 =?utf-8?B?SU5pa2hGR2lGa2VvZTFlUTdHNUw2dUR6RktnamtqL0tkRElqZHdpWitUQlo2?=
 =?utf-8?B?cVZDc2QyR2JOdjVFWHo0ZWhISWlhckxiVzBUWVRObUJUY2EvQVc1QjdVRFRX?=
 =?utf-8?B?N1R6QnZxSHdTOUlXK1FGcW1zeXBRY2s4YTFrQ2pMNlRwRzJkSFV0UjNhZjg3?=
 =?utf-8?B?Uk1yV3RHcWxtWVNyZjJTeDZTdm9ZRnk5TGNBM2wyUS94ZEord1hLY2h0eXJj?=
 =?utf-8?B?cGdrMHNBTnFTSnUxL0FjWm5mRzR2bGVMREhlZ0dIY3ZQSFcxdWtjVDVLaUpT?=
 =?utf-8?B?aEpOWjk1WTM2dEtjVkI4Tjhnd3crcld6YVBLZDQ4Zm5MS291cnA0TG1vODBp?=
 =?utf-8?B?cFFsakczL3BQajNoV2VudkxLQzZpSCtsQ3pIOWtHLzB3YjkxN0hOMHpiSC9R?=
 =?utf-8?B?T2FQZWhVVkNObEhCMU00WDU4RjJOcmZickpaVkpRbEtQWnlyODZqZEZRTWdz?=
 =?utf-8?B?ZXhoUkR5aUNTMVZEY0R5VGNyNEpsUy9sUld1d0NScFV6VE5MMTFDRHJ0SmxF?=
 =?utf-8?B?Y0dUWTF3UWRNUGxIVkRGUmRCSXdtbXBQeituZmxZcnROdVRNZm53bTRiQ1I3?=
 =?utf-8?B?K0FhQnlTNEp4TXVJemNtYjBudFhBay9mejZhcHczQmU3aFgwaUM1bFV6WDhR?=
 =?utf-8?B?VHc2S1JjbG5TdWlzbDB3b2lva0NGeWNEblZHM1NCTHhpVDVWc3pSSkJub1ZT?=
 =?utf-8?B?UkdGeW5JSVdPWDJnNEI3OFpNdlFOdDEyUWl6azM5WW9LaCsxVVlTVGxVQXhH?=
 =?utf-8?B?blBtbDd5NTFLMVhsaWZoN2VRdkErSTNRL2QzSUprSmdwaFhYLy9kQTlwazBl?=
 =?utf-8?B?eHUzeEE2MGdWYzJ0YjUzL0NFYVJySllVemVSTjZIMzdDRzVBSVpuRjREZHN4?=
 =?utf-8?B?Znc1Tjh1VlRkQXUzenFSMG9kb0VlWU41SDBsYXVDY09IbUtrMHRmalRxbGFY?=
 =?utf-8?B?YUR5OVVSSFF0RzdoaCt2N0NSYUV5L3BZTFBDNTE3SDlSbXZ6RGlCVFdvaWZ3?=
 =?utf-8?B?cTNVRk5qbDVHMU1vU3hsVVk0SXo5ZDdKWnRQZE9ObUhDNVY0K2hvKzFFc1pY?=
 =?utf-8?B?ZThhbkpzODdKd1Z4NGRKVk9mVnhiVmprZS8vTUszVm9KRms3ZjJYT2EyVnl2?=
 =?utf-8?B?dnBpUU9NM25uU0RWZzZqNUp1Umt3KzcvZHBDSWVRQjlPU25XMXdWZTRad25x?=
 =?utf-8?B?L3FXQzhXVVk1VTNIcjMxejU4U3BmTm5xZ0IxM2pLRWMwMDAxekltbmtnWnNn?=
 =?utf-8?B?b29rc3RaUW16RnFkUjRzd240MkxIZTVBZk8zbnAyOEhKTkkrakdVMjRsc3pI?=
 =?utf-8?B?bmsrVU5ENHZ6V1FGVS9CK01PeVZvWHpaYm1jMzEvTWd3eXdmM3BwTDhZMDRP?=
 =?utf-8?Q?a2ClrhqDuGleixgm2Sbi2eRbg?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba46206e-7c6d-443c-8658-08db841fb400
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2023 04:06:30.1773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X6EjtwnU8IHj4E+QVidEUJJCnmHJfPqyFc512veWgLCmuUweYcKepFtiMnc8JW3qd9KYN2qgpzubvR4ado+2lQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5042
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/panelreplay: dpcd register
 definition for panelreplay
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
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+IEFuaW1lc2gg
TWFubmENCj4gU2VudDogVGh1cnNkYXksIE5vdmVtYmVyIDEwLCAyMDIyIDg6MzMgUE0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0g
W1BBVENIIDEvNF0gZHJtL2k5MTUvcGFuZWxyZXBsYXk6IGRwY2QgcmVnaXN0ZXINCj4gZGVmaW5p
dGlvbiBmb3IgcGFuZWxyZXBsYXkNCj4gDQo+IERQQ0QgcmVnaXN0ZXIgZGVmaW5pdGlvbiBhZGRl
ZCB0byBjaGVjayBhbmQgZW5hYmxlIHBhbmVsIHJlcGxheSBjYXBhYmlsaXR5IG9mDQo+IHRoZSBz
aW5rLg0KPiANCj4gQ2M6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29t
Pg0KPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNv
bT4NCj4gLS0tDQo+ICBpbmNsdWRlL2RybS9kaXNwbGF5L2RybV9kcC5oIHwgMTEgKysrKysrKysr
KysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9kcm0vZGlzcGxheS9kcm1fZHAuaCBiL2luY2x1ZGUvZHJtL2Rpc3BsYXkvZHJt
X2RwLmgNCj4gaW5kZXggZTkzNGFhYjM1N2JlLi40MDk5NWY4YzJjMmYgMTAwNjQ0DQo+IC0tLSBh
L2luY2x1ZGUvZHJtL2Rpc3BsYXkvZHJtX2RwLmgNCj4gKysrIGIvaW5jbHVkZS9kcm0vZGlzcGxh
eS9kcm1fZHAuaA0KPiBAQCAtNTM3LDYgKzUzNywxMCBAQA0KPiAgLyogREZQIENhcGFiaWxpdHkg
RXh0ZW5zaW9uICovDQo+ICAjZGVmaW5lIERQX0RGUF9DQVBBQklMSVRZX0VYVEVOU0lPTl9TVVBQ
T1JUCTB4MGEzCS8qIDIuMCAqLw0KPiANCj4gKyNkZWZpbmUgRFBfUEFORUxfUkVQTEFZX0NBUCAg
ICAgICAgICAgICAgICAgMHgwYjANClBlciBEUDIuMSBTcGVjDQpQQU5FTF9SRVBMQVlfQ0FQX1NV
UFBPUlRFRAkweDBiMA0KUEFORUxfUkVQTEFZX0NBUAkJCTB4MGIxDQoNCj4gKyMgZGVmaW5lIERQ
X1BBTkVMX1JFUExBWV9TVVBQT1JUICAgICAgICAgICAgKDEgPDwgMCkNCj4gKyMgZGVmaW5lIERQ
X1BSX1NFTEVDVElWRV9VUERBVEVfU1VQUE9SVCAgICAgKDEgPDwgMSkNCj4gKw0KSW5zdGVhZCBj
YW4gQklUKCkgYmUgdXNlZCBoZXJlPw0KDQpUaGFua3MgYW5kIFJlZ2FyZHMsDQpBcnVuIFIgTXVy
dGh5DQotLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAgLyogTGluayBDb25maWd1cmF0aW9uICovDQo+
ICAjZGVmaW5lCURQX0xJTktfQldfU0VUCQkgICAgICAgICAgICAweDEwMA0KPiAgIyBkZWZpbmUg
RFBfTElOS19SQVRFX1RBQkxFCQkgICAgMHgwMCAgICAvKiBlRFAgMS40ICovDQo+IEBAIC03MDYs
NiArNzEwLDEzIEBADQo+ICAjZGVmaW5lIERQX0JSQU5DSF9ERVZJQ0VfQ1RSTAkJICAgIDB4MWEx
DQo+ICAjIGRlZmluZSBEUF9CUkFOQ0hfREVWSUNFX0lSUV9IUEQJICAgICgxIDw8IDApDQo+IA0K
PiArI2RlZmluZSBQQU5FTF9SRVBMQVlfQ09ORklHICAgICAgICAgICAgICAgICAweDFiMA0KPiAr
IyBkZWZpbmUgRFBfUEFORUxfUkVQTEFZX0VOQUJMRSAgICAgICAgICAgICAoMSA8PCAwKQ0KPiAr
IyBkZWZpbmUgRFBfUFJfVU5SRUNPVkVSQUJMRV9FUlJPUiAgICAgICAgICAoMSA8PCAzKQ0KPiAr
IyBkZWZpbmUgRFBfUFJfUkZCX1NUT1JBR0VfRVJST1IgICAgICAgICAgICAoMSA8PCA0KQ0KPiAr
IyBkZWZpbmUgRFBfUFJfQUNUSVZFX0ZSQU1FX0NSQ19FUlJPUiAgICAgICAoMSA8PCA1KQ0KPiAr
IyBkZWZpbmUgRFBfUFJfU0VMRUNUSVZFX1VQREFURV9FTkFCTEUgICAgICAoMSA8PCA2KQ0KPiAr
DQo+ICAjZGVmaW5lIERQX1BBWUxPQURfQUxMT0NBVEVfU0VUCQkgICAgMHgxYzANCj4gICNkZWZp
bmUgRFBfUEFZTE9BRF9BTExPQ0FURV9TVEFSVF9USU1FX1NMT1QgMHgxYzEgICNkZWZpbmUNCj4g
RFBfUEFZTE9BRF9BTExPQ0FURV9USU1FX1NMT1RfQ09VTlQgMHgxYzINCj4gLS0NCj4gMi4yOS4w
DQoNCg==
