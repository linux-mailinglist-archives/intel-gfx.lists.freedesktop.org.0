Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C084C1A42
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 18:53:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8335210E200;
	Wed, 23 Feb 2022 17:53:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ABAC10E474
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 17:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645638797; x=1677174797;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QaResm+cKtt2Hdn0fBtzyqDuDpG+q/RybsywgFJYiyw=;
 b=bC4P7G/eY7zyw5axXnGEBBshqqP5Sy8aZhPXs79Mu6JhM3SGkzdW0Uvq
 m4d954pr0qlg0PasF27+MXNqRaN2b9yzvfmiozWU20pq6LsJ+7Kx1yy2+
 g3DH8u82oyH2xSdTbR9re/TjlpXGIBBVerqZ3MKc1DNskVDjBPE/lZpZJ
 PRbayLw3PnzEAdp0QWCTAnWfzMFqC83kNV3OtOLioodalgspOfG54AJ7P
 5jnpzo2sMjC+z6UMN6XVa8+NcldJgk+5Az/jNuZ/SGfz2NMXAphDiZsN4
 6DmKRlX0ubczxo9UOIaIGG9yAYgwYYXT04FngzeXrCxeLWSp8mlLrTqJt w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="315266950"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="315266950"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 09:53:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="639404166"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga004.jf.intel.com with ESMTP; 23 Feb 2022 09:53:11 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 23 Feb 2022 09:53:11 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 23 Feb 2022 09:53:10 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2308.020;
 Wed, 23 Feb 2022 09:53:10 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/rps/tgl+: Remove RPS interrupt
 support
Thread-Index: AQHYJQ08SXHkzwD6p0mtnEqqKYJJJqyhcjZw
Date: Wed, 23 Feb 2022 17:53:10 +0000
Message-ID: <270050b550124a1a8fde2aa5cbdec5a5@intel.com>
References: <20220218210330.48653-1-jose.souza@intel.com>
In-Reply-To: <20220218210330.48653-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rps/tgl+: Remove RPS interrupt
 support
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3PDqQ0K
PiBSb2JlcnRvIGRlIFNvdXphDQo+IFNlbnQ6IEZyaWRheSwgRmVicnVhcnkgMTgsIDIwMjIgMTow
NCBQTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBb
SW50ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE1L3Jwcy90Z2wrOiBSZW1vdmUgUlBTIGludGVycnVw
dA0KPiBzdXBwb3J0DQo+IA0KPiBUR0wrIGFuZCBuZXdlciBwbGF0Zm9ybXMgZG9uJ3Qgc3VwcG9y
dCBSUFMgdXAgYW5kIGxvdyBpbnRlcnJ1cHRpb24NCj4gbGltaXRzLg0KPiBJdCBpcyBub3QgdXNl
ZCBmb3IgYnJvYWR3ZWxsIGFuZCBuZXdlciBwbGFmb3JtcyB0aGF0IHN1cHBvcnRzIGV4ZWNsaXN0
IGJ1dA0KPiBoZXJlIG1ha2luZyBzdXJlIHRoYXQgaXQgaXMgZXhwbGljaXQgbm90IHVzZWQgZXZl
biBpbiBkZWJ1ZyBzY2VuYXJpb3MuDQo+IA0KPiBCU3BlYzogMzMzMDENCj4gQlNwZWM6IDUyMDY5
DQo+IEJTcGVjOiA5NTIwDQo+IEhTRDogMTQwNTkxMTY0Nw0KPiBDYzogVmluYXkgQmVsZ2F1bWth
ciA8dmluYXkuYmVsZ2F1bWthckBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogQW51
c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcnBzLmMgfCAyICstDQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ycHMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3Jwcy5jDQo+IGluZGV4IGZkOTU0NDllZDQ2ZGEuLmM4MTI0MTAxYWFkYTIgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jwcy5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jwcy5jDQo+IEBAIC0xNDg2LDcgKzE0ODYs
NyBAQCB2b2lkIGludGVsX3Jwc19lbmFibGUoc3RydWN0IGludGVsX3JwcyAqcnBzKQ0KPiANCj4g
IAlpZiAoaGFzX2J1c3lfc3RhdHMocnBzKSkNCj4gIAkJaW50ZWxfcnBzX3NldF90aW1lcihycHMp
Ow0KPiAtCWVsc2UgaWYgKEdSQVBISUNTX1ZFUihpOTE1KSA+PSA2KQ0KPiArCWVsc2UgaWYgKEdS
QVBISUNTX1ZFUihpOTE1KSA+PSA2ICYmIEdSQVBISUNTX1ZFUihpOTE1KSA8PSAxMSkNCj4gIAkJ
aW50ZWxfcnBzX3NldF9pbnRlcnJ1cHRzKHJwcyk7DQo+ICAJZWxzZQ0KPiAgCQkvKiBJcm9ubGFr
ZSBjdXJyZW50bHkgdXNlcyBpbnRlbF9pcHMua28gKi8ge30NCj4gLS0NCj4gMi4zNS4xDQoNCg==
