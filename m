Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 850BB88E194
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 14:06:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBF6510FB0B;
	Wed, 27 Mar 2024 13:06:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HZKEsHDu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2F0F10FB0E
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 13:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711544811; x=1743080811;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Z+wWUGlTNppP0ZSbPCYJJzfjE9v6OpXTcP19STLvp6g=;
 b=HZKEsHDuSHhbvfjbJ7jTDC60ynUv1byIsbFatUX0WJ71/MD91K8XjhWv
 KhuU03xfSF1BF4YqBK/e6qxES+0dmjSuC/syll0Kr+pPxWAz6l/OHelSk
 f6cweDALmXt5KUSi8JjaAOF63mmzwNNXFe369nOqWQYRES2tfU9o+8zxE
 L1Iijtv6DHnJrPIYjRlQCYVF63H33bLGwoVQvLcF2dLSxKy/XdxieqJnb
 yRMcBRH8ZZct1t8xBB1A+sXlj0hIC9/7mm96PXx5cYRuaEDKYve+AqjwE
 hb2bCxCnJWBbFLgGLtHfw1a2wHvrMvdXeAWHOZ7aMqaGdk5BJecNpl3Bx A==;
X-CSE-ConnectionGUID: xRNr/NW0RH2sV3YfeB5FPw==
X-CSE-MsgGUID: zdZQMnVNRuKBY/0R9HTI9g==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6757744"
X-IronPort-AV: E=Sophos;i="6.07,158,1708416000"; 
   d="scan'208";a="6757744"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 06:06:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,158,1708416000"; d="scan'208";a="16383436"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Mar 2024 06:06:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 27 Mar 2024 06:06:35 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 27 Mar 2024 06:06:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 27 Mar 2024 06:06:35 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 27 Mar 2024 06:06:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IjhNlI2AnPwQQq2pzhvMbty+7ynJEKtdTJzQ0xKFP9hWVthWaQxyY2VkHpMeHWtg9GfPL5awM/x7w0jaLlko7Ca41Achnw5JaITIrl7GKemtU12O65tX14xp8N3UJLvc+ECo0aJj8X27CDZLnkfmq1JAJgPkeZG3HrvA2gN6Fj0XELszNyuor1t5Z+jlVRoopcS5GsxdMEYVOuOxEac4c28bY9FpSIh7Tee+1sCZiH+IWgIoprxSnHzLNEjnuVxplw6GVp2kxp1x8tsAuNCwffmQf/9MXnUA6D+e/pR2+ItJCJsAdExkBZkbLyiSEp9S+4azpRVvUbGnETQb8AZYjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z+wWUGlTNppP0ZSbPCYJJzfjE9v6OpXTcP19STLvp6g=;
 b=KdSGN79eaDA+U3g0nQGe0+h8ZhlziSTj8M96nIFivEnE5wSEyYR0ynFEI/naYOnIfZa7fuJvMzXBy1UGiYhneZHqM7nvbTZCFyHRfSOPG6ztufN1iwwuE4J77S51BF8YpBptBFOK45r9nr/VN39lC9IpJ5EFWQTk2eXKLZVb1Rl1YnVuLulq7uKYk9DRE9Pk8KttK4KajSgAS67oZ0opcYiSRglniYQpswNUwy1PPLWnBli+Q0sWMoJiIeO+r0HxseAqrZdcHyp5hZTXIeMXASxToajcFbk1GVcfYdK3BNvym5RP+ixZil/W+oHorM1Z2eKJhpLXuoBgp3r0kIFThA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CH3PR11MB7177.namprd11.prod.outlook.com (2603:10b6:610:153::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Wed, 27 Mar
 2024 13:06:32 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::38ba:ed89:d2ef:cd62]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::38ba:ed89:d2ef:cd62%4]) with mapi id 15.20.7409.031; Wed, 27 Mar 2024
 13:06:32 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/5] drm/i915/psr: Move writing early transport pipe src
Thread-Topic: [PATCH 2/5] drm/i915/psr: Move writing early transport pipe src
Thread-Index: AQHaefmzDJQzr4b/bk6InbXkRjn7lbFLmxtA
Date: Wed, 27 Mar 2024 13:06:32 +0000
Message-ID: <MW4PR11MB7054CDA1662585FE1FFB3480EF342@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240319123327.1661097-1-jouni.hogander@intel.com>
 <20240319123327.1661097-3-jouni.hogander@intel.com>
