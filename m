Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 462AF826B9B
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 11:34:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 723F710E1EF;
	Mon,  8 Jan 2024 10:34:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E0EA10E1EF
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 10:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704710040; x=1736246040;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=TP0cKquaw7KGIVHUkFF/h9fs42/yNNPheV6LT+upSuE=;
 b=YNN7c13rQn92AArSDhcEyUdyZHM7VpWJcPRoHIMtUMt/H523fyuZbAmu
 xl2xNJXdBcRZbY2ZmZ3P0EStEstBkaACt42rGeu3/gTqwTCyqXzT8tROy
 sXah8F9N1MO3fzsJ+6hW1SZ/LJgrD35e4gHfjFvw/NgwfsPWN00v5dP+a
 fkYGogccCbeEEBEaCTwt1nmnoCRsG9jYJuUDe+Zwg/K3F9lS4LHfJ9ARD
 4usDJ19fZ71gmM6o4CjeKf6gpngG+8eQlmlIUvSTq4x2jyV7g2Pe2F7+f
 uH5fR7RGx6lvBBhXeDW0h0tbRaU8GZ2aASqzyrU1qWRFmvqIoYR9o4pNT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="429030559"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="429030559"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 02:34:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="904765115"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="904765115"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2024 02:33:59 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Jan 2024 02:33:59 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 8 Jan 2024 02:33:59 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 8 Jan 2024 02:33:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CKbz+rgRyQuoZmPkO5zl8UT65c5VySLk/BocHrUYB6+EkRW/EG8vMm2dMfghVa+D3mpjxY7mirxvHCKRkeiWlgxERcWekpI57s4dIbcWeU7bCvkVOVy4rXQhx+iD36vobG3rcHR/6G1l6RR48tgea5jAdginSnHbIMVtadyDyPH0XrYm4Da3XCpXagpsZNv/bo6wqB4/i4yMsFYjHgGsEwS9fhY5sxqkEDgdF5pLPQRKjDT/1mI84mQJ0+6UrmgBVI0SZmvJ8EEWzfbg2ta5sLHXPKzpfc8WUD6dDS0CG0RWSmpIS+gdEl1Q1+J9Qp8/nTH0lWmMY1v5Avn6UybjqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TP0cKquaw7KGIVHUkFF/h9fs42/yNNPheV6LT+upSuE=;
 b=JTfCzTjAiOK9VaIhRh0PsVitp3zvHniJJUgvAws7cJLsOVnvXVqYegYS6evxeHNRzJuo+zMqdHvwrXN1O96LHC8/iZ04RhfD7e5yPc+ACqdUOlZEZdMT/XpVxFjQiAi5s7mlYj8bGbLZar1eRc3XdK1rRWl1X/dnTEJ0CyN/8uKqqJI9D0fdJfsPv+a6IQChbMvK5VZmMM6U2ezlzp1tV6mJ6KPZNzk5/3BJf67a1HOoC1Syhh712SIXnLDYQHYLQjtv86UMEGLMWStKiCVjJoB8zv4elm6eATIInvnhOG+Ywk2RZIyJqJ+Onorj9BxwQOMYfvtRyS8sHo3RBwtW4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB7290.namprd11.prod.outlook.com (2603:10b6:930:9a::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7159.23; Mon, 8 Jan 2024 10:33:57 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7159.020; Mon, 8 Jan 2024
 10:33:57 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 12/12] drm/i915/dp: Abort AUX on disconnected native DP
 ports
Thread-Topic: [PATCH 12/12] drm/i915/dp: Abort AUX on disconnected native DP
 ports
Thread-Index: AQHaPuhRxZZxjK0oSECtVvYbt9izrLDPvowA
Date: Mon, 8 Jan 2024 10:33:57 +0000
Message-ID: <1fc3350d9e0433a067cc24b7e2afc0508bee2a90.camel@intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
 <20240104083008.2715733-13-imre.deak@intel.com>
