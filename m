Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6249CFC81D
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 14:50:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FA0E6E311;
	Thu, 14 Nov 2019 13:50:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 05AB56E2F9;
 Thu, 14 Nov 2019 13:50:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 01B1DA0094;
 Thu, 14 Nov 2019 13:50:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 14 Nov 2019 13:50:36 -0000
Message-ID: <157373943600.31205.12785136602851240248@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191114122449.26409-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20191114122449.26409-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_Enable_second_dbuf_slice_for_ICL_and_TGL_=28rev4=29?=
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
ZiBzbGljZSBmb3IgSUNMIGFuZCBUR0wgKHJldjQpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82OTEyNC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5
ID09CgokIGRpbSBzcGFyc2Ugb3JpZ2luL2RybS10aXAKU3BhcnNlIHZlcnNpb246IHYwLjYuMApD
b21taXQ6IGRybS9pOTE1OiBFbmFibGUgc2Vjb25kIGRidWYgc2xpY2UgZm9yIElDTCBhbmQgVEdM
Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjQyNzM6MTogd2FybmluZzogc3ltYm9s
ICdpY2xfZ2V0X3BpcGVfcmF0aW8nIHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBzdGF0
aWM/Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjQzNzM6MzA6IHdhcm5pbmc6IHN5
bWJvbCAnaWNsX2FsbG93ZWRfZGJ1ZnMnIHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBz
dGF0aWM/Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjQzOTc6MzA6IHdhcm5pbmc6
IHN5bWJvbCAndGdsX2FsbG93ZWRfZGJ1ZnMnIHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBi
ZSBzdGF0aWM/Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjQ0Njc6NTogd2Fybmlu
Zzogc3ltYm9sICdpOTE1X2dldF9hbGxvd2VkX2RidWZfbWFzaycgd2FzIG5vdCBkZWNsYXJlZC4g
U2hvdWxkIGl0IGJlIHN0YXRpYz8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
