Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3373E805B2
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Aug 2019 12:22:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C59F06E48E;
	Sat,  3 Aug 2019 10:22:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 817BC6E48E
 for <intel-gfx@lists.freedesktop.org>; Sat,  3 Aug 2019 10:22:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17839860-1500050 
 for multiple; Sat, 03 Aug 2019 11:22:22 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  3 Aug 2019 11:22:21 +0100
Message-Id: <20190803102221.21344-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Remove stale kerneldoc for
 internal MOCS functions
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

VGhlIGtlcm5lbGRvYyB3ZXJlIHN0YWxlLCBnZW5lcmF0aW5nIG1pc21hdGNoaW5nIHBhcmFtZXRl
cnMgd2FybmluZywgYnV0CmZ1cnRoZXJtb3JlIHRoZXkgd2VyZSBmb3IgaW50ZXJuYWwgcm91dGlu
ZXMsIG5vdCBwYXJ0IG9mIHRoZSBNT0NTCmludGVyZmFjZSBzbyB0aGUgaW5zdHJ1Y3Rpb25zIHdl
cmUgc3VwZXJmbHVvdXMuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMg
fCA1NyArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCA1NSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9tb2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2Nz
LmMKaW5kZXggNzdkZGIzMDczNDZhLi43Mjg3MDRiYmJlMTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9tb2NzLmMKQEAgLTI4NywxOCArMjg3LDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBk
cm1faTkxNV9tb2NzX2VudHJ5IGljZWxha2VfbW9jc190YWJsZVtdID0gewogCUdFTjExX01PQ1Nf
RU5UUklFUwogfTsKIAotLyoqCi0gKiBnZXRfbW9jc19zZXR0aW5ncygpCi0gKiBAZ3Q6CQlndCBk
ZXZpY2UKLSAqIEB0YWJsZTogICAgICBPdXRwdXQgdGFibGUgdGhhdCB3aWxsIGJlIG1hZGUgdG8g
cG9pbnQgYXQgYXBwcm9wcmlhdGUKLSAqCSAgICAgIE1PQ1MgdmFsdWVzIGZvciB0aGUgZGV2aWNl
LgotICoKLSAqIFRoaXMgZnVuY3Rpb24gd2lsbCByZXR1cm4gdGhlIHZhbHVlcyBvZiB0aGUgTU9D
UyB0YWJsZSB0aGF0IG5lZWRzIHRvCi0gKiBiZSBwcm9ncmFtbWVkIGZvciB0aGUgcGxhdGZvcm0u
IEl0IHdpbGwgcmV0dXJuIHRoZSB2YWx1ZXMgdGhhdCBuZWVkCi0gKiB0byBiZSBwcm9ncmFtbWVk
IGFuZCBpZiB0aGV5IG5lZWQgdG8gYmUgcHJvZ3JhbW1lZC4KLSAqCi0gKiBSZXR1cm46IHRydWUg
aWYgdGhlcmUgYXJlIGFwcGxpY2FibGUgTU9DUyBzZXR0aW5ncyBmb3IgdGhlIGRldmljZS4KLSAq
Lwogc3RhdGljIGJvb2wgZ2V0X21vY3Nfc2V0dGluZ3Moc3RydWN0IGludGVsX2d0ICpndCwKIAkJ
CSAgICAgIHN0cnVjdCBkcm1faTkxNV9tb2NzX3RhYmxlICp0YWJsZSkKIHsKQEAgLTQyMCwxMiAr
NDA4LDYgQEAgdm9pZCBpbnRlbF9tb2NzX2luaXRfZW5naW5lKHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSkKIAkJCQkgICAgICB1bnVzZWRfdmFsdWUpOwogfQogCi0vKioKLSAqIGludGVs
X21vY3NfaW5pdF9nbG9iYWwoKSAtIHByb2dyYW0gdGhlIGdsb2JhbCBtb2NzIHJlZ2lzdGVycwot
ICogZ3Q6ICAgICAgcG9pbnRlciB0byBzdHJ1Y3QgaW50ZWxfZ3QKLSAqCi0gKiBUaGlzIGZ1bmN0
aW9uIGluaXRpYWxpemVzIHRoZSBNT0NTIGdsb2JhbCByZWdpc3RlcnMuCi0gKi8KIHN0YXRpYyB2
b2lkIGludGVsX21vY3NfaW5pdF9nbG9iYWwoc3RydWN0IGludGVsX2d0ICpndCkKIHsKIAlzdHJ1
Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBndC0+dW5jb3JlOwpAQCAtNDU2LDE2ICs0MzgsNiBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9tb2NzX2luaXRfZ2xvYmFsKHN0cnVjdCBpbnRlbF9ndCAqZ3Qp
CiAJCQkJICAgdGFibGUudGFibGVbMF0uY29udHJvbF92YWx1ZSk7CiB9CiAKLS8qKgotICogZW1p
dF9tb2NzX2NvbnRyb2xfdGFibGUoKSAtIGVtaXQgdGhlIG1vY3MgY29udHJvbCB0YWJsZQotICog
QHJxOglSZXF1ZXN0IHRvIHNldCB1cCB0aGUgTU9DUyB0YWJsZSBmb3IuCi0gKiBAdGFibGU6CVRo
ZSB2YWx1ZXMgdG8gcHJvZ3JhbSBpbnRvIHRoZSBjb250cm9sIHJlZ3MuCi0gKgotICogVGhpcyBm
dW5jdGlvbiBzaW1wbHkgZW1pdHMgYSBNSV9MT0FEX1JFR0lTVEVSX0lNTSBjb21tYW5kIGZvciB0
aGUKLSAqIGdpdmVuIHRhYmxlIHN0YXJ0aW5nIGF0IHRoZSBnaXZlbiBhZGRyZXNzLgotICoKLSAq
IFJldHVybjogMCBvbiBzdWNjZXNzLCBvdGhlcndpc2UgdGhlIGVycm9yIHN0YXR1cy4KLSAqLwog
c3RhdGljIGludCBlbWl0X21vY3NfY29udHJvbF90YWJsZShzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpy
cSwKIAkJCQkgICBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfbW9jc190YWJsZSAqdGFibGUpCiB7CkBA
IC01MjUsMTcgKzQ5Nyw2IEBAIHN0YXRpYyBpbmxpbmUgdTMyIGwzY2NfY29tYmluZShjb25zdCBz
dHJ1Y3QgZHJtX2k5MTVfbW9jc190YWJsZSAqdGFibGUsCiAJcmV0dXJuIGxvdyB8IGhpZ2ggPDwg
MTY7CiB9CiAKLS8qKgotICogZW1pdF9tb2NzX2wzY2NfdGFibGUoKSAtIGVtaXQgdGhlIG1vY3Mg
Y29udHJvbCB0YWJsZQotICogQHJxOglSZXF1ZXN0IHRvIHNldCB1cCB0aGUgTU9DUyB0YWJsZSBm
b3IuCi0gKiBAdGFibGU6CVRoZSB2YWx1ZXMgdG8gcHJvZ3JhbSBpbnRvIHRoZSBjb250cm9sIHJl
Z3MuCi0gKgotICogVGhpcyBmdW5jdGlvbiBzaW1wbHkgZW1pdHMgYSBNSV9MT0FEX1JFR0lTVEVS
X0lNTSBjb21tYW5kIGZvciB0aGUKLSAqIGdpdmVuIHRhYmxlIHN0YXJ0aW5nIGF0IHRoZSBnaXZl
biBhZGRyZXNzLiBUaGlzIHJlZ2lzdGVyIHNldCBpcwotICogcHJvZ3JhbW1lZCBpbiBwYWlycy4K
LSAqCi0gKiBSZXR1cm46IDAgb24gc3VjY2Vzcywgb3RoZXJ3aXNlIHRoZSBlcnJvciBzdGF0dXMu
Ci0gKi8KIHN0YXRpYyBpbnQgZW1pdF9tb2NzX2wzY2NfdGFibGUoc3RydWN0IGk5MTVfcmVxdWVz
dCAqcnEsCiAJCQkJY29uc3Qgc3RydWN0IGRybV9pOTE1X21vY3NfdGFibGUgKnRhYmxlKQogewpA
QCAtNTg0LDIwICs1NDUsNiBAQCBzdGF0aWMgaW50IGVtaXRfbW9jc19sM2NjX3RhYmxlKHN0cnVj
dCBpOTE1X3JlcXVlc3QgKnJxLAogCXJldHVybiAwOwogfQogCi0vKioKLSAqIGludGVsX21vY3Nf
aW5pdF9sM2NjX3RhYmxlKCkgLSBwcm9ncmFtIHRoZSBtb2NzIGNvbnRyb2wgdGFibGUKLSAqIEBn
dDogdGhlIGludGVsX2d0IGNvbnRhaW5lcgotICoKLSAqIFRoaXMgZnVuY3Rpb24gc2ltcGx5IHBy
b2dyYW1zIHRoZSBtb2NzIHJlZ2lzdGVycyBmb3IgdGhlIGdpdmVuIHRhYmxlCi0gKiBzdGFydGlu
ZyBhdCB0aGUgZ2l2ZW4gYWRkcmVzcy4gVGhpcyByZWdpc3RlciBzZXQgaXMgIHByb2dyYW1tZWQg
aW4gcGFpcnMuCi0gKgotICogVGhlc2UgcmVnaXN0ZXJzIG1heSBnZXQgcHJvZ3JhbW1lZCBtb3Jl
IHRoYW4gb25jZSwgaXQgaXMgc2ltcGxlciB0bwotICogcmUtcHJvZ3JhbSAzMiByZWdpc3RlcnMg
dGhhbiBtYWludGFpbiB0aGUgc3RhdGUgb2Ygd2hlbiB0aGV5IHdlcmUgcHJvZ3JhbW1lZC4KLSAq
IFdlIGFyZSBhbHdheXMgcmVwcm9ncmFtbWluZyB3aXRoIHRoZSBzYW1lIHZhbHVlcyBhbmQgdGhp
cyBvbmx5IG9uIGNvbnRleHQKLSAqIHN0YXJ0LgotICoKLSAqIFJldHVybjogTm90aGluZy4KLSAq
Lwogc3RhdGljIHZvaWQgaW50ZWxfbW9jc19pbml0X2wzY2NfdGFibGUoc3RydWN0IGludGVsX2d0
ICpndCkKIHsKIAlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBndC0+dW5jb3JlOwpAQCAt
NjM5LDggKzU4Niw4IEBAIHN0YXRpYyB2b2lkIGludGVsX21vY3NfaW5pdF9sM2NjX3RhYmxlKHN0
cnVjdCBpbnRlbF9ndCAqZ3QpCiB9CiAKIC8qKgotICogaW50ZWxfcmNzX2NvbnRleHRfaW5pdF9t
b2NzKCkgLSBwcm9ncmFtIHRoZSBNT0NTIHJlZ2lzdGVyLgotICogQHJxOglSZXF1ZXN0IHRvIHNl
dCB1cCB0aGUgTU9DUyB0YWJsZXMgZm9yLgorICogaW50ZWxfbW9jc19lbWl0KCkgLSBwcm9ncmFt
IHRoZSBNT0NTIHJlZ2lzdGVyLgorICogQHJxOglSZXF1ZXN0IHRvIHVzZSB0byBzZXQgdXAgdGhl
IE1PQ1MgdGFibGVzLgogICoKICAqIFRoaXMgZnVuY3Rpb24gd2lsbCBlbWl0IGEgYmF0Y2ggYnVm
ZmVyIHdpdGggdGhlIHZhbHVlcyByZXF1aXJlZCBmb3IKICAqIHByb2dyYW1taW5nIHRoZSBNT0NT
IHJlZ2lzdGVyIHZhbHVlcyBmb3IgYWxsIHRoZSBjdXJyZW50bHkgc3VwcG9ydGVkCi0tIAoyLjIz
LjAucmMwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
