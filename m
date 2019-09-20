Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C102B9722
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 20:22:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BD016FD86;
	Fri, 20 Sep 2019 18:22:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F30E66FD86
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 18:22:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18563348-1500050 
 for multiple; Fri, 20 Sep 2019 19:22:17 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2019 19:22:16 +0100
Message-Id: <20190920182216.28622-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Swap engines for rc6/powersaving
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

RGlzYWJsZSByYzYgdG8gcmUtZW5hYmxlIGFsbCBlbmdpbmVzLiBJdCBzZWVtcyB0aGF0IHRoZSBt
dWx0aS1lbmdpbmUKbWFjaGluZSBsb2NrdXAgaXMgdGllZCB0byByYzY7IGRpc2FibGluZyBpdCBt
YWtlcyBhIGdlbS1zeW5jIC0tcnVuCmJhc2ljLXN0b3JlLWFsbCBzdXJ2aXZlIGZvciBhIGZldyBo
b3Vycywgd2hlcmVhcyB3aXRob3V0IHdlIGV4cGVjdCBpdCB0bwpkaWUgd2l0aGluIHNlY29uZHMu
IFRoZSBvbmx5IHF1ZXN0aW9uIGlzIGhvdyBkb2VzIENJIGZhcmUgd2l0aCB0aGUKZXhjaGFuZ2U/
CgpGb3IgdGVzdGluZyBwdXJwb3NlLCBoYXZpbmcgYWxsIHRoZSBlbmdpbmVzIGlzIG1vcmUgdmFs
dWFibGUgdGhhbgplbmFibGluZyBwb3dlcnNhdmluZyAoYm90aCBoYXZlIHRvIHdvcmsgb2YgY291
cnNlLCBidXQgbWFueSBtb3JlIGZlYXR1cmVzCmRlcGVuZCBvbiBoYXZpbmcgdGhlIGV4dHJhIGVu
Z2luZXMpLgoKTm90ZSBkaXNhYmxpbmcgcmM2IGhhcyB0aGUga25vY2stb24gZWZmZWN0IG9mIGRp
c2FibGluZyBvdXIgcnVudGltZQpwb3dlciBtYW5hZ2VtZW50IC0tIHRoZSBpc3N1ZSBtaWdodCBu
b3QgYmUgbG9jYWwgdG8gb3VyIHJjNiBwcm9ncmFtbWluZy4KClNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogRGFuaWVsZSBDZXJhb2xvIFNw
dXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KQ2M6IE1pa2EgS3VvcHBhbGEg
PG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGNpLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwppbmRleCBmZTY5NDFjOGZjOTkuLjY5ODEx
NjI3NjQ0MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCkBAIC03OTcsNyArNzk3LDcgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRlbF90aWdlcmxha2VfMTJfaW5m
byA9IHsKIAkuZGlzcGxheS5oYXNfbW9kdWxhcl9maWEgPSAxLAogCS5lbmdpbmVfbWFzayA9CiAJ
CUJJVChSQ1MwKSB8IEJJVChCQ1MwKSB8IEJJVChWRUNTMCkgfCBCSVQoVkNTMCkgfCBCSVQoVkNT
MiksCi0JLmVuZ2luZV9tYXNrID0gQklUKFJDUzApLCAvKiBYWFggcmVkdWNlZCBmb3IgZGVidWdn
aW5nICovCisJLmhhc19yYzYgPSBmYWxzZSwgLyogWFhYIGRpc2FibGVkIGZvciBkZWJ1Z2dpbmcg
Ki8KIH07CiAKICN1bmRlZiBHRU4KLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