In-Reply-To: <20240319123327.1661097-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CH3PR11MB7177:EE_
x-ms-office365-filtering-correlation-id: 5fce2bd5-5da1-4684-5e83-08dc4e5eb964
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wP3uKp9mleqiAAw7U+fI/FokuhvmWSOKKLY1c5z0TDQGcBticbfFMdadr/F4hW7cH6TXFKWtVu7e2XfuNEH5KLKJ7vLvZ5VXSrLnK09hIrlBg3Iam4LZCwWsTUDFxfRuBUBg/j2f5iUHoMvEUffxJngYTZr3V85S2EwLzA94i6hic+DgSpGP5ZSBQgxI7Tvy5pX1MUkfsReMDYO8oZopJeM/eW75XFrGWPTwJr+9iXlIm4jy/r+tCwzbdo4HJ1aRyuquID/wVvBqHdp37BA0FwNuaKUWqQ+VQxkQRlchw4Ix7SVmxK3gCGkSGn4u0+XZpkzhn9APItrXiIB2c1QzXlL3jbV0hXhhzLhPOuBNhCzKHSptyQfeNeDfEpoTY7uATsph3a6eAmPj5Xw1huu2/AB14yW2fiw8gfScGaQHkEg9/c1vMoYeJPxKk3fCwkpqHvlfwmi1cKC+PuRqjkj0t02DYb/uwxS4EZFl/CIUobakJVYlETr1EqN8NBW2/5RiqrRl+cLfK0QinnU2R/K5FCOgXGL4IRaz1BSjLlcSwyQI1hLJ0/Lx16M33GMp1Gj+f8yJ6FifmGyPOX4hAVh+kWi977kbqeo18vWMu/g8mONvB+9IcPY3piIRQuiwS1VYG2A8b37BovnRu6Y5BKfRTvBrsbqIRqLi3H2CqMzWjsXh5AwZpxQ6t7QcMmQ3FAp3xAJBEIt/ur0dIlcr375Snw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TWl4cXcxUWNOelR1bnVxeTlseklJdlJFR3d6ZDN1WllFSktYa2ZuWDA5cy9H?=
 =?utf-8?B?Y1FuTW01SkdHbmlya011VGFSTFZ6eTZXcUZBeGVpaUxqanh5dVlLdFRIbjRq?=
 =?utf-8?B?ZHpmcjdvU29ycVVWNFh2MG5ZZFNVbUVrUkwvZE1tUThyK3EzN3VUM3FGM0VJ?=
 =?utf-8?B?NXRaSTFXaTc0RW51VDhNSXJ5aGFTUVV6eWJaSkJsbUZQTUYvZmoyRWVuMmQx?=
 =?utf-8?B?NVlTUDhiRXgxdDdXQmtXSmEvNVpEWEpkZXExNUgrMU82d1I4cmsxUDgyTjFF?=
 =?utf-8?B?c1pnYkZqaSs1eXpvZklRNE92T1pLc28wWmcvUEpIelhkQ0h1bzQwd1o5TmFB?=
 =?utf-8?B?anZWSENaNVFtQjFCV25WS1J4TW5vOXpCc1I5YmNvR1hwZU81eGlEeFhsY0xn?=
 =?utf-8?B?dll4amtXNE5rSkdrazJ2KzdNcEc2Yk00WnpXd2ZndWxNL3JHSEZuZkljL0Zm?=
 =?utf-8?B?ZkVOaWE3eWN0d29CMzQyZDhlM0NtZGNjSE9xQUNXUkhTY0ZYWlBPM3E1N1p2?=
 =?utf-8?B?TjB0OTNYN0NVaWxwamIzSlVZQlFtclNpemhiUld2SHJsYnRRaGhqNlR4cGVj?=
 =?utf-8?B?UmRhL09CRDYzYk1MYmRqdmlKbHdiNEwrT3IyWDZDUDFNR3MvMDk5R2ZCOU8y?=
 =?utf-8?B?NzNXRHpCeG04Sm95YStqMHdlTll4MVBwM0kvV1U4dmNKZnMzUzVzcERUdWhL?=
 =?utf-8?B?VDJGMjhwQVl1Q2E4eDRUN2h1Zk53TTVybko2TGdaeUIwc25ScFZBRGVWVzZ0?=
 =?utf-8?B?UTVxVDlhSnZWREQwRlVNTG42dEpRd0l3OEdPa3BEZGg5QkVkTzhycXdmOEZ3?=
 =?utf-8?B?SkZzUVFSd1ViVFJMY0ZwVE55Z3JUSWh4MXdCV3o4R3p1SGJUbnRPZGtmQWdF?=
 =?utf-8?B?VTFGRmFQRXB4ZnBacTJlMDZsSERSdDlWZ2VKd1JUYlNLSUtWK0dGQTdiRys2?=
 =?utf-8?B?czlCRGgxeTV2Q2NndUU2bm83STJCeWpJSUVRUi9CbGxJVlduUUJXQ2sydXdi?=
 =?utf-8?B?RHRhQTZ6LytITTVLWXVCdkJBRnhxL0Fuc0NNdktIOTArUVFIUnNoNE1obzJ1?=
 =?utf-8?B?OWVQK0hUdWYzbmdJVHBGeXVwaDlMcDBMeXNnZmV2b29EaUdzOHYzdnBVcW8z?=
 =?utf-8?B?RGRjNlRlem4xT2FzbE9KbldEd3FHREdtSXlYR3ExR2lXbkhWVy9XRm5LL09I?=
 =?utf-8?B?MTNRNTJRcVMyeWdlZmljb3EzbUR2S0kyK0J1RUg0REFBelFvWjV4RXZaZ1k1?=
 =?utf-8?B?NXcvWlV4S3ZSeVB6TFBrNjM1QXhsMWtQUCtLSmdnZGJjZDVYNitsM1B6NU5l?=
 =?utf-8?B?R1lDTEd6a09JRmlMOTVnaVZ4YXBESzVGdmVPbHNoZllBeDF3bjdnelF6WEdP?=
 =?utf-8?B?RUtNOWpDVkJVVmltVHg3L0dKUHZDR05aT3FwMHNNRTZFRWdKNy9seGN0dkRx?=
 =?utf-8?B?bjZES21zLzA4ZXJUb3FLb3kvNEdnaVNPajd6akhvMEwwbUR5VGRrZ1BuV1hL?=
 =?utf-8?B?MCtoYjVVK3RUQWxLTTBUS0lYMEtKekVHTXZGWVBnRHQ0ejhHbFFsdnVYYmRO?=
 =?utf-8?B?TEVZSFBiUzNPcjNWV290Q2NwZDJ0bXo5N2RqM20xMlpoOGFiVXh3aElpYi9S?=
 =?utf-8?B?aWg2UjJsRElvKzJRelJYTTZ3Uk9JOUg3Vkw3Vk51cWhNUmw2eUtmQkVKNGtC?=
 =?utf-8?B?QnJQMWVERVFhU0Y5TU9UK3VnUDBZd2lCd1pQQWNPVHc0Q0tFMFJhYXo0M085?=
 =?utf-8?B?VVpuR1lWODJGVFd4bEhlamptbVFicWhscU1FU1BSMTVaTVNoWmJvVDlVNGRk?=
 =?utf-8?B?N3dQdFkvb3Y3YTVGN0N1Yk1yeG1DMDkvWDdGSnRlK1VWZ0tPS3NGZVBDaGk2?=
 =?utf-8?B?d3hubXRTc1MyN1gwaC9uOUlKZXNBdUk0OWd0WVpqSkhxYUE3NGJMQ1Y2a0ZH?=
 =?utf-8?B?Zm1vcWZET1VBaG9ZSnRQcmNMQS9Nelg5Ymp6TytRdTZXYkdkbWY1OGZYR3h0?=
 =?utf-8?B?cVp6SDU2QWNmS2szaStxR3k3S3VabzFzLytDc2pLRUVPR2o5S0U4SVdHT01N?=
 =?utf-8?B?T1ZCdUJabzVQNW5tMVpESlRUckx5Q081TlFwaE9vNHVoeEVnQ3BEY0NyNGVh?=
 =?utf-8?Q?81ZBaQdnwK5wW9rOpkz23aP8X?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fce2bd5-5da1-4684-5e83-08dc4e5eb964
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2024 13:06:32.3420 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sQl2aAqbbPRQPwGn80heoz67eHZMxsLLbGfLxpjnW6ydE1yxwE3VXgATpDLQ0o/1pElj/d0/+Zwlqpe93wO82Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7177
X-OriginatorOrg: intel.com
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgTWFyY2ggMTksIDIwMjQg
MjozMyBQTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogS2Fo
b2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91bmkgPGpvdW5p
LmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIDIvNV0gZHJtL2k5MTUvcHNy
OiBNb3ZlIHdyaXRpbmcgZWFybHkgdHJhbnNwb3J0IHBpcGUgc3JjDQo+IA0KPiBDdXJyZW50bHkg
UElQRV9TUkNTWl9FUkxZX1RQVCBpcyB3cml0dGVuIGluIGludGVsX2Rpc3BsYXkuYzppbnRlbF9z
ZXRfcGlwZV9zcmNfc2l6ZS4gVGhpcyBkb2Vzbid0IHdvcmsgYXMgaW50ZWxfc2V0X3BpcGVfc3Jj
X3NpemUNCj4gaXMgY2FsbGVkIG9ubHkgb24gbW9kZXNldC4NCj4gDQo+IEJzcGVjOiA2ODkyNw0K
PiANCj4gRml4ZXM6IDMyOTFiYmI5M2UxNiAoImRybS9pOTE1L3BzcjogQ29uZmlndXJlIFBJUEVf
U1JDU1pfRVJMWV9UUFQgZm9yIHBzcjIgZWFybHkgdHJhbnNwb3J0IikNCg0KUmV2aWV3ZWQtYnk6
IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTog
Sm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA5IC0tLS0tLS0tLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICAgfCA3ICsrKysr
KysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4g
aW5kZXggZDM2NmExMDNhNzA3Li41NWMyYTBmYmQ3OTcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC0yNzA5LDE1ICsyNzA5LDYg
QEAgc3RhdGljIHZvaWQgaW50ZWxfc2V0X3BpcGVfc3JjX3NpemUoY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICAJICovDQo+ICAJaW50ZWxfZGVfd3JpdGUoZGV2
X3ByaXYsIFBJUEVTUkMocGlwZSksDQo+ICAJCSAgICAgICBQSVBFU1JDX1dJRFRIKHdpZHRoIC0g
MSkgfCBQSVBFU1JDX0hFSUdIVChoZWlnaHQgLSAxKSk7DQo+IC0NCj4gLQlpZiAoIWNydGNfc3Rh
dGUtPmVuYWJsZV9wc3IyX3N1X3JlZ2lvbl9ldCkNCj4gLQkJcmV0dXJuOw0KPiAtDQo+IC0Jd2lk
dGggPSBkcm1fcmVjdF93aWR0aCgmY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVhKTsNCj4gLQloZWln
aHQgPSBkcm1fcmVjdF9oZWlnaHQoJmNydGNfc3RhdGUtPnBzcjJfc3VfYXJlYSk7DQo+IC0NCj4g
LQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgUElQRV9TUkNTWl9FUkxZX1RQVChwaXBlKSwNCj4g
LQkJICAgICAgIFBJUEVTUkNfV0lEVEgod2lkdGggLSAxKSB8IFBJUEVTUkNfSEVJR0hUKGhlaWdo
dCAtIDEpKTsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgYm9vbCBpbnRlbF9waXBlX2lzX2ludGVybGFj
ZWQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpIGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCBjYmY5NDk1YzcwNzIuLjk2
MWY5MmQxMDI0MSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jDQo+IEBAIC0yMDE4LDYgKzIwMTgsNyBAQCBzdGF0aWMgdm9pZCBwc3JfZm9yY2VfaHdfdHJh
Y2tpbmdfZXhpdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiANCj4gIHZvaWQgaW50ZWxf
cHNyMl9wcm9ncmFtX3RyYW5zX21hbl90cmtfY3RsKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKSAgew0KPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50
ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOw0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjLT5kZXYpOw0KPiAg
CWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGNydGNfc3RhdGUtPmNwdV90cmFuc2Nv
ZGVyOw0KPiAgCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOw0KPiBAQCAtMjAzNyw2ICsy
MDM4LDEyIEBAIHZvaWQgaW50ZWxfcHNyMl9wcm9ncmFtX3RyYW5zX21hbl90cmtfY3RsKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0DQo+IA0KPiAgCWludGVsX2RlX3dyaXRl
KGRldl9wcml2LCBQU1IyX01BTl9UUktfQ1RMKGNwdV90cmFuc2NvZGVyKSwNCj4gIAkJICAgICAg
IGNydGNfc3RhdGUtPnBzcjJfbWFuX3RyYWNrX2N0bCk7DQo+ICsNCj4gKwlpZiAoIWNydGNfc3Rh
dGUtPmVuYWJsZV9wc3IyX3N1X3JlZ2lvbl9ldCkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJaW50
ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFBJUEVfU1JDU1pfRVJMWV9UUFQoY3J0Yy0+cGlwZSksDQo+
ICsJCSAgICAgICBjcnRjX3N0YXRlLT5waXBlX3NyY3N6X2Vhcmx5X3RwdCk7DQo+ICB9DQo+IA0K
PiAgc3RhdGljIHZvaWQgcHNyMl9tYW5fdHJrX2N0bF9jYWxjKHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlLA0KPiAtLQ0KPiAyLjM0LjENCg0K
