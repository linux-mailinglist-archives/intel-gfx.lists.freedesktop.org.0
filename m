Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 792B2F95C1
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 17:37:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C882B6E0FD;
	Tue, 12 Nov 2019 16:37:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 753906E0FD
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 16:37:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19176289-1500050 
 for multiple; Tue, 12 Nov 2019 16:36:45 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Nov 2019 16:36:43 +0000
Message-Id: <20191112163643.3527-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Remove unused local
 variable 'file'
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9vYmplY3RfYmx0LmM6
NDUzIGlndF90aHJlYWRlZF9ibHQoKSBlcnJvcjogdW5pbml0aWFsaXplZCBzeW1ib2wgJ2ZpbGUn
LgoKRml4ZXM6IDM0NDg1ODMyY2I5OCAoImRybS9pOTE1L3NlbGZ0ZXN0czogRXhlcmNpc2UgcGFy
YWxsZWwgYmxpdCBvcGVyYXRpb25zIG9uIGEgc2luZ2xlIGN0eCIpClNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWF0dGhldyBBdWxkIDxt
YXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxm
dGVzdHMvaTkxNV9nZW1fb2JqZWN0X2JsdC5jIHwgMyArLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX29iamVjdF9ibHQuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fb2JqZWN0X2JsdC5jCmluZGV4IGM4YThjMDdl
MDdhYi4uNjc1YzFhMjBhMmYxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
c2VsZnRlc3RzL2k5MTVfZ2VtX29iamVjdF9ibHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX29iamVjdF9ibHQuYwpAQCAtNDM1LDcgKzQzNSw2IEBA
IHN0YXRpYyBpbnQgaWd0X3RocmVhZGVkX2JsdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwKIAlzdHJ1Y3QgdGFza19zdHJ1Y3QgKip0c2s7CiAJdW5zaWduZWQgaW50IG5fY3B1cywgaTsK
IAlJOTE1X1JORF9TVEFURShwcm5nKTsKLQlzdHJ1Y3QgZmlsZSAqZmlsZTsKIAlpbnQgZXJyID0g
MDsKIAogCW5fY3B1cyA9IG51bV9vbmxpbmVfY3B1cygpICsgMTsKQEAgLTQ1MCw3ICs0NDksNyBA
QCBzdGF0aWMgaW50IGlndF90aHJlYWRlZF9ibHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsCiAKIAl0aHJlYWRbMF0uZmlsZSA9IG1vY2tfZmlsZShpOTE1KTsKIAlpZiAoSVNfRVJSKHRo
cmVhZFswXS5maWxlKSkgewotCQllcnIgPSBQVFJfRVJSKGZpbGUpOworCQllcnIgPSBQVFJfRVJS
KHRocmVhZFswXS5maWxlKTsKIAkJZ290byBvdXRfdGhyZWFkOwogCX0KIAotLSAKMi4yNC4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
