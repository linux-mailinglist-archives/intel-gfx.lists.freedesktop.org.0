Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3766BE9B9
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 13:56:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A13E610E37A;
	Fri, 17 Mar 2023 12:56:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 621ED10E37A
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 12:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679057781; x=1710593781;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=NxJspxs5U68zYJvpylikC23yKXf8vZAMmaYdB9Dz7dc=;
 b=XmOy6OUWZDvSgvRI0abBD6hxhZ7FPwGdsyi/ki9X1rEpa2XeFgQqJVp5
 gPGJdH/GCuc+b3y4qCACZ3cst1mcmlUEwVOwLhxOEhlyks2DckMvKEAcm
 KUCToBZg5+5Sg3iVDuWb0cah9tHfQPLvM4WJhdYnUxjROFhe+0RTz23dG
 fyDhTw0XuQp2WIVXkAdt7Cz+IResThmlrw7aAvwRQls4OZ5831y97a/yg
 CKDKSeKgZAZs0lB2xHw/KbZ90ZZTxFIT86BZuRakEyeY+K25swbXK7Lrc
 zeH+FUlOY4xdgXOcx9oi1zyPb/WpHY2Nz9NNruYihQlpMMatRnVrpLiH4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="339791106"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="339791106"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 05:56:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="680283011"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="680283011"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 17 Mar 2023 05:56:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 17 Mar 2023 05:56:18 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 17 Mar 2023 05:56:18 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 17 Mar 2023 05:56:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YJkQhCg606rdVmLwWJIw2HfdFx5hT68yibCRvzlZVPN+E/U0K5XAHDyzGw5uNOEODSqbDtGnz22TroLwgE8R9n1s2mKx0XhP0CJDI4l/RCqcV9hWSYukPurE9kCej11XTO/m1pqq8KrJkaWHlXBaQ7WqBMsbn5a4PHIG8/FtqysNK4DTHhP8zaT8lgCgLGCKlSGeXw+iuerixdfCJ1zgdF5m1G1Hc0YtnIJYCsOPOWCRI4VOJmbyeqRBk8k/zD0+FLK+Nrs5ZT/AqSrvejDPGugWwmnDNV2NzUEXes7jBTZRNydBduIy+keyKaLEXDCnr2V5CcFIHFaj199T1Zhdvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NxJspxs5U68zYJvpylikC23yKXf8vZAMmaYdB9Dz7dc=;
 b=bY+f70KJZF+fToQnhQpgyhbQUZ3ydIm8FEyK3U4Gf4tUiVnO3dc7gp3Zf+lj+gGn8FXb5mcJX2E1VEwb86nmjlKylFH11uspBriNZAnwNZSYRXpu/xRhlEdvUDGtnovTdESks21xO83ykPbM0GMgqYIrsaqbk6hUA9rmTv1dnUYIYpFwTOUhZDPb6g4wGf+pwWvDNTObv2g4c79Xo1C/83X9/BTTt4x4a49cR+Y+Jb0DUCqi3PnkV6mXmY4v7/OcWueevBHQOGDe7OWcSdHtXcBCwVs8FfGzCqC4Rj1YnzZv+5GTtW3QIKkDa5qQdQs76QUOxKX5zc/novjEUfMhIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB7294.namprd11.prod.outlook.com (2603:10b6:208:429::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.35; Fri, 17 Mar
 2023 12:56:16 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb%5]) with mapi id 15.20.6178.031; Fri, 17 Mar 2023
 12:56:16 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/psr: Fix Wa_16013835468 and
 Wa_14015648006
Thread-Index: AQHZVlOu03Fu/cKbD0K2xrqsNro0Bq79u5oAgADSQICAAF7tAIAABkcA
Date: Fri, 17 Mar 2023 12:56:16 +0000
Message-ID: <250076166121ee8033d5c8721294c380bd7de869.camel@intel.com>
References: <20230314090142.947764-1-jouni.hogander@intel.com>
 <20230314090142.947764-2-jouni.hogander@intel.com>
 <ZBNeKlSPGaCkqn2q@intel.com>
 <f3c5b7509a64d4d677bda6c896c782aff31d9435.camel@intel.com>
 <ZBReKiJaPWdM+zFc@intel.com>
