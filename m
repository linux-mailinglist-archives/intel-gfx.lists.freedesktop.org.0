Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DD0205A68
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 20:21:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAC196EA28;
	Tue, 23 Jun 2020 18:21:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4137C6EA28
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 18:21:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 682493F40C;
 Tue, 23 Jun 2020 20:21:36 +0200 (CEST)
Authentication-Results: ste-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=fQvBQnCl; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mmiCUeF-YlF5; Tue, 23 Jun 2020 20:21:35 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 50E293F240;
 Tue, 23 Jun 2020 20:21:33 +0200 (CEST)
Received: from localhost.localdomain (unknown [134.134.139.83])
 by mail1.shipmail.org (Postfix) with ESMTPSA id EA1A1362166;
 Tue, 23 Jun 2020 20:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1592936493; bh=fPNa3cjJw/YbARu0KR8UpQpE6pQ8/By4xyUXDJ6q39A=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=fQvBQnClscR0PbWefQRdtPkS+YLQuJI0zT04tiFCyYmPc4zOO+Lk2UydBhGMam94+
 cV3hpVR6S49zKI6pjycV90wcmv0jgPFWm5KHxTwdC/Rz48uA7ByXve6R6O13zOT75i
 RVwF4OqpHdCWdNhAcXu6DJljcITHSE+hNXv0nmV0=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
 <20200622095921.15530-7-chris@chris-wilson.co.uk>
 <1712fc5b-9b1e-0632-13c0-e0bc2c1d889d@shipmail.org>
 <159293017861.3967.12926784772086320588@build.alporthouse.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <60e198c5-bfc1-2bc6-05a3-487763f7a609@shipmail.org>
Date: Tue, 23 Jun 2020 20:21:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <159293017861.3967.12926784772086320588@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/gem: Acquire all vma/objects
 under reservation_ww_class
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

