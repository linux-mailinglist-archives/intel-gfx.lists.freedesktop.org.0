Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1CE1BE2C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2019 21:47:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7514B891AC;
	Mon, 13 May 2019 19:47:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4EB68891AC;
 Mon, 13 May 2019 19:47:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 47F8AA0109;
 Mon, 13 May 2019 19:47:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Mon, 13 May 2019 19:47:56 -0000
Message-ID: <20190513194756.3913.29021@emeril.freedesktop.org>
References: <20190509173446.31095-1-imre.deak@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190509173446.31095-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_Add_support_for_asynchronous_display_power_disabling?=
 =?utf-8?q?_=28rev5=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEFkZCBzdXBwb3J0IGZvciBh
c3luY2hyb25vdXMgZGlzcGxheSBwb3dlciBkaXNhYmxpbmcgKHJldjUpClVSTCAgIDogaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MDI0Mi8KU3RhdGUgOiB3YXJuaW5n
Cgo9PSBTdW1tYXJ5ID09CgokIGRpbSBzcGFyc2Ugb3JpZ2luL2RybS10aXAKU3BhcnNlIHZlcnNp
b246IHYwLjUuMgpDb21taXQ6IGRybS9pOTE1OiBBZGQgc3VwcG9ydCBmb3IgdHJhY2tpbmcgd2Fr
ZXJlZnMgdy9vIHBvd2VyLW9uIGd1YXJhbnRlZQotZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRl
c3RzLy4uL2k5MTVfdXRpbHMuaDoxODQ6MTY6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6
ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvLi4vaTkxNV91dGlscy5o
OjE4NjoxNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKCkNvbW1pdDog
ZHJtL2k5MTU6IEZvcmNlIHByaW50aW5nIHdha2VyZWYgdGFja2luZyBkdXJpbmcgcG1fY2xlYW51
cApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogVmVyaWZ5IHBvd2VyIGRvbWFpbnMgc3RhdGUgZHVy
aW5nIHN1c3BlbmQgaW4gYWxsIGNhc2VzCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBBZGQgc3Vw
cG9ydCBmb3IgYXN5bmNocm9ub3VzIGRpc3BsYXkgcG93ZXIgZGlzYWJsaW5nCk9rYXkhCgpDb21t
aXQ6IGRybS9pOTE1OiBEaXNhYmxlIHBvd2VyIGFzeW5jaHJvbm91c2x5IGR1cmluZyBEUCBBVVgg
dHJhbnNmZXJzCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBXQVJOIGZvciBlRFAgZW5jb2RlcnMg
aW4gaW50ZWxfZHBfZGV0ZWN0X2RwY2QoKQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogUmVtb3Zl
IHRoZSB1bm5lZWRlZCBBVVggcG93ZXIgcmVmIGZyb20gaW50ZWxfZHBfZGV0ZWN0KCkKT2theSEK
CkNvbW1pdDogZHJtL2k5MTU6IFJlbW92ZSB0aGUgdW5uZWVkZWQgQVVYIHBvd2VyIHJlZiBmcm9t
IGludGVsX2RwX2hwZF9wdWxzZSgpCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBSZXBsYWNlIHVz
ZSBvZiBQTExTIHBvd2VyIGRvbWFpbiB3aXRoIERJU1BMQVlfQ09SRSBkb21haW4KT2theSEKCkNv
bW1pdDogZHJtL2k5MTU6IEF2b2lkIHRha2luZyB0aGUgUFBTIGxvY2sgZm9yIG5vbi1lRFAvVkxW
L0NIVgpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogQXNzZXJ0IHRoYXQgVHlwZUMgcG9ydHMgYXJl
IG5vdCB1c2VkIGZvciBlRFAKT2theSEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
