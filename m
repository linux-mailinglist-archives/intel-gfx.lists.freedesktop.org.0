Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E396F9504
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 17:02:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CFBB6E128;
	Tue, 12 Nov 2019 16:01:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E6086E128
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 16:01:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 08:01:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,297,1569308400"; d="scan'208";a="229436156"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 12 Nov 2019 08:01:57 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 9B0C55C1E02; Tue, 12 Nov 2019 18:01:46 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191112150051.1603-1-chris@chris-wilson.co.uk>
References: <20191112090638.31692-1-chris@chris-wilson.co.uk>
 <20191112150051.1603-1-chris@chris-wilson.co.uk>
Date: Tue, 12 Nov 2019 18:01:46 +0200
Message-ID: <87k1853wyd.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Flush context free work on
 cleanup
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gVGhyb3cg
aW4gYSBmbHVzaF93b3JrKCkgdG8gc3BlY2lmaWNhbGx5IGZsdXNoIHRoZSBjb250ZXh0IGNsZWFu
dXAgd29yawo+IGJlZm9yZSB0aGUgbW9kdWxlIGlzIHVubG9hZGVkLgo+Cj4gQnVnemlsbGE6IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjI0OAo+IEZpeGVz
OiBhNGU3Y2NkYWMzOGUgKCJkcm0vaTkxNTogTW92ZSBjb250ZXh0IG1hbmFnZW1lbnQgdW5kZXIg
R0VNIikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNv
bT4KPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CgpS
ZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+
Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIHwg
MSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4gaW5kZXggNzJkMzg5YWZhMjhhLi4xN2Yz
OTU2NzJlNWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2NvbnRleHQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250
ZXh0LmMKPiBAQCAtNzc2LDYgKzc3Niw3IEBAIGludCBpOTE1X2dlbV9pbml0X2NvbnRleHRzKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICB2b2lkIGk5MTVfZ2VtX2RyaXZlcl9yZWxl
YXNlX19jb250ZXh0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAgewo+ICAJZGVz
dHJveV9rZXJuZWxfY29udGV4dCgmaTkxNS0+a2VybmVsX2NvbnRleHQpOwo+ICsJZmx1c2hfd29y
aygmaTkxNS0+Z2VtLmNvbnRleHRzLmZyZWVfd29yayk7Cj4gIH0KPiAgCj4gIHN0YXRpYyBpbnQg
Y29udGV4dF9pZHJfY2xlYW51cChpbnQgaWQsIHZvaWQgKnAsIHZvaWQgKmRhdGEpCj4gLS0gCj4g
Mi4yNC4wCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
