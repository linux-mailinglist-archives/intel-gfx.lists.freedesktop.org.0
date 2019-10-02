Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF099C8729
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 13:22:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D306F6E949;
	Wed,  2 Oct 2019 11:22:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4D3C6E949
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 11:22:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18692040-1500050 
 for multiple; Wed, 02 Oct 2019 12:20:11 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Oct 2019 12:19:55 +0100
Message-Id: <20191002112000.12280-25-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191002112000.12280-1-chris@chris-wilson.co.uk>
References: <20191002112000.12280-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 25/30] drm/i915: Drop struct_mutex guard from
 debugfs/framebuffer_info
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

SXQgcHJvdGVjdHMgbm90aGluZyBiZWluZyBhY2Nlc3NlZCBmb3IgdGhlIGludGVsX2ZyYW1lYnVm
ZmVyLCBzbyBpdCdzCm93biBsb2NraW5nIGhhZCBiZXR0ZXIgYmUgc3VmZmljaWVudC4KClNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdl
ZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyB8IDYgLS0tLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCmluZGV4IDYw
ODFhNDUzOWUxZS4uMDBjNWU2MWJkYzNhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2RlYnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMu
YwpAQCAtMTQ0OCwxMSArMTQ0OCw2IEBAIHN0YXRpYyBpbnQgaTkxNV9nZW1fZnJhbWVidWZmZXJf
aW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpCiAJc3RydWN0IGRybV9kZXZpY2Ug
KmRldiA9ICZkZXZfcHJpdi0+ZHJtOwogCXN0cnVjdCBpbnRlbF9mcmFtZWJ1ZmZlciAqZmJkZXZf
ZmIgPSBOVUxMOwogCXN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmRybV9mYjsKLQlpbnQgcmV0Owot
Ci0JcmV0ID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZkZXYtPnN0cnVjdF9tdXRleCk7Ci0J
aWYgKHJldCkKLQkJcmV0dXJuIHJldDsKIAogI2lmZGVmIENPTkZJR19EUk1fRkJERVZfRU1VTEFU
SU9OCiAJaWYgKGRldl9wcml2LT5mYmRldiAmJiBkZXZfcHJpdi0+ZmJkZXYtPmhlbHBlci5mYikg
ewpAQCAtMTQ4Nyw3ICsxNDgyLDYgQEAgc3RhdGljIGludCBpOTE1X2dlbV9mcmFtZWJ1ZmZlcl9p
bmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKIAkJc2VxX3B1dGMobSwgJ1xuJyk7
CiAJfQogCW11dGV4X3VubG9jaygmZGV2LT5tb2RlX2NvbmZpZy5mYl9sb2NrKTsKLQltdXRleF91
bmxvY2soJmRldi0+c3RydWN0X211dGV4KTsKIAogCXJldHVybiAwOwogfQotLSAKMi4yMy4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
