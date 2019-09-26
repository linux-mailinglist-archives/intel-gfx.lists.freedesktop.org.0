Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DDABF508
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 16:27:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D23676ED67;
	Thu, 26 Sep 2019 14:27:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB75C6E06D
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 14:27:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18628224-1500050 
 for multiple; Thu, 26 Sep 2019 15:25:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Sep 2019 15:25:38 +0100
Message-Id: <20190926142538.9386-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Delegate our irq handler to a thread
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
Cc: Clark Williams <williams@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW92aW5nIG91ciBwcmltYXJ5IGlycSBoYW5kbGVyIHRvIGEgUlQgdGhyZWFkIGluY3VycyBhbiBl
eHRyYSAxdXMgZGVsYXkKaW4gcHJvY2VzcyBpbnRlcnJ1cHRzLiBUaGlzIGlzIG1vc3Qgbm90aWNl
IGluIHdha2luZyB1cCBjbGllbnQgdGhyZWFkcywKd2hlcmUgaXQgYWRkcyBhYm91dCAyMCUgb2Yg
ZXh0cmEgbGF0ZW5jeS4gSXQgYWxzbyBpbXBvc2VzIGEgZGVsYXkgaW4KZmVlZGluZyB0aGUgR1BV
LCBhbiBleHRyYSAxdXMgYmVmb3JlIHNpZ25hbGluZyBzZWNvbmRhcnkgZW5naW5lcyBhbmQKZXh0
cmEgbGF0ZW5jeSBpbiByZXN1Ym1pdHRpbmcgd29yayB0byBrZWVwIHRoZSBHUFUgYnVzeS4gVGhl
IGxhdHRlciBjYXNlCmlzIGluc2lnbmlmaWNhbnQgYXMgdGhlIGxhdGVuY3kgaGlkZGVuIGJ5IHRo
ZSBhY3RpdmUgR1BVLCBhbmQKcHJlZW1wdC10by1idXN5IGVuc3VyZXMgdGhhdCBubyBleHRyYSBs
YXRlbmN5IGlzIGluY3VycmVkIGZvcgpwcmVlbXB0aW9uLgoKVGhlIGJlbmVmaXQgaXMgdGhhdCB3
ZSByZWR1Y2VkIHRoZSBpbXBhY3Qgb24gdGhlIHJlc3Qgb2YgdGhlIHN5c3RlbSwgdGhlCmN5Y2xl
dGVzdCBzaG93cyBhIHJlZHVjdGlvbiBmcm9tIDV1cyBtZWFuIGxhdGVuY3kgdG8gMnVzLCB3aXRo
IHRoZQptYXhpbXVtIG9ic2VydmVkIGxhdGVuY3kgKGluIGEgMiBtaW51dGUgd2luZG93KSByZWR1
Y2VkIGJ5IG92ZXIgMTYwdXMuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxp
bnV4LmludGVsLmNvbT4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+CkNjOiBDbGFyayBXaWxsaWFtcyA8d2lsbGlhbXNAcmVkaGF0LmNvbT4KQ2M6IFNlYmFzdGlh
biBBbmRyemVqIFNpZXdpb3IgPGJpZ2Vhc3lAbGludXRyb25peC5kZT4KLS0tCk5vdGUgdGhpcyBz
aG91bGQgbmVlZCB0aGUgZml4ZXMgaW4KMjAxOTA5MjYxMDU2NDQuMTY3MDMtMi1iaWdlYXN5QGxp
bnV0cm9uaXguZGUsIGJ5IGl0c2VsZiB0aGlzIHNob3VsZCBiZSBhCnRlc3QgdmVoaWNsZSB0byBl
eGVyY2lzZSB0aGF0IHBhdGNoIQotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMg
fCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKaW5kZXggYmM4M2YwOTQwNjVhLi5mM2RmNzcxNGEzZjMg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwpAQCAtNDQ5MSw4ICs0NDkxLDggQEAgaW50IGludGVs
X2lycV9pbnN0YWxsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogCWludGVs
X2lycV9yZXNldChkZXZfcHJpdik7CiAKLQlyZXQgPSByZXF1ZXN0X2lycShpcnEsIGludGVsX2ly
cV9oYW5kbGVyKGRldl9wcml2KSwKLQkJCSAgSVJRRl9TSEFSRUQsIERSSVZFUl9OQU1FLCBkZXZf
cHJpdik7CisJcmV0ID0gcmVxdWVzdF90aHJlYWRlZF9pcnEoaXJxLCBOVUxMLCBpbnRlbF9pcnFf
aGFuZGxlcihkZXZfcHJpdiksCisJCQkJICAgSVJRRl9TSEFSRUQsIERSSVZFUl9OQU1FLCBkZXZf
cHJpdik7CiAJaWYgKHJldCA8IDApIHsKIAkJZGV2X3ByaXYtPmRybS5pcnFfZW5hYmxlZCA9IGZh
bHNlOwogCQlyZXR1cm4gcmV0OwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
