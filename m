Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8033153FC7E
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 12:55:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD89811AAD4;
	Tue,  7 Jun 2022 10:55:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A7C3112747
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jun 2022 10:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654599341; x=1686135341;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wujO4WO1+Y//1i22w262hSZctQf62b6p40SlgQuyYDE=;
 b=NTvWOn+Hdo50bBQJeSaOTvyH0GueiCdPvMib52pMx8v7xqkiywfJcG+l
 hkmzTY9uKN+u+V79u1udXJYvzGc/dOs5uUxeZv2iEFTaQ0u+mo9huND+F
 wfe5Oh1npyQ4BR8NdMex+5nTXTXPbrefpUcXeKYWdVhzKAvbvGgAMcrnZ
 XupNldzDq+y7Lx34swsbFu1F6SCjVKEg4V4e1k6YtGmiTGSyyZ2e2IKf3
 9BumT/lKlkJd/TLhLnN+Xy6SUK6HoduBjxBhZcy4ith8YEgmqITbvqMEf
 m+i6c6+456vCVjqrLlqVY1vYj5eBuEgCEhpfZodnBDf40XY8WfCeH/pGH g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10370"; a="274253709"
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600"; d="scan'208";a="274253709"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 03:55:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600"; d="scan'208";a="826306684"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga006.fm.intel.com with ESMTP; 07 Jun 2022 03:55:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 7 Jun 2022 03:55:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 7 Jun 2022 03:55:39 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2308.027;
 Tue, 7 Jun 2022 03:55:39 -0700
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: Luca Coelho <luca@coelho.fi>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dgfx: Disable d3cold Correctly
Thread-Index: AQHYeaC9WiVmbskgUEqcLzfRrS6PI61C49WA//+QJrA=
Date: Tue, 7 Jun 2022 10:55:39 +0000
Message-ID: <e7b0bd1acd484312a72935100b7d8e68@intel.com>
References: <20220606122656.31479-1-anshuman.gupta@intel.com>
 <345f478e6917f39e68cce331250cf1003e73142d.camel@coelho.fi>
In-Reply-To: <345f478e6917f39e68cce331250cf1003e73142d.camel@coelho.fi>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dgfx: Disable d3cold Correctly
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
Cc: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTHVjYSBDb2VsaG8gPGx1
Y2FAY29lbGhvLmZpPg0KPiBTZW50OiBNb25kYXksIEp1bmUgNiwgMjAyMiA3OjUzIFBNDQo+IFRv
OiBHdXB0YSwgQW5zaHVtYW4gPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT47IGludGVsLQ0KPiBn
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBWaXZpLCBSb2RyaWdvIDxyb2RyaWdvLnZp
dmlAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkx
NS9kZ2Z4OiBEaXNhYmxlIGQzY29sZCBDb3JyZWN0bHkNCj4gDQo+IE9uIE1vbiwgMjAyMi0wNi0w
NiBhdCAxNzo1NiArMDUzMCwgQW5zaHVtYW4gR3VwdGEgd3JvdGU6DQo+ID4gQ3VycmVudGx5IGk5
MTUgZGlzYWJsZXMgZDNjb2xkIGZvciBpOTE1IHBjaSBkZXYuDQo+ID4gVGhpcyBibG9ja3MgRDMg
Zm9yIGk5MTUgZ2Z4IHBjaSB1cHN0cmVhbSBicmlkZ2UgKFZTUCkuDQo+ID4gTGV0J3MgZGlzYWJs
ZSBkM2NvbGQgYXQgZ2Z4IHJvb3QgcG9ydCB0byBtYWtlIHN1cmUgdGhhdA0KPiA+IGk5MTUgZ2Z4
IFZTUCBjYW4gdHJhbnNpdGlvbiB0byBEMyB0byBzYXZlIHNvbWUgcG93ZXIuDQo+IA0KPiAobml0
KSBJdCdzIGJldHRlciB0byB1c2UgaW1wZXJhdGl2ZSBpbiB0aGUgY29tbWl0IG1lc3NhZ2UsIHNv
ICJEaXNhYmxlIGQzY29sZCBhdA0KPiBnZnggcm9vdCBwb3J0Li4uIiB3b3VsZCBiZSBlYXNpZXIg
dG8gcmVhZC4NClRoYW5rcyBmb3IgY29tbWVudCwgaSB3aWxsIGZpeCB0aGlzLA0KPiANCj4gQWxz
bywgZnJvbSB0aGUgY29kZSwgaXQncyBjbGVhciB0aGF0IHlvdSdyZSBkaXNhYmxpbmcgZDNjb2xk
IGluIHRoZSByb290IG5vdywNCj4gaW5zdGVhZCBvZiBpbiB0aGUgcGRldiBpdHNlbGYuICBCdXQg
eW91IGRvbid0IGV4cGxhaW4gd2h5IHlvdSBtb3ZlZCB0aGUNCj4gZW5hYmxpbmcvZGlzYWJsaW5n
IHRvIGh3X3Byb2JlIGFuZCByZW1vdmVfaHcgZnJvbSB0aGUgYWN0dWFsIFBNIGNhbGxzLi4uDQpX
ZSBkb24ndCBuZWVkIHRvIGRpc2FibGUvZW5hYmxlIHJvb3QgcG9ydCBkM2NvbGQgbXVsdGlwbGUg
dGltZXMgaW4gUE0gc3VzcGVuZCBoYW5kbGVycywgZG9pbmcgdGhpcw0KaW4gcHJvYmUgc2hvdWxk
IGJlIHN1ZmZpY2UuDQoNClJlZ2FyZHMsDQpBbnNodW1hbiBHdXB0YS4NCj4gDQo+IC0tDQo+IENo
ZWVycywNCj4gTHVjYS4NCg==
