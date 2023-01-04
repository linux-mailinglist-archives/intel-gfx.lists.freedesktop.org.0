Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB9065D228
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 13:13:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6E8010E06B;
	Wed,  4 Jan 2023 12:13:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0DAA10E06B
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 12:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672834418; x=1704370418;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=L2e8UVPod83VnxjPVhcAezguBJwTkLmdhMRikeiXaBI=;
 b=BsYVUS9bWJDKZcQIeMu2PObCgjZpdkQc4mdSEaH62TXMD8fkMTZdVk5U
 oTiHbtDSR1eJ8XK7r71CR3MQrAOSUvg/W9cXOevDL6mIfstYYV8Z6qFHv
 MXjzQlzpu1CMBJ1wIMAHz7mbCJDCka29Ocbn3P65So4Ip9XDR+TZHzTst
 /RGD69dtPqQ3nsPz9ylOdlJf4xNm/Ysz5FIUR8oMIyJxkCbTxnQgfgRCN
 ah+vFYJwaM0BX0XB+QHqyRIqgGi7J2AmzWpQC436Fv4hi25XKIH3uneFy
 PCTIBJqyIi/PMNsfqd4sPYmd/l9xQZmB9WMFbDnuUjWwE4qfqUtAXMiBK w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="323158224"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="323158224"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 04:13:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="900533839"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="900533839"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 04 Jan 2023 04:13:36 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 04:13:36 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 04:13:35 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 4 Jan 2023 04:13:35 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 4 Jan 2023 04:13:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YFgACFiOKewqYeq2trmuHlYg1BOU90Io5R3ddczk3DYQGnrn26gX/KfKt0jVTixPMbc3+RY90g9UvbnvDzu3/7oUycAK8KzGaqQPEWYXmzs5p2JPmsYnyaiM1eIHf++k8yBw7FlfLpqMU+j46+zg6LYMQITcb8l6+MCdEfv5bKAq7TsWCgBWIHFesiCVFGcrndbCc2j8au+aEhfngZrGpoyLxSV0AgK9d8uW9RYs1A2yBj745tvZZp7AvK0UC8vJJNznVNDnepj04wqB15RjiEnRd55o+RdFKRt+TietrNBaxO1XKxsha+/8JxyxTg18bFD7s5hioC4h7nORhJ0GTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L2e8UVPod83VnxjPVhcAezguBJwTkLmdhMRikeiXaBI=;
 b=e80JPra2nSF5rGSYcXpXgXcMxjiRwIiSsU4hgsAb3PbWT/cfGYWPsCUhw1TuFtEaA/r4CKv565T1qY6DsjIwzhft46yq2zLQ31pbshlqKUACmKIPni8ilJczm0Yx8CkEdQK4DaBJdZfjj8MFrIj6chgk1D6ElFHX4GcxCAcPsy20F65uy7qwpZUAEoApG9ymjuGiyGylrzGQ7xWtyU5d6duOL1lUzQiG7nuPM0NIk3nVHaKJIxLeOivWtrUtLzgTdS1793Qi6RIUErR6mjSXMZ0++1N6qSDPoloIVbnZCP48FXEfW4ml8ol/4uqEnLKAn0dZxu55V/jY3e06xxeaVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SN7PR11MB6899.namprd11.prod.outlook.com (2603:10b6:806:2a7::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 12:13:34 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2%3]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 12:13:34 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 07/13] drm/i915/dsb: Improve the indexed reg
 write checks
Thread-Index: AQHZEObLla8wM+StYkeN+R9TU8xlp66OQ9uw
Date: Wed, 4 Jan 2023 12:13:33 +0000
Message-ID: <PH7PR11MB5981D708231F4878D8951E3AF9F59@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
 <20221216003810.13338-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20221216003810.13338-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SN7PR11MB6899:EE_
