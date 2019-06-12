Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A39142E49
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 20:03:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E7A689811;
	Wed, 12 Jun 2019 18:03:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B744789811
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 18:03:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jun 2019 11:03:53 -0700
X-ExtLoop1: 1
Received: from cataylo2-ubuntu18-10.jf.intel.com (HELO [10.7.199.54])
 ([10.7.199.54])
 by orsmga002.jf.intel.com with ESMTP; 12 Jun 2019 11:03:53 -0700
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190610222726.18808-1-matthew.d.roper@intel.com>
From: Clinton Taylor <Clinton.A.Taylor@intel.com>
Message-ID: <d6411e0c-b530-dce6-dabc-c6d940ff359a@intel.com>
Date: Wed, 12 Jun 2019 10:03:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610222726.18808-1-matthew.d.roper@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add Wa_1409120013:icl,ehl
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

Ck9uIDYvMTAvMTkgMzoyNyBQTSwgTWF0dCBSb3BlciB3cm90ZToKPiBUaGlzIGNoaWNrZW4gYml0
IHNob3VsZCBiZSBzZXQgYmVmb3JlIGVuYWJsaW5nIEZCQyB0byBhdm9pZCBzY3JlZW4KPiBjb3Jy
dXB0aW9uIHdoZW4gdGhlIHBsYW5lIHNpemUgaGFzIG9kZCB2ZXJ0aWNhbCBhbmQgaG9yaXpvbnRh
bAo+IGRpbWVuc2lvbnMuICBJdCBpcyBzYWZlIHRvIGxlYXZlIHRoZSBiaXQgc2V0IGV2ZW4gd2hl
biBGQkMgaXMgZGlzYWJsZWQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3
LmQucm9wZXJAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaCAgfCAyICsrCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9mYmMuYyB8IDQgKysr
Kwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaAo+IGluZGV4IDdhMjY3NjZiYTg0ZC4uMmFmMDQ1Njg0NDllIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCj4gQEAgLTMxNTAsNiArMzE1MCw4IEBAIGVudW0gaTkxNV9wb3dlcl93
ZWxsX2lkIHsKPiAgIAo+ICAgLyogRnJhbWVidWZmZXIgY29tcHJlc3Npb24gZm9yIElyb25sYWtl
ICovCj4gICAjZGVmaW5lIElMS19EUEZDX0NCX0JBU0UJX01NSU8oMHg0MzIwMCkKPiArI2RlZmlu
ZSBJTEtfRFBGQ19DSElDS0VOCV9NTUlPKDB4NDMyMjQpCkR1cGxpY2F0ZSBkZWZpbmUsIDB4NDMy
MjQgaXMgYWxyZWFkeSBkZWZpbmVkIH4xMiBsaW5lcyBsb3dlci4KPiArI2RlZmluZSAgIElMS19E
UEZDX0NISUNLRU5fU1BBUkUxNAlSRUdfQklUKDE0KQoKQW55IHdheSB3ZSBjYW4gaW5jb3Jwb3Jh
dGUgQ09NUF9EVU1NWV9QSVhFTCBpbnRvIHRoaXMgYml0IGRlZmluaXRpb24/CgotQ2xpbnQKCgo+
ICAgI2RlZmluZSBJTEtfRFBGQ19DT05UUk9MCV9NTUlPKDB4NDMyMDgpCj4gICAjZGVmaW5lICAg
RkJDX0NUTF9GQUxTRV9DT0xPUgkoMSA8PCAxMCkKPiAgIC8qIFRoZSBiaXQgMjgtOCBpcyByZXNl
cnZlZCAqLwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9mYmMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2ZiYy5jCj4gaW5kZXggNTY3OWYyZmZmYjdjLi44
NzVhZDgzYzNkMzIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZmJj
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9mYmMuYwo+IEBAIC0zNDQsNiAr
MzQ0LDEwIEBAIHN0YXRpYyB2b2lkIGdlbjdfZmJjX2FjdGl2YXRlKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKPiAgIAkJCSAgIEhTV19GQkNRX0RJUyk7Cj4gICAJfQo+ICAgCj4g
KwlpZiAoSVNfR0VOKGRldl9wcml2LCAxMSkpCj4gKwkJLyogV2FfMTQwOTEyMDAxMzppY2wsZWhs
ICovCj4gKwkJSTkxNV9XUklURShJTEtfRFBGQ19DSElDS0VOLCBJTEtfRFBGQ19DSElDS0VOX1NQ
QVJFMTQpOwo+ICsKPiAgIAlJOTE1X1dSSVRFKElMS19EUEZDX0NPTlRST0wsIGRwZmNfY3RsIHwg
RFBGQ19DVExfRU4pOwo+ICAgCj4gICAJaW50ZWxfZmJjX3JlY29tcHJlc3MoZGV2X3ByaXYpOwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
