Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6A7B321F
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Sep 2019 23:00:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A28666E0D6;
	Sun, 15 Sep 2019 21:00:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DDF7F6E0D1;
 Sun, 15 Sep 2019 21:00:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D7383A0087;
 Sun, 15 Sep 2019 21:00:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 15 Sep 2019 21:00:55 -0000
Message-ID: <20190915210055.11841.2457@emeril.freedesktop.org>
References: <20190915203701.29163-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190915203701.29163-1-chris@chris-wilson.co.uk>
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
VVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY2NzI5LwpT
dGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2Ry
bS10aXAKZDMzMjU5YTI0NTc5IGRybS9pOTE1OiBTaG93IHRoZSBsb2dpY2FsIGNvbnRleHQgcmlu
ZyBzdGF0ZSBvbiBkdW1waW5nCjAyYjY0OTdkZjBhZCBkcm0vaTkxNS9zZWxmdGVzdHM6IFZlcmlm
eSB0aGUgTFJDIHJlZ2lzdGVyIGxheW91dCBiZXR3ZWVuIGluaXQgYW5kIEhXCi06NjE6IENIRUNL
Ok1BQ1JPX0FSR19SRVVTRTogTWFjcm8gYXJndW1lbnQgcmV1c2UgJ3gnIC0gcG9zc2libGUgc2lk
ZS1lZmZlY3RzPwojNjE6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
OjQ3NDoKKyNkZWZpbmUgUkVHKHgpICgoKHgpID4+IDIpIHwgQlVJTERfQlVHX09OX1pFUk8oeCA+
PSAweDIwMCkpCgotOjYyOiBFUlJPUjpDT01QTEVYX01BQ1JPOiBNYWNyb3Mgd2l0aCBjb21wbGV4
IHZhbHVlcyBzaG91bGQgYmUgZW5jbG9zZWQgaW4gcGFyZW50aGVzZXMKIzYyOiBGSUxFOiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYzo0NzU6CisjZGVmaW5lIFJFRzE2KHgpIFwK
KwkoKCh4KSA+PiA5KSB8IEJJVCg3KSB8IEJVSUxEX0JVR19PTl9aRVJPKHggPj0gMHgxMDAwMCkp
LCBcCisJKCgoeCkgPj4gMikgJiAweDdmKQoKLTo2MjogQ0hFQ0s6TUFDUk9fQVJHX1JFVVNFOiBN
YWNybyBhcmd1bWVudCByZXVzZSAneCcgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/CiM2MjogRklM
RTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6NDc1OgorI2RlZmluZSBSRUcx
Nih4KSBcCisJKCgoeCkgPj4gOSkgfCBCSVQoNykgfCBCVUlMRF9CVUdfT05fWkVSTyh4ID49IDB4
MTAwMDApKSwgXAorCSgoKHgpID4+IDIpICYgMHg3ZikKCnRvdGFsOiAxIGVycm9ycywgMCB3YXJu
aW5ncywgMiBjaGVja3MsIDExMjUgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
