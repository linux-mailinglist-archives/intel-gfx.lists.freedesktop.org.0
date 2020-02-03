Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74522150781
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 14:38:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 072406E36F;
	Mon,  3 Feb 2020 13:38:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB7E76E36F
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 13:38:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20100261-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Feb 2020 13:38:25 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Feb 2020 13:38:24 +0000
Message-Id: <20200203133824.198872-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/display: Fix NULL-crtc deref in
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

WyAgIDIzLjQxOTQ0Ml0gQlVHOiBLQVNBTjogbnVsbC1wdHItZGVyZWYgaW4gaW50ZWxfcGxhbmVf
Y2FsY19taW5fY2RjbGsrMHg4Mi8weDQ0MCBbaTkxNV0KWyAgIDIzLjQxOTUyN10gUmVhZCBvZiBz
aXplIDQgYXQgYWRkciAwMDAwMDAwMDAwMDAwMGY4IGJ5IHRhc2sgaW5zbW9kLzczNQpbICAgMjMu
NDE5NTc4XQpbICAgMjMuNDE5NjQ0XSBDUFU6IDIgUElEOiA3MzUgQ29tbTogaW5zbW9kIE5vdCB0
YWludGVkIDUuNS4wKyAjMTE0ClsgICAyMy40MTk3MTZdIEhhcmR3YXJlIG5hbWU6IO+/ve+/ve+/
ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/
ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/ve+/vSDvv73vv73vv73vv73vv73vv73vv73v
v73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73vv73v
v73vv73vv73vv73vv73vv73vv70v77+977+977+977+977+977+977+977+977+977+977+977+9
77+977+977+977+977+977+977+977+977+977+977+977+977+977+977+977+977+977+977+9
77+977+9LCBCSU9TIFJZQkRXaTM1Ljg2QS4wMjQ2LjIKWyAgIDIzLjQxOTc5M10gQ2FsbCBUcmFj
ZToKWyAgIDIzLjQxOTg2NF0gIGR1bXBfc3RhY2srMHhlZi8weDE2ZQpbICAgMjMuNDE5OTI3XSAg
X19rYXNhbl9yZXBvcnQuY29sZCsweDYwLzB4OTAKWyAgIDIzLjQyMDE1N10gID8gaW50ZWxfcGxh
bmVfY2FsY19taW5fY2RjbGsrMHg4Mi8weDQ0MCBbaTkxNV0KWyAgIDIzLjQyMDM5N10gIGludGVs
X3BsYW5lX2NhbGNfbWluX2NkY2xrKzB4ODIvMHg0NDAgW2k5MTVdClsgICAyMy40MjA2MzBdICBp
bnRlbF9hdG9taWNfY2hlY2srMHg0NTVmLzB4NjVhMCBbaTkxNV0KWyAgIDIzLjQyMDcwOF0gID8g
bWFya19oZWxkX2xvY2tzKzB4OTAvMHg5MApbICAgMjMuNDIwOTI5XSAgPyBpbnRlbF9jcnRjX2R1
cGxpY2F0ZV9zdGF0ZSsweDJlLzB4MWIwIFtpOTE1XQpbICAgMjMuNDIxMTcyXSAgPyBpbnRlbF9w
bGFuZV9kdXBsaWNhdGVfc3RhdGUrMHgyZC8weGMwIFtpOTE1XQpbICAgMjMuNDIxMjM5XSAgPyBf
X2RybV9kYmcrMHhhNC8weDEyMApbICAgMjMuNDIxMzAzXSAgPyBfX2thc2FuX2ttYWxsb2MuY29u
c3Rwcm9wLjArMHhjMi8weGQwClsgICAyMy40MjEzNTVdICA/IF9fa21hbGxvY190cmFja19jYWxs
ZXIrMHgyM2EvMHgzMjAKWyAgIDIzLjQyMTYwMl0gID8gaW50ZWxfY2FsY19hY3RpdmVfcGlwZXMr
MHgxYzAvMHgxYzAgW2k5MTVdClsgICAyMy40MjE4NTJdICBzYW5pdGl6ZV93YXRlcm1hcmtzKzB4
MjIwLzB4NTEwIFtpOTE1XQpbICAgMjMuNDIyMDkyXSAgPyBpbnRlbF9hdG9taWNfY2hlY2srMHg2
NWEwLzB4NjVhMCBbaTkxNV0KWyAgIDIzLjQyMjE2NF0gID8gZHJtX21vZGVzZXRfdW5sb2NrX2Fs
bCsweDg4LzB4MTMwClsgICAyMy40MjI0MDJdICBpbnRlbF9tb2Rlc2V0X2luaXQrMHgxYjc2LzB4
M2M5MCBbaTkxNV0KWyAgIDIzLjQyMjY0N10gID8gaW50ZWxfZmluaXNoX3Jlc2V0KzB4MmQwLzB4
MmQwIFtpOTE1XQpbICAgMjMuNDIyODUxXSAgPyBpbnRlbF9pcnFfaW5zdGFsbCsweDEyYy8weDIx
MCBbaTkxNV0KWyAgIDIzLjQyMzA3Nl0gIGk5MTVfZHJpdmVyX3Byb2JlKzB4MTNlNy8weDI5MzAg
W2k5MTVdCgp2MjogTm8gY3J0YyBpcyBpbXBsaWVkIGJ5IGFuIGludmlzaWJsZSBwbGFuZSwgc28g
dGhlIGV4dHJhICFjcnRjIGNoZWNrCmlzIHJlZHVuZGFudC4KClNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYyB8IDkgKysrKystLS0tCiAxIGZpbGUgY2hh
bmdlZCwgNSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jCmluZGV4IDkxYWI2ZTJhYjFm
ZC4uYzg2ZDdhMzVjODE2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2F0b21pY19wbGFuZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYXRvbWljX3BsYW5lLmMKQEAgLTE2NSwxNCArMTY1LDE1IEBAIGludCBpbnRlbF9wbGFu
ZV9jYWxjX21pbl9jZGNsayhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAkJaW50
ZWxfYXRvbWljX2dldF9uZXdfcGxhbmVfc3RhdGUoc3RhdGUsIHBsYW5lKTsKIAlzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMocGxhbmVfc3RhdGUtPmh3LmNydGMpOwogCWNv
bnN0IHN0cnVjdCBpbnRlbF9jZGNsa19zdGF0ZSAqY2RjbGtfc3RhdGU7Ci0Jc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlID0KLQkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0
Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7Ci0JY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9s
ZF9jcnRjX3N0YXRlID0KLQkJaW50ZWxfYXRvbWljX2dldF9vbGRfY3J0Y19zdGF0ZShzdGF0ZSwg
Y3J0Yyk7CisJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlOwor
CXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZTsKIAogCWlmICghcGxhbmVf
c3RhdGUtPnVhcGkudmlzaWJsZSB8fCAhcGxhbmUtPm1pbl9jZGNsaykKIAkJcmV0dXJuIDA7CiAK
KwlvbGRfY3J0Y19zdGF0ZSA9IGludGVsX2F0b21pY19nZXRfb2xkX2NydGNfc3RhdGUoc3RhdGUs
IGNydGMpOworCW5ld19jcnRjX3N0YXRlID0gaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0
ZShzdGF0ZSwgY3J0Yyk7CisKIAluZXdfY3J0Y19zdGF0ZS0+bWluX2NkY2xrW3BsYW5lLT5pZF0g
PQogCQlwbGFuZS0+bWluX2NkY2xrKG5ld19jcnRjX3N0YXRlLCBwbGFuZV9zdGF0ZSk7CiAKLS0g
CjIuMjUuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
