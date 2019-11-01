Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C1BEC442
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 15:10:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF19F6F807;
	Fri,  1 Nov 2019 14:10:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 843F96F802
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 14:10:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19047919-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 01 Nov 2019 14:10:09 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Nov 2019 14:10:07 +0000
Message-Id: <20191101141009.15581-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc2
In-Reply-To: <20191101141009.15581-1-chris@chris-wilson.co.uk>
References: <20191101141009.15581-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/4] drm/i915/gem: Leave reloading kernel context
 on resume to GT
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

QXMgd2UgYWxyZWFkeSBkbyByZWxvYWQgdGhlIGtlcm5lbCBjb250ZXh0IGluIGludGVsX2d0X3Jl
c3VtZSwgcmVwZWF0aW5nCnRoYXQgYWN0aW9uIGluc2lkZSBpOTE1X2dlbV9yZXN1bWUoKSBhcyB3
ZWxsIGlzIHJlZHVuZGFudC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMgfCAzMCAt
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMwIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKaW5kZXggZTJlZTljMDRlY2U4
Li42NGRkMDRhZTNkNTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jCkBA
IC0xMSwzMiArMTEsNiBAQAogCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKIAotc3RhdGljIGJvb2wg
c3dpdGNoX3RvX2tlcm5lbF9jb250ZXh0X3N5bmMoc3RydWN0IGludGVsX2d0ICpndCkKLXsKLQli
b29sIHJlc3VsdCA9ICFpbnRlbF9ndF9pc193ZWRnZWQoZ3QpOwotCi0JaWYgKGludGVsX2d0X3dh
aXRfZm9yX2lkbGUoZ3QsIEk5MTVfR0VNX0lETEVfVElNRU9VVCkgPT0gLUVUSU1FKSB7Ci0JCS8q
IFhYWCBoaWRlIHdhcm5pbmcgZnJvbSBnZW1fZWlvICovCi0JCWlmIChpOTE1X21vZHBhcmFtcy5y
ZXNldCkgewotCQkJZGV2X2VycihndC0+aTkxNS0+ZHJtLmRldiwKLQkJCQkiRmFpbGVkIHRvIGlk
bGUgZW5naW5lcywgZGVjbGFyaW5nIHdlZGdlZCFcbiIpOwotCQkJR0VNX1RSQUNFX0RVTVAoKTsK
LQkJfQotCi0JCS8qCi0JCSAqIEZvcmNpYmx5IGNhbmNlbCBvdXRzdGFuZGluZyB3b3JrIGFuZCBs
ZWF2ZQotCQkgKiB0aGUgZ3B1IHF1aWV0LgotCQkgKi8KLQkJaW50ZWxfZ3Rfc2V0X3dlZGdlZChn
dCk7Ci0JCXJlc3VsdCA9IGZhbHNlOwotCX0KLQotCWlmIChpbnRlbF9ndF9wbV93YWl0X2Zvcl9p
ZGxlKGd0KSkKLQkJcmVzdWx0ID0gZmFsc2U7Ci0KLQlyZXR1cm4gcmVzdWx0OwotfQotCiBzdGF0
aWMgdm9pZCB1c2VyX2ZvcmNld2FrZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBib29sIHN1c3BlbmQp
CiB7CiAJaW50IGNvdW50ID0gYXRvbWljX3JlYWQoJmd0LT51c2VyX3dha2VyZWYpOwpAQCAtMTU4
LDEwICsxMzIsNiBAQCB2b2lkIGk5MTVfZ2VtX3Jlc3VtZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSkKIAlpZiAoaW50ZWxfZ3RfcmVzdW1lKCZpOTE1LT5ndCkpCiAJCWdvdG8gZXJyX3dl
ZGdlZDsKIAotCS8qIEFsd2F5cyByZWxvYWQgYSBjb250ZXh0IGZvciBwb3dlcnNhdmluZy4gKi8K
LQlpZiAoIXN3aXRjaF90b19rZXJuZWxfY29udGV4dF9zeW5jKCZpOTE1LT5ndCkpCi0JCWdvdG8g
ZXJyX3dlZGdlZDsKLQogCXVzZXJfZm9yY2V3YWtlKCZpOTE1LT5ndCwgZmFsc2UpOwogCiBvdXRf
dW5sb2NrOgotLSAKMi4yNC4wLnJjMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
