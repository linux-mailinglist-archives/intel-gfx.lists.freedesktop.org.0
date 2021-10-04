Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E253420665
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 09:04:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD49C6E174;
	Mon,  4 Oct 2021 07:04:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E4086E174
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Oct 2021 07:04:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10126"; a="225633083"
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="225633083"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 00:04:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="621729121"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 04 Oct 2021 00:04:47 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 4 Oct 2021 00:04:39 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 4 Oct 2021 00:04:33 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 4 Oct 2021 00:04:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 4 Oct 2021 00:03:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dHtHan2gG1JUJH9Oam7km3YVfnN/N5DfgeOb+E+Ph3mbdpwESplFRVcB6/UFK5smjRXIXpKbLyIOHk7RCIofr2AumDQ0GSvYAiNvuZ8JamYdWzNIkvYNLSacZcP1MwkQdzLgUc4jfAjEvwuKzB3vVhSLNCZ28tnVALCRTZp/MelyRzB/1RPrLEi9cyDOdoKzW2lD35f9fGdBSFQBIQhZ7mv83a7QIuDKdTvt9Gfdtn0PwD7Po//ndIJiklo8KmVPaDTtzxh3cn+D+JivFQo5vaIWdjqho9F+XjkFEL0EWkABp3JRfSwHS0pTGyTQyXxbTrDyHIRXOABxGvDobr6WLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wEXOOn8E/6d/JHi5cTxuvZkY7UK0M0O5ImwjTiS0Qw4=;
 b=eJ7W1Ty71wh/l8C0pQBO9iz8o3wQwyL4gx2KUw8XRe5E/XMYGlQ4P6LitNwGSSnCsOS0kGzKgxdM4NUwH+kAVOm6mCMXMI9UAwjWu2kD+l2rc5qR4Id03PKpByD2p7LP2P9aRpgF86DOJN73Ndm846/pLwT0nEC9h6+G/u7C0aEMHppHHFrPHFssmoVMGhEqhy/WUA0qOsj7WdUlXbabbLlqoeeurEyYYOqpvsM0SO/fxXtYdTLgS+4L643asD9C8rMJc4l1PXP6LViqPCsH46GYT1Fz85RazaPLWK/PAryVJ02MUfkxWcIYI3J1zBexcUszHkooQl/sVN4ob2wAtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wEXOOn8E/6d/JHi5cTxuvZkY7UK0M0O5ImwjTiS0Qw4=;
 b=NmYpxB2Fsd09klF/CQAqHUaLG0qvkEtpQ7tA2kD3PQXVir3wYgb811z6sJC5Mz/A8wiS0bmhQyU1kjKJeSPoXXtCC4RxeeKdgupS8JrMa+FaTZq7iqg2h1ZsedTKejRDGktaDhegpyZIREBCw88TYMIMW/8zCeaLN7SIMZcCx6I=
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 DM8PR11MB5672.namprd11.prod.outlook.com (2603:10b6:8:26::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4566.14; Mon, 4 Oct 2021 07:03:03 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::1b3:4f2d:67a3:1a20]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::1b3:4f2d:67a3:1a20%2]) with mapi id 15.20.4566.022; Mon, 4 Oct 2021
 07:03:03 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: Dave Airlie <airlied@gmail.com>, =?utf-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
CC: "Nikula, Jani" <jani.nikula@intel.com>, Intel Graphics Development
 <intel-gfx@lists.freedesktop.org>, Dave Airlie <airlied@redhat.com>,
 "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 01/24] drm/i915/uncore: split the fw get
 function into separate vfunc
Thread-Index: AQHXtLxs1X6GN2cPD02uWrZ7zxLBfavAHYeAgAHnxoCAAGzGcA==
Date: Mon, 4 Oct 2021 07:03:03 +0000
Message-ID: <DM8PR11MB5655047BD25AD19BA9E1FFFEE0AE9@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <cover.1632869550.git.jani.nikula@intel.com>
 <41c3e1896162fc08e22e40b00642791365a8c00e.1632869550.git.jani.nikula@intel.com>
 <YViykYGH9KG1B2f/@intel.com>
 <CAPM=9txVSOfScH9LZZsYCdcFqikA=EN=y7aJ3BKk0Qtq1PxxJw@mail.gmail.com>
