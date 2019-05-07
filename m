Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFF71637F
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 14:11:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 791526E7C2;
	Tue,  7 May 2019 12:11:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A1736E7C2
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 12:11:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16476422-1500050 
 for multiple; Tue, 07 May 2019 13:11:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 May 2019 13:11:05 +0100
Message-Id: <20190507121108.18377-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Flush the
 switch-to-kernel-context harder for DROP_IDLE
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

VG8gY29tcGxldGUgdGhlIGlkbGUgd29ya2VyLCB3ZSBtdXN0IGNvbXBsZXRlIDIgcGFzc2VzIG9m
IHdhaXQtZm9yLWlkbGUuCkF0IHRoZSBlbmQgb2YgdGhlIGZpcnN0IHBhc3MsIHdlIHF1ZXVlIGEg
c3dpdGNoLXRvLWtlcm5lbC1jb250ZXh0IGFuZAptYXkgb25seSBpZGxlIGFmdGVyIHdhaXRpbmcg
Zm9yIGl0cyBjb21wbGV0aW9uLiBTcGVlZCB1cCB0aGUgZmx1c2hfd29yawpieSBkb2luZyB0aGUg
d2FpdCBleHBsaWNpdGx5LCB3aGljaCB0aGVuIGFsbG93cyB1cyB0byByZW1vdmUgdGhlCnVuYm91
bmRlZCBsb29wIHRyeWluZyB0byBjb21wbGV0ZSB0aGUgZmx1c2hfd29yayBpbiB0aGUgbmV4dCBw
YXRjaC4KClJlZmVyZW5jZXM6IDc5ZmZhYzg1OTljNCAoImRybS9pOTE1OiBJbnZlcnQgdGhlIEdF
TSB3YWtlcmVmIGhpZXJhcmNoeSIpClRlc3RjYXNlOiBpZ3QvZ2VtX3BwZ3R0L2ZsaW5kLWFuZC1j
bG9zZS12bWEtbGVhawpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgfCAxNiArKysrKysrKysr
KysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCmluZGV4IDE0Y2Q4M2U5ZWE4Yi4uZjYwYWVk
Nzc0N2U1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwpAQCAtMzkwMSwxNCArMzkw
MSwyNiBAQCBpOTE1X2Ryb3BfY2FjaGVzX3NldCh2b2lkICpkYXRhLCB1NjQgdmFsKQogCiAJLyog
Tm8gbmVlZCB0byBjaGVjayBhbmQgd2FpdCBmb3IgZ3B1IHJlc2V0cywgb25seSBsaWJkcm0gYXV0
by1yZXN0YXJ0cwogCSAqIG9uIGlvY3RscyBvbiAtRUFHQUlOLiAqLwotCWlmICh2YWwgJiAoRFJP
UF9BQ1RJVkUgfCBEUk9QX1JFVElSRSB8IERST1BfUkVTRVRfU0VRTk8pKSB7CisJaWYgKHZhbCAm
IChEUk9QX0FDVElWRSB8IERST1BfSURMRSB8IERST1BfUkVUSVJFIHwgRFJPUF9SRVNFVF9TRVFO
TykpIHsKIAkJaW50IHJldDsKIAogCQlyZXQgPSBtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJmk5
MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwogCQlpZiAocmV0KQogCQkJcmV0dXJuIHJldDsKIAotCQlp
ZiAodmFsICYgRFJPUF9BQ1RJVkUpCisJCS8qCisJCSAqIFRvIGZpbmlzaCB0aGUgZmx1c2ggb2Yg
dGhlIGlkbGVfd29ya2VyLCB3ZSBtdXN0IGNvbXBsZXRlCisJCSAqIHRoZSBzd2l0Y2gtdG8ta2Vy
bmVsLWNvbnRleHQsIHdoaWNoIHJlcXVpcmVzIGEgZG91YmxlCisJCSAqIHBhc3MgdGhyb3VnaCB3
YWl0X2Zvcl9pZGxlOiBmaXJzdCBxdWV1ZXMgdGhlIHN3aXRjaCwKKwkJICogc2Vjb25kIHdhaXRz
IGZvciB0aGUgc3dpdGNoLgorCQkgKi8KKwkJaWYgKHJldCA9PSAwICYmIHZhbCAmIChEUk9QX0lE
TEUgfCBEUk9QX0FDVElWRSkpCisJCQlyZXQgPSBpOTE1X2dlbV93YWl0X2Zvcl9pZGxlKGk5MTUs
CisJCQkJCQkgICAgIEk5MTVfV0FJVF9JTlRFUlJVUFRJQkxFIHwKKwkJCQkJCSAgICAgSTkxNV9X
QUlUX0xPQ0tFRCwKKwkJCQkJCSAgICAgTUFYX1NDSEVEVUxFX1RJTUVPVVQpOworCisJCWlmIChy
ZXQgPT0gMCAmJiB2YWwgJiBEUk9QX0lETEUpCiAJCQlyZXQgPSBpOTE1X2dlbV93YWl0X2Zvcl9p
ZGxlKGk5MTUsCiAJCQkJCQkgICAgIEk5MTVfV0FJVF9JTlRFUlJVUFRJQkxFIHwKIAkJCQkJCSAg
ICAgSTkxNV9XQUlUX0xPQ0tFRCwKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
