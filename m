Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B001EEF39
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 23:20:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1191C6E8A4;
	Mon,  4 Nov 2019 22:20:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C49E86E8A4
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2019 22:20:34 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 14:20:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,268,1569308400"; d="scan'208";a="205309899"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga006.jf.intel.com with ESMTP; 04 Nov 2019 14:20:33 -0800
Date: Mon, 4 Nov 2019 14:23:16 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191104222315.GC32264@intel.com>
References: <20191104141439.26312-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104141439.26312-1-jani.nikula@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915/dsc: make parameter arrays
 const
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

T24gTW9uLCBOb3YgMDQsIDIwMTkgYXQgMDQ6MTQ6MzZQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gTm8gbmVlZCBmb3IgdGhlbSB0byBiZSBtdXRhYmxlLgo+IAo+IENjOiBNYW5hc2kgTmF2
YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CgpBZ3JlZSB0aGF0IHRoZXNlIHBhcmFtcyBhcmUg
Y29uc3RhbnRzCgpSZXZpZXdlZC1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGlu
dGVsLmNvbT4KCk1hbmFzaQoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92ZHNjLmMgfCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92ZHNjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zk
c2MuYwo+IGluZGV4IDljYjM2Zjg1NWYwNy4uNzYzZjFkNzIwOGU5IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMKPiBAQCAtMzMsNyArMzMsNyBAQCBlbnVt
IENPTFVNTl9JTkRFWF9CUEMgewo+ICAjZGVmaW5lIERTQ19TVVBQT1JURURfVkVSU0lPTl9NSU4J
CTEKPiAgCj4gIC8qIEZyb20gRFNDX3YxLjExIHNwZWMsIHJjX3BhcmFtZXRlcl9TZXQgc3ludGF4
IGVsZW1lbnQgdHlwaWNhbGx5IGNvbnN0YW50ICovCj4gLXN0YXRpYyB1MTYgcmNfYnVmX3RocmVz
aFtdID0gewo+ICtzdGF0aWMgY29uc3QgdTE2IHJjX2J1Zl90aHJlc2hbXSA9IHsKPiAgCTg5Niwg
MTc5MiwgMjY4OCwgMzU4NCwgNDQ4MCwgNTM3NiwgNjI3MiwgNjcyMCwgNzE2OCwgNzYxNiwKPiAg
CTc3NDQsIDc4NzIsIDgwMDAsIDgwNjQKPiAgfTsKPiBAQCAtNTMsNyArNTMsNyBAQCBzdHJ1Y3Qg
cmNfcGFyYW1ldGVycyB7Cj4gICAqIFNlbGVjdGVkIFJhdGUgQ29udHJvbCBSZWxhdGVkIFBhcmFt
ZXRlciBSZWNvbW1lbmRlZCBWYWx1ZXMKPiAgICogZnJvbSBEU0NfdjEuMTEgc3BlYyAmIEMgTW9k
ZWwgcmVsZWFzZTogRFNDX21vZGVsXzIwMTYxMjEyCj4gICAqLwo+IC1zdGF0aWMgc3RydWN0IHJj
X3BhcmFtZXRlcnMgcmNfcGFyYW1zW11bTUFYX0NPTFVNTl9JTkRFWF0gPSB7Cj4gK3N0YXRpYyBj
b25zdCBzdHJ1Y3QgcmNfcGFyYW1ldGVycyByY19wYXJhbXNbXVtNQVhfQ09MVU1OX0lOREVYXSA9
IHsKPiAgewo+ICAJLyogNkJQUC84QlBDICovCj4gIAl7IDc2OCwgMTUsIDYxNDQsIDMsIDEzLCAx
MSwgMTEsIHsKPiAtLSAKPiAyLjIwLjEKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
