Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91964A1368
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 10:12:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1E8E6E06E;
	Thu, 29 Aug 2019 08:12:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91E016E039
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 08:12:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18299858-1500050 
 for multiple; Thu, 29 Aug 2019 09:11:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Aug 2019 09:11:15 +0100
Message-Id: <20190829081150.10271-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190829081150.10271-1-chris@chris-wilson.co.uk>
References: <20190829081150.10271-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/36] drm/i915/execlists: Try rearranging
 breadcrumb flush
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

VGhlIGFkZGl0aW9uIG9mIHRoZSBEQ19GTFVTSCBmYWlsZWQgdG8gZW5zdXJlIHNhbmN0aXR5IG9m
IHRoZSBwb3N0LXN5bmMKd3JpdGUgYXMgQ0kgaW1tZWRpYXRlbHkgZ290IGEgY29tcGxldGlvbiBD
Uy1ldmVudCBiZWZvcmUgdGhlIGJyZWFkY3J1bWIKd2FzIGNvaGVyZW50LiBTbyBsZXQncyB0cnkg
dGhlIG90aGVyIGlkZWEgb2YgbW92aW5nIHRoZSBwb3N0LXN5bmMgd3JpdGUKaW50byB0aGUgQ1Nf
U1RBTEwuCgpSZWZlcmVuY2VzOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMTE1MTQKUmVmZXJlbmNlczogZThmNmI0OTUyZWM1ICgiZHJtL2k5MTUvZXhlY2xp
c3RzOiBGbHVzaCB0aGUgcG9zdC1zeW5jIGJyZWFkY3J1bWIgd3JpdGUgaGFyZGVyIikKU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWth
IEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDIwICsrKysrKysrKy0tLS0tLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IDE3MWQ1MjA1OTYyYy4uN2Q0NjBiMTg0MmRkIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMjkxNSwyMCArMjkxNSwxOCBAQCBzdGF0
aWMgdTMyICpnZW44X2VtaXRfZmluaV9icmVhZGNydW1iKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJl
cXVlc3QsIHUzMiAqY3MpCiAKIHN0YXRpYyB1MzIgKmdlbjhfZW1pdF9maW5pX2JyZWFkY3J1bWJf
cmNzKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QsIHUzMiAqY3MpCiB7CisJY3MgPSBnZW44
X2VtaXRfcGlwZV9jb250cm9sKGNzLAorCQkJCSAgICBQSVBFX0NPTlRST0xfUkVOREVSX1RBUkdF
VF9DQUNIRV9GTFVTSCB8CisJCQkJICAgIFBJUEVfQ09OVFJPTF9ERVBUSF9DQUNIRV9GTFVTSCB8
CisJCQkJICAgIFBJUEVfQ09OVFJPTF9EQ19GTFVTSF9FTkFCTEUsCisJCQkJICAgIDApOworCisJ
LyogWFhYIGZsdXNoK3dyaXRlK0NTX1NUQUxMIGFsbCBpbiBvbmUgdXBzZXRzIGdlbV9jb25jdXJy
ZW50X2JsdDprYmwgKi8KIAljcyA9IGdlbjhfZW1pdF9nZ3R0X3dyaXRlX3JjcyhjcywKIAkJCQkg
ICAgICByZXF1ZXN0LT5mZW5jZS5zZXFubywKIAkJCQkgICAgICByZXF1ZXN0LT50aW1lbGluZS0+
aHdzcF9vZmZzZXQsCi0JCQkJICAgICAgUElQRV9DT05UUk9MX1JFTkRFUl9UQVJHRVRfQ0FDSEVf
RkxVU0ggfAotCQkJCSAgICAgIFBJUEVfQ09OVFJPTF9ERVBUSF9DQUNIRV9GTFVTSCB8Ci0JCQkJ
ICAgICAgUElQRV9DT05UUk9MX0RDX0ZMVVNIX0VOQUJMRSk7Ci0KLQkvKiBYWFggZmx1c2grd3Jp
dGUrQ1NfU1RBTEwgYWxsIGluIG9uZSB1cHNldHMgZ2VtX2NvbmN1cnJlbnRfYmx0OmtibCAqLwot
CS8qIFhYWCBEQ19GTFVTSCBmb3IgcG9zdC1zeW5jIHdyaXRlPyAoY2YgZWFybHkgY29udGV4dC1z
d2l0Y2ggYnVnKSAqLwotCWNzID0gZ2VuOF9lbWl0X3BpcGVfY29udHJvbChjcywKLQkJCQkgICAg
UElQRV9DT05UUk9MX0ZMVVNIX0VOQUJMRSB8Ci0JCQkJICAgIFBJUEVfQ09OVFJPTF9EQ19GTFVT
SF9FTkFCTEUgfAotCQkJCSAgICBQSVBFX0NPTlRST0xfQ1NfU1RBTEwsCi0JCQkJICAgIDApOwor
CQkJCSAgICAgIFBJUEVfQ09OVFJPTF9GTFVTSF9FTkFCTEUgfAorCQkJCSAgICAgIFBJUEVfQ09O
VFJPTF9DU19TVEFMTCk7CiAKIAlyZXR1cm4gZ2VuOF9lbWl0X2ZpbmlfYnJlYWRjcnVtYl9mb290
ZXIocmVxdWVzdCwgY3MpOwogfQotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
