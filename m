Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A15C77EF8F
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 10:44:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 111FF6ED5A;
	Fri,  2 Aug 2019 08:44:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F24116ED59;
 Fri,  2 Aug 2019 08:44:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E7F93A010A;
 Fri,  2 Aug 2019 08:44:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 02 Aug 2019 08:44:29 -0000
Message-ID: <20190802084429.15550.94197@emeril.freedesktop.org>
References: <20190730112151.5633-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190730112151.5633-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/3=5D_drm/i915/execlists=3A_Always_?=
 =?utf-8?q?clear_pending=26inflight_requests_on_reset_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvM10g
ZHJtL2k5MTUvZXhlY2xpc3RzOiBBbHdheXMgY2xlYXIgcGVuZGluZyZpbmZsaWdodCByZXF1ZXN0
cyBvbiByZXNldCAocmV2MikKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvc2VyaWVzLzY0NDI2LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNo
ZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKZmFkZTY2ZWQzOTk2IGRybS9pOTE1OiBBbGxvdyBzaGFy
aW5nIHRoZSBpZGxlLWJhcnJpZXIgZnJvbSBvdGhlciBrZXJuZWwgcmVxdWVzdHMKLToxMjU6IFdB
Uk5JTkc6RklMRV9QQVRIX0NIQU5HRVM6IGFkZGVkLCBtb3ZlZCBvciBkZWxldGVkIGZpbGUocyks
IGRvZXMgTUFJTlRBSU5FUlMgbmVlZCB1cGRhdGluZz8KIzEyNTogCm5ldyBmaWxlIG1vZGUgMTAw
NjQ0CgotOjEzMDogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNzaW5nIG9yIG1hbGZvcm1l
ZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgaW4gbGluZSAxCiMxMzA6IEZJTEU6IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRleHQuYzoxOgorLyoKCi06MTMxOiBXQVJO
SU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3BsYWNlZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0
YWcgLSB1c2UgbGluZSAxIGluc3RlYWQKIzEzMTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3Qvc2VsZnRlc3RfY29udGV4dC5jOjI6CisgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BM
LTIuMAoKdG90YWw6IDAgZXJyb3JzLCAzIHdhcm5pbmdzLCAwIGNoZWNrcywgNzg0IGxpbmVzIGNo
ZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
