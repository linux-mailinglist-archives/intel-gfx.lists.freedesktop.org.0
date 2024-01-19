Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6548326EB
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 10:48:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5999910E9B5;
	Fri, 19 Jan 2024 09:48:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D09E10E9C9
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jan 2024 09:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705657682; x=1737193682;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=kAJIWfeCej1eY7GZ576gGobJSoYS/YwjpGuqQs8D+xI=;
 b=jxDxCy4+YIcPWRW+bogIhz4r13T/8l+ZbKkvlpW3ZYBroGipvJlgy7H/
 BZgbAhSL0X/YSSuKhU/QoUyBF0xBuNzjLThpGaY3sK4zCAvuNBfoCpabe
 AbPoBFvNnruc76nbPx6wVZtzenpG55+i2/e7IfaisQgf3G9X7PYHvZRCd
 jrNsp4s7WP54fIcu9yZl/KpDmgK4yCL/iLoGbudd+tP96179BmU/cG9CA
 7gbhd/cKAoapwtmOhMuEs0EF+7Njz9EmgKmITFmeNRDMOQL0cY9stSvx+
 O97kbOOdldn/OmNuO6K8Idx5HexUIpFJGcgcYZS1CP2c97PrlNWyvWbrd Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="404472591"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208";a="404472591"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 01:48:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="788320708"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208";a="788320708"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Jan 2024 01:48:01 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 19 Jan 2024 01:48:01 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 19 Jan 2024 01:48:01 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 19 Jan 2024 01:48:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W/jZ/f9lmc4QzJU2NVGcCL63UHAqG3QFpWAgglRefCEwccS+EscuYhoc4pccs+aPRK7409cylU6fhHvPU+uC+/Wc2XfYkFOSkPZSvWDRU2RRecE97yZj6B28+g8IOFzOVmvth8RrHp+1H/QMDOINVD03dIvMCQQmZHZ7l3N5cnFLR3zpZq0g3gdhYSKKbwG5aagsP6L5e+zqWfPWNSotXq7tOPIAx22FT/fuhvxeDO1v8wQtfF6q0GQ9hm6nbJLe27awPJlKjvibrFUk8C9GN2J+AviCo+DRpIvC70HUHpEhps7cEnj52Ifa8MMepLhTzCTmHU5MnbQ8AuueBVGtQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kAJIWfeCej1eY7GZ576gGobJSoYS/YwjpGuqQs8D+xI=;
 b=DXY8+JPzUAoSAY9b5fUkneB2h7TlV+npAtBFMcd/RUcu7BwrP0jrfcUv82zpAdId9eycx+NiwHtSS2GKq4C/03FTdi0nlfDNcZp24FatSIQmDG04QkrPgs+3N8MQBLgmH9uw0EsnCuWw8c9G4rPbM2AT2tZjkIcqfuLsLdEtNa9LIJb8HdvFnzp1togBHoyxzRBwt8MJIRGkxQJazbt+k2NezjfYtdmYl/0+43qQ+uAa92O1qfVwOHi9Z8bF9rNVNiRsMgAZHG5eBRbP5BquQTmAiS60wG5Eag0thBc5zLLxYH0VAw0AEqRMLuzWAQ2kFE4239ukQNFA1oN16R9xvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BN9PR11MB5418.namprd11.prod.outlook.com (2603:10b6:408:11f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.24; Fri, 19 Jan
 2024 09:47:53 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7202.024; Fri, 19 Jan 2024
 09:47:53 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/psr: Only allow PSR in LPSP mode on HSW non-ULT
Thread-Topic: [PATCH] drm/i915/psr: Only allow PSR in LPSP mode on HSW non-ULT
Thread-Index: AQHaSlRfEMbs6ylAcEO6/o4G9g1YUrDg5HoA
Date: Fri, 19 Jan 2024 09:47:53 +0000
Message-ID: <4c1f14a45996e259c9cb2080fce0d37c1fca3b78.camel@intel.com>
References: <20240118212131.31868-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240118212131.31868-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BN9PR11MB5418:EE_
x-ms-office365-filtering-correlation-id: cca0fc30-a72b-4c96-b6a1-08dc18d3b4d1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r7aEjzXgKiEtQ9xWCp+6VTxf3zet4orUmsf+dmwsda/27j5NEczNZWtL5F5wyfqGATn0wotptZPVe5txrdKfRXn0XA+PLk5MQRup77sCwOxoPnwOKR8xuf0DGaxr3Z+ytstqLDtft+zBqa5iC+wqSfummvN6HgrokE0g9C0t2TYUzZ2faKewTGk4/5dXs/5fxHetXIlKrBCpvk4vtdmMcaanyPejAVjW5OhS2/YmBZZTmoWJPZv5LF+V6SzNhtPM5a9wG/pfZzGEIzdRJBthAFpxs1N6F/Ne/FMBPwWbNxE4bA1HFhkCDOe0hxtlQ2saME9ZegUFX8KfyvksXL1oPOBkzOvaJFLNbJEBqz++X1lYPsyTlP80O5AevPOXfo7vvKDYRUrOdhYgVj1+ftJ6xEemdvPCR9+vuWYlyw/I55h8N8DNsFxMPj3Af8MCxIYzxmQtpVP2kI4dYwyo+qYdy8H6Gq5RZ4x9vkDP3tSplc+OrxmQkt9CE2lvleKP9MEmxqE/QEJWD8DI29OtkEgzl+N50Ojr3YnYirLNJagRAbrlzbs1Ya5tU302wGjBxPztxqy7dHmkutm1VDsAfRVi4rpHAXqPUS6MJYLXYvPFaI3//oAPdAhn4C2ncfaaxiAbj8oQmMn4YNKaaiRDBkHqrw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(39860400002)(396003)(346002)(376002)(230173577357003)(230273577357003)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(66574015)(6506007)(6512007)(71200400001)(26005)(2616005)(36756003)(38070700009)(38100700002)(86362001)(82960400001)(6486002)(83380400001)(2906002)(122000001)(41300700001)(8676002)(4326008)(5660300002)(966005)(8936002)(478600001)(66476007)(66946007)(66556008)(76116006)(110136005)(316002)(91956017)(64756008)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QnhJM2hVekF3YU5WaG4vZUJValFkZ2hLYzVHUlE3UjdpMGxMVkZwMzJ5SkVU?=
 =?utf-8?B?VUkrdzVrdE9NU3V0Z2hwQjloam01czdRQkFUVGxsb2RoK2FVb0loWnNpUUxU?=
 =?utf-8?B?Wm1VczNEYzJsVThDQmZocVVWUFlGZWpXS0VuSFZFSDlzZ2lMcGIxbzNaQm5t?=
 =?utf-8?B?VDZxajAvcUQwTTFtd2xmYjA2M0xUNWJnV3l6VzI4aDdkOUM2M0NCcjhTbEZ5?=
 =?utf-8?B?K1NBVXg2dG56NkVuZHkxam1raUQrK3J6cmI2R2hIaFZZNEpMOU5CK296YXFV?=
 =?utf-8?B?V1dtTXZjSXhHV1NXT2g3WWlXQWc2VkZ6eUFNbkdHQWZHSno1TDdHZVVyWk04?=
 =?utf-8?B?RUREeG52WEowYUttc1JPS3NBRnhkd2J1SWgzdHFEQzh6MS9yODFBS04wcXVs?=
 =?utf-8?B?dkdGbmlIODJ3ejgzV2dhQ0w5RHdpVkF5UGM3MUZMN2l2elk4Sm1RdUN5SkRE?=
 =?utf-8?B?NHZIRGlNa1pXTkhqeGZhUnhESjRacnIrUGRZZ0gzSk5MdTAyeU1mazFkRWFt?=
 =?utf-8?B?SmJQcHQ3Y3BOcjVhSGF5bFBSV0J0OWpHcGhSeXlqWVJXaE9YOFF3c2w3R0JX?=
 =?utf-8?B?RkkrVXlWeVNHYkx0T3pCek95cDJGNkdxaXRkQytra1MyM2oxOFFUTVB3WEJt?=
 =?utf-8?B?TDlsc0dnVFp3QWthck1xM3RBSEZsYlFXdk5mdzh1dGV6Ni9DQ3BXUDBGbXp4?=
 =?utf-8?B?MEZCc3c5T2cxeVZ3NXY3amdGQVhHc0RiVzFUMWdHTWlBclgvYjEwVE8rc3VH?=
 =?utf-8?B?ZGVmT3E3a2xlR0ZEWUhNWkI5Q1ZaYWNDaDB2NjdhUDJwZU1HcjNxWEREN296?=
 =?utf-8?B?Rzd6T2I3TUV5NGRYWVJCeksyWTRNQy9yaUlMK1AzUWxkTlp4UytESmgwTVZl?=
 =?utf-8?B?STNzbnlybUFnMlFBTmhZblIyallvVXpublc0TGxsY2dYVjR4SUdsSGtFVjZJ?=
 =?utf-8?B?bW12ZDhLZmszd3RPY0J0TDVJQXBFVjdKNWdIellHTVhzYk15VmZBdjBWcjhz?=
 =?utf-8?B?eTV3RFlBMXVrUUphKzZwRlMwcVdjU0ZrZHRTRk1iSFNaVUNyUmlxRFA2bUN2?=
 =?utf-8?B?KzhEMEZiMHdCUVc2STMzdmp5Q2I4UFltM0Z2V0V5RFlTM0VXUktPdVdXNUla?=
 =?utf-8?B?bmVrMnJWWFhsYURHTWE0MmVEcVJaeWRaeFdQUU9ZU3dBRWhUaVhQU2JyVW9Y?=
 =?utf-8?B?b0VGYWQ5NXdiemhVazNLQXZqOVhWQnllaEEwSlZvM3BCQkd5YWJHNmRCY2x1?=
 =?utf-8?B?N2d0L3pSNmJ0Tzg2WDhTZUowYUZkUSt6ZklDVzh0TXR1N3B4a2VxWlFJVnlE?=
 =?utf-8?B?NmJ0UC9heWV4emxaNDN1djI4N2YxdlVHWk5JMnV2VlN5WHVNbjVIa0N3Q0Zn?=
 =?utf-8?B?dXd5RjRDTHpVV2FHNVJVWDllVVJoL3Rzd2svRlMreFcvZzVFRUNXVG5TK3d6?=
 =?utf-8?B?NXRMR3FCVUVkbEhzVlV5azUrMVU5N3hvb1poOE56TU5NcG9nejVLVDVUVytz?=
 =?utf-8?B?ZFR3VXhiTWdNNFNrcDlhOFd4ZzF5OG5OcVBnWjFlR0pxM014YVFJUXVUL1dn?=
 =?utf-8?B?c2k0VXhqYkF3a2tSUEJEblpFeGs0Z2wzdGJXVThVbjVwS3NJbUFYbk9tL2VX?=
 =?utf-8?B?WEdialFYZnZvaEp3KzZsbFoyZ2pIZkkrVjdlRFc5TFlnNTFPN09qS1hMd0JZ?=
 =?utf-8?B?S01KTWYxWUR5UnJBQlZNZXAwcE8vdzNuLzRZY2ZXT1l0dEFTMmMxUkRjeGs2?=
 =?utf-8?B?N21oVEt3c2hnM2VPcWY1aHBHSWNuLzRaZ0EwQWtRQVkrUTIxQllKRExkQkNo?=
 =?utf-8?B?RURvcTZoU1J1SHZVM1JubW5PZFowMTJmc2ZWZzY3VXhJM1p4UzZzTnhYaFJ4?=
 =?utf-8?B?N2Z0U00wL1pZQ3VJOElRSS90WFRHS3liS3htaVVvL2pEWW5MS3ovdFVwV29J?=
 =?utf-8?B?dUx4MjNHWnQwY3JlcEdjMHp5WlNzMmsrSnNacXNrV3BSVW9KaUQ1QVhaMXln?=
 =?utf-8?B?ZXpNM1czbmlkbDUrWGkvT1FLbWdJZFZyUURlTXErNDV2WVdQRWRWN0o4MkZK?=
 =?utf-8?B?dnhtR1puSHhML296MG44bGlpdlIvb3c0T1NMTksyekQ1d3pMc2dYUWJxWW14?=
 =?utf-8?B?bkZyYzRpeU1SSGxicVdqRnliUnRTM1JZQlM4eUNnUThKNUIzNU5GMmdSbVFW?=
 =?utf-8?B?N1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <168A3D542F9F0A48B591D55BC79B9E80@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cca0fc30-a72b-4c96-b6a1-08dc18d3b4d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2024 09:47:53.0185 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dvxrrcexuPNIR7gn+53PyyhOgKdnQuFV7zT2gPFFVKTSYg+ReCePcx9W2BHwZJjRan+Y8LTjgk4uadJPWnpx6zFXzvmxRtCckwF0f45NfBI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5418
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
Cc: "stable@vger.kernel.org" <stable@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDI0LTAxLTE4IGF0IDIzOjIxICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gT24gSFNXIG5vbi1VTFQgKG9yIGF0IGxlYXN0IG9uIERlbGwgTGF0aXR1ZGUgRTY1NDAp
IGV4dGVybmFsIGRpc3BsYXlzDQo+IHN0YXJ0IHRvIGZsaWNrZXIgd2hlbiB3ZSBlbmFibGUgUFNS
IG9uIHRoZSBlRFAuIFdlIG9ic2VydmUgYSBtdWNoDQo+IGhpZ2hlcg0KPiBTUiBhbmQgUEM2IHJl
c2lkZW5jeSB0aGFuIHNob3VsZCBiZSBwb3NzaWJsZSB3aXRoIGFuIGV4dGVybmFsDQo+IGRpc3Bs
YXksDQo+IGFuZCBpbmRlZW4gbXVjaCBoaWdoZXIgdGhhbiB3aGF0IHdlIG9ic2VydmUgd2l0aCBl
RFAgZGlzYWJsZWQgYW5kDQo+IG9ubHkgdGhlIGV4dGVybmFsIGRpc3BsYXkgZW5hYmxlZC4gTG9v
a3MgbGlrZSB0aGUgaGFyZHdhcmUgaXMgc29tZWhvdw0KPiBpZ25vcmluZyB0aGUgZmFjdCB0aGF0
IHRoZSBleHRlcm5hbCBkaXNwbGF5IGlzIGFjdGl2ZSBkdXJpbmcgUFNSLg0KPiANCj4gSSB3YXNu
J3QgYWJsZSB0byByZWRwcm9kdWNlIHRoaXMgb24gbXkgSFNXIFVMVCBtYWNoaW5lLCBvciBCRFcu
DQo+IFNvIGVpdGhlciB0aGVyZSdzIHNvbWV0aGluZyBzcGVjaWZpYyBhYm91dCB0aGlzIHBhcnRp
Y3VsYXIgbGFwdG9wDQo+IChlZy4gc29tZSB1bmtub3duIGZpcm13YXJlIHRoaW5nKSBvciB0aGUg
aXNzdWUgaXMgbGltaXRlZCB0byBqdXN0DQo+IG5vbi1VTFQgSFNXIHN5c3RlbXMuIEFsbCBrbm93
biByZWdpc3RlcnMgdGhhdCBjb3VsZCBhZmZlY3QgdGhpcw0KPiBsb29rIHBlcmZlY3RseSByZWFz
b25hYmxlIG9uIHRoZSBhZmZlY3RlZCBtYWNoaW5lLg0KPiANCj4gQXMgYSB3b3JrYXJvdW5kIGxl
dCdzIHVubWFzayB0aGUgTFBTUCBldmVudCB0byBwcmV2ZW50IFBTUiBlbnRyeQ0KPiBleGNlcHQg
d2hpbGUgaW4gTFBTUCBtb2RlIChvbmx5IHBpcGUgQSArIGVEUCBhY3RpdmUpLiBUaGlzDQo+IHdp
bGwgcHJldmVudCBQU1IgZW50cnkgZW50aXJlbHkgd2hlbiBtdWx0aXBsZSBwaXBlcyBhcmUgYWN0
aXZlLg0KPiBUaGUgb25lIHNsaWdodCBkb3duc2lkZSBpcyB0aGF0IHdlIG5vdyBhbHNvIHByZXZl
bnQgUFNSIGVudHJ5DQo+IHdoZW4gZHJpdmluZyBlRFAgd2l0aCBwaXBlIEIgb3IgQywgYnV0IEkg
dGhpbmsgdGhhdCdzIGEgcmVhc29uYWJsZQ0KPiB0cmFkZW9mZiB0byBhdm9pZCBoYXZpbmcgdG8g
aW1wbGVtZW50IGEgbW9yZSBjb21wbGV4IHdvcmthcm91bmQuDQo+IA0KPiBDYzogc3RhYmxlQHZn
ZXIua2VybmVsLm9yZw0KPiBGaXhlczogNzgzZDhiODA4NzFmICgiZHJtL2k5MTUvcHNyOiBSZS1l
bmFibGUgUFNSMSBvbiBoc3cvYmR3IikNCj4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzEwMDkyDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNClJldmlld2VkLWJ5
OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KPiAtLS0NCj4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTQgKysrKysrKysr
KysrLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBp
bmRleCA2OTZkNWQzMmNhOWQuLjEwMTBiOGM0MDVkZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xNTQ0LDggKzE1NDQsMTggQEAgc3RhdGlj
IHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2Uoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9k
cCwNCj4gwqDCoMKgwqDCoMKgwqDCoCAqIGNhbiByZWx5IG9uIGZyb250YnVmZmVyIHRyYWNraW5n
Lg0KPiDCoMKgwqDCoMKgwqDCoMKgICovDQo+IMKgwqDCoMKgwqDCoMKgwqBtYXNrID0gRURQX1BT
Ul9ERUJVR19NQVNLX01FTVVQIHwNCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEVEUF9Q
U1JfREVCVUdfTUFTS19IUEQgfA0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRURQX1BT
Ul9ERUJVR19NQVNLX0xQU1A7DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBFRFBfUFNS
X0RFQlVHX01BU0tfSFBEOw0KPiArDQo+ICvCoMKgwqDCoMKgwqDCoC8qDQo+ICvCoMKgwqDCoMKg
wqDCoCAqIEZvciBzb21lIHVua25vd24gcmVhc29uIG9uIEhTVyBub24tVUxUIChvciBhdCBsZWFz
dCBvbg0KPiArwqDCoMKgwqDCoMKgwqAgKiBEZWxsIExhdGl0dWRlIEU2NTQwKSBleHRlcm5hbCBk
aXNwbGF5cyBzdGFydCB0byBmbGlja2VyDQo+ICvCoMKgwqDCoMKgwqDCoCAqIHdoZW4gUFNSIGlz
IGVuYWJsZWQgb24gdGhlIGVEUC4gU1IvUEM2IHJlc2lkZW5jeSBpcyBtdWNoDQo+ICvCoMKgwqDC
oMKgwqDCoCAqIGhpZ2hlciB0aGFuIHNob3VsZCBiZSBwb3NzaWJsZSB3aXRoIGFuIGV4dGVybmFs
IGRpc3BsYXkuDQo+ICvCoMKgwqDCoMKgwqDCoCAqIEFzIGEgd29ya2Fyb3VuZCBsZWF2ZSBMUFNQ
IHVubWFza2VkIHRvIHByZXZlbnQgUFNSIGVudHJ5DQo+ICvCoMKgwqDCoMKgwqDCoCAqIHdoZW4g
ZXh0ZXJuYWwgZGlzcGxheXMgYXJlIGFjdGl2ZS4NCj4gK8KgwqDCoMKgwqDCoMKgICovDQo+ICvC
oMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gOCB8fCBJU19IQVNXRUxM
X1VMVChkZXZfcHJpdikpDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtYXNrIHw9
IEVEUF9QU1JfREVCVUdfTUFTS19MUFNQOw0KPiDCoA0KPiDCoMKgwqDCoMKgwqDCoMKgaWYgKERJ
U1BMQVlfVkVSKGRldl9wcml2KSA8IDIwKQ0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoG1hc2sgfD0gRURQX1BTUl9ERUJVR19NQVNLX01BWF9TTEVFUDsNCg0K