In-Reply-To: <20240104083008.2715733-13-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB7290:EE_
x-ms-office365-filtering-correlation-id: de75a884-3e0d-4319-f6c0-08dc103551c9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: POi4hM+DMzA5FMTCQuv4MPWqIu4Er2BQq9t4Uf46FG4oPlAV5eWgxTbLHemvR66CKNdplDXBu2lSzOZm0N1MuHUCMhqYKI2Jr2ohjUDK65eABF/gEGWU9QMmwWJbndc2ur57N69VYtrA6zHglGf3ImGLbIXlEsWgpE118o09KT+75c874qHcn/ZKfGUEUDzX82WJfXiUVoSpbZAPrHkITWf/kZgmuOEVMz+v9z1zYKmQz/MbVk9a1izDT9mNxSEzFskJwx4WMmkmHSwFEQs2LN95AazrPQ+wtQAYa7u7MF8j+tF3BZBuPpvQbGcH4Wrc3xE5LRiUB8ni6wSMfCojjwTTMtWiXdJCN33j+y+HIBLmbjvpyB6Li8H2lh2/i+pLp0MDL0FeUDrdJzTZQYMHu86ZmA9tuBIWKOQ2l1KZn0EBpdLUDfjzOIjtRqM8xOCL9ybLKy8WwHRKc+KOoYUkSHsRogkTb134bK1VrxL/1wzYOun1G2iNfufZp93Z+K34Sc6UF+Jj+dabKskQ5Ohu+qYux6k3mpUQ0s2Q22JCdEtl2BAEKiiZvqtsnLxTF6gFzLExqoJa7R2dz3E11sP0ujYG1GQ2+/DlRgJhTPHnhVg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(396003)(39860400002)(376002)(346002)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(2906002)(38100700002)(122000001)(5660300002)(38070700009)(82960400001)(86362001)(41300700001)(66574015)(316002)(110136005)(8676002)(36756003)(8936002)(6512007)(2616005)(6486002)(66946007)(76116006)(91956017)(66556008)(66446008)(6636002)(66476007)(26005)(64756008)(478600001)(83380400001)(6506007)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cmVGbWlXQWQ1MFlaeGpaeHVFWXkwbktKOTZlRUtGekFhS1NqaFZBaGxrMmJm?=
 =?utf-8?B?c21Dc25aYXkyV1cvSzNXYU5FbkRyNzRrVjFJN1htbnBIbE5ZM0VsUStpZXF4?=
 =?utf-8?B?TjZHQ2J1QWUrbTVMb0pMZlhKYmxicWdzR0UyOUUxRWpqUGljTzFDSVdmMm5z?=
 =?utf-8?B?WkNFaWpNdWxsd05PaDErTEZ2MWQ5V0UwM1h3bU04T05rTkxiK01HWENocHN2?=
 =?utf-8?B?TGpid2U4Mnd0RUdIREQxajFiTUdjSC9pVHdjMTNibU9yRHNLa3JRMlNrTmdv?=
 =?utf-8?B?N3MzSVNTYXRNUTRoR1Zhb3FSckhtcU5mUUtBTTNmRXQrTm9WV1N3R1dYRW94?=
 =?utf-8?B?VTVhQTBnNTV3YjByRFZSQ2ljNnc4QkxEM1lLNzNLUUFuQ2JWbjNCSzhCYTND?=
 =?utf-8?B?cVZCT3BHMHg0Y2oxMCtBc1VqVjBUTXNvTk9OdjVlNEpHQXpkMlJxYlZ2WlJ3?=
 =?utf-8?B?VWRGMXBsSXJVeUhYSmxUVXVLUEU2a2F0MEVzZFBMdVFXL29ZVTYzelJMOW14?=
 =?utf-8?B?cWhyckJ2L0RMZ0RERnptVExFWXFIZHVSaWV0V0c0UEdUdjdQSDd5YXdsZFlE?=
 =?utf-8?B?K1dUcWI4ekVMWG5BWEpCVGowanFxWUI2dzVrWmN4TVdiMHdaMjJ2Y2lWa3FS?=
 =?utf-8?B?RzdUYlNxeHc4dEVwS0pxbTY4UFU5UVc5NDZFbUJyVkY5c3hxYytuN2ZyOWR4?=
 =?utf-8?B?YTFqQW0ydmR1YUJweGYyUGVqT2RqWmxxWGdrQVhlMlRqYVhCL3owTDVmcStj?=
 =?utf-8?B?NzBwNm9Ed2RRdDc4UjJVc1A5SDlidUhIY21QakhnV25yRXFXdWg3OUZ4d2k3?=
 =?utf-8?B?SVFMME03VWNCOURRVWtmVndrL1FzOUN0WGEyM0JFc2gxak9TbVk5OXdVS0dM?=
 =?utf-8?B?UmNPOFhrdXJSUU1ZYTVHTk1yMEhwZDVJODhnZldJNFI5TzR5WFZ2OWxvOGUy?=
 =?utf-8?B?V1pTeklFTjBxNDBpSmR4blpVNHJXUWlpUVJKNFNsVFlWNmRFam0zK21tQXcv?=
 =?utf-8?B?T3grL3dIVzEzcVR2NFZQZ1VSejRrNmptd000MWZDYlRjMjBmYkljQXFlM1Nt?=
 =?utf-8?B?RzdXS0dLV1ZhVVg1Y25FRC9aT01JYTA2TE12Z2JUc3krK0pSeWlRb1FyaUZC?=
 =?utf-8?B?aWVFK3R5WHo5dm4xeXdSVW4zTEUwdDdlTTJYKyttRnN6TG5OUWEvVWRqOUJp?=
 =?utf-8?B?dlkzOWJCanpWREM5Z0lpZ0UxenVNSHM2bEEzOVc3ODI4bFd5Ly9reUNabkFs?=
 =?utf-8?B?U2swY0RVVGlaUTB1NEdxY1gyK3N5d0Z4d1YrT01maW1QUFovSjE3bUZiZ2FG?=
 =?utf-8?B?U0EycGhYZlk2ejRIdVZkTlUwMjhSdzBTemd2MmludStHUjNXMTRlSG53bU1p?=
 =?utf-8?B?RmM3bFd5WnJWcVowWHlhVWpDdGlQaXZkQjhWSDVCbzdidk4zYll2V3BuK1cx?=
 =?utf-8?B?N3NvMXNneEJFMWRiNFdGbndKbEZ2WHh1RWt4c2NycG9TZHFIZ3RCT0VUSWE1?=
 =?utf-8?B?ckJhTnArVGRPdlFoRjV0dWgveWxCelJZVFpYazFEc09HbmZXR3d4dWNBNEhB?=
 =?utf-8?B?L2MwcWlaanBnaFVvakdGOXhPQ3l2OERDMDJlVER4dWZWS1lsUUxJNGtJN3dC?=
 =?utf-8?B?Wlc5cDQwcXoxR3JmMWo5NE52MUlXQWJocmVUZWp1ZjhHT2w2YlRFeUZyaGdY?=
 =?utf-8?B?TXM3ZU1NaHJQMFIzM0JDNWlVZXdwbmtBYWU5OGQvVmJKZkR1L21zWmVVcWk3?=
 =?utf-8?B?NDFtblBlZUlkcVpCRzVqdWJqZm9hOW5QRHZUU0hWcm1kMEJvRTIzUmZLcUM2?=
 =?utf-8?B?SklJS2NTRUlreEgrS1F4SUkrUThCajcyaHVIcnk4UTloM3FzRTAvb3MwVkIv?=
 =?utf-8?B?VFEzME9xU3ZkdHVRTGpmMTFkSEVOTEpzUGg5MTJWZnVwQ1pwV1BLdWs2OTZR?=
 =?utf-8?B?aFFnMEs2aEdvY0cyc1VCQlZBQkpwSWUwcFUrVk5tUzA2Rmo1NjUzZTd3QTU2?=
 =?utf-8?B?clJ5MWNBc2t6NmJnOVYwd1pqajVRZEZTRVFWSE9UenFMUmNKRFM3cmIxUU56?=
 =?utf-8?B?VFJMSGhZRzZYRWNTOHY2YkdWY0k5Mk5nbnhCM3VuUmMwQUVUWURyaEZITlVZ?=
 =?utf-8?B?QTBiZFc4TG5xa3hySEZyd1dYcFIyKzhkUnhRVy9wcDlOd3dtRDVSR1VBaU1i?=
 =?utf-8?B?VFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A7BA4BEDD50AE341A23ECAC76C3864AE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de75a884-3e0d-4319-f6c0-08dc103551c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2024 10:33:57.0681 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6w2yu4V0CgK4rMzPjW0zbbtsLOStkssPdzZlElM0JmSDFKen2iPsX4/6E/VxFO3XUNvWEvgfSYNVlJg1SwAkqiXOIi3fVuj4arHeYu+BHss=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7290
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

