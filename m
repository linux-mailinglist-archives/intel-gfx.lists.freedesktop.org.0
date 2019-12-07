Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C97D115F40
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 23:26:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C496F6E26F;
	Sat,  7 Dec 2019 22:26:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4962A6E26F
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2019 22:26:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19498579-1500050 
 for multiple; Sat, 07 Dec 2019 22:26:45 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Dec 2019 22:26:44 +0000
Message-Id: <20191207222644.2830129-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Comment on inability to check
 args.pad for MMAP_OFFSET
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

U2luY2Ugd2UgZGlkbid0IGNoZWNrIGFuZCBpbnNpc3QgdGhhdCBhcmdzLnBhZCBtdXN0IGJlIHpl
cm8gZm9yIE1NQVBfR1RUCmhpc3RvcmljYWxseSwgd2UgY2Fubm90IGluc2VydCBhIGNoZWNrIG5v
dyBhcyBvbGQgdXNlcnNwYWNlIG1heSBiZQpmZWVkaW5nIGluIGdhcmJhZ2UuIEFzIHN1Y2ggdGhl
IGxhY2sgb2YgY2hlY2sgaXMgZW5zaHJpbmVkIGludG8gdGhlIEFCSSwKc28gYWRkIGEgY29tbWVu
dCB0byByZW1pbmQgdXMgd2UgY2Fubm90IGFkZCB0aGUgY2hlY2sgbGF0ZXIuCgpTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IEpvb25hcyBM
YWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jIHwgOSArKysrKysrKysKIDEgZmlsZSBjaGFu
Z2VkLCA5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fbW1hbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21t
YW4uYwppbmRleCAzYTNmMzBiYzhhYzcuLjE1ZmFmOTVkNzRjYSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCkBAIC02MjAsNiArNjIwLDE1IEBAIGk5MTVfZ2VtX21t
YXBfb2Zmc2V0X2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJZW51
bSBpOTE1X21tYXBfdHlwZSB0eXBlOwogCWludCBlcnI7CiAKKwkvKgorCSAqIEhpc3RvcmljYWxs
eSB3ZSBmYWlsZWQgdG8gY2hlY2sgYXJncy5wYWQgYW5kIGFyZ3Mub2Zmc2V0CisJICogYW5kIHNv
IHdlIGNhbm5vdCB0aG9zZSBmaWVsZHMgZm9yIHVzZXIgaW5wdXQgYW5kIHdlIGNhbm5vdAorCSAq
IGFkZCAtRUlOVkFMIGZvciB0aGVtIGFzIHRoZSBBQkkgaXMgZml4ZWQsIGkuZS4gb2xkIHVzZXJz
cGFjZQorCSAqIG1heSBiZSBmZWVkaW5nIGluIGdhcmJhZ2UgaW4gdGhvc2UgZmllbGRzLgorCSAq
CisJICogaWYgKGFyZ3MtPnBhZCkgcmV0dXJuIC1FSU5WQUw7IGlzIHZlcmJvdHRlbiEKKwkgKi8K
KwogCWVyciA9IGk5MTVfdXNlcl9leHRlbnNpb25zKHU2NF90b191c2VyX3B0cihhcmdzLT5leHRl
bnNpb25zKSwKIAkJCQkgICBOVUxMLCAwLCBOVUxMKTsKIAlpZiAoZXJyKQotLSAKMi4yNC4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
