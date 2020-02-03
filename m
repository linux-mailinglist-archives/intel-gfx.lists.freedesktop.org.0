Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DBE150731
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 14:29:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 227406EBF9;
	Mon,  3 Feb 2020 13:29:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F1B26EBF9
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 13:29:11 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 05:29:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,398,1574150400"; d="scan'208";a="337187743"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 03 Feb 2020 05:29:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 Feb 2020 15:29:07 +0200
Date: Mon, 3 Feb 2020 15:29:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200203132907.GB13686@intel.com>
References: <20200202134338.3796606-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200202134338.3796606-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix NULL-crtc deref in
 calc_min_cdclk()
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU3VuLCBGZWIgMDIsIDIwMjAgYXQgMDE6NDM6MzhQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFsgICAyMy40MTk0NDJdIEJVRzogS0FTQU46IG51bGwtcHRyLWRlcmVmIGluIGludGVs
X3BsYW5lX2NhbGNfbWluX2NkY2xrKzB4ODIvMHg0NDAgW2k5MTVdCj4gWyAgIDIzLjQxOTUyN10g
UmVhZCBvZiBzaXplIDQgYXQgYWRkciAwMDAwMDAwMDAwMDAwMGY4IGJ5IHRhc2sgaW5zbW9kLzcz
NQo+IFsgICAyMy40MTk1NzhdCj4gWyAgIDIzLjQxOTY0NF0gQ1BVOiAyIFBJRDogNzM1IENvbW06
IGluc21vZCBOb3QgdGFpbnRlZCA1LjUuMCsgIzExNAo+IFsgICAyMy40MTk3MTZdIEhhcmR3YXJl
IG5hbWU6IO+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/
ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/vSDvv73vv73v
v73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73v
v73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv70v77+977+977+977+977+977+977+9
77+977+977+977+977+977+977+977+977+977+977+977+977+977+977+977+977+977+977+9
77+977+977+977+977+977+977+9LCBCSU9TIFJZQkRXaTM1Ljg2QS4wMjQ2LjIKPiBbICAgMjMu
NDE5NzkzXSBDYWxsIFRyYWNlOgo+IFsgICAyMy40MTk4NjRdICBkdW1wX3N0YWNrKzB4ZWYvMHgx
NmUKPiBbICAgMjMuNDE5OTI3XSAgX19rYXNhbl9yZXBvcnQuY29sZCsweDYwLzB4OTAKPiBbICAg
MjMuNDIwMTU3XSAgPyBpbnRlbF9wbGFuZV9jYWxjX21pbl9jZGNsaysweDgyLzB4NDQwIFtpOTE1
XQo+IFsgICAyMy40MjAzOTddICBpbnRlbF9wbGFuZV9jYWxjX21pbl9jZGNsaysweDgyLzB4NDQw
IFtpOTE1XQo+IFsgICAyMy40MjA2MzBdICBpbnRlbF9hdG9taWNfY2hlY2srMHg0NTVmLzB4NjVh
MCBbaTkxNV0KPiBbICAgMjMuNDIwNzA4XSAgPyBtYXJrX2hlbGRfbG9ja3MrMHg5MC8weDkwCj4g
WyAgIDIzLjQyMDkyOV0gID8gaW50ZWxfY3J0Y19kdXBsaWNhdGVfc3RhdGUrMHgyZS8weDFiMCBb
aTkxNV0KPiBbICAgMjMuNDIxMTcyXSAgPyBpbnRlbF9wbGFuZV9kdXBsaWNhdGVfc3RhdGUrMHgy
ZC8weGMwIFtpOTE1XQo+IFsgICAyMy40MjEyMzldICA/IF9fZHJtX2RiZysweGE0LzB4MTIwCj4g
WyAgIDIzLjQyMTMwM10gID8gX19rYXNhbl9rbWFsbG9jLmNvbnN0cHJvcC4wKzB4YzIvMHhkMAo+
IFsgICAyMy40MjEzNTVdICA/IF9fa21hbGxvY190cmFja19jYWxsZXIrMHgyM2EvMHgzMjAKPiBb
ICAgMjMuNDIxNjAyXSAgPyBpbnRlbF9jYWxjX2FjdGl2ZV9waXBlcysweDFjMC8weDFjMCBbaTkx
NV0KPiBbICAgMjMuNDIxODUyXSAgc2FuaXRpemVfd2F0ZXJtYXJrcysweDIyMC8weDUxMCBbaTkx
NV0KPiBbICAgMjMuNDIyMDkyXSAgPyBpbnRlbF9hdG9taWNfY2hlY2srMHg2NWEwLzB4NjVhMCBb
aTkxNV0KPiBbICAgMjMuNDIyMTY0XSAgPyBkcm1fbW9kZXNldF91bmxvY2tfYWxsKzB4ODgvMHgx
MzAKPiBbICAgMjMuNDIyNDAyXSAgaW50ZWxfbW9kZXNldF9pbml0KzB4MWI3Ni8weDNjOTAgW2k5
MTVdCj4gWyAgIDIzLjQyMjY0N10gID8gaW50ZWxfZmluaXNoX3Jlc2V0KzB4MmQwLzB4MmQwIFtp
OTE1XQo+IFsgICAyMy40MjI4NTFdICA/IGludGVsX2lycV9pbnN0YWxsKzB4MTJjLzB4MjEwIFtp
OTE1XQo+IFsgICAyMy40MjMwNzZdICBpOTE1X2RyaXZlcl9wcm9iZSsweDEzZTcvMHgyOTMwIFtp
OTE1XQo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19w
bGFuZS5jIHwgMTEgKysrKysrLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygr
KSwgNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKPiBpbmRleCA5MWFiNmUyYWIxZmQuLjgzNTA1YmQ4YWQ4
MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21p
Y19wbGFuZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9t
aWNfcGxhbmUuYwo+IEBAIC0xNjUsMTQgKzE2NSwxNSBAQCBpbnQgaW50ZWxfcGxhbmVfY2FsY19t
aW5fY2RjbGsoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4gIAkJaW50ZWxfYXRv
bWljX2dldF9uZXdfcGxhbmVfc3RhdGUoc3RhdGUsIHBsYW5lKTsKPiAgCXN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhwbGFuZV9zdGF0ZS0+aHcuY3J0Yyk7Cj4gIAljb25z
dCBzdHJ1Y3QgaW50ZWxfY2RjbGtfc3RhdGUgKmNkY2xrX3N0YXRlOwo+IC0Jc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlID0KPiAtCQlpbnRlbF9hdG9taWNfZ2V0X25ld19j
cnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsKPiAtCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpvbGRfY3J0Y19zdGF0ZSA9Cj4gLQkJaW50ZWxfYXRvbWljX2dldF9vbGRfY3J0Y19zdGF0ZShz
dGF0ZSwgY3J0Yyk7CgpEb2guIE5vdCBOVUxMIHNhZmUgY2xlYXJseS4KCj4gKwljb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGU7Cj4gKwlzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGU7Cj4gIAo+IC0JaWYgKCFwbGFuZV9zdGF0ZS0+dWFwaS52
aXNpYmxlIHx8ICFwbGFuZS0+bWluX2NkY2xrKQo+ICsJaWYgKCFjcnRjIHx8ICFwbGFuZV9zdGF0
ZS0+dWFwaS52aXNpYmxlIHx8ICFwbGFuZS0+bWluX2NkY2xrKQoKU2hvdWxkIGJlIG5vIG5lZWQg
Zm9yIHRoZSAhY3J0YyBjaGVjay4gV2UgY2FuJ3QgaGF2ZSB2aXNpYmxlPT10cnVlCndpdGhvdXQg
YSBjcnRjLgoKUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Cgo+ICAJCXJldHVybiAwOwo+ICAKPiArCW9sZF9jcnRjX3N0YXRlID0gaW50
ZWxfYXRvbWljX2dldF9vbGRfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7Cj4gKwluZXdfY3J0Y19z
dGF0ZSA9IGludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOwo+ICsK
PiAgCW5ld19jcnRjX3N0YXRlLT5taW5fY2RjbGtbcGxhbmUtPmlkXSA9Cj4gIAkJcGxhbmUtPm1p
bl9jZGNsayhuZXdfY3J0Y19zdGF0ZSwgcGxhbmVfc3RhdGUpOwo+ICAKPiAtLSAKPiAyLjI1LjAK
Ci0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