T24gVGh1LCAyMDI0LTAxLTA0IGF0IDEwOjMwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEFu
IEFVWCB0cmFuc2ZlciBvbiBhbnkgZGlzY29ubmVjdGVkIERQIHBvcnQgcmVzdWx0cyBpbiBsb25n
DQo+IHRpbWVvdXQvcmV0cnkgZGVsYXlzIHRoZSBzYW1lIHdheSBhcyB0aGlzIGlzIGRlc2NyaWJl
ZCBmb3IgVHlwZUMgcG9ydA0KPiBpbg0KPiANCj4gY29tbWl0IGE5NzJjZDNmMGViNSAoImRybS9p
OTE1L3RjOiBBYm9ydCBEUCBBVVggdHJhbnNmZXIgb24gYQ0KPiBkaXNjb25uZWN0ZWQgVEMgcG9y
dCIpDQo+IA0KPiBQcmV2ZW50IHRoZSBkZWxheSBvbiBub24tVHlwZUMgcG9ydHMgYXMgd2VsbCBi
eSBhYm9ydGluZyB0aGUgdHJhbnNmZXINCj4gaWYNCj4gdGhlIHBvcnQgaXMgZGlzY29ubmVjdGVk
LiBGb3IgZURQIGtlZXAgdGhlIGN1cnJlbnQgYmVoYXZpb3IgYXMgdGhlDQo+IHN1cHBvcnQgZm9y
IEhQRCBzaWduYWxpbmcgaXMgb3B0aW9uYWwgZm9yIGl0Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTog
SW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2
Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMgfCA1ICstLS0tDQo+IMKgMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jDQo+IGluZGV4IGIzNmVmMzIxZTgz
NWUuLjRmNGEwZTNiMzExNDAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfYXV4LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcF9hdXguYw0KPiBAQCAtMjMxLDggKzIzMSw2IEBAIGludGVsX2RwX2F1eF94ZmVy
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50
ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9DQo+IGRwX3RvX2RpZ19wb3J0KGludGVsX2RwKTsN
Cj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyID0gJmRpZ19w
b3J0LT5iYXNlOw0KPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUgPSB0b19pOTE1KGRpZ19wb3J0LQ0KPiA+YmFzZS5iYXNlLmRldik7DQo+IC3CoMKgwqDCoMKg
wqDCoGVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGk5MTUsIGRpZ19wb3J0LT5iYXNl
LnBvcnQpOw0KPiAtwqDCoMKgwqDCoMKgwqBib29sIGlzX3RjX3BvcnQgPSBpbnRlbF9waHlfaXNf
dGMoaTkxNSwgcGh5KTsNCj4gwqDCoMKgwqDCoMKgwqDCoGk5MTVfcmVnX3QgY2hfY3RsLCBjaF9k
YXRhWzVdOw0KPiDCoMKgwqDCoMKgwqDCoMKgdTMyIGF1eF9jbG9ja19kaXZpZGVyOw0KPiDCoMKg
wqDCoMKgwqDCoMKgZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBhdXhfZG9tYWluOw0K
PiBAQCAtMjUyLDkgKzI1MCw4IEBAIGludGVsX2RwX2F1eF94ZmVyKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHAsDQo+IMKgwqDCoMKgwqDCoMKgwqAgKiBBYm9ydCB0cmFuc2ZlcnMgb24gYSBkaXNj
b25uZWN0ZWQgcG9ydCBhcyByZXF1aXJlZCBieQ0KPiDCoMKgwqDCoMKgwqDCoMKgICogRFAgMS40
YSBsaW5rIENUUyA0LjIuMS41LCBhbHNvIGF2b2lkaW5nIHRoZSBsb25nIEFVWA0KPiDCoMKgwqDC
oMKgwqDCoMKgICogdGltZW91dHMgdGhhdCB3b3VsZCBvdGhlcndpc2UgaGFwcGVuLg0KPiAtwqDC
oMKgwqDCoMKgwqAgKiBUT0RPOiBhYm9ydCB0aGUgdHJhbnNmZXIgb24gbm9uLVRDIHBvcnRzIGFz
IHdlbGwuDQo+IMKgwqDCoMKgwqDCoMKgwqAgKi8NCj4gLcKgwqDCoMKgwqDCoMKgaWYgKGlzX3Rj
X3BvcnQgJiYNCj4gK8KgwqDCoMKgwqDCoMKgaWYgKCFpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHAp
ICYmDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIWludGVsX2RpZ2l0YWxfcG9ydF9jb25uZWN0
ZWRfbG9ja2VkKCZkaWdfcG9ydC0+YmFzZSkpIHsNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqByZXQgPSAtRU5YSU87DQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
Z290byBvdXRfdW5sb2NrOw0KDQo=