In-Reply-To: <ZBReKiJaPWdM+zFc@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB7294:EE_
x-ms-office365-filtering-correlation-id: 969ff764-69d9-485a-c9db-08db26e6febf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7S55EoVavHorVmIxL0Z8HCcJll6vL5mmDYMpMKBwmtUl2zOcBGyjfenNU2Q+GnpngBf4JgTdkT09oISYM726MH3gk7P2qxmVNEOtR0+UpDZMNqYMVPHCB1VeTNP+lAVDQZE3Up5uDjhcjS7HJ3RQbG0kC/GeNlvQVBXSeb+eFvjT5lt3+vjgEZg7PnQ1Jx2H0avrOgiYbz0bfn/6fgYh/K67P9t4QdXqQMKKfWfqU6BA8R5rsgGa19lJpsUrmLBiFcydY5zgvxNEOxYUTWbOg+IRKZRz/AIHfscIvNgGeiQFYvjAFEgnGvW5BI1wry1Su04UcEi0a987kJAbp4QVIRxXyMX60XQ9NbTp88H7YgVPi+3/FSjcEsneIJyHdhG0tjycl92FDVFNmv9To7jWAQ4TIVjiCBwuQLN8Rz//mzetUSUgIze5qfbxCPpXBwxKmkVbRbbtfVSWFRhpNtmZRvETvhDecHuW6jBBZlu5E9wMGUbER+s8QCAzMT0oVmfoLjFWVgG2nZNDhRQt0MobQ2xtq+KJE6HubFOMx2Q/7K3VprO5hKmUAFdcYUcL28yk3MAkUetMKl1r0l6gYYELEcBzl14RmY8pGcNEEgx0tzwW/znYqUMix6iyBM9o+rsyfTW5APXHWkSMUcsxyxYNBw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(366004)(376002)(346002)(39860400002)(396003)(451199018)(36756003)(966005)(6486002)(82960400001)(71200400001)(6506007)(6512007)(186003)(2616005)(26005)(83380400001)(66574015)(5660300002)(122000001)(8936002)(86362001)(41300700001)(2906002)(478600001)(38100700002)(91956017)(6916009)(4326008)(66556008)(66946007)(76116006)(66476007)(66446008)(316002)(8676002)(38070700005)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UWVJeXpxNkNXcndjOTNOa0xHR3ZoVkVPdkVxSWFLUGxnSEFweW14MEhUMkpZ?=
 =?utf-8?B?eTM2b2thc2YwbjRockpaZEt0UUdsa05SUFRkS3VybExNd3I2cWdEbi96N1dP?=
 =?utf-8?B?elZQaDF3MFRDc0RWQmI0ZW5uRG4xUER0NDRuTFB0ZEN2STNFdVpsN2tnYmx6?=
 =?utf-8?B?d2lpMklXTFpBOFNkSGhtUnF2QXFQaWhDUWJKbUxxRUN6STVQeHE0Q3JGL28x?=
 =?utf-8?B?d0xyK0twK2VHRTBjNGZYZFptUkdvOVk2WnRVcFZuYmFZUkJUTVI5L1Bybitj?=
 =?utf-8?B?aDJQWDlqL2xwU25naGtCeXRWVzNEVGdPUkJlQm9sekFwdEV5SkYxM0kzQlp2?=
 =?utf-8?B?UFB6aUloa2FOSVo0aTA2Yk9NYStCNFZiWnBtZUw3SG4zM2xDSFdsOUM3ZGhZ?=
 =?utf-8?B?cGE2aTlYUzR0a2taSXFUVkN3UExrUGR5elY5QlA2dzBFbG5FajZGc3BJeFZs?=
 =?utf-8?B?WkhTMUNHS3NMb24rMS9MUmZ3b2hjTmxKUW5GNkRGUldwZU4wTFA2Vkh4TXdE?=
 =?utf-8?B?NzdxRHRneE1TSXFZSE5RWTF5TmxJYmdvNUx0MVBDZ1ZILytaU1IrSElMMzNW?=
 =?utf-8?B?M05vd0c3eXFYNmIyajZiQ1l5d3pWc3Y5VzlhMmVyckxnK0dTWVFFdXF3Mzkw?=
 =?utf-8?B?Vnp1bmllcEs4MmZRWTV1K01xWnF1MWVjODYwL3pjZGZ1dzVQSDlWNDVQMEgw?=
 =?utf-8?B?dFhLWVZOVWRseFBCQm5xOVhoSVAwWkRpNTlCS2pITHZoOUkxRUgreXhoTWo2?=
 =?utf-8?B?Vy90WmhHRTluZ2FtZ0FNeFdIU1piSy8rNlJjd1VGbmlNZHkybEJIRHlvbHNM?=
 =?utf-8?B?cjJEQWJaQ0kwcm5yWFpNajFjeXpDYm9TVDJhazR1Q2Vqb09hdWYyRXoxQzlY?=
 =?utf-8?B?cmFDSnBzZTJaelZuV0sxVjc2eFJLQzVyZS9vdDJiWjA3S3RQZ2xvMlFoSG5l?=
 =?utf-8?B?Z2s2dlFDTGdtaDhHOHZQSzNLdjVhSGFEUExVMWhPU28vdTBGQW8xY1h4V2Fh?=
 =?utf-8?B?TnVhQlhSTU9nY2tCL3NiR2hWazJnUmU5UEs1SjQxakJZN1hKZmlpNlY1T0pM?=
 =?utf-8?B?ZnFiL3duUWxNUW42UElhWFJrREp1R0VxamtqajNSajRqTDJoeEo2dVJ3aTR4?=
 =?utf-8?B?WE1FbDVFQ2pXWkx4enpBcll0V0NzVWt6L2VNM1k1ZHVPNW5ncVZBZ0FyWW5U?=
 =?utf-8?B?UEdOcmJQTmtPU2JyM2hQNXhpYlJRQXBiWnRlODBhZ0NmK1dZNG5uL2Zrb0JQ?=
 =?utf-8?B?cVpkZFVLcUd5bzNhRndKZTgzMWZnZ24ycVJ4ZHRybWtDaHkzMHlHTy9TSFdq?=
 =?utf-8?B?Y0R0MDFSb3JSQlRVWkNmeTBlT2xKWXg5L3FtZU9RRlNZSWJsYVNIZXIvVUk3?=
 =?utf-8?B?ZTlpeGE4cXMrUWc0VzFNVzh4L2Yza0prT2NCaXg4UjN1ZS9EaUFzMmtBRFgr?=
 =?utf-8?B?TW9hdys0RkhNejlWRXV1NkdxaEdocXZpOElLMHNOMUE4YmdLUS9XVklBVU5t?=
 =?utf-8?B?Q0RRLys0RjlIZlF0ekxwT1h5OVFYNFBIbVg4MTJpZm1Ub3JuaFl1NVowbHIy?=
 =?utf-8?B?T2NQUzg1ZkQ3d3Z6clkxVC95MzJqZXVtT0NxVWlkN1NHYXIrT3EvdHphUVRU?=
 =?utf-8?B?cXdmeFN3aFRkUCtEU1lINlQyMDBZZnhMdm44Y0kxMmE1eW5rRGZ5eWladEUz?=
 =?utf-8?B?dWFzMHY3Z2RpOWpJQUFaNkM0dk1wRDdZbVJLdjlOVFowYVJTMmVDRWdTTC91?=
 =?utf-8?B?OThGRGJhNFlWQmZYVGR5UmI3SUg3cHNSYzdiU2UyVWhKMGc3RTJTcktQZUZK?=
 =?utf-8?B?Vzd1LzRYdExnT09ZQzFxTTl2SFgzTmNQdThOQVM1dHl6KzBqNW5ZRkJuV0JP?=
 =?utf-8?B?YkpFYlVFSEMwVDl4NmR2TXlxVFFna1RiOTlQNVpIZjVlazNzWGJvWmxWQXpt?=
 =?utf-8?B?S2xMWFEwbDFCYWJ3bkdCcGtra1VaZlhOQ0FlTWZsMFBUTFFjdVhDSFBMNHcy?=
 =?utf-8?B?ZTlYT2h6ZXhqaFg3Uy83UFJ4WVhtUWNwWGxZZnk2aGRLSUQ0eGU2aWtmSTEw?=
 =?utf-8?B?T0ZCME1WYUp3Y2ZjRUgxamJ2MlFqUmlaT2lWSGVzM3c1RUtIRFJZZERkR001?=
 =?utf-8?B?ZGdPTVVyZVd0aG9nbFI1cmkyaDdGYmFOWmh4cWVNTzRZeUd6S0x6WHdTSUp1?=
 =?utf-8?B?enc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <13851C5A340DDE4E807CBAB2AED843E9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 969ff764-69d9-485a-c9db-08db26e6febf
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2023 12:56:16.1216 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 14cq6vCGfni5lIMD6D4/BCvwz5b8dy3G1gjkbKdvb4qh5LpSYHiEBJucmId87zOeCOCEfUySczt5VCwgjRZHFchlcXo/nIHu5KqiCWJvlNM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7294
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/psr: Fix Wa_16013835468 and
 Wa_14015648006
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

