Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D26EE69E4A6
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 17:28:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DA5410E87E;
	Tue, 21 Feb 2023 16:28:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A442010E87E
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 16:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676996936; x=1708532936;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ECilH9m9dtl02vQlekJEEtyWWORW/wb9Ch/F9bcYDLQ=;
 b=QwomTCK1j2gfTJf1ecCCQMZPYStJuG4OPRwPhSNaJzVV8E7/J9eYH6Gx
 5TccxUVF/w5BUJKdXGutOWk6BQE6mJEJw1HFOzYw5zXUfTWrneeZNQwi+
 TbrpA5TxvdohTaYRE1D6bnEtGdS3Zo3r8TLIEssaQG0j+gmAaluPz+oVE
 YDCS0Od/emHak3nAG7rUu/G8o933PcQEJuFWNwcoh1M9Yt8WOfuJo3XMa
 ME/b1Cgol/Yu1RaNROlkhKHfOLzlHwVCAW3f38JcRYT/J5Z283IdOXfRq
 EK2leUM5nweY0E+WFPPO3claPGwSRUxMCiuT0zBl2Z82r7uYSVWtSp/PJ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="316404702"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="316404702"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 08:28:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="795572752"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="795572752"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 21 Feb 2023 08:28:53 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 21 Feb 2023 08:28:52 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 21 Feb 2023 08:28:52 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 21 Feb 2023 08:28:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CsU+ToGl0f4uIIH1CO68ktQ4PTgWdErBRFg2Br3Ucoo1yA6mZdCiKUQMfIGmHL6+F4z89AnExb0Yh6XfxwfdbA2d8O1CaFNB/ad3MIZfytdlMLUaQB44zZlT8xySHNeKawRwtlLlFZsXOnH/p9i8sT+GMsRfoQU08ckY02rnGnTr8rneJk5zxTx6/qBmVzKMJU84AueI0SnEtO2EWkhPrL/1SrLPEdV9lkBG3Rhz9Bym/7fesWmQGkJhbtwh/clCkUI+n4miXckmpN/m6mXd+wsQg2PUt3EYjzfmOh7hT8QRhle+1w0aZ8pbye9d0Fqj36xMgXsCfjpx1Wlx1wRH4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ECilH9m9dtl02vQlekJEEtyWWORW/wb9Ch/F9bcYDLQ=;
 b=ZbpaBFdEj9xMzIcFKV6CMCS9s6dKlmfuqaWV/YYYg7x9sVNmjL8NGx1Jz17jwQI/AmFwvCwWPNmLHXZA6MpoBoJCV3z1rO0taGeQkEjOl6/9TdVd36iRAPEX70oi4ae04dsSHMF4KH8pyYl5qbTSJQd20IqiEC0+djymD7qTFPAAPUIdk1jD1uu+X+HvvJQNQmrZ/WjWYE06FQUhuE5vdL1zP9Qsxbvkb6XGrGB0Oq3W22gY48C9BOb9y+m1pkGZgvhRH/7KY71+uM1wZZeamcObQ7qeMr35ERvvkQjE1t3t8eaoBLd1cm9xREQb+wLcKGCNR7CdbYWZabFd4IAY4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by DM4PR11MB8201.namprd11.prod.outlook.com (2603:10b6:8:18a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.18; Tue, 21 Feb
 2023 16:28:45 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::4f66:bdc8:3cac:956e]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::4f66:bdc8:3cac:956e%3]) with mapi id 15.20.6043.022; Tue, 21 Feb 2023
 16:28:44 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Auld, Matthew" <matthew.auld@intel.com>
Thread-Topic: [PATCH] gen8_ppgtt: Use correct huge page manager for MTL
Thread-Index: AQHZQwU6ctRXEC22Zkm8cMgyPUuOGa7Zlt+AgAAENUA=
Date: Tue, 21 Feb 2023 16:28:44 +0000
Message-ID: <CH0PR11MB5444727E7C9F280059073C1EE5A59@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20230217191813.1104342-1-jonathan.cavitt@intel.com>
 <0f4df8e9-1cb9-b1a4-284d-67fc75b74c2e@intel.com>
