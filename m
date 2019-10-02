Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0BFFC8B53
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 16:33:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BD5B6E040;
	Wed,  2 Oct 2019 14:33:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58B506E040
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 14:33:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 07:33:34 -0700
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="198226806"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 07:33:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20191001163555.24356-1-kai.vehmanen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191001163555.24356-1-kai.vehmanen@linux.intel.com>
Date: Wed, 02 Oct 2019 17:33:30 +0300
Message-ID: <87sgob9pz9.fsf@intel.com>
MIME-Version: 1.0
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
Cc: tiwai@suse.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAwMSBPY3QgMjAxOSwgS2FpIFZlaG1hbmVuIDxrYWkudmVobWFuZW5AbGludXguaW50
ZWwuY29tPiB3cm90ZToKPiBPbiBnZW4xMC8xMSBwbGF0Zm9ybXMsIGRyaXZlciBtdXN0IHNldCB0
aGUgZW5hYmxlIGJpdCBvZiBBVURfUElOX0JVRl9DVEwKPiBhcyBwYXJ0IG9mIGF1ZGlvIHBvd2Vy
IHVwIHNlcXVlbmNlLgo+Cj4gRmFpbGluZyB0byBkbyB0aGlzIHJlc3VsdGVkIGluIGVycm9ycyBk
dXJpbmcgZGlzcGxheSBhdWRpbyBjb2RlYyBwcm9iZSwKPiBhbmQgZmFpbHVyZXMgZHVyaW5nIHJl
c3VtZSBmcm9tIHN1c3BlbmQuCj4KPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMjE0Cj4gU2lnbmVkLW9mZi1ieTogS2FpIFZlaG1hbmVu
IDxrYWkudmVobWFuZW5AbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMgfCA1ICsrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmggICAgICAgICAgICB8IDIgKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA3IGlu
c2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2F1ZGlvLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlv
LmMKPiBpbmRleCA1NDYzOGQ5OWUwMjEuLmE3MzFhZjdhZGEwOCAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMKPiBAQCAtODYyLDYgKzg2MiwxMSBAQCBz
dGF0aWMgdW5zaWduZWQgbG9uZyBpOTE1X2F1ZGlvX2NvbXBvbmVudF9nZXRfcG93ZXIoc3RydWN0
IGRldmljZSAqa2RldikKPiAgCQkvKiBGb3JjZSBDRENMSyB0byAyKkJDTEsgYXMgbG9uZyBhcyB3
ZSBuZWVkIGF1ZGlvIHBvd2VyZWQuICovCj4gIAkJaWYgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYp
IHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKQo+ICAJCQlnbGtfZm9yY2VfYXVkaW9fY2RjbGso
ZGV2X3ByaXYsIHRydWUpOwo+ICsKPiArCQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA9PSAxMSB8
fCBJTlRFTF9HRU4oZGV2X3ByaXYpID09IDEwKQo+ICsJCQlJOTE1X1dSSVRFKEFVRF9QSU5fQlVG
X0NUTCwKPiArCQkJCSAgIChJOTE1X1JFQUQoQVVEX1BJTl9CVUZfQ1RMKSB8Cj4gKwkJCQkgICAg
QVVEX1BJTl9CVUZfRU5BQkxFKSk7Cj4gIAl9Cj4gIAo+ICAJcmV0dXJuIHJldDsKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmgKPiBpbmRleCAwNThhYTVjYThiNzMuLmRhZmY5MDU4ZjBlOCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IEBAIC05MTMzLDYgKzkxMzMsOCBAQCBlbnVtIHsKPiAg
I2RlZmluZSAgIFNLTF9BVURfQ09ERUNfV0FLRV9TSUdOQUwJCSgxIDw8IDE1KQo+ICAKPiAgI2Rl
ZmluZSBBVURfRlJFUV9DTlRSTAkJCV9NTUlPKDB4NjU5MDApCj4gKyNkZWZpbmUgQVVEX1BJTl9C
VUZfQ1RMCQlfTU1JTygweDQ4NDE0KQo+ICsjZGVmaW5lICAgQVVEX1BJTl9CVUZfRU5BQkxFCQlC
SVQoMzEpCgpEcml2ZS1ieSBjb21tZW50LCBwbGVhc2UgdXNlIFJFR19CSVQoKSBpbiBpOTE1X3Jl
Zy5oLiBCSVQgYmVjb21lcyBVTAp3aGljaCBpbiB0dXJuIGNhbiBjYXVzZSB0cm91YmxlIGxhdGVy
IG9uLgoKQlIsCkphbmkuCgoKPiAgCj4gIC8qCj4gICAqIEhTVyAtIElDTCBwb3dlciB3ZWxscwoK
LS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
