Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF29C4B6C0D
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 13:31:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D20510E149;
	Tue, 15 Feb 2022 12:31:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 045CE10E149
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 12:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644928293; x=1676464293;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=e+GC6oOYWlDnNRSD/r4Ps3lMWX4shpqlo2T4bR0vkLM=;
 b=Xf0edI8L5fwrHRkkc0j2EMdL7minSJVmNNh0RZ8tD3X/HVBTLch6F8hU
 Rp+HOkJk+ForwZP3rQ0vc7L2XM3RQveZ+MOWGpt2p1evLDl3zFBa//Ieh
 tWcsC09bABc53Zz1ifVYWBWlnRBf3y/0aIeOQvigcu3DZRZ1ijSSDYBox
 8lSqnatbrR2p//MjshXF/InHuLc0wQ/PB1tb+vKJEEh2pQ5jc8pVa9+1E
 wNIMZEqf863DI+WfmW3rQGF/caQjXIR6Zp55y0yOpCuqbRo8esS3cEDTi
 1PK4t0Ui9mfQwh6Gkf7L9gYMfdL5AhWDglErJlb+jzD+8zZQKepA1cWEO Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="313615721"
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="313615721"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 04:31:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="486150319"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 15 Feb 2022 04:31:33 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 15 Feb 2022 04:31:32 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 15 Feb 2022 04:31:32 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 15 Feb 2022 04:31:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZGt3KnJ9aYWsMYf4XIyq1woukKWW0eeE3lkluoZ8se34hKH9J8X8QglJGIJUe6S2nNR2JIGIJUnG33Mfc/LVoHnuKZbf0kVwwNtAAXjRO0vrzUqxf0pvhlm3DSGqyCrN+CYfK78dOqTZ5Z6zVIMf33RhOgUjA0Rva4xqdQp+mfc0valauXh0DLyK0O6q/U2ixx+GU78knCZxIjcLcIkXlD/VEymWMrcdPYDiXqqPbbtyzay+prE2cv5otHq+nTMwIkBLksOSgm8XcYSx0eKZoilnHe9U5Q7EWlCG+0RiVy1poIIUfnxkVgMiUsTaRBv50fhg5P/B0msuu36psGVokg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e+GC6oOYWlDnNRSD/r4Ps3lMWX4shpqlo2T4bR0vkLM=;
 b=Ht1W2XUQvt4HntgT21AYdmHRsJatALZOz0hdiDq6LBMBtUA4OXrPX58+N3HSwfQmwPpPFS/rw31KK6F8cJnTJr8OaPS2f1OAQUjaC62VirOF+QEci3NT7E7b8ncwGZ7iX9qZJ9DPojfKRw5ddFw6ZdKKen0QvGjEGEQqukElMGQgxQhKatXjhjKPX+H/ieI3X3iFXMT5Ljg/iM9I3Ls4W3NTZoeX3HAfg2b19rKFy4JTRkGwnpe+RDS5HYKCZn9ukAst1dP8s8J3lKX1FTBrM2D1+H6ezUf7yIjbsCLVJcDpI8dI4T68gpmx05dIp10b8kHeyLgU9pfC5OtxMR+Z1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 BYAPR11MB3463.namprd11.prod.outlook.com (2603:10b6:a03:1e::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4951.18; Tue, 15 Feb 2022 12:31:30 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::b4f9:69c4:33a4:aca2]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::b4f9:69c4:33a4:aca2%6]) with mapi id 15.20.4975.015; Tue, 15 Feb 2022
 12:31:30 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 2/2] drm/i915/display: Implement Wa_16013835468
Thread-Index: AQHYHq8boLGLYFU4EUizVbDbFyw8x6yUkouA
Date: Tue, 15 Feb 2022 12:31:30 +0000
Message-ID: <58719859135cac269040f5f1663127d239e6fe7d.camel@intel.com>
References: <20220210185223.95399-1-jose.souza@intel.com>
 <20220210185223.95399-2-jose.souza@intel.com>
