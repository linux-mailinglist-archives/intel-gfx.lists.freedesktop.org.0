Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FDE9E71C
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 13:54:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FD21898EE;
	Tue, 27 Aug 2019 11:54:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A35C8898E8
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 11:54:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18276935-1500050 
 for multiple; Tue, 27 Aug 2019 12:54:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Aug 2019 12:54:13 +0100
Message-Id: <20190827115413.31225-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: stall on render flush
 before writing seqno
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

UXVpdGUgcmFyZWx5IHdlIHNlZSB0aGF0IHRoZSBDUyBjb21wbGV0aW9uIGV2ZW50IGZpcmVzIGJl
Zm9yZSB0aGUKYnJlYWRjcnVtYiBpcyBjb2hlcmVudC4gVHJ5IHJlYXJyYW5naW5nIHRoZSBicmVh
ZGNydW1iIHdyaXRlIHNlcXVlbmNlCnN1Y2ggdGhhdCB0aGUgQ1NfU1RBTEwgaXMgb24gdGhlIHBv
c3Qtc3luYyB3cml0ZSBwaXBlY29udHJvbC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFs
YUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJj
LmMgfCAxNyArKysrKysrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygr
KSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IDgw
YTNmMWRiYjQ1Ni4uNjY5ZThiZDlmODMwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
YwpAQCAtMjk2MSwxOCArMjk2MSwxNyBAQCBzdGF0aWMgdTMyICpnZW44X2VtaXRfZmluaV9icmVh
ZGNydW1iKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QsIHUzMiAqY3MpCiAKIHN0YXRpYyB1
MzIgKmdlbjhfZW1pdF9maW5pX2JyZWFkY3J1bWJfcmNzKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJl
cXVlc3QsIHUzMiAqY3MpCiB7Ci0JY3MgPSBnZW44X2VtaXRfZ2d0dF93cml0ZV9yY3MoY3MsCi0J
CQkJICAgICAgcmVxdWVzdC0+ZmVuY2Uuc2Vxbm8sCi0JCQkJICAgICAgcmVxdWVzdC0+dGltZWxp
bmUtPmh3c3Bfb2Zmc2V0LAotCQkJCSAgICAgIFBJUEVfQ09OVFJPTF9SRU5ERVJfVEFSR0VUX0NB
Q0hFX0ZMVVNIIHwKLQkJCQkgICAgICBQSVBFX0NPTlRST0xfREVQVEhfQ0FDSEVfRkxVU0ggfAot
CQkJCSAgICAgIFBJUEVfQ09OVFJPTF9EQ19GTFVTSF9FTkFCTEUpOwotCiAJLyogWFhYIGZsdXNo
K3dyaXRlK0NTX1NUQUxMIGFsbCBpbiBvbmUgdXBzZXRzIGdlbV9jb25jdXJyZW50X2JsdDprYmwg
Ki8KIAljcyA9IGdlbjhfZW1pdF9waXBlX2NvbnRyb2woY3MsCi0JCQkJICAgIFBJUEVfQ09OVFJP
TF9GTFVTSF9FTkFCTEUgfAotCQkJCSAgICBQSVBFX0NPTlRST0xfQ1NfU1RBTEwsCisJCQkJICAg
IFBJUEVfQ09OVFJPTF9SRU5ERVJfVEFSR0VUX0NBQ0hFX0ZMVVNIIHwKKwkJCQkgICAgUElQRV9D
T05UUk9MX0RFUFRIX0NBQ0hFX0ZMVVNIIHwKKwkJCQkgICAgUElQRV9DT05UUk9MX0RDX0ZMVVNI
X0VOQUJMRSwKIAkJCQkgICAgMCk7CisJY3MgPSBnZW44X2VtaXRfZ2d0dF93cml0ZV9yY3MoY3Ms
CisJCQkJICAgICAgcmVxdWVzdC0+ZmVuY2Uuc2Vxbm8sCisJCQkJICAgICAgcmVxdWVzdC0+dGlt
ZWxpbmUtPmh3c3Bfb2Zmc2V0LAorCQkJCSAgICAgIFBJUEVfQ09OVFJPTF9GTFVTSF9FTkFCTEUg
fAorCQkJCSAgICAgIFBJUEVfQ09OVFJPTF9DU19TVEFMTCk7CiAKIAlyZXR1cm4gZ2VuOF9lbWl0
X2ZpbmlfYnJlYWRjcnVtYl9mb290ZXIocmVxdWVzdCwgY3MpOwogfQotLSAKMi4yMy4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
