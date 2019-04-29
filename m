Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B23DAE2B9
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 14:34:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 953AB8920C;
	Mon, 29 Apr 2019 12:34:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C8CFE8920C;
 Mon, 29 Apr 2019 12:34:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C25B2A0020;
 Mon, 29 Apr 2019 12:34:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Xiaolin Zhang" <xiaolin.zhang@intel.com>
Date: Mon, 29 Apr 2019 12:34:02 -0000
Message-ID: <20190429123402.31949.68307@emeril.freedesktop.org>
References: <1556507458-24684-1-git-send-email-xiaolin.zhang@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1556507458-24684-1-git-send-email-xiaolin.zhang@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_i?=
 =?utf-8?q?915_vgpu_PV_to_improve_vgpu_performance?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogaTkxNSB2Z3B1IFBWIHRvIGltcHJvdmUgdmdw
dSBwZXJmb3JtYW5jZQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9z
ZXJpZXMvNjAwNTUvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gc3BhcnNl
IG9yaWdpbi9kcm0tdGlwClNwYXJzZSB2ZXJzaW9uOiB2MC41LjIKQ29tbWl0OiBkcm0vaTkxNTog
aW50cm9kdWNlZCB2Z3B1IHB2IGNhcGFiaWxpdHkKLWRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0
ZXN0cy8uLi9pOTE1X2Rydi5oOjM1NzA6MTY6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6
ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvLi4vaTkxNV9kcnYuaDoz
NTcyOjE2OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQoKQ29tbWl0OiBk
cm0vaTkxNTogdmdwdSBzaGFyZWQgbWVtb3J5IHNldHVwIGZvciBwdiBvcHRpbWl6YXRpb24KLWRy
aXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy8uLi9pOTE1X2Rydi5oOjM1NzI6MTY6IHdhcm5p
bmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9z
ZWxmdGVzdHMvLi4vaTkxNV9kcnYuaDozNTc0OjE2OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5n
IHNpemVvZih2b2lkKQoKQ29tbWl0OiBkcm0vaTkxNTogdmdwdSBwcGd0dCB1cGRhdGUgcHYgb3B0
aW1pemF0aW9uCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiB2Z3B1IGNvbnRleHQgc3VibWlzc2lv
biBwdiBvcHRpbWl6YXRpb24KKy4vaW5jbHVkZS91YXBpL2xpbnV4L3BlcmZfZXZlbnQuaDoxNDc6
NTY6IHdhcm5pbmc6IGNhc3QgdHJ1bmNhdGVzIGJpdHMgZnJvbSBjb25zdGFudCB2YWx1ZSAoODAw
MDAwMDAwMDAwMDAwMCBiZWNvbWVzIDApCgpDb21taXQ6IGRybS9pOTE1L2d2dDogR1ZUZyBoYW5k
bGUgcHZfY2FwcyBQVklORk8gcmVnaXN0ZXIKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvZ3Z0OiBH
VlRnIGhhbmRsZSBzaGFyZWRfcGFnZSBzZXR1cApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9ndnQ6
IEdWVGcgc3VwcG9ydCBwcGd0dCBwdiBvcHRpbWl6YXRpb24KKy4vaW5jbHVkZS9saW51eC9zbGFi
Lmg6NjY2OjEzOiBlcnJvcjogdW5kZWZpbmVkIGlkZW50aWZpZXIgJ19fYnVpbHRpbl9tdWxfb3Zl
cmZsb3cnCisuL2luY2x1ZGUvbGludXgvc2xhYi5oOjY2NjoxMzogd2FybmluZzogY2FsbCB3aXRo
IG5vIHR5cGUhCgpDb21taXQ6IGRybS9pOTE1L2d2dDogR1ZUZyBzdXBwb3J0IGNvbnRleHQgc3Vi
bWlzc2lvbiBwdiBvcHRpbWl6YXRpb24KT2theSEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
