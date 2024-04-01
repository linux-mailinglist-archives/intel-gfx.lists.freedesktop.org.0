Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 486BE893A22
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 12:20:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A318010EF9D;
	Mon,  1 Apr 2024 10:20:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lIwK6Wpz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CAE810EF9D
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 10:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711966808; x=1743502808;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4448notem65SO3W+T9WK/RlSTfUm9hOQjkHaqMgF+V0=;
 b=lIwK6Wpz3NVIq6I9MnlYa4RCRc33I+gS9AyClSmoLoaOzWiubhHijpnq
 5KGSNfInnuia17Gkj2R5whCA2UBHtUOh2/Eh4aQ3UPfYGS+JOes057sd3
 jEWL7h2Yu3Bh/gC+7ro2tycFCBJFXiPcP3/6ZLVZApgXIlSb+VhWlh6na
 2eYwcD7/lDCjF3wHAe4fU/SPyTfQK1GM6olF5KQ0lfl5ht2oNxuB7GLN7
 gd7NBdI9+rSmTd0g4h3YPIgC2RE7PlhFmV5fAw+EwvA6kWvf0dD7YBObg
 Ld3kKcfUoljNsU99v+TldBsKwXJwwMdewuDRokibvYxRdL8h/aI98iQC4 A==;
X-CSE-ConnectionGUID: Q1ruDwTCQXmlaxsWE8yN+A==
X-CSE-MsgGUID: iKbcvM5fS0CejpBu6Mx5PQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="7022455"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; 
   d="scan'208";a="7022455"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2024 03:20:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="48868083"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Apr 2024 03:20:08 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 03:20:07 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 03:20:07 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 1 Apr 2024 03:20:04 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 1 Apr 2024 03:20:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=akduBpia+JmTC0tyoF9cq8tzU58wxCqR0rJ/UloiryzRiCQkQNlYLNaTiqpRrIIuFYSSrJ0+MSCY320UvZfYmdUTIzwxVKjy65p+G6vyHKxCWkElMlhxFpayEgDSTy40MSuXSV4+jr3wKxHUTfuFrqy1h6K9POAscN4EHJ5HG+kjYOEi//1zhRYQipEZZ/ZClFn/0MlDc+5wpFTUNOrNQn/6H7C1OeLHIvrl8pVphoErk78KlbuZoiCJXewmoFPDUMag6N8uiuX7Sw5deaSwroZLSVYux3LOsgCPL/oMVgNNsR6maDutfcMi4pT3cIub4lfye4zt82ORsgdZ6Lrafw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4448notem65SO3W+T9WK/RlSTfUm9hOQjkHaqMgF+V0=;
 b=llw3ZOg8RJAi6dPY88/YGdoJdWpcHhFoyRJ8hnWSsxDesTnHFqV61HzuQhV2DwKaZI0xD/Ko5Bxo789Hchq3zaqherCMcWELXLSbz7EJYZ6pNqVfPYKRXc6iA6dl0UJZYvzKw68kpYdTpv0qhNRo0JMYnzSWwbpMrDwhL4f83f7XLWjUSJXFa45WHt0uzG9fN9CcnjTRTsJ5ZQixViJR9U3iSXmZfK5if/b5C/MEWogjzIr0j2U2Cqzcp+/nUK3ZsOi+WwvBzibVlnpHAi6bVq7jugklzr3mppIC2rJ35By9+KcUS2dVGO88rAHx1Ar4iFSfmrfJIqwzBtDowcTayg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by IA1PR11MB8248.namprd11.prod.outlook.com (2603:10b6:208:447::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Mon, 1 Apr
 2024 10:20:03 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 10:20:03 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 15/22] drm/i915: Introduce intel_crtc_joined_pipe_mask()
