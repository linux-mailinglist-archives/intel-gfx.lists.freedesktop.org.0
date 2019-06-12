Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E5842AF7
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 17:33:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB3F1896FA;
	Wed, 12 Jun 2019 15:33:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2A60289309;
 Wed, 12 Jun 2019 15:33:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 18373A010C;
 Wed, 12 Jun 2019 15:33:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 12 Jun 2019 15:33:21 -0000
Message-ID: <20190612153321.21004.6485@emeril.freedesktop.org>
References: <20190612093111.11684-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190612093111.11684-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5Bv2=5D_drm/i915=3A_Keep_contexts_pinned_u?=
 =?utf-8?q?ntil_after_the_next_kernel_context_switch_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3YyXSBk
cm0vaTkxNTogS2VlcCBjb250ZXh0cyBwaW5uZWQgdW50aWwgYWZ0ZXIgdGhlIG5leHQga2VybmVs
IGNvbnRleHQgc3dpdGNoIChyZXYyKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9zZXJpZXMvNjE5NDYvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBk
aW0gc3BhcnNlIG9yaWdpbi9kcm0tdGlwClNwYXJzZSB2ZXJzaW9uOiB2MC41LjIKQ29tbWl0OiBk
cm0vaTkxNTogS2VlcCBjb250ZXh0cyBwaW5uZWQgdW50aWwgYWZ0ZXIgdGhlIG5leHQga2VybmVs
IGNvbnRleHQgc3dpdGNoCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBTdG9wIHJldGlyaW5nIGFs
b25nIGVuZ2luZQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogUmVwbGFjZSBlbmdpbmUtPnRpbWVs
aW5lIHdpdGggYSBwbGFpbiBsaXN0Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBGbHVzaCB0aGUg
ZXhlY3V0aW9uLWNhbGxiYWNrcyBvbiByZXRpcmluZwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9l
eGVjbGlzdHM6IFByZWVtcHQtdG8tYnVzeQotZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3Rz
Ly4uL2k5MTVfdXRpbHMuaDoyMjA6MTY6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9m
KHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvLi4vaTkxNV91dGlscy5oOjIz
MjoxNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKCkNvbW1pdDogZHJt
L2k5MTUvZXhlY2xpc3RzOiBNaW5pbWFsaXN0aWMgdGltZXNsaWNpbmcKK2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jOjg3NjoxNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBz
aXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jOjg3NjoxNjog
d2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKCkNvbW1pdDogZHJtL2k5MTUv
ZXhlY2xpc3RzOiBGb3JjZSBwcmVlbXB0aW9uCisKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
dXRpbHMuaDoyMzI6MTY6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitF
cnJvciBpbiByZWFkaW5nIG9yIGVuZCBvZiBmaWxlLgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
