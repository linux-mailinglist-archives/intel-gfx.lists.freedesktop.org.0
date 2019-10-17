Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FE7DA6D7
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 09:58:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E624D6E488;
	Thu, 17 Oct 2019 07:58:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBAAD6E488
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 07:58:25 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 00:58:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,307,1566889200"; d="scan'208";a="221044309"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga004.fm.intel.com with ESMTP; 17 Oct 2019 00:58:23 -0700
Date: Thu, 17 Oct 2019 13:28:29 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20191017075828.GE4730@intel.com>
References: <20191010145127.7487-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010145127.7487-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Shrink eDRAM ways/sets arrays
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0xMC0xMCBhdCAxNzo1MToyMyArMDMwMCwgVmlsbGUgU3lyamFsYSB3cm90ZToKPiBG
cm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IAo+
IE1ha2UgdGhlIHdheXMvc2V0cyBhcnJheXMgc3RhdGljIGNvc250IHU4IHRvIHNocmluayB0aGlu
Z3MgYSBiaXQuCj4gCj4gICAgIHRleHQJICAgZGF0YQkgICAgYnNzCSAgICBkZWMJICAgIGhleAlm
aWxlbmFtZQo+IC0gIDIzOTM1CSAgICA2MjkJICAgIDEyOAkgIDI0NjkyCSAgIDYwNzQJaTkxNV9k
cnYubwo+ICsgIDIzODE4CSAgICA2MjkJICAgIDEyOAkgIDI0NTc1CSAgIDVmZmYJaTkxNV9kcnYu
bwo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgfCA0
ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiBpbmRleCBmMDJhMzQ3MjIyMTcuLjBiOGMxM2Fl
NDg1NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+IEBAIC0xMDczLDggKzEwNzMsOCBA
QCBpbnRlbF9nZXRfZHJhbV9pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
PiAgCj4gIHN0YXRpYyB1MzIgZ2VuOV9lZHJhbV9zaXplX21iKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwgdTMyIGNhcCkKPiAgewo+IC0JY29uc3QgdW5zaWduZWQgaW50IHdheXNb
OF0gPSB7IDQsIDgsIDEyLCAxNiwgMTYsIDE2LCAxNiwgMTYgfTsKPiAtCWNvbnN0IHVuc2lnbmVk
IGludCBzZXRzWzRdID0geyAxLCAxLCAyLCAyIH07Cj4gKwlzdGF0aWMgY29uc3QgdTggd2F5c1s4
XSA9IHsgNCwgOCwgMTIsIDE2LCAxNiwgMTYsIDE2LCAxNiB9Owo+ICsJc3RhdGljIGNvbnN0IHU4
IHNldHNbNF0gPSB7IDEsIDEsIDIsIDIgfTsKQXNraW5nIGZvciBteSB1bmRlcnN0YW5kaW5nLiB1
bnNpZ25lZCBpbnQgLT4gdTggbWFrZSBzZW5zZSB0byBzaHJpbmsgdGhlCnNpemUuIENvdWxkIHlv
dSBwbGVhc2UgYWRkIHJlYXNvbmluZyBmb3IgYWRkaW5nIHN0YXRpYz8gbW92aW5nIGl0IGludG8K
ZGF0YSBzZWdtZW50IGhlbmNlIHJlZHVjaW5nIHRoZSBzdGFjaz8KCi1SYW0KPiAgCj4gIAlyZXR1
cm4gRURSQU1fTlVNX0JBTktTKGNhcCkgKgo+ICAJCXdheXNbRURSQU1fV0FZU19JRFgoY2FwKV0g
Kgo+IC0tIAo+IDIuMjEuMAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
