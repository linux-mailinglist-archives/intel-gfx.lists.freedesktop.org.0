Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC903B66FC
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 18:49:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 993BA6E44F;
	Mon, 28 Jun 2021 16:49:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 761E76E44F;
 Mon, 28 Jun 2021 16:49:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 71ED7A66C9;
 Mon, 28 Jun 2021 16:49:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Desmond Cheong Zhi Xi" <desmondcheongzx@gmail.com>
Date: Mon, 28 Jun 2021 16:49:31 -0000
Message-ID: <162489897146.2572.15039294713646263955@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210623113740.6260-1-desmondcheongzx@gmail.com>
In-Reply-To: <20210623113740.6260-1-desmondcheongzx@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm=3A_address_potential_UAF_bugs_with_drm=5Fmaster_ptrs?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtOiBhZGRyZXNzIHBvdGVudGlhbCBVQUYg
YnVncyB3aXRoIGRybV9tYXN0ZXIgcHRycwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9zZXJpZXMvOTE5NjkvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoK
Q0FMTCAgICBzY3JpcHRzL2NoZWNrc3lzY2FsbHMuc2gKICBDQUxMICAgIHNjcmlwdHMvYXRvbWlj
L2NoZWNrLWF0b21pY3Muc2gKICBERVNDRU5EIG9ianRvb2wKICBDSEsgICAgIGluY2x1ZGUvZ2Vu
ZXJhdGVkL2NvbXBpbGUuaAogIENDICAgICAgZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3Iu
bwpkcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rvci5jOiBJbiBmdW5jdGlvbiDigJhkcm1fbW9k
ZV9nZXRjb25uZWN0b3LigJk6CmRyaXZlcnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmM6MjQ0ODo1
NDogZXJyb3I6IGV4cGVjdGVkIOKAmDvigJkgYmVmb3JlIOKAmG11dGV4X2xvY2tfbmVzdGVk4oCZ
CiAgaXNfY3VycmVudF9tYXN0ZXIgPSBkcm1faXNfY3VycmVudF9tYXN0ZXIoZmlsZV9wcml2KQog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDsKc2Ny
aXB0cy9NYWtlZmlsZS5idWlsZDoyNzI6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9k
cm0vZHJtX2Nvbm5lY3Rvci5vJyBmYWlsZWQKbWFrZVszXTogKioqIFtkcml2ZXJzL2dwdS9kcm0v
ZHJtX2Nvbm5lY3Rvci5vXSBFcnJvciAxCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTE1OiByZWNp
cGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtJyBmYWlsZWQKbWFrZVsyXTogKioqIFtkcml2
ZXJzL2dwdS9kcm1dIEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MTU6IHJlY2lwZSBm
b3IgdGFyZ2V0ICdkcml2ZXJzL2dwdScgZmFpbGVkCm1ha2VbMV06ICoqKiBbZHJpdmVycy9ncHVd
IEVycm9yIDIKTWFrZWZpbGU6MTg0NzogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMnIGZhaWxl
ZAptYWtlOiAqKiogW2RyaXZlcnNdIEVycm9yIDIKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
