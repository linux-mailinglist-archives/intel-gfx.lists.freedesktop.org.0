Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C437DE49
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 16:54:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 630C46E6B2;
	Thu,  1 Aug 2019 14:54:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8E3326E365;
 Thu,  1 Aug 2019 14:54:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 865AAA0114;
 Thu,  1 Aug 2019 14:54:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Pietrasiewicz" <andrzej.p@collabora.com>
Date: Thu, 01 Aug 2019 14:54:35 -0000
Message-ID: <20190801145435.30399.52427@emeril.freedesktop.org>
References: <65481afa-1104-4ee9-e53d-f2732a10d4b9@baylibre.com>
X-Patchwork-Hint: ignore
In-Reply-To: <65481afa-1104-4ee9-e53d-f2732a10d4b9@baylibre.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5B01/13=5D_drm/amdgpu=3A_Provide_ddc_symlink_?=
 =?utf-8?q?in_dm_connector=27s_sysfs_directory?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzEz
XSBkcm0vYW1kZ3B1OiBQcm92aWRlIGRkYyBzeW1saW5rIGluIGRtIGNvbm5lY3RvcidzIHN5c2Zz
IGRpcmVjdG9yeQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvNjQ1MTAvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQXBwbHlpbmc6IGRybS9h
bWRncHU6IFByb3ZpZGUgZGRjIHN5bWxpbmsgaW4gZG0gY29ubmVjdG9yJ3Mgc3lzZnMgZGlyZWN0
b3J5CkFwcGx5aW5nOiBkcm0vcmFkZW9uOiBFbGltaW5hdGUgcG9zc2libGUgdXNlIG9mIGFuIHVu
aW5pdGlhbGl6ZWQgdmFyaWFibGUKVXNpbmcgaW5kZXggaW5mbyB0byByZWNvbnN0cnVjdCBhIGJh
c2UgdHJlZS4uLgpNCWRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2Nvbm5lY3RvcnMuYwpG
YWxsaW5nIGJhY2sgdG8gcGF0Y2hpbmcgYmFzZSBhbmQgMy13YXkgbWVyZ2UuLi4KQXV0by1tZXJn
aW5nIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2Nvbm5lY3RvcnMuYwpDT05GTElDVCAo
Y29udGVudCk6IE1lcmdlIGNvbmZsaWN0IGluIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9u
X2Nvbm5lY3RvcnMuYwplcnJvcjogRmFpbGVkIHRvIG1lcmdlIGluIHRoZSBjaGFuZ2VzLgpoaW50
OiBVc2UgJ2dpdCBhbSAtLXNob3ctY3VycmVudC1wYXRjaCcgdG8gc2VlIHRoZSBmYWlsZWQgcGF0
Y2gKUGF0Y2ggZmFpbGVkIGF0IDAwMDIgZHJtL3JhZGVvbjogRWxpbWluYXRlIHBvc3NpYmxlIHVz
ZSBvZiBhbiB1bmluaXRpYWxpemVkIHZhcmlhYmxlCldoZW4geW91IGhhdmUgcmVzb2x2ZWQgdGhp
cyBwcm9ibGVtLCBydW4gImdpdCBhbSAtLWNvbnRpbnVlIi4KSWYgeW91IHByZWZlciB0byBza2lw
IHRoaXMgcGF0Y2gsIHJ1biAiZ2l0IGFtIC0tc2tpcCIgaW5zdGVhZC4KVG8gcmVzdG9yZSB0aGUg
b3JpZ2luYWwgYnJhbmNoIGFuZCBzdG9wIHBhdGNoaW5nLCBydW4gImdpdCBhbSAtLWFib3J0Ii4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
