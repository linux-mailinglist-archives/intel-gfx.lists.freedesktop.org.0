Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EE1B3190
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Sep 2019 21:12:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A34506E0BB;
	Sun, 15 Sep 2019 19:12:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 608AB6E0BA;
 Sun, 15 Sep 2019 19:12:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5AECDA0137;
 Sun, 15 Sep 2019 19:12:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 15 Sep 2019 19:12:08 -0000
Message-ID: <20190915191208.11841.65883@emeril.freedesktop.org>
References: <20190915184539.16724-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190915184539.16724-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/2=5D_dma-fence=3A_Serialise_signal?=
 =?utf-8?q?_enabling_=28dma=5Ffence=5Fenable=5Fsw=5Fsignaling=29?=
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
ZG1hLWZlbmNlOiBTZXJpYWxpc2Ugc2lnbmFsIGVuYWJsaW5nIChkbWFfZmVuY2VfZW5hYmxlX3N3
X3NpZ25hbGluZykKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2Vy
aWVzLzY2NzI2LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0
Y2ggb3JpZ2luL2RybS10aXAKZjU0NjI3Mzg1YjE5IGRtYS1mZW5jZTogU2VyaWFsaXNlIHNpZ25h
bCBlbmFibGluZyAoZG1hX2ZlbmNlX2VuYWJsZV9zd19zaWduYWxpbmcpCi06MTQ6IEVSUk9SOkdJ
VF9DT01NSVRfSUQ6IFBsZWFzZSB1c2UgZ2l0IGNvbW1pdCBkZXNjcmlwdGlvbiBzdHlsZSAnY29t
bWl0IDwxMisgY2hhcnMgb2Ygc2hhMT4gKCI8dGl0bGUgbGluZT4iKScgLSBpZTogJ2NvbW1pdCAw
ZmM4OWI2ODAyYmEgKCJkbWEtZmVuY2U6IFNpbXBseSB3cmFwIGRtYV9mZW5jZV9zaWduYWxfbG9j
a2VkIHdpdGggZG1hX2ZlbmNlX3NpZ25hbCIpJwojMTQ6IApTZWUgYWxzbyAwZmM4OWI2ODAyYmEg
KCJkbWEtZmVuY2U6IFNpbXBseSB3cmFwIGRtYV9mZW5jZV9zaWduYWxfbG9ja2VkCgp0b3RhbDog
MSBlcnJvcnMsIDAgd2FybmluZ3MsIDAgY2hlY2tzLCAyNCBsaW5lcyBjaGVja2VkCjJlNDUwYjc4
NjdmNSBkcm0vbW06IFBhY2sgYWxsb2NhdGVkL3NjYW5uZWQgYm9vbGVhbiBpbnRvIGEgYml0Zmll
bGQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
