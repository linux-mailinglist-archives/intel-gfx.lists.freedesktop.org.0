Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C14E7B9B3E
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 09:08:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2E6B10E1BD;
	Thu,  5 Oct 2023 07:08:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB07A10E1BA
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 07:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696489708; x=1728025708;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eHzl7agGtvigXj9o2bWuIyh++jiUtKkcW6VpWjBpCpA=;
 b=ihTmDSUXDOw7YIWaUmJbrK9u78SISUDHVJMlAakGfr43QlrJUA9f+A6o
 jopMyFKaFQE4B6s81CKVbFLq60h8O4gd2lvgCxXh9Iqt4nUp0fIl1qud1
 8QmKM3RZP6K1vqCQgEYIukHGa6SGjp3dRdU7HaXTIa1BcqNdrQOXwIjs0
 betLCG9zTB6gS51tRYneqoH/RAzsXcLer5BVMmE2IlelyTE2Quu90NFT1
 5XfbcfNEA/056sWOe4Cy+ic5CWXHtk0kKY1ZgjhHvkw5IyAO4sGGbgbeQ
 rji1zAbamtoC3Bvqvjs2qdl8WHZLyTi9ieaFgyLKXI/bMhxGVNVGr1a2R g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="387295319"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="387295319"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 00:08:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="875455198"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="875455198"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Oct 2023 00:08:27 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 00:08:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 5 Oct 2023 00:08:26 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 5 Oct 2023 00:08:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CKQHGh592S7bA8TOfw22tm1sFPp3bOecyiZVP1a/ZxoYEfp3KmrOzeJ7IDihJLSw/yjB+XqelhntXWRXHz1FiYl7iOXrOUS46Io44+Bx9dQ1FZzJaovLAv9qkyQ73M7Nwy+hlmTlAJ55FQMHVBGI3YiSLoA1X6ZVHui+vUHrxHp2ThZLZz3hUdrbLvfbHdy2AjrRNN0O4TIqVyGPUPgPyyCw9jQ/8Gres9X+/h6yDU6PN9p2lJXQwCcsECR1ljTCteZC+E1/cNXkBdUr3UJ21fUw6oYYfceURIbJ4Zes9DXwkbjeZgx68rsYNfAg64TKtA8RJ7FjWRXaUqAdbbKEzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eHzl7agGtvigXj9o2bWuIyh++jiUtKkcW6VpWjBpCpA=;
 b=Qbqyy1e4LCEtTa1DXqFhFyOeckGc0QeXnLVmYM05YAwNtEe7FcTNn0/k4Zn+TnNfUf84k8a3H8nEJSkJ2Y89cVUF/rymj6tdzpRnrYo5zGi689djjOU9nTn4uJZJzdG1mNBXqdXGm5jedYa6bO3qxFYsloIEI19rVZkT8uhnrx+r6v6IW0s4GXFy+1Uvr539uOSf+LhjQqbCoORqQ98SxuzCg05lvfZZAYSH2xKSELGZ5xIJaAGKkJtkbKUp3zATBHiEE5107mOzaP3BmbhN6TjsKEhYixqfgZglyZ/Jk5mqfyMDsvOFlZ7B6bwilSrMC8Cgpi0vQfp0QepUhZA14g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH7PR11MB8569.namprd11.prod.outlook.com (2603:10b6:510:304::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.33; Thu, 5 Oct
 2023 07:08:23 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6838.033; Thu, 5 Oct 2023
 07:08:23 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [v4] drm/i915/display: Created exclusive version of
 vga decode setup
Thread-Index: AQHZ8qega39Imua8YkGGMp9elEwji7A5Nr0AgAGZCDA=
Date: Thu, 5 Oct 2023 07:08:23 +0000
Message-ID: <DM4PR11MB6360A7F17562DC18E942B869F4CAA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230929074306.1533859-1-uma.shankar@intel.com>
 <DM6PR11MB3177410857FB6B18087079D5BACBA@DM6PR11MB3177.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB3177410857FB6B18087079D5BACBA@DM6PR11MB3177.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH7PR11MB8569:EE_
x-ms-office365-filtering-correlation-id: d1551312-6b39-4fec-bebf-08dbc571dd32
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wHfyaT0136mWdwabvLOIqY/VYdzyJ6VSYZcN8Hm4sfY+oRjDCsrt7phxH2rr6Ty1x9aTPA3mcv+cMs+q5r667IjPX0NFRjeELBRUNFTRO0HvDgU+6VVAOJ5bqElV8d0hLuS0HxVrsyDc3ZAeisVxJlzD2hBSv4p7Ygfry3/7rudFtroA7/eGHYhaFgwXhveDiNOb+3PXYcIrxRb9E64mjXgOn4yXf10iMS3H6DhqkxoixZcbCE6oCaXsWVqgpBdelvZv7w6X6iYwGdE6bFMN014aiYc7RLty507D2YfM4+OfCbP2zY7vWO6B4AeP1WyP8iHPbqv+ZTLFoiIaYqMPS+r69m5Vcj2H1rxGVt6qMLUbfTrhVyWudISmJaXp3xeg3BFOlZBh58Nnk0bDYRu/H7rGkiyrxetgaKiSU9D4FjuQsYJhWaJGW0LCbeBnlBArwRbVXVwsa5s3IFGAOlWDr6nKTP4MTmdi9Kdhrq1uSZgQEw+6sUpVGzUpFAxl1/gSgOr1zl9FJCoBrxNt+0lBlQxxqa7MgpZUr2RhDd+TCi4g2ctBbmIW267TKXFkWZGrYB8uWWdI1BShOl4oHTuq/oKp8+3dKrwPt5Tj/dTEhLWd1gldAUQDO8OIjiBUEpNv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(346002)(376002)(136003)(396003)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(38100700002)(2906002)(83380400001)(86362001)(38070700005)(82960400001)(122000001)(55016003)(66446008)(316002)(76116006)(66476007)(66556008)(66946007)(64756008)(53546011)(9686003)(7696005)(110136005)(107886003)(6506007)(33656002)(41300700001)(478600001)(71200400001)(8936002)(8676002)(4326008)(52536014)(5660300002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UC93VVBBenJ6eUdGRzdJdUpSNmxmME5XVGZBc0I4SlZJdGltOU1RN0cwVVpJ?=
 =?utf-8?B?bU9oYUw0dWtLUDB2dTFXamYwZXJtQ0E4ZzhKQy9qUUU4VjVxSlBLbzdGSlF0?=
 =?utf-8?B?SVBCQ0xvTG94bS94bnBCazdpN3RISnFpNFpMR1JEdmxUVVNYSk54ZkNmeXI5?=
 =?utf-8?B?YzU2NlFFemdseE9KSVpBWTIrNTlhNnc1ekUwbEdRTFVMMXJFYndQY0FqVEF3?=
 =?utf-8?B?cUJRNmRxSUlJS1hmSnFLclUraGtyS3pUcnhHQTNMVm11SkxFWi9aYnRWT0J1?=
 =?utf-8?B?SnhhOXphbWNBenRsVFlTNXVFcUFlQUszei9zQlZrQklaU3Bzc1dpNnlzOWZy?=
 =?utf-8?B?M2F0MktPZnJjYW1lbjJNWnQvQ1JaelY3U2dkamZDTWt6S2h5ZS9za0VuZWdK?=
 =?utf-8?B?SnNlVDhqbGRSUTAyY0N3ajlJYVVSak1kUEIzWTZ2QXdLVTFNbnhpWjlFaG4w?=
 =?utf-8?B?ek5Baml0ZEZJN1k2R0pNUUFUdVNMNkUyeWtEU2hZY1pGTFlyMFRXNitwVktJ?=
 =?utf-8?B?MVFWTFBuNUhDbFZxRU10VHlkaG1TZ2Q3ZEpHSzdBQW1YR1JtbFYzT2NzeTRt?=
 =?utf-8?B?aXN3VHdjVm9YZkExUVRkL21hUDk0ZVFIRW9ZZkxqSTdPbDh1Znh1VFFlM3kx?=
 =?utf-8?B?dTZiVkhCVFkwVjlBTys4K2JwNldQdEpaU2Q1cjU1OXVFRWFPWlBLdDFLaUxW?=
 =?utf-8?B?RWwvZ25URG1tTmpzUUlQdTBaakkyOGp6VUJpa0ZSbDRjdUVGMlg3MTQ1ZDVk?=
 =?utf-8?B?aklMNTRJSW1rUE8xSDMvN1NUQVlJeEkzNlJQa2NQVkkzTkRaMGpSL01XeXVq?=
 =?utf-8?B?Uk9JQXFwK1pyZ3BCcVJGcHJOZEM2MFlTSHR0MldsTWY5VDRMbURDUDZFSUh2?=
 =?utf-8?B?cHBSYWs0QllRRTJpeWVFVkVET28xcWcvQ1MwaVgrSnJpSzNVeko1a0lhMjRN?=
 =?utf-8?B?WCtCeGorUE5ZR3pVaXVVcUZFUFVHZDhEYmg4UFlGK2F3R3ArVERqZ0hKQ3E1?=
 =?utf-8?B?ek5sSDlSbS9JdDk5eWczM09PWnpnVVJKZno0RmoydkJUQXd2T0gxRC9rbkJY?=
 =?utf-8?B?ME1jVDZIV2Nvd3JneEsrbEdiQzBYdUNWUzZzQ2VRTnNYZjR0UFVzaHI5TXhC?=
 =?utf-8?B?ZG0vQ01ydGNxN0J6cTRXOFBvaXRseTJPd2h5S0pOeW5GZjRpT1JLclMySzJk?=
 =?utf-8?B?T2VvZFdKK2FFeERyLytyQ01CaEtBdHB6TC9ROXY5dkRTblZma01aVjZ5UFJB?=
 =?utf-8?B?STlyQ1hoa1NDbFVTMVhjd0IyUkQ4ZUdQc1NZd2s5RlpqTkRKaUU4eE1EZDdm?=
 =?utf-8?B?UmdIQVlhOUZWK1REeHIrRjlkOURFSnlXL3dxUlp5dTBmeXlRbTloamxHQnVu?=
 =?utf-8?B?S05Ic1JHNlVaNEk3WTgyaC9xbWtCNUZlQzllZHZ5MHpPVTRsRzRqRU4xM1o0?=
 =?utf-8?B?Z080MEZOVzdGUkl4ZGp2Qnk5T0M3MndJRVlyYXo1WnV6WWxsYkc0b2VtcnZO?=
 =?utf-8?B?V1FYdlJzSm9Bd2Fpb2k2ME0vYmxLN2ROY0NndnhPQkhFaVVhZGZaVXJtUnQ4?=
 =?utf-8?B?Yzd5bTVud2xYY3FGSnNiZE15bGlsbE5mNWppTlJUejZXdU1LUkhiaUlYNml5?=
 =?utf-8?B?UkdTQjdMOTI4Ti9lVEdSb1NQb1I2UDVrNzk5OHZWMXFMbW1CS1ROcm5wVzRD?=
 =?utf-8?B?Q01qd3VKTm9xT1IzRWRUcEdCN3B6RUF1U0ZWOUFlWUpjcVVrUm9SOGxadE1x?=
 =?utf-8?B?bHBISEZxL0Y4eWMydkZ2R0J5enJLWVJ6RjY4cklyTytDck4vdFR6QnIvR0do?=
 =?utf-8?B?N3BLZm1NbDg0NHJoYmNlQkszU0tGTU56WlZmQk42bUczVXFMNUhJMXVkQVRZ?=
 =?utf-8?B?R0cyREo4enRDTElkVWlLZGZjZWdNTDhveDEzRC9ralVCaVN2emRtNHJsU3R5?=
 =?utf-8?B?WTQ0elFiM251ZmJ6V1VycW0vV1BYSFg2SjA0cUtjNFlqZFBUb2xFZm9ydDlt?=
 =?utf-8?B?RjBoMzd6QXozNVVpWDdiRGZSbTZJQ2dSZVBOQWV5cjVzRUdKOXg2L1ZKdEZx?=
 =?utf-8?B?ZDdxTllkeFpJc0pIdnF1L1FCWWZkY2luMVc3Vmt2Y2ZFeDk1c1dGbG0yR25G?=
 =?utf-8?Q?GlkIW72JnMXzB4TjrmsHAcbF2?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1551312-6b39-4fec-bebf-08dbc571dd32
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2023 07:08:23.5914 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YqxJGi+wylHgLEb7t6UhnEagL0et35gNH/jgn3JTEQwl2pRkFFlJ0Nik3+efKPm8Xbh0g860tp3QmlaTBggysg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8569
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v4] drm/i915/display: Created exclusive version of
 vga decode setup
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTXVydGh5LCBBcnVuIFIg
PGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIE9jdG9iZXIgNCwg
MjAyMyAxMjoxMyBQTQ0KPiBUbzogU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+
OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEsIEphbmkgPGph
bmkubmlrdWxhQGludGVsLmNvbT4NCj4gU3ViamVjdDogUkU6IFtJbnRlbC1nZnhdIFt2NF0gZHJt
L2k5MTUvZGlzcGxheTogQ3JlYXRlZCBleGNsdXNpdmUgdmVyc2lvbiBvZiB2Z2ENCj4gZGVjb2Rl
IHNldHVwDQo+IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206
IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBC
ZWhhbGYgT2YNCj4gPiBVbWEgU2hhbmthcg0KPiA+IFNlbnQ6IEZyaWRheSwgU2VwdGVtYmVyIDI5
LCAyMDIzIDE6MTMgUE0NCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiA+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0
OiBbSW50ZWwtZ2Z4XSBbdjRdIGRybS9pOTE1L2Rpc3BsYXk6IENyZWF0ZWQgZXhjbHVzaXZlIHZl
cnNpb24NCj4gPiBvZiB2Z2EgZGVjb2RlIHNldHVwDQo+ID4NCj4gPiBDdXJyZW50IHZnYSBhcmJp
dGVyIGltcGxlbWVudGF0aW9uIGluIGk5MTUgbmVlZHMgYSByZS1kZXNpZ24uDQo+ID4gVGhlIGN1
cnJlbnQgYXBwcm9hY2ggd291bGQgY2F1c2UgcmVhbCBwcm9ibGVtcyBpZiBhbnlvbmUgYWN0dWFs
bHkNCj4gPiBuZWVkcyB0byB0YWxrIGFub3RoZXIgR1BVIHVzaW5nIGxlZ2FjeSBWR0EgcmVzb3Vy
Y2VzLg0KPiA+DQo+ID4gVGhlIG1haW4gaXNzdWUgaXMgdGhhdCBYIGJlY29tZXMgYSBzbGlkZXNo
b3cgaWYgaXQgdGhpbmtzIHRoZXJlIGFyZQ0KPiA+IG11bHRpcGxlIEdQVXMgdGhhdCBoYXZlIFZH
QSBkZWNvZGluZyBlbmFibGVkIGFzIGl0IGluc2lzdHMgb24NCj4gPiBhZGp1c3RpbmcgdGhlIFZH
QSByb3V0aW5nIHByZXR0eSBtdWNoIGZvciBldmVyeSBsaXR0bGUgb3BlcmF0aW9uIGludm9sdmlu
ZyBhbnkgb2YNCj4gdGhlIEdQVXMuDQo+ID4NCj4gPiBUaGUgY2xlYW51cCB3aWxsIGJlIHBsYW5u
ZWQgZm9yIGk5MTUuIE1lYW53aGlsZSB0byBmb2N1cyBvbiBYZQ0KPiA+IHVwc3RyZWFtaW5nIGFu
ZCBoYXZlIGEgY2xlYW5lciBzZXBhcmF0aW9uLCB0aGUgc2FpZCBmdW5jdGlvbmFsaXR5IGlzDQo+
ID4gYmVpbmcgbW92ZWQgdG8gYSBkaWZmZXJlbnQgZmlsZSBleGNsdXNpdmUgZm9yIGk5MTUuIFhl
IGRyaXZlciB3aWxsDQo+ID4gcmUtdXNlIHJlc3Qgb2YgdGhlIGRpc3BsYXkgY29kZSBmcm9tIGk5
MTUuDQo+ID4NCj4gPiB2MjogQWRkcmVzc2VkIEphbmkgTmlrdWxhJ3MgcmV2aWV3IGNvbW1lbnRz
Lg0KPiA+DQo+ID4gdjM6IERyb3BwZWQgYSBkdXBsaWNhdGUgZnVuY3Rpb24gKEphbmkpDQo+ID4N
Cj4gPiB2NDogVXBkYXRlZCBjb21taXQgbWVzc2FnZSB3aXRoIHJlYXNvbmluZyBhcyBzdWdlc3Rl
ZCBieSBWaWxsZS4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hh
bmthckBpbnRlbC5jb20+DQo+IA0KPiBSZXZpZXdlZC1ieTogQXJ1biBSIE11cnRoeSA8YXJ1bi5y
Lm11cnRoeUBpbnRlbC5jb20+DQoNClRoYW5rcyBBcnVuLCBWaWxsZSBhbmQgSmFuaSBmb3IgdGhl
IHJldmlld3MuDQpQdXNoZWQgdGhlIGNoYW5nZSB0byBkcm0taW50ZWwtbmV4dC4NCg0KV2lsbCBj
cmVhdGUgYSBmb2xsb3ctdXAgaW50ZXJuYWwgdGFzayBmb3IgdmdhIGNsZWFudXAgYW5kIGhhbmRs
aW5nIGFzIHN1Z2dlc3RlZCBieSBWaWxsZS4NCg0KUmVnYXJkcywNClVtYSBTaGFua2FyDQoNCj4g
VGhhbmtzIGFuZCBSZWdhcmRzLA0KPiBBcnVuIFIgTXVydGh5DQo+IC0tLS0tLS0tLS0tLS0tLS0t
LS0tDQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdh
LmMgfCAxOCArLS0tLS0tLS0tLS0tLS0tLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvc29j
L2ludGVsX2dtY2guYyAgICB8IDE0ICsrKysrKysrKysrKysrDQo+ID4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L3NvYy9pbnRlbF9nbWNoLmggICAgfCAgMiArKw0KPiA+ICAzIGZpbGVzIGNoYW5nZWQs
IDE3IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmMNCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmMNCj4gPiBpbmRleCAyODZhMGJkZDI4YzYu
LjRiOTg4MzNiZmE4YyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3ZnYS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92Z2EuYw0KPiA+IEBAIC0zLDExICszLDkgQEANCj4gPiAgICogQ29weXJpZ2h0IMKpIDIw
MTkgSW50ZWwgQ29ycG9yYXRpb24NCj4gPiAgICovDQo+ID4NCj4gPiAtI2luY2x1ZGUgPGxpbnV4
L3BjaS5oPg0KPiA+ICAjaW5jbHVkZSA8bGludXgvdmdhYXJiLmg+DQo+ID4NCj4gPiAgI2luY2x1
ZGUgPHZpZGVvL3ZnYS5oPg0KPiA+IC0NCj4gPiAgI2luY2x1ZGUgInNvYy9pbnRlbF9nbWNoLmgi
DQo+ID4NCj4gPiAgI2luY2x1ZGUgImk5MTVfZHJ2LmgiDQo+ID4gQEAgLTk5LDIwICs5Nyw2IEBA
IHZvaWQgaW50ZWxfdmdhX3Jlc2V0X2lvX21lbShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+
ICppOTE1KQ0KPiA+ICAJdmdhX3B1dChwZGV2LCBWR0FfUlNSQ19MRUdBQ1lfSU8pOw0KPiA+ICB9
DQo+ID4NCj4gPiAtc3RhdGljIHVuc2lnbmVkIGludA0KPiA+IC1pbnRlbF92Z2Ffc2V0X2RlY29k
ZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgYm9vbCBlbmFibGVfZGVjb2RlKSAtew0KPiA+IC0Jc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBwZGV2X3RvX2k5MTUocGRldik7DQo+ID4gLQ0K
PiA+IC0JaW50ZWxfZ21jaF92Z2Ffc2V0X3N0YXRlKGk5MTUsIGVuYWJsZV9kZWNvZGUpOw0KPiA+
IC0NCj4gPiAtCWlmIChlbmFibGVfZGVjb2RlKQ0KPiA+IC0JCXJldHVybiBWR0FfUlNSQ19MRUdB
Q1lfSU8gfCBWR0FfUlNSQ19MRUdBQ1lfTUVNIHwNCj4gPiAtCQkgICAgICAgVkdBX1JTUkNfTk9S
TUFMX0lPIHwgVkdBX1JTUkNfTk9STUFMX01FTTsNCj4gPiAtCWVsc2UNCj4gPiAtCQlyZXR1cm4g
VkdBX1JTUkNfTk9STUFMX0lPIHwgVkdBX1JTUkNfTk9STUFMX01FTTsNCj4gPiAtfQ0KPiA+IC0N
Cj4gPiAgaW50IGludGVsX3ZnYV9yZWdpc3RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkgIHsNCj4gPg0KPiA+IEBAIC0xMjcsNyArMTExLDcgQEAgaW50IGludGVsX3ZnYV9yZWdpc3Rl
cihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gPiAgCSAqIHRoZW4gd2UgZG8gbm90
IHRha2UgcGFydCBpbiBWR0EgYXJiaXRyYXRpb24gYW5kIHRoZQ0KPiA+ICAJICogdmdhX2NsaWVu
dF9yZWdpc3RlcigpIGZhaWxzIHdpdGggLUVOT0RFVi4NCj4gPiAgCSAqLw0KPiA+IC0JcmV0ID0g
dmdhX2NsaWVudF9yZWdpc3RlcihwZGV2LCBpbnRlbF92Z2Ffc2V0X2RlY29kZSk7DQo+ID4gKwly
ZXQgPSB2Z2FfY2xpZW50X3JlZ2lzdGVyKHBkZXYsIGludGVsX2dtY2hfdmdhX3NldF9kZWNvZGUp
Ow0KPiA+ICAJaWYgKHJldCAmJiByZXQgIT0gLUVOT0RFVikNCj4gPiAgCQlyZXR1cm4gcmV0Ow0K
PiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NvYy9pbnRlbF9nbWNo
LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NvYy9pbnRlbF9nbWNoLmMNCj4gPiBpbmRl
eCA0OWM3ZmIxNmU5MzQuLmYzMmU5Zjc4NzcwYSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9zb2MvaW50ZWxfZ21jaC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvc29jL2ludGVsX2dtY2guYw0KPiA+IEBAIC01LDYgKzUsNyBAQA0KPiA+DQo+ID4gICNpbmNs
dWRlIDxsaW51eC9wY2kuaD4NCj4gPiAgI2luY2x1ZGUgPGxpbnV4L3BucC5oPg0KPiA+ICsjaW5j
bHVkZSA8bGludXgvdmdhYXJiLmg+DQo+ID4NCj4gPiAgI2luY2x1ZGUgPGRybS9kcm1fbWFuYWdl
ZC5oPg0KPiA+ICAjaW5jbHVkZSA8ZHJtL2k5MTVfZHJtLmg+DQo+ID4gQEAgLTE2NywzICsxNjgs
MTYgQEAgaW50IGludGVsX2dtY2hfdmdhX3NldF9zdGF0ZShzdHJ1Y3QNCj4gPiBkcm1faTkxNV9w
cml2YXRlICppOTE1LCBib29sIGVuYWJsZV9kZWNvZGUpDQo+ID4NCj4gPiAgCXJldHVybiAwOw0K
PiA+ICB9DQo+ID4gKw0KPiA+ICt1bnNpZ25lZCBpbnQgaW50ZWxfZ21jaF92Z2Ffc2V0X2RlY29k
ZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgYm9vbA0KPiA+ICtlbmFibGVfZGVjb2RlKSB7DQo+ID4g
KwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHBkZXZfdG9faTkxNShwZGV2KTsNCj4g
PiArDQo+ID4gKwlpbnRlbF9nbWNoX3ZnYV9zZXRfc3RhdGUoaTkxNSwgZW5hYmxlX2RlY29kZSk7
DQo+ID4gKw0KPiA+ICsJaWYgKGVuYWJsZV9kZWNvZGUpDQo+ID4gKwkJcmV0dXJuIFZHQV9SU1JD
X0xFR0FDWV9JTyB8IFZHQV9SU1JDX0xFR0FDWV9NRU0gfA0KPiA+ICsJCSAgICAgICBWR0FfUlNS
Q19OT1JNQUxfSU8gfCBWR0FfUlNSQ19OT1JNQUxfTUVNOw0KPiA+ICsJZWxzZQ0KPiA+ICsJCXJl
dHVybiBWR0FfUlNSQ19OT1JNQUxfSU8gfCBWR0FfUlNSQ19OT1JNQUxfTUVNOyB9DQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NvYy9pbnRlbF9nbWNoLmgNCj4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L3NvYy9pbnRlbF9nbWNoLmgNCj4gPiBpbmRleCBkMDEzM2VlZGM3
MjAuLjIzYmUyZDExM2FmZCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9z
b2MvaW50ZWxfZ21jaC5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc29jL2ludGVs
X2dtY2guaA0KPiA+IEBAIC04LDExICs4LDEzIEBADQo+ID4NCj4gPiAgI2luY2x1ZGUgPGxpbnV4
L3R5cGVzLmg+DQo+ID4NCj4gPiArc3RydWN0IHBjaV9kZXY7DQo+ID4gIHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlOw0KPiA+DQo+ID4gIGludCBpbnRlbF9nbWNoX2JyaWRnZV9zZXR1cChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7ICB2b2lkDQo+ID4gaW50ZWxfZ21jaF9iYXJfc2V0dXAo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOyAgdm9pZA0KPiA+IGludGVsX2dtY2hfYmFy
X3RlYXJkb3duKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsgIGludA0KPiA+IGludGVs
X2dtY2hfdmdhX3NldF9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgYm9vbA0K
PiA+IGVuYWJsZV9kZWNvZGUpOw0KPiA+ICt1bnNpZ25lZCBpbnQgaW50ZWxfZ21jaF92Z2Ffc2V0
X2RlY29kZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgYm9vbA0KPiA+ICtlbmFibGVfZGVjb2RlKTsN
Cj4gPg0KPiA+ICAjZW5kaWYgLyogX19JTlRFTF9HTUNIX0hfXyAqLw0KPiA+IC0tDQo+ID4gMi40
Mi4wDQoNCg==
