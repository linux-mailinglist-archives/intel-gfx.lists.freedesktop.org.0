Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84ED599620
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 16:17:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CCAC6E4E3;
	Thu, 22 Aug 2019 14:17:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97B636E4F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 14:17:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 05:57:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,416,1559545200"; d="scan'208";a="196242281"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 22 Aug 2019 05:57:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190821063236.19705-5-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190821063236.19705-1-animesh.manna@intel.com>
 <20190821063236.19705-5-animesh.manna@intel.com>
Date: Thu, 22 Aug 2019 15:57:33 +0300
Message-ID: <87y2zlbbnm.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 04/15] drm/i915/dsb: Added enum for reg
 write capability.
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

T24gV2VkLCAyMSBBdWcgMjAxOSwgQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5j
b20+IHdyb3RlOgo+IERTQiBjYW4gYWNjZXNzIHNwZWNpZmljIHJlZ2lzdGVyLCBUbyBpZGVudGlm
eSB0aG9zZSByZWdpc3Rlcgo+IHdoaWNoIGNhbiBiZSB3cml0dGVuIHRocm91Z2ggRFNCLCBlbnVt
IHJlZ193cml0ZV9jYXAgaXMgYWRkZWQKPiB0byBob2xkIHRoZSBjYXBhYmlsaXR5LgoKVGhpcyBw
YXRjaCBhbG9uZSBpbmNyZWFzZXMgaTkxNS5rbyBzaXplIGJ5IGFib3V0IDIwMGsuCgpPYnZpb3Vz
bHksIG5vLgoKV2UndmUgY29uc2lkZXJlZCBtYWtpbmcgcmVnIGEgYml0ZmllbGQgd2l0aCAzMSBi
aXRzIGZvciBvZmZzZXQgYW5kIDEgYml0CnRvIGRlbm90ZSBkaXNwbGF5IHVuY29yZS4gTWlnaHQg
YmUgd29ydGh3aGlsZS4gQnV0IEkgZG9uJ3QgdGhpbmsgdGhpcyBpcwp0aGUgd2F5IHRvIGdvIGhl
cmUuCgpCUiwKSmFuaS4KCj4KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4KPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgo+IC0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgMTMgKysrKysrKysrKysrLQo+ICAxIGZp
bGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oCj4gaW5kZXggMmFiZDE5OTA5M2M1Li5jNGExNzAzNGQ0ZGMgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBAQCAtMTc4LDExICsxNzgsMjIgQEAKPiAgICovCj4gICNk
ZWZpbmUgUkVHX0ZJRUxEX0dFVChfX21hc2ssIF9fdmFsKQkoKHUzMilGSUVMRF9HRVQoX19tYXNr
LCBfX3ZhbCkpCj4gIAo+ICsvKgo+ICsgKiBBZGRlZCBlbnVtIHRvIGhvbGQgdGhlIGNhcGFiaWxp
dHkgZm9yIHRob3NlIHJlZ2lzdGVycyB3aGljaCBjYW4gYmUgd3JpdHRlbgo+ICsgKiB0aHJvdWdo
IERTQi4KPiArICovCj4gK2VudW0gcmVnX3dyaXRlX2NhcCB7Cj4gKwlNTUlPX1dSSVRFLAo+ICsJ
RFNCX1dSSVRFLAo+ICsJRFNCX0lOREVYX1dSSVRFCj4gK307Cj4gKwo+ICB0eXBlZGVmIHN0cnVj
dCB7Cj4gIAl1MzIgcmVnOwo+ICsJZW51bSByZWdfd3JpdGVfY2FwIGNhcDsKPiAgfSBpOTE1X3Jl
Z190Owo+ICAKPiAtI2RlZmluZSBfTU1JTyhyKSAoKGNvbnN0IGk5MTVfcmVnX3QpeyAucmVnID0g
KHIpIH0pCj4gKyNkZWZpbmUgX01NSU8ociwgLi4uKSAoKGNvbnN0IGk5MTVfcmVnX3QpeyAucmVn
ID0gKHIpLCAjI19fVkFfQVJHU19ffSkKPiAgCj4gICNkZWZpbmUgSU5WQUxJRF9NTUlPX1JFRyBf
TU1JTygwKQoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50
ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
