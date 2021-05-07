Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC339376B2B
	for <lists+intel-gfx@lfdr.de>; Fri,  7 May 2021 22:33:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49CBC6E570;
	Fri,  7 May 2021 20:33:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from srv6.fidu.org (srv6.fidu.org [159.69.62.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1ABA6E570;
 Fri,  7 May 2021 20:33:08 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by srv6.fidu.org (Postfix) with ESMTP id 1621FC800A2;
 Fri,  7 May 2021 22:33:07 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at srv6.fidu.org
Received: from srv6.fidu.org ([127.0.0.1])
 by localhost (srv6.fidu.org [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id OmTbmMgJ_Wnx; Fri,  7 May 2021 22:33:06 +0200 (CEST)
Received: from [IPv6:2003:e3:7f12:f200:d51b:e97d:b8e4:23b2]
 (p200300E37f12F200d51be97dB8e423B2.dip0.t-ipconnect.de
 [IPv6:2003:e3:7f12:f200:d51b:e97d:b8e4:23b2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: wse@tuxedocomputers.com)
 by srv6.fidu.org (Postfix) with ESMTPSA id 53E38C800A1;
 Fri,  7 May 2021 22:33:06 +0200 (CEST)
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20210506172325.1995964-1-wse@tuxedocomputers.com>
 <20210507084903.28877-1-wse@tuxedocomputers.com>
 <20210507084903.28877-2-wse@tuxedocomputers.com> <YJV9HA5IuQW+KWOf@intel.com>
From: Werner Sembach <wse@tuxedocomputers.com>
Message-ID: <d3e95927-1b6e-d508-9677-fbf213921b49@tuxedocomputers.com>
Date: Fri, 7 May 2021 22:33:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YJV9HA5IuQW+KWOf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 1/3] drm/i915/display: New function to
 avoid duplicate code in upcomming commits
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
Cc: airlied@linux.ie, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMDcuMDUuMjEgdW0gMTk6NDcgc2NocmllYiBWaWxsZSBTeXJqw6Rsw6Q6Cgo+IE9uIEZyaSwg
TWF5IDA3LCAyMDIxIGF0IDEwOjQ5OjAxQU0gKzAyMDAsIFdlcm5lciBTZW1iYWNoIHdyb3RlOgo+
PiBNb3ZlcyBzb21lIGNoZWNrcyB0aGF0IGxhdGVyIHdpbGwgYmUgcGVyZm9ybWVkIDIgdGltZXMg
dG8gYW4gb3duIGZ1bmN0aW9uLgo+PiBUaGlzIGF2b2lkcyBkdXBsaWNhdGUgY29kZSBsYXRlciBv
bi4KPj4KPj4gU2lnbmVkLW9mZi1ieTogV2VybmVyIFNlbWJhY2ggPHdzZUB0dXhlZG9jb21wdXRl
cnMuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRt
aS5jIHwgNDEgKysrKysrKysrKysrKystLS0tLS0tLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAyNiBp
bnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9oZG1pLmMKPj4gaW5kZXggNDZkZTU2YWYzM2RiLi41NzZkM2Q5MTBkMDYg
MTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5j
Cj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCj4+IEBA
IC0xODYxLDYgKzE4NjEsMzEgQEAgc3RhdGljIGludCBpbnRlbF9oZG1pX3BvcnRfY2xvY2soaW50
IGNsb2NrLCBpbnQgYnBjKQo+PiAgCXJldHVybiBjbG9jayAqIGJwYyAvIDg7Cj4+ICB9Cj4+ICAK
Pj4gK3N0YXRpYyBlbnVtIGRybV9tb2RlX3N0YXR1cwo+PiAraW50ZWxfaGRtaV9tb2RlX2Nsb2Nr
X3ZhbGlkKHN0cnVjdCBpbnRlbF9oZG1pICpoZG1pLCBpbnQgY2xvY2ssIGJvb2wgaGFzX2hkbWlf
c2luaykKPj4gK3sKPj4gKwlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gaW50ZWxfaGRtaV90b19k
ZXYoaGRtaSk7Cj4+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkx
NShkZXYpOwo+PiArCWVudW0gZHJtX21vZGVfc3RhdHVzIHN0YXR1czsKPj4gKwo+PiArCS8qIGNo
ZWNrIGlmIHdlIGNhbiBkbyA4YnBjICovCj4+ICsJc3RhdHVzID0gaGRtaV9wb3J0X2Nsb2NrX3Zh
bGlkKGhkbWksIGNsb2NrLCB0cnVlLCBoYXNfaGRtaV9zaW5rKTsKPj4gKwo+PiArCWlmIChoYXNf
aGRtaV9zaW5rKSB7Cj4+ICsJCS8qIGlmIHdlIGNhbid0IGRvIDhicGMgd2UgbWF5IHN0aWxsIGJl
IGFibGUgdG8gZG8gMTJicGMgKi8KPj4gKwkJaWYgKHN0YXR1cyAhPSBNT0RFX09LICYmICFIQVNf
R01DSChkZXZfcHJpdikpCj4+ICsJCQlzdGF0dXMgPSBoZG1pX3BvcnRfY2xvY2tfdmFsaWQoaGRt
aSwgY2xvY2sgKiAzIC8gMiwKPiBTZWVtcyB3ZSd2ZSBsb3N0IGludGVsX2hkbWlfcG9ydF9jbG9j
aygpIGhlcmUgc29tZWhvdy4KClllcywgSSB0aGluayBpdCBoYXBwZW5lZCB3aGVuIEkgcmViYXNl
ZCBmcm9tIHRvcnZhbGRzL21hc3RlciB0byBkcm0tdGlwL2RybS10aXAuCgpUaGFua3MgZm9yIHBv
aW50aW5nIGl0IG91dC4gRml4ZWQuCgo+Cj4+ICsJCQkJCQkgICAgICAgdHJ1ZSwgaGFzX2hkbWlf
c2luayk7Cj4+ICsKPj4gKwkJLyogaWYgd2UgY2FuJ3QgZG8gOCwxMmJwYyB3ZSBtYXkgc3RpbGwg
YmUgYWJsZSB0byBkbyAxMGJwYyAqLwo+PiArCQlpZiAoc3RhdHVzICE9IE1PREVfT0sgJiYgSU5U
RUxfR0VOKGRldl9wcml2KSA+PSAxMSkKPj4gKwkJCXN0YXR1cyA9IGhkbWlfcG9ydF9jbG9ja192
YWxpZChoZG1pLCBjbG9jayAqIDUgLyA0LAo+IEFsc28gaGVyZS4KPgo+PiArCQkJCQkJICAgICAg
IHRydWUsIGhhc19oZG1pX3NpbmspOwo+PiArCX0KPj4gKwo+PiArCXJldHVybiBzdGF0dXM7Cj4+
ICt9Cj4+ICsKPj4gIHN0YXRpYyBlbnVtIGRybV9tb2RlX3N0YXR1cwo+PiAgaW50ZWxfaGRtaV9t
b2RlX3ZhbGlkKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCj4+ICAJCSAgICAgIHN0
cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlKQo+PiBAQCAtMTg5MSwyMSArMTkxNiw3IEBAIGlu
dGVsX2hkbWlfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAo+PiAg
CWlmIChkcm1fbW9kZV9pc180MjBfb25seSgmY29ubmVjdG9yLT5kaXNwbGF5X2luZm8sIG1vZGUp
KQo+PiAgCQljbG9jayAvPSAyOwo+PiAgCj4+IC0JLyogY2hlY2sgaWYgd2UgY2FuIGRvIDhicGMg
Ki8KPj4gLQlzdGF0dXMgPSBoZG1pX3BvcnRfY2xvY2tfdmFsaWQoaGRtaSwgaW50ZWxfaGRtaV9w
b3J0X2Nsb2NrKGNsb2NrLCA4KSwKPj4gLQkJCQkgICAgICAgdHJ1ZSwgaGFzX2hkbWlfc2luayk7
Cj4+IC0KPj4gLQlpZiAoaGFzX2hkbWlfc2luaykgewo+PiAtCQkvKiBpZiB3ZSBjYW4ndCBkbyA4
YnBjIHdlIG1heSBzdGlsbCBiZSBhYmxlIHRvIGRvIDEyYnBjICovCj4+IC0JCWlmIChzdGF0dXMg
IT0gTU9ERV9PSyAmJiAhSEFTX0dNQ0goZGV2X3ByaXYpKQo+PiAtCQkJc3RhdHVzID0gaGRtaV9w
b3J0X2Nsb2NrX3ZhbGlkKGhkbWksIGludGVsX2hkbWlfcG9ydF9jbG9jayhjbG9jaywgMTIpLAo+
PiAtCQkJCQkJICAgICAgIHRydWUsIGhhc19oZG1pX3NpbmspOwo+PiAtCj4+IC0JCS8qIGlmIHdl
IGNhbid0IGRvIDgsMTJicGMgd2UgbWF5IHN0aWxsIGJlIGFibGUgdG8gZG8gMTBicGMgKi8KPj4g
LQkJaWYgKHN0YXR1cyAhPSBNT0RFX09LICYmIERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMSkK
Pj4gLQkJCXN0YXR1cyA9IGhkbWlfcG9ydF9jbG9ja192YWxpZChoZG1pLCBpbnRlbF9oZG1pX3Bv
cnRfY2xvY2soY2xvY2ssIDEwKSwKPj4gLQkJCQkJCSAgICAgICB0cnVlLCBoYXNfaGRtaV9zaW5r
KTsKPj4gLQl9Cj4+ICsJc3RhdHVzID0gaW50ZWxfaGRtaV9tb2RlX2Nsb2NrX3ZhbGlkKGhkbWks
IGNsb2NrLCBoYXNfaGRtaV9zaW5rKTsKPj4gIAlpZiAoc3RhdHVzICE9IE1PREVfT0spCj4+ICAJ
CXJldHVybiBzdGF0dXM7Cj4+ICAKPj4gLS0gCj4+IDIuMjUuMQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
