Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 728077FF0E0
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Nov 2023 14:54:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEF9D10E384;
	Thu, 30 Nov 2023 13:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA35F10E32F;
 Thu, 30 Nov 2023 13:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701352456; x=1732888456;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Kv8GF0BbTqvIBjhJ5VCRyd0iMyvw0ioinmgxqaPULAQ=;
 b=bAajgl2c0UsKgWf5hO+frNAR2AVv0oSm36HYYwS4z9qUHh1B3BMiu0MG
 Ll+8Qlhlv8OYtJW8+8W7WrFCJbV9qLvD3NQ1rIeAwMnauXiKzVqAvHhmo
 x36+3osEdkM7Z6iouS/D5UcQr3U3AlI/MPHz59nyDM3lhtmfMHhMk1aZI
 wvWHRprz4xnnrUHlMq3dmnPMoQ5xpQxFaNXVzuhxwsCwE/CDpygMkayVi
 o5PWcEc73+H/7SAL0hX1yNJvXcolZRcChvLnI9f2qaa72grniJ13lvx5h
 n6KBm0tV7r3kxdShw4HPK91vlppHXFNQPanXMDZdBxaivBCtTP+nKj5H7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="424474595"
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; d="scan'208";a="424474595"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 05:54:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="769313655"
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; d="scan'208";a="769313655"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Nov 2023 05:54:16 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 30 Nov 2023 05:54:15 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 30 Nov 2023 05:54:15 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 30 Nov 2023 05:54:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZNVM16fxKw8n2U9IIyA3DDnwGsR7Ep9UkfK1BXRte3IXobpmEaq7TI6KQuhHqgSzaRqEG8wSKKU/FVqAy9qO9eA2oUazqJO2De72OCKwCYyUWaJwFWiUL6sUF76trg2+0nCwzwpnQBn1sKq+EoqoW11uSfDwyNK6jTpd4g8EJwH7AqFklUlh43qWl+0xfT8srRlUApxeYJabhdzdCFSpxh0gABZuBJirWoYGfeGsyUVXDUM7/QI9bDlNbX9O0kIfKE8rEIBrNKPULUnzgMkiSA/qSigyKrdJlvpU7dIW05Rr426ILxiNAJLGZjIhF6025Cdb8peM9NugSycgQ0IYEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kv8GF0BbTqvIBjhJ5VCRyd0iMyvw0ioinmgxqaPULAQ=;
 b=UMMWlEZpNORDl0d/3U7iqxF015RLOlkFjdzv+PABWnrmcH6jyxrjfejtfLQqcfdCtSUIjTa9neYC7Gd+sDxV2poV6cpmyuGkyzGC/kBgxf9/gob1gzQxsUDMpfUY6HeKlIaPKTZpoLWw8HLCVOzU7x2A4po5ix9k0x6qww6+jobYLhem9mZ8hJ7muzwAbinPPNsmDj+yHMLLGXwDCLEWkGq7g/sSWiVgOe9MgFN3lsKUWBzyvV6Z2Lu3J0NEqxvbdUoofaMq7fka1+XRH9luLNxR7GnYFXt9dzjt7ohGLAoN9quUpnpsYXjvWVismA26e1y0B79uiLQgRAGL9TpjSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by CO1PR11MB5042.namprd11.prod.outlook.com (2603:10b6:303:99::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.22; Thu, 30 Nov
 2023 13:54:14 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::b043:8f67:3566:67ee]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::b043:8f67:3566:67ee%5]) with mapi id 15.20.7046.024; Thu, 30 Nov 2023
 13:54:13 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v6] drm/i915: handle uncore spinlock when not
 available
Thread-Index: AQHaI4fXkUmKET9ogkCwzo2MkOxT3LCSydWAgAAQN4CAAAhJAA==
Date: Thu, 30 Nov 2023 13:54:13 +0000
Message-ID: <e41da80b791fd97d86afe2d4da72a0f244563446.camel@intel.com>
References: <20231130113505.1321348-1-luciano.coelho@intel.com>
 <812728f3-15d2-4327-aebb-79a032d3a2ce@linux.intel.com>
 <c579c861463fba1e24285c034d60f14aeff6d3df.camel@intel.com>
 <d6a5ece0-05c8-4108-9e25-4ad886325ba8@linux.intel.com>
