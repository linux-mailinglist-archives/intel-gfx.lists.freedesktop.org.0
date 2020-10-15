Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F5828F1F0
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 14:21:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D72556ECC6;
	Thu, 15 Oct 2020 12:21:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 854F66ECC4
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 12:21:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22724264-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 13:21:38 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Oct 2020 13:21:35 +0100
Message-Id: <20201015122138.30161-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/4] drm/i915: Mark ininitial fb obj as WT on eLLC
 machines to avoid rcu lockup during fbdev init
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkN1
cnJlbnRseSB3ZSBsZWF2ZSB0aGUgY2FjaGVfbGV2ZWwgb2YgdGhlIGluaXRpYWwgZmIgb2JqCnNl
dCB0byBOT05FLiBUaGlzIG1lYW5zIG9uIGVMTEMgbWFjaGluZXMgdGhlIGZpcnN0IHBpbl90b19k
aXNwbGF5KCkKd2lsbCB0cnkgdG8gc3dpdGNoIGl0IHRvIFdUIHdoaWNoIHJlcXVpcmVzIGEgdm1h
IHVuYmluZCtiaW5kLgpJZiB0aGF0IGhhcHBlbnMgZHVyaW5nIHRoZSBmYmRldiBpbml0aWFsaXph
dGlvbiByY3UgZG9lcyBub3QKc2VlbSBvcGVyYXRpb25hbCB3aGljaCBjYXVzZXMgdGhlIHVuYmlu
ZCB0byBnZXQgc3R1Y2suIFRvCm1vc3QgYXBwZWFyYW5jZXMgdGhpcyBsb29rcyBsaWtlIGEgZGVh
ZCBtYWNoaW5lIG9uIGJvb3QuCgpBdm9pZCB0aGUgdW5iaW5kIGJ5IGFscmVhZHkgbWFya2luZyB0
aGUgb2JqZWN0IGNhY2hlX2xldmVsCmFzIFdUIHdoZW4gY3JlYXRpbmcgaXQuIFdlIHN0aWxsIGRv
IGFuIGV4Y3BsaWNpdCBnZ3R0IHBpbgp3aGljaCB3aWxsIHJld3JpdGUgdGhlIFBURXMgYW55d2F5
LCBzbyB0aGV5IHdpbGwgbWF0Y2ggd2hhdGV2ZXIKY2FjaGUgbGV2ZWwgd2Ugc2V0LgoKQ2M6IDxz
dGFibGVAdmdlci5rZXJuZWwub3JnPiAjIHY1LjcrClN1Z2dlc3RlZC1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy8yMzgxClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ckxpbms6IGh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDIwMTAwNzEyMDMyOS4xNzA3Ni0xLXZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgfCA4ICsrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpp
bmRleCBjMDE2YjVkOTU2MWUuLmEwMmNhN2RlNzJkZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTM0NDksNiArMzQ0OSwxNCBAQCBpbml0aWFs
X3BsYW5lX3ZtYShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAlpZiAoSVNfRVJSKG9i
aikpCiAJCXJldHVybiBOVUxMOwogCisJLyoKKwkgKiBNYXJrIGl0IFdUIGFoZWFkIG9mIHRpbWUg
dG8gYXZvaWQgY2hhbmdpbmcgdGhlCisJICogY2FjaGVfbGV2ZWwgZHVyaW5nIGZiZGV2IGluaXRp
YWxpemF0aW9uLiBUaGUKKwkgKiB1bmJpbmQgdGhlcmUgd291bGQgZ2V0IHN0dWNrIHdhaXRpbmcg
Zm9yIHJjdS4KKwkgKi8KKwlpOTE1X2dlbV9vYmplY3Rfc2V0X2NhY2hlX2NvaGVyZW5jeShvYmos
IEhBU19XVChpOTE1KSA/CisJCQkJCSAgICBJOTE1X0NBQ0hFX1dUIDogSTkxNV9DQUNIRV9OT05F
KTsKKwogCXN3aXRjaCAocGxhbmVfY29uZmlnLT50aWxpbmcpIHsKIAljYXNlIEk5MTVfVElMSU5H
X05PTkU6CiAJCWJyZWFrOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
