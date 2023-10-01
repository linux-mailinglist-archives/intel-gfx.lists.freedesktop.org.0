Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0833C7B470C
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Oct 2023 13:03:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2259089496;
	Sun,  1 Oct 2023 11:03:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1AAA89496
 for <intel-gfx@lists.freedesktop.org>; Sun,  1 Oct 2023 11:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696158190; x=1727694190;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=+rBqor//T3Js+pBLotzC+HslS+oUkfI52KhPe0VxJq4=;
 b=UhZnaYa82bWJHmJBRP2GJpYiSZDqRwk3u6fpMRwgaSiSxxYy+2nBjuE6
 vdpi1bcyQ3c+bQgvtyLaxR1MPpfGGsUiKnCevJv7v59ofi0+ffGue6GNp
 YbVTdbS4GMtw+K5AouxoDUiO+9ElTJmDusVQ171Lxl1b0cTAuNfF/yQ97
 NBTizkzsMo/KN1H7EkGG1gVvzIpyVnLBV5F4+nhODDkCBUWiUVLf3juU1
 i36IZXmrmiK9vyM6qEu++S6GEBWfC9y9ipHvIpsFn9oBwB/816wgHw8oM
 XFqAMrswLXxSQbEnQvcd1vlvhwEaFKhQYeEurdkygaVY06kGAMKUWAM5R Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="367572245"
X-IronPort-AV: E=Sophos;i="6.03,191,1694761200"; d="scan'208";a="367572245"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 04:03:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="785532077"
X-IronPort-AV: E=Sophos;i="6.03,191,1694761200"; d="scan'208";a="785532077"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Oct 2023 04:03:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 1 Oct 2023 04:03:09 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 1 Oct 2023 04:03:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sun, 1 Oct 2023 04:03:02 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Sun, 1 Oct 2023 04:03:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M+tmgoGWEvUO5hihZ3bZMGlWIWG+fuhQmmSXm1su73drhn2ylYxTU+Hb6mQh4ChA5lX+Zs/F4Qu8s2nrEzEN3c+FRxXQGnkNNYa3J6BwbpJO+hwiQaleaRe86RxPmf/RPkOLc9YCtfpibQKfxUCIn966T9VpMR8L0BqLDh0kvhykdrsUzDU5TlFCQY4O1SrHmmCNYivhyP4GUQqaQurA0uVnRLSzvQuy1hy/cMkccciibL+z7tn/mV7y0BLW0UxE+BDI9YuyoJhJwFYt/58tj2GFdQD+/UAz1TQseBIinfiOPYQI1up67csMzm2YqQ5y5b760J0bu7pqrxNzXa2eJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+rBqor//T3Js+pBLotzC+HslS+oUkfI52KhPe0VxJq4=;
 b=iqrKEghDyBC59kPrGcVdQdoMbbzl4Wwwb/jk0611SmxwSVqbjJPzshqjdO9hZtDUQ0uk0niOulS0GQvGpb/nyUDVRIMdsYE6TLL2pFAQY/ba5v23LmSxQcEi2TKIC1L3591+1G+rCGxrtJHwdiDkLObLRytVj7y2pdd7NcxkbALkN+QkbTGnmqTN/aRfRP7LxWxjJpd6w3IYIfTb27dt254j1c2redU54zW4yUuIGyJbl4C51Mr981p7rCLVOKmsRA8uM62fFrr8+wNYHEbslAJr8sIGdxjXAGLWR0xHgkyRv60tNe3S5oVNZmrrIjBHf4hHeH7rBskBqJ4bNThc7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.23; Sun, 1 Oct
 2023 11:03:00 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::991e:61fd:6963:57a5]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::991e:61fd:6963:57a5%5]) with mapi id 15.20.6838.029; Sun, 1 Oct 2023
 11:03:00 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/5] drm/i915/fbc: Split plane rotation
 checks per-platform
Thread-Index: AQHZ5wAlTwxxv0HEuUCQ16HspnrOQLA036sA
Date: Sun, 1 Oct 2023 11:03:00 +0000
Message-ID: <9976b19a6417ca1efca243bb06c6c885dcbf3219.camel@intel.com>
References: <20230914113854.10008-1-ville.syrjala@linux.intel.com>
 <20230914113854.10008-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20230914113854.10008-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|PH8PR11MB8257:EE_
