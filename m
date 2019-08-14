Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 689838D314
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 14:29:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDCA16E2D8;
	Wed, 14 Aug 2019 12:29:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BC1A96E2D7;
 Wed, 14 Aug 2019 12:29:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B52A1A0087;
 Wed, 14 Aug 2019 12:29:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 14 Aug 2019 12:29:24 -0000
Message-ID: <20190814122924.21408.81465@emeril.freedesktop.org>
References: <20190814092643.1908-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190814092643.1908-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/8=5D_drm/i915/execlists=3A_Lift_pr?=
 =?utf-8?q?ocess=5Fcsb=28=29_out_of_the_irq-off_spinlock?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvOF0g
ZHJtL2k5MTUvZXhlY2xpc3RzOiBMaWZ0IHByb2Nlc3NfY3NiKCkgb3V0IG9mIHRoZSBpcnEtb2Zm
IHNwaW5sb2NrClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmll
cy82NTE2OS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNo
IG9yaWdpbi9kcm0tdGlwCmMwNjdhZjIzN2Q3NyBkcm0vaTkxNS9leGVjbGlzdHM6IExpZnQgcHJv
Y2Vzc19jc2IoKSBvdXQgb2YgdGhlIGlycS1vZmYgc3BpbmxvY2sKOGEyODljMTU1NWFlIGRybS9p
OTE1L2d0OiBUcmFjayB0aW1lbGluZSBhY3RpdmVuZXNzIGluIGVudGVyL2V4aXQKNDNhZDFkNmI1
NzEwIGRybS9pOTE1L2d0OiBDb252ZXJ0IHRpbWVsaW5lIHRyYWNraW5nIHRvIHNwaW5sb2NrCjNh
ZTRmNjU3YzIzYSBkcm0vaTkxNS9ndDogR3VhcmQgdGltZWxpbmUgcGlubmluZyB3aXRoIGl0cyBv
d24gbXV0ZXgKODVkMWZkY2I0YzVhIGRybS9pOTE1OiBQcm90ZWN0IHJlcXVlc3QgcmV0aXJlbWVu
dCB3aXRoIHRpbWVsaW5lLT5tdXRleApkZDliMTYyNDI4MWMgZHJtL2k5MTUvZ3Q6IE1hcmsgY29u
dGV4dC0+YWN0aXZlX2NvdW50IGFzIHByb3RlY3RlZCBieSB0aW1lbGluZS0+bXV0ZXgKYzA0MWVi
NGNkZGQyIGRybS9pOTE1OiBFeHRyYWN0IGludGVsX2Zyb250YnVmZmVyIGFjdGl2ZSB0cmFja2lu
ZwozYmU3Y2I0OWI5YWEgZHJtL2k5MTU6IE1hcmt1cCBleHBlY3RlZCB0aW1lbGluZSBsb2NrcyBm
b3IgaTkxNV9hY3RpdmUKLToyOTA6IENIRUNLOlVOQ09NTUVOVEVEX0RFRklOSVRJT046IHN0cnVj
dCBtdXRleCBkZWZpbml0aW9uIHdpdGhvdXQgY29tbWVudAojMjkwOiBGSUxFOiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2FjdGl2ZV90eXBlcy5oOjI4OgorCXN0cnVjdCBtdXRleCAqbG9jazsK
CnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgMSBjaGVja3MsIDI0MiBsaW5lcyBjaGVja2Vk
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
