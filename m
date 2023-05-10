Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE356FD4E2
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 06:01:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E05D810E1C6;
	Wed, 10 May 2023 04:01:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68D2510E1C6
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 04:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683691276; x=1715227276;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=HxOHAJgTzlR0lsgEgSE/USRfuBTLwAbPC7M7/zaF+OQ=;
 b=CSoHY+W6rf+aIpr50RgJ6NOx7DawJ8t6Cu4OIhsXx6OCBxKkYUKZTiAP
 zg6+b1s2FQKROI5CeYiji2z/dXKuTb8ZZ6Hkc++iAmUudvi42WvZqLHlj
 A/JkXdkHFE6LNPSicfOhfDqB+H0bfRAAgmK0bF+ho+Sv9hIYscc4+9MZH
 Zv5vSEo0Idy4ZSo7GlwZpeLK2nT5zfj6Rhu5bUPgEf6gw6tqpvQe4JTpw
 u+bq/39Iaqx76wkaXAaeRI028cAK2y5a3KPRVFN+/R2TyC2eN/4bT2WB+
 MxABKF45mXosiOjAWkAFPMzTLVBGdi+1Xc6Nt8rGqSIhVjXWTj8p/Twjz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="413410069"
X-IronPort-AV: E=Sophos;i="5.99,263,1677571200"; d="scan'208";a="413410069"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 21:01:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="676704596"
X-IronPort-AV: E=Sophos;i="5.99,263,1677571200"; d="scan'208";a="676704596"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 09 May 2023 21:01:13 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 9 May 2023 21:01:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 9 May 2023 21:01:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 9 May 2023 21:01:12 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 9 May 2023 21:01:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iyUfcV0MfAo4uJ+f8wx6dxiH1pVJJRfbnmic8nzsbNpWk6p+XBis9lDhe3m7/chWYV+StLbGDfAS58xre1/ASCN1RBI3Wym4ac9d+bYT15gjNUn8fjcDwRclhGOXGWonbehxa5h6leGF6b7XuEZe2Yls1N9x2owRHFOiBQCe8Psl8/gWprTCgCXJPgvMfz5usvlp4+4PFbNxhzipOVtSE6+7AebDSW2aQmvbS/k/AjQOPItBJN8+2IiHq9wUjBnkw9x3CljSmRPOXSEBQVSKZyqd1DtB8z1M8yg5+8NiiCdomL9/KhR7QOIol8nPjiaTqfsy4EKRhBF62BXwyukfFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HxOHAJgTzlR0lsgEgSE/USRfuBTLwAbPC7M7/zaF+OQ=;
 b=SfWycuPOHWlyrHkPf2vg0LN1C5JNobw7/QlXIyj7diaZSKDMPTpfUBKBoS18BXaOKfxBwj8XK4Uuxxn8bRvjI3bcqJIrbSj9HvUQ6tbw7zZ2eeD2wMzOSRvLtI2fwOVTR/t7chSY3EDp3n09kmagNXj2E7rV5gmY8N5JFcIekaIztTkFZocnoeTCv+HfHzV0berrIeNOL0pXFX9X0G1+1O4xCSTDHs+2+FbQTOuwFMd2eUQY7yOAy5fNiTLoszr1zCk7rKs6SZlfKY6tmkjjviLHLIiVQrcveC3EfTI7qZKvxAx5IsE/4YdHDY0wjt68Z2Is9TmUnX+CKqr3VDVjvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN0PR11MB5758.namprd11.prod.outlook.com (2603:10b6:408:166::18)
 by IA1PR11MB7853.namprd11.prod.outlook.com (2603:10b6:208:3f7::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.33; Wed, 10 May
 2023 04:01:11 +0000
Received: from BN0PR11MB5758.namprd11.prod.outlook.com
 ([fe80::d2f3:eff2:6b57:be21]) by BN0PR11MB5758.namprd11.prod.outlook.com
 ([fe80::d2f3:eff2:6b57:be21%5]) with mapi id 15.20.6363.033; Wed, 10 May 2023
 04:01:11 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Justen, Jordan L" <jordan.l.justen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v9 6/8] drm/i915/uapi/pxp: Add a GET_PARAM
 for PXP
Thread-Index: AQHZeWLWx68i9/8KnU+Unxd6GaMLfq9LMoYAgAAkQACABWFXAIABSSOAgAD0FIA=
Date: Wed, 10 May 2023 04:01:11 +0000
Message-ID: <c750677a362550da627ec25cf3cd95ef7f3ece4c.camel@intel.com>
References: <20230427234843.2886921-1-alan.previn.teres.alexis@intel.com>
 <20230427234843.2886921-7-alan.previn.teres.alexis@intel.com>
 <8888e3dff8c1c4fd1702ded911850da30330fbfa.camel@intel.com>
 <168327239043.1096084.14316886882692698230@jljusten-skl>
 <e40f2b8750b39facd98f72cda63bc733ca0319d5.camel@intel.com>
 <9226d87084ed5702f4c700e93bcf41e1e24f16bb.camel@intel.com>
In-Reply-To: <9226d87084ed5702f4c700e93bcf41e1e24f16bb.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0PR11MB5758:EE_|IA1PR11MB7853:EE_
x-ms-office365-filtering-correlation-id: dc9da349-f0ea-41c6-39de-08db510b30f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HHrwGmq58ShMqFs+XOIAW52QUqKA8ovJ3SC/G8KjCxVzAKbSYX8Uj/ruuijq4oGpfLs6Wb/hxJgp/9AoNTC4qOQ4KQ62RlBMWxkf8eMl2cKV6Auq4YFZudRQ3RZ26zbmAfIYeZItKHgWM+XdiesFST/Xb363F4q48WUbdW8t5j3GjE9KKvoccovRjPdD3Y/Ei2xtsCBzp8c+8TjBDGvlL4sMWeH5RIT8wUtUEH1Ra0CiOQq7z1IC4cFXMkU4ecqGkRZvyUm/uS/aorddUWGJqJeuwWuDWm2uEmYq1pK8myAPY5Jt3jqa2zj53L9njI8l+KNlaFA443J69tI1s6Q4LARFjN888SKaD1NBOq+SGDkoAlKCv2GYEyea+Xp68ll1QzhYnfApdMqxfXL2seuERd9GK1yTtAXrPcldklksrW5To9nLqtVTtZ1IpncK2egKRuNTC77cFfnBWIj7OJb2JJ5LmDiFyDN6fRd6meJwT0PdaaoSG5nR7tK+a4EGij32+BRIEawqJntMXSTfxeC57DomkR++o6ItYFwbUDbJrLzpeVxAv6ZVM+Qpet2P2j1t
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN0PR11MB5758.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(39860400002)(346002)(376002)(366004)(451199021)(122000001)(6506007)(38100700002)(6512007)(82960400001)(26005)(76116006)(66946007)(86362001)(2906002)(4744005)(4326008)(8676002)(5660300002)(66556008)(478600001)(54906003)(66446008)(91956017)(110136005)(8936002)(64756008)(316002)(66476007)(41300700001)(83380400001)(2616005)(186003)(966005)(6486002)(38070700005)(71200400001)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bzJabllTT0ZSa05vemYyYUl0UDZDelRuNFNEc1ZwUDlxT1F1VVlqTllTV2pp?=
 =?utf-8?B?NTY3dWhRWEVMdWZVY0tsOCt4eHFBRnVPODdNdERZb2NrbWoyVkQxN0JmTUlC?=
 =?utf-8?B?YzN2OGRJMXBEaWtXeG1GamNTVzZncllDZFBzWnlmVVUxVjNmZktudEhnM1Js?=
 =?utf-8?B?MDBsZEhqaTB4Y2xUOUszcUwxV3RvN21IMjhvL2x2L0dHcTk2V1JDRnlaYy9j?=
 =?utf-8?B?QUY3OWNSMWdONUFCZkdkL2VHQWJIRjJLdmNjZjByM1UwOTR4d3Urc2hwUSsy?=
 =?utf-8?B?eW5vOVk2ZlFOQmRKdE95aW02QWR3MzBwNFp4OWVaTXdrWFNBOVBKaCs3dytx?=
 =?utf-8?B?a2dMbkRuKzNFM1IybVEyVDhvN3Blc2xzZ0laR0JOK3JtTDRwNTIzZ05vN3hC?=
 =?utf-8?B?aTBRTDEyL3NDL2U0WVE4VGVrRERSUnlkQ3o1Nk5VUGp5ZnFzS1FzdFJYYjVV?=
 =?utf-8?B?eGJWS3lxenRTcTA5WFhSNHZ5S0RyZ0ZrbXdRcTVWay9NNE1lWE15MXdFRFRq?=
 =?utf-8?B?MDU5YmVXNk9EMlU0cGhCd0lmVDk4N3ZwZUlLaWkyZXNhUWhRYUZKRmJvNEx5?=
 =?utf-8?B?Y1RzYUZFZUYrNjM0VXVxTWF4UXN1c213NzE4NFFsRHcxdTgrNkNCZDZIL0h6?=
 =?utf-8?B?RktNeEE2VWlUSklpc2g0djhEZE0zRm9USWFLamFJSC9BeVpBL09QbDFKZUlH?=
 =?utf-8?B?OXh1QnZNVEx6MXVnVGRIMjc3L3NndWpyaVJCa1F6SWNUWlRJQTFYN2lwYjA3?=
 =?utf-8?B?VjZUOWN6MnVIOWlteXlhZDQ5czkxdDh0Tm9oa2g5NkxmQ0NjZ2toUDRjTW8r?=
 =?utf-8?B?VXZSY3FIVE9ybjQ2dk9KZ0Rta0dFeEFDOVhaNzVFYkhJUmtDaE5RTmtNcFJx?=
 =?utf-8?B?OXFoaDRiTXJWV1RaNWRUQmtJd2V6U3J0SEdjdEhtemNXNzFxTEpzR0xRRmFq?=
 =?utf-8?B?cEdoVTVyeGJOMWZkMGtkS3RxRjlqeEVvRjFMQ014Q2lHek85NjBzMks3eUJz?=
 =?utf-8?B?SDE3UmRYSDZDSU1TYXdYQ3I2Zm5lTDR0QzI3VUJzMnVEUlNibWJxSzZObzJq?=
 =?utf-8?B?V0U0L2N6Yjd1OCtUU2VBeHBmamttcXF3ZitsRU5XYWpvZHd6a0FSTTRrdHM5?=
 =?utf-8?B?QTVxQ1pnUWN2c0tEektKUUNnclA3dWtJTm10eGk2VFRYOU81bW1Pd1VzV1R6?=
 =?utf-8?B?MG1uSTdsVGpldjV0ZE54QWtqM0VlY3hTUDRQNC84cy8rMW1QK0FDa2pWRnZU?=
 =?utf-8?B?VEc4SElhYUNWQXhvM3crdFAxVHpzNzl5ckNlR1RicVRrK0pwTEY4N3NLMjVk?=
 =?utf-8?B?alF2ME11SCsvOUdNVTlyRkZEaWszZGVuMWxNS2NZZmJ0ZGQrYkE1bW5MN2M3?=
 =?utf-8?B?K2tBdlpXZ0tqMzBaa3dRL1FuYnJ0dklSY3p5aTZvbVViRUVuam02ZytKKy9J?=
 =?utf-8?B?S1JNbzdrbHZJRlZEcFZteXI2b21ac0RWTStnM1pVRy9UV0NoQjFVNlpDcTdP?=
 =?utf-8?B?QU8yejUxT0pqek5xcHJDUGJwdmlIOVR2SXlPZGJBUzg2NU92a1FlK2l1b1c2?=
 =?utf-8?B?NXZxQVliUVBhWDNDcGNMTTJlZkNiOUN1Tzg3OHYxTTJSOExpSkF6THFOVExs?=
 =?utf-8?B?YzJiMXdQY1JrU0dhQ09BMlNqczRvdlg1Zk5KcW5UZ3Y2YXFoMFUvTmQxeExk?=
 =?utf-8?B?OVFhYWNVcGNiVENXYkZjV0FlUEN1bDVGUmtxSUtkNTlnMzFGazhwbWQ0Wlhn?=
 =?utf-8?B?S3hSNXBZeitwTFFwMVQzQ3VNQUdieFZZOHRpdUZ6UDlVRjRuQnBzWTNSSVha?=
 =?utf-8?B?cXdFcURtZXZTNkp3eVJZVGxQRlppQ3EzRkpYVjZKSklDRW4wL282YnNOeFps?=
 =?utf-8?B?Y3lEZ1Z6UUhmSTdvOEY1OXJ4L2d5NkVaQ0V1QWM2SUxYaWRyWU1ZaWE5ZEp1?=
 =?utf-8?B?L28yWHZIZW90MHdpZmJWdFN6eDM0V1gyckd1bFpaNnY3azcrQlRwNmNrQWUv?=
 =?utf-8?B?TERzNTljLzB0S0s0QVBwRFNBMEQxdW96TllKUWtWeHhkUmJlUEpvSm5FdUZi?=
 =?utf-8?B?MW5jbnRyYnJad0pnaXZiczJXUVArS253b3hOSlVHa3ZoakhQM3VQcWZPdDY1?=
 =?utf-8?B?alNDQUpWWkFxWlhkMkM5bDM2WGN0K1lYTVgyb3pZcTVOQ0hNT2hnU0Z3dzJh?=
 =?utf-8?Q?zjXEpoIKAqC/jb9w9utRkak=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <237B4C9404083847892A53B2D35F37A0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0PR11MB5758.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc9da349-f0ea-41c6-39de-08db510b30f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2023 04:01:11.0440 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tBXuyRZA3HuPMpkJ2ek0fN1WsDPx4h6a6eMltI93+KvDfQ+QYI+4EE4RwsjtHtTYAySfyeO1rfb3ExfL35aCGzpTjopboJoK5MCI3oSssJZxraBmahD1y3D4HJjXAx1l
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7853
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 6/8] drm/i915/uapi/pxp: Add a GET_PARAM
 for PXP
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
Cc: "ri-devel@lists.freedesktop.org" <ri-devel@lists.freedesktop.org>,
 "ustonli@chromium.org" <ustonli@chromium.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIzLTA1LTA5IGF0IDEzOjI3ICswMDAwLCBUZXJlcyBBbGV4aXMsIEFsYW4gUHJl
