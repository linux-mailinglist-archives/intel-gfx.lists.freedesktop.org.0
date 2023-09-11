Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 621F679AA99
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 19:42:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FFA010E34E;
	Mon, 11 Sep 2023 17:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B871B10E1B1
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 17:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694454174; x=1725990174;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ToeZWLTl5oxXDcBZtQY6Jc+02n7PWoOeHD2UV975aws=;
 b=lvxl+l086e9LMaCJpf2ukmscLPwieMwLfZlqrV9jcIx0UKKZz8AsE/6X
 OP6FEpxegdBxXxOOrSgYoBXjs+MLeVtESS2Xs7ddIlw9dEXBcIyoK5rZm
 fLM9Vdy8157FrdbsAo3pHf894sxX5tVNKLtQnISTLBb8/wtkn3NZZiDeH
 FNx5GTvT9eq5+3S2NGEQoATfJGW9tlfZ1+uoMoyETZ/5iSYkYH2fSjUNq
 gWGswLtfi/gKcihN4k40XAQG7yI7+oCN5reNdGvrXWTIhT0DS4QWk+cJX
 hNl6r8eF9RXbkGWv2bjEtzY5nUld2pArL3fH21PvnUoSnveK0fZdEBli4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378066746"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="378066746"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 10:42:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="858427471"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="858427471"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 10:42:54 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 10:42:53 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 10:42:53 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 10:42:53 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 10:42:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hWeSajDDWN3vutiNu9EZQgP/3n11N1Z3/+wVOTqaKY3Usb98dq/zQlGU2SygKoodZv9S6vamwBQrb6xXrEWLeauHTuoKbD+xMfwjroWSuyYznzoa5VsIgwLETuHEnDIbAfpwEd0uSCsv/5GSY7vIQghJFsDA+4RurXD3+0zh428BYioIkpM+Jia1eXChn8qryNBT9pALhbq9TxtHRDFh7AMx9hRh/VjmbHPaApC9AhbDy4W01To1HfJazfmwwxxmn/skpCi2FUfKT6yz6qTJzpDAJq9hxTlrrwocfvTAh7aWu2gr2zTgqIRCx3eMrm0HEd0KGM9v8YrWDO6kvlje/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ToeZWLTl5oxXDcBZtQY6Jc+02n7PWoOeHD2UV975aws=;
 b=HWWWjXE3CLVpgRGTufMGV7cCKwBcN1x2c+9+pEi4SSIhExmst/1d61WM+YoOBOetwV9jXWhkdMrS0MMMufASrDZbi0N1qtBGT670wStO/CLM66sR6lxxe8ZqDYnnMGPNqWle1bOEjAhJqv9OlNhOnxFRmbUxR08S9zQrmo3SSAkN3vkk73D287QnOohPgL7qmob693UfXwhzLJvIDLWwoPX3TiT2DrVxvIEyT5BD+pYiDBq5aOUq9b3gZ3TT8og+uaeD4c5wcibd9SxCuYhzCg0FlsnsXHplcTr8r+Xh0Pv37G/7gB7kKJbptEFbQjFJe7nG/v1FRMi89+dtM8pneQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DS0PR11MB6543.namprd11.prod.outlook.com (2603:10b6:8:d1::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Mon, 11 Sep
 2023 17:42:51 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4426:1551:a299:9a85]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4426:1551:a299:9a85%7]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 17:42:50 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 01/12] drm/i915: Move psr unlock out from the
 pipe update critical section
Thread-Index: AQHZ3NTxKyD+2TQVyk6b/oRKhsYpD7AV9Nvw
Date: Mon, 11 Sep 2023 17:42:50 +0000
Message-ID: <IA1PR11MB634838F22D49C90A054F6EA9B2F2A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
 <20230901130440.2085-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20230901130440.2085-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DS0PR11MB6543:EE_
