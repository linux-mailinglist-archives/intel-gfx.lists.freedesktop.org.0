Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C697DE4F65
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 16:42:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9F08897F5;
	Fri, 25 Oct 2019 14:42:28 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BF04897F5
 for <Intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 14:42:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18964136-1500050 for multiple; Fri, 25 Oct 2019 15:42:19 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20191025142131.17378-1-tvrtko.ursulin@linux.intel.com>
 <20191025142131.17378-5-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20191025142131.17378-5-tvrtko.ursulin@linux.intel.com>
Message-ID: <157201453627.11797.8422390324810560795@skylake-alporthouse-com>
Date: Fri, 25 Oct 2019 15:42:16 +0100
Subject: Re: [Intel-gfx] [RFC 4/5] drm/i915: Expose per-engine client
 busyness
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0yNSAxNToyMTozMCkKPiArc3RhdGljIGlu
dCBidXN5X2FkZChpbnQgaWQsIHZvaWQgKnAsIHZvaWQgKmRhdGEpCj4gK3sKPiArICAgICAgIHN0
cnVjdCBidXN5X2N0eCAqYmMgPSBkYXRhOwo+ICsgICAgICAgc3RydWN0IGk5MTVfZ2VtX2NvbnRl
eHQgKmN0eCA9IHA7Cj4gKyAgICAgICB1bnNpZ25lZCBpbnQgZW5naW5lX2NsYXNzID0gYmMtPmVu
Z2luZV9jbGFzczsKPiArICAgICAgIHN0cnVjdCBpOTE1X2dlbV9lbmdpbmVzX2l0ZXIgaXQ7Cj4g
KyAgICAgICBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7Cj4gKyAgICAgICB1aW50NjRfdCB0b3Rh
bCA9IGJjLT50b3RhbDsKPiArCj4gKyAgICAgICBmb3JfZWFjaF9nZW1fZW5naW5lKGNlLCBpOTE1
X2dlbV9jb250ZXh0X2xvY2tfZW5naW5lcyhjdHgpLCBpdCkgewo+ICsgICAgICAgICAgICAgICBp
ZiAoY2UtPmVuZ2luZS0+dWFiaV9jbGFzcyA9PSBlbmdpbmVfY2xhc3MpCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgdG90YWwgKz0ga3RpbWVfdG9fbnMoaW50ZWxfY29udGV4dF9nZXRfYnVzeV90
aW1lKGNlKSk7Cj4gKyAgICAgICB9Cj4gKyAgICAgICBpOTE1X2dlbV9jb250ZXh0X3VubG9ja19l
bmdpbmVzKGN0eCk7Cj4gKwo+ICsgICAgICAgYmMtPnRvdGFsID0gdG90YWw7Cj4gKwo+ICsgICAg
ICAgcmV0dXJuIDA7Cj4gK30KPiArCj4gK3N0YXRpYyBzc2l6ZV90Cj4gK3Nob3dfY2xpZW50X2J1
c3koc3RydWN0IGRldmljZSAqa2Rldiwgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsIGNo
YXIgKmJ1ZikKPiArewo+ICsgICAgICAgc3RydWN0IGk5MTVfZW5naW5lX2J1c3lfYXR0cmlidXRl
ICppOTE1X2F0dHIgPQo+ICsgICAgICAgICAgICAgICBjb250YWluZXJfb2YoYXR0ciwgdHlwZW9m
KCppOTE1X2F0dHIpLCBhdHRyKTsKPiArICAgICAgIHN0cnVjdCBkcm1faTkxNV9maWxlX3ByaXZh
dGUgKmZpbGVfcHJpdiA9IGk5MTVfYXR0ci0+ZmlsZV9wcml2Owo+ICsgICAgICAgc3RydWN0IGJ1
c3lfY3R4IGJjID0geyAuZW5naW5lX2NsYXNzID0gaTkxNV9hdHRyLT5lbmdpbmVfY2xhc3MgfTsK
PiArICAgICAgIGludCByZXQ7Cj4gKwo+ICsgICAgICAgcmV0ID0gbXV0ZXhfbG9ja19pbnRlcnJ1
cHRpYmxlKCZmaWxlX3ByaXYtPmNvbnRleHRfaWRyX2xvY2spOwo+ICsgICAgICAgaWYgKHJldCkK
PiArICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiArCj4gKyAgICAgICBpZHJfZm9yX2VhY2go
JmZpbGVfcHJpdi0+Y29udGV4dF9pZHIsIGJ1c3lfYWRkLCAmYmMpOwoKSWYgeW91IGRvbiBhIGhh
cmQgaGF0LCB0aGlzIGNhbiBhbGwgYmUgZG9uZSB1bmRlciByY3VfcmVhZF9sb2NrKCkuCi1DaHJp
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
