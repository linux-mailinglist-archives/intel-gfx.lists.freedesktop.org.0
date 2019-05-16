Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F8A20D15
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 18:33:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ED748928B;
	Thu, 16 May 2019 16:33:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6252A8928B
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 16:33:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 09:33:23 -0700
X-ExtLoop1: 1
Received: from ammersdo-mobl.ger.corp.intel.com (HELO [10.252.58.166])
 ([10.252.58.166])
 by fmsmga007.fm.intel.com with ESMTP; 16 May 2019 09:33:22 -0700
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190509122159.24376-1-ville.syrjala@linux.intel.com>
 <20190509122159.24376-9-ville.syrjala@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <c65b5eb7-cd06-95f3-426b-726a50f74cda@linux.intel.com>
Date: Thu, 16 May 2019 18:33:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190509122159.24376-9-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 8/8] drm/i915: Bump gen7+ fb size limits
 to 16kx16k
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMDktMDUtMjAxOSBvbSAxNDoyMSBzY2hyZWVmIFZpbGxlIFN5cmphbGE6Cj4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPgo+IFdpdGggZ3R0
IHJlbWFwcGluZyBpbiBwbGFjZSB3ZSBjYW4gdXNlIGFyYml0cmFyaWx5IGxhcmdlCj4gZnJhbWVi
dWZmZXJzLiBMZXQncyBidW1wIHRoZSBsaW1pdHMgdG8gMTZreDE2ayBvbiBnZW43Ky4KPiBUaGUg
bGltaXQgd2FzIGNob3NlbiB0byBtYXRjaCB0aGUgbWF4aW11bSAyRCBzdXJmYWNlIHNpemUKPiBv
ZiB0aGUgM0QgZW5naW5lLgo+Cj4gV2l0aCB0aGUgcmVtYXBwaW5nIHdlIGNvdWxkIGVhc2lseSBn
byBoaWdoZXIgdGhhbiB0aGF0IGZvciB0aGUKPiBkaXNwbGF5IGVuZ2luZS4gSG93ZXZlciB0aGUg
bW9kZXNldHRpbmcgZGR4IHdpbGwgYmxpbmRseSBhc3N1bWUKPiBpdCBjYW4gaGFuZGxlIHdoYXRl
dmVyIGlzIHJlcG9ydGVkIHZpYSBrbXMuIFRoZSBvdmVyc2l6ZWQKPiBidWZmZXIgZGltZW5zaW9u
cyBhcmUgbm90IGNhdWdodCBieSBnbGFtb3Igbm9yIE1lc2EgdW50aWwKPiBmaW5hbGx5IGFuIGFz
c2VydCB3aWxsIHRyaXAgd2hlbiBnZW54bWwgYXR0ZW1wdHMgdG8gcGFjayB0aGUKPiBTVVJGQUNF
X1NUQVRFLiBTbyB3ZSBwaWNrIGEgc2FmZSBsaW1pdCB0byBhdm9pZCB0aGUgWCBzZXJ2ZXIKPiBm
cm9tIGNyYXNoaW5nIChvciBwb3RlbnRpYWxseSBtaXNiZWhhdmluZyBpZiB0aGUgZ2VueG1sIGFz
c2VydHMKPiBhcmUgY29tcGlsZWQgb3V0KS4KPgo+IFJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVy
IDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTAxODcKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMgfCAxOCArKysrKysrKysrKystLS0tLS0KPiAg
MSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggYTJlNGVmOTM4ZDUzLi5hNDk1ZmQy
ZGNhYTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTE1Nzgz
LDE2ICsxNTc4MywyMiBAQCBpbnQgaW50ZWxfbW9kZXNldF9pbml0KHN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYpCj4gIAkJfQo+ICAJfQo+ICAKPiAtCS8qIG1heGltdW0gZnJhbWVidWZmZXIgZGltZW5z
aW9ucyAqLwo+IC0JaWYgKElTX0dFTihkZXZfcHJpdiwgMikpIHsKPiAtCQlkZXYtPm1vZGVfY29u
ZmlnLm1heF93aWR0aCA9IDIwNDg7Cj4gLQkJZGV2LT5tb2RlX2NvbmZpZy5tYXhfaGVpZ2h0ID0g
MjA0ODsKPiArCS8qCj4gKwkgKiBNYXhpbXVtIGZyYW1lYnVmZmVyIGRpbWVuc2lvbnMsIGNob3Nl
biB0byBtYXRjaAo+ICsJICogdGhlIG1heGltdW0gcmVuZGVyIGVuZ2luZSBzdXJmYWNlIHNpemUg
b24gZ2VuNCsuCj4gKwkgKi8KPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDcpIHsKPiAr
CQlkZXYtPm1vZGVfY29uZmlnLm1heF93aWR0aCA9IDE2Mzg0Owo+ICsJCWRldi0+bW9kZV9jb25m
aWcubWF4X2hlaWdodCA9IDE2Mzg0Owo+ICsJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDQpIHsKPiArCQlkZXYtPm1vZGVfY29uZmlnLm1heF93aWR0aCA9IDgxOTI7Cj4gKwkJZGV2
LT5tb2RlX2NvbmZpZy5tYXhfaGVpZ2h0ID0gODE5MjsKPiAgCX0gZWxzZSBpZiAoSVNfR0VOKGRl
dl9wcml2LCAzKSkgewo+ICAJCWRldi0+bW9kZV9jb25maWcubWF4X3dpZHRoID0gNDA5NjsKPiAg
CQlkZXYtPm1vZGVfY29uZmlnLm1heF9oZWlnaHQgPSA0MDk2Owo+ICAJfSBlbHNlIHsKPiAtCQlk
ZXYtPm1vZGVfY29uZmlnLm1heF93aWR0aCA9IDgxOTI7Cj4gLQkJZGV2LT5tb2RlX2NvbmZpZy5t
YXhfaGVpZ2h0ID0gODE5MjsKPiArCQlkZXYtPm1vZGVfY29uZmlnLm1heF93aWR0aCA9IDIwNDg7
Cj4gKwkJZGV2LT5tb2RlX2NvbmZpZy5tYXhfaGVpZ2h0ID0gMjA0ODsKPiAgCX0KPiAgCj4gIAlp
ZiAoSVNfSTg0NUcoZGV2X3ByaXYpIHx8IElTX0k4NjVHKGRldl9wcml2KSkgewoKU2hvdWxkIGJl
IGdvb2QgZW5vdWdoLCBsZXRzIG5vdCBnbyB0b28gY3JhenkuIDopCgpGb3Igd2hvbGUgc2VyaWVz
OgoKUmV2aWV3ZWQtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51
eC5pbnRlbC5jb20+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
