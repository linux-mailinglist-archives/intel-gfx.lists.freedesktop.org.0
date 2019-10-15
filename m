Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5833BD8144
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 22:45:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C31EE89021;
	Tue, 15 Oct 2019 20:45:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B06C86E894
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 20:45:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18849358-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 21:44:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 21:44:43 +0100
Message-Id: <20191015204451.19372-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015204451.19372-1-chris@chris-wilson.co.uk>
References: <20191015204451.19372-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 04/12] drm/i915/tgl: Add HDC Pipeline Flush
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

RnJvbTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CgpBZGQg
aGRjIHBpcGVsaW5lIGZsdXNoIHRvIGVuc3VyZSBtZW1vcnkgc3RhdGUgaXMgY29oZXJlbnQKaW4g
TDMgd2hlbiB3ZSBhcmUgZG9uZS4KCnYyOiBGbHVzaCBhbHNvIGluIGJyZWFkY3J1bWJzIChDaHJp
cykKCkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVkLW9m
Zi1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+ClJldmll
d2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ckxpbms6IGh0dHBz
Oi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDE5MTAxNTE1NDQ0OS4x
MDMzOC0zLW1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tCi0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmggfCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jICAgICAgICAgIHwgNCArKystCiAyIGZpbGVzIGNoYW5nZWQsIDQgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3B1X2NvbW1hbmRzLmgKaW5kZXggYWZjODY5ZGM3ODVmLi40Mjk0ZjE0NmYxM2MgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oCkBAIC0yMzUsNiAr
MjM1LDcgQEAKICNkZWZpbmUgICBQSVBFX0NPTlRST0xfVEVYVFVSRV9DQUNIRV9JTlZBTElEQVRF
CQkoMTw8MTApIC8qIEdNNDUrIG9ubHkgKi8KICNkZWZpbmUgICBQSVBFX0NPTlRST0xfTDNfUk9f
Q0FDSEVfSU5WQUxJREFURQkJUkVHX0JJVCgxMCkgLyogZ2VuMTIgKi8KICNkZWZpbmUgICBQSVBF
X0NPTlRST0xfSU5ESVJFQ1RfU1RBVEVfRElTQUJMRQkJKDE8PDkpCisjZGVmaW5lICAgUElQRV9D
T05UUk9MX0hEQ19QSVBFTElORV9GTFVTSAkJUkVHX0JJVCg5KSAgLyogZ2VuMTIgKi8KICNkZWZp
bmUgICBQSVBFX0NPTlRST0xfTk9USUZZCQkJCSgxPDw4KQogI2RlZmluZSAgIFBJUEVfQ09OVFJP
TF9GTFVTSF9FTkFCTEUJCQkoMTw8NykgLyogZ2VuNysgKi8KICNkZWZpbmUgICBQSVBFX0NPTlRS
T0xfRENfRkxVU0hfRU5BQkxFCQkJKDE8PDUpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
CmluZGV4IDJmZTMzOTIyOGI4Mi4uZDAzMjU4Y2U4MjkxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYwpAQCAtMzIwNiw2ICszMjA2LDcgQEAgc3RhdGljIGludCBnZW4xMl9lbWl0X2Zs
dXNoX3JlbmRlcihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0LAogCQlmbGFncyB8PSBQSVBF
X0NPTlRST0xfREVQVEhfQ0FDSEVfRkxVU0g7CiAJCWZsYWdzIHw9IFBJUEVfQ09OVFJPTF9EQ19G
TFVTSF9FTkFCTEU7CiAJCWZsYWdzIHw9IFBJUEVfQ09OVFJPTF9GTFVTSF9FTkFCTEU7CisJCWZs
YWdzIHw9IFBJUEVfQ09OVFJPTF9IRENfUElQRUxJTkVfRkxVU0g7CiAKIAkJZmxhZ3MgfD0gUElQ
RV9DT05UUk9MX1NUT1JFX0RBVEFfSU5ERVg7CiAJCWZsYWdzIHw9IFBJUEVfQ09OVFJPTF9RV19X
UklURTsKQEAgLTM0MTYsNyArMzQxNyw4IEBAIGdlbjEyX2VtaXRfZmluaV9icmVhZGNydW1iX3Jj
cyhzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0LCB1MzIgKmNzKQogCQkJCSAgICAgIFBJUEVf
Q09OVFJPTF9SRU5ERVJfVEFSR0VUX0NBQ0hFX0ZMVVNIIHwKIAkJCQkgICAgICBQSVBFX0NPTlRS
T0xfREVQVEhfQ0FDSEVfRkxVU0ggfAogCQkJCSAgICAgIFBJUEVfQ09OVFJPTF9EQ19GTFVTSF9F
TkFCTEUgfAotCQkJCSAgICAgIFBJUEVfQ09OVFJPTF9GTFVTSF9FTkFCTEUpOworCQkJCSAgICAg
IFBJUEVfQ09OVFJPTF9GTFVTSF9FTkFCTEUgfAorCQkJCSAgICAgIFBJUEVfQ09OVFJPTF9IRENf
UElQRUxJTkVfRkxVU0gpOwogCiAJcmV0dXJuIGdlbjEyX2VtaXRfZmluaV9icmVhZGNydW1iX2Zv
b3RlcihyZXF1ZXN0LCBjcyk7CiB9Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