T24gRnJpLCAyMDIzLTAzLTE3IGF0IDE0OjMzICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgTWFyIDE3LCAyMDIzIGF0IDA2OjU0OjAyQU0gKzAwMDAsIEhvZ2FuZGVyLCBK
b3VuaSB3cm90ZToNCj4gPiBPbiBUaHUsIDIwMjMtMDMtMTYgYXQgMjA6MjEgKzAyMDAsIFZpbGxl
IFN5cmrDpGzDpCB3cm90ZToNCj4gPiA+IE9uIFR1ZSwgTWFyIDE0LCAyMDIzIGF0IDExOjAxOjQx
QU0gKzAyMDAsIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4gPiA+ID4gUFNSIFdNIG9wdGltaXph
dGlvbiBzaG91bGQgYmUgZGlzYWJsZWQgYmFzZWQgb24gYW55IHdtIGxldmVsDQo+ID4gPiA+IGJl
aW5nDQo+ID4gPiA+IGRpc2FibGVkLiBDdXJyZW50bHkgaXQncyBkaXNhYmxlZCBhbHdheXMgd2hl
biB1c2luZyBkZWxheWVkDQo+ID4gPiA+IHZibGFuay4NCj4gPiA+ID4gDQo+ID4gPiA+IEJzcGVj
OiA3MTU4MA0KPiA+ID4gPiANCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVy
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIHzCoCAxICsNCj4g
PiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqDC
oMKgwqDCoMKgwqAgfCAxMiArKysrKy0NCj4gPiA+ID4gLS0tLQ0KPiA+ID4gPiAtLQ0KPiA+ID4g
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jwqDCoMKgwqDC
oMKgIHzCoCA3ICsrKysrLQ0KPiA+ID4gPiAtDQo+ID4gPiA+IMKgMyBmaWxlcyBjaGFuZ2VkLCAx
MSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQ0KPiA+ID4gPiANCj4gPiA+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
DQo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmgNCj4gPiA+ID4gaW5kZXggYzMyYmZiYTA2Y2ExLi42MDUwNGMzOTA0MDggMTAwNjQ0DQo+
ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oDQo+ID4gPiA+IEBAIC0xMTUyLDYgKzExNTIsNyBAQCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSB7DQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBib29sIGhhc19wc3IyOw0K
PiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgYm9vbCBlbmFibGVfcHNyMl9zZWxfZmV0Y2g7DQo+ID4g
PiA+IMKgwqDCoMKgwqDCoMKgwqBib29sIHJlcV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZTsNCj4g
PiA+ID4gK8KgwqDCoMKgwqDCoMKgYm9vbCB3bV9sZXZlbF9kaXNhYmxlZDsNCj4gPiA+ID4gwqDC
oMKgwqDCoMKgwqDCoHUzMiBkYzNjb19leGl0bGluZTsNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDC
oHUxNiBzdV95X2dyYW51bGFyaXR5Ow0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRy
bV9kcF92c2Nfc2RwIHBzcl92c2M7DQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiBpbmRleCA0NDYxMGIyMGNkMjkuLmE2ZWRk
NjViOGVkYiAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+ID4gPiA+IEBAIC0xMTc3LDEzICsxMTc3LDExIEBAIHN0YXRpYyB2b2lk
DQo+ID4gPiA+IGludGVsX3Bzcl9lbmFibGVfc291cmNlKHN0cnVjdA0KPiA+ID4gPiBpbnRlbF9k
cCAqaW50ZWxfZHAsDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiBXYV8xNjAxMzgzNTQ2OA0K
PiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgICogV2FfMTQwMTU2NDgwMDYNCj4gPiA+ID4gwqDCoMKg
wqDCoMKgwqDCoCAqLw0KPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqBpZiAoSVNfTVRMX0RJU1BMQVlf
U1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9CMCkgfHwNCj4gPiA+ID4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgIElTX0RJU1BMQVlfVkVSKGRldl9wcml2LCAxMiwgMTMpKSB7DQo+ID4gPiA+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoY3J0Y19zdGF0ZS0NCj4gPiA+ID4gPmh3
LmFkanVzdGVkX21vZGUuY3J0Y192Ymxhbmtfc3RhcnQNCj4gPiA+ID4gIT0NCj4gPiA+ID4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjcnRjX3N0YXRlLT5ody5hZGp1c3Rl
ZF9tb2RlLmNydGNfdmRpc3BsYXkpDQo+ID4gPiANCj4gPiA+IFRoYXQgbG9va3MgbGlrZSBzb21l
dGhpbmcgd2Ugd2FudCB0byBrZWVwLiBUaGUgZGVsYXllZCB2Ymxhbmsgdy9hDQo+ID4gPiBpcw0K
PiA+ID4gc3RpbGwgc3VwcG9zZWRseSBuZWNlc3NhcnkuDQo+ID4gDQo+ID4gMTYwMTM4MzU0Njgg
YW5kIDE0MDE1NjQ4MDA2IGFyZSBzcGVjaWZpY2FsbHkgbWVudGlvbmluZyAibG93IHBvd2VyDQo+
ID4gd2F0ZXJtYXJrIChsZXZlbCAxIGFuZCB1cCkgaXMgZGlzYWJsZWQiIEkgaGF2ZW4ndCBzZWVu
IG9yIGNvdWxkbid0DQo+ID4gZmluZA0KPiA+IGFueSBvbGRlciBXYSBzcGVha2luZyBnZW5lcmFs
bHkgYWJvdXQgZGVsYXllZCB2YmxhbmsuDQo+IA0KPiAxNDAxNTY0ODAwNjoNCj4gIkhpZ2ggcmVm
cmVzaCByYXRlIHBhbmVscyB3aXRoIHNtYWxsIHZibGFuayBzaXplIChlaXRoZXIgYmVjYXVzZSBv
Zg0KPiB0aGUNCj4gwqBwYW5lbCB2Ymxhbmsgc2l6ZSBvciB0aGUgaW50ZXJuYWwgZGVsYXllZCB2
YmxhbmspIG11c3QgaGF2ZSBzb21lDQo+IMKgd2F0ZXJtYXJrIGxldmVscyBkaXNhYmxlZC4uLiIN
Cj4gLT4gdGhhdCdzIHRoZSB3L2EgeW91J3JlIG5vdyBpbXBsZW1lbnRpbmcsIHNvIHRoZSBjb21t
ZW50IGlzDQo+IMKgwqAgbHlpbmcgdG8gdXMgYnkgY2xhaW1pbmcgaXQgd2FzIGFscmVhZHkgaW1w
bGVtZW50ZWQNCj4gDQo+IDE2MDEzODM1NDY4Og0KPiAiRGlzcGxheSB1bmRlcnJ1biB3aGVuIHVz
aW5nIGRlbGF5ZWQgdmJsYW5rIHdpdGggUFNSMi4uLiINCj4gLT4gdGhhdCdzIHRoZSBvbmUgd2Ug
YWN0dWFsbHkgYWxyZWFkeSBoYWQgaW1wbGVtZW50ZWQNCj4gDQo+ID4gDQo+ID4gPiANCj4gPiA+
ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9k
ZV9ybXcoZGV2X3ByaXYsDQo+ID4gPiA+IEdFTjhfQ0hJQ0tFTl9EQ1BSXzEsDQo+ID4gPiA+IDAs
DQo+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgDQo+ID4gPiA+IHdhXzE2MDEzODM1NDY4X2JpdF9nZXQo
aW50ZWxfZHApKTsNCj4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgfQ0KPiA+ID4gPiArwqDCoMKgwqDC
oMKgwqBpZiAoKElTX01UTF9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNURVBfQjAp
IHx8DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIElTX0RJU1BMQVlfVkVSKGRldl9w
cml2LCAxMiwgMTMpKSAmJg0KPiA+ID4gDQo+ID4gPiBJIHRoaW5rIHdlIG5lZWQgdGhpcyBmb3Ig
YWxsIEtCTCsuDQo+ID4gDQo+ID4gRG8geW91IGhhdmUgV2EgbGluZWFnZSBmb3IgYSByZWZlcmVu
Y2U/DQo+IA0KPiBJIHRoaW5rIGl0IHdhcyBwYXJ0IG9mIHRoZSB3L2EgMTEzNi4gWW91IHNlZSBp
dCBvbmx5IGxpc3RzDQo+IHNrbC9ieHQva2JsIGEtYiB0byBuZWVkIHRoZSBmdWxsIHBzciBkaXNh
YmxlLCBsZWF2aW5nIGtibCBjKw0KPiB0byBkbyBzb21ldGhpbmcgZGlmZmVyZW50LiBBbmQgdGhl
IGxhdGVuY3kgcmVwb3J0aW5nIGNoaWNrZW4NCj4gYml0cyB3ZXJlIGFkZGVkIGV4YWN0bHkgZm9y
IGtibCBjKy4NCj4gDQo+IEJ1dCB5ZWFoLCB0aGUgd2F5IHRoaXMgaXMgbm93IGRvY3VtZW50ZWQg
aW4gYnBzZWMgaXMgdmVyeSBwb29yLg0KPiBBbmQgc2FkbHkgdGhlIG9sZGVyIGhzZHMgaGF2ZSBu
b3cgZGlzYXBwcmVhZCBpbnRvIGJpdCBoZWF2ZW4NCj4gc28gd2UgY2FuJ3QgZG91YmxlIGNoZWNr
IHRoZSBmdWxsIGRldGFpbHMgdGhlcmUuIEJ1dCBJJ20gOTklDQo+IHN1cmUgSSByZWFkIHRocm91
Z2ggdGhvc2UgaHNkcyBpbiB0aGUgcGFzdCBhbmQgY2FtZSB0byB0aGlzDQo+IHNhbWUgY29uY2x1
c2lvbiBiYWNrIHRoZW4uDQoNCkkganVzdCBzZW50IG5ldyB2ZXJzaW9uIG9mIHRoZSBzZXQuIEku
ZS4gZGlzYWJsaW5nIFBTUiBmb3IgPCAxMiBhbmQNCnVzaW5nIGNoaWNrZW4gYml0IGZvciA+PSAx
MiBpZiBhbnkgd20gbGV2ZWwgaXMgZGlzYWJsZWQuIFRoYXQgaXMgYXQNCmxlYXN0IHNhZmUgYmV0
Li4uIENhbiB5b3UgcGxlYXNlIGNoZWNrIHRoZSBzZXQgaWYgdGhhdCBpcyBvayB0byB5b3U/IDoN
Cg0KaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMTUxMDkvDQoNCj4g
DQo+ID4gDQo+ID4gPiANCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIGNydGNfc3RhdGUt
PndtX2xldmVsX2Rpc2FibGVkKQ0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgaW50ZWxfZGVfcm13KGRldl9wcml2LCBHRU44X0NISUNLRU5fRENQUl8xLCAwLA0KPiA+ID4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHdhXzE2MDEzODM1NDY4X2JpdF9nZXQoaW50ZWxfZHApKTsNCj4gPiA+ID4gwqANCj4gPiA+ID4g
wqDCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9kcC0+cHNyLnBzcjJfZW5hYmxlZCkgew0KPiA+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihkZXZfcHJp
dikgPT0gOSkNCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvc2tsX3dhdGVybWFyay5jDQo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9za2xfd2F0ZXJtYXJrLmMNCj4gPiA+ID4gaW5kZXggNTBhOWE2YWRiZTMyLi5hZmI3NTFjMDI0
YmEgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2ts
X3dhdGVybWFyay5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
c2tsX3dhdGVybWFyay5jDQo+ID4gPiA+IEBAIC0yMjczLDkgKzIyNzMsMTIgQEAgc3RhdGljIGlu
dCBza2xfd21fY2hlY2tfdmJsYW5rKHN0cnVjdA0KPiA+ID4gPiBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKQ0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVy
biBsZXZlbDsNCj4gPiA+ID4gwqANCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoC8qDQo+ID4gPiA+
IC3CoMKgwqDCoMKgwqDCoCAqIEZJWE1FIFBTUiBuZWVkcyB0byB0b2dnbGUNCj4gPiA+ID4gTEFU
RU5DWV9SRVBPUlRJTkdfUkVNT1ZFRF9QSVBFXyoNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgICog
UFNSIG5lZWRzIHRvIHRvZ2dsZSBMQVRFTkNZX1JFUE9SVElOR19SRU1PVkVEX1BJUEVfKg0KPiA+
ID4gPiDCoMKgwqDCoMKgwqDCoMKgICogYmFzZWQgb24gd2hldGhlciB3ZSdyZSBsaW1pdGVkIGJ5
IHRoZSB2YmxhbmsNCj4gPiA+ID4gZHVyYXRpb24uDQo+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoCAq
DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoCAqLw0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBjcnRj
X3N0YXRlLT53bV9sZXZlbF9kaXNhYmxlZCA9IGxldmVsIDwgaTkxNS0NCj4gPiA+ID4gPiBkaXNw
bGF5LndtLm51bV9sZXZlbHMgLSAxOw0KPiA+ID4gPiArDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDC
oC8qDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiBGSVhNRSBhbHNvIHJlbGF0ZWQgdG8gc2ts
KyB3L2EgMTEzNiAoYWxzbw0KPiA+ID4gPiB1bmltcGxlbWVudGVkDQo+ID4gPiA+IGFzIG9mDQo+
ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiBub3cpIHBlcmhhcHM/DQo+ID4gPiA+IMKgwqDCoMKg
wqDCoMKgwqAgKi8NCj4gPiA+IA0KPiA+ID4gQW5kIHRoYXQgaXMgbW9yZSBvciBsZXNzIGNvcnJl
c3BvbmRpbmcgdy9hIGZvciBTS0wvQlhUIHRoYXQgZGlkDQo+ID4gPiBub3QNCj4gPiA+IHlldCBo
YXZlDQo+ID4gPiB0aGVzZSBjaGlja2VuIGJpdHMuDQo+ID4gDQo+ID4gT2ssIEkgd2lsbCBjaGVj
ayB0aGlzIGFzIHdlbGwuDQo+ID4gDQo+ID4gPiANCj4gPiA+ID4gLS0gDQo+ID4gPiA+IDIuMzQu
MQ0KPiA+ID4gDQo+ID4gDQo+IA0KDQo=
