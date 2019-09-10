Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C38F3AF2D2
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 00:13:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99CBD6E9C9;
	Tue, 10 Sep 2019 22:13:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9CE5D6E9C9;
 Tue, 10 Sep 2019 22:13:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8E1CEA0119;
 Tue, 10 Sep 2019 22:13:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thierry Reding" <thierry.reding@gmail.com>
Date: Tue, 10 Sep 2019 22:13:13 -0000
Message-ID: <20190910221313.31036.47809@emeril.freedesktop.org>
References: <20190805140119.7337-1-kraxel@redhat.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190805140119.7337-1-kraxel@redhat.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_dr?=
 =?utf-8?q?m/ttm=3A_make_ttm_bo_a_gem_bo_subclass_=28rev5=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL3R0bTogbWFrZSB0dG0gYm8gYSBnZW0g
Ym8gc3ViY2xhc3MgKHJldjUpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy82NDcwMS8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpBcHBseWlu
ZzogZHJtL3R0bTogYWRkIGdlbSBiYXNlIG9iamVjdApVc2luZyBpbmRleCBpbmZvIHRvIHJlY29u
c3RydWN0IGEgYmFzZSB0cmVlLi4uCk0JaW5jbHVkZS9kcm0vdHRtL3R0bV9ib19hcGkuaApGYWxs
aW5nIGJhY2sgdG8gcGF0Y2hpbmcgYmFzZSBhbmQgMy13YXkgbWVyZ2UuLi4KQXV0by1tZXJnaW5n
IGluY2x1ZGUvZHJtL3R0bS90dG1fYm9fYXBpLmgKTm8gY2hhbmdlcyAtLSBQYXRjaCBhbHJlYWR5
IGFwcGxpZWQuCkFwcGx5aW5nOiBkcm0vdnJhbTogdXNlIGVtYmVkZGVkIGdlbSBvYmplY3QKVXNp
bmcgaW5kZXggaW5mbyB0byByZWNvbnN0cnVjdCBhIGJhc2UgdHJlZS4uLgpNCWRyaXZlcnMvZ3B1
L2RybS9hc3QvYXN0X21haW4uYwpNCWRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3ZyYW1faGVscGVy
LmMKTQlkcml2ZXJzL2dwdS9kcm0vaGlzaWxpY29uL2hpYm1jL2hpYm1jX3R0bS5jCk0JZHJpdmVy
cy9ncHUvZHJtL3Zib3h2aWRlby92Ym94X21haW4uYwpNCWluY2x1ZGUvZHJtL2RybV9nZW1fdnJh
bV9oZWxwZXIuaApGYWxsaW5nIGJhY2sgdG8gcGF0Y2hpbmcgYmFzZSBhbmQgMy13YXkgbWVyZ2Uu
Li4KQXV0by1tZXJnaW5nIGluY2x1ZGUvZHJtL2RybV9nZW1fdnJhbV9oZWxwZXIuaApBdXRvLW1l
cmdpbmcgZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fdnJhbV9oZWxwZXIuYwpDT05GTElDVCAoY29u
dGVudCk6IE1lcmdlIGNvbmZsaWN0IGluIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3ZyYW1faGVs
cGVyLmMKQXV0by1tZXJnaW5nIGRyaXZlcnMvZ3B1L2RybS9hc3QvYXN0X21haW4uYwplcnJvcjog
RmFpbGVkIHRvIG1lcmdlIGluIHRoZSBjaGFuZ2VzLgpoaW50OiBVc2UgJ2dpdCBhbSAtLXNob3ct
Y3VycmVudC1wYXRjaCcgdG8gc2VlIHRoZSBmYWlsZWQgcGF0Y2gKUGF0Y2ggZmFpbGVkIGF0IDAw
MDIgZHJtL3ZyYW06IHVzZSBlbWJlZGRlZCBnZW0gb2JqZWN0CldoZW4geW91IGhhdmUgcmVzb2x2
ZWQgdGhpcyBwcm9ibGVtLCBydW4gImdpdCBhbSAtLWNvbnRpbnVlIi4KSWYgeW91IHByZWZlciB0
byBza2lwIHRoaXMgcGF0Y2gsIHJ1biAiZ2l0IGFtIC0tc2tpcCIgaW5zdGVhZC4KVG8gcmVzdG9y
ZSB0aGUgb3JpZ2luYWwgYnJhbmNoIGFuZCBzdG9wIHBhdGNoaW5nLCBydW4gImdpdCBhbSAtLWFi
b3J0Ii4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
