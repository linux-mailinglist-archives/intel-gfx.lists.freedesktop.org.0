Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF9ED5E28
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 11:08:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C9F06E17B;
	Mon, 14 Oct 2019 09:08:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CAA26E17A
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 09:08:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18828686-1500050 
 for multiple; Mon, 14 Oct 2019 10:08:00 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Oct 2019 10:07:47 +0100
Message-Id: <20191014090757.32111-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191014090757.32111-1-chris@chris-wilson.co.uk>
References: <20191014090757.32111-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/15] drm/i915/execlists: Tweak virtual
 unsubmission
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

U2luY2UgY29tbWl0IGUyMTQ0NTAzYmYzYiAoImRybS9pOTE1OiBQcmV2ZW50IGJvbmRlZCByZXF1
ZXN0cyBmcm9tCm92ZXJ0YWtpbmcgZWFjaCBvdGhlciBvbiBwcmVlbXB0aW9uIikgd2UgaGF2ZSBy
ZXN0cmljdGVkIHJlcXVlc3RzIHRvIHJ1bgpvbiB0aGVpciBjaG9zZW4gZW5naW5lIGFjcm9zcyBw
cmVlbXB0aW9uIGV2ZW50cy4gV2UgY2FuIHRha2UgdGhpcwpyZXN0cmljdGlvbiBpbnRvIGFjY291
bnQgdG8ga25vdyB0aGF0IHdlIHdpbGwgd2FudCB0byByZXN1Ym1pdCB0aG9zZQpyZXF1ZXN0cyBv
bnRvIHRoZSBzYW1lIHBoeXNpY2FsIGVuZ2luZSwgYW5kIHNvIGNhbiBzaG9ydGNpcmN1aXQgdGhl
CnZpcnR1YWwgZW5naW5lIHNlbGVjdGlvbiBwcm9jZXNzIGFuZCBrZWVwIHRoZSByZXF1ZXN0IG9u
IHRoZSBzYW1lCmVuZ2luZSBkdXJpbmcgdW53aW5kLgoKUmVmZXJlbmNlczogZTIxNDQ1MDNiZjNi
ICgiZHJtL2k5MTU6IFByZXZlbnQgYm9uZGVkIHJlcXVlc3RzIGZyb20gb3ZlcnRha2luZyBlYWNo
IG90aGVyIG9uIHByZWVtcHRpb24iKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCA2ICsr
Ky0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgfCAyICstCiAyIGZpbGVz
IGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jCmluZGV4IGNlNTlmODY4Y2U1MS4uMGZiZDcyYTlhYjU2IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtODQ3LDcgKzg0Nyw2IEBAIF9fdW53aW5kX2lu
Y29tcGxldGVfcmVxdWVzdHMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCWxpc3Rf
Zm9yX2VhY2hfZW50cnlfc2FmZV9yZXZlcnNlKHJxLCBybiwKIAkJCQkJICZlbmdpbmUtPmFjdGl2
ZS5yZXF1ZXN0cywKIAkJCQkJIHNjaGVkLmxpbmspIHsKLQkJc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqb3duZXI7CiAKIAkJaWYgKGk5MTVfcmVxdWVzdF9jb21wbGV0ZWQocnEpKQogCQkJY29udGlu
dWU7IC8qIFhYWCAqLwpAQCAtODYyLDggKzg2MSw3IEBAIF9fdW53aW5kX2luY29tcGxldGVfcmVx
dWVzdHMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCQkgKiBlbmdpbmUgc28gdGhh
dCBpdCBjYW4gYmUgbW92ZWQgYWNyb3NzIG9udG8gYW5vdGhlciBwaHlzaWNhbAogCQkgKiBlbmdp
bmUgYXMgbG9hZCBkaWN0YXRlcy4KIAkJICovCi0JCW93bmVyID0gcnEtPmh3X2NvbnRleHQtPmVu
Z2luZTsKLQkJaWYgKGxpa2VseShvd25lciA9PSBlbmdpbmUpKSB7CisJCWlmIChsaWtlbHkocnEt
PmV4ZWN1dGlvbl9tYXNrID09IGVuZ2luZS0+bWFzaykpIHsKIAkJCUdFTV9CVUdfT04ocnFfcHJp
byhycSkgPT0gSTkxNV9QUklPUklUWV9JTlZBTElEKTsKIAkJCWlmIChycV9wcmlvKHJxKSAhPSBw
cmlvKSB7CiAJCQkJcHJpbyA9IHJxX3ByaW8ocnEpOwpAQCAtODc0LDYgKzg3Miw4IEBAIF9fdW53
aW5kX2luY29tcGxldGVfcmVxdWVzdHMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQog
CQkJbGlzdF9tb3ZlKCZycS0+c2NoZWQubGluaywgcGwpOwogCQkJYWN0aXZlID0gcnE7CiAJCX0g
ZWxzZSB7CisJCQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpvd25lciA9IHJxLT5od19jb250ZXh0
LT5lbmdpbmU7CisKIAkJCS8qCiAJCQkgKiBEZWNvdXBsZSB0aGUgdmlydHVhbCBicmVhZGNydW1i
IGJlZm9yZSBtb3ZpbmcgaXQKIAkJCSAqIGJhY2sgdG8gdGhlIHZpcnR1YWwgZW5naW5lIC0tIHdl
IGRvbid0IHdhbnQgdGhlCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
cXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCmluZGV4IDQzN2Y5
ZmM2MjgyZS4uYjhhNTQ1NzJhNGY4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlcXVlc3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwpA
QCAtNjQ5LDYgKzY0OSw3IEBAIF9faTkxNV9yZXF1ZXN0X2NyZWF0ZShzdHJ1Y3QgaW50ZWxfY29u
dGV4dCAqY2UsIGdmcF90IGdmcCkKIAlycS0+Z2VtX2NvbnRleHQgPSBjZS0+Z2VtX2NvbnRleHQ7
CiAJcnEtPmVuZ2luZSA9IGNlLT5lbmdpbmU7CiAJcnEtPnJpbmcgPSBjZS0+cmluZzsKKwlycS0+
ZXhlY3V0aW9uX21hc2sgPSBjZS0+ZW5naW5lLT5tYXNrOwogCiAJcmN1X2Fzc2lnbl9wb2ludGVy
KHJxLT50aW1lbGluZSwgdGwpOwogCXJxLT5od3NwX3NlcW5vID0gdGwtPmh3c3Bfc2Vxbm87CkBA
IC02NzEsNyArNjcyLDYgQEAgX19pOTE1X3JlcXVlc3RfY3JlYXRlKHN0cnVjdCBpbnRlbF9jb250
ZXh0ICpjZSwgZ2ZwX3QgZ2ZwKQogCXJxLT5iYXRjaCA9IE5VTEw7CiAJcnEtPmNhcHR1cmVfbGlz
dCA9IE5VTEw7CiAJcnEtPmZsYWdzID0gMDsKLQlycS0+ZXhlY3V0aW9uX21hc2sgPSBBTExfRU5H
SU5FUzsKIAogCUlOSVRfTElTVF9IRUFEKCZycS0+ZXhlY3V0ZV9jYik7CiAKLS0gCjIuMjMuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
