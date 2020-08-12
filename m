Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AE4242FAD
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Aug 2020 21:53:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 286626E165;
	Wed, 12 Aug 2020 19:53:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C153C6E165
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Aug 2020 19:53:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id AC6B33F4B4;
 Wed, 12 Aug 2020 21:53:31 +0200 (CEST)
Authentication-Results: ste-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=az6Y3bYy; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -3.554
X-Spam-Level: 
X-Spam-Status: No, score=-3.554 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-1.455,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1W9ItwWjhRMX; Wed, 12 Aug 2020 21:53:30 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 95E723F491;
 Wed, 12 Aug 2020 21:53:28 +0200 (CEST)
Received: from localhost.localdomain (jfdmzpr03-ext.jf.intel.com
 [134.134.139.72])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 556E5360507;
 Wed, 12 Aug 2020 21:53:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1597262008; bh=u/uEDMqOfgdGHbGvMwPCDxZ98uwXZWm0M/Z+yJFWKR8=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=az6Y3bYy01WO7ay01X2KZsqJygPCuYSkQQ7yzK09V4H0lx0YoJloFy2bXgh9vU7/x
 GJ7Py7B6cpbb/H1RYpMw9GfY9C4mi0i5TXPTzA0L1p+hKzzskRWnHx6LYT8zkgZnd7
 vizqGFFBAvGva1y3yTICRuZvLzxqI8oeC5UGqeNA=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
 <20200810103103.303818-19-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <dcb03269-7652-7aed-7993-452893ce845f@shipmail.org>
Date: Wed, 12 Aug 2020 21:53:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200810103103.303818-19-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 18/24] drm/i915: Convert i915_perf to ww
 locking as well
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDgvMTAvMjAgMTI6MzAgUE0sIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+IFdlIGhhdmUg
dGhlIG9yZGVyaW5nIG9mIHRpbWVsaW5lLT5tdXRleCB2cyByZXN2X2xvY2sgd3JvbmcsCj4gY29u
dmVydCB0aGUgaTkxNV9waW5fdm1hIGFuZCBpbnRlbF9jb250ZXh0X3BpbiBhcyB3ZWxsIHRvCj4g
ZnV0dXJlLXByb29mIHRoaXMuCj4KPiBXZSBtYXkgbmVlZCB0byBkbyBmdXR1cmUgY2hhbmdlcyB0
byBkbyB0aGlzIG1vcmUgdHJhbnNhY3Rpb24tbGlrZSwKPiBhbmQgb25seSBnZXQgZG93biB0byBh
IHNpbmdsZSBpOTE1X2dlbV93d19jdHgsIGJ1dCBmb3Igbm93IHRoaXMKPiBzaG91bGQgd29yay4K
Pgo+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBs
aW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYu
YyB8IDU3ICsrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdl
ZCwgNDIgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BlcmYuYwo+IGluZGV4IGM2ZjYzNzAyODNjZi4uZTk0OTc2OTc2NTcxIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wZXJmLmMKPiBAQCAtMTE5NSwyNCArMTE5NSwzOSBAQCBzdGF0aWMgc3RydWN0
IGludGVsX2NvbnRleHQgKm9hX3Bpbl9jb250ZXh0KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpz
dHJlYW0pCj4gICAJc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXNfaXRlciBpdDsKPiAgIAlzdHJ1Y3Qg
aTkxNV9nZW1fY29udGV4dCAqY3R4ID0gc3RyZWFtLT5jdHg7Cj4gICAJc3RydWN0IGludGVsX2Nv
bnRleHQgKmNlOwo+IC0JaW50IGVycjsKPiArCXN0cnVjdCBpOTE1X2dlbV93d19jdHggd3c7Cj4g
KwlpbnQgZXJyID0gLUVOT0RFVjsKPiAgIAo+ICAgCWZvcl9lYWNoX2dlbV9lbmdpbmUoY2UsIGk5
MTVfZ2VtX2NvbnRleHRfbG9ja19lbmdpbmVzKGN0eCksIGl0KSB7Cj4gICAJCWlmIChjZS0+ZW5n
aW5lICE9IHN0cmVhbS0+ZW5naW5lKSAvKiBmaXJzdCBtYXRjaCEgKi8KPiAgIAkJCWNvbnRpbnVl
Owo+ICAgCj4gLQkJLyoKPiAtCQkgKiBBcyB0aGUgSUQgaXMgdGhlIGd0dCBvZmZzZXQgb2YgdGhl
IGNvbnRleHQncyB2bWEgd2UKPiAtCQkgKiBwaW4gdGhlIHZtYSB0byBlbnN1cmUgdGhlIElEIHJl
bWFpbnMgZml4ZWQuCj4gLQkJICovCj4gLQkJZXJyID0gaW50ZWxfY29udGV4dF9waW4oY2UpOwo+
IC0JCWlmIChlcnIgPT0gMCkgewo+IC0JCQlzdHJlYW0tPnBpbm5lZF9jdHggPSBjZTsKPiAtCQkJ
YnJlYWs7Cj4gLQkJfQo+ICsJCWVyciA9IDA7Cj4gKwkJYnJlYWs7Cj4gICAJfQo+ICAgCWk5MTVf
Z2VtX2NvbnRleHRfdW5sb2NrX2VuZ2luZXMoY3R4KTsKPiAgIAo+ICsJaWYgKGVycikKPiArCQly
ZXR1cm4gRVJSX1BUUihlcnIpOwo+ICsKPiArCWk5MTVfZ2VtX3d3X2N0eF9pbml0KCZ3dywgdHJ1
ZSk7Cj4gK3JldHJ5Ogo+ICsJLyoKPiArCSAqIEFzIHRoZSBJRCBpcyB0aGUgZ3R0IG9mZnNldCBv
ZiB0aGUgY29udGV4dCdzIHZtYSB3ZQo+ICsJICogcGluIHRoZSB2bWEgdG8gZW5zdXJlIHRoZSBJ
RCByZW1haW5zIGZpeGVkLgo+ICsJICovCj4gKwllcnIgPSBpbnRlbF9jb250ZXh0X3Bpbl93dyhj
ZSwgJnd3KTsKPiArCWlmIChlcnIgPT0gLUVERUFETEspIHsKPiArCQllcnIgPSBpOTE1X2dlbV93
d19jdHhfYmFja29mZigmd3cpOwo+ICsJCWlmICghZXJyKQo+ICsJCQlnb3RvIHJldHJ5Owo+ICsJ
fQo+ICsJaTkxNV9nZW1fd3dfY3R4X2ZpbmkoJnd3KTsKPiArCgpIbW0uIERpZG4ndCB3ZSBrZWVw
IGFuIGludGVsX2NvbnRleHRfcGluKCkgdGhhdCBkb2VzIGV4YWN0bHkgdGhlIGFib3ZlIAp3aXRo
b3V0IHJlY29kaW5nIHRoZSB3aG9sZSB3dyB0cmFuc2FjdGlvbj8gT3IgZG8geW91IHBsYW4gdG8g
cmVtb3ZlIHRoYXQ/CgpXaXRoIHRoYXQgdGFrZW4gaW50byBhY2NvdW50LAoKUmV2aWV3ZWQtYnk6
IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNvbT4KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
