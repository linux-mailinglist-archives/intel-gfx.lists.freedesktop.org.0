Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E53B2533
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 20:27:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78ACB6F433;
	Fri, 13 Sep 2019 18:27:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3C5D56F430;
 Fri, 13 Sep 2019 18:27:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3702DA0073;
 Fri, 13 Sep 2019 18:27:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 13 Sep 2019 18:27:31 -0000
Message-ID: <20190913182731.32423.40969@emeril.freedesktop.org>
References: <20190913174625.7238-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190913174625.7238-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/2=5D_drm/i915=3A_Show_the_logical_?=
 =?utf-8?q?context_ring_state_on_dumping?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvMl0g
ZHJtL2k5MTU6IFNob3cgdGhlIGxvZ2ljYWwgY29udGV4dCByaW5nIHN0YXRlIG9uIGR1bXBpbmcK
VVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY2Njc4LwpT
dGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2Ry
bS10aXAKNzA2OTViMTY4NzA4IGRybS9pOTE1OiBTaG93IHRoZSBsb2dpY2FsIGNvbnRleHQgcmlu
ZyBzdGF0ZSBvbiBkdW1waW5nCmFmMTlkYWY1Y2VjZiBkcm0vaTkxNS9zZWxmdGVzdHM6IFZlcmlm
eSB0aGUgTFJDIHJlZ2lzdGVyIGxheW91dCBiZXR3ZWVuIGluaXQgYW5kIEhXCi06NjA6IENIRUNL
Ok1BQ1JPX0FSR19SRVVTRTogTWFjcm8gYXJndW1lbnQgcmV1c2UgJ3gnIC0gcG9zc2libGUgc2lk
ZS1lZmZlY3RzPwojNjA6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
OjQ3MzoKKyNkZWZpbmUgUkVHKHgpICgoKHgpID4+IDIpIHwgQlVJTERfQlVHX09OX1pFUk8oeCA+
PSAweDIwMCkpCgotOjYxOiBFUlJPUjpDT01QTEVYX01BQ1JPOiBNYWNyb3Mgd2l0aCBjb21wbGV4
IHZhbHVlcyBzaG91bGQgYmUgZW5jbG9zZWQgaW4gcGFyZW50aGVzZXMKIzYxOiBGSUxFOiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYzo0NzQ6CisjZGVmaW5lIFJFRzE2KHgpIFwK
KwkoKCh4KSA+PiA5KSB8IEJJVCg3KSB8IEJVSUxEX0JVR19PTl9aRVJPKHggPj0gMHgxMDAwMCkp
LCBcCisJKCgoeCkgPj4gMikgJiAweDdmKQoKLTo2MTogQ0hFQ0s6TUFDUk9fQVJHX1JFVVNFOiBN
YWNybyBhcmd1bWVudCByZXVzZSAneCcgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/CiM2MTogRklM
RTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6NDc0OgorI2RlZmluZSBSRUcx
Nih4KSBcCisJKCgoeCkgPj4gOSkgfCBCSVQoNykgfCBCVUlMRF9CVUdfT05fWkVSTyh4ID49IDB4
MTAwMDApKSwgXAorCSgoKHgpID4+IDIpICYgMHg3ZikKCnRvdGFsOiAxIGVycm9ycywgMCB3YXJu
aW5ncywgMiBjaGVja3MsIDEwODggbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
