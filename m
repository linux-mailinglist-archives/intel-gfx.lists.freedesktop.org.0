Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD6656F87
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 19:32:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E48696E4AD;
	Wed, 26 Jun 2019 17:32:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 415A76E4AA;
 Wed, 26 Jun 2019 17:32:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3B749A0073;
 Wed, 26 Jun 2019 17:32:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 26 Jun 2019 17:32:26 -0000
Message-ID: <20190626173226.9079.98307@emeril.freedesktop.org>
References: <20190626154549.10066-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190626154549.10066-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/3=5D_drm/i915=3A_Add_a_wakeref_get?=
 =?utf-8?q?ter_for_iff_the_wakeref_is_already_active?=
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
ZHJtL2k5MTU6IEFkZCBhIHdha2VyZWYgZ2V0dGVyIGZvciBpZmYgdGhlIHdha2VyZWYgaXMgYWxy
ZWFkeSBhY3RpdmUKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2Vy
aWVzLzYyNzk1LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0
Y2ggb3JpZ2luL2RybS10aXAKNWFlN2MxODdkMWMwIGRybS9pOTE1OiBBZGQgYSB3YWtlcmVmIGdl
dHRlciBmb3IgaWZmIHRoZSB3YWtlcmVmIGlzIGFscmVhZHkgYWN0aXZlCjJhNzYwZjYwYjEzZiBk
cm0vaTkxNTogT25seSByZWNvdmVyIGFjdGl2ZSBlbmdpbmVzCmY2YmFjMTBiMDM2MiBkcm0vaTkx
NTogTGlmdCBpbnRlbF9lbmdpbmVzX3Jlc3VtZSgpIHRvIGNhbGxlcnMKLToyMTY6IFdBUk5JTkc6
QVZPSURfQlVHOiBBdm9pZCBjcmFzaGluZyB0aGUga2VybmVsIC0gdHJ5IHVzaW5nIFdBUk5fT04g
JiByZWNvdmVyeSBjb2RlIHJhdGhlciB0aGFuIEJVRygpIG9yIEJVR19PTigpCiMyMTY6IEZJTEU6
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmM6MTIwMDoKKwlCVUdfT04oIWk5MTUtPmtl
cm5lbF9jb250ZXh0KTsKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDI0
OCBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
