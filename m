Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C16349BE3B
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Aug 2019 16:18:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36D206E0CF;
	Sat, 24 Aug 2019 14:18:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 526206E0CC;
 Sat, 24 Aug 2019 14:18:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 49B4BA41FB;
 Sat, 24 Aug 2019 14:18:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 24 Aug 2019 14:18:33 -0000
Message-ID: <20190824141833.6895.82739@emeril.freedesktop.org>
References: <20190824135848.8571-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190824135848.8571-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_dma-buf=3A_Give_dma-fence-array_distinct_lockclasses?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZG1hLWJ1ZjogR2l2ZSBkbWEtZmVuY2UtYXJy
YXkgZGlzdGluY3QgbG9ja2NsYXNzZXMKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzY1NzM5LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQg
ZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKNWYzM2Y3ZmQwNTU2IGRtYS1idWY6IEdpdmUg
ZG1hLWZlbmNlLWFycmF5IGRpc3RpbmN0IGxvY2tjbGFzc2VzCi06Mzg6IFdBUk5JTkc6VU5TUEVD
SUZJRURfSU5UOiBQcmVmZXIgJ3Vuc2lnbmVkIGludCcgdG8gYmFyZSB1c2Ugb2YgJ3Vuc2lnbmVk
JwojMzg6IEZJTEU6IGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYzoxNTI6CisJCQkJ
CQkgdTY0IGNvbnRleHQsIHVuc2lnbmVkIHNlcW5vLAoKLTo3ODogRVJST1I6Q09ERV9JTkRFTlQ6
IGNvZGUgaW5kZW50IHNob3VsZCB1c2UgdGFicyB3aGVyZSBwb3NzaWJsZQojNzg6IEZJTEU6IGlu
Y2x1ZGUvbGludXgvZG1hLWZlbmNlLWFycmF5Lmg6ODE6CiteSV5JICAgICAgICBeSSAmX19rZXkp
O15JXkleSVwkCgotOjc4OiBXQVJOSU5HOlNQQUNFX0JFRk9SRV9UQUI6IHBsZWFzZSwgbm8gc3Bh
Y2UgYmVmb3JlIHRhYnMKIzc4OiBGSUxFOiBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5o
OjgxOgorXkleSSAgICAgICAgXkkgJl9fa2V5KTteSV5JXklcJAoKLTo4MzogV0FSTklORzpVTlNQ
RUNJRklFRF9JTlQ6IFByZWZlciAndW5zaWduZWQgaW50JyB0byBiYXJlIHVzZSBvZiAndW5zaWdu
ZWQnCiM4MzogRklMRTogaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtYXJyYXkuaDo4NjoKKwkJCQkJ
CSB1NjQgY29udGV4dCwgdW5zaWduZWQgc2Vxbm8sCgp0b3RhbDogMSBlcnJvcnMsIDMgd2Fybmlu
Z3MsIDAgY2hlY2tzLCA1MyBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
