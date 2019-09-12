Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 827B8B08A1
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 08:04:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E900189F1B;
	Thu, 12 Sep 2019 06:04:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 138B189EA3;
 Thu, 12 Sep 2019 06:04:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0EC5FA363B;
 Thu, 12 Sep 2019 06:04:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 12 Sep 2019 06:04:49 -0000
Message-ID: <20190912060449.6362.25917@emeril.freedesktop.org>
References: <20190911194918.23400-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190911194918.23400-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/gtt=3A_Make_sure_the_gen6_ppgtt_is_bound_before_fir?=
 =?utf-8?q?st_use_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3R0OiBNYWtlIHN1cmUgdGhl
IGdlbjYgcHBndHQgaXMgYm91bmQgYmVmb3JlIGZpcnN0IHVzZSAocmV2MikKVVJMICAgOiBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY2NTUxLwpTdGF0ZSA6IHdhcm5p
bmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKMjk4OTk1
MmU3NmFkIGRybS9pOTE1L2d0dDogTWFrZSBzdXJlIHRoZSBnZW42IHBwZ3R0IGlzIGJvdW5kIGJl
Zm9yZSBmaXJzdCB1c2UKLToxMTk6IENIRUNLOlVOQ09NTUVOVEVEX0RFRklOSVRJT046IHN0cnVj
dCBtdXRleCBkZWZpbml0aW9uIHdpdGhvdXQgY29tbWVudAojMTE5OiBGSUxFOiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaDo0NDE6CisJc3RydWN0IG11dGV4IHBpbl9tdXRleDsK
CnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgMSBjaGVja3MsIDk2IGxpbmVzIGNoZWNrZWQK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