In-Reply-To: <d6a5ece0-05c8-4108-9e25-4ad886325ba8@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|CO1PR11MB5042:EE_
x-ms-office365-filtering-correlation-id: 5bb1dd46-4483-4694-69ad-08dbf1abd641
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9fRodnxt0cQJvMhx9MiY2seqRSSqXI9ZPfJHnpapk+BMyVIC9J/5G7uxY3V4RTB6qh2Fx9+bimS0B1pAudI8PLkqxyzcYWOaJ8m55qMcwXvPioxlRQwLQm89obEieUq7w7hVedRuW8kWdoUFgAEopLtqTxHmnqE2fpD5RS6x7m3C0t8VLzE1sunDmo1+0dYnv8DyFkcubHh63jgy+7KrBKjy0Qy1v/z4Ye/iXl0e9u/ttQCrEEoa5qh+YYcPLknKn1HD7yGyzUA7qG1Ut4/5eAyYjeAR2hG1Yt+tYoPHR/42oXDg5t8M5L9uyFA1wWfhQAsG9n5dnhQzkNSASXB1F5kZa2xsT71QSeY2CtlayrUYgfs7ZX9EL3KfgMGc+dClieQ/wWX45zf4n0Uyl1Q47SPDJtoKMKXO4lW6dannjCGM28ZuqnN78aiph3YSFsKTmaIgm4NzvId6G5FvkWj8UVdWWL87n4ZxGRW0BshsSlGfwnL3MEgjPmo77j+MGMC2QdZPcxBzoGqhi9QDcwHDRTxp2JnNW+gP7saNy9SzH0Oim5WetE2qA5A78YLGl3yDG+F4sxxnkTyKedqKjoL2C+64tti/wCVxpiFX81iAIqaxNBu0UVlLPjDfQeCTaRHz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(39860400002)(396003)(366004)(136003)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(71200400001)(2616005)(6512007)(478600001)(26005)(2906002)(83380400001)(41300700001)(4001150100001)(91956017)(6486002)(110136005)(53546011)(8676002)(5660300002)(8936002)(66946007)(66446008)(66476007)(66556008)(6506007)(54906003)(76116006)(316002)(64756008)(4326008)(82960400001)(36756003)(122000001)(86362001)(38070700009)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M0ttU1VZVDBhVkJvdUZKNFB6R0NIcU9hTDJrcWxIcUNzbVVVZjNsT1NISTly?=
 =?utf-8?B?MTBZb0V6cXNhaG0wczQ4Zko5eEFISlBXT3pJdTdTODltSXgwc3R3aEhTdVdW?=
 =?utf-8?B?cHJmSEZPYVJibXB3ZHl2TDNoQUs3VTNUZERDUHkzYVpkNElVNmJpUEFqNWc1?=
 =?utf-8?B?K2xRbGdGaGlXQ3haQWdMU21pbDVIN0pPTEovNlZTU2ZScVBWQzdhbFUzMmJq?=
 =?utf-8?B?ZXQyUWVPZjVqMlpNdEJUL25RTlRFak1LWUlWRzY2Q3lCMkdBaDZhSy9Gc3p0?=
 =?utf-8?B?VXh6cWErbHZ4UU16NEI1dXVEcTJjZXE1SDU3M25SdjhlRTc0ekU3Rnh1RHpy?=
 =?utf-8?B?dGI4V1VmSUp6VDRwSkdScG1NdG9PV3IxMXJEei8xd3NUOTBBdG1CeU51NFlF?=
 =?utf-8?B?Zlh2UHBxZzlqV1c1MXRqelMvSmtwN0RtYTZTeGtDOTFoaWMwbnRCR1dTRWQz?=
 =?utf-8?B?dFd1VGhPVi8zYzJOaUx3V3VEV0loemRlbXZnbGNQbEkzbjI4bmd3N2RQZDR3?=
 =?utf-8?B?RWFKUkY1a2NHRGJXVTZ0TnpHL0FYcmgveHRNUkVhWTVXNDlHMFBURnhhblgy?=
 =?utf-8?B?ZWNYTzc2RUxSVjFvZVpFdVRCYVBTVnBmRnA5QkpZaDlTNytPRWJYZjFXaHlz?=
 =?utf-8?B?RFF1K1d3WENmLzRYbDlaQ1diemxCRWUvbE1PL3RpT0V6Y2hpdFdsSmJkRjMx?=
 =?utf-8?B?d1ZwSWlKczFWc1hiaVdOakxRek5FZnVmUFNGdUxDL2JGU0hXWnV2eEE3NjRM?=
 =?utf-8?B?RWQ5LzlpZHdQM1R5aWZ0M2lZbjJvaW4rVGt2MHJNZ0t5UWFueXI0UGF0VXR3?=
 =?utf-8?B?Y2l6UjF4cm5MTjcyS3BiVGxKUmJDRWNKVkt4VUttOWRwV0IrK2I5YXAxT2pB?=
 =?utf-8?B?Q0dtcXBpUGxaSGYvYlUwK2hSaWRJMXR2TVkybDMxQ203Ukdqa1FVTnpZeUdE?=
 =?utf-8?B?NnpZNW9JRlBWQWhndk15V0JHNXFCbCthUy9DM0FPTHhoZVREaEFUU0JBLzhI?=
 =?utf-8?B?Q2c0N3A3NHNOaXFuZnhtMis4YjFPL0hMVVZDdnA2Tk1DUEoraHVkVDlGbGoz?=
 =?utf-8?B?TzIyaG9MR0htVGJNWFJFMmRsc0pKK3cxRFVSMTYya0tHNWE4eThXWHJJMEhK?=
 =?utf-8?B?SUZlWGVpZmp2QzRiZ2VhNXdvWEpOUDZQUTdlSkdxMEhRck1DaGtDWC9tSUtN?=
 =?utf-8?B?VVZmMWZTVlFYemJOY2xHQ1ZOUnlXTUp5Q1E1b1NTRGtIc2xwSC95M3Z3VzQx?=
 =?utf-8?B?d0xoS3NIZUNzdC93Qlk5MmNDZmZNS2kwVWRaR0QvRWRIaUFRMVN2NC9kUzlk?=
 =?utf-8?B?eWtmaDhERlRrYi9xQUFneFhENlliYTYvSmxlS2l5L2MwZkJnZEdPcWJoaEcy?=
 =?utf-8?B?MTNWcXdFcGptbHd6OXZNcGllbTFLQjNYbXhwZEFSVzhlRHJBdVR0dEdSdDdy?=
 =?utf-8?B?UmdVNVBhS054ZEYvUlhQWk42MXY3NS9YSnRHZ2hnaGVycG5aSCtCM1FSQ0Ju?=
 =?utf-8?B?ZHdWVXFSSTJPZWw1dWdpdjd4bmszc2UzMWZ5NWlHNVl5bUhtMVlWR3IzLzQw?=
 =?utf-8?B?WGxZTUppVXQ4VjFyVmdqNTBUTVpoWlZqQnh1SThZTG1qQzNYdzZFa3lqeXIr?=
 =?utf-8?B?dTFyUzhoaUhwMUIzMm5NdDI5MUVUU1R1emsvNy9sTDkxWmZqN3NaRTZtK3NU?=
 =?utf-8?B?Q3QrbndLNU1wajJUZ0FWMmdRSGhER0gxZnQxWXpTakJET1liV0tPQlgxc1pa?=
 =?utf-8?B?d3pUaElSMHV5SGc0RUc0a0RIM1ZMdGNvWXlNVW5jblFNLzZGcnEva0NXb2hu?=
 =?utf-8?B?c3ZZZFBVbzlyV3dpMEVmV1NxV1V4bWhQVDdLNk9BRkpETkhwODNzekY2RHl4?=
 =?utf-8?B?d1poWTUvcldSRTU4VURrY2o5QXpRZ3N1MVIyOUdGQXdKWDAzN1lESXphY0gw?=
 =?utf-8?B?ZjhTMVJWT2JIY204MGVxUlQ3S0h3QVVKSkFmb2RJUW04TnVsM2htRzQzVmFw?=
 =?utf-8?B?Zi8yRWFXbGNmNC9yNzBtYnZ2dGlReDJNbHB2YXhvQ09rNHhZeWJyYnpxK3dy?=
 =?utf-8?B?cmVjVS9lcllPWHBNTGlpRU1vRDlTNXFFdCtsN3dNNUpwd0pON0t5REU2YkpU?=
 =?utf-8?B?ZXY3WjFsWmpQV0RDZFEzRHRXcCtpYU5FTXNwenNOZnczcFhGSzMzcHdYb2VX?=
 =?utf-8?B?OXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2BFE7CBDFF974A45ABC63F20885C3045@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bb1dd46-4483-4694-69ad-08dbf1abd641
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2023 13:54:13.8735 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HpfcgJ5cCJhBraXFgwgN82yCXVqNc4sz9rWUrgAXyFzJ4c9btr59yaVyfbkLABhqc5d0s0RAXgPzM4TB4rTv2WK4Cox+hI0M2eOUB4W4cI4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5042
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6] drm/i915: handle uncore spinlock when
 not available
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
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIzLTExLTMwIGF0IDEzOjI0ICswMDAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gT24gMzAvMTEvMjAyMyAxMjoyNiwgQ29lbGhvLCBMdWNpYW5vIHdyb3RlOg0KPiA+IE9uIFRo
dSwgMjAyMy0xMS0zMCBhdCAxMjoyMSArMDAwMCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+ID4g
PiBPbiAzMC8xMS8yMDIzIDExOjM1LCBMdWNhIENvZWxobyB3cm90ZToNCj4gPiA+ID4gVGhlIHVu
Y29yZSBjb2RlIG1heSBub3QgYWx3YXlzIGJlIGF2YWlsYWJsZSAoZS5nLiB3aGVuIHdlIGJ1aWxk
IHRoZQ0KPiA+ID4gPiBkaXNwbGF5IGNvZGUgd2l0aCBYZSksIHNvIHdlIGNhbid0IGFsd2F5cyBy
ZWx5IG9uIGhhdmluZyB0aGUgdW5jb3JlJ3MNCj4gPiA+ID4gc3BpbmxvY2suDQo+ID4gPiA+IA0K
PiA+ID4gPiBUbyBoYW5kbGUgdGhpcywgc3BsaXQgdGhlIHNwaW5fbG9jay91bmxvY2tfaXJxc2F2
ZS9yZXN0b3JlKCkgaW50bw0KPiA+ID4gPiBzcGluX2xvY2svdW5sb2NrKCkgZm9sbG93ZWQgYnkg
YSBjYWxsIHRvIGxvY2FsX2lycV9zYXZlL3Jlc3RvcmUoKSBhbmQNCj4gPiA+ID4gY3JlYXRlIHdy
YXBwZXIgZnVuY3Rpb25zIGZvciBsb2NraW5nIGFuZCB1bmxvY2tpbmcgdGhlIHVuY29yZSdzDQo+
ID4gPiA+IHNwaW5sb2NrLiAgSW4gdGhlc2UgZnVuY3Rpb25zLCB3ZSBoYXZlIGEgY29uZGl0aW9u
IGNoZWNrIGFuZCBvbmx5DQo+ID4gPiA+IGFjdHVhbGx5IHRyeSB0byBsb2NrL3VubG9jayB0aGUg
c3BpbmxvY2sgd2hlbiBJOTE1IGlzIGRlZmluZWQsIGFuZA0KPiA+ID4gPiB0aHVzIHVuY29yZSBp
cyBhdmFpbGFibGUuDQo+ID4gPiA+IA0KPiA+ID4gPiBUaGlzIGtlZXBzIHRoZSBpZmRlZnMgY29u
dGFpbmVkIGluIHRoZXNlIG5ldyBmdW5jdGlvbnMgYW5kIGFsbCBzdWNoDQo+ID4gPiA+IGxvZ2lj
IGluc2lkZSB0aGUgZGlzcGxheSBjb2RlLg0KPiA+ID4gPiANCj4gPiA+ID4gQ2M6IFR2cnRrbyBV
cnN1bGluIDx0dnJ0by51cnN1bGluQGludGVsLmNvbT4NCj4gPiA+ID4gQ2M6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+ID4gPiA+IENjOiBWaWxsZSBTeXJqYWxhIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiA+ID4gUmV2aWV3ZWQtYnk6IFJvZHJpZ28g
Vml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4NCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogTHVj
YSBDb2VsaG8gPGx1Y2lhbm8uY29lbGhvQGludGVsLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+
IA0KPiA+ID4gPiANCj4gPiA+ID4gSW4gdjI6DQo+ID4gPiA+IA0KPiA+ID4gPiAgICAgICogUmVu
YW1lZCB1bmNvcmVfc3Bpbl8qKCkgdG8gaW50ZWxfc3Bpbl8qKCkNCj4gPiA+ID4gICAgICAqIENv
cnJlY3RlZCB0aGUgb3JkZXI6IHNhdmUsIGxvY2ssIHVubG9jaywgcmVzdG9yZQ0KPiA+ID4gPiAN
Cj4gPiA+ID4gSW4gdjM6DQo+ID4gPiA+IA0KPiA+ID4gPiAgICAgICogVW5kaWQgdGhlIGNoYW5n
ZSB0byBwYXNzIGRybV9pOTE1X3ByaXZhdGUgaW5zdGVhZCBvZiB0aGUgbG9jaw0KPiA+ID4gPiAg
ICAgICAgaXRzZWxmLCBzaW5jZSB3ZSB3b3VsZCBoYXZlIHRvIGluY2x1ZGUgaTkxNV9kcnYuaCBh
bmQgdGhhdCBwdWxscw0KPiA+ID4gPiAgICAgICAgaW4gYSB0cnVja2xvYWQgb2Ygb3RoZXIgaW5j
bHVkZXMuDQo+ID4gPiA+IA0KPiA+ID4gPiBJbiB2NDoNCj4gPiA+ID4gDQo+ID4gPiA+ICAgICAg
KiBBZnRlciBhIGJyaWVmIGF0dGVtcHQgdG8gcmVwbGFjZSB0aGlzIHdpdGggYSBkaWZmZXJlbnQg
cGF0Y2gsDQo+ID4gPiA+ICAgICAgICB3ZSdyZSBiYWNrIHRvIHRoaXMgb25lOw0KPiA+ID4gPiAg
ICAgICogUGFzcyBkcm1faTE5NV9wcml2YXRlIGFnYWluLCBhbmQgbW92ZSB0aGUgZnVuY3Rpb25z
IHRvDQo+ID4gPiA+ICAgICAgICBpbnRlbF92YmxhbmsuYywgc28gd2UgZG9uJ3QgbmVlZCB0byBp
bmNsdWRlIGk5MTVfZHJ2LmggaW4gYQ0KPiA+ID4gPiAgICAgICAgaGVhZGVyIGZpbGUgYW5kIGl0
J3MgYWxyZWFkeSBpbmNsdWRlZCBpbiBpbnRlbF92YmxhbmsuYzsNCj4gPiA+ID4gDQo+ID4gPiA+
IEluIHY1Og0KPiA+ID4gPiANCj4gPiA+ID4gICAgICAqIFJlbW92ZSBzdHJheSBpbmNsdWRlIGlu
IGludGVsX2Rpc3BsYXkuaDsNCj4gPiA+ID4gICAgICAqIFJlbW92ZSB1bm5lY2Vzc2FyeSBpbmxp
bmUgbW9kaWZpZXJzIGluIHRoZSBuZXcgZnVuY3Rpb25zLg0KPiA+ID4gPiANCj4gPiA+ID4gSW4g
djY6DQo+ID4gPiA+IA0KPiA+ID4gPiAgICAgICogSnVzdCByZW1vdmVkIHRoZSB1bWxhdXRzIGZy
b20gVmlsbGUncyBuYW1lLCBiZWNhdXNlIHBhdGNod29yaw0KPiA+ID4gPiAgICAgICAgZGlkbid0
IGNhdGNoIG15IHBhdGNoIGFuZCBJIHN1c3BlY3QgaXQgd2FzIHNvbWUgVVRGLTggY29uZnVzaW9u
Lg0KPiA+ID4gPiANCj4gPiA+ID4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF92YmxhbmsuYyB8IDQ5ICsrKysrKysrKysrKysrKystLS0tLQ0KPiA+ID4gPiAgICAxIGZpbGUg
Y2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pDQo+ID4gPiA+IA0KPiA+
ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Ymxh
bmsuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gPiA+
ID4gaW5kZXggMmNlYzJhYmY5NzQ2Li4yMjFmY2Q2YmY3N2IgMTAwNjQ0DQo+ID4gPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gPiA+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuYw0KPiA+ID4gPiBA
QCAtMjY1LDYgKzI2NSwzMCBAQCBpbnQgaW50ZWxfY3J0Y19zY2FubGluZV90b19odyhzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YywgaW50IHNjYW5saW5lKQ0KPiA+ID4gPiAgICAJcmV0dXJuIChzY2Fu
bGluZSArIHZ0b3RhbCAtIGNydGMtPnNjYW5saW5lX29mZnNldCkgJSB2dG90YWw7DQo+ID4gPiA+
ICAgIH0NCj4gPiA+ID4gICAgDQo+ID4gPiA+ICsvKg0KPiA+ID4gPiArICogVGhlIHVuY29yZSB2
ZXJzaW9uIG9mIHRoZSBzcGluIGxvY2sgZnVuY3Rpb25zIGlzIHVzZWQgdG8gZGVjaWRlDQo+ID4g
PiA+ICsgKiB3aGV0aGVyIHdlIG5lZWQgdG8gbG9jayB0aGUgdW5jb3JlIGxvY2sgb3Igbm90LiAg
VGhpcyBpcyBvbmx5DQo+ID4gPiA+ICsgKiBuZWVkZWQgaW4gaTkxNSwgbm90IGluIFhlLg0KPiA+
ID4gPiArICoNCj4gPiA+ID4gKyAqIFRoaXMgbG9jayBpbiBpOTE1IGlzIG5lZWRlZCBiZWNhdXNl
IHNvbWUgb2xkIHBsYXRmb3JtcyAoYXQgbGVhc3QNCj4gPiA+ID4gKyAqIElWQiBhbmQgcG9zc2li
bHkgSFNXIGFzIHdlbGwpLCB3aGljaCBhcmUgbm90IHN1cHBvcnRlZCBpbiBYZSwgbmVlZA0KPiA+
ID4gPiArICogYWxsIHJlZ2lzdGVyIGFjY2Vzc2VzIHRvIHRoZSBzYW1lIGNhY2hlbGluZSB0byBi
ZSBzZXJpYWxpemVkLA0KPiA+ID4gPiArICogb3RoZXJ3aXNlIHRoZXkgbWF5IGhhbmcuDQo+ID4g
PiA+ICsgKi8NCj4gPiA+ID4gK3N0YXRpYyB2b2lkIGludGVsX3ZibGFua19zZWN0aW9uX2VudGVy
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiA+ID4gPiArew0KPiA+ID4gPiArI2lm
ZGVmIEk5MTUNCj4gPiA+ID4gKwlzcGluX2xvY2soJmk5MTUtPnVuY29yZS5sb2NrKTsNCj4gPiA+
ID4gKyNlbmRpZg0KPiA+ID4gPiArfQ0KPiA+ID4gPiArDQo+ID4gPiA+ICtzdGF0aWMgdm9pZCBp
bnRlbF92Ymxhbmtfc2VjdGlvbl9leGl0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0K
PiA+ID4gPiArew0KPiA+ID4gPiArI2lmZGVmIEk5MTUNCj4gPiA+ID4gKwlzcGluX3VubG9jaygm
aTkxNS0+dW5jb3JlLmxvY2spOw0KPiA+ID4gPiArI2VuZGlmDQo+ID4gPiA+ICt9DQo+ID4gPiA+
ICsNCj4gPiA+ID4gICAgc3RhdGljIGJvb2wgaTkxNV9nZXRfY3J0Y19zY2Fub3V0cG9zKHN0cnVj
dCBkcm1fY3J0YyAqX2NydGMsDQo+ID4gPiA+ICAgIAkJCQkgICAgIGJvb2wgaW5fdmJsYW5rX2ly
cSwNCj4gPiA+ID4gICAgCQkJCSAgICAgaW50ICp2cG9zLCBpbnQgKmhwb3MsDQo+ID4gPiA+IEBA
IC0zMDIsMTEgKzMyNiwxMiBAQCBzdGF0aWMgYm9vbCBpOTE1X2dldF9jcnRjX3NjYW5vdXRwb3Mo
c3RydWN0IGRybV9jcnRjICpfY3J0YywNCj4gPiA+ID4gICAgCX0NCj4gPiA+ID4gICAgDQo+ID4g
PiA+ICAgIAkvKg0KPiA+ID4gPiAtCSAqIExvY2sgdW5jb3JlLmxvY2ssIGFzIHdlIHdpbGwgZG8g
bXVsdGlwbGUgdGltaW5nIGNyaXRpY2FsIHJhdw0KPiA+ID4gPiAtCSAqIHJlZ2lzdGVyIHJlYWRz
LCBwb3RlbnRpYWxseSB3aXRoIHByZWVtcHRpb24gZGlzYWJsZWQsIHNvIHRoZQ0KPiA+ID4gPiAt
CSAqIGZvbGxvd2luZyBjb2RlIG11c3Qgbm90IGJsb2NrIG9uIHVuY29yZS5sb2NrLg0KPiA+ID4g
PiArCSAqIEVudGVyIHZibGFuayBjcml0aWNhbCBzZWN0aW9uLCBhcyB3ZSB3aWxsIGRvIG11bHRp
cGxlDQo+ID4gPiA+ICsJICogdGltaW5nIGNyaXRpY2FsIHJhdyByZWdpc3RlciByZWFkcywgcG90
ZW50aWFsbHkgd2l0aA0KPiA+ID4gPiArCSAqIHByZWVtcHRpb24gZGlzYWJsZWQsIHNvIHRoZSBm
b2xsb3dpbmcgY29kZSBtdXN0IG5vdCBibG9jay4NCj4gPiA+ID4gICAgCSAqLw0KPiA+ID4gPiAt
CXNwaW5fbG9ja19pcnFzYXZlKCZkZXZfcHJpdi0+dW5jb3JlLmxvY2ssIGlycWZsYWdzKTsNCj4g
PiA+ID4gKwlsb2NhbF9pcnFfc2F2ZShpcnFmbGFncyk7DQo+ID4gPiA+ICsJaW50ZWxfdmJsYW5r
X3NlY3Rpb25fZW50ZXIoZGV2X3ByaXYpOw0KPiA+ID4gDQo+ID4gPiBTaG91bGRuJ3QgbG9jYWxf
aXJxX3NhdmUgZ28gaW50byBpbnRlbF92Ymxhbmtfc2VjdGlvbl9lbnRlcigpPyBJdCBzZWVtcw0K
PiA+ID4gYWxsIGNhbGxlcnMgZnJvbSBib3RoIGk5MTUgYW5kIHhlIGVuZCB1cCBkb2luZyB0aGF0
IGFueXdheSBhbmQgbmFtaW5nDQo+ID4gPiAidmJsYW5rX3N0YXJ0IiB3YXMgcHJlc3VtZWQgdGhl
cmUgd291bGQgYmUgbW9yZSB0byB0aGUgc2VjdGlvbiB0aGFuDQo+ID4gPiBjYWNoZWxpbmUgbW1p
byBidWcuIEkgbWVhbiB0aGF0IHRoZXJlIGlzIHNvbWUgYmVuZWZpdCBmcm9tIGtlZXBpbmcgdGhl
DQo+ID4gPiByZWFkb3V0IHRpbWluZ3MgdGlnaHQuDQo+ID4gPiANCj4gPiANCj4gPiBUaGUgcmVh
c29uIGlzIHRoYXQgdGhlcmUgaXMgb25lIGNhbGxlciB0aGF0IGhhcyBhbHJlYWR5IGRpc2FibGVk
DQo+ID4gaW50ZXJydXB0cyB3aGVuIHRoaXMgZnVuY3Rpb24gaXMgY2FsbGVkIChzZWUgYmVsb3cp
LCBzbyB3ZSBzaG91bGRuJ3QgZG8NCj4gPiBpdCBhZ2Fpbi4NCj4gDQo+IFllYWggSSBzYXcgdGhh
dCBidXQgd2l0aCBpcnFzYXZlL3Jlc3RvcmUgaXQgaXMgc2FmZSB0byBuZXN0LiBTbyBmb3IgbWUg
DQo+IGl0IGlzIG1vcmUgYSBmdW5kYW1lbnRhbCBxdWVzdGlvbiB3aGljaCBJIHJhaXNlIGFib3Zl
Lg0KDQpTdXJlLCBpdCBzaG91bGQgYmUgc2FmZSB0byBuZXN0LCBidXQgaXQgc2VlbWVkIGEgYml0
IHVnbHkgdG8gbWUuDQoNCkkgY2FuIGNoYW5nZSBpdCwgaWYgeW91IHByZWZlciwgYXMgeW91ciBw
b2ludCBzZWVtcyB2YWxpZCwgYnV0IEkgd2lsbA0Kd2FpdCB0byBzZWUgd2hhdCBSb2RyaWdvIHNh
eXMsIHNpbmNlIGhlIGhhZCBhbHJlYWR5IGdpdmVuIGhpcyByLWIsIGxlc3QNCndlIHN0YXJ0IHBp
bmctcG9uZ2luZyBvbiB0aGlzIHRvbyBtdWNoLg0KDQotLQ0KQ2hlZXJzLA0KTHVjYS4NCg==
