Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 478B6A3453
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 11:44:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D1136E29B;
	Fri, 30 Aug 2019 09:44:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2FF476E29B;
 Fri, 30 Aug 2019 09:44:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 255F4A0134;
 Fri, 30 Aug 2019 09:44:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swati Sharma" <swati2.sharma@intel.com>
Date: Fri, 30 Aug 2019 09:44:50 -0000
Message-ID: <20190830094450.14751.83988@emeril.freedesktop.org>
References: <1567153913-20166-1-git-send-email-swati2.sharma@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1567153913-20166-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_adding_state_checker_for_gamma_lut_values_=28rev13?=
 =?utf-8?q?=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IGFkZGluZyBzdGF0ZSBjaGVj
a2VyIGZvciBnYW1tYSBsdXQgdmFsdWVzIChyZXYxMykKVVJMICAgOiBodHRwczovL3BhdGNod29y
ay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzU4MDM5LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1h
cnkgPT0KCiQgZGltIHNwYXJzZSBvcmlnaW4vZHJtLXRpcApTcGFyc2UgdmVyc2lvbjogdjAuNi4w
CkNvbW1pdDogZHJtL2k5MTUvZGlzcGxheTogQWRkIGZ1bmMgdG8gZ2V0IGdhbW1hIGJpdCBwcmVj
aXNpb24KT2theSEKCkNvbW1pdDogZHJtL2k5MTUvZGlzcGxheTogQWRkIGRlYnVnIGxvZyBmb3Ig
Y29sb3IgcGFyYW1ldGVycwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9kaXNwbGF5OiBBZGQgZnVu
YyB0byBjb21wYXJlIGh3L3N3IGdhbW1hIGx1dApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9kaXNw
bGF5OiBBZGQgbWFjcm8gdG8gY29tcGFyZSBnYW1tYSBody9zdyBsdXQKT2theSEKCkNvbW1pdDog
ZHJtL2k5MTUvZGlzcGxheTogRXh0cmFjdCBpOXh4X3JlYWRfbHV0cygpCitkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmM6MTYyNTo2OiB3YXJuaW5nOiBzeW1ib2wgJ2k5
eHhfcmVhZF9sdXRzJyB3YXMgbm90IGRlY2xhcmVkLiBTaG91bGQgaXQgYmUgc3RhdGljPwoKQ29t
bWl0OiBkcm0vaTkxNS9kaXNwbGF5OiBFeHRyYWN0IGk5NjVfcmVhZF9sdXRzKCkKT2theSEKCkNv
bW1pdDogZHJtL2k5MTUvZGlzcGxheTogRXh0cmFjdCBjaHZfcmVhZF9sdXRzKCkKT2theSEKCkNv
bW1pdDogZHJtL2k5MTUvZGlzcGxheTogRXh0cmFjdCBpbGtfcmVhZF9sdXRzKCkKT2theSEKCkNv
bW1pdDogZHJtL2k5MTUvZGlzcGxheTogRXh0cmFjdCBnbGtfcmVhZF9sdXRzKCkKT2theSEKCkNv
bW1pdDogZHJtL2k5MTUvZGlzcGxheTogRXh0cmFjdCBpY2xfcmVhZF9sdXRzKCkKT2theSEKCkNv
bW1pdDogRk9SX1RFU1RJTkdfT05MWTogUHJpbnQgcmdiIHZhbHVlcyBvZiBodyBhbmQgc3cgYmxv
YnMKT2theSEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
