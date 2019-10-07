Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CF3CE492
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 16:02:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACC436E044;
	Mon,  7 Oct 2019 14:02:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94EC36E044
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 14:02:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 07:02:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,268,1566889200"; d="scan'208";a="344742514"
Received: from dshrivas-mobl3.ger.corp.intel.com (HELO [10.252.37.226])
 ([10.252.37.226])
 by orsmga004.jf.intel.com with ESMTP; 07 Oct 2019 07:02:45 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191007133801.24934-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <45db03a2-fa06-67c9-3d18-39ee49bd9a46@intel.com>
Date: Mon, 7 Oct 2019 17:02:52 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191007133801.24934-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Set the exclusive stream
 under perf->lock
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDcvMTAvMjAxOSAxNjozOCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFRoZSBCS0wgc3RydWN0
X211dGV4IGlzIG5vIG1vcmUsIHRoZSBvbmx5IHNlcmlhbGlzYXRpb24gd2UgcmVxdWlyZWQgZm9y
Cj4gc2V0dGluZyB0aGUgZXhjbHVzaXZlIHN0cmVhbSBpcyBhbHJlYWR5IG1hbmFnZWQgYnkgY2Ut
PnBpbl9tdXRleCBpbgo+IGdlbjhfY29uZmlndXJlX2FsbF9jb250ZXh0cygpLiBBcyBzdWNoLCB3
ZSBjYW4gbWFuaXB1bGF0ZQo+IGk5MTVfcGVyZi5leGNsdXNpdmVfc3RyZWFtIHVuZGVybmVhdGgg
b3VyIG93biBwZXJmLT5sb2NrLgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFVtZXNoIE5lcmxpZ2UgUmFtYXBwYSA8dW1lc2gu
bmVybGlnZS5yYW1hcHBhQGludGVsLmNvbT4KPiBDYzogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25l
bC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgoKTG9uZyB0aW1lIGNvbWluZzoKCgpSZXZpZXdlZC1i
eTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgoKPiAt
LS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jIHwgMTIgKysrKysrLS0tLS0t
Cj4gICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPiBpbmRleCBlZjVlNDhlYmFhYTYuLjQ1MTY3YzU5NTMy
MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4gQEAgLTEzNDMsMTAgKzEzNDMsMTAg
QEAgc3RhdGljIHZvaWQgaTkxNV9vYV9zdHJlYW1fZGVzdHJveShzdHJ1Y3QgaTkxNV9wZXJmX3N0
cmVhbSAqc3RyZWFtKQo+ICAgCSAqIFVuc2V0IGV4Y2x1c2l2ZV9zdHJlYW0gZmlyc3QsIGl0IHdp
bGwgYmUgY2hlY2tlZCB3aGlsZSBkaXNhYmxpbmcKPiAgIAkgKiB0aGUgbWV0cmljIHNldCBvbiBn
ZW44Ky4KPiAgIAkgKi8KPiAtCW11dGV4X2xvY2soJnBlcmYtPmk5MTUtPmRybS5zdHJ1Y3RfbXV0
ZXgpOwo+ICsJbXV0ZXhfbG9jaygmcGVyZi0+bG9jayk7Cj4gICAJcGVyZi0+ZXhjbHVzaXZlX3N0
cmVhbSA9IE5VTEw7Cj4gICAJcGVyZi0+b3BzLmRpc2FibGVfbWV0cmljX3NldChzdHJlYW0pOwo+
IC0JbXV0ZXhfdW5sb2NrKCZwZXJmLT5pOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiArCW11dGV4
X3VubG9jaygmcGVyZi0+bG9jayk7Cj4gICAKPiAgIAlmcmVlX29hX2J1ZmZlcihzdHJlYW0pOwo+
ICAgCj4gQEAgLTE4NTMsNyArMTg1Myw3IEBAIHN0YXRpYyBpbnQgZ2VuOF9jb25maWd1cmVfYWxs
X2NvbnRleHRzKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sCj4gICAJZm9yIChpID0g
MjsgaSA8IEFSUkFZX1NJWkUocmVncyk7IGkrKykKPiAgIAkJcmVnc1tpXS52YWx1ZSA9IG9hX2Nv
bmZpZ19mbGV4X3JlZyhvYV9jb25maWcsIHJlZ3NbaV0ucmVnKTsKPiAgIAo+IC0JbG9ja2RlcF9h
c3NlcnRfaGVsZCgmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gKwlsb2NrZGVwX2Fzc2VydF9o
ZWxkKCZzdHJlYW0tPnBlcmYtPmxvY2spOwo+ICAgCj4gICAJLyoKPiAgIAkgKiBUaGUgT0EgcmVn
aXN0ZXIgY29uZmlnIGlzIHNldHVwIHRocm91Z2ggdGhlIGNvbnRleHQgaW1hZ2UuIFRoaXMgaW1h
Z2UKPiBAQCAtMjIyMCw3ICsyMjIwLDcgQEAgc3RhdGljIGludCBpOTE1X29hX3N0cmVhbV9pbml0
KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sCj4gICAJaWYgKHJldCkKPiAgIAkJZ290
byBlcnJfb2FfYnVmX2FsbG9jOwo+ICAgCj4gLQlyZXQgPSBpOTE1X211dGV4X2xvY2tfaW50ZXJy
dXB0aWJsZSgmc3RyZWFtLT5ndC0+aTkxNS0+ZHJtKTsKPiArCXJldCA9IG11dGV4X2xvY2tfaW50
ZXJydXB0aWJsZSgmcGVyZi0+bG9jayk7Cj4gICAJaWYgKHJldCkKPiAgIAkJZ290byBlcnJfbG9j
azsKPiAgIAo+IEBAIC0yMjMzLDcgKzIyMzMsNyBAQCBzdGF0aWMgaW50IGk5MTVfb2Ffc3RyZWFt
X2luaXQoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSwKPiAgIAkJZ290byBlcnJfZW5h
YmxlOwo+ICAgCX0KPiAgIAo+IC0JbXV0ZXhfdW5sb2NrKCZzdHJlYW0tPmd0LT5pOTE1LT5kcm0u
c3RydWN0X211dGV4KTsKPiArCW11dGV4X3VubG9jaygmcGVyZi0+bG9jayk7Cj4gICAKPiAgIAlo
cnRpbWVyX2luaXQoJnN0cmVhbS0+cG9sbF9jaGVja190aW1lciwKPiAgIAkJICAgICBDTE9DS19N
T05PVE9OSUMsIEhSVElNRVJfTU9ERV9SRUwpOwo+IEBAIC0yMjQ2LDcgKzIyNDYsNyBAQCBzdGF0
aWMgaW50IGk5MTVfb2Ffc3RyZWFtX2luaXQoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVh
bSwKPiAgIGVycl9lbmFibGU6Cj4gICAJcGVyZi0+ZXhjbHVzaXZlX3N0cmVhbSA9IE5VTEw7Cj4g
ICAJcGVyZi0+b3BzLmRpc2FibGVfbWV0cmljX3NldChzdHJlYW0pOwo+IC0JbXV0ZXhfdW5sb2Nr
KCZzdHJlYW0tPmd0LT5pOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiArCW11dGV4X3VubG9jaygm
cGVyZi0+bG9jayk7Cj4gICAKPiAgIGVycl9sb2NrOgo+ICAgCWZyZWVfb2FfYnVmZmVyKHN0cmVh
bSk7CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
