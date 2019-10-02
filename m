Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE4FC4ABE
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 11:43:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CDB76E8FF;
	Wed,  2 Oct 2019 09:43:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 309976E8FF
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 09:43:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18690574-1500050 for multiple; Wed, 02 Oct 2019 10:43:11 +0100
MIME-Version: 1.0
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191001163555.24356-1-kai.vehmanen@linux.intel.com>
References: <20191001163555.24356-1-kai.vehmanen@linux.intel.com>
Message-ID: <157000938845.1880.14965368731746874502@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 02 Oct 2019 10:43:08 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix audio power up sequence
 for gen10/11
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
Cc: Jani Nikula <jani.nikula@intel.com>, tiwai@suse.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBLYWkgVmVobWFuZW4gKDIwMTktMTAtMDEgMTc6MzU6NTQpCj4gT24gZ2VuMTAvMTEg
cGxhdGZvcm1zLCBkcml2ZXIgbXVzdCBzZXQgdGhlIGVuYWJsZSBiaXQgb2YgQVVEX1BJTl9CVUZf
Q1RMCj4gYXMgcGFydCBvZiBhdWRpbyBwb3dlciB1cCBzZXF1ZW5jZS4KPiAKPiBGYWlsaW5nIHRv
IGRvIHRoaXMgcmVzdWx0ZWQgaW4gZXJyb3JzIGR1cmluZyBkaXNwbGF5IGF1ZGlvIGNvZGVjIHBy
b2JlLAo+IGFuZCBmYWlsdXJlcyBkdXJpbmcgcmVzdW1lIGZyb20gc3VzcGVuZC4KPiAKPiBCdWd6
aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMjE0
Cj4gU2lnbmVkLW9mZi1ieTogS2FpIFZlaG1hbmVuIDxrYWkudmVobWFuZW5AbGludXguaW50ZWwu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMg
fCA1ICsrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICB8
IDIgKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5jCj4gaW5kZXggNTQ2MzhkOTllMDIxLi5h
NzMxYWY3YWRhMDggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9hdWRpby5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
dWRpby5jCj4gQEAgLTg2Miw2ICs4NjIsMTEgQEAgc3RhdGljIHVuc2lnbmVkIGxvbmcgaTkxNV9h
dWRpb19jb21wb25lbnRfZ2V0X3Bvd2VyKHN0cnVjdCBkZXZpY2UgKmtkZXYpCj4gICAgICAgICAg
ICAgICAgIC8qIEZvcmNlIENEQ0xLIHRvIDIqQkNMSyBhcyBsb25nIGFzIHdlIG5lZWQgYXVkaW8g
cG93ZXJlZC4gKi8KPiAgICAgICAgICAgICAgICAgaWYgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYp
IHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGds
a19mb3JjZV9hdWRpb19jZGNsayhkZXZfcHJpdiwgdHJ1ZSk7Cj4gKwo+ICsgICAgICAgICAgICAg
ICBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA9PSAxMSB8fCBJTlRFTF9HRU4oZGV2X3ByaXYpID09
IDEwKQo+ICsgICAgICAgICAgICAgICAgICAgICAgIEk5MTVfV1JJVEUoQVVEX1BJTl9CVUZfQ1RM
LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKEk5MTVfUkVBRChBVURfUElO
X0JVRl9DVEwpIHwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBBVURfUElO
X0JVRl9FTkFCTEUpKTsKCkZyb20gdGhlIG9ic2VydmF0aW9uIHRoYXQgdGhpcyByZWR1Y2VzIHRo
ZSBtb2R1bGUgcmVsb2FkIHRpbWUgZnJvbSAxOTZzCnRvIDJzLCBJJ2Qgc2F5IHRoaXMgd29ya3Mu
CgpEbyB5b3UgbmVlZCB0byBkaXNhYmxlIHRoZSBiaXQgbGF0ZXI/Ci1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
