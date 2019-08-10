Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DF788CAA
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Aug 2019 19:57:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C7C26E454;
	Sat, 10 Aug 2019 17:57:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADE446E454
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Aug 2019 17:57:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17954844-1500050 
 for multiple; Sat, 10 Aug 2019 18:57:04 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 10 Aug 2019 18:57:02 +0100
Message-Id: <20190810175702.7348-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Prevent the timeslice
 expiring during suppression tests
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

V2hlbiB0ZXN0aW5nIHdoZXRoZXIgd2UgcHJldmVudCBzdXBwcmVzc2luZyBwcmVlbXB0aW9uLCBp
dCBoZWxwcyB0bwphdm9pZCBhIHRpbWUgc2xpY2UgZXhwaXJpbmcgcHJlbWF0dXJlbHkuCgpCdWd6
aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMTA4
ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jIHwgNSArKysrLQogMSBm
aWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMKaW5kZXggOTFmMWM5MDEyNDg5Li5iNzk3YmUxNjI3ZTkg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jCkBAIC05MTMsNiArOTEzLDgg
QEAgc3RhdGljIGludCBsaXZlX3N1cHByZXNzX3NlbGZfcHJlZW1wdCh2b2lkICphcmcpCiAJCQln
b3RvIGVycl93ZWRnZWQ7CiAJCX0KIAorCQkvKiBLZWVwIHBvc3Rwb25pbmcgdGhlIHRpbWVyIHRv
IGF2b2lkIHByZW1hdHVyZSBzbGljaW5nICovCisJCW1vZF90aW1lcigmZW5naW5lLT5leGVjbGlz
dHMudGltZXIsIGppZmZpZXMgKyBIWik7CiAJCWZvciAoZGVwdGggPSAwOyBkZXB0aCA8IDg7IGRl
cHRoKyspIHsKIAkJCXJxX2IgPSBzcGlubmVyX2NyZWF0ZV9yZXF1ZXN0KCZiLnNwaW4sCiAJCQkJ
CQkgICAgICBiLmN0eCwgZW5naW5lLApAQCAtOTM4LDcgKzk0MCw4IEBAIHN0YXRpYyBpbnQgbGl2
ZV9zdXBwcmVzc19zZWxmX3ByZWVtcHQodm9pZCAqYXJnKQogCQlpZ3Rfc3Bpbm5lcl9lbmQoJmEu
c3Bpbik7CiAKIAkJaWYgKGVuZ2luZS0+ZXhlY2xpc3RzLnByZWVtcHRfaGFuZy5jb3VudCkgewot
CQkJcHJfZXJyKCJQcmVlbXB0aW9uIHJlY29yZGVkIHglZCwgZGVwdGggJWQ7IHNob3VsZCBoYXZl
IGJlZW4gc3VwcHJlc3NlZCFcbiIsCisJCQlwcl9lcnIoIlByZWVtcHRpb24gb24gJXMgcmVjb3Jk
ZWQgeCVkLCBkZXB0aCAlZDsgc2hvdWxkIGhhdmUgYmVlbiBzdXBwcmVzc2VkIVxuIiwKKwkJCSAg
ICAgICBlbmdpbmUtPm5hbWUsCiAJCQkgICAgICAgZW5naW5lLT5leGVjbGlzdHMucHJlZW1wdF9o
YW5nLmNvdW50LAogCQkJICAgICAgIGRlcHRoKTsKIAkJCWVyciA9IC1FSU5WQUw7Ci0tIAoyLjIz
LjAucmMxCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
