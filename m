Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2FF75BDE
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 02:06:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 148AF6E83B;
	Fri, 26 Jul 2019 00:06:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3C3426E82C;
 Fri, 26 Jul 2019 00:06:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 362C9A010A;
 Fri, 26 Jul 2019 00:06:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 26 Jul 2019 00:06:13 -0000
Message-ID: <20190726000613.29713.66970@emeril.freedesktop.org>
References: <20190725224407.4206-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190725224407.4206-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B1/5=5D_drm/i915=3A_Capture_vma_contents_?=
 =?utf-8?q?outside_of_spinlock?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNV0g
ZHJtL2k5MTU6IENhcHR1cmUgdm1hIGNvbnRlbnRzIG91dHNpZGUgb2Ygc3BpbmxvY2sKVVJMICAg
OiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY0MjY4LwpTdGF0ZSA6
IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIHNwYXJzZSBvcmlnaW4vZHJtLXRpcApTcGFy
c2UgdmVyc2lvbjogdjAuNS4yCkNvbW1pdDogZHJtL2k5MTU6IENhcHR1cmUgdm1hIGNvbnRlbnRz
IG91dHNpZGUgb2Ygc3BpbmxvY2sKLU86ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJy
b3IuYzoxMDA3OjIxOiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQotTzpk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jOjEwMDc6MjE6IHdhcm5pbmc6IGV4
cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dw
dV9lcnJvci5jOjEwMDc6MjE6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQp
Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jOjEwMDc6MjE6IHdhcm5pbmc6
IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCgpDb21taXQ6IGRybS9pOTE1L2d0OiBBZGQg
dG8gdGltZWxpbmUgcmVxdWlyZXMgdGhlIHRpbWVsaW5lIG11dGV4Ck9rYXkhCgpDb21taXQ6IGRy
bS9pOTE1OiBVbnNoYXJlIHRoZSBpZGxlLWJhcnJpZXIgZnJvbSBvdGhlciBrZXJuZWwgcmVxdWVz
dHMKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvZXhlY2xpc3RzOiBGb3JjZSBwcmVlbXB0aW9uCisK
Ky4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oOjIzMjoxNjogd2FybmluZzogZXhw
cmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK0Vycm9yIGluIHJlYWRpbmcgb3IgZW5kIG9mIGZp
bGUuCgpDb21taXQ6IGRybS9pOTE1OiBSZXBsYWNlIGhhbmdjaGVjayBieSBoZWFydGJlYXRzCisK
K0Vycm9yIGluIHJlYWRpbmcgb3IgZW5kIG9mIGZpbGUuCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
