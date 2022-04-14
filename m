Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F09EF500C14
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 13:22:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ECB610FBCF;
	Thu, 14 Apr 2022 11:22:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC00310FBCF
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 11:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649935376; x=1681471376;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=jruox/Yq/inEseswCdGsEQ0guRsRqmNfJJKRDP2b/+0=;
 b=hb4NlAM4ipyeLRx108s6bcG5GKE5CeKFbPCWZXBsBdhtvS4QG9bakhJM
 J8tlr+TlWUaGUj27wWSAlc/CJMupRwsdm7rg7/yIZX8Xg1FSEDYN4nSY0
 NxvSQN94Aky1zvS+PaCqdUEPBFOXNfNiZDq3ols2N0yBLpBLJTYA03IrK
 yrNVUvtqLDVUuNOvBgFvzvrrPLnIIKKKo8qi6hm+5Tn4eMOoqR7sAf1RI
 3BRofEvU+dO6FTICBVZ7W7XVJaWeXjj4zlY34D0pmL//oQGFfx3w2suS/
 YXkXm2jCdoq1GAYyVAuMMDSo83kAA586kiuGFRzdJLAj+gmhMUl9et7ZO A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="262660448"
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="262660448"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 04:22:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="612297812"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 14 Apr 2022 04:22:56 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 04:22:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 04:22:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 14 Apr 2022 04:22:55 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 14 Apr 2022 04:22:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DQ2quFkeJKuzkgdmrborHyG5eolNeIRFQLlwDJCxsQ/4EoNOPnH82kMOT2Hk1XviV9VhCCrKqsSa7tvjuKqdlB6wmwW2Y3LT5PjE3BJKaxyIBn2/qkCYo/qRe+KjuZWPiGJugP0Mu3VgkMWl8Nho/Y310+LctR0NDF1M8Nh3u8jcIspmvBUCY1JXxV9oGYMuAy58rp2+SZVgKIygVHekWlRbjyQRo0ZlnoN1fSi1DJPJY9VP4YxtYoA4KGX0hyxj009BpYX+GzgFoKcO2RDqjFHxiquYokRAgJ9+QSn/7kgtyPNRa5SEg6JWCpGAg51up+8L2BTH7o7jy5dcF6Q33g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jruox/Yq/inEseswCdGsEQ0guRsRqmNfJJKRDP2b/+0=;
 b=WTjOrqY8lxHQJzA7t7jshQ8nuv0oVZ9+8qvYOqgPl8wPZdUmPtrY8fau12qWVjRTZzm5zY9dtA5A2zV/EDzFOvfd6mA8PA47r/146/zG/Za5bwfZaOl3Vppvsfvl2u+rdSPoq2NI8p3WAjmD+7bLIz3iQX6VyuNn2guYeSeafGGdGXfBe12LMKJio+AFPbS0XNRdhsIWrvupGpPmlJFs8YihWj633XK64mtDG62C2yLXEhXELTT1PNDNtkdoilY+tkfRAxUqWDbB31LgsIvO7a55VEAIb2mM+pwV6TDxwjiD0rjv/qyEfIfcRw0mJzZC4RSlK4khQWUViV5YuilhMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BYAPR11MB3703.namprd11.prod.outlook.com (2603:10b6:a03:b2::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5164.20; Thu, 14 Apr 2022 11:22:53 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::95e7:8abc:485a:a90]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::95e7:8abc:485a:a90%7]) with mapi id 15.20.5144.029; Thu, 14 Apr 2022
 11:22:53 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "lyude@redhat.com" <lyude@redhat.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Check EDID before dpcd for possible HDR aux bl
 support
Thread-Index: AQHYTi3cVrmmCUwmOEC4GSSZ3+yRhazsj1uAgAD2GwCAANNgAIAA7sMA
Date: Thu, 14 Apr 2022 11:22:53 +0000
Message-ID: <e87eea58464d7b997ff3602444800cd55bf34577.camel@intel.com>
References: <20220412052542.681419-1-jouni.hogander@intel.com>
 <5294707cfceb018778f7ff1164f88581acb08015.camel@redhat.com>
 <2f768d2c5d51c31d507d2d10fbb9c19a39eb2111.camel@intel.com>
 <7f7d46f3a5021ff4616a6c66a70c99d9120f879e.camel@redhat.com>