Ck9uIDYvMjMvMjAgNjozNiBQTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgVGhvbWFz
IEhlbGxzdHLDtm0gKEludGVsKSAoMjAyMC0wNi0yMyAxMjoyMjoxMSkKPj4gSGksIENocmlzLAo+
Pgo+PiBPbiA2LzIyLzIwIDExOjU5IEFNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBJbiBvcmRl
ciB0byBhY3R1YWxseSBoYW5kbGUgZXZpY3Rpb24gYW5kIHdoYXQgbm90LCB3ZSBuZWVkIHRvIHBy
b2Nlc3MKPj4+IGFsbCB0aGUgb2JqZWN0cyB0b2dldGhlciB1bmRlciBhIGNvbW1vbiBsb2NrLCBy
ZXNlcnZhdGlvbl93d19jbGFzcy4gQXMKPj4+IHN1Y2gsIGRvIGEgbWVtb3J5IHJlc2VydmF0aW9u
IHBhc3MgYWZ0ZXIgbG9va2luZyB1cCB0aGUgb2JqZWN0L3ZtYSwKPj4+IHdoaWNoIHRoZW4gZmVl
ZHMgaW50byB0aGUgcmVzdCBvZiBleGVjYnVmIFtyZWxvY2F0aW9uLCBjbWRwYXJzaW5nLAo+Pj4g
Zmx1c2hpbmcgYW5kIG9mYyBleGVjdXRpb25dLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+Pj4gLS0tCj4+PiAgICAuLi4vZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgICAgfCA5MSArKysrKysrKysrKysr
Ky0tLS0tCj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgNzAgaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRp
b25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9leGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhl
Y2J1ZmZlci5jCj4+PiBpbmRleCA0NmZjYmRmODE2MWMuLjhkYjJlMDEzNDY1ZiAxMDA2NDQKPj4+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPj4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPj4+
IEBAIC01MywxMCArNTMsOSBAQCBzdHJ1Y3QgZWJfdm1hX2FycmF5IHsKPj4+ICAgIAo+Pj4gICAg
I2RlZmluZSBfX0VYRUNfT0JKRUNUX0hBU19QSU4gICAgICAgICAgICAgICBCSVQoMzEpCj4+PiAg
ICAjZGVmaW5lIF9fRVhFQ19PQkpFQ1RfSEFTX0ZFTkNFICAgICAgICAgICAgIEJJVCgzMCkKPj4+
IC0jZGVmaW5lIF9fRVhFQ19PQkpFQ1RfSEFTX1BBR0VTICAgICAgICAgICAgICBCSVQoMjkpCj4+
PiAtI2RlZmluZSBfX0VYRUNfT0JKRUNUX05FRURTX01BUCAgICAgICAgICAgICAgQklUKDI4KQo+
Pj4gLSNkZWZpbmUgX19FWEVDX09CSkVDVF9ORUVEU19CSUFTICAgICBCSVQoMjcpCj4+PiAtI2Rl
ZmluZSBfX0VYRUNfT0JKRUNUX0lOVEVSTkFMX0ZMQUdTICh+MHUgPDwgMjcpIC8qIGFsbCBvZiB0
aGUgYWJvdmUgKi8KPj4+ICsjZGVmaW5lIF9fRVhFQ19PQkpFQ1RfTkVFRFNfTUFQICAgICAgICAg
ICAgICBCSVQoMjkpCj4+PiArI2RlZmluZSBfX0VYRUNfT0JKRUNUX05FRURTX0JJQVMgICAgIEJJ
VCgyOCkKPj4+ICsjZGVmaW5lIF9fRVhFQ19PQkpFQ1RfSU5URVJOQUxfRkxBR1MgKH4wdSA8PCAy
OCkgLyogYWxsIG9mIHRoZSBhYm92ZSAqLwo+Pj4gICAgCj4+PiAgICAjZGVmaW5lIF9fRVhFQ19I
QVNfUkVMT0MgICAgQklUKDMxKQo+Pj4gICAgI2RlZmluZSBfX0VYRUNfSU5URVJOQUxfRkxBR1Mg
ICAgICAgKH4wdSA8PCAzMSkKPj4+IEBAIC0yNDEsNiArMjQwLDggQEAgc3RydWN0IGk5MTVfZXhl
Y2J1ZmZlciB7Cj4+PiAgICAgICAgc3RydWN0IGludGVsX2NvbnRleHQgKmNvbnRleHQ7IC8qIGxv
Z2ljYWwgc3RhdGUgZm9yIHRoZSByZXF1ZXN0ICovCj4+PiAgICAgICAgc3RydWN0IGk5MTVfZ2Vt
X2NvbnRleHQgKmdlbV9jb250ZXh0OyAvKiogY2FsbGVyJ3MgY29udGV4dCAqLwo+Pj4gICAgCj4+
PiArICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICptbV9mZW5jZTsKPj4+ICsKPj4+ICAgICAgICBzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0OyAvKiogb3VyIHJlcXVlc3QgdG8gYnVpbGQgKi8KPj4+
ICAgICAgICBzdHJ1Y3QgZWJfdm1hICpiYXRjaDsgLyoqIGlkZW50aXR5IG9mIHRoZSBiYXRjaCBv
Ymovdm1hICovCj4+PiAgICAgICAgc3RydWN0IGk5MTVfdm1hICp0cmFtcG9saW5lOyAvKiogdHJh
bXBvbGluZSB1c2VkIGZvciBjaGFpbmluZyAqLwo+Pj4gQEAgLTMzMSwxMiArMzMyLDcgQEAgc3Rh
dGljIGlubGluZSB2b2lkIGViX3VucmVzZXJ2ZV92bWEoc3RydWN0IGViX3ZtYSAqZXYpCj4+PiAg
ICAgICAgaWYgKGV2LT5mbGFncyAmIF9fRVhFQ19PQkpFQ1RfSEFTX1BJTikKPj4+ICAgICAgICAg
ICAgICAgIF9faTkxNV92bWFfdW5waW4odm1hKTsKPj4+ICAgIAo+Pj4gLSAgICAgaWYgKGV2LT5m
bGFncyAmIF9fRVhFQ19PQkpFQ1RfSEFTX1BBR0VTKQo+Pj4gLSAgICAgICAgICAgICBpOTE1X2dl
bV9vYmplY3RfdW5waW5fcGFnZXModm1hLT5vYmopOwo+Pj4gLQo+Pj4gLSAgICAgZXYtPmZsYWdz
ICY9IH4oX19FWEVDX09CSkVDVF9IQVNfUElOIHwKPj4+IC0gICAgICAgICAgICAgICAgICAgIF9f
RVhFQ19PQkpFQ1RfSEFTX0ZFTkNFIHwKPj4+IC0gICAgICAgICAgICAgICAgICAgIF9fRVhFQ19P
QkpFQ1RfSEFTX1BBR0VTKTsKPj4+ICsgICAgIGV2LT5mbGFncyAmPSB+KF9fRVhFQ19PQkpFQ1Rf
SEFTX1BJTiB8IF9fRVhFQ19PQkpFQ1RfSEFTX0ZFTkNFKTsKPj4+ICAgIH0KPj4+ICAgIAo+Pj4g
ICAgc3RhdGljIHZvaWQgZWJfdm1hX2FycmF5X2Rlc3Ryb3koc3RydWN0IGtyZWYgKmtyZWYpCj4+
PiBAQCAtNjY3LDYgKzY2Myw1NSBAQCBlYl9hZGRfdm1hKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIg
KmViLAo+Pj4gICAgICAgIGxpc3RfYWRkX3RhaWwoJmV2LT5sb2NrX2xpbmssICZlYi0+bG9jayk7
Cj4+PiAgICB9Cj4+PiAgICAKPj4+ICtzdGF0aWMgaW50IGViX3ZtYV9nZXRfcGFnZXMoc3RydWN0
IGk5MTVfZXhlY2J1ZmZlciAqZWIsCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVj
dCBlYl92bWEgKmV2LAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICB1NjQgaWR4KQo+Pj4g
K3sKPj4+ICsgICAgIHN0cnVjdCBpOTE1X3ZtYSAqdm1hID0gZXYtPnZtYTsKPj4+ICsgICAgIGlu
dCBlcnI7Cj4+PiArCj4+PiArICAgICAvKiBYWFggYWxzbyBwcmVhbGxvY2F0ZSBQRCBmb3Igdm1h
ICovCj4+PiArCj4+PiArICAgICBlcnIgPSBfX19faTkxNV9nZW1fb2JqZWN0X2dldF9wYWdlc19h
c3luYyh2bWEtPm9iaik7Cj4+PiArICAgICBpZiAoZXJyKQo+Pj4gKyAgICAgICAgICAgICByZXR1
cm4gZXJyOwo+Pj4gKwo+Pj4gKyAgICAgcmV0dXJuIGk5MTVfYWN0aXZlX3JlZigmdm1hLT5vYmot
Pm1tLmFjdGl2ZSwgaWR4LCBlYi0+bW1fZmVuY2UpOwo+Pj4gK30KPj4+ICsKPj4+ICtzdGF0aWMg
aW50IGViX3Jlc2VydmVfbW0oc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCj4+PiArewo+Pj4g
KyAgICAgY29uc3QgdTY0IGlkeCA9IGViLT5jb250ZXh0LT50aW1lbGluZS0+ZmVuY2VfY29udGV4
dDsKPj4+ICsgICAgIHN0cnVjdCB3d19hY3F1aXJlX2N0eCBhY3F1aXJlOwo+Pj4gKyAgICAgc3Ry
dWN0IGViX3ZtYSAqZXY7Cj4+PiArICAgICBpbnQgZXJyOwo+Pj4gKwo+Pj4gKyAgICAgZWItPm1t
X2ZlbmNlID0gX19kbWFfZmVuY2VfY3JlYXRlX3Byb3h5KDAsIDApOwo+Pj4gKyAgICAgaWYgKCFl
Yi0+bW1fZmVuY2UpCj4+PiArICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOwo+PiBRdWVzdGlv
bjogZWIgaXMgbG9jYWwgdG8gdGhpcyB0aHJlYWQsIHJpZ2h0LCBzbyBlYi0+bW1fZmVuY2UgaXMg
bm90Cj4+IGNvbnNpZGVyZWQgInB1Ymxpc2hlZCIgeWV0Pwo+Pgo+Pj4gKwo+Pj4gKyAgICAgd3df
YWNxdWlyZV9pbml0KCZhY3F1aXJlLCAmcmVzZXJ2YXRpb25fd3dfY2xhc3MpOwo+Pj4gKwo+Pj4g
KyAgICAgZXJyID0gZWJfbG9ja192bWEoZWIsICZhY3F1aXJlKTsKPj4+ICsgICAgIGlmIChlcnIp
Cj4+PiArICAgICAgICAgICAgIGdvdG8gb3V0Owo+Pj4gKwo+Pj4gKyAgICAgd3dfYWNxdWlyZV9k
b25lKCZhY3F1aXJlKTsKPj4+ICsKPj4+ICsgICAgIGxpc3RfZm9yX2VhY2hfZW50cnkoZXYsICZl
Yi0+bG9jaywgbG9ja19saW5rKSB7Cj4+PiArICAgICAgICAgICAgIHN0cnVjdCBpOTE1X3ZtYSAq
dm1hID0gZXYtPnZtYTsKPj4+ICsKPj4+ICsgICAgICAgICAgICAgaWYgKGVyciA9PSAwKQo+Pj4g
KyAgICAgICAgICAgICAgICAgICAgIGVyciA9IGViX3ZtYV9nZXRfcGFnZXMoZWIsIGV2LCBpZHgp
Owo+PiBJIGZpZ3VyZSB0aGlzIGlzIHdoZXJlIHlvdSBwdWJsaXNoIHRoZSBwcm94eSBmZW5jZT8g
SWYgc28sIHRoZSBmZW5jZQo+PiBzaWduYWxpbmcgY3JpdGljYWwgcGF0aCBzdGFydHMgd2l0aCB0
aGlzIGxvb3AsCj4gSG1tLCBhY3R1YWxseSBhdCB0aGlzIG1vbWVudCwgdGhlIGZlbmNlIGlzIHN0
aWxsIHZlcnkgbXVjaCBpbnRlcm5hbAo+IGJlaW5nIG9ubHkgdXNlZCBhcyBhIHJlZmVyZW5jZSB0
b2tlbiwKSSB0aGluayBhcyBsb25nIGFzIGFub3RoZXIgdGhyZWFkLCBydW5uaW5nIGluIHRoaXMg
ZHJpdmVyIG9yIGFub3RoZXIgZ3B1IApkcml2ZXIgY2FuIHRoZW9yZXRpY2FsbHkgcmVmZXJlbmNl
IHRoZSBmZW5jZSBwb2ludGVyIGZyb20gdGhlIApyZXNlcnZhdGlvbiBvYmplY3QgYW5kIHdhaXQg
Zm9yIHRoZSBmZW5jZSBpdCdzIGNvbnNpZGVyZWQgcHVibGlzaGVkLgoKQWxzbyB0aGUgd3dfbXV0
ZXhlcyBpbiB0aGlzIGNvbnRleHQgYXJlIHJlYWxseSBhbGwgYWJvdXQgZ3JhYmJpbmcgYSAKcmFu
ZG9tIHNldCBvZiByZXNvdXJjZXMgYW5kIGFzc29jaWF0ZSB0aGVtIHdpdGggYSBwb2ludCBpbiBh
IHRpbWVsaW5lLCAKYXMgdGhlIHd3X211dGV4ZXMgYXJlIHJlbGVhc2VkLCB0aGUgZmVuY2UgcG9p
bnRlcihzKSBuZWVkIHRvIHBvaW50IHRvIApwdWJsaXNoZWQgZmVuY2UocykuCgovVGhvbWFzCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
