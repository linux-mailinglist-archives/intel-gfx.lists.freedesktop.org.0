Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 761B26F21C0
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Apr 2023 02:53:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2AF210E126;
	Sat, 29 Apr 2023 00:53:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41DDA10E126
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Apr 2023 00:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682729622; x=1714265622;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xVesAOi+xZXeAsmzf2f55TcNbSDZvPq0PV1ii1A4Iq4=;
 b=jMkzdjMZTpY4SMd1J3TkaFU4XdCD0iF3f1cdNfl5LgdAkEfUFrF5up37
 48175DRbNq9UruszJ26MvY0c+2f2Cml+oSW32hS2GmQ1Y/9dpjDRoudmQ
 YgyEoKjjuEmMBLoOvwWKlnLQ3qL9pJ5zLe9HVQrb6XwXFs4TWGigovZNo
 Vm06yu59LSMgjuTC3gKyspLS2Gae3oJ8iEx8vo95Fl4G0CdTqMkrZqPPH
 paQG8ZaSk0RKvHF9GD9k1Q3j61urRbGCKLd6U2ydUV+mNRXZRRAzXV1gB
 +0dadbVOvVZiKrYE0CPbWXDDkP0VPkhXtpZbSFVo+b6QdcApwLhuCay+t g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="332214012"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="332214012"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 17:53:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="727734028"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="727734028"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 28 Apr 2023 17:53:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 28 Apr 2023 17:53:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 28 Apr 2023 17:53:40 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 28 Apr 2023 17:53:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P3vrQtCADKVPJbsPCy4ObzYeJBMe4Nap5DnAODpcv6ueXBIop9zptgHmVQNuKJnmjIYNwrkilyPwibyfyQj1a3xHVVemDMcXjtPd/FP+AdIASd2BDR/fzCLQzhN9jC74MP6qbuu/wpnxzJ/+i9ilz8sXSxZJTd/KVjdKlJ3wkrZ7gWbC/PoNxNUlDlCsdKJXI7MlKk3nun2hLLITW9xXsj1N5IF46mHFBPN5eMR6QuBYaPENFgZ/bNkDhHm9PYI80GSRKWrBEwLggcl1Mibq0MitYla7MP48xVpH8XGP+gwlorWjWBdAdZrtWQW0THmhZZLYqP88J4ugXEJ46nMJjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xVesAOi+xZXeAsmzf2f55TcNbSDZvPq0PV1ii1A4Iq4=;
 b=ExD+IoYFt+P6zXsVPTdIZnVxs1XCJ9TftGsCrRGL1AZ7aLQ3IDSHBMxnlOmv/t1rRyA3AA6i/aO/YqIyoGM6OYdRyQMzpkhgq80+lOl4ww99VxH/vqavUpQk+uEG4yQt0vkST4o4AKPFNHdcrv+BqOEViJgqN68zDP8/JxhnCWNIiL2/LYNFK10QtkyMrttDsNF8YYbEgF7WWbZ9UaJDmUjEm1y6B+d+9biabJmw0iKL2ZXHXQfoM4e7Dvu0d1XojI4vBxOWoBUdNVX3ag6qJsQ7gSPMJOi37l8+KKvYJ09IPsjikWzW82Ls0BZ7Jk5AXaTk00rbDEZjbivusyyKiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 BL1PR11MB6050.namprd11.prod.outlook.com (2603:10b6:208:392::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6340.23; Sat, 29 Apr 2023 00:53:37 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%8]) with mapi id 15.20.6340.024; Sat, 29 Apr 2023
 00:53:37 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 00/13] drm/i915/mtl: Add support for C20
 phy
