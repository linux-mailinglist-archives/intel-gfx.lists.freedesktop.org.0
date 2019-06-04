Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8E634FD3
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 20:29:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C3E289BA3;
	Tue,  4 Jun 2019 18:29:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9A70D89180;
 Tue,  4 Jun 2019 18:29:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 96200A0088;
 Tue,  4 Jun 2019 18:29:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 04 Jun 2019 18:29:54 -0000
Message-ID: <20190604182954.13710.74345@emeril.freedesktop.org>
References: <20190604153830.19096-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190604153830.19096-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/gtt=3A_Replace_struct=5Fmutex_serialisation_for_all?=
 =?utf-8?q?ocation_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3R0OiBSZXBsYWNlIHN0cnVj
dF9tdXRleCBzZXJpYWxpc2F0aW9uIGZvciBhbGxvY2F0aW9uIChyZXYyKQpVUkwgICA6IGh0dHBz
Oi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjE1MzMvClN0YXRlIDogd2Fybmlu
ZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAoxNWRhOTMy
ZjExZDcgZHJtL2k5MTUvZ3R0OiBSZXBsYWNlIHN0cnVjdF9tdXRleCBzZXJpYWxpc2F0aW9uIGZv
ciBhbGxvY2F0aW9uCi06NTAxOiBDSEVDSzpVTkNPTU1FTlRFRF9ERUZJTklUSU9OOiBzcGlubG9j
a190IGRlZmluaXRpb24gd2l0aG91dCBjb21tZW50CiM1MDE6IEZJTEU6IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5oOjI1OToKKwlzcGlubG9ja190IGxvY2s7CgotOjUwOTogQ0hF
Q0s6VU5DT01NRU5URURfREVGSU5JVElPTjogc3BpbmxvY2tfdCBkZWZpbml0aW9uIHdpdGhvdXQg
Y29tbWVudAojNTA5OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaDoy
NjY6CisJc3BpbmxvY2tfdCBsb2NrOwoKLTo1MTU6IENIRUNLOlVOQ09NTUVOVEVEX0RFRklOSVRJ
T046IHNwaW5sb2NrX3QgZGVmaW5pdGlvbiB3aXRob3V0IGNvbW1lbnQKIzUxNTogRklMRTogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0Lmg6MjcyOgorCXNwaW5sb2NrX3QgbG9jazsK
CnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgMyBjaGVja3MsIDQ2NCBsaW5lcyBjaGVja2Vk
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
