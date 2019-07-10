Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFD063EE6
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 03:19:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8805389206;
	Wed, 10 Jul 2019 01:19:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 97B8F89206;
 Wed, 10 Jul 2019 01:19:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9027AA363D;
 Wed, 10 Jul 2019 01:19:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Wed, 10 Jul 2019 01:19:28 -0000
Message-ID: <20190710011928.4422.55950@emeril.freedesktop.org>
References: <20190710005437.3496-1-daniele.ceraolospurio@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190710005437.3496-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_G?=
 =?utf-8?q?T-fy_the_uc_code?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogR1QtZnkgdGhlIHVjIGNvZGUKVVJMICAgOiBo
dHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYzNDYwLwpTdGF0ZSA6IHdh
cm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIHNwYXJzZSBvcmlnaW4vZHJtLXRpcApTcGFyc2Ug
dmVyc2lvbjogdjAuNS4yCkNvbW1pdDogZHJtL2k5MTUvZ3VjOiBSZW1vdmUgcHJlZW1wdGlvbiBz
dXBwb3J0IGZvciBjdXJyZW50IGZ3Ci0uL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1
bGVyLmg6NzA6MjM6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCgpDb21t
aXQ6IGRybS9pOTE1L2d1Yzogc2ltcGxpZnkgZ3VjIGNsaWVudApPa2F5IQoKQ29tbWl0OiBkcm0v
aTkxNS91YzogcmVwbGFjZSB1YyBpbml0L2ZpbmkgbWlzYwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkx
NS91YzogaW50cm9kdWNlIGludGVsX3VjX2Z3X3N1cHBvcnRlZApPa2F5IQoKQ29tbWl0OiBkcm0v
aTkxNS9ndWM6IG1vdmUgZ3VjIGlycSBmdW5jdGlvbnMgdG8gaW50ZWxfZ3VjIHBhcmFtZXRlcgpP
a2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9ndWM6IHVuaWZ5IGd1YyBpcnEgaGFuZGxpbmcKT2theSEK
CkNvbW1pdDogZHJtL2k5MTUvdWM6IG1vdmUgR3VDIGFuZCBIdUMgZmlsZXMgdW5kZXIgZ3QvdWMv
Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYzozODA6Mjk6IHdhcm5pbmc6
IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWMuYzozODA6Mjk6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZv
aWQpCi1kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYzozODA6Mjk6IHdhcm5p
bmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCi1kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF9ndWMuYzozODA6Mjk6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9m
KHZvaWQpCisuL2luY2x1ZGUvdWFwaS9saW51eC9wZXJmX2V2ZW50Lmg6MTQ3OjU2OiB3YXJuaW5n
OiBjYXN0IHRydW5jYXRlcyBiaXRzIGZyb20gY29uc3RhbnQgdmFsdWUgKDgwMDAwMDAwMDAwMDAw
MDAgYmVjb21lcyAwKQorLi9pbmNsdWRlL3VhcGkvbGludXgvcGVyZl9ldmVudC5oOjE0Nzo1Njog
d2FybmluZzogY2FzdCB0cnVuY2F0ZXMgYml0cyBmcm9tIGNvbnN0YW50IHZhbHVlICg4MDAwMDAw
MDAwMDAwMDAwIGJlY29tZXMgMCkKKy4vaW5jbHVkZS91YXBpL2xpbnV4L3BlcmZfZXZlbnQuaDox
NDc6NTY6IHdhcm5pbmc6IGNhc3QgdHJ1bmNhdGVzIGJpdHMgZnJvbSBjb25zdGFudCB2YWx1ZSAo
ODAwMDAwMDAwMDAwMDAwMCBiZWNvbWVzIDApCgpDb21taXQ6IGRybS9pOTE1L3VjOiBtb3ZlIEd1
Qy9IdUMgaW5zaWRlIGludGVsX2d0IHVuZGVyIGEgbmV3IGludGVsX3VjCk9rYXkhCgpDb21taXQ6
IGRybS9pOTE1L3VjOiBNb3ZlIGludGVsIGZ1bmN0aW9ucyB0byBpbnRlbF91YwpPa2F5IQoKQ29t
bWl0OiBkcm0vaTkxNS91YzogcHJlZmVyIGludGVsX2d0IG92ZXIgaTkxNSBpbiBHdUMvSHVDIHBh
dGhzCi1POmRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jOjM4MDoyOTogd2Fy
bmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLU86ZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfZ3VjLmM6MzgwOjI5OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNp
emVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmM6MzgwOjI5
OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmM6MzgwOjI5OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5n
IHNpemVvZih2b2lkKQoKQ29tbWl0OiBkcm0vaTkxNS9ndWM6IHByZWZlciBpbnRlbF9ndCBpbiBn
dWMgaW50ZXJydXB0IGZ1bmN0aW9ucwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS91Yzoga2lsbCA8
ZyxoPnVjX3RvX2k5MTUKT2theSEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
