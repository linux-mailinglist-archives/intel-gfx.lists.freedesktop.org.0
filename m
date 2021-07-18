Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3263CC8BA
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Jul 2021 13:14:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA93D89CF5;
	Sun, 18 Jul 2021 11:14:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 196F389CF5;
 Sun, 18 Jul 2021 11:14:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 12E43A0169;
 Sun, 18 Jul 2021 11:14:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Leon Romanovsky" <leon@kernel.org>
Date: Sun, 18 Jul 2021 11:14:43 -0000
Message-ID: <162660688305.14775.13309946440237280367@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1626605893.git.leonro@nvidia.com>
In-Reply-To: <cover.1626605893.git.leonro@nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBT?=
 =?utf-8?q?G_fix_together_with_update_to_RDMA_umem?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogU0cgZml4IHRvZ2V0aGVyIHdpdGggdXBkYXRl
IHRvIFJETUEgdW1lbQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9z
ZXJpZXMvOTI2ODIvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0FMTCAgICBzY3Jp
cHRzL2NoZWNrc3lzY2FsbHMuc2gKICBDQUxMICAgIHNjcmlwdHMvYXRvbWljL2NoZWNrLWF0b21p
Y3Muc2gKICBERVNDRU5EIG9ianRvb2wKICBDSEsgICAgIGluY2x1ZGUvZ2VuZXJhdGVkL2NvbXBp
bGUuaAogIENDIFtNXSAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5vCmRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYzogSW4gZnVuY3Rpb24g4oCYaTkx
NV90dG1fdHRfZ2V0X3N04oCZOgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRt
LmM6Mzk2Ojc6IGVycm9yOiB0b28gZmV3IGFyZ3VtZW50cyB0byBmdW5jdGlvbiDigJhfX3NnX2Fs
bG9jX3RhYmxlX2Zyb21fcGFnZXPigJkKICBzZyA9IF9fc2dfYWxsb2NfdGFibGVfZnJvbV9wYWdl
cwogICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CkluIGZpbGUgaW5jbHVkZWQgZnJv
bSAuL2luY2x1ZGUvbGludXgvYmxrZGV2Lmg6MjUsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2lu
Y2x1ZGUvbGludXgvYmxrLWNncm91cC5oOjIzLAogICAgICAgICAgICAgICAgIGZyb20gLi9pbmNs
dWRlL2xpbnV4L3dyaXRlYmFjay5oOjE0LAogICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRl
L2xpbnV4L21lbWNvbnRyb2wuaDoyMiwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9s
aW51eC9zd2FwLmg6OSwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9zdXNw
ZW5kLmg6NSwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9yZWd1bGF0b3Iv
Y29uc3VtZXIuaDozNSwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9pMmMu
aDoxOCwKICAgICAgICAgICAgICAgICBmcm9tIC4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaDozOSwKICAgICAgICAgICAgICAgICBmcm9tIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV90dG0uYzo5OgouL2luY2x1ZGUvbGludXgvc2NhdHRlcmxpc3QuaDoyODk6MjE6IG5v
dGU6IGRlY2xhcmVkIGhlcmUKIHN0cnVjdCBzY2F0dGVybGlzdCAqX19zZ19hbGxvY190YWJsZV9m
cm9tX3BhZ2VzKHN0cnVjdCBzZ190YWJsZSAqc2d0LAogICAgICAgICAgICAgICAgICAgICBefn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4Kc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyNzE6IHJlY2lw
ZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLm8nIGZh
aWxlZAptYWtlWzRdOiAqKiogW2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0u
b10gRXJyb3IgMQpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUxNDogcmVjaXBlIGZvciB0YXJnZXQg
J2RyaXZlcnMvZ3B1L2RybS9pOTE1JyBmYWlsZWQKbWFrZVszXTogKioqIFtkcml2ZXJzL2dwdS9k
cm0vaTkxNV0gRXJyb3IgMgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUxNDogcmVjaXBlIGZvciB0
YXJnZXQgJ2RyaXZlcnMvZ3B1L2RybScgZmFpbGVkCm1ha2VbMl06ICoqKiBbZHJpdmVycy9ncHUv
ZHJtXSBFcnJvciAyCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTE0OiByZWNpcGUgZm9yIHRhcmdl
dCAnZHJpdmVycy9ncHUnIGZhaWxlZAptYWtlWzFdOiAqKiogW2RyaXZlcnMvZ3B1XSBFcnJvciAy
Ck1ha2VmaWxlOjE4NDE6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzJyBmYWlsZWQKbWFrZTog
KioqIFtkcml2ZXJzXSBFcnJvciAyCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