In-Reply-To: <CAPM=9txVSOfScH9LZZsYCdcFqikA=EN=y7aJ3BKk0Qtq1PxxJw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 034a0551-419a-452a-7663-08d9870502ac
x-ms-traffictypediagnostic: DM8PR11MB5672:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM8PR11MB5672786ABC925C36006A8C4CE0AE9@DM8PR11MB5672.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ToxPVacKYik1fr+HzcEW3VpW8vXWxR4p9dDWfFSmohmzBV2WGuottIr3JyKbaqbkArP7lphzKkLJMke7ypejgqL2u4pEAKIVboh7lPbtbnmOvgy3/yXUtgIFiVm8hEjZiGpLjrW/CEEw1D66sQcHlzh6mUcox3ncmpJat5sGUGOeMvxfef0sWjyaliNMCxpkeJucVQ15mit2aZykOK0FYzHpY/6AiR/ykOD3737mghUUyj9whQkb4IImScQIzqeGTN5KBjeEjMNZ+dKTwaD28Ucm1pcRHkVkiykIzIDmcV2lRpmK7ycnc45rTDq73jO6KO7wlfvhZ+3sRVzVHLhtY7BDeR3Uvc6hqLp+pBUg+3+Eikj3MDPQWp0c/YYIX64PBMulQt5ZicxRBWwLbkyQJUuPnOFbKupJeSZSLuu8l+JY+qGxcifw8ro9EnebAE1I+jbkaN1TY7qyBnznWjQF36cuCwBn8EdOiLitWto2IEmsCmVWMWBS0IwxrurIrRXx/F2V+cAiLcQ/IV84WiAPJdB6EvTyQy+t4gt1CV32fsIXEOkr6oMyUtx1nP9TDxB7by/7Yr4KS4Fzs0CcUKzGpomzLQsWgvrS5u/yRHUJV4HoKLPxhYQcHg23y/TveQmfpkcIO9xxoJriF2ugoI/i5qJWW+5FuWsEJTbB+uorB3ZypL4qKgeqUm2buksPyryEVuo4+KTTYZyvB/0CD7BMrA1nGMlm07q6wqoCqQqA+XFeC7lpf0mx4VC4dX3TBOc9/TQDk4QaS6rhlx+N+6/2MroD1MNXZ+HROCFwi392uuw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(2906002)(508600001)(7696005)(66946007)(76116006)(66476007)(66556008)(64756008)(66446008)(55016002)(38070700005)(8676002)(52536014)(316002)(4326008)(26005)(966005)(6506007)(5660300002)(38100700002)(186003)(33656002)(54906003)(110136005)(122000001)(8936002)(86362001)(83380400001)(9686003)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eWFKSzNCVXp5SHVmeWlKVW04VnpmOFRxRi9NRnpMa2RMalBLeTd6ZGwzRUlO?=
 =?utf-8?B?QjM1VHRJaGFydThZbGtuaDQxNERia1llSld5QlpFdk4wbzc4QXdsUXp3UmJH?=
 =?utf-8?B?SHVBandmNVJoY3V5OHpaWHNySzBCa004M09lQ2lrUjgxVTRxVzEyaGRZQlJ6?=
 =?utf-8?B?YzhKNUZrNU4vYWlLTlp1Um1zaTh6QnRlRC9JVDBPYWJQbU9TQUxjYzl2bGtL?=
 =?utf-8?B?TmlnTm9GbWRhMUhvL21qcDk5bnNxUTNseDN1OG9UWU5Fc00vb1JzZFFvTWxR?=
 =?utf-8?B?L0h5ZUppdVRUMGlxYmNSYUFRdWcweTBjekVXQm9qWUJJWUsvNE9XY21zTFRB?=
 =?utf-8?B?YjA2S3psdVRzL0VWZ0dJSysxVUE2N1JkelBBSFBBa1BIRXQvYnk3RjYwVmh2?=
 =?utf-8?B?VlJJNlhhSkdUdDFMcmFGcUFoOHlFWDNBWEpsbDNQQXd4Rm5QVm5UaGtrVWo4?=
 =?utf-8?B?b3BtSkNkU0lkMHA1ODh6c3BYVGpiSWJ1OE92R1NQQXd0cVF4TXhVSEU2eFdF?=
 =?utf-8?B?ZTJadk1ET3RVZ1FkeHcrVmI5NnBXNG53cDlVOUVqU3doZFdvZm9ESkdVWCsr?=
 =?utf-8?B?S3hVclQ1dkpEajc4M0U0eDdIMVI2b3ZONFJkT2crWWhwSHl1WSswOFpVTm9U?=
 =?utf-8?B?ZENQUzQ4UW5FakNTK01OeEsrYmNrME5rRjRtUlpnNkdneFBGeG9sQVd2OFpj?=
 =?utf-8?B?SGZPTlRNbTQ0MjlFNi9xMFBlVlNIcUU3QXVtWGdEZmE5M3pQUmswRzhYalUw?=
 =?utf-8?B?WnhEZGNKaXMwWTQvRFc2ejZRaE9qTTNPVnlPcURlOFJNZlRib1ZuMEtkM29Q?=
 =?utf-8?B?eW4xSXBrR1hNWXQ5WmFGZnUzL0ZUL1VjVXRzOE5aL2V4TmJITnYwTXJzK3RZ?=
 =?utf-8?B?UHpWSDl0bmJFZk9qYmVQYjR3N2lHc1hEdEx0Y2FhL2R6bVJJRlV2WnAxb0NH?=
 =?utf-8?B?VHgvc2VUTzBweVRpOGVKWTZtTFhGOEp3emYwZnR6d2FpV1N5UWVWUVNZVVVO?=
 =?utf-8?B?SEtFRWtMbytWdzlnbWluN0pKNXY4NmRaTWVlY0V2RHVIbW9jdDlyZXpMNEJz?=
 =?utf-8?B?VG82NjNYczRQMnE1c0hqTzlNT1RtVC9PbWVOTHU1V3ZJMmNjbW1EcFVQUjBx?=
 =?utf-8?B?NHo2TU1HZ3djOWp4TDF1L3lIcmUvbjQ3eGxBNU5jZElnenE2dFZYKzhsZmpI?=
 =?utf-8?B?MFlJNEJmTk5qaG5qOGhIampCWFg0T0I3TTg3UURhZXY3K05rRHh2THlzOVhB?=
 =?utf-8?B?Mi9jaWRiczN4alFBdnBmaC9KUmZtdE5aZkdaYmFia1JPbmU2Q00zOFJ4UENq?=
 =?utf-8?B?Nmx1VkVRdlNiQVFGU0dtUkNNT2lBWXZpd0srMFkrTTRWNjRvQis3RU9tOXpD?=
 =?utf-8?B?Uk9DYVlCdU1zd3ppMzBvYVkyVytDRXdGV1FpM3BTd0ZEbWc4d2VCTEJTc2dX?=
 =?utf-8?B?VTR6Mnpubnd6RlB2Y1RwOCtmNGQ4VjJSRGJQL3QwYWdCTjNsSHBHbjBLSnFm?=
 =?utf-8?B?TGh2SXVkNFcrYkVlVUFRVXBQclZUNEVOUFhlUXZhcHlNL0ZvTmxGM2lCRWJz?=
 =?utf-8?B?c3BQVE8yWDhQMFozNkVnNGRWY1ByeHYySEFxRkswbU1sL01BSEYzUjdJdHBr?=
 =?utf-8?B?bjdJWnBEY0IwWEZXQTAvemcvMStsblRhQ3hNb0dDY0txYkJqMW9CL3d3SkZJ?=
 =?utf-8?B?dFY0aW0zckxTNW5mcGZ0ZExtNDZaQTltWktCZkJCMDhSZS9GY1hnU0xRMTBB?=
 =?utf-8?Q?njnp6tGfHAOERQdDfo=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 034a0551-419a-452a-7663-08d9870502ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2021 07:03:03.7615 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XGQCS/Gb/JydmOwKaCqCmIzKniYJBJ10/Jej5QI0/iMOgT12giZhQpUngaSsdhYn4s23WHqWkiRSVohVfU15nA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5672
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/24] drm/i915/uncore: split the fw get
 function into separate vfunc
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBEYXZlIEFp
cmxpZQ0KPiBTZW50OiBtYWFuYW50YWkgNC4gbG9rYWt1dXRhIDIwMjEgMy4zMw0KPiBUbzogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IE5pa3Vs
YSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPjsgSW50ZWwgR3JhcGhpY3MgRGV2ZWxvcG1l
bnQgPGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPjsgRGF2ZSBBaXJsaWUgPGFp
cmxpZWRAcmVkaGF0LmNvbT47IFNhcnZlbGEsIFRvbWkgUA0KPiA8dG9taS5wLnNhcnZlbGFAaW50
ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIIDAxLzI0XSBkcm0vaTkx
NS91bmNvcmU6IHNwbGl0IHRoZSBmdyBnZXQgZnVuY3Rpb24NCj4gaW50byBzZXBhcmF0ZSB2ZnVu
Yw0KPiANCj4gT24gU3VuLCAzIE9jdCAyMDIxIGF0IDA1OjI3LCBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToNCj4gPg0KPiA+IE9uIFdlZCwgU2Vw
IDI5LCAyMDIxIGF0IDAxOjU3OjQ1QU0gKzAzMDAsIEphbmkgTmlrdWxhIHdyb3RlOg0KPiA+ID4g
RnJvbTogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4NCj4gPiA+DQo+ID4gPiBjb25z
dGlmeSBpdCB3aGlsZSBoZXJlLiBkcm9wIHRoZSBwdXQgZnVuY3Rpb24gc2luY2UgaXQgd2FzIG5l
dmVyDQo+ID4gPiBvdmVybG9hZGVkIGFuZCBhbHdheXMgaGFzIGRvbmUgdGhlIHNhbWUgdGhpbmcs
IG5vIHBvaW50IGluDQo+ID4gPiBpbmRpcmVjdGluZyBpdCBmb3Igc2hvdy4NCj4gPiA+DQo+ID4g
PiBSZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gPiA+
IFNpZ25lZC1vZmYtYnk6IERhdmUgQWlybGllIDxhaXJsaWVkQHJlZGhhdC5jb20+DQo+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+DQo+
ID4gVGhpcyBoYXMgdG90YWxseSBicm9rZW4gc25iIGFuZCBpdmIgbWFjaGluZXMuIFRvdGFsIGRl
YXRoIGVuc3Vlcw0KPiA+IHNvbWV3aGVyZSBpbiB1bmNvcmUgaW5pdCBhZnRlciBzb21lIGJhY2t0
cmFjZXMgZmx5IGJ5Lg0KPiA+IERpZG4ndCBnZXQgYW55IGxvZ3Mgb3V0IHRvIGRpc2sgdW5mb3J0
dW5hdGVseS4gUGxlYXNlIHJldmVydC4NCj4gPg0KPiA+IFNhZGx5IENJIGlzIHN0aWxsIGFmcmFp
ZCB0byByZXBvcnQgd2hlbiBtYWNoaW5lcyBkaXNhcHBlYXIuDQo+ID4gRm9yIHRoZSBiYXQgcmVw
b3J0IHlvdSBhdCBsZWFzdCBnZXQgYSBsaXN0IG9mIG1hY2hpbmVzIHRoYXQgd2VyZSBhd29sLA0K
PiA+IGJ1dCB0aGUgc2hhcmQgcnVuIHNlZW1zIHRvIG5vdCBldmVuIG1lbnRpb24gdGhhdCBhbGwg
c25icyBzdWRkZW5seQ0KPiA+IHZhbmlzaGVkLg0KPiA+DQo+ID4gSSd2ZSBzYWlkIGl0IGJlZm9y
ZSBhbmQgSSdsbCBzYXkgaXQgYWdhaW4uIFdlIHJlYWxseSBzaG91bGQNCj4gPiAqbm90KiBiZSBs
b2FkaW5nIGk5MTUgd2hlbiB0aGUgbWFjaGluZSBib290cy4gVGhhdCB3YXkgd2UnZCBhdCBsZWFz
dA0KPiA+IGdldCB0aGUgbWFjaGluZSB1cCBhbmQgcnVubmluZyBhbmQgY2FuIHJlcG9ydCB0aGF0
IGxvYWRpbmcgaTkxNSBpcyB0aGUNCj4gPiB0aGluZyB0aGF0IGtpbGxlZCBpdC4uLg0KPiANCj4g
VGhhdCBpcyBmcnVzdHJhdGluZywgSSd2ZSBzZW50IGEgb25lbGluZSBmaXggdGhhdCBzaG91bGQg
Zml4IGl0IHVwLg0KPiBob3BlZnVsbHkgQ0kgd2lsbCBwaWNrIGl0IHVwLg0KSXQgc2VlbXMgaXQg
ZGlkICh0aGlzIGZvciBpdmIsIHNuYiBvbmx5KToNCmh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzIxMjMxL2luZGV4Lmh0bWw/aG9zdHM9c25iJTdDaXZi
DQoNCj4gDQo+IERhdmUuDQo=