In-Reply-To: <0f4df8e9-1cb9-b1a4-284d-67fc75b74c2e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|DM4PR11MB8201:EE_
x-ms-office365-filtering-correlation-id: 5925f319-be4d-406d-010f-08db1428b389
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ikijpE6bRotsJlfQb0/KWFmSz2H2sQFYs2Sd3k0BHEttweJvgjLZdvt6k3Fo7mwG1josVQTzYm09K3nknUh9VGCcU5RCWERe8MzvRk0O50VwScBWMV93nyvzWZc6brQ1mJiWfXTKSuPTfl7DWN623xD5qLwQ/8qXqB6AyGOKyo1trWuVhGYl6lw3GTXcrNba64D52Cu7xGCsMSbVve5YG7H6nd0vAy0le/tC97IqeTuiwGWoO1uZF3q6KlBRlLoB5qUYchDUz4nVfIbggpZ2/rkDkSFXxH0CgXONxpIc8Kqxg25j4KYruPxsk2ikUjeB+RA0Wrv4cjxiZ0Tx/7exxtcGHsTFCkQOYjhjBwGGKn5s5S5XG7kA+7RqygmewKUVgay1NtBauO2/3DBpBDrnod1DMz+lSsWKD0ygkAwTFMREvjVc7PSAz/qxoA5w/ivenE3/BeZNgK60y/uUOCiqRzgAq+OlfVxeSq20h6mS4z1S3CLW4+BpWIlZzpZ+FgIXgolpqLJOyyTIj0adlxZBu3AK4IxfbJhA1EopHF8hP/hzNZoJBU4UKJ/NpfAhpT1aYFtfHaxow0sjxVw9JMfntyRsxvchhQragbE3crwx8/47LKDShJdnDqlp1NPLzsJ6paXZV/fpuY9+UScMZCDEqIadWKfFJ1QNz9ZLnvBzVC/AndkTMycx0yUdWoC4rnG/nu+/sSesFjYnGQlpxrEa6ORQrmSaQ4jMRF2MaLr0Tgo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(366004)(346002)(376002)(136003)(396003)(451199018)(9686003)(26005)(186003)(53546011)(83380400001)(7696005)(54906003)(478600001)(6506007)(71200400001)(316002)(41300700001)(38100700002)(8676002)(66556008)(2906002)(66476007)(6862004)(8936002)(64756008)(4326008)(52536014)(76116006)(66446008)(5660300002)(122000001)(6636002)(82960400001)(66946007)(55016003)(86362001)(38070700005)(33656002)(14583001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YUhZcmc4bUlsdDY5c1lqb1R0RkpRSDVid2xGRU5hZWg5NWtld005Y2NJaW5a?=
 =?utf-8?B?NENjVUFTZDIwRkovTm9yLzdSZnpLd0ZJZllJaWlNWllDRVgySk9sQTROWmxz?=
 =?utf-8?B?eEh1dHJSbFdaZDN3UGRKZjM5ZVpEQnVndXZLVGJsTlR2WDE5d2dOYjc4TEVv?=
 =?utf-8?B?ZHp3eW1pVVQxeHFYZHJWRU5KU0dlRklDK2l3Rnpjd0NNSjVlVm9oOGFYVmNX?=
 =?utf-8?B?ampKZGVTS3BKakR2aVBYT2VETFpRckJVRFlXUTdzVjdCcFRXcWwrNHdIRXZV?=
 =?utf-8?B?WjkvQWNHYUVhRS95MmkxdU43V3hMdHpxbGZabUhJMUZseTkyMkpFZ2lIbThu?=
 =?utf-8?B?OEU2UnI3a3JsYVB2STRHL01kaW9zbmQrY21FNGl5andLL2locHI2WmtvVlN5?=
 =?utf-8?B?NTNYa21iY1RnYnZmcy9kYmhkMmt0S05nb0dKV3E1anRtYTM5TmZiSlJjUWNu?=
 =?utf-8?B?RjltZW04UzRhYkU5bWVXcENsZUliQnB2bUN6WVNNdS9XbHpCNUUwbnVNTFRZ?=
 =?utf-8?B?S2dTaWxWeWpSTkZ0ZHpzRk1lbzV3aEppZXQwTlA5QW9FSUJ4VEc5ZkNRYWxS?=
 =?utf-8?B?cGU2MlM3TTRUYTZzTDBwUG5QcUQxeHNDd3RFVlUrWFJ3TlhBL1A4RUFXcTJN?=
 =?utf-8?B?dVBRMUxmVHhVd3huZ3ltUU93TjJZZElLQWRRS2lUU2lRQkh6T28ySWNxVlBi?=
 =?utf-8?B?d0NkaDQyNjN4ZVloRkVEanlETDYzY0lrUjVkWEdaKzd6eGxId1VKK2YxNHdW?=
 =?utf-8?B?RWJNbU0xanE3VUpCN0tLUHovODdsN2tyaDVpOGExN1ZPZEJWZ1pvRURBcTFi?=
 =?utf-8?B?Vkx6bW1JaUdtaU8wMVJTalU2OFFUam56SXFreitWRmRNb2gzeC9vSE5nVTZM?=
 =?utf-8?B?dHVERXl5TDYxK0lYQVJtTU9Gd1JmWEhTU0RXZFpBUFZhTC9MTGlrVXNLWXdm?=
 =?utf-8?B?Sm1wZEFXRURlNXllOEdzcVU4ZDNTNDNSdjRmUTFxVW53M1o0RWxnWEQ5aE5P?=
 =?utf-8?B?WWU0blZPb3NwdzJLRXhDSHdhTjZ5VVA5L0JsYkFYcFM5QTVzbDNjV0Z6Z0l3?=
 =?utf-8?B?UkZ0ZmFrbTdBM0YrbHhiT0lQNitTVkduOHdGSkZMK0JKbnBHRWt2VHd1Mm0x?=
 =?utf-8?B?c3RjWk8ydStoRlJjVTd4Z3ZrUHJ6andMZlpsKzNsUDU1YjJOS3Y5M0hZaDRG?=
 =?utf-8?B?YXl3MFl5QXROOXFQc09DTko5N1RsWXFyUzZ1NFNTWlROdDdpeXlMVkpCY1J6?=
 =?utf-8?B?QW5Fb0FtVmVydHZ2Q0F3ckFuNEk1R2tzNEJic2pySEtGcjdydUNzQ1h5ekNV?=
 =?utf-8?B?bkZaZS9uYVR4Z0JCYjNYc1VrczZZMkJkLyt6bG4rSktyMjQ1ME81U0ZMa0Ji?=
 =?utf-8?B?OC9lRGNhdFM5Rm9SV0VIeG51aldhWTcrTlk5bGQveUtKeEJwOG15amNrYldx?=
 =?utf-8?B?dVNPblRGMmJWdWVmZEo3STdLU05WakIxaDJmNlJnQTQxM25ENUJWSWJ1RkxK?=
 =?utf-8?B?dDhwVk9uajRXSGNRUEVBRks0RzdSbmxOTnNOSUVmQWpUZ0c4R3VQclZlM3pD?=
 =?utf-8?B?WCs1SnMxWlZ5Z0MyTEFRNTlROGZQTnRmY2ZNcTB3eFNTdWYwZDBKcytqQXZF?=
 =?utf-8?B?ZVJCV1ZEMTE4amxDZHB1ZXJLdGtmYzA5aDBlWFZJeFZ3MU0wUDlOMVpibnFa?=
 =?utf-8?B?SmRXOGNza2NOZElFaFJlSWFZcmc5SWlwbmowdVpva3htUU9uREM4NzFudWh2?=
 =?utf-8?B?cG15QmpMQXNCQzljU0t0TDMrVE5DTXQ3TWxzK3poRVpacFJCclBIWXNwd29q?=
 =?utf-8?B?TExoUUtkMW9IbTN1NU9YWS92VXJMR2VGWng4NHdpS1JLdFRxTnBqUStHTEZR?=
 =?utf-8?B?R1VpcVo0REJoSjhDNGE2MVJ3U2pjQUxERzlLeHRWR2xtTXl0Nkx2eGtJOExw?=
 =?utf-8?B?K0o4djVQTDhhVzlCRkhoZWViVWhNQzVOV0RIYVBUdTR5ZlFpYUVmM1p6c3Zq?=
 =?utf-8?B?aE5wZERFZENKWHpVOGRlNjA0Z2NnczdmUDJVbzcyVHVxWjVubjV3WTNRZHM2?=
 =?utf-8?B?QkZDdlZrWnVXTlhWY3ltWWdBT1FRYkhlT25jd3dGNklNanNIVjRDVDVLOS95?=
 =?utf-8?Q?dawu8RO1lDrWPqNFtZZLbBbqV?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5925f319-be4d-406d-010f-08db1428b389
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2023 16:28:44.6092 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MXyfq3XK5t8t/cJ+cqy4aaCqQtn0f5fvpKt1e/uHqW8+HouSj2ZxDhpTZ4btUwlaDZQuqoWcyBp6+xFkyiDGPpzjnpkpCBruUsJ8k53Twjc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8201
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] gen8_ppgtt: Use correct huge page manager
 for MTL
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEF1bGQsIE1hdHRoZXcgPG1hdHRoZXcu
YXVsZEBpbnRlbC5jb20+IA0KU2VudDogVHVlc2RheSwgRmVicnVhcnkgMjEsIDIwMjMgODowNiBB
TQ0KVG86IENhdml0dCwgSm9uYXRoYW4gPGpvbmF0aGFuLmNhdml0dEBpbnRlbC5jb20+OyBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogRHV0dCwgU3VkZWVwIDxzdWRlZXAuZHV0
dEBpbnRlbC5jb20+OyBTaWRkaXF1aSwgQXlheiBBIDxheWF6LnNpZGRpcXVpQGludGVsLmNvbT4N
ClN1YmplY3Q6IFJlOiBbUEFUQ0hdIGdlbjhfcHBndHQ6IFVzZSBjb3JyZWN0IGh1Z2UgcGFnZSBt
YW5hZ2VyIGZvciBNVEwNCj4gDQo+IE9uIDE3LzAyLzIwMjMgMTk6MTgsIEpvbmF0aGFuIENhdml0
dCB3cm90ZToNCj4gPiBNVEwgY3VycmVudGx5IHVzZXMgZ2VuOF9wcGd0dF9pbnNlcnRfaHVnZSB3
aGVuIG1hbmFnaW5nIGh1Z2UgcGFnZXMuICBUaGlzIGlzIGJlY2F1c2UNCj4gPiBNVEwgcmVwb3J0
cyBhcyBub3Qgc3VwcG9ydGluZyA2NEsgcGFnZXMsIG9yIG1vcmUgYWNjdXJhdGVseSwgdGhlIHN5
c3RlbSB0aGF0IHJlcG9ydHMNCj4gPiB3aGV0aGVyIGEgcGxhdGZvcm0gaGFzIDY0SyBwYWdlcyBy
ZXBvcnRzIGZhbHNlIGZvciBNVEwuICBUaGlzIGlzIG9ubHkgaGFsZiBjb3JyZWN0LA0KPiA+IGFz
IHRoZSA2NEsgcGFnZSBzdXBwb3J0IHJlcG9ydGluZyBzeXN0ZW0gb25seSBjYXJlcyBhYm91dCA2
NEsgcGFnZSBzdXBwb3J0IGZvciBMTUVNLA0KPiA+IHdoaWNoIE1UTCBkb2Vzbid0IGhhdmUuDQo+
ID4gDQo+ID4gTVRMIHNob3VsZCBiZSB1c2luZyB4ZWhwc2R2X3BwZ3R0X2luc2VydF9odWdlLiAg
SG93ZXZlciwgc2ltcGx5IGNoYW5naW5nIG92ZXIgdG8NCj4gPiB1c2luZyB0aGF0IG1hbmFnZXIg
ZG9lc24ndCByZXNvbHZlIHRoZSBpc3N1ZSBiZWNhdXNlIE1UTCBpcyBleHBlY3RpbmcgdGhlIHZp
cnR1YWwNCj4gPiBhZGRyZXNzIHNwYWNlIGZvciB0aGUgcGFnZSB0YWJsZSB0byBiZSBmbHVzaGVk
IGFmdGVyIGluaXRpYWxpemF0aW9uLCBzbyB3ZSBtdXN0IGFsc28NCj4gPiBhZGQgYSBmbHVzaCBz
dGF0ZW1lbnQgdGhlcmUuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSm9uYXRoYW4gQ2F2aXR0
IDxqb25hdGhhbi5jYXZpdHRAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxk
IDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPg0KPiANCj4gQWx0aG91Z2ggaXQgbG9va3MgbGlrZSB0
aGUgaHVnZXBhZ2UgbW9jayB0ZXN0cyBhcmUgZmFpbGluZyB3aXRoIHRoaXMuIEkgDQo+IGFzc3Vt
ZSB0aGUgbW9jayBkZXZpY2UganVzdCB1c2VzIHNvbWUgIm1heCIgZ2VuIHZlcnNpb24gb3Igc28s
IHdoaWNoIG5vdyANCj4gdHJpZ2dlcnMgdGhpcyBwYXRoLiBBbnkgaWRlYXMgZm9yIHRoYXQ/DQoN
CldpdGggdGhpcyBwYXRjaCBhcHBsaWVkLCBtdWx0aXBsZSBjYWxscyB0byB0aGUgaHVnZXBhZ2Vz
IGxpdmUgc2VsZnRlc3QgcmVzdWx0IGluIGEga2VybmVsIHBhbmljLg0KSWYgdGhlIG1vY2sgdGVz
dHMgYXJlIHJ1biBpbW1lZGlhdGVseSBhZnRlciB0aGUgbGl2ZSBvbmVzLCB0aGF0IHdvdWxkIGV4
cGxhaW4gdGhpcyBiZWhhdmlvci4NCkkgd2FzIGluZm9ybWVkIHdoZW4gdGhpcyB3YXMgaW5pdGlh
bGx5IGRlYnVnZ2VkIHRoYXQgdGhlIGVycm9yIHdhcyBhIGtub3duIElPTU1VIGlzc3VlDQpyYXRo
ZXIgdGhhbiBzb21lIG5vdmVsIHJlZ3Jlc3Npb24sIHRob3VnaCBpdCdzIGhhcmQgdG8gdGVsbCBp
ZiB0aGF0IHdhcyBqdXN0IGhvcGVmdWwgb3B0aW1pc20NCm9yIG5vdCBhdCB0aGlzIHBvaW50Lg0K
LUpvbmF0aGFuIENhdml0dA0KDQo+IA0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvZ2VuOF9wcGd0dC5jIHwgMyArKy0NCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvZ2VuOF9wcGd0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2Vu
OF9wcGd0dC5jDQo+ID4gaW5kZXggNGRhYWE2ZjU1NjY4Li45YzU3MTE4NTM5NWYgMTAwNjQ0DQo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuOF9wcGd0dC5jDQo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuOF9wcGd0dC5jDQo+ID4gQEAgLTU3MCw2ICs1NzAs
NyBAQCB4ZWhwc2R2X3BwZ3R0X2luc2VydF9odWdlKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2Ug
KnZtLA0KPiA+ICAgCQkJfQ0KPiA+ICAgCQl9IHdoaWxlIChyZW0gPj0gcGFnZV9zaXplICYmIGlu
ZGV4IDwgbWF4KTsNCj4gPiAgIA0KPiA+ICsJCWRybV9jbGZsdXNoX3ZpcnRfcmFuZ2UodmFkZHIs
IFBBR0VfU0laRSk7DQo+ID4gICAJCXZtYV9yZXMtPnBhZ2Vfc2l6ZXNfZ3R0IHw9IHBhZ2Vfc2l6
ZTsNCj4gPiAgIAl9IHdoaWxlIChpdGVyLT5zZyAmJiBzZ19kbWFfbGVuKGl0ZXItPnNnKSk7DQo+
ID4gICB9DQo+ID4gQEAgLTcwNyw3ICs3MDgsNyBAQCBzdGF0aWMgdm9pZCBnZW44X3BwZ3R0X2lu
c2VydChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwNCj4gPiAgIAlzdHJ1Y3Qgc2d0X2Rt
YSBpdGVyID0gc2d0X2RtYSh2bWFfcmVzKTsNCj4gPiAgIA0KPiA+ICAgCWlmICh2bWFfcmVzLT5i
aS5wYWdlX3NpemVzLnNnID4gSTkxNV9HVFRfUEFHRV9TSVpFKSB7DQo+ID4gLQkJaWYgKEhBU182
NEtfUEFHRVModm0tPmk5MTUpKQ0KPiA+ICsJCWlmIChHUkFQSElDU19WRVJfRlVMTCh2bS0+aTkx
NSkgPj0gSVBfVkVSKDEyLCA1MCkpDQo+ID4gICAJCQl4ZWhwc2R2X3BwZ3R0X2luc2VydF9odWdl
KHZtLCB2bWFfcmVzLCAmaXRlciwgY2FjaGVfbGV2ZWwsIGZsYWdzKTsNCj4gPiAgIAkJZWxzZQ0K
PiA+ICAgCQkJZ2VuOF9wcGd0dF9pbnNlcnRfaHVnZSh2bSwgdm1hX3JlcywgJml0ZXIsIGNhY2hl
X2xldmVsLCBmbGFncyk7DQo+IA0K