x-ms-office365-filtering-correlation-id: e4366527-66b6-4219-6fd9-08dbc26df9f5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CbCL+wxlz5h1s6odEXbEWdqPp2PYWo2gRdDrXkZMj5qBuGQlCJKL6Q52YPZqr3cuzYG/UCKWmKQCd6HeuHBLTs/MiTl+OcVAmRYltmIDnsOPqR+FpwhgEVPmUKOrCWwU4pBdBSXTHhV+yhiuEnhd67zCjRcb22mRmGbEDhAMM6c1HoowaeXHKgrwAAV4O6zgnbYOeXiRzaaC5gompGr6UEPc0s7CcbP4pWS05UMgHoU/os7sOqN8Imnk8BLvjZUriNXoDn09tU0IzUnVPS3Tv9hk2OE9fK4tAiCCDtVDRiNyyG0EMxTHrKgIvaGTYtCXbcFmeKEYTZbc+o3h+avdgGVfYcE7Bpi8ize1WuBeKM9UpKqBg/Titzf5AqheWNkrwoCH0bzSOOIx5Rk/c05O509k5jWRzv5/2Wj6kS9Slw4RdTMzkWI6IDaIOpWi2JvAgJASjVi2cwZNu95mulIOsFJcrcCx0U61TnM3Vx6KVe6dSZUxBQS0ugJI4GPL4FZfpf0jjPYQ2Q2vAkYP5k8/ErhulcT9jiNFgQ0AWGm3w8dPHQErbtVeEDx4DEtXFdwMGUNPxIZDcw2RGul1vYlOZrQrSrjn1fMOwv75GW8BM1A9dlI94hrwV7QzskKD4tNs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(366004)(396003)(346002)(376002)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(478600001)(6512007)(6506007)(38070700005)(91956017)(64756008)(8936002)(66476007)(71200400001)(83380400001)(76116006)(110136005)(5660300002)(41300700001)(66446008)(66946007)(316002)(86362001)(82960400001)(8676002)(36756003)(66556008)(38100700002)(26005)(2906002)(6486002)(122000001)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bWY1YUhnWk1iK01SWTZlM2djMDR0TjZnMGJyM2Y4OHF4RHluZ2Vla0QzeHJE?=
 =?utf-8?B?TjhLYXQzSWdjb0FYVWZkcEdLa3dBWWVDS0RTeWNPMHB4REM3cXRKOC9PbE1Q?=
 =?utf-8?B?VDFhZy9jLy9iYmtaQ21VNENjN25jNlc5M0lZQ0NlU2tlNW1FVFp3cDdrdUVh?=
 =?utf-8?B?RWlSZ1JXM09sQ0ljL21KSHY3OVlPcHl4K1RrWHVCNjhLS0x6WlRHZUY4b081?=
 =?utf-8?B?ZFZRZXJKYkZFMXNwcUh5S3JBOEo4NVdyNUZ6ZHpJVlVIeGtZanNZVnlhdlFp?=
 =?utf-8?B?NWs4LzRrQk55Vy9UVDhwQmFMeWQ3SUc5R0xBWUFwRk13VjhyejJ1NGx2WWtF?=
 =?utf-8?B?ZUx6YUgvVG9IdWk3ZXVOc2lGa0lPb05GWVE3UkxQMVR2cVFkV05JUlphaEtG?=
 =?utf-8?B?ZWs1clEyZFgvU012c01Ob3VUWE5OS2l5ZnMzK3F1VUNkaDhLWW1GUW9VWEQr?=
 =?utf-8?B?RjB4czVoc3I4NlpnR0toTVJVb2hnTHRIQlc5SzM5YnRaMGc5OUd0cDI1eTAr?=
 =?utf-8?B?NkpwQTBDU0hjK3d2M0lrUmpDaTZrQ1RJWGlYd0ZDc2tjNE8ycjFLY1lOYk5z?=
 =?utf-8?B?TVFtRG83T0crRGxiemVhMzdYcmNqQ1hwVk1DckNvMndubzFITWVTSHNpSzdq?=
 =?utf-8?B?OHdZTk5JcDZvY3dkUkJLK2FvRzRSWlhQRWxIL0JKTlJxTzEzWXE0MisrOHpB?=
 =?utf-8?B?UGpJbTFJRTdYVGFKZDUwSFZ0SlFmZzVibGFwbHVMRmNKdEprNnA5dmhJYUpv?=
 =?utf-8?B?SVBySS9nRC9PcFRmc2RDMWRMcktBaXFOSktaZGxVSGpsQUxtcjZsUGdpajVL?=
 =?utf-8?B?SUk1NTE4L0xZQUxlVkpNOE9UZ2dmajNrYkl1dEI3Sk1LYlFSMVBVOTlkamE4?=
 =?utf-8?B?bjFwVXFWN1Q4dWhpVGd0R1k4VnNEVmFrTDB4cUt6Vm9TWXpoQ1dBS0J4bE1s?=
 =?utf-8?B?ZXM1Y055ZzVoRzB1d3lQbUxHT3pRV0lJcUVFM25oRGhYYlV0T0RvdDFiZEN4?=
 =?utf-8?B?UnowN015cVNDdXdGRHEzOGpWYXVKc2Z0OHlkY216dm5NR2RkTWFnY3lCN1Bw?=
 =?utf-8?B?UjNBSEQ0NTkvL0hqdGUvT1k1ZFlQZjF1bmVHQlI2dFkwQ2I3ZjNoeHd5L0pr?=
 =?utf-8?B?em5zaXhVQ3RrM3R5MG9oSEpTWnNmRlc3aFJURmJZY2J3N3VCem9vZXp3aDlx?=
 =?utf-8?B?eG44ZTBUV1E4U2MrNHpFYlQ1TThMaEZSVkd2S1pOWmpCQUYrbFZCeDlJdTdv?=
 =?utf-8?B?aGdEZXlNUSsrSldQWUYvTURITnNTQ3MzUWFkT0xTYWFvQjZXWE1FRXJIR2Mx?=
 =?utf-8?B?MDFtakpnR29UMUpIcmY1MDdIQUZXUWsyUmYrYjV0Y2ZpUngvYUFYOWt4MmRG?=
 =?utf-8?B?RkRWRUZPYW1QL2ExRDBCVTBFdGpUcVoyTGFrTFpjUzBuS3QwZHlwUEN1UVJ0?=
 =?utf-8?B?MzJ2QU40YnZwUUhnOHFxa2N0aXZEY1VYZzVucG5UMDdaWm1JYzVoWlZqeXlF?=
 =?utf-8?B?RWhYY3RyaWQ4NlNsRGYzdGRnK29lUjlrcDB4WWd5aDgyNGg1dHcvL3ZibkUx?=
 =?utf-8?B?dUtCeWpMWG1xQzNhaytxUm1JWHNPREpkVlpxSGtvN2RpY3JlL0NVQ25odXRt?=
 =?utf-8?B?dnptZDEwWCtZRXU5SzZUTy9aMkpFN2cxZXA2a0VPUUZJM3p5OEVnZEh2MmFP?=
 =?utf-8?B?ZS8vZm5JSFZ2dVZjaTM5L3Z5SDhlS2dpWUJ3NnNoZmU0S2NhWlNrS055S0pO?=
 =?utf-8?B?WkFwSklnZWVXTWZVU1pibHZKc2xuSTJZRUtFUnlCYnorRXRmdkFSNDF4RkUz?=
 =?utf-8?B?M2g3L0Z0R2VOZ3VnalgySzVlU2FYbEd3NERtWFFXYkpqSEk2VFpNa09tK3c4?=
 =?utf-8?B?dG5INDhnOTJEdVpBRnpuMlBYemFIQXRGTjlRaWhTUFUzYmN0TVJUeXVUa2JT?=
 =?utf-8?B?MHdST0tPNUdnTkdmY3R6bFJRbjM4SzdmVEtyckduSFpwdGlFcEdtamhBRmNI?=
 =?utf-8?B?RUFQNjhyWms5SkZsOUkvaG1vQXQ3OEdqT3FMblRZS0ZOeXN3UjlvMmZuYlg2?=
 =?utf-8?B?WFZkNXp0aEhuSWIrUElOOWZkN1M4TFdIR1RCVHVoaVJrd1U4d3V6STg3OThD?=
 =?utf-8?B?c2FmZThuU2FEMkdMMk1NRG1NWGh3VXhpdThkOFRHQ25KdXlOQjBTNmQyTENh?=
 =?utf-8?Q?b7gz0wlpBlIGK5RaaRiDZG4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <ED3424DC1D3F3B429B7130381F314EB3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4366527-66b6-4219-6fd9-08dbc26df9f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2023 11:03:00.3841 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: erST1PvQtEatML6DdlxytV014rc4yj3KnwWHCEPI8wBQXLWzOgynm5yUV45jJFhVCSQvYuxYJpA+2+kMey5i6wEel112KutHpYfKhYZ5sYo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8257
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/fbc: Split plane rotation
 checks per-platform
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