Thread-Index: AQHZebgvU9Y3+3a1G0mFEJBhVCGWka9BdlNA
Date: Sat, 29 Apr 2023 00:53:36 +0000
Message-ID: <DM4PR11MB5971756ACC4E61CB87DE33CF87689@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230428095433.4109054-1-mika.kahola@intel.com>
In-Reply-To: <20230428095433.4109054-1-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|BL1PR11MB6050:EE_
x-ms-office365-filtering-correlation-id: 382ac7de-94ee-4d6d-d6e0-08db484c2a55
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h1OWbqqhcEV0GalF5I9svtHiu2h03Aw8Y/Jkvl5i8HrC6Tf4UYdrDYVgmkUP8J7dN+1UzcGQb4Mo98Aml8rKiMAf6OblB6MVuSOIox9ubuFOC+ENAJfeS0l4aoEVJVWoBD33EnFn+8Co5KXubOrxuQwrND6Gyvmj/jvenyYNzLGwCbNmwAE3R1i0vxZbZfXkE2Zpfr5cttSFqaqqmelU0uke9b3ALT4cQIEjUqMo3u5Uti2ZCnpRvEjbHrRCmNKm/1/DHWasWpz6BwgM0Ao1FWEeO73VfJjs5bme0jmw0AKP54sUrXi45ptCRCENPUD1RMz6xH7IAUlTZc+LgPRQmO7GXp7gawdUFXYMHg7VgyUQPTkTxVAlYvyw67pHSKvH/ZbDlVb51f20cxJI0vRFkBTsHDgOa75sfV3Gdon6t/kP9gQEIdAgVRzFpfQowDjYieRia+a2wIko5gcQwzmYATk+J4tO8XBUlaJcYcMzze6m4vZPaCVHKtuKXniISDSlG8Y3fTY1NA3FNIniVbQpsOiea8JeXTw132/QayywytV62m5fJd4kOgFRFRqtQpzNlHgJbNkyqn3+KdUpDne3x2kkTKdBX5AdgrPyDKufc41bBvZHmh278XAl4nMiXTf3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(396003)(376002)(366004)(346002)(451199021)(9686003)(26005)(186003)(83380400001)(55016003)(66946007)(76116006)(86362001)(110136005)(38070700005)(5660300002)(316002)(52536014)(64756008)(66476007)(38100700002)(66446008)(66556008)(122000001)(33656002)(478600001)(7696005)(71200400001)(41300700001)(8936002)(8676002)(2906002)(6506007)(82960400001)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dURlRVdxbG4yd0RCM0dYNHVqMzBYQ2VET3hYVjdLRnYzT3RzVHA5M0hRU0pQ?=
 =?utf-8?B?U09pWFFYVUJlOUdDaWs5eFVReGR4cVpVQ1NFTm04RUFxRkNqRC9OWmJ3K0lZ?=
 =?utf-8?B?cXI3QVUxQVExbXA3WU5SLytJdXFNczk5YWh2NklCUEFEUDlxaU14M2JHNlY4?=
 =?utf-8?B?aEF6cUc4MzZ5OTVNOE1EUmlXS2hNTWhYUlBKdWF0L2RKQ2s4UmNKUUljckRk?=
 =?utf-8?B?d3lqcDkwUUxMZEpuN1BtQkV5eXNiS3Q2SVE0QVE4cVpidWNBWFRXbFFzbDdR?=
 =?utf-8?B?U2xpV0h0aWd5SnhSZloxdHhZak10dWg4REs3MWdIblJQM2JjMU4xZWZnSTk3?=
 =?utf-8?B?UmtkdGV1Q0p0TThxNnhwbVNhT2g2YjdzblRSOUVmRVozbzVqeDZYQlkvbzJa?=
 =?utf-8?B?VzdCVVNrTFlLOFgwQy84SXhaNmtkM21UTUprZlZTOWRwTVY4Y0MzUGczbTc1?=
 =?utf-8?B?VldaT3JxY2I4VEF6ZjJUZnA4V0xZMFJ0NHJzeW1kWFZxcTVucVMwV3M3TWdT?=
 =?utf-8?B?eUJoYWpYV0tCNXd3QzMzKzZlZlZUb3Fpbzc4bnRmOXl2MXJhRDNrMTRnclZB?=
 =?utf-8?B?ay9QNGxaVUtBTGs0b1hGYjRxcWxlTUhQTytIend4bXVXUnZZODlxN2tJKzY1?=
 =?utf-8?B?KytEM04rdUZDclprcjVteUJBOE1IS2V4azR1N1JLYkUxZlNZTmM2K0VrbUtT?=
 =?utf-8?B?MDdNVXVpUUdpQnZFcmRPdE4xcjBLL3RWL2o3aG5vQzdXZUh5cU5kR2tJR21W?=
 =?utf-8?B?U3MzVVVZdElOVFIwcm1VVGJsWWlFb2JzVFc3N2haakN4YnF2SGNMR0tOYUZU?=
 =?utf-8?B?V3VQRjdxV0tLM3haUXc4RjZsK2tDeXZHc0grR1k4RUdHWWR6UGt2bjU1bERx?=
 =?utf-8?B?YXo3VGptTGE0T1Bqd20wek5HRmd3ZjQ4bEI2bi9xaWs3SzZrMTd2d1dacDV5?=
 =?utf-8?B?azN6VVBBc3FEakFkN0EwbHJaZ2hubVB6eC9kWi95cDMyM2JVNTBRaFdubkRp?=
 =?utf-8?B?ZE5ob2hBcmZvWmphR1R0OHlJQlYxTlZkRVVjUkxmQmJjUEFaSkEwV0M0Y2U3?=
 =?utf-8?B?bjJHeWE2VFpHVmVJdFZGNTBWY1lBVkMvQTBzVlJGamMyMkIvN3M2WXNqT2F4?=
 =?utf-8?B?dVhRd05DRFhVYUJlM2tON3ZHN3JvSitzUmplNmwrbDhJZXF0MzFCMGZ4cVEx?=
 =?utf-8?B?OTRJV1A0OW0velBTUjVYMDZSOHBGNXdRMmJhZkpWSmVyV2h0OU1YU0dkblpQ?=
 =?utf-8?B?TFJpVU5Qem1xcjBYS09BdVBNaUdMQjUxb2JwQlB0bWRJS1NhREVmYmgxTHRz?=
 =?utf-8?B?OEtzV3ZvY1ZRRmEzMjNrTnArd3ZhV1FzN3Q2YXIzT1NKTWt6a3J1aHMyQlV3?=
 =?utf-8?B?Z2RSU1U4Ny85NkxaYllDdEZUdXRzRlBuTFo2ejk0dktzcW92VmlEdFBhSmwy?=
 =?utf-8?B?UlhxcldsWjlSV0NoUFNQWDB6WitoMlNYRXRJakxid1Z3QzdLdk55NDRjazlZ?=
 =?utf-8?B?YmJabzlrZmtUZXVOQWdyTkM5djdqS1BidWdoelJZNHNWdGxVYlBPWE4zZnlx?=
 =?utf-8?B?UTVwdEgyVVVwQWtPOVVSYmdjWVZWeXRaU2d0NnJGMWZDZlJRNHMrR1h3Nm16?=
 =?utf-8?B?aVVBY1pjaDZkdXMycTlrOFBlOGc3S1h5MUJhU1hXUS9xZzFObmdaVkVpOEoy?=
 =?utf-8?B?L2F6Y0FsZHBzeXB1Ykc3R2F6YmNLTlNNcUIvRlYxQS9UNERZZ0wvNXptMWxB?=
 =?utf-8?B?aUt3S0JnZytLOGp4TUxMWDM2cUZ5QzdFSEpCSjBYbnFzN3NIVU03dnF4N3VT?=
 =?utf-8?B?N2tra25hRzNDUXZoeUZZeS9VTExYVVdlWGRGUU1vWUFaWjVkNDNaaitHUm11?=
 =?utf-8?B?VG0vNVNpbkNXaUhyeUUrc3I0Q21jeDM4VE9vemlFeUw0aTFSOUgrdFNuak5j?=
 =?utf-8?B?Z3AzRk1DOEJ5NGxmaVBIamRIQ1hkMnZSWkZ4N2xTUEpYK04vMFFVdGJRam5k?=
 =?utf-8?B?ZDBNL25LczQ4TUNHak1HR04xN1dXS0lsTkFwOURHK3NPVTJEQXVrN3JIdUc5?=
 =?utf-8?B?bmNBeUd0bURSSHZFbmZ4a0RHN2h1K0o1YWpOallkcEVudnNZcUxpNXMvdGhD?=
 =?utf-8?B?UFBxbVVhMkE5RXpYeHgvcitCcnd3Q3l6SVdGUTFsVUludm9ha0x0eUMrMlIz?=
 =?utf-8?B?eVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 382ac7de-94ee-4d6d-d6e0-08db484c2a55
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2023 00:53:36.7857 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qpN+uVMJE//LS5GHSywYkldzSN8BaVfAZvYE4v5QTFbLRpQc758vr110y4q48onlPHl3vT5/Y/IIyCf+bzAHma8YERuxHpRzH+npvzxkoE0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6050
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 00/13] drm/i915/mtl: Add support for C20
 phy
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