In-Reply-To: <20220210185223.95399-2-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e1f507b5-4d90-45ec-8fbd-08d9f07f17e7
x-ms-traffictypediagnostic: BYAPR11MB3463:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB3463F71C854D6B16A1C631978A349@BYAPR11MB3463.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U3pZrdgaIksuiBcUlAG84HvXdYTfKe4A1vIBAr35oAbXQMuxbsfYOsd9QVULPhSOr9nhiYOltKYyVYhWUkcEKIYiZAwFWqIHmdFhvjYeDZg6rP81b5Mln8TmXgEc/AEyVroo9BSjs+yGiyqmPCR38Z3q+PkfSsoLnOBbY8xcVpGlVA2UA2/jUXlsxjd5wSyXYyJx2AW4kmLr4BZLullSjGa9Z7hSVOtD14cBMUid7PaBCUUa0Xb7RGgNhKFDv2UZCG0EhmlVhnuj/05gGTvamp8R6pgSQvwx3KUMV4M/EParcgPs1lYuDT473O7pjk4XxnMu4ibkhtBYMlt/VrSpU9iQyrKMXz+f3E8mN9mfbx0kg394zOe9N1s6hHMPneQxPZmsF+NaWyDG/AvcjtroSy3HUJk6j2eSr+Dl2rC9cChJtHZgi8Xq09Oz7KDlx+ggmLbT7M9sfBLgxFxIWZQPt7o+cxgbFtitF8WYuDMt7gf/OibPMRzN1fkXJPmrr0aA0sTDRQ3WzpvQfAE743JzsXuM8Tdhnf3a24jJ6xp+OdYY3xHwRaiEvNvn73kGixyfzJ3mWG2P+mNwezPxxdDRVQPpVvDrtlqbPgu5TDWrv1IVL2HnM0fdu6pVADg6HbXMTtUfq87KEfNczVKg/DxEJjCOwc6LV/Myk/AuW5DPBk9VqMf+fAKL7xJcwnjkC/scKA0XZ/Z/BCglGNLaXfprhw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66476007)(8936002)(38100700002)(8676002)(26005)(91956017)(76116006)(66556008)(66946007)(2906002)(83380400001)(36756003)(5660300002)(6486002)(508600001)(64756008)(66446008)(110136005)(2616005)(186003)(6506007)(82960400001)(6512007)(86362001)(122000001)(71200400001)(6636002)(66574015)(316002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SVJjTkxMamI1NmJsNTBsc3Z2YjdhajZHRDFqT3phcWpJUHFaWHRENHdwS2M0?=
 =?utf-8?B?bTVOVi9qNjlrczBsTkw2T0RscHZ0OFpWSnV3ME8rMU5FSFVoVnkvNUFJUHpE?=
 =?utf-8?B?S2RnZ0RoYnJDQkNyZUZFMnEwWFdwQkRtRzg3WUptUzkzSnNkbitQd28zbXBw?=
 =?utf-8?B?aDUzcjI1VDVkNm9DekN0QTVtNVIyWVRqQy9nNmlaL3AvNUR1bFZPYU5CVUli?=
 =?utf-8?B?eGRsTTJiZGlDWGx0bzBLcG9rUVpuL28zM2thSWY2OUJtVzhmSWlZUWgxVWwx?=
 =?utf-8?B?QU1aTklYbGZuNzJMT255RnBEb216dUYrZzNkRHRqS29CdGRkQW4xcmRZYkJQ?=
 =?utf-8?B?N2tob1hwRWRKUDM0RDFlK04wRTg5cHJUN3h3c1pUUTZldEdRbEdYWjNOQWdx?=
 =?utf-8?B?b3VsZTZyc05NL3JXR1VycVRPY3pXcTNKYis5RjBPQnI5Mlp2c2xFeGpselVm?=
 =?utf-8?B?ZnMyRnUvK011b1MwUkkvVmM3UnpQNjZ0ZXMzZnhzaTBpck1CSEdXa0J2dHJr?=
 =?utf-8?B?VVBkcnI0clBxZ2JKYTVjR1pTL3h3aHQwdDVYdzhWUGpMY2t3OENyK2haMmUy?=
 =?utf-8?B?UmFEY0NIU2pCWnd0OTZsbFA0SVJ0VThpcSsxV3AxUEZPOWdZU3pmWUp3alFB?=
 =?utf-8?B?SDRnV1JzdlVEYkpJOUxiZ2NZdWFHWEErdzNhcDc3NUdZZUxyU0pjL01LdmFE?=
 =?utf-8?B?d05oOUtldDRVeXRWbnNtcU1jd2dJU2NLc1NjdEZ4RmFUM0N0ZlVYTjIrU0gw?=
 =?utf-8?B?dno5RS9XMDM1eVk1amJvbGhubGlFbUE0cWhXMk5pNW0ySmgxM3FnaEZlNk9B?=
 =?utf-8?B?UlJrNVVJRGdHSGJzUTliZi82QkJMS01EZTVPZk15ekMzcWZneEhTNmlsMzRQ?=
 =?utf-8?B?UDFsY21oSG83TzdPVkJmVDlGbnUvdnpCWnZoNDB6US9ZT1ZWOVNLdnpjQWN2?=
 =?utf-8?B?YllEWHZNTFFhalJpRXkvZUdDZEhuY1dCM0IxSEk1ZUtZUEl4VkxJckZ3MElY?=
 =?utf-8?B?aEFxY0IxbS9MRzAxZ0ZNaTlmR1NmYWJyWC9zc1V2RE5DZTN5S3V4VGw0d2k5?=
 =?utf-8?B?NkdQa0J0cDNEa3l0bnNUZ2VNNW82Mlo0ZmNpQWoxSkJObDN0VEpDMytYSGNV?=
 =?utf-8?B?SXhtUWhOMi91VTdTTkJnK1Q3ZlkrWk40UWVlUUhLZW9QdlNOOWVpYjRuRVJk?=
 =?utf-8?B?WlFjOHhWdHgwVVMzLzVyektWQ1BXNEF0Ny93aWxITlU4MjRWY0pUaUpGLzZt?=
 =?utf-8?B?SlIvUXhTZWtMQmJkcjc3WXpiYmRjN2grWlNINFRSSEpyeGNRR3VuWUlzVjhT?=
 =?utf-8?B?ZmZma3QzVmhaN3JrMnlQdUR0L2hLYmdibTRSUHhVZEtiU2lzaGhQTWhUdW9k?=
 =?utf-8?B?K0UxVXBoSm9kempmZVQrWXdWMkdZZlJJQTFCV3FBYjBJSXh6ZWZUZ3E1U1BS?=
 =?utf-8?B?L3JETThjb09Sak1RUjJOaUozOTg1b3NZMkRucW9HKzM0ejdMRmpCMHBrYmRL?=
 =?utf-8?B?VG41V3M1Zjl5TDhFdlFFL1FLUXNhamtHNTBiNWpCeGNxM1lFSUdnb3dMM2F6?=
 =?utf-8?B?OEgxYjF1YW9YcXpmZUo0Tk5teXI5OEFWR3QzMTRWak91S2JpTUZsaWNoRHM1?=
 =?utf-8?B?NnBYNjU4OW1sdWV5bGNrei9OdHM2VkhETXZjYW9pMlBaTXE4YTF1MXl3amlk?=
 =?utf-8?B?V2NFOTQ4NU93K1VZQStNSE5Ka0p6NW9CQmFhRWhLbi9vdDMyTG04RHg3TVZp?=
 =?utf-8?B?bTZDVms3TmtYeisrb0YySU1BQlpnSEhFRi9JN1dGOXBEa3h2N09EdkpDNHRV?=
 =?utf-8?B?SlR2ajd1QzRlMTUwNXJuYXBWRnQ0L3JXNnRXcDFhUFZ4WGd6b1h5c0QyN3N0?=
 =?utf-8?B?NHd4ckpuZnNVSTJXYkpUa0lRK1BpWndpY1J2M2ZHb2tPS2VCajJnWm9ZN29X?=
 =?utf-8?B?Lzk2Zi9qa3Z5YlJySFBvNEtGTU1hbGMrcjc3WEFLZFhoSFNRdjNSdjE5QWRu?=
 =?utf-8?B?TGhLdVdOR1JHb3hMWFZFOFBLQk8zdFFET09MNWRnc3VJY3ZlaVhvUEZSbCtT?=
 =?utf-8?B?MUtSWHFXdUI0WCtMOWN5L21sUGlGR3d0SnVBMGdkVkU0Y01tUEpWdFlRRmtB?=
 =?utf-8?B?VExOZkZHYlhaekJoY1M1WFQvaGE4bTlqSGMyM21JTWkydUpaak0xT2toZlpY?=
 =?utf-8?B?M1Jld3J5R2RkeC9RTS9yYUJISnlhaHRmSEVEOHRQK0lYcTl2WWwzR1c5d2xX?=
 =?utf-8?Q?O7QpIolNjJSTqAmswhlK3MturamLWYE1MIUN2//hAc=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BE8327049B40184EA0D2F7137DD1760D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1f507b5-4d90-45ec-8fbd-08d9f07f17e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2022 12:31:30.0950 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wnntO21Sc7J0QANd1nRDFYTXpeEnbEWqdldzvQjr9Fj/LgQZfxegaRk67vlU1nQuHMXgdNhn+XYgJosSsSQ767hJkctwL5uUAyieCWFfxts=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3463
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Implement
 Wa_16013835468
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

T24gVGh1LCAyMDIyLTAyLTEwIGF0IDEwOjUyIC0wODAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBQU1IyIHdvcmthcm91bmQgcmVxdWlyZWQgd2hlbiBtb2RlIGhhcyBkZWxheWVk
IHZibGFuay4NCj4gDQo+IEJTcGVjOiA1Mjg5MA0KPiBCU3BlYzogNDk0MjENCj4gQ2M6IEpvdW5p
IEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gLS0tDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNDANCj4gKysrKysrKysr
KysrKysrKysrKysrKy0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAg
ICAgIHwgMTMgKysrKystLS0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgNDYgaW5zZXJ0aW9ucygrKSwg
NyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiBpbmRleCA3MmJkOGQzMjYxZTBjLi4yZTBiMDkyZjRiNmJlIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTEwNjMsNyArMTA2
MywyMyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfYWN0aXZhdGUoc3RydWN0IGludGVsX2RwDQo+
ICppbnRlbF9kcCkNCj4gIAlpbnRlbF9kcC0+cHNyLmFjdGl2ZSA9IHRydWU7DQo+ICB9DQo+ICAN
Cj4gLXN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfc291cmNlKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHApDQo+ICtzdGF0aWMgdTMyIHdhXzE2MDEzODM1NDY4X2JpdF9nZXQoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCkNCj4gK3sNCj4gKwlzd2l0Y2ggKGludGVsX2RwLT5wc3IucGlwZSkg
ew0KPiArCWNhc2UgUElQRV9BOg0KPiArCQlyZXR1cm4gTEFURU5DWV9SRVBPUlRJTkdfUkVNT1ZF
RF9QSVBFX0E7DQo+ICsJY2FzZSBQSVBFX0I6DQo+ICsJCXJldHVybiBMQVRFTkNZX1JFUE9SVElO
R19SRU1PVkVEX1BJUEVfQjsNCj4gKwljYXNlIFBJUEVfQzoNCj4gKwkJcmV0dXJuIExBVEVOQ1lf
UkVQT1JUSU5HX1JFTU9WRURfUElQRV9DOw0KPiArCWRlZmF1bHQ6DQo+ICsJCU1JU1NJTkdfQ0FT
RShpbnRlbF9kcC0+cHNyLnBpcGUpOw0KPiArCQlyZXR1cm4gMDsNCj4gKwl9DQo+ICt9DQo+ICsN
Cj4gK3N0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfc291cmNlKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHAsDQo+ICsJCQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpj
cnRjX3N0YXRlKQ0KPiAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiAgCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2Rl
ciA9IGludGVsX2RwLT5wc3IudHJhbnNjb2RlcjsNCj4gQEAgLTExMzMsNiArMTE0OSwyMCBAQCBz
dGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX3NvdXJjZShzdHJ1Y3QNCj4gaW50ZWxfZHAgKmlu
dGVsX2RwKQ0KPiAgCQlpZiAoSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpKQ0KPiAgCQkJaW50ZWxf
ZGVfcm13KGRldl9wcml2LCBDTEtHQVRFX0RJU19NSVNDLCAwLA0KPiAgCQkJCSAgICAgQ0xLR0FU
RV9ESVNfTUlTQ19ETUFTQ19HQVRJTkdfRElTKQ0KPiA7DQo+ICsNCj4gKwkJLyogV2FfMTYwMTM4
MzU0Njg6dGdsW2IwK10sIGRnMSAqLw0KPiArCQlpZiAoSVNfVEdMX0RJU1BMQVlfU1RFUChkZXZf
cHJpdiwgU1RFUF9CMCwNCj4gU1RFUF9GT1JFVkVSKSB8fA0KPiArCQkgICAgSVNfREcxKGRldl9w
cml2KSkgew0KPiArCQkJdTE2IHZ0b3RhbCwgdmJsYW5rOw0KPiArDQo+ICsJCQl2dG90YWwgPSBj
cnRjX3N0YXRlLQ0KPiA+dWFwaS5hZGp1c3RlZF9tb2RlLmNydGNfdnRvdGFsIC0NCj4gKwkJCQkg
Y3J0Y19zdGF0ZS0NCj4gPnVhcGkuYWRqdXN0ZWRfbW9kZS5jcnRjX3ZkaXNwbGF5Ow0KPiArCQkJ
dmJsYW5rID0gY3J0Y19zdGF0ZS0NCj4gPnVhcGkuYWRqdXN0ZWRfbW9kZS5jcnRjX3ZibGFua19l
bmQgLQ0KPiArCQkJCSBjcnRjX3N0YXRlLQ0KPiA+dWFwaS5hZGp1c3RlZF9tb2RlLmNydGNfdmJs
YW5rX3N0YXJ0Ow0KPiArCQkJaWYgKHZibGFuayA+IHZ0b3RhbCkNCg0KQ2FuIHlvdSBwbGVhc2Ug
ZXhwbGFpbiBob3cgdGhpcyBjYWxjdWxhdGlvbiBpbmRpY2F0ZXMgd2UgYXJlIHVzaW5nDQoiZGVs
YXllZCB2YmxhbmsiPw0KDQpPdGhlcndpc2UgcGF0Y2ggc2VlbXMgdG8gYmUgZG9pbmcgd2hhdCBp
cyB3cml0dGVuIGluIFdBIGRlc2NyaXB0aW9uLg0KDQo+ICsJCQkJaW50ZWxfZGVfcm13KGRldl9w
cml2LA0KPiBHRU44X0NISUNLRU5fRENQUl8xLCAwLA0KPiArCQkJCQkgICAgIHdhXzE2MDEzODM1
NDY4X2JpdF9nZXQoaW50DQo+IGVsX2RwKSk7DQo+ICsJCX0NCj4gIAl9DQo+ICB9DQo+ICANCj4g
QEAgLTExOTgsNyArMTIyOCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfbG9ja2Vk
KHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJaW50ZWxfd3JpdGVfZHBfdnNjX3Nk
cChlbmNvZGVyLCBjcnRjX3N0YXRlLCAmY3J0Y19zdGF0ZS0NCj4gPnBzcl92c2MpOw0KPiAgCWlu
dGVsX3NucHNfcGh5X3VwZGF0ZV9wc3JfcG93ZXJfc3RhdGUoZGV2X3ByaXYsIHBoeSwgdHJ1ZSk7
DQo+ICAJaW50ZWxfcHNyX2VuYWJsZV9zaW5rKGludGVsX2RwKTsNCj4gLQlpbnRlbF9wc3JfZW5h
YmxlX3NvdXJjZShpbnRlbF9kcCk7DQo+ICsJaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2UoaW50ZWxf
ZHAsIGNydGNfc3RhdGUpOw0KPiAgCWludGVsX2RwLT5wc3IuZW5hYmxlZCA9IHRydWU7DQo+ICAJ
aW50ZWxfZHAtPnBzci5wYXVzZWQgPSBmYWxzZTsNCj4gIA0KPiBAQCAtMTI5Nyw2ICsxMzI3LDEy
IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9kaXNhYmxlX2xvY2tlZChzdHJ1Y3QNCj4gaW50ZWxf
ZHAgKmludGVsX2RwKQ0KPiAgCQlpZiAoSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpKQ0KPiAgCQkJ
aW50ZWxfZGVfcm13KGRldl9wcml2LCBDTEtHQVRFX0RJU19NSVNDLA0KPiAgCQkJCSAgICAgQ0xL
R0FURV9ESVNfTUlTQ19ETUFTQ19HQVRJTkdfRElTLA0KPiAwKTsNCj4gKw0KPiArCQkvKiBXYV8x
NjAxMzgzNTQ2ODp0Z2xbYjArXSwgZGcxICovDQo+ICsJCWlmIChJU19UR0xfRElTUExBWV9TVEVQ
KGRldl9wcml2LCBTVEVQX0IwLA0KPiBTVEVQX0ZPUkVWRVIpIHx8DQo+ICsJCSAgICBJU19ERzEo
ZGV2X3ByaXYpKQ0KPiArCQkJaW50ZWxfZGVfcm13KGRldl9wcml2LCBHRU44X0NISUNLRU5fRENQ
Ul8xLA0KPiArCQkJCSAgICAgd2FfMTYwMTM4MzU0NjhfYml0X2dldChpbnRlbF9kcCksDQo+IDAp
Ow0KPiAgCX0NCj4gIA0KPiAgCWludGVsX3NucHNfcGh5X3VwZGF0ZV9wc3JfcG93ZXJfc3RhdGUo
ZGV2X3ByaXYsIHBoeSwgZmFsc2UpOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gaW5k
ZXggODdjOTIzMTRlZTI2OS4uMWNkNDA1NjQwMGI2MyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oDQo+IEBAIC02MDQwLDExICs2MDQwLDE0IEBADQo+ICAjZGVmaW5lIEhTV19OREVfUlNU
V1JOX09QVAlfTU1JTygweDQ2NDA4KQ0KPiAgI2RlZmluZSAgUkVTRVRfUENIX0hBTkRTSEFLRV9F
TkFCTEUJKDEgPDwgNCkNCj4gIA0KPiAtI2RlZmluZSBHRU44X0NISUNLRU5fRENQUl8xCQlfTU1J
TygweDQ2NDMwKQ0KPiAtI2RlZmluZSAgIFNLTF9TRUxFQ1RfQUxURVJOQVRFX0RDX0VYSVQJUkVH
X0JJVCgzMCkNCj4gLSNkZWZpbmUgICBJQ0xfREVMQVlfUE1SU1AJCVJFR19CSVQoMjIpDQo+IC0j
ZGVmaW5lICAgRElTQUJMRV9GTFJfU1JDCQlSRUdfQklUKDE1KQ0KPiAtI2RlZmluZSAgIE1BU0tf
V0FLRU1FTQkJCVJFR19CSVQoMTMpDQo+ICsjZGVmaW5lIEdFTjhfQ0hJQ0tFTl9EQ1BSXzEJCQlf
TU1JTygweDQ2NDMwKQ0KPiArI2RlZmluZSAgIFNLTF9TRUxFQ1RfQUxURVJOQVRFX0RDX0VYSVQJ
CVJFR19CSVQoMzApDQo+ICsjZGVmaW5lICAgTEFURU5DWV9SRVBPUlRJTkdfUkVNT1ZFRF9QSVBF
X0MJUkVHX0JJVCgyNSkNCj4gKyNkZWZpbmUgICBMQVRFTkNZX1JFUE9SVElOR19SRU1PVkVEX1BJ
UEVfQglSRUdfQklUKDI0KQ0KPiArI2RlZmluZSAgIExBVEVOQ1lfUkVQT1JUSU5HX1JFTU9WRURf
UElQRV9BCVJFR19CSVQoMjMpDQo+ICsjZGVmaW5lICAgSUNMX0RFTEFZX1BNUlNQCQkJUkVHX0JJ
VCgyMikNCj4gKyNkZWZpbmUgICBESVNBQkxFX0ZMUl9TUkMJCQlSRUdfQklUKDE1KQ0KPiArI2Rl
ZmluZSAgIE1BU0tfV0FLRU1FTQkJCQlSRUdfQklUKDEzKQ0KPiAgDQo+ICAjZGVmaW5lIEdFTjEx
X0NISUNLRU5fRENQUl8yCQkJX01NSU8oMHg0NjQzNCkNCj4gICNkZWZpbmUgICBEQ1BSX01BU0tf
TUFYTEFURU5DWV9NRU1VUF9DTFIJUkVHX0JJVCgyNykNCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRl
cg0K
