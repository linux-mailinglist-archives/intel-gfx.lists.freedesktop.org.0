Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0C06E62E
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 15:15:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DE126E82E;
	Fri, 19 Jul 2019 13:15:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8912B6E82E
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 13:15:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17429614-1500050 
 for multiple; Fri, 19 Jul 2019 14:15:25 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Jul 2019 14:15:24 +0100
Message-Id: <20190719131524.827-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gtt: Correct unshifted 'from' for
 gen8_ppgtt_alloc errors
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

U2luY2UgdGhlIHVuZGVybHlpbmcgX19nZW44X3BwZ3R0X2NsZWFyIHRha2VzIHRoZSBzaGlmdGVk
IGFkZHJlc3MsIHdlCm11c3QgcmVtZW1iZXIgdG8gcHJvdmlkZSBpdCB3aXRoIHRoZSBwcmVzaGlm
dGVkIG9yaWdpbmFsIHN0YXJ0IGFkZHJlc3MuCgpSZXBvcnRlZC1ieTogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3Vs
aW5AaW50ZWwuY29tPgpDYzogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXgu
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgMyAr
Ky0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCmluZGV4IDIyMGFiYTVhOTRkMi4uMDMxYmNkMjJmNWU2
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwpAQCAtMTEwMyw3ICsxMTAzLDcgQEAg
c3RhdGljIGludCBfX2dlbjhfcHBndHRfYWxsb2Moc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAq
IGNvbnN0IHZtLAogc3RhdGljIGludCBnZW44X3BwZ3R0X2FsbG9jKHN0cnVjdCBpOTE1X2FkZHJl
c3Nfc3BhY2UgKnZtLAogCQkJICAgIHU2NCBzdGFydCwgdTY0IGxlbmd0aCkKIHsKLQl1NjQgZnJv
bSA9IHN0YXJ0OworCXU2NCBmcm9tOwogCWludCBlcnI7CiAKIAlHRU1fQlVHX09OKCFJU19BTElH
TkVEKHN0YXJ0LCBCSVRfVUxMKEdFTjhfUFRFX1NISUZUKSkpOwpAQCAtMTExMiw2ICsxMTEyLDcg
QEAgc3RhdGljIGludCBnZW44X3BwZ3R0X2FsbG9jKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2Ug
KnZtLAogCXN0YXJ0ID4+PSBHRU44X1BURV9TSElGVDsKIAlsZW5ndGggPj49IEdFTjhfUFRFX1NI
SUZUOwogCUdFTV9CVUdfT04obGVuZ3RoID09IDApOworCWZyb20gPSBzdGFydDsKIAogCWVyciA9
IF9fZ2VuOF9wcGd0dF9hbGxvYyh2bSwgaTkxNV92bV90b19wcGd0dCh2bSktPnBkLAogCQkJCSAm
c3RhcnQsIHN0YXJ0ICsgbGVuZ3RoLCB2bS0+dG9wKTsKLS0gCjIuMjIuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