In-Reply-To: <7f7d46f3a5021ff4616a6c66a70c99d9120f879e.camel@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a28dcd0c-28ad-4d02-815a-08da1e091dfa
x-ms-traffictypediagnostic: BYAPR11MB3703:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB370308A70CB17B2E310DE6B68AEF9@BYAPR11MB3703.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KsCI2wX9gh9BfhfviSSPk3dFbI0ncx5JALwSjxIjmdtRIG8Mdqzqr5sSdQc1eHkTnFlPwP33Y8fjcTAUrv6FbQzDI4deLwlvqQqiJ2h/Ld1i05COdAVE9NEcG2nLD3Vw6xT64PAUcO3izveyzCFGSPh0ahZvnOh/B27+zxC9bJztQ6qbTT94ID3p2PrYtX4CWKl0sT3QEG+IQlESGIazVaQCduvbONgBD/1MPhXq6EHAJFNsYuT116o1aZlJP3vRoUmCmZJXixGVH9bpePVG+E+Czmo7v+MmIJzhL1fiuCcxP4sl+xNzCR7U1H8EnGT3TZsw8xenWv0TI64hqRHL7M095slCqMxivbubeIIMcsUas7vF9vKmlUjc9VAzhZBIe9uu+eFhauF7VRiEvdbeiGoGNm2aWXLO3Q52oSxZlErRyINNamO/Q8pbfRVP3rCHf2COfReYwPXwd3jZjO2RAxqeq8bR86T/GjD9KlmEtKOw/nzwNpyQoPGH3SHBhzBZvcwRFwOcei4UyHwh7fPX5YID8nHBz23BZ+qKbj2brH2KBkpgx+f0jJ+rd9ueM4Y7Tm3NgcoeEk6F7+pv7YEA/gzxQjXp/huAQVwlJg0s96NsZwr8HFDpoh4S9NA1eHu+EHBjWDVo+oWtW2NOc7gq0AaPgIvbsjYYrBlfWvIc6okXWfx4fvtiT6tlOVeRTSLsJKqd3T2n5kXGzqeQupCXOg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(91956017)(71200400001)(26005)(6512007)(6506007)(110136005)(54906003)(316002)(6486002)(36756003)(508600001)(86362001)(122000001)(966005)(5660300002)(66476007)(64756008)(8676002)(66446008)(66556008)(66946007)(76116006)(2906002)(4326008)(38070700005)(38100700002)(8936002)(2616005)(66574015)(186003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OFBrOHZpaXNGM21SUER3eFFaSHdPa0xyRTFJU0NRVGs2cEg0TGtJQTJxb2dK?=
 =?utf-8?B?K1JrYWpTeEY2MVBOQnA0ejNIRGhvWGNNNW1ScENjMXlHbEhZZ3NOWHhBbWly?=
 =?utf-8?B?Z1c0dk13N2dObzhVUGx0Nm1MdEJUQ1pFTlF6UTdkamYxSHVaUE9CbHBLd2Zv?=
 =?utf-8?B?VEM3RlIwTlZ2VDc4aWJhSEZQYjJXZEo5bVg3UEFjUkJ1QkpVV2grOUs1MU8z?=
 =?utf-8?B?UCtsdm40MDY1MkhQcWwvWUVFaXh5RVlYTElPV1VSTjZYREphdzNZQzhFMFpJ?=
 =?utf-8?B?RFN2RUluUHdiZmg1UEtRK29iaWd3cjJhK2ExbTBpS3ExU2xIL21pK2loVXMr?=
 =?utf-8?B?RUdwYmZCU3RIVzFUTXRoTFl3ci9qRWtUWE1YQ0pTYXo0dkFobTk2QjBaNlZy?=
 =?utf-8?B?MzI3bDNodENFbi90MTJkRGE1VmVuQWU1SGQxMXBrZFkwMjk3VmpxUXRKZk5h?=
 =?utf-8?B?VnptR1BCT2lKYnJCL3J0WWN2RS9jRm5FVGVsMWtOa1pjemtTSCtIbWlreU0w?=
 =?utf-8?B?d0tvVlVLOURKM3JUNFJLVE52VWwrNE90WkZ6R2tGQWxkV2lQNkhPZHkxRzBk?=
 =?utf-8?B?KzM0MjZNWVRUUVZaT0tDNTZMSWZZYURvcnk1c1M2RGFpOEpPNVV6NUl1QUxV?=
 =?utf-8?B?NWZiUkN6S2xBdU9rSGR5ZkR2KzBBOWtCTWc4U0xNMWlXUEZsdmx0QTQwclZZ?=
 =?utf-8?B?dUI5eldpbi9HTDJSSm9NSmNmWFFydUdEcnMwbzVIMHJNZTFocnF4TVNHaVVC?=
 =?utf-8?B?YjhiWXhIa0VXNnJ6cmNBY3JQQUtFUDNtTXF0UVpjdkh3Q3dMRGIrYkFMckRL?=
 =?utf-8?B?K2dGZ2lyL3dOdUhKWU5uVFdkdTUwUENFUEZ6L0ZEdlRsRmI2MDYwRW05MDJH?=
 =?utf-8?B?dkt3TlNTdHl5eHp5T1U3aUNSUmJ5dDFReSs0ME1oYURpcjR0UXpQa0trdEtX?=
 =?utf-8?B?N2xDWU5NZmxMVzhuTWVXV2xzNUhROVRmSTVJRU9oeEo0dTJpU0hJOWRzTHdv?=
 =?utf-8?B?Q05DV3VVL0FGcFc1cWJLb1FIR1RhZlJVS3BjNjE0bTJSa0NOZGErRldiSE5v?=
 =?utf-8?B?NXIwbmtqQUx2R2VTaVQ5QlJ4S3ZEQStLMGdaVVRhd0FFcUY2SDhQaGloWHhY?=
 =?utf-8?B?ZUtKNytqRGpNY2RURG1yZGFOcEhiR3V0NnJEazVFNGhHbjJCWFpKUGJQaHRD?=
 =?utf-8?B?ZnZ2ZjNCRUJUQmtqS0xEc0tpWkFkSzFxQ2hRb0FJSyt2Y290Um8xR0pvcllB?=
 =?utf-8?B?VEIvMkQzWDlPL3JXRjdQZ2RrVDRaTkptZ1VWYWV5Mm5yNHVqaDhlWlJGVUM3?=
 =?utf-8?B?TThEYkxTZjNsMzQ2OTk0ZFVQekhEWUcrWmRGb1M1VlU4Qng5Wmt0N21MajBm?=
 =?utf-8?B?SDA1emlBdDNubWs4Z0FObFVUYTRNZnNQLzFFeHhSbkJzb1RwUURUSGs5ajQ3?=
 =?utf-8?B?M241YWJ5Z05JbDNRTkNGMG56OXROY3Rrdkd6N3A4NTR4UEthNDRjeVBDTVhj?=
 =?utf-8?B?bWQ4UzlpNnNwYkVFL0lkcXRsRXZNNmlSdmZHYlBrUS9MeGhoenUyRERVb3o5?=
 =?utf-8?B?d1pSUTRReHpqcDNnL0N3TXdBeFltMEdRbWFSQllJcHdlc2w1aHc4ZVJ3M1RB?=
 =?utf-8?B?QjVUNnFTSzd5U0Fib1VlVjl4dHk1RlJHeHh5bmQwR096NFN5cStqYjkzekFr?=
 =?utf-8?B?RStaekVwdGZDdEpqdy9RVlBiNmdaWmpWSm5GRjJNV2dRZy9qWmZoYy8zNFU5?=
 =?utf-8?B?aDhXNTVtR1lod0NRUXppalU5WkIrK0NoNlRMb3djbWFZbmYyRUxRMDJTYU1n?=
 =?utf-8?B?V3dOZzI1d3hJNGt0bWtTdzYyMS9ERjE4QXBtM2NWRXhIczhVVkVyYklCNjJE?=
 =?utf-8?B?WTRkSzNURjIwV3krWVozTlJOUk00S0wyamY3NjhlaTMzd1k5UjgvMlNSVWtl?=
 =?utf-8?B?QWg4NW1yTUh1RktqWXNJWW1za1R4Mm9zcTNJNkc3b3RBVWEzK0FZZ1dOR1ZQ?=
 =?utf-8?B?TEF2NW1nMVVqVzlRc1B2VEtUbzZIT2M0YjBmMGY3ZDAvZThFYVhZS1pvcGo0?=
 =?utf-8?B?Y3V2MHFqRkxqWnBXdlplQjh6bXRpVHBoMXdTZndueUlXb0wzemIxUFVCcTBN?=
 =?utf-8?B?c3A2d3liT29nbUR1b1ZVYmF2QklNald2Z2RyMXRQWUluaW1tNGRBUnJaTG5R?=
 =?utf-8?B?bWI3dmRQQTkyTDdGby90czFZcHFHbE0ya2EyNnM0Vlpza2pLOE9pWkxLUkNY?=
 =?utf-8?B?L0trMjZ6anpjUDRlQmtuZjVLd2c5YnFQb1pxOHpiN1dBb3YwMDF4Tkl2WFJ1?=
 =?utf-8?B?QmMwOFJWanhraHpEWXhLYlpjTHBSbjJkNXRuY3V2L1p5Mk4xOVNCb0tudFZ4?=
 =?utf-8?Q?znIpuC4lNT5I3CFFMBv2F1poz3O7viSQWCf+B?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5410661BB3A0B94C83C396CA1D3BCB78@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a28dcd0c-28ad-4d02-815a-08da1e091dfa
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2022 11:22:53.2060 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y+AcU1kfpKghtAVbUgdx3m4R0UOXHZ/G6UPRqcrCdvym6BB9jEmlovRcSrnI7BX1QeQJbMDE5d0NDUw0lSvySjtBfsiAoQRhBY60zTqVWxw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3703
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Check EDID before dpcd for
 possible HDR aux bl support
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "filippo.falezza@outlook.it" <filippo.falezza@outlook.it>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIyLTA0LTEzIGF0IDE3OjA4IC0wNDAwLCBMeXVkZSBQYXVsIHdyb3RlOg0KPiBP
biBXZWQsIDIwMjItMDQtMTMgYXQgMDg6MzEgKzAwMDAsIEhvZ2FuZGVyLCBKb3VuaSB3cm90ZToN
Cj4gPiBIZWxsbyBMeXVkZSwNCj4gPiANCj4gPiBTZWUgbXkgcmVzcG9zZSBiZWxvdy4NCj4gPiAN
Cj4gPiBPbiBUdWUsIDIwMjItMDQtMTIgYXQgMTM6NTAgLTA0MDAsIEx5dWRlIFBhdWwgd3JvdGU6
DQo+ID4gPiBPbiBUdWUsIDIwMjItMDQtMTIgYXQgMDg6MjUgKzAzMDAsIEpvdW5pIEjDtmdhbmRl
ciB3cm90ZToNCj4gPiA+ID4gV2UgaGF2ZSBub3cgc2VlbiBwYW5lbCAoWE1HIENvcmUgMTUgZTIx
IGxhcHRvcCkgYXZlcnRpemluZw0KPiA+ID4gPiBzdXBwb3J0DQo+ID4gPiA+IGZvciBJbnRlbCBw
cm9wcmlldGFyeSBlRFAgYmFja2xpZ2h0IGNvbnRyb2wgdmlhIERQQ0QgcmVnaXN0ZXJzLA0KPiA+
ID4gPiBidXQNCj4gPiA+ID4gYWN0dWFsbHkgd29ya2luZyBvbmx5IHdpdGggbGVnYWN5IHB3bSBj
b250cm9sLg0KPiA+ID4gPiANCj4gPiA+ID4gVGhpcyBwYXRjaCBhZGRzIHBhbmVsIEVESUQgY2hl
Y2sgZm9yIHBvc3NpYmxlIEhEUiBzdGF0aWMNCj4gPiA+ID4gbWV0YWRhdGENCj4gPiA+ID4gYW5k
DQo+ID4gPiA+IGRvZXMgZGV0ZWN0aW9uIGZyb20gRFBDRCByZWdpc3RlcnMgb25seSBpZiB0aGlz
IGRhdGEgYmxvY2sNCj4gPiA+ID4gZXhpc3RzLg0KPiA+ID4gPiANCj4gPiA+ID4gRml4ZXM6IDRh
OGQ3OTkwMWQ1YiAoImRybS9pOTE1L2RwOiBFbmFibGUgSW50ZWwncyBIRFIgYmFja2xpZ2h0DQo+
ID4gPiA+IGludGVyZmFjZQ0KPiA+ID4gPiAob25seSBTRFIgZm9yIG5vdykiKQ0KPiA+ID4gPiBD
bG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMv
NTI4NA0KPiA+ID4gPiBDYzogTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4NCj4gPiA+ID4g
Q2M6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4gPiA+IENjOiBKYW5p
IE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+ID4gPiBUZXN0ZWQtYnk6IEZpbGlw
cG8gRmFsZXp6YSA8ZmlsaXBwby5mYWxlenphQG91dGxvb2suaXQ+DQo+ID4gPiA+IFNpZ25lZC1v
ZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4g
PiAtLS0NCj4gPiA+ID4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXhfYmFj
a2xpZ2h0LmMgICB8IDEzDQo+ID4gPiA+ICsrKysrKysrKysrKysNCj4gPiA+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspDQo+ID4gPiA+IA0KPiA+ID4gPiBkaWZmIC0tZ2l0DQo+
ID4gPiA+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXhfYmFja2xp
Z2h0LmMNCj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1
eF9iYWNrbGlnaHQuYw0KPiA+ID4gPiBpbmRleCA5N2NmM2NhYzAxMDUuLmY2OWUxODViNThjMSAx
MDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9hdXhfYmFja2xpZ2h0LmMNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMNCj4gPiA+ID4gQEAgLTEwOCw2ICsxMDgsMTkg
QEAgaW50ZWxfZHBfYXV4X3N1cHBvcnRzX2hkcl9iYWNrbGlnaHQoc3RydWN0DQo+ID4gPiA+IGlu
dGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQ0KPiA+ID4gPiAgICAgICAgIGludCByZXQ7DQo+ID4g
PiA+ICAgICAgICAgdTggdGNvbl9jYXBbNF07DQo+ID4gPiA+ICANCj4gPiA+ID4gKyAgICAgICAv
Kg0KPiA+ID4gPiArICAgICAgICAqIElmIHdlIGRvbid0IGhhdmUgSERSIHN0YXRpYyBtZXRhZGF0
YSB0aGVyZSBpcyBubyB3YXkNCj4gPiA+ID4gdG8NCj4gPiA+ID4gKyAgICAgICAgKiBydW50aW1l
IGRldGVjdCB1c2VkIHJhbmdlIGZvciBuaXRzIGJhc2VkIGNvbnRyb2wuDQo+ID4gPiA+IEZvcg0K
PiA+ID4gPiBub3cNCj4gPiA+ID4gKyAgICAgICAgKiBkbyBub3QgdXNlIEludGVsIHByb3ByaWV0
YXJ5IGVEUCBiYWNrbGlnaHQgY29udHJvbA0KPiA+ID4gPiBpZiB3ZQ0KPiA+ID4gPiArICAgICAg
ICAqIGRvbid0IGhhdmUgdGhpcyBkYXRhIGluIHBhbmVsIEVESUQuIEluIGNhc2Ugd2UgZmluZA0K
PiA+ID4gPiBwYW5lbA0KPiA+ID4gPiArICAgICAgICAqIHdoaWNoIHN1cHBvcnRzIG9ubHkgbml0
cyBiYXNlZCBjb250cm9sLCBidXQgZG9lc24ndA0KPiA+ID4gPiBwcm92aWRlDQo+ID4gPiA+ICsg
ICAgICAgICogSERSIHN0YXRpYyBtZXRhZGF0YSB3ZSBuZWVkIHRvIHN0YXJ0IG1haW50YWluaW5n
DQo+ID4gPiA+IHRhYmxlDQo+ID4gPiA+IG9mDQo+ID4gPiA+ICsgICAgICAgICogcmFuZ2VzIGZv
ciBzdWNoIHBhbmVscy4NCj4gPiA+ID4gKyAgICAgICAgKi8NCj4gPiA+ID4gKyAgICAgICBpZiAo
IShjb25uZWN0b3ItDQo+ID4gPiA+ID4gYmFzZS5oZHJfc2lua19tZXRhZGF0YS5oZG1pX3R5cGUx
Lm1ldGFkYXRhX3R5cGUgJg0KPiA+ID4gPiArICAgICAgICAgICAgIEJJVChIRE1JX1NUQVRJQ19N
RVRBREFUQV9UWVBFMSkpKQ0KPiA+ID4gPiArICAgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOw0K
PiA+ID4gDQo+ID4gPiBUaGUgYmxvY2sgdXNlZCBmb3IgdGhpcyBpcyBhY3R1YWxseSBmb3IgSERN
ST8/IEhvdyBiaXphcnJl4oCmDQo+ID4gPiANCj4gPiA+IEFueXdheSB5ZWFoIC0gcGF0Y2ggbG9v
a3MgZ29vZCB0byBtZSwgYnV0IEkgdGhpbmsgd2Ugc2hvdWxkIHByaW50DQo+ID4gPiBhDQo+ID4g
PiBkZWJ1Z2dpbmcNCj4gPiA+IG1lc3NhZ2Ugb2Ygc29tZSBzb3J0IHdoZW4gd2UgZGV0ZXJtaW5l
IHRoYXQgdGhlcmUncyBubyBIRFINCj4gPiA+IGJhY2tsaWdodA0KPiA+ID4gYmVjYXVzZQ0KPiA+
ID4gb2YgdGhlIEVESUQgLSBhbG9uZyB3aXRoIHByaW50aW5nIGluc3RydWN0aW9ucyBmb3IgaG93
IHRoZSB1c2VyDQo+ID4gPiBjYW4NCj4gPiA+IG92ZXJyaWRlDQo+ID4gPiBpdCBpZiB3ZSd2ZSBt
YWRlIHRoZSB3cm9uZyBjaG9pY2UgYWxvbmcgd2l0aCByZXBvcnRpbmcgYSBidWcuDQo+ID4gPiBB
bHNvIC0NCj4gPiA+IHdlIHNob3VsZA0KPiA+ID4gaGF2ZSB0aGUNCj4gPiANCj4gPiBobW0sIGN1
cnJlbnRseSB0aGVyZSBpcyBubyBvdmVycmlkZSBwb3NzaWJpbGl0eQ0KPiA+IGluIGludGVsX2Rw
X2F1eF9zdXBwb3J0c19oZHJfYmFja2xpZ2h0LiBEbyB5b3UgdGhpbmsgSSBzaG91bGQgYWRkDQo+
ID4gb25lPw0KPiANCj4gWWVzLCBwcm9iYWJseSAtIEkgdGhpbmsganVzdCBtYWtpbmcgaXQgc28g
dGhhdA0KPiBpOTE1LmVuYWJsZV9kcGNkX2JhY2tsaWdodD0zDQo+IGVuYWJsZXMgdGhlIEhEUiBi
YWNrbGlnaHQgcmVnYXJkbGVzcyBvZiB0aGUgcmVzdWx0cyBvZiB0aGUgRURJRCBjaGVjaw0KPiB3
b3VsZA0KPiBwcm9iYWJseSBiZSBhIGdvb2QgaWRlYS4NCg0KT2ssIEkgdGhpbmsgSSB1bmRlcnN0
b29kIHlvdSBjb3JyZWN0bHkgb3JpZ2luYWxseS4gSWYgeW91IGNvdWxkIHBsZWFzZQ0KY2hlY2sg
dmVyc2lvbiAyOg0KDQpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvNDgx
OTg1Lz9zZXJpZXM9MTAyNjQ1JnJldj0xDQoNCj4gDQo+ID4gSSBzZW50IHZlcnNpb24gMi4gRGlk
bid0IGFkZCB5b3VyIHJiIHRoZXJlIGFzIEkgd2Fzbid0IHN1cmUgaWYgSQ0KPiA+IHVuZGVyc3Rv
b2QgeW91ciBjb21tZW50IGNvcnJlY3RseS4gUGxlYXNlIGNoZWNrIG5ldyB2ZXJzaW9uLg0KPiA+
IA0KPiA+ID4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4gPiANCj4gPiB0YWcgZnJvbSBk
aW0gYWRkZWQgaGVyZSB1c2luZyBgZGltIGZpeGVzICRjb21taXRgLg0KPiA+IA0KPiA+IFdpdGgg
dGhhdCBmaXhlZDoNCj4gPiANCj4gPiBSZXZpZXdlZC1ieTogTHl1ZGUgUGF1bCA8bHl1ZGVAcmVk
aGF0LmNvbT4NCj4gPiANCj4gPiArDQo+ID4gICAgICAgICBpbnRlbF9kcF93YWl0X3NvdXJjZV9v
dWkoaW50ZWxfZHApOw0KPiA+ICANCj4gPiAgICAgICAgIHJldCA9IGRybV9kcF9kcGNkX3JlYWQo
YXV4LCBJTlRFTF9FRFBfSERSX1RDT05fQ0FQMCwNCj4gPiB0Y29uX2NhcCwNCj4gPiBzaXplb2Yo
dGNvbl9jYXApKTsNCj4gPiANCj4gPiBCUiwNCj4gPiANCj4gPiBKb3VuaSBIw7ZnYW5kZXINCj4g
PiANCg0K
