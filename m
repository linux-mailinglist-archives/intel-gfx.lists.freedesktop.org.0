Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 648CFBB1B2
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 11:52:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96BA06E33C;
	Mon, 23 Sep 2019 09:52:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9558F6E33C
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 09:52:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 02:52:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="200479855"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 23 Sep 2019 02:52:38 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id D36E05C1E6A; Mon, 23 Sep 2019 12:52:14 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190923080038.30729-1-chris@chris-wilson.co.uk>
References: <20190923080038.30729-1-chris@chris-wilson.co.uk>
Date: Mon, 23 Sep 2019 12:52:14 +0300
Message-ID: <87r247z6ep.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Relax assertion for a
 pinned context image on reset
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gQSBncHUg
aGFuZyBjYW4gb2NjdXIgYXQgYW55IHRpbWUsIGdpdmVuIGEgc3VmZmljaWVudGx5IGFuZ3J5IGdw
dS4gQW4KPiBleGFtcGxlIGlzIHdoZW4gaXQgZm9yZ2V0cyB0byBwZXJmb3JtIGEgY29udGV4dC1z
d2l0Y2ggYXQgdGhlIGVuZCBvZiBhCj4gcmVxdWVzdCwgbGVhdmluZyB1cyB3aXRoIGEgaGFuZ2lu
ZyBHUFUgb24gYSBjb21wbGV0ZWQgcmVxdWVzdC4gSGVyZSwgd2UKPiBtYXkgcmV0aXJlIHRoZSBy
ZXF1ZXN0LCBvbmx5IGxlYXZpbmcgaXRzIGNvbnRleHQgYWxpdmUgdmlhIHRoZSBhY3RpdmUKPiBi
YXJyaWVyLiBXaGVuIHdlIHJlc2V0IHRoZSBHUFUgb24gYSBjb21wbGV0ZWQgcmVxdWVzdCwgd2Ug
ZG8gbm90IG1vZGlmeQo+IGl0cyBjb250ZXh0IGltYWdlIChqdXN0IHVwZGF0aW5nIHRoZSByaW5n
IHN0YXRlKSBhbmQgY2FuIHNhZmVseSBkZWZlcgo+IHRoZSBhc3NlcnRpb24gdGhhdCB3ZSBoYXZl
IHRoZSBpbWFnZSBwaW5uZWQgYW5kIHJlYWR5IHRvIG1vZGlmeS4KPgo+IEJ1Z3ppbGxhOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE2MzkKPiBGaXhlczog
ZGZmYThmZWIzMDg0ICgiZHJtL2k5MTUvcGVyZjogQXNzZXJ0IGxvY2tpbmcgZm9yIGk5MTVfaW5p
dF9vYV9wZXJmX3N0YXRlKCkiKQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxp
bnV4LmludGVsLmNvbT4KClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxh
QGxpbnV4LmludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gaW5kZXggMWEyYjcxMTU3
ZjA4Li44MGRlZDk5YmNiMTUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbHJjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+
IEBAIC0yMzgzLDcgKzIzODMsNiBAQCBzdGF0aWMgdm9pZCBfX2V4ZWNsaXN0c19yZXNldChzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIGJvb2wgc3RhbGxlZCkKPiAgCUdFTV9CVUdfT04o
IWk5MTVfdm1hX2lzX3Bpbm5lZChjZS0+c3RhdGUpKTsKPiAgCj4gIAkvKiBQcm9jbGFpbSB3ZSBo
YXZlIGV4Y2x1c2l2ZSBhY2Nlc3MgdG8gdGhlIGNvbnRleHQgaW1hZ2UhICovCj4gLQlHRU1fQlVH
X09OKCFpbnRlbF9jb250ZXh0X2lzX3Bpbm5lZChjZSkpOwo+ICAJbXV0ZXhfYWNxdWlyZSgmY2Ut
PnBpbl9tdXRleC5kZXBfbWFwLCAyLCAwLCBfVEhJU19JUF8pOwo+ICAKPiAgCXJxID0gYWN0aXZl
X3JlcXVlc3QocnEpOwo+IEBAIC0yNDMyLDYgKzI0MzEsNyBAQCBzdGF0aWMgdm9pZCBfX2V4ZWNs
aXN0c19yZXNldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIGJvb2wgc3RhbGxlZCkK
PiAgCSAqIGZ1dHVyZSByZXF1ZXN0IHdpbGwgYmUgYWZ0ZXIgdXNlcnNwYWNlIGhhcyBoYWQgdGhl
IG9wcG9ydHVuaXR5Cj4gIAkgKiB0byByZWNyZWF0ZSBpdHMgb3duIHN0YXRlLgo+ICAJICovCj4g
KwlHRU1fQlVHX09OKCFpbnRlbF9jb250ZXh0X2lzX3Bpbm5lZChjZSkpOwo+ICAJcmVncyA9IGNl
LT5scmNfcmVnX3N0YXRlOwo+ICAJaWYgKGVuZ2luZS0+cGlubmVkX2RlZmF1bHRfc3RhdGUpIHsK
PiAgCQltZW1jcHkocmVncywgLyogc2tpcCByZXN0b3JpbmcgdGhlIHZhbmlsbGEgUFBIV1NQICov
Cj4gLS0gCj4gMi4yMy4wCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
