Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F89983AF
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 20:52:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD0306E99F;
	Wed, 21 Aug 2019 18:52:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D47456E9CB;
 Wed, 21 Aug 2019 18:52:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CC931A0118;
 Wed, 21 Aug 2019 18:52:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m_=28VMware=29?= <thomas_os@shipmail.org>
Date: Wed, 21 Aug 2019 18:52:23 -0000
Message-ID: <20190821185223.4278.26514@emeril.freedesktop.org>
References: <20190820145336.15649-1-daniel.vetter@ffwll.ch>
X-Patchwork-Hint: ignore
In-Reply-To: <20190820145336.15649-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_RFC/?=
 =?utf-8?q?T=3A_dma=5Fresv_vs=2E_mmap=5Fsem_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogUkZDL1Q6IGRtYV9yZXN2IHZzLiBtbWFwX3Nl
bSAocmV2MykKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzY1NDg4LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkFwcGx5aW5nOiBkbWFfcmVz
djogcHJpbWUgbG9ja2RlcCBhbm5vdGF0aW9ucwpBcHBseWluZzogZHJtL25vdXZlYXU6IHNsb3dw
YXRoIGZvciBwdXNoYnVmIGlvY3RsCkFwcGx5aW5nOiBkcm0vdHRtOiByZW1vdmUgdHRtX2JvX3dh
aXRfdW5yZXNlcnZlZAplcnJvcjogcGF0Y2ggZmFpbGVkOiBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0
bV9ib192bS5jOjEyNQplcnJvcjogZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uYzogcGF0
Y2ggZG9lcyBub3QgYXBwbHkKZXJyb3I6IERpZCB5b3UgaGFuZCBlZGl0IHlvdXIgcGF0Y2g/Ckl0
IGRvZXMgbm90IGFwcGx5IHRvIGJsb2JzIHJlY29yZGVkIGluIGl0cyBpbmRleC4KaGludDogVXNl
ICdnaXQgYW0gLS1zaG93LWN1cnJlbnQtcGF0Y2gnIHRvIHNlZSB0aGUgZmFpbGVkIHBhdGNoClVz
aW5nIGluZGV4IGluZm8gdG8gcmVjb25zdHJ1Y3QgYSBiYXNlIHRyZWUuLi4KTQlkcml2ZXJzL2dw
dS9kcm0vdHRtL3R0bV9ib192bS5jClBhdGNoIGZhaWxlZCBhdCAwMDAzIGRybS90dG06IHJlbW92
ZSB0dG1fYm9fd2FpdF91bnJlc2VydmVkCldoZW4geW91IGhhdmUgcmVzb2x2ZWQgdGhpcyBwcm9i
bGVtLCBydW4gImdpdCBhbSAtLWNvbnRpbnVlIi4KSWYgeW91IHByZWZlciB0byBza2lwIHRoaXMg
cGF0Y2gsIHJ1biAiZ2l0IGFtIC0tc2tpcCIgaW5zdGVhZC4KVG8gcmVzdG9yZSB0aGUgb3JpZ2lu
YWwgYnJhbmNoIGFuZCBzdG9wIHBhdGNoaW5nLCBydW4gImdpdCBhbSAtLWFib3J0Ii4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