x-ms-office365-filtering-correlation-id: 1965b0f0-e0a1-4a8b-6515-08dbb2ee851f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XxzwHNpUiSJLEvaTrh504B910FVuOap7dt9Bz5iWF64Oj5ldfCOuGyqlCxMLCtoo9p7XeZFBGHgkOdCqDhKyUfjWDACKX0toP3RuyBlrKrEmfcCdb0Cnb5u6qOgwgcMf9sNN8qWRG3n4hcNBjj/0iz5uZNbHtYuvuFuB4IrsuvZ+pSE2R2hE4LHtgzpbU5oBVq4UssOFP+UFeWUkLCVY4HZUcGQdc4LyT/Q+JHi9ehuB2+MNx0dw3f3lxUaOgkqWz+h9E5JKqJ0Jn7wobC2eNt8gfYAj+GVAnLXtBg8ZMVGahKQfOJ3/ome1fnDohp+nMe9RYDpbqyYxijYgTNC6dx7dSIrJ8VILjrEhmpVubtPGsr/bUJCo320rDYFsoqNsA8UMK5e/PBwQOKwsR3b/7VtxEGN6C/elPv3vrxcAhChqnsQWGceSi8epckZ0C2bCEVv6kEZqg+v13ODnT9JJfz9Zn8B+jdGFQDJJHaz3lEa21tQC3V8Nbt2/WxxQTPOJYOHx0HpFmNF0XceoGx5CsbNtuO4nOZdny+plv3EI5OQCxm1/umGvOi1N7XDLU0SD6Wc1o1FOzF4BtfM4Iy/B6qkvqUhuIQ0mziPhXE6Zp/HQjkTyjcdvONKf7YQo9ZRE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(136003)(346002)(376002)(396003)(451199024)(1800799009)(186009)(7696005)(71200400001)(6506007)(53546011)(55236004)(9686003)(478600001)(66476007)(15650500001)(83380400001)(66574015)(26005)(76116006)(2906002)(41300700001)(64756008)(52536014)(66556008)(316002)(110136005)(8936002)(8676002)(66946007)(66446008)(82960400001)(86362001)(38100700002)(33656002)(55016003)(38070700005)(5660300002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VlZpQzJpZGcwOTVoUkpuWFpkNlVISXBzaS94MlYvcnkvY2IxdXVJenE0Y2No?=
 =?utf-8?B?MGdOSjlBU3dBbkJRQlhlYnYrTkt0L0I3OHVaVVhiSWJpMExuSGdqaVdNRTAx?=
 =?utf-8?B?bFFnMmlUeTJVWUVMTTBtZEVtVUlFaTJJUXBFMzIrbVl5UDdFK2UvNU81enhO?=
 =?utf-8?B?VFVBRkoxUVp1bXlTL25HNlNpWnlxWmViTHk3NDlHNUdSdXY3alRGeWZyYzhH?=
 =?utf-8?B?N3pnMmpnYXFUaGZYTE84cER5Z2xTOW5VQ2wrczBOUGRXVXZ0MlVoSjNuYnBz?=
 =?utf-8?B?U2RBb0dSQ1hGMXBhN1BzbEh3TFZDS1dzYnVweGdqRmY2dkR4MnVOUnFxL1hz?=
 =?utf-8?B?ekh1eEJYNXp3WWpIUGk3dEpCa3l5TFRDaGF4TFRFdEY3YUVESUhEQk1NcnhI?=
 =?utf-8?B?dEQ5MnBzRmJzZEpId0M5OUw5LzQ1SUozVC91VFJyZHhKS2tjZDdKeVUwQXV2?=
 =?utf-8?B?bkZzNnJRRUwvejcyMUpxbTZkdDZIL2JxR09UVGFiREY5TUZQMUI5MlZ5aHdU?=
 =?utf-8?B?a1p4YXppWUFBTHl0ak1LZXg4dzFpVkk5MGtmVjhVL2lOWEYxMEtRMjdiZnZJ?=
 =?utf-8?B?V1NEN0xXSjR5RjJIL3QyWjAzNkcrMVdpV01wSzBCRFY2MDNXOGJrQWNLM25G?=
 =?utf-8?B?WTdQL0dCOVdEY0VZbE9oL2FicWVLdXZIUVpDN0ZNM2diWDBVamV2RUZRQnhL?=
 =?utf-8?B?OTNzSENzZTl1YTQ2OFdBSGlBdHlKWllhRkNrWDRlK1hWaUJDRm5KR0RGZ25K?=
 =?utf-8?B?VUJHUU84NXpiNWVXNGdHNzJUL3R6L3hldmo0SUI0Y2J0bkVNa0VJdm5yd3px?=
 =?utf-8?B?TlhDYmlyajJqK05yZjBNVTFHYkdwZDBQY2ZRRWhuMDJsTFo4Y0VOaHlseEtU?=
 =?utf-8?B?ZVVkRW5kUTdSVzZkSVFEYXQwQ29xQUpVeFdCL0xlbGhhWFVIWlVhWmlhSk1w?=
 =?utf-8?B?VVZKOWpLc1E3RGZwWUhrWUtiWEloN1JxMUtWdWQvdC9zQkJHQ2FMOFd5cWdz?=
 =?utf-8?B?UnRheW91ditVWXdoV3ozcnk0RzV0Si96WnpLUXZjV05WdmtVS2llMlhnbzZu?=
 =?utf-8?B?RkFZMXBxZnBORy9kUlA3SWgyYTJHUkd6V3hZUG5wSm1pZW5ZWEhJRGNnUXZT?=
 =?utf-8?B?dzRnQVBiTUFBWUlwaEhSQjFTdXA5azFoNDRUT0p2Z2hyU1hXcW45ZDE3eWxS?=
 =?utf-8?B?REZVZ1U3cEFqNm5kWE9VcWpxQlI5OVordWN2SzQ2Rm9jU0JNUWJSNW96WWYr?=
 =?utf-8?B?Z3FpdXQ0bHp0N0Myd1V6c1RoVDVaV0xNc1dxV210T09xZmpVNmhGcXc2a2sz?=
 =?utf-8?B?elR1Z0RSNHNqaTh0SThFYUZreUlycFZvK2l6MjB2Lzk3ZU1IcTV0QWoyMlFk?=
 =?utf-8?B?YlFhdksxa0xLdS9pZ1Q5N2FjaVVHa3phQUR3K1BicXJrd3ErNzJUNTlib3Yy?=
 =?utf-8?B?ZG1OaHJPTlBEMWRWOHFmR1luQ3o0K3JwOWRObXFzVG9CeTQwWjJ2NXpldERV?=
 =?utf-8?B?eFhuSlFKV29ySksveFc4a0VLRjNvQmovcFFRK1hBMWRPRzdVZVh1dG0wM3o0?=
 =?utf-8?B?UVZDOUt5SzFweXlLVUhnUnhtS0lWOXdSS2VUT0tMMVBJandBZXNIWEVBeXRW?=
 =?utf-8?B?NWh4aFhkSzBRbEVwTzFYM0ZJMm54UzR1d0VVb2tyV3h2N1U5VnVNeXZsVDdK?=
 =?utf-8?B?ckorL0ZnMjd6TDVWUmdZQU44WjlSa1Q3TDVwN3JSQW9hb2c0NW5SRmJnRnMv?=
 =?utf-8?B?TC92eGU5amRuR2k2TGNRTnNrbWQyUVY2MWtiR0hZMEFyNEJPRDdkOCtNWlho?=
 =?utf-8?B?aEV5MWhJRXNKVHBJSHBVS3IwSEtsRXVDL3VKbWd0SGVjN3lJeTBaa0dpcGJW?=
 =?utf-8?B?ajdwRTZrRnJVQkw3Q1Jvd3VRejBsN2dKdXNOWnd5M3Y1SjV5dUd5d05yMWxm?=
 =?utf-8?B?YlFzUk9PcS95cTJMZ1FZU2t1dzhGMkd5VG5scGwxQWR4RzZFYSs2Y2xxOGw5?=
 =?utf-8?B?OWpZM3lTb2lvOWZzS1RkYzlLS0lpOTV4WElWOXZ0UGI3cis5bDQ5SHJ2MXR3?=
 =?utf-8?B?K2hxeVVLTVBUK0V4UURJQXBKaWdaakkrMkJ3SkN4R21GSmxGNCtSckZhUFVi?=
 =?utf-8?B?eEF5dmI5YUhBUE5XL1U0NHFFSUFBZGRIcFpldENaOVBMS1h4ZTVmWlpFY1Vp?=
 =?utf-8?Q?n652shJ/i7Ye6xr7i2LDFBk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1965b0f0-e0a1-4a8b-6515-08dbb2ee851f
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 17:42:50.8314 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qtj1cog6f+u6wYKKChGrmlof0hbCFghDOHW4kbva4+Jve+QJR6rdw9uEtIk9jyOI7BVNwtrs2EtpiHmNId7oVtT0U2MjAVcWmw3iBq8HggWZEpcaXUebuRUtbob61glf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6543
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/12] drm/i915: Move psr unlock out from
 the pipe update critical section
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
PiBTeXJqYWxhDQo+IFNlbnQ6IDAxIFNlcHRlbWJlciAyMDIzIDE4OjM0DQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCAw
MS8xMl0gZHJtL2k5MTU6IE1vdmUgcHNyIHVubG9jayBvdXQgZnJvbSB0aGUNCj4gcGlwZSB1cGRh
dGUgY3JpdGljYWwgc2VjdGlvbg0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IERvIHRoZSBQU1IgdW5sb2NrIGFmdGVyIHRo
ZSB2YmxhbmsgZXZhZGUgY3JpdGNhbCBzZWN0aW9uIGlzIGZ1bGx5IG92ZXIsIG5vdA0KPiBiZWZv
cmUuDQoNClR5cG8gKmNyaXRpY2FsDQoNCk90aGVyIGNoYW5nZXMgbG9va3MgZ29vZCB0byBtZS4N
ClJldmlld2VkLWJ5OiBNaXR1bCBHb2xhbmkgPG1pdHVsa3VtYXIuYWppdGt1bWFyLmdvbGFuaUBp
bnRlbC5jb20+DQo+IA0KPiBDYzogTWFuYXNpIE5hdmFyZSA8bmF2YXJlbWFuYXNpQGNocm9taXVt
Lm9yZz4NCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NydGMuYyB8IDkgKysrKystLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jcnRjLmMNCj4gaW5kZXggMTgyYzZkZDY0ZjQ3Li41Y2FhOTI4ZTVjZTkgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+IEBAIC02NDYs
MTAgKzY0Niw4IEBAIHZvaWQgaW50ZWxfcGlwZV91cGRhdGVfZW5kKHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlDQo+ICpuZXdfY3J0Y19zdGF0ZSkNCj4gIAlrdGltZV90IGVuZF92YmxfdGltZSA9IGt0
aW1lX2dldCgpOw0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5
MTUoY3J0Yy0+YmFzZS5kZXYpOw0KPiANCj4gLQlpbnRlbF9wc3JfdW5sb2NrKG5ld19jcnRjX3N0
YXRlKTsNCj4gLQ0KPiAgCWlmIChuZXdfY3J0Y19zdGF0ZS0+ZG9fYXN5bmNfZmxpcCkNCj4gLQkJ
cmV0dXJuOw0KPiArCQlnb3RvIG91dDsNCj4gDQo+ICAJdHJhY2VfaW50ZWxfcGlwZV91cGRhdGVf
ZW5kKGNydGMsIGVuZF92YmxfY291bnQsIHNjYW5saW5lX2VuZCk7DQo+IA0KPiBAQCAtNzA5LDcg
KzcwNyw3IEBAIHZvaWQgaW50ZWxfcGlwZV91cGRhdGVfZW5kKHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlDQo+ICpuZXdfY3J0Y19zdGF0ZSkNCj4gIAlsb2NhbF9pcnFfZW5hYmxlKCk7DQo+IA0KPiAg
CWlmIChpbnRlbF92Z3B1X2FjdGl2ZShkZXZfcHJpdikpDQo+IC0JCXJldHVybjsNCj4gKwkJZ290
byBvdXQ7DQo+IA0KPiAgCWlmIChjcnRjLT5kZWJ1Zy5zdGFydF92YmxfY291bnQgJiYNCj4gIAkg
ICAgY3J0Yy0+ZGVidWcuc3RhcnRfdmJsX2NvdW50ICE9IGVuZF92YmxfY291bnQpIHsgQEAgLTcy
NCw0ICs3MjIsNw0KPiBAQCB2b2lkIGludGVsX3BpcGVfdXBkYXRlX2VuZChzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUpDQo+ICAJfQ0KPiANCj4gIAlkYmdfdmJsYW5rX2V2
YWRlKGNydGMsIGVuZF92YmxfdGltZSk7DQo+ICsNCj4gK291dDoNCj4gKwlpbnRlbF9wc3JfdW5s
b2NrKG5ld19jcnRjX3N0YXRlKTsNCj4gIH0NCj4gLS0NCj4gMi40MS4wDQoNCg==