Rml4ZWQgdGhlIHBhcmVudGhlc2lzIGFsaWdubWVudCBpbiBwYXRjaCAwMiBhbmQgcHVzaGVkIHRo
ZSBzZXJpZXMuDQoNClRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoZXMuDQoNCi1SYWRoYWtyaXNobmEo
UkspIFNyaXBhZGENCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRl
bC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxm
IE9mIE1pa2ENCj4gS2Fob2xhDQo+IFNlbnQ6IEZyaWRheSwgQXByaWwgMjgsIDIwMjMgMjo1NCBB
TQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50
ZWwtZ2Z4XSBbUEFUQ0ggdjIgMDAvMTNdIGRybS9pOTE1L210bDogQWRkIHN1cHBvcnQgZm9yIEMy
MCBwaHkNCj4gDQo+IEFkZCBzdXBwb3J0IGZvciBDMjAgcGh5IGZvciBUeXBlLUMgY29ubmVjdGlv
bnMuIEMyMCBwaHkgZGlmZmVycyBmcm9tDQo+IEMxMCBhbmQgaGVuY2Ugd2UgbmVlZCB0byBzZXBh
cmF0ZWx5IGhhbmRsZSB0aGlzIGNhc2UuDQo+IA0KPiB2MjogRml4ZXMgZm9yIEMyMCBwbGwgcHJv
Z3JhbW1pbmcgYW5kIGh3IHJlYWRvdXQNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS2Fob2xh
IDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IA0KPiBBbnVzaGEgU3JpdmF0c2EgKDEpOg0KPiAg
IGRybS9pOTE1L210bDogUGluIGFzc2lnbm1lbnQgZm9yIFR5cGVDDQo+IA0KPiBHdXN0YXZvIFNv
dXNhICgxKToNCj4gICBkcm0vaTkxNS9tdGw6IERlZmluZSBtYXNrIGZvciBEREkgQVVYIGludGVy
cnVwdHMNCj4gDQo+IEltcmUgRGVhayAoMSk6DQo+ICAgZHJtL2k5MTUvbXRsOiBUeXBlQyBIUEQg
bGl2ZSBzdGF0dXMgcXVlcnkNCj4gDQo+IE1pa2EgS2Fob2xhICgxMCk6DQo+ICAgZHJtL2k5MTUv
bXRsOiBDMjAgUExMIHByb2dyYW1taW5nDQo+ICAgZHJtL2k5MTUvbXRsOiBDMjAgSFcgcmVhZG91
dA0KPiAgIGRybS9pOTE1L210bDogRHVtcCBDMjAgcGxsIGh3IHN0YXRlDQo+ICAgZHJtL2k5MTUv
bXRsOiBDMjAgcG9ydCBjbG9jayBjYWxjdWxhdGlvbg0KPiAgIGRybS9pOTE1L210bDogQWRkIHZv
bHRhZ2Ugc3dpbmcgc2VxdWVuY2UgZm9yIEMyMA0KPiAgIGRybS9pOTE1L210bDogRm9yIERQMi4w
IDEwRyBhbmQgMjBHIHJhdGVzIHVzZSBNUExMQQ0KPiAgIGRybS9pOTE1L210bDogRW5hYmxpbmcv
ZGlzYWJsaW5nIHNlcXVlbmNlIFRodW5kZXJib2x0IHBsbA0KPiAgIGRybS9pOTE1L210bDogUmVh
ZG91dCBUaHVuZGVyYm9sdCBIVyBzdGF0ZQ0KPiAgIGRybS9pOTE1L210bDogUG93ZXIgdXAgVENT
Uw0KPiAgIGRybS9pOTE1L210bDogRW5hYmxlIFRDIHBvcnRzDQo+IA0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgIHwgMTEzNyArKysrKysrKysrKysrKysr
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmggIHwgICAy
MyArLQ0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHlfcmVncy5oIHwg
ICA0MSArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAg
fCAgIDI1ICstDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMg
ICAgfCAgIDUzICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyAgfCAgICA3ICstDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmggICAgfCAgIDE2ICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMgICAgICAgfCAgIDEyICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwbGwuYyAgICAgfCAgICAyICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfaGRtaS5jICAgICB8ICAgIDYgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfaGRtaS5oICAgICB8ICAgIDEgKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF90Yy5jICAgICAgIHwgIDI1NSArKystDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2lycS5jICAgICAgICAgICAgICAgfCAgICA1ICstDQo+ICAxMyBmaWxlcyBjaGFuZ2Vk
LCAxNTEwIGluc2VydGlvbnMoKyksIDczIGRlbGV0aW9ucygtKQ0KPiANCj4gLS0NCj4gMi4zNC4x
DQoNCg==