dmluIHdyb3RlOg0KPiA+IA0KPiBhbGFuOnNuaXANCj4gDQo+ID4gPiBbSm9yZGFuOl3CoA0KPiA+
ID4gQW5vdGhlciBvcHRpb24gYmVzaWRlcyBmcm9tIHRoZSB0aW1lb3V0IGxvb3AgaW4NCj4gPiA+
IGlyaXNfY3JlYXRlX2h3X2NvbnRleHQoKSBtaWdodCBiZSB0byBjaGVjayBJOTE1X1BBUkFNX1BY
UF9TVEFUVVMgYWZ0ZXINCj4gPiA+IHRoZSBjb250ZXh0IGNyZWF0ZSBmYWlscyB0byB0d2VhayB0
aGUgZGVidWcgbWVzc2FnZS4NCj4gPiBhbGFuOiBZZWFoLCB0aGF0IGlzIGFuIG9wdGlvbiAtIEkn
bSB0aGlua2luZyB3ZSBjYW4gYWRkIGEgREJHIHRoYXQgcmVhZHMNCj4gPiBlaXRoZXIgIlBYUCBj
b250ZXh0IGZhaWx1cmUgZXhwZWN0ZWQgZHVlIG5vdCByZWFkeSIgdnMNCj4gPiAiVW5leHBlY3Rl
ZCBQWFAgY29udGV4dCBmYWlsdXJlIiANCj4gDQo+IEhpIEpvcmRhbiwgc2hvdWxkIGkgcHJvY2Vl
ZCB0aGlzIHdheT8gKEkgY2FuIHJlcG9zdCB0aGUgVU1EIHBhdGNoIGFjY29yZGluZ2x5KQ0KDQpN
RVNBLXBhdGNoIHByb3Bvc2FsOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvYWxhbl9w
cmV2aW5faW50ZWwvbWVzYS1hbGFuLXByZXZpbi1mZWF0dXJlcy8tL2NvbW1pdC84NzI4YWI1YTQw
YzFhODNmNjVhZmUwMDcyZjQ1YTkwNmZmMjZmNzA2DQo=
