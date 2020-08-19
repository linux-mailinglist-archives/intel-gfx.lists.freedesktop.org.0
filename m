Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC02224A156
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 16:09:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FD386E3F7;
	Wed, 19 Aug 2020 14:09:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A0586E3FB
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 14:09:13 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Aug 2020 16:08:58 +0200
Message-Id: <20200819140904.1708856-19-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200819140904.1708856-1-maarten.lankhorst@linux.intel.com>
References: <20200819140904.1708856-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 18/24] drm/i915: Dirty hack to fix selftests
 locking inversion
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U29tZSBpOTE1IHNlbGZ0ZXN0cyBzdGlsbCB1c2UgaTkxNV92bWFfbG9jaygpIGFzIGlubmVyIGxv
Y2ssIGFuZAppbnRlbF9jb250ZXh0X2NyZWF0ZV9yZXF1ZXN0KCkgaW50ZWxfdGltZWxpbmUtPm11
dGV4IGFzIG91dGVyIGxvY2suCkZvcnR1bmF0ZWx5IGZvciBzZWxmdGVzdHMgdGhpcyBpcyBub3Qg
YW4gaXNzdWUsIHRoZXkgc2hvdWxkIGJlIGZpeGVkCmJ1dCB3ZSBjYW4gbW92ZSBhaGVhZCBhbmQg
Y2xlYW5pZnkgbG9ja2RlcCBub3cuCgpTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8
bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVGhvbWFzIEhl
bGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYyB8IDEyICsrKysrKysrKysrKwogMSBmaWxlIGNoYW5n
ZWQsIDEyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0
LmMKaW5kZXggYzA1ZWYyMTNiZGMyLi42NzEwODFiMGU0ZDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9jb250ZXh0LmMKQEAgLTQ1OSw2ICs0NTksMTggQEAgc3RydWN0IGk5MTVfcmVx
dWVzdCAqaW50ZWxfY29udGV4dF9jcmVhdGVfcmVxdWVzdChzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2UpCiAJcnEgPSBpOTE1X3JlcXVlc3RfY3JlYXRlKGNlKTsKIAlpbnRlbF9jb250ZXh0X3VucGlu
KGNlKTsKIAorCWlmIChJU19FUlIocnEpKQorCQlyZXR1cm4gcnE7CisKKwkvKgorCSAqIHRpbWVs
aW5lLT5tdXRleCBzaG91bGQgYmUgdGhlIGlubmVyIGxvY2ssIGJ1dCBpcyB1c2VkIGFzIG91dGVy
IGxvY2suCisJICogSGFjayBhcm91bmQgdGhpcyB0byBzaHV0IHVwIGxvY2tkZXAgaW4gc2VsZnRl
c3RzLi4KKwkgKi8KKwlsb2NrZGVwX3VucGluX2xvY2soJmNlLT50aW1lbGluZS0+bXV0ZXgsIHJx
LT5jb29raWUpOworCW11dGV4X3JlbGVhc2UoJmNlLT50aW1lbGluZS0+bXV0ZXguZGVwX21hcCwg
X1JFVF9JUF8pOworCW11dGV4X2FjcXVpcmUoJmNlLT50aW1lbGluZS0+bXV0ZXguZGVwX21hcCwg
U0lOR0xFX0RFUFRIX05FU1RJTkcsIDAsIF9SRVRfSVBfKTsKKwlycS0+Y29va2llID0gbG9ja2Rl
cF9waW5fbG9jaygmY2UtPnRpbWVsaW5lLT5tdXRleCk7CisKIAlyZXR1cm4gcnE7CiB9CiAKLS0g
CjIuMjguMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
