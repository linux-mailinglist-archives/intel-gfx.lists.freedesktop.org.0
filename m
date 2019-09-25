Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81007BDE98
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 15:10:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEF6789811;
	Wed, 25 Sep 2019 13:10:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C607A89811
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 13:10:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18612089-1500050 
 for multiple; Wed, 25 Sep 2019 14:08:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Sep 2019 14:08:45 +0100
Message-Id: <20190925130845.17952-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Simplify gen12_csb_parse
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

SGF2aW5nIGRlY2lkZWQgdGhhdCB3ZSBvbmx5IGNhcmUgYWJvdXQgdGhlIHByb21vdGlvbiBwcmVk
aWNhdGUsIHdlIGNhbgpzaW1wbGlmeSBnZW4xMl9jc2JfcGFyc2UgdG8gc2ltcGx5IGNoZWNrIHdo
ZXRoZXIgd2UgbmVlZCB0byBqdW1wIHRvIGEKbmV3IHF1ZXVlLgoKU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWthIEt1b3BwYWxhIDxt
aWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8g
PGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMgfCA4ICsrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5k
ZXggYWY3OWI4ZDcwODAwLi42MGE3ODlkNjMyZDQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jCkBAIC0xODk2LDkgKzE4OTYsNiBAQCBnZW4xMl9jc2JfcGFyc2UoY29uc3Qgc3RydWN0
IGludGVsX2VuZ2luZV9leGVjbGlzdHMgKmV4ZWNsaXN0cywgY29uc3QgdTMyICpjc2IpCiAJYm9v
bCBjdHhfYXdheV92YWxpZCA9IEdFTjEyX0NTQl9DVFhfVkFMSUQodXBwZXJfZHcpOwogCWJvb2wg
bmV3X3F1ZXVlID0gbG93ZXJfZHcgJiBHRU4xMl9DVFhfU1RBVFVTX1NXSVRDSEVEX1RPX05FV19R
VUVVRTsKIAotCWlmICghY3R4X2F3YXlfdmFsaWQgJiYgY3R4X3RvX3ZhbGlkKQotCQlyZXR1cm4g
dHJ1ZTsKLQogCS8qCiAJICogVGhlIGNvbnRleHQgc3dpdGNoIGRldGFpbCBpcyBub3QgZ3VhcmFu
dGVlZCB0byBiZSA1IHdoZW4gYSBwcmVlbXB0aW9uCiAJICogb2NjdXJzLCBzbyB3ZSBjYW4ndCBq
dXN0IGNoZWNrIGZvciB0aGF0LiBUaGUgY2hlY2sgYmVsb3cgd29ya3MgZm9yCkBAIC0xOTA2LDgg
KzE5MDMsMTAgQEAgZ2VuMTJfY3NiX3BhcnNlKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfZXhl
Y2xpc3RzICpleGVjbGlzdHMsIGNvbnN0IHUzMiAqY3NiKQogCSAqIGluc3RydWN0aW9ucyBhbmQg
bGl0ZS1yZXN0b3JlLiBQcmVlbXB0LXRvLWlkbGUgdmlhIHRoZSBDVFJMIHJlZ2lzdGVyCiAJICog
d291bGQgcmVxdWlyZSBzb21lIGV4dHJhIGhhbmRsaW5nLCBidXQgd2UgZG9uJ3Qgc3VwcG9ydCB0
aGF0LgogCSAqLwotCWlmIChuZXdfcXVldWUgJiYgY3R4X2F3YXlfdmFsaWQpCisJaWYgKCFjdHhf
YXdheV92YWxpZCB8fCBuZXdfcXVldWUpIHsKKwkJR0VNX0JVR19PTighY3R4X3RvX3ZhbGlkKTsK
IAkJcmV0dXJuIHRydWU7CisJfQogCiAJLyoKIAkgKiBzd2l0Y2ggZGV0YWlsID0gNSBpcyBjb3Zl
cmVkIGJ5IHRoZSBjYXNlIGFib3ZlIGFuZCB3ZSBkbyBub3QgZXhwZWN0IGEKQEAgLTE5MTUsNyAr
MTkxNCw2IEBAIGdlbjEyX2NzYl9wYXJzZShjb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2V4ZWNs
aXN0cyAqZXhlY2xpc3RzLCBjb25zdCB1MzIgKmNzYikKIAkgKiB1c2UgcG9sbGluZyBtb2RlLgog
CSAqLwogCUdFTV9CVUdfT04oR0VOMTJfQ1RYX1NXSVRDSF9ERVRBSUwodXBwZXJfZHcpKTsKLQog
CXJldHVybiBmYWxzZTsKIH0KIAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
