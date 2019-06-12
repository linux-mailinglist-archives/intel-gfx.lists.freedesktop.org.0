Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 099E6421C0
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 11:57:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F4D989483;
	Wed, 12 Jun 2019 09:57:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 544AE8947A;
 Wed, 12 Jun 2019 09:57:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4D544A0071;
 Wed, 12 Jun 2019 09:57:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 12 Jun 2019 09:57:03 -0000
Message-ID: <20190612095703.21004.56428@emeril.freedesktop.org>
References: <20190612093111.11684-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190612093111.11684-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B1/8=5D_drm/i915=3A_Keep_contexts_pinned_?=
 =?utf-8?q?until_after_the_next_kernel_context_switch?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvOF0g
ZHJtL2k5MTU6IEtlZXAgY29udGV4dHMgcGlubmVkIHVudGlsIGFmdGVyIHRoZSBuZXh0IGtlcm5l
bCBjb250ZXh0IHN3aXRjaApVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9y
Zy9zZXJpZXMvNjE5NDYvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gc3Bh
cnNlIG9yaWdpbi9kcm0tdGlwClNwYXJzZSB2ZXJzaW9uOiB2MC41LjIKQ29tbWl0OiBkcm0vaTkx
NTogS2VlcCBjb250ZXh0cyBwaW5uZWQgdW50aWwgYWZ0ZXIgdGhlIG5leHQga2VybmVsIGNvbnRl
eHQgc3dpdGNoCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBTdG9wIHJldGlyaW5nIGFsb25nIGVu
Z2luZQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogUmVwbGFjZSBlbmdpbmUtPnRpbWVsaW5lIHdp
dGggYSBwbGFpbiBsaXN0Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBGbHVzaCB0aGUgZXhlY3V0
aW9uLWNhbGxiYWNrcyBvbiByZXRpcmluZwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9leGVjbGlz
dHM6IFByZWVtcHQtdG8tYnVzeQotZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzLy4uL2k5
MTVfdXRpbHMuaDoyMjA6MTY6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQp
Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvLi4vaTkxNV91dGlscy5oOjIzMjoxNjog
d2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKCkNvbW1pdDogZHJtL2k5MTUv
ZXhlY2xpc3RzOiBNaW5pbWFsaXN0aWMgdGltZXNsaWNpbmcKK2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jOjg3NjoxNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yo
dm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jOjg3NjoxNjogd2Fybmlu
ZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKCkNvbW1pdDogZHJtL2k5MTUvZXhlY2xp
c3RzOiBGb3JjZSBwcmVlbXB0aW9uCisKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMu
aDoyMzI6MTY6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitFcnJvciBp
biByZWFkaW5nIG9yIGVuZCBvZiBmaWxlLgoKQ29tbWl0OiBkcm0vaTkxNTogQWRkIGEgbGFiZWwg
Zm9yIGNvbmZpZyBEUk1fSTkxNV9TUElOX1JFUVVFU1QKT2theSEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
