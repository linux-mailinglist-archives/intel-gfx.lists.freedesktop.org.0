Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 972ECC4B6C
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 12:29:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 820506E8D8;
	Wed,  2 Oct 2019 10:29:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EACCF6E8D8
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 10:29:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 03:29:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="391539770"
Received: from zeliteleevi.tm.intel.com ([10.237.55.130])
 by fmsmga005.fm.intel.com with ESMTP; 02 Oct 2019 03:29:20 -0700
Date: Wed, 2 Oct 2019 13:29:19 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@zeliteleevi
To: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <157000938845.1880.14965368731746874502@skylake-alporthouse-com>
Message-ID: <alpine.DEB.2.21.1910021315591.16459@zeliteleevi>
References: <20191001163555.24356-1-kai.vehmanen@linux.intel.com>
 <157000938845.1880.14965368731746874502@skylake-alporthouse-com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
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
Cc: Jani Nikula <jani.nikula@intel.com>, tiwai@suse.de,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGV5LAoKT24gV2VkLCAyIE9jdCAyMDE5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cgo+ID4gKyAgICAg
ICAgICAgICAgIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID09IDExIHx8IElOVEVMX0dFTihkZXZf
cHJpdikgPT0gMTApCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBJOTE1X1dSSVRFKEFVRF9Q
SU5fQlVGX0NUTCwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKEk5MTVf
UkVBRChBVURfUElOX0JVRl9DVEwpIHwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIEFVRF9QSU5fQlVGX0VOQUJMRSkpOwo+IAo+IEZyb20gdGhlIG9ic2VydmF0aW9uIHRo
YXQgdGhpcyByZWR1Y2VzIHRoZSBtb2R1bGUgcmVsb2FkIHRpbWUgZnJvbSAxOTZzCj4gdG8gMnMs
IEknZCBzYXkgdGhpcyB3b3Jrcy4KCnllcyBpbmRlZWQsIHRoZSBDSSByZXN1bHRzIGxvb2sgdmVy
eSBwcm9taXNpbmcuIFRoZSBwcm9ibGVtIGRvZXMgbm90IG9jY3VyIApldmVyeSB0aW1lLCBzbyB0
aGlzIGhhcyBiZWVuIGJ1Z2dpbmcgdXMgZm9yIGEgbG9uZyB0aW1lLCBidXQgaW4gCnNjZW5hcmlv
cyBhbmQgc3lzdGVtcyB3aGVyZSB0aGlzIGhhcHBlbnMsIHRoZSBwYXRjaCBzZWVtcyB0byBoZWxw
LgoKVXBvbiBmdXJ0aGVyIGludmVzdGlnYXRpb24sIEkgYmVsaWV2ZSB0aGlzIG5lZWRzIHRvIGJl
IGFwcGxpZWQgb24gR0xLIGFzIAp3ZWxsLiBUaGlzIHdvdWxkIGV4cGxhaW4gc29tZSBvZiB0aGUg
b3RoZXIgc2lnaHRpbmdzLiBFLmcuIGhlcmUncyBvbmUKZnJvbSBmcm9tIGF1ZGlvL1NPRiBDSSBm
cm9tIHRoaXMgd2VlazoKaHR0cHM6Ly9zb2YtY2kuMDEub3JnL3NvZnByL1BSMTg2NC9idWlsZDMz
NjYvZGV2aWNldGVzdC9HTEtfQk9CX0RBNzIxOS92ZXJpZnktcGNtLWxpc3Quc2gvZG1lc2cudHh0
CgpJJ2xsIHVwZGF0ZSBib3RoIHBhdGNoZXMgdG8gaW5jbHVkZSBHTEsuCgo+IERvIHlvdSBuZWVk
IHRvIGRpc2FibGUgdGhlIGJpdCBsYXRlcj8KCk5vdyB0aGF0IGlzIHRyaWNraWVyLiBJJ20gc3Rp
bGwgZGlnZ2luZyBtb3JlIGluZm8gYWJvdXQgdGhpcy4gQmFzZWQgb24gCmluZm8gSSBoYXZlLCB0
byBhdm9pZCB1bnNvbGljaXRlZCB3YWtlcyBmcm9tIGk5MTUgYXVkaW8gY29kZWMsIHdlIHNob3Vs
ZCAKY2xlYXIgdGhlIGJpdCBhZnRlciB3ZSBoYXZlIHR1cm5lZCBvZmYgaTkxNSBhdWRpbyBwb3dl
ciBkb21haW4uIEluIApwcmFjdGlzZSBvbnN5c3RlbXMgSSBoYXZlIGZvciB0ZXN0aW5nLCB0aGlz
IHJlc3VsdHMgaW4gZnJlcXVlbnQgcHJvYmUgCmZhaWx1cmVzLCBzbyBJIGxlZnQgdGhpcyBvdXQg
ZnJvbSB0aGUgcGF0Y2guIEkgd2lsbCB0cnkgdG8gc2VhcmNoIGZvciBtb3JlIAppbmZvIG9uIHRo
aXMgKGVzcGVjaWFsbHkgaWYgd2UgZ2V0IHN0aWxsIHNvbWUgZmFpbHVyZXMgd2l0aCB0aGUgcGF0
Y2gpLgoKQnV0IGVuYWJsaW5nIGl0IGV2ZXJ5IHRpbWUgZG9lcyBzZWVtIHRvIGhlbHAgYW5kIHNv
IGZhciBoYXMgbm90IGNhdXNlZCBhbnkgCnJlZ3Jlc3Npb25zIGVsc2V3aGVyZSwgc28gYXQgbGVh
c3QgdGhpcyBwYXJ0IHNlZW1zIGdvb2QuCgpCciwgS2FpCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
