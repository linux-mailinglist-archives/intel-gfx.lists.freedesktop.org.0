Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 370D0F35EB
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 18:41:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73B3E6F767;
	Thu,  7 Nov 2019 17:41:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F3C5D6F767;
 Thu,  7 Nov 2019 17:41:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EFD91A0118;
 Thu,  7 Nov 2019 17:41:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 07 Nov 2019 17:41:44 -0000
Message-ID: <157314850498.21753.9948031232880261212@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191107131020.12869-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20191107131020.12869-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_Enable_second_dbuf_slice_for_ICL_and_TGL?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEVuYWJsZSBzZWNvbmQgZGJ1
ZiBzbGljZSBmb3IgSUNMIGFuZCBUR0wKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzY5MTI0LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQg
ZGltIHNwYXJzZSBvcmlnaW4vZHJtLXRpcApTcGFyc2UgdmVyc2lvbjogdjAuNi4wCkNvbW1pdDog
ZHJtL2k5MTU6IEVuYWJsZSBzZWNvbmQgZGJ1ZiBzbGljZSBmb3IgSUNMIGFuZCBUR0wKK2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmM6NDI1MzoxOiB3YXJuaW5nOiBzeW1ib2wgJ3NrbF9w
aXBlX2Rvd25zY2FsZV9hbW91bnQnIHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBzdGF0
aWM/Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjQyNzQ6MTogd2FybmluZzogc3lt
Ym9sICdpY2xfZ2V0X3BpcGVfcmF0aW8nIHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBz
dGF0aWM/Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjQzNzE6MzA6IHdhcm5pbmc6
IHN5bWJvbCAnaWNsX2FsbG93ZWRfZGJ1ZnMnIHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBi
ZSBzdGF0aWM/Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjQzOTU6MzA6IHdhcm5p
bmc6IHN5bWJvbCAndGdsX2FsbG93ZWRfZGJ1ZnMnIHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBp
dCBiZSBzdGF0aWM/Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjQ0NjU6NTogd2Fy
bmluZzogc3ltYm9sICdpOTE1X2dldF9hbGxvd2VkX2RidWZfbWFzaycgd2FzIG5vdCBkZWNsYXJl
ZC4gU2hvdWxkIGl0IGJlIHN0YXRpYz8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
