Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFFB105745
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 17:42:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0B656E17E;
	Thu, 21 Nov 2019 16:42:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20D276F4AB;
 Thu, 21 Nov 2019 16:42:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 08:42:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,226,1571727600"; d="scan'208";a="210149458"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga006.jf.intel.com with ESMTP; 21 Nov 2019 08:42:11 -0800
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 21 Nov 2019 08:42:11 -0800
Received: from fmsmsx108.amr.corp.intel.com ([169.254.9.125]) by
 fmsmsx111.amr.corp.intel.com ([169.254.12.3]) with mapi id 14.03.0439.000;
 Thu, 21 Nov 2019 08:42:10 -0800
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Gerd Hoffmann <kraxel@redhat.com>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm: share address space for dma bufs
Thread-Index: AQHVoFffWkbpRpo5Ikuua9epARCVh6eV05dw
Date: Thu, 21 Nov 2019 16:42:10 +0000
Message-ID: <14063C7AD467DE4B82DEDB5C278E8663D9C8F533@FMSMSX108.amr.corp.intel.com>
References: <20191121103807.18424-1-kraxel@redhat.com>
 <20191121103807.18424-3-kraxel@redhat.com>
In-Reply-To: <20191121103807.18424-3-kraxel@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiM2U2OTVlNzctNDQ4Ni00N2VjLWIyOGYtOWZkODMyODU4Y2I2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiSHVySGZ2VFA0bHV6c1A5WVExNXRNYzBXZlFiNCtHdGdUZllXZEt3bG91aVwvMnU0MXpCTG5zc2VzazdyZDIxVnoifQ==
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm: share address space for dma bufs
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: David Airlie <airlied@linux.ie>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBHZXJkDQo+SG9mZm1h
bm4NCj5TZW50OiBUaHVyc2RheSwgTm92ZW1iZXIgMjEsIDIwMTkgNTozOCBBTQ0KPlRvOiBkcmkt
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+Q2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBs
aW51eC5pZT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IG9wZW4gbGlzdA0KPjxs
aW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnPjsgTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJu
ZWwub3JnPjsgR2VyZA0KPkhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4NCj5TdWJqZWN0OiBb
SW50ZWwtZ2Z4XSBbUEFUQ0ggMi8yXSBkcm06IHNoYXJlIGFkZHJlc3Mgc3BhY2UgZm9yIGRtYSBi
dWZzDQo+DQo+VXNlIHRoZSBzaGFyZWQgYWRkcmVzcyBzcGFjZSBvZiB0aGUgZHJtIGRldmljZSAo
c2VlIGRybV9vcGVuKCkgaW4NCj5kcm1fZmlsZS5jKSBmb3IgZG1hLWJ1ZnMgdG9vLiAgVGhhdCBy
ZW1vdmVzIGEgZGlmZmVyZW5jZSBiZXR3ZWVtIGRybQ0KPmRldmljZSBtbWFwIHZtYXMgYW5kIGRt
YS1idWYgbW1hcCB2bWFzIGFuZCBmaXhlcyBjb3JuZXIgY2FzZXMgbGlrZQ0KPnVubWFwcyBub3Qg
d29ya2luZyBwcm9wZXJseS4NCg0KSGkgR2VyZCwNCg0KSnVzdCB3YW50IHRvIG1ha2Ugc3VyZSBJ
IHVuZGVyc3RhbmQgdGhpcy4uLg0KDQpTbyB1bm1hcHMgd2lsbCBub3Qgd29yayBjb3JyZWN0bHkg
Zm9yIG1hcHBpbmdzIHdoZW4gYSBkcml2ZXIgZG9lcyBhDQpkcm1fdm1hX25vZGVfdW5hbXAoKT8N
Cg0KSS5lLiB0aGUgZG1hYnVmIG1hcHBpbmdzIHdpbGwgbm90IGdldCBjbGVhbmVkIHVwIGNvcnJl
Y3RseT8NCg0KVGhpcyBpcyBhIGRheSBvbmUgYnVnPw0KDQpUaGFua3MsDQoNCk1pa2UNCg0KDQo+
U2lnbmVkLW9mZi1ieTogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+DQo+LS0tDQo+
IGRyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYyB8IDQgKysrLQ0KPiAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+DQo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9kcm1fcHJpbWUuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYw0KPmluZGV4
IGE5NjMzYmQyNDFiYi4uYzNmYzM0MTQ1M2MwIDEwMDY0NA0KPi0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9kcm1fcHJpbWUuYw0KPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYw0KPkBAIC0y
NDAsNiArMjQwLDcgQEAgdm9pZCBkcm1fcHJpbWVfZGVzdHJveV9maWxlX3ByaXZhdGUoc3RydWN0
DQo+ZHJtX3ByaW1lX2ZpbGVfcHJpdmF0ZSAqcHJpbWVfZnByaXYpDQo+IHN0cnVjdCBkbWFfYnVm
ICpkcm1fZ2VtX2RtYWJ1Zl9leHBvcnQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwNCj4gCQkJCSAg
ICAgIHN0cnVjdCBkbWFfYnVmX2V4cG9ydF9pbmZvICpleHBfaW5mbykNCj4gew0KPisJc3RydWN0
IGRybV9nZW1fb2JqZWN0ICpvYmogPSBleHBfaW5mby0+cHJpdjsNCj4gCXN0cnVjdCBkbWFfYnVm
ICpkbWFfYnVmOw0KPg0KPiAJZG1hX2J1ZiA9IGRtYV9idWZfZXhwb3J0KGV4cF9pbmZvKTsNCj5A
QCAtMjQ3LDcgKzI0OCw4IEBAIHN0cnVjdCBkbWFfYnVmICpkcm1fZ2VtX2RtYWJ1Zl9leHBvcnQo
c3RydWN0DQo+ZHJtX2RldmljZSAqZGV2LA0KPiAJCXJldHVybiBkbWFfYnVmOw0KPg0KPiAJZHJt
X2Rldl9nZXQoZGV2KTsNCj4tCWRybV9nZW1fb2JqZWN0X2dldChleHBfaW5mby0+cHJpdik7DQo+
Kwlkcm1fZ2VtX29iamVjdF9nZXQob2JqKTsNCj4rCWRtYV9idWYtPmZpbGUtPmZfbWFwcGluZyA9
IG9iai0+ZGV2LT5hbm9uX2lub2RlLT5pX21hcHBpbmc7DQo+DQo+IAlyZXR1cm4gZG1hX2J1ZjsN
Cj4gfQ0KPi0tDQo+Mi4xOC4xDQo+DQo+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18NCj5JbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+SW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KPmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