T24gVGh1LCAyMDIzLTA5LTE0IGF0IDE0OjM4ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gQ2FydmUgdXAgcm90YXRpb25faXNfdmFsaWQoKSBpbnRvIHBlci1wbGF0Zm9ybSB2YXJp
YW50cyB0bw0KPiBtYWtlIGl0IGVhc2llciB0byBzZWUgd2hhdCBsaW1pdHMgYXJlIGFjdHVhbGx5
IGJlaW5nIGltcG9zZWQuDQo+IA0KPiBUT0RPOiBtYXliZSBnbyBmb3IgdmZ1bmNzIGxhdGVyDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5jIHwgMzAgKysrKysrKysrKysrKysrKysrKy0tLS0tDQo+IMKgMSBmaWxlIGNoYW5nZWQs
IDI0IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQoNClJldmlld2VkLWJ5OiBWaW5vZCBH
b3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IGluZGV4IDA1MmY5ZDhiNTNk
NC4uMWE2OTMxZTY2ZDVkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2ZiYy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMNCj4gQEAgLTkzNSwyMiArOTM1LDQwIEBAIHN0YXRpYyBib29sIHBpeGVsX2Zvcm1h
dF9pc192YWxpZChjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUNCj4gKnBsYW5lX3N0YXRl
KQ0KPiDCoMKgwqDCoMKgwqDCoMKgfQ0KPiDCoH0NCj4gwqANCj4gLXN0YXRpYyBib29sIHJvdGF0
aW9uX2lzX3ZhbGlkKGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUp
DQo+ICtzdGF0aWMgYm9vbCBpOHh4X2ZiY19yb3RhdGlvbl9pc192YWxpZChjb25zdCBzdHJ1Y3Qg
aW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQ0KPiArew0KPiArwqDCoMKgwqDCoMKgwqBy
ZXR1cm4gcGxhbmVfc3RhdGUtPmh3LnJvdGF0aW9uID09IERSTV9NT0RFX1JPVEFURV8wOw0KPiAr
fQ0KPiArDQo+ICtzdGF0aWMgYm9vbCBnNHhfZmJjX3JvdGF0aW9uX2lzX3ZhbGlkKGNvbnN0IHN0
cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpDQo+ICt7DQo+ICvCoMKgwqDCoMKg
wqDCoHJldHVybiB0cnVlOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgYm9vbCBza2xfZmJjX3JvdGF0
aW9uX2lzX3ZhbGlkKGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUp
DQo+IMKgew0KPiAtwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9
IHRvX2k5MTUocGxhbmVfc3RhdGUtPnVhcGkucGxhbmUtPmRldik7DQo+IMKgwqDCoMKgwqDCoMKg
wqBjb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9IHBsYW5lX3N0YXRlLT5ody5mYjsN
Cj4gwqDCoMKgwqDCoMKgwqDCoHVuc2lnbmVkIGludCByb3RhdGlvbiA9IHBsYW5lX3N0YXRlLT5o
dy5yb3RhdGlvbjsNCj4gwqANCj4gLcKgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGk5MTUp
ID49IDkgJiYgZmItPmZvcm1hdC0+Zm9ybWF0ID09IERSTV9GT1JNQVRfUkdCNTY1ICYmDQo+ICvC
oMKgwqDCoMKgwqDCoGlmIChmYi0+Zm9ybWF0LT5mb3JtYXQgPT0gRFJNX0ZPUk1BVF9SR0I1NjUg
JiYNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkcm1fcm90YXRpb25fOTBfb3JfMjcwKHJvdGF0
aW9uKSkNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7DQo+
IC3CoMKgwqDCoMKgwqDCoGVsc2UgaWYgKERJU1BMQVlfVkVSKGk5MTUpIDw9IDQgJiYgIUlTX0c0
WChpOTE1KSAmJg0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJvdGF0aW9uICE9
IERSTV9NT0RFX1JPVEFURV8wKQ0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0
dXJuIGZhbHNlOw0KPiDCoA0KPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHRydWU7DQo+IMKgfQ0K
PiDCoA0KPiArc3RhdGljIGJvb2wgcm90YXRpb25faXNfdmFsaWQoY29uc3Qgc3RydWN0IGludGVs
X3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkNCj4gK3sNCj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KHBsYW5lX3N0YXRlLT51YXBpLnBsYW5l
LT5kZXYpOw0KPiArDQo+ICvCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSA5
KQ0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHNrbF9mYmNfcm90YXRp
b25faXNfdmFsaWQocGxhbmVfc3RhdGUpOw0KPiArwqDCoMKgwqDCoMKgwqBlbHNlIGlmIChESVNQ
TEFZX1ZFUihpOTE1KSA+PSA1IHx8IElTX0c0WChpOTE1KSkNCj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHJldHVybiBnNHhfZmJjX3JvdGF0aW9uX2lzX3ZhbGlkKHBsYW5lX3N0YXRl
KTsNCj4gK8KgwqDCoMKgwqDCoMKgZWxzZQ0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcmV0dXJuIGk4eHhfZmJjX3JvdGF0aW9uX2lzX3ZhbGlkKHBsYW5lX3N0YXRlKTsNCj4gK30N
Cj4gKw0KPiDCoC8qDQo+IMKgICogRm9yIHNvbWUgcmVhc29uLCB0aGUgaGFyZHdhcmUgdHJhY2tp
bmcgc3RhcnRzIGxvb2tpbmcgYXQgd2hhdGV2ZXIgd2UNCj4gwqAgKiBwcm9ncmFtbWVkIGFzIHRo
ZSBkaXNwbGF5IHBsYW5lIGJhc2UgYWRkcmVzcyByZWdpc3Rlci4gSXQgZG9lcyBub3QgbG9vayBh
dA0KDQo=