Thread-Topic: [PATCH 15/22] drm/i915: Introduce intel_crtc_joined_pipe_mask()
Thread-Index: AQHagXZk7ni6egRc50W1E3YtWZHTDrFTON+Q
Date: Mon, 1 Apr 2024 10:20:03 +0000
Message-ID: <IA0PR11MB73073565251627BE021532F4BA3F2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-16-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-16-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|IA1PR11MB8248:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t/iCoelPQeGQmrTdrAW3RyOMuec8xDdUhrtI6SXoMpLZ93uGx/4gxvm/n0eBD3nHtfjGqmanheY4GYVzYdEnaPwchCumzNZ4bGo36G20hH78fqciKLf73HQ4+GuCHg2fi0ZQ2E7D7iBzFQTLmFm2ahamh25ePtdrJO3IXNNM96E/JDB6g76eTAkF8xRGFW74KeLXk8lArDw9fYJmfSODuJL73qJqoNWG8ERs7FD+XJkl9o6Cl+LW0L7F22SepLgWpN8V/741MLmEuenc8EPV0L9NdyOWOXT6CHy14/ik7zXk0m8pz/1/eDlZ9BGZk8ZrwPp1SxPNUw9cL7nTH8pvPSzZZoK2JRrtBP8pIpA5o54bEwqKHaZGP1w/DkEk00WEwEWYfWJGARtPpf0fxHh/oKoJ+l4eTJvW7Zx/9bYAfhpkozhNYZUB7UoetJXyCH40UvVs+Y4zMhdPfcUSOZRKlNCkiL9wTauLomufQdzp2XLcSDGcFKKO5NEarmk8FvVvFhFp9zdSsba8zPHAZ264YEpPT9uNZKWRsfyiH04FzBOXMf/PC1beKwhykprs0sW+WsTOu+Grw7oJn1cUYZjmgFYxn2mvb5+oGGVoX3xosTTorbq6CY8s/Z1fFUHUSw+gXDbN0fIij0QBanw4kJekT4kk2dbsr0v80//2mHad3sE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dU9tczdsVDJIeHY3ZW9MNmw1Zm9lTCs2RjhHWVhWcE1HeDlmQzlqUENRaFNF?=
 =?utf-8?B?WkovdUNUczZTYmZPWGtJN2g3TWRNb0F2V0xaRU05bWgrREV4V0I1RW5wZmRG?=
 =?utf-8?B?YmdXRndHcEVrU3RPdlBnRzVMNDF3R2pOQzBGY0xRaGNadzNXeE40V0RlMnRl?=
 =?utf-8?B?UCtObDFRZU0rVHY0Wm0wV0k5MXY2UTBtaGV0YUlpVXcrazhQdUc2eFgrYVMy?=
 =?utf-8?B?ZTZOL21VQkdsY1R0QmNzRGVjVVpUam0xM3VlSUFPbVZSbjk2TGZsUkc4dDM4?=
 =?utf-8?B?cTNCVHI4WlNHSHQxL0xHOHJvOC9sclcyU0pRVVArWnpPWFdwTDJ4SDZqRE02?=
 =?utf-8?B?VUpsYVhqVG5aZ0ZaZ0dZYVVLRldVWDhaRWZBZHlPYmtMcHdydGFxVmNHWktQ?=
 =?utf-8?B?NGIzMXplcC95RlREQ0ZmNkxqbk1DbkpRamlJR0UrcUVjSlFjbVI4b3QyMkhB?=
 =?utf-8?B?REFWOVhuYzBvNlZFeEVoSHl5Vk9qR1hENnR3aVpDakhXcUdITVEzQkQ0QXIr?=
 =?utf-8?B?S2lrdHViWjJiNzNZbENwUEsycEtXNDI2NlpYQTY4K05hRnBLZktKQkVXVVI5?=
 =?utf-8?B?UXFic2IrdlFrbUZjRmxxZmRHY1NXRjRzSklBTW84RlBNc3dOWXZuTExVemgy?=
 =?utf-8?B?Q1FDQnlpdzRldjJvcHppWWpjenJ6UlBhT1NhaTZtamtXVlZyU2FSdllkWXRW?=
 =?utf-8?B?N2c2NjVVa3BuMzBucTByZDljakZLeUozdjN6eFZUcFZ0NzYyalpnbDRXWmhI?=
 =?utf-8?B?U2l1STlqZXR3NHFSZWxqNWU2ZHNqdVpXU3JBVlZhVzNJVzFIZ1p6M080TjhY?=
 =?utf-8?B?TzFxUUpnV1ZoRUYrODNhdnZ3bE1sZkFVNjNGNUVoVGFVZ1Z0RlB0ajBCMUJ6?=
 =?utf-8?B?V1FCWG5TNE9XazNvRG03TUNmVFJsMkhRbkpucmJvOFY0ckxMSnZuQnVQbHVI?=
 =?utf-8?B?eXJEVXZrSnRKOURlZ2ZhbTRzM0V4b0RLTWxLSnlxZVlOQlk5WlFBRHFFai9s?=
 =?utf-8?B?Zk5FdThrMGJESStJMTdyUlhCNW92U0kvbU93NzIvNzF2YVp3M3lPOXVmdFR5?=
 =?utf-8?B?enRBVHR5c1I2SzRkZzdUUXUwNlFRTFhSUnhTdTM5bk4zcm85SXlETnJ2bTZz?=
 =?utf-8?B?V083VW4xTnZveGxLYWVDckhWbk9sMWk1TEVGSW1VRGh2OHZwSDFxYVpTMWxZ?=
 =?utf-8?B?SHdkc25sbnZnOEw2RDZaWFpIWjhoTi9ERmdaYkNHKzRUVno1QS9Mb3dNdlhC?=
 =?utf-8?B?cHU4OGtHRHU0Q251TmdmRVF3TGFpUkhUYkJjQkdFdGdNR1Z1d2ExYVpuV1Fx?=
 =?utf-8?B?ME5TUGNCRlhhaHl4Y1BvTkNhSHBPUnNiZXAyZlZDcFRNV05MaGg5Y2JsMFlu?=
 =?utf-8?B?N0pDWjdwS0RDTnltbklDd05Pc29GRUVPeS9henUxRFR6QVR2QXB0OFBCMFYr?=
 =?utf-8?B?cTlFSHNQSld0d2p0dFlPajA1WHQ5azJ5ZE9Sa0FJVUtzVTIrZDZUOFBacXJ5?=
 =?utf-8?B?WGdweXlKMzhkOUMyelhlazd1VDdzRk5YMjJvOE1BY08zeVZTVkNGQjNwRnRX?=
 =?utf-8?B?cjAyUEgyNnNwdENkc04xQXBNNmVFTHJmVGNYY25YS0o1UjhBaVVCc1l5alhX?=
 =?utf-8?B?NzZjOU5OYThUd21pc3dadEFNYWJ5ZVorN1c3bGZyODdidHVaUzNmZmFlNkxZ?=
 =?utf-8?B?UkVoNmpiV3dNaFRzRUxuVkU2NEtpbXVRcXlZRTU1bFVhNWpKdHJOcjducUdT?=
 =?utf-8?B?Z2ljMlFWUHdQRXdHVG9EbXI4QWN0Qi9keUxQN2J6dE16TUMyWWg2YmFmdUpu?=
 =?utf-8?B?YkxzY29pVTA2TUdMbkRQeUZKV09TQWN2VHg5MlZZTFVsQWM0QnJYbkRvTkFn?=
 =?utf-8?B?YTd0TmVCQXpyNmJZYnhOMU95UnB1MVVuVEI3WnRGUzdWbEd2U2F2VXJHVTcx?=
 =?utf-8?B?Rm5sam9qS3RmblF4bGhlZnR4NlgvVENVcjhWQnhSc2U2bzRFVnc2aUdvWjBZ?=
 =?utf-8?B?Y0ZVZ0VyNkJhT2N3LzdhamEzeEk0M3Jya3o0TmNpMnlkYnJraWJFN3BOd1hu?=
 =?utf-8?B?Ynh4ZndGUkhIbHZnaXFRWngrVGFydWJBc3NTRGtHWHo3ZnA5cWY4N1RXRThO?=
 =?utf-8?B?MG1WWUt4OE1ueUNCMld1QytFeHlyMnYwY2preGMzVmQwYnN5ZEkzMGZIcEg2?=
 =?utf-8?Q?5s043d5hm9TdeHldV8z6zy9h/l4fLL/arQCGbVd9PEAB?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5689024c-8c26-420b-a63d-08dc52354b5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 10:20:03.0888 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9x6yVqH9WCy3nZ9wlYQsi07Aj46/98oBv8+HE/jR/qt8Ik9jB5hyBEKG3V+iWe6MUc/LsEwIN8C7oNTIhNi19Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8248
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50ZWwt
Z2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBGcmlkYXksIE1hcmNoIDI5LCAyMDI0IDY6NDMgQU0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDE1LzIyXSBk
cm0vaTkxNTogSW50cm9kdWNlIGludGVsX2NydGNfam9pbmVkX3BpcGVfbWFzaygpDQo+IA0KPiBG
cm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAN
Cj4gQWRkIGEgc21hbGwgaGVscGVyIHRvIGNvbXB1dGUgdGhlIHNldCBvZiBwaXBlcyB0aGF0IHRo
ZSBjdXJyZW50IGNydGMgaXMgdXNpbmcuDQo+IA0KPiBBbmQgd2UgaGF2ZSBhdCBsZWFzdCBvbmUg
dHJpdmlhbCBwbGFjZSBpbg0KPiBpbnRlbF9kZGlfdXBkYXRlX2FjdGl2ZV9kcGxsKCkgd2hlcmUg
d2UgY2FuIHVzZSBpdCBpbW1lZGlhdGVseSwgc28gbGV0J3MgZG8NCj4gdGhhdC4NCj4gDQo+IHYy
OiBVc2UgdGhlIG5hbWUgJ3BpcGVfY3J0YycgZm9yIHRoZSBwZXItcGlwZSBjcnRjIHBvaW50ZXIN
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBBcnVuIFIgTXVydGh5IDxhcnVuLnIubXVydGh5
QGludGVsLmNvbT4NCg0KVGhhbmtzIGFuZCBSZWdhcmRzLA0KQXJ1biBSIE11cnRoeQ0KLS0tLS0t
LS0tLS0tLS0tLS0tLQ0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYyAgICAgfCAxMSArKysrKy0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAgNyArKysrKysrDQo+IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIHwgIDEgKw0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAx
MyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IGluZGV4IGZhNmZlOWVjODAyNy4uMjRhOWJlMmEy
MTdmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4g
QEAgLTM0NjMsMTggKzM0NjMsMTcgQEAgdm9pZCBpbnRlbF9kZGlfdXBkYXRlX2FjdGl2ZV9kcGxs
KHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkJCSAgc3RydWN0IGlu
dGVsX2NydGMgKmNydGMpDQo+ICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsNCj4gLQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSA9DQo+ICsJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUgPQ0KPiAgCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRj
KTsNCj4gLQlzdHJ1Y3QgaW50ZWxfY3J0YyAqc2xhdmVfY3J0YzsNCj4gKwlzdHJ1Y3QgaW50ZWxf
Y3J0YyAqcGlwZV9jcnRjOw0KPiANCj4gIAkvKiBGSVhNRTogQWRkIE1UTCBwbGxfbWdyICovDQo+
ICAJaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDE0IHx8ICFpbnRlbF9lbmNvZGVyX2lzX3RjKGVu
Y29kZXIpKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiAtCWludGVsX3VwZGF0ZV9hY3RpdmVfZHBsbChz
dGF0ZSwgY3J0YywgZW5jb2Rlcik7DQo+IC0JZm9yX2VhY2hfaW50ZWxfY3J0Y19pbl9waXBlX21h
c2soJmk5MTUtPmRybSwgc2xhdmVfY3J0YywNCj4gLQ0KPiBpbnRlbF9jcnRjX2JpZ2pvaW5lcl9z
bGF2ZV9waXBlcyhjcnRjX3N0YXRlKSkNCj4gLQkJaW50ZWxfdXBkYXRlX2FjdGl2ZV9kcGxsKHN0
YXRlLCBzbGF2ZV9jcnRjLCBlbmNvZGVyKTsNCj4gKwlmb3JfZWFjaF9pbnRlbF9jcnRjX2luX3Bp
cGVfbWFzaygmaTkxNS0+ZHJtLCBwaXBlX2NydGMsDQo+ICsNCj4gaW50ZWxfY3J0Y19qb2luZWRf
cGlwZV9tYXNrKGNydGNfc3RhdGUpKQ0KPiArCQlpbnRlbF91cGRhdGVfYWN0aXZlX2RwbGwoc3Rh
dGUsIHBpcGVfY3J0YywgZW5jb2Rlcik7DQo+ICB9DQo+IA0KPiAgc3RhdGljIHZvaWQNCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXgg
NjE5N2I2MmRhYzU1Li41OGVlNDA3ODZkNWMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC0yNzUsNiArMjc1LDEzIEBAIHN0YXRp
YyBpbnQgaW50ZWxfYmlnam9pbmVyX251bV9waXBlcyhjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gIAlyZXR1cm4gaHdlaWdodDgoY3J0Y19zdGF0ZS0+Ymln
am9pbmVyX3BpcGVzKTsNCj4gIH0NCj4gDQo+ICt1OCBpbnRlbF9jcnRjX2pvaW5lZF9waXBlX21h
c2soY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKypjcnRjX3N0YXRlKSB7DQo+ICsJ
c3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGku
Y3J0Yyk7DQo+ICsNCj4gKwlyZXR1cm4gQklUKGNydGMtPnBpcGUpIHwgY3J0Y19zdGF0ZS0+Ymln
am9pbmVyX3BpcGVzOyB9DQo+ICsNCj4gIHN0cnVjdCBpbnRlbF9jcnRjICppbnRlbF9tYXN0ZXJf
Y3J0Yyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgIHsNCj4gIAlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+dWFwaS5j
cnRjLT5kZXYpOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuaA0KPiBpbmRleCA5ODZlYzc3NDkwZGUuLjMxZWUzNGM1OTg0NCAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgNCj4gQEAgLTQwOCw2
ICs0MDgsNyBAQCBpbnRlbF9jcHVfdHJhbnNjb2Rlcl9tb2RlX3ZhbGlkKHN0cnVjdA0KPiBkcm1f
aTkxNV9wcml2YXRlICppOTE1LCAgZW51bSBwaHkgaW50ZWxfcG9ydF90b19waHkoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUNCj4gKmk5MTUsIGVudW0gcG9ydCBwb3J0KTsgIGJvb2wgaXNfdHJhbnNf
cG9ydF9zeW5jX21vZGUoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKnN0YXRlKTsg
IGJvb2wgaXNfdHJhbnNfcG9ydF9zeW5jX21hc3Rlcihjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0
Y19zdGF0ZSAqc3RhdGUpOw0KPiArdTggaW50ZWxfY3J0Y19qb2luZWRfcGlwZV9tYXNrKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICsqY3J0Y19zdGF0ZSk7DQo+ICBib29sIGludGVs
X2NydGNfaXNfYmlnam9pbmVyX3NsYXZlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKTsNCj4gYm9vbCBpbnRlbF9jcnRjX2lzX2JpZ2pvaW5lcl9tYXN0ZXIoY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiAgdTggaW50ZWxfY3J0Y19i
aWdqb2luZXJfc2xhdmVfcGlwZXMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpOw0KPiAtLQ0KPiAyLjQzLjINCg0K
