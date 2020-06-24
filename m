Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B755F206BDC
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 07:42:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEC4A6E0A0;
	Wed, 24 Jun 2020 05:42:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa1.bahnhof.se (pio-pvt-msa1.bahnhof.se [79.136.2.40])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99EEF6E0A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 05:42:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTP id A50033F550;
 Wed, 24 Jun 2020 07:42:37 +0200 (CEST)
Authentication-Results: pio-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b="ap6fzXVo";
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from pio-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZemWL7SqJvIk; Wed, 24 Jun 2020 07:42:35 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id E283F3F3A8;
 Wed, 24 Jun 2020 07:42:33 +0200 (CEST)
Received: from localhost.localdomain (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id B89BF360168;
 Wed, 24 Jun 2020 07:42:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1592977353; bh=qGLuKP7oXVGzVs/IvUWtWKFJ+3VGM+e8faZ3pnqYfKI=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=ap6fzXVoJmW9y4kjwWR0kzF2RlNjd7MOSeg7cWcQ/kUncJFgC3agVBYkjQ/lFkm1r
 XkW08oTZJdf68Xt9kxC5E9xofmIhDCJCJOySeaSekR2knFlRdBssh8FTqSfrkT4ugh
 HCaqNfYqmEUbvdS507HJ19y/VdIG/iAR50vEOVnw=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
 <20200622095921.15530-7-chris@chris-wilson.co.uk>
 <1712fc5b-9b1e-0632-13c0-e0bc2c1d889d@shipmail.org>
 <159293017861.3967.12926784772086320588@build.alporthouse.com>
 <60e198c5-bfc1-2bc6-05a3-487763f7a609@shipmail.org>
 <159293768060.3967.16328770521784351822@build.alporthouse.com>
 <88f746c6-c6ad-8c19-7797-856ac6bb2f50@shipmail.org>
 <159294690652.3967.16801810632630360943@build.alporthouse.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <ef797b36-22e9-887b-dca4-5a845c60aed7@shipmail.org>
Date: Wed, 24 Jun 2020 07:42:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <159294690652.3967.16801810632630360943@build.alporthouse.com>
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

Ck9uIDYvMjMvMjAgMTE6MTUgUE0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFRob21h
cyBIZWxsc3Ryw7ZtIChJbnRlbCkgKDIwMjAtMDYtMjMgMjE6MzE6MzgpCj4+IE9uIDYvMjMvMjAg
ODo0MSBQTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+Pj4gUXVvdGluZyBUaG9tYXMgSGVsbHN0csO2
bSAoSW50ZWwpICgyMDIwLTA2LTIzIDE5OjIxOjI4KQo+Pj4+IE9uIDYvMjMvMjAgNjozNiBQTSwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+Pj4+PiBRdW90aW5nIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRl
bCkgKDIwMjAtMDYtMjMgMTI6MjI6MTEpCj4+Pj4+PiBIaSwgQ2hyaXMsCj4+Pj4+Pgo+Pj4+Pj4g
T24gNi8yMi8yMCAxMTo1OSBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+Pj4+Pj4+IEluIG9yZGVy
IHRvIGFjdHVhbGx5IGhhbmRsZSBldmljdGlvbiBhbmQgd2hhdCBub3QsIHdlIG5lZWQgdG8gcHJv
Y2Vzcwo+Pj4+Pj4+IGFsbCB0aGUgb2JqZWN0cyB0b2dldGhlciB1bmRlciBhIGNvbW1vbiBsb2Nr
LCByZXNlcnZhdGlvbl93d19jbGFzcy4gQXMKPj4+Pj4+PiBzdWNoLCBkbyBhIG1lbW9yeSByZXNl
cnZhdGlvbiBwYXNzIGFmdGVyIGxvb2tpbmcgdXAgdGhlIG9iamVjdC92bWEsCj4+Pj4+Pj4gd2hp
Y2ggdGhlbiBmZWVkcyBpbnRvIHRoZSByZXN0IG9mIGV4ZWNidWYgW3JlbG9jYXRpb24sIGNtZHBh
cnNpbmcsCj4+Pj4+Pj4gZmx1c2hpbmcgYW5kIG9mYyBleGVjdXRpb25dLgo+Pj4+Pj4+Cj4+Pj4+
Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Cj4+Pj4+Pj4gLS0tCj4+Pj4+Pj4gICAgICAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9l
eGVjYnVmZmVyLmMgICAgfCA5MSArKysrKysrKysrKysrKy0tLS0tCj4+Pj4+Pj4gICAgICAxIGZp
bGUgY2hhbmdlZCwgNzAgaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25zKC0pCj4+Pj4+Pj4KPj4+
Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNi
dWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMK
Pj4+Pj4+PiBpbmRleCA0NmZjYmRmODE2MWMuLjhkYjJlMDEzNDY1ZiAxMDA2NDQKPj4+Pj4+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4+Pj4+
Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+
Pj4+Pj4+IEBAIC01MywxMCArNTMsOSBAQCBzdHJ1Y3QgZWJfdm1hX2FycmF5IHsKPj4+Pj4+PiAg
ICAgIAo+Pj4+Pj4+ICAgICAgI2RlZmluZSBfX0VYRUNfT0JKRUNUX0hBU19QSU4gICAgICAgICAg
ICAgICBCSVQoMzEpCj4+Pj4+Pj4gICAgICAjZGVmaW5lIF9fRVhFQ19PQkpFQ1RfSEFTX0ZFTkNF
ICAgICAgICAgICAgIEJJVCgzMCkKPj4+Pj4+PiAtI2RlZmluZSBfX0VYRUNfT0JKRUNUX0hBU19Q
QUdFUyAgICAgICAgICAgICAgQklUKDI5KQo+Pj4+Pj4+IC0jZGVmaW5lIF9fRVhFQ19PQkpFQ1Rf
TkVFRFNfTUFQICAgICAgICAgICAgICBCSVQoMjgpCj4+Pj4+Pj4gLSNkZWZpbmUgX19FWEVDX09C
SkVDVF9ORUVEU19CSUFTICAgICBCSVQoMjcpCj4+Pj4+Pj4gLSNkZWZpbmUgX19FWEVDX09CSkVD
VF9JTlRFUk5BTF9GTEFHUyAofjB1IDw8IDI3KSAvKiBhbGwgb2YgdGhlIGFib3ZlICovCj4+Pj4+
Pj4gKyNkZWZpbmUgX19FWEVDX09CSkVDVF9ORUVEU19NQVAgICAgICAgICAgICAgIEJJVCgyOSkK
Pj4+Pj4+PiArI2RlZmluZSBfX0VYRUNfT0JKRUNUX05FRURTX0JJQVMgICAgIEJJVCgyOCkKPj4+
Pj4+PiArI2RlZmluZSBfX0VYRUNfT0JKRUNUX0lOVEVSTkFMX0ZMQUdTICh+MHUgPDwgMjgpIC8q
IGFsbCBvZiB0aGUgYWJvdmUgKi8KPj4+Pj4+PiAgICAgIAo+Pj4+Pj4+ICAgICAgI2RlZmluZSBf
X0VYRUNfSEFTX1JFTE9DICAgIEJJVCgzMSkKPj4+Pj4+PiAgICAgICNkZWZpbmUgX19FWEVDX0lO
VEVSTkFMX0ZMQUdTICAgICAgICh+MHUgPDwgMzEpCj4+Pj4+Pj4gQEAgLTI0MSw2ICsyNDAsOCBA
QCBzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyIHsKPj4+Pj4+PiAgICAgICAgICBzdHJ1Y3QgaW50ZWxf
Y29udGV4dCAqY29udGV4dDsgLyogbG9naWNhbCBzdGF0ZSBmb3IgdGhlIHJlcXVlc3QgKi8KPj4+
Pj4+PiAgICAgICAgICBzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqZ2VtX2NvbnRleHQ7IC8qKiBj
YWxsZXIncyBjb250ZXh0ICovCj4+Pj4+Pj4gICAgICAKPj4+Pj4+PiArICAgICBzdHJ1Y3QgZG1h
X2ZlbmNlICptbV9mZW5jZTsKPj4+Pj4+PiArCj4+Pj4+Pj4gICAgICAgICAgc3RydWN0IGk5MTVf
cmVxdWVzdCAqcmVxdWVzdDsgLyoqIG91ciByZXF1ZXN0IHRvIGJ1aWxkICovCj4+Pj4+Pj4gICAg
ICAgICAgc3RydWN0IGViX3ZtYSAqYmF0Y2g7IC8qKiBpZGVudGl0eSBvZiB0aGUgYmF0Y2ggb2Jq
L3ZtYSAqLwo+Pj4+Pj4+ICAgICAgICAgIHN0cnVjdCBpOTE1X3ZtYSAqdHJhbXBvbGluZTsgLyoq
IHRyYW1wb2xpbmUgdXNlZCBmb3IgY2hhaW5pbmcgKi8KPj4+Pj4+PiBAQCAtMzMxLDEyICszMzIs
NyBAQCBzdGF0aWMgaW5saW5lIHZvaWQgZWJfdW5yZXNlcnZlX3ZtYShzdHJ1Y3QgZWJfdm1hICpl
dikKPj4+Pj4+PiAgICAgICAgICBpZiAoZXYtPmZsYWdzICYgX19FWEVDX09CSkVDVF9IQVNfUElO
KQo+Pj4+Pj4+ICAgICAgICAgICAgICAgICAgX19pOTE1X3ZtYV91bnBpbih2bWEpOwo+Pj4+Pj4+
ICAgICAgCj4+Pj4+Pj4gLSAgICAgaWYgKGV2LT5mbGFncyAmIF9fRVhFQ19PQkpFQ1RfSEFTX1BB
R0VTKQo+Pj4+Pj4+IC0gICAgICAgICAgICAgaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKHZt
YS0+b2JqKTsKPj4+Pj4+PiAtCj4+Pj4+Pj4gLSAgICAgZXYtPmZsYWdzICY9IH4oX19FWEVDX09C
SkVDVF9IQVNfUElOIHwKPj4+Pj4+PiAtICAgICAgICAgICAgICAgICAgICBfX0VYRUNfT0JKRUNU
X0hBU19GRU5DRSB8Cj4+Pj4+Pj4gLSAgICAgICAgICAgICAgICAgICAgX19FWEVDX09CSkVDVF9I
QVNfUEFHRVMpOwo+Pj4+Pj4+ICsgICAgIGV2LT5mbGFncyAmPSB+KF9fRVhFQ19PQkpFQ1RfSEFT
X1BJTiB8IF9fRVhFQ19PQkpFQ1RfSEFTX0ZFTkNFKTsKPj4+Pj4+PiAgICAgIH0KPj4+Pj4+PiAg
ICAgIAo+Pj4+Pj4+ICAgICAgc3RhdGljIHZvaWQgZWJfdm1hX2FycmF5X2Rlc3Ryb3koc3RydWN0
IGtyZWYgKmtyZWYpCj4+Pj4+Pj4gQEAgLTY2Nyw2ICs2NjMsNTUgQEAgZWJfYWRkX3ZtYShzdHJ1
Y3QgaTkxNV9leGVjYnVmZmVyICplYiwKPj4+Pj4+PiAgICAgICAgICBsaXN0X2FkZF90YWlsKCZl
di0+bG9ja19saW5rLCAmZWItPmxvY2spOwo+Pj4+Pj4+ICAgICAgfQo+Pj4+Pj4+ICAgICAgCj4+
Pj4+Pj4gK3N0YXRpYyBpbnQgZWJfdm1hX2dldF9wYWdlcyhzdHJ1Y3QgaTkxNV9leGVjYnVmZmVy
ICplYiwKPj4+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBlYl92bWEgKmV2
LAo+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgdTY0IGlkeCkKPj4+Pj4+PiArewo+
Pj4+Pj4+ICsgICAgIHN0cnVjdCBpOTE1X3ZtYSAqdm1hID0gZXYtPnZtYTsKPj4+Pj4+PiArICAg
ICBpbnQgZXJyOwo+Pj4+Pj4+ICsKPj4+Pj4+PiArICAgICAvKiBYWFggYWxzbyBwcmVhbGxvY2F0
ZSBQRCBmb3Igdm1hICovCj4+Pj4+Pj4gKwo+Pj4+Pj4+ICsgICAgIGVyciA9IF9fX19pOTE1X2dl
bV9vYmplY3RfZ2V0X3BhZ2VzX2FzeW5jKHZtYS0+b2JqKTsKPj4+Pj4+PiArICAgICBpZiAoZXJy
KQo+Pj4+Pj4+ICsgICAgICAgICAgICAgcmV0dXJuIGVycjsKPj4+Pj4+PiArCj4+Pj4+Pj4gKyAg
ICAgcmV0dXJuIGk5MTVfYWN0aXZlX3JlZigmdm1hLT5vYmotPm1tLmFjdGl2ZSwgaWR4LCBlYi0+
bW1fZmVuY2UpOwo+Pj4+Pj4+ICt9Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICtzdGF0aWMgaW50IGViX3Jl
c2VydmVfbW0oc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCj4+Pj4+Pj4gK3sKPj4+Pj4+PiAr
ICAgICBjb25zdCB1NjQgaWR4ID0gZWItPmNvbnRleHQtPnRpbWVsaW5lLT5mZW5jZV9jb250ZXh0
Owo+Pj4+Pj4+ICsgICAgIHN0cnVjdCB3d19hY3F1aXJlX2N0eCBhY3F1aXJlOwo+Pj4+Pj4+ICsg
ICAgIHN0cnVjdCBlYl92bWEgKmV2Owo+Pj4+Pj4+ICsgICAgIGludCBlcnI7Cj4+Pj4+Pj4gKwo+
Pj4+Pj4+ICsgICAgIGViLT5tbV9mZW5jZSA9IF9fZG1hX2ZlbmNlX2NyZWF0ZV9wcm94eSgwLCAw
KTsKPj4+Pj4+PiArICAgICBpZiAoIWViLT5tbV9mZW5jZSkKPj4+Pj4+PiArICAgICAgICAgICAg
IHJldHVybiAtRU5PTUVNOwo+Pj4+Pj4gUXVlc3Rpb246IGViIGlzIGxvY2FsIHRvIHRoaXMgdGhy
ZWFkLCByaWdodCwgc28gZWItPm1tX2ZlbmNlIGlzIG5vdAo+Pj4+Pj4gY29uc2lkZXJlZCAicHVi
bGlzaGVkIiB5ZXQ/Cj4+Pj4+Pgo+Pj4+Pj4+ICsKPj4+Pj4+PiArICAgICB3d19hY3F1aXJlX2lu
aXQoJmFjcXVpcmUsICZyZXNlcnZhdGlvbl93d19jbGFzcyk7Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICsg
ICAgIGVyciA9IGViX2xvY2tfdm1hKGViLCAmYWNxdWlyZSk7Cj4+Pj4+Pj4gKyAgICAgaWYgKGVy
cikKPj4+Pj4+PiArICAgICAgICAgICAgIGdvdG8gb3V0Owo+Pj4+Pj4+ICsKPj4+Pj4+PiArICAg
ICB3d19hY3F1aXJlX2RvbmUoJmFjcXVpcmUpOwo+Pj4+Pj4+ICsKPj4+Pj4+PiArICAgICBsaXN0
X2Zvcl9lYWNoX2VudHJ5KGV2LCAmZWItPmxvY2ssIGxvY2tfbGluaykgewo+Pj4+Pj4+ICsgICAg
ICAgICAgICAgc3RydWN0IGk5MTVfdm1hICp2bWEgPSBldi0+dm1hOwo+Pj4+Pj4+ICsKPj4+Pj4+
PiArICAgICAgICAgICAgIGlmIChlcnIgPT0gMCkKPj4+Pj4+PiArICAgICAgICAgICAgICAgICAg
ICAgZXJyID0gZWJfdm1hX2dldF9wYWdlcyhlYiwgZXYsIGlkeCk7Cj4+Pj4+PiBJIGZpZ3VyZSB0
aGlzIGlzIHdoZXJlIHlvdSBwdWJsaXNoIHRoZSBwcm94eSBmZW5jZT8gSWYgc28sIHRoZSBmZW5j
ZQo+Pj4+Pj4gc2lnbmFsaW5nIGNyaXRpY2FsIHBhdGggc3RhcnRzIHdpdGggdGhpcyBsb29wLAo+
Pj4+PiBIbW0sIGFjdHVhbGx5IGF0IHRoaXMgbW9tZW50LCB0aGUgZmVuY2UgaXMgc3RpbGwgdmVy
eSBtdWNoIGludGVybmFsCj4+Pj4+IGJlaW5nIG9ubHkgdXNlZCBhcyBhIHJlZmVyZW5jZSB0b2tl
biwKPj4+PiBJIHRoaW5rIGFzIGxvbmcgYXMgYW5vdGhlciB0aHJlYWQsIHJ1bm5pbmcgaW4gdGhp
cyBkcml2ZXIgb3IgYW5vdGhlciBncHUKPj4+PiBkcml2ZXIgY2FuIHRoZW9yZXRpY2FsbHkgcmVm
ZXJlbmNlIHRoZSBmZW5jZSBwb2ludGVyIGZyb20gdGhlCj4+Pj4gcmVzZXJ2YXRpb24gb2JqZWN0
IGFuZCB3YWl0IGZvciB0aGUgZmVuY2UgaXQncyBjb25zaWRlcmVkIHB1Ymxpc2hlZC4KPj4+IEl0
J3Mgbm90IGluIHRoZSByZXNlcnZhdGlvbiBvYmplY3QuCj4+PiAgICAKPj4+PiBBbHNvIHRoZSB3
d19tdXRleGVzIGluIHRoaXMgY29udGV4dCBhcmUgcmVhbGx5IGFsbCBhYm91dCBncmFiYmluZyBh
Cj4+Pj4gcmFuZG9tIHNldCBvZiByZXNvdXJjZXMgYW5kIGFzc29jaWF0ZSB0aGVtIHdpdGggYSBw
b2ludCBpbiBhIHRpbWVsaW5lLAo+Pj4+IGFzIHRoZSB3d19tdXRleGVzIGFyZSByZWxlYXNlZCwg
dGhlIGZlbmNlIHBvaW50ZXIocykgbmVlZCB0byBwb2ludCB0bwo+Pj4+IHB1Ymxpc2hlZCBmZW5j
ZShzKS4KPj4+IFRoYXQncyBub3QgdGhlIHB1cnBvc2Ugb2YgdGhlc2UgZmVuY2VzLCB0aG91Z2gu
IFRoZXkgZXhpc3QgdG8gcHJvdmlkZQo+Pj4gcmVmZXJlbmNlIGNvdW50aW5nIG9uIHRoZSBiYWNr
aW5nIHN0b3JlLCBhbG9uZyBzaWRlIHRoZSBtaWdyYXRpb24gZmVuY2UuCj4+PiBJdCdzIGV4dHJh
IGRldGFpbCB0YWNrZWQgb24gdGhlIGVxdWl2YWxlbnQgb2YgYm8tPm1vdmluZy4KPj4+Cj4+PiBU
aGF0IGlzIG5vdCB0byBzYXkgdGhhdCBvbmUgY291bGQgYnVpbGQgdXAgYW4gYXN5bmMgbWlncmF0
aW9uIGNoYWluIHdoaWNoCj4+PiBmb3JtIGEgZ3JhcGggYmFjayB0byB0aGVzZSwgdGhhdCBjaGFp
biBjb3VsZCBvbmx5IGJlIGZvcm1lZCBvbmNlIHRoZQo+Pj4gb3BlcmF0aW9uIGl0c2VsZiBoYXMg
YmVlbiBwdWJsaXNoZWQgaW4gdGhlIGRtYV9yZXN2IHRob3VnaC4KPj4gSG1tLiBTbyBsZXQncyBz
YXkgYW5vdGhlciB0aHJlYWQgZ3JhYnMgb25lIG9mIHRoZSBqdXN0IHJlbGVhc2VkCj4+IHd3X211
dGV4ZXMgYW5kIHdhbnRzIHRvIHNjaGVkdWxlIGEgYmxpdCBmcm9tIG9uZSBvZiB0aGUgYnVmZmVy
cyBpbiB0aGUKPj4gY3VycmVudCBvcGVyYXRpb24gd2l0aCBoaWdoIHByaW9yaXR5LiBIb3cgd291
bGQgdGhhdCB0aHJlYWQga25vdyBob3cgdG8KPj4gb3JkZXIgdGhhdCBibGl0IG9wZXJhdGlvbiB3
IHIgdCB0aGUgY3VycmVudCBvcGVyYXRpb24/Cj4gV2h5IHdvdWxkIGl0IG9yZGVyPwpTbyBsZXQn
cyBzYXkgaXQncyBhbiBldmljdGlvbiBibGl0LCBuZWVkaW5nIHRvIGluY29ycG9yYXRlIHRoZSBk
YXRhIGZyb20gCnRoZSBjdXJyZW50IG9wZXJhdGlvbi4gT3IsIGZvciB0aGF0IG1hdHRlciBhIHR0
bS1zdHlsZSBjcHUgY29weSBldmljdGlvbjoKCnd3X211dGV4X2xvY2sKd2FpdF9mb3JfaWRsZQpj
b3B5Cnd3X211dGV4X3VubG9jawoKL1Rob21hcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