x-ms-office365-filtering-correlation-id: 5109b749-fff9-409e-eb3b-08daee4d19d8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dywaIZF85vQC7uvG+BDZSrI8sh2ITDtyzNNrlVyGKCaXf81+kFdSFSdfkwWMA1isCyTdZdek9XMi9U4vtHz5DLpKFSX36ZWiToFOSBPS5bSwNXPYGYwSyNUr/pW84AbizqcGQDGuJ7IEv6A+n5ZRPcCFzLczfEOqZBhMlTq8XlQKW2o+QNLWnXGQReydd2OB5rzfFt5sx9leoEm3jCW09xROxyAgULXqngvPHimmPHuCRHs3owiA/wUg/oYo4rqbi/Y2Ook3ksXLXXM34pxqHmZYA0+v7KTOXmOsln5RSXA1mDS2PObIAVxBgBSdlMhaaSHndDyos0OEEMBdKwbhPwQNSnL7LzIPJe+Gjs214KtYNaVK6b4ZRrBJaTeEMxDq4AbuAc8nvJRAy7J4smE9lZd3wmHuv9YZAUJ5Fl+8JWB2bUkJhnn57tk8n9DJY7E8rsQIWDmZIZtGAslhTGbDHW0duI8IOdptWVlR2lEEKAeQRKQHXL+5m1i2uCp/Xwbm5oaw7STjOEGl9TRn7pM3foVMI/Fzc23NPtpwFhpluHP/cuk5vNcAL0z1Y8DSJs6XigsCnFNaKkXdjIxZ1sKJQ3sk+66CZdEKUTmOQIVamP7q6LOKNl41ap4T3pk3i1sRvL7I5vLX431mw1yLGC0VmuovBDs3PWvrcQn2tlakKM6uqPPQyDTDMAYycyMTtTRqN5gnCOoBBIUNUefjUWmicw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(136003)(396003)(376002)(346002)(451199015)(83380400001)(86362001)(38070700005)(122000001)(82960400001)(2906002)(8936002)(52536014)(41300700001)(5660300002)(55016003)(53546011)(6506007)(55236004)(478600001)(9686003)(26005)(186003)(66446008)(316002)(8676002)(64756008)(66476007)(66556008)(66946007)(7696005)(71200400001)(110136005)(38100700002)(76116006)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dENVWms2aUNMTk01dnU1L2c5Y085bEcwNFIzNjVnL0NlOUtGVjZBbDNCY1d6?=
 =?utf-8?B?aEM5SWo3V1pzZ2hIcXhCYjZJS1ovRk9wYS9lMUw4QWR1c2doeVlDa1lkZXYr?=
 =?utf-8?B?TVZod0hkZUxneTl0dVQ4RDRCZ3NaUjMrOEROWURucUdROWttMFI3STZ2azFy?=
 =?utf-8?B?MVN4RWxUTmlUVkluaVBmaFB0UG1FVUw0dFhhUmNidEVRUmQybDBPY215QUd1?=
 =?utf-8?B?MC9PUVFkUmtsaHRKSFUwNlpOVlViczI4ZGNYaEc5WWEwTm94b1EyREVabE41?=
 =?utf-8?B?VlQ4a1RySmtMZFU5NFJIUmJNWWFYczZNckNsS3pwQjRHb0VBbjFlS3VOeUpq?=
 =?utf-8?B?b0lnYVJ6bkxyWnVhcVY3UnVvWG9ZM2wvQ3RmbkUrUGZYUzFabzY1dzJOOERa?=
 =?utf-8?B?aWw2dktISDRnelhLeERaYVFycUNNdmY2dE0vMEF3aUYrUmhwWmJhbTBvb0li?=
 =?utf-8?B?dVIwZHAyLzlnaTQ2OVd4eWJzQ05kbVpkb01xOHlibTVUK2pzTUNPa2hTbVpY?=
 =?utf-8?B?bXJudnl6bXEzMW4zakFiRkhGY0gwV0dwWHp6c3ZkaEVzeDBweGNYNG0vVnRF?=
 =?utf-8?B?TCs3WFgwalgzY01qSzFlNkFlOWpSR0lSQWVSZ2xvSTBncEJSemRXS3htNEJE?=
 =?utf-8?B?bzkzT2lVMUhETjdWL0NyalFWRkNJbjNQVjU3aEN6RHlab0pIeUlFZXYzYUcr?=
 =?utf-8?B?ZTdId2FnNDdmNzlUR3RUUmNVQThJa00vWUU3TGJKNzJvZDlQZTdCc015NFdS?=
 =?utf-8?B?MWY1aFRkc1k0MVF6SXVaZTQ4WjJzS29ObENhZXJlbWM3VUNvakxOWnRSMkxp?=
 =?utf-8?B?VldUYWwwdzRMb3UwZTNVdGRKYjFvcEtLd3FwOVoxRndHT0VLcXVneTR5U3k2?=
 =?utf-8?B?MkNYd1JxM01Iem1PS2M0UWFPZDQ0ZWdYS1FGOVUxSmRveUN3M2tncDVqTDlP?=
 =?utf-8?B?dG9ORUNrWTNNTmJrVWg3cmJSTmxZcm9Wb1JUb3dIMVpMMVRPczJHYUZYYlYv?=
 =?utf-8?B?RzNmK1VSM1BSNXdRd2k0bmcrWkJGRjg4dW1kR0tlTTFBOWNJNS80L1BzaVUw?=
 =?utf-8?B?SFFjelVrbnZNQ28zNGJJQWkvSXEzQ01KdVpQQWZsQjhzZGxCbHgwYmJvQVRw?=
 =?utf-8?B?bFFOSytsZXUyQWpNMHA2cU1aR0lYbnJwaHFRb1V5aGJSL2szbjRsWnR4cTc3?=
 =?utf-8?B?aGRyd0ZxVW9ENWV0UFFrc2NYRk81REpLS25USWpONnhScVYyTCtuSEs2TjJZ?=
 =?utf-8?B?UzNiZUNGUFBhS3NMM2JPZ3VraGNzY2JUSm5qQnFkWThMRVNCWFZ1WktzeXZT?=
 =?utf-8?B?cmhLdmp5MzRWWXg5dlhyZWM4UGI3NnlSNXl5VWovaGpwLzlOUnN0ZVJQYmto?=
 =?utf-8?B?dDFTUzdwUEtSN1JBY0F4NTcyTlBoSTFTLzhBZTRCcXN6amliOVRMZnc1YU9B?=
 =?utf-8?B?bXJBd2FXUlp4N0EwWHZXMnNUa1JGMklRa3ArdmoyTkFmek94RGFHUkVFMlE1?=
 =?utf-8?B?RFlST3FzZjl0bC9DZVQzaEVjaGE5Wm91RHM0b2MrR2J6U1RIS2k5RzIwKzhv?=
 =?utf-8?B?QWJFb3d0MFVUVTNhWHJYYStnak5rRklHZzdvMGkvSVJvQ0NnWjZZTkRRR1FQ?=
 =?utf-8?B?R0xOQUgyejVnTkoySGhERXo3M1lCK0wzL2tCdU8rb1h0REZEK2JZdHZJcGpT?=
 =?utf-8?B?azM0SkswK1EvWUtBZnNRVStNUXQwZG1mcUZVSng0NEZGMXlZelJNNVZSa2dD?=
 =?utf-8?B?R2pJc0lScWtKWGkzeGt0ak00MmhrWFVnSW1UWkdFTU13emJaVS9oYmY4VXBI?=
 =?utf-8?B?QVNreGRsRVRBampCcGM3RFpxMzVhUXRSV294RHFBWDhYNnIzYzJNajBzY0xl?=
 =?utf-8?B?ZkNpekRIK0JEMU1zVXZGY3AzV2dMTTBEZmhya1FkMGpCUzRaaWtCRklvL2Vs?=
 =?utf-8?B?aGo2MWRwV0N2Z3RUdDlZSDdoNjJCb3BMb3BNWGFpUTNTdW9nRm9qcWdKQW1F?=
 =?utf-8?B?VHhCUEhjMTQ1N2F2U25IZmZxbml5ZDBHcWg0V09ORUF5V3FYQ1dVWDU0bTBZ?=
 =?utf-8?B?UlJMWlh6dzBKaDhtY2N0THVCY0ViTk4rcHBYSVN1Z29IQ1lGTG9zUUdrSkVy?=
 =?utf-8?Q?GxFOjAJzvOfbs84ZuJXcvE4V9?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5109b749-fff9-409e-eb3b-08daee4d19d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2023 12:13:33.9416 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bVwDAz9+yz2i/vyPljTkGxxUxFu5A8C0ouam7t51leM/oN2hPTLDV70SHNhSrL6z/X2fMXaJlz38udv7zQiGQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6899
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 07/13] drm/i915/dsb: Improve the indexed reg
 write checks
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IEZyaWRheSwgRGVjZW1iZXIgMTYsIDIwMjIgNjowOCBBTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4
XSBbUEFUQ0ggMDcvMTNdIGRybS9pOTE1L2RzYjogSW1wcm92ZSB0aGUgaW5kZXhlZCByZWcNCj4g
d3JpdGUgY2hlY2tzDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPg0KPiANCj4gQ3VycmVudGx5IGludGVsX2RzYl9pbmRleGVkX3JlZ193
cml0ZSgpIGp1c3QgYXNzdW1lcyB0aGUgcHJldml1cw0KDQpUeXBvIC0gcHJldmlvdXMgaW5zdHJ1
Y3Rpb24uDQoNCj4gaW5zdHJ1Y3Rpb25zIGlzIGFsc28gYW4gaW5kZXhlZCByZWdpc3RlciB3cml0
ZSwgYW5kIHRodXMgb25seSBjaGVja3MgdGhlDQo+IHJlZ2lzdGVyIG9mZnNldC4gTWFrZSB0aGUg
Y2hlY2sgbW9yZSByb2J1c3QgYnkgYWN0dWFsbHkgY2hlY2tpbmcgdGhlDQo+IGluc3RydWN0aW9u
IG9wY29kZSBhcyB3ZWxsLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KV2l0aCB0aGUgYWJvdmUgbWlub3IgZml4
LCBMR1RNLg0KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwu
Y29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2Iu
YyB8IDIxICsrKysrKysrKysrKysrKysrKy0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDE4IGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHNiLmMNCj4gaW5kZXggZmIyMGQ5ZWU4NGE0Li5mY2MzZjQ5YzU0NDUgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBAQCAtMTAy
LDYgKzEwMiwyMyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kc2JfZW1pdChzdHJ1Y3QgaW50ZWxfZHNi
ICpkc2IsIHUzMg0KPiBsZHcsIHUzMiB1ZHcpDQo+ICAJYnVmW2RzYi0+ZnJlZV9wb3MrK10gPSB1
ZHc7DQo+ICB9DQo+IA0KPiArc3RhdGljIGJvb2wgaW50ZWxfZHNiX3ByZXZfaW5zX2lzX3dyaXRl
KHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwNCj4gKwkJCQkJdTMyIG9wY29kZSwgaTkxNV9yZWdfdCBy
ZWcpDQo+ICt7DQo+ICsJY29uc3QgdTMyICpidWYgPSBkc2ItPmNtZF9idWY7DQo+ICsJdTMyIHBy
ZXZfb3Bjb2RlLCBwcmV2X3JlZzsNCj4gKw0KPiArCXByZXZfb3Bjb2RlID0gYnVmW2RzYi0+aW5z
X3N0YXJ0X29mZnNldCArIDFdID4+DQo+IERTQl9PUENPREVfU0hJRlQ7DQo+ICsJcHJldl9yZWcg
PSBidWZbZHNiLT5pbnNfc3RhcnRfb2Zmc2V0ICsgMV0gJiBEU0JfUkVHX1ZBTFVFX01BU0s7DQo+
ICsNCj4gKwlyZXR1cm4gcHJldl9vcGNvZGUgPT0gb3Bjb2RlICYmIHByZXZfcmVnID09DQo+IGk5
MTVfbW1pb19yZWdfb2Zmc2V0KHJlZyk7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyBib29sIGludGVs
X2RzYl9wcmV2X2luc19pc19pbmRleGVkX3dyaXRlKHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwNCj4g
K2k5MTVfcmVnX3QgcmVnKSB7DQo+ICsJcmV0dXJuIGludGVsX2RzYl9wcmV2X2luc19pc193cml0
ZShkc2IsDQo+IERTQl9PUENPREVfSU5ERVhFRF9XUklURSwNCj4gK3JlZyk7IH0NCj4gKw0KPiAg
LyoqDQo+ICAgKiBpbnRlbF9kc2JfaW5kZXhlZF9yZWdfd3JpdGUoKSAtV3JpdGUgdG8gdGhlIERT
QiBjb250ZXh0IGZvciBhdXRvDQo+ICAgKiBpbmNyZW1lbnQgcmVnaXN0ZXIuDQo+IEBAIC0xMTks
NyArMTM2LDYgQEAgdm9pZCBpbnRlbF9kc2JfaW5kZXhlZF9yZWdfd3JpdGUoc3RydWN0IGludGVs
X2RzYg0KPiAqZHNiLA0KPiAgCQkJCSBpOTE1X3JlZ190IHJlZywgdTMyIHZhbCkNCj4gIHsNCj4g
IAl1MzIgKmJ1ZiA9IGRzYi0+Y21kX2J1ZjsNCj4gLQl1MzIgcmVnX3ZhbDsNCj4gDQo+ICAJaWYg
KCFhc3NlcnRfZHNiX2hhc19yb29tKGRzYikpDQo+ICAJCXJldHVybjsNCj4gQEAgLTE0MCw4ICsx
NTYsNyBAQCB2b2lkIGludGVsX2RzYl9pbmRleGVkX3JlZ193cml0ZShzdHJ1Y3QgaW50ZWxfZHNi
DQo+ICpkc2IsDQo+ICAJICogd2UgYXJlIHdyaXRpbmcgb2RkIG5vIG9mIGR3b3JkcywgWmVyb3Mg
d2lsbCBiZSBhZGRlZCBpbiB0aGUgZW5kDQo+IGZvcg0KPiAgCSAqIHBhZGRpbmcuDQo+ICAJICov
DQo+IC0JcmVnX3ZhbCA9IGJ1Zltkc2ItPmluc19zdGFydF9vZmZzZXQgKyAxXSAmIERTQl9SRUdf
VkFMVUVfTUFTSzsNCj4gLQlpZiAocmVnX3ZhbCAhPSBpOTE1X21taW9fcmVnX29mZnNldChyZWcp
KSB7DQo+ICsJaWYgKCFpbnRlbF9kc2JfcHJldl9pbnNfaXNfaW5kZXhlZF93cml0ZShkc2IsIHJl
ZykpIHsNCj4gIAkJLyogRXZlcnkgaW5zdHJ1Y3Rpb24gc2hvdWxkIGJlIDggYnl0ZSBhbGlnbmVk
LiAqLw0KPiAgCQlkc2ItPmZyZWVfcG9zID0gQUxJR04oZHNiLT5mcmVlX3BvcywgMik7DQo+IA0K
PiAtLQ0KPiAyLjM3LjQNCg0K
