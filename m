Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8639889EF8
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 14:57:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A172D6E503;
	Mon, 12 Aug 2019 12:57:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8486D6E4F1;
 Mon, 12 Aug 2019 12:57:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7CE06A0071;
 Mon, 12 Aug 2019 12:57:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 12 Aug 2019 12:57:39 -0000
Message-ID: <20190812125739.20592.91353@emeril.freedesktop.org>
References: <20190812091045.29587-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190812091045.29587-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B1/8=5D_drm/i915/execlists=3A_Avoid_sync_?=
 =?utf-8?q?calls_during_park_=28rev2=29?=
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
ZHJtL2k5MTUvZXhlY2xpc3RzOiBBdm9pZCBzeW5jIGNhbGxzIGR1cmluZyBwYXJrIChyZXYyKQpV
UkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjUwODAvClN0
YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gc3BhcnNlIG9yaWdpbi9kcm0tdGlw
ClNwYXJzZSB2ZXJzaW9uOiB2MC41LjIKQ29tbWl0OiBkcm0vaTkxNS9leGVjbGlzdHM6IEF2b2lk
IHN5bmMgY2FsbHMgZHVyaW5nIHBhcmsKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvc2VsZnRlc3Rz
OiBQcmV2ZW50IHRoZSB0aW1lc2xpY2UgZXhwaXJpbmcgZHVyaW5nIHN1cHByZXNzaW9uIHRlc3Rz
Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2d1YzogVXNlIGEgbG9jYWwgY2FuY2VsX3BvcnRfcmVx
dWVzdHMKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IFB1c2ggdGhlIHdha2VyZWYtPmNvdW50IGRl
ZmVycmFsIHRvIHRoZSBiYWNrZW5kCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2d0OiBTYXZlL3Jl
c3RvcmUgaW50ZXJydXB0cyBhcm91bmQgYnJlYWRjcnVtYiBkaXNhYmxlCk9rYXkhCgpDb21taXQ6
IGRybS9pOTE1L2d1YzogS2VlcCB0aGUgZW5naW5lIGF3YWtlIHVudGlsIHRoZSB0YXNrbGV0IGlz
IGlkbGUKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvZ3Q6IFVzZSB0aGUgbG9jYWwgZW5naW5lIHdh
a2VyZWYgd2hlbiBjaGVja2luZyBSSU5HIHJlZ2lzdGVycwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkx
NS9leGVjbGlzdHM6IExpZnQgcHJvY2Vzc19jc2IoKSBvdXQgb2YgdGhlIGlycS1vZmYgc3Bpbmxv
Y2sKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jOjk4MzoyNDogd2FybmluZzog
ZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jOjk4MzoyNDogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkK
LS4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oOjI2MjoxNjogd2FybmluZzogZXhw
cmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLS4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91
dGlscy5oOjI2MjoxNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLS4v
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oOjI2MjoxNjogd2FybmluZzogZXhwcmVz
c2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLS4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGls
cy5oOjI2MjoxNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLS4vZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oOjI2MjoxNjogd2FybmluZzogZXhwcmVzc2lv
biB1c2luZyBzaXplb2Yodm9pZCkKLS4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5o
OjI2MjoxNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLS4vZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oOjI2MjoxNjogd2FybmluZzogZXhwcmVzc2lvbiB1
c2luZyBzaXplb2Yodm9pZCkKLS4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oOjI2
MjoxNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKKy4vZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV91dGlscy5oOjI2MDoxNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2lu
ZyBzaXplb2Yodm9pZCkKKy4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oOjI2MDox
Njogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKKy4vZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV91dGlscy5oOjI2MDoxNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBz
aXplb2Yodm9pZCkKKy4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oOjI2MDoxNjog
d2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKKy4vZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV91dGlscy5oOjI2MDoxNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXpl
b2Yodm9pZCkKKy4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oOjI2MDoxNjogd2Fy
bmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKKy4vZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV91dGlscy5oOjI2MDoxNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yo
dm9pZCkKKy4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oOjI2MDoxNjogd2Fybmlu
ZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLWRyaXZlcnMvZ3B1L2RybS9pOTE1L3Nl
bGZ0ZXN0cy8uLi9pOTE1X3V0aWxzLmg6MjYyOjE2OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5n
IHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzLy4uL2k5MTVfdXRp
bHMuaDoyNjA6MTY6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
