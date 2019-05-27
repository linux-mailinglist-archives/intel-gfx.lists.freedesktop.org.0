Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA4B2B741
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 16:06:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6014E893EA;
	Mon, 27 May 2019 14:06:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CF8A6892DB;
 Mon, 27 May 2019 14:05:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C8729A0074;
 Mon, 27 May 2019 14:05:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swati Sharma" <swati2.sharma@intel.com>
Date: Mon, 27 May 2019 14:05:58 -0000
Message-ID: <20190527140558.25357.69870@emeril.freedesktop.org>
References: <1558964522-7829-1-git-send-email-swati2.sharma@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1558964522-7829-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_adding_state_checker_for_gamma_lut_values_=28rev10?=
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
a2VyIGZvciBnYW1tYSBsdXQgdmFsdWVzIChyZXYxMCkKVVJMICAgOiBodHRwczovL3BhdGNod29y
ay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzU4MDM5LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1h
cnkgPT0KCiQgZGltIHNwYXJzZSBvcmlnaW4vZHJtLXRpcApTcGFyc2UgdmVyc2lvbjogdjAuNS4y
CkNvbW1pdDogZHJtL2k5MTU6IEludHJvZHVjZSB2ZnVuYyByZWFkX2x1dHMoKSB0byBjcmVhdGUg
aHcgbHV0Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBFbmFibGUgaW50ZWxfY29sb3JfZ2V0X2Nv
bmZpZygpCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBBZGQgaW50ZWxfY29sb3JfbHV0X2VxdWFs
KCkgdG8gY29tcGFyZSBodyBhbmQgc3cgZ2FtbWEvZGVnYW1tYSBsdXQgdmFsdWVzCk9rYXkhCgpD
b21taXQ6IGRybS9pOTE1OiBFeHRyYWN0IGk5eHhfcmVhZF9sdXRzKCkKK2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2NvbG9yLmM6MTQyNToxNTogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBz
aXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmM6MTQyNToxNTog
d2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2NvbG9yLmM6MTQyNToxNTogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXpl
b2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmM6MTQyNToxNTogd2Fy
bmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2NvbG9yLmM6MTQyNToxNTogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yo
dm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmM6MTQyNToxNTogd2Fybmlu
ZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2NvbG9yLmM6MTQyNToxNTogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9p
ZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmM6MTQyNToxNTogd2FybmluZzog
ZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2NvbG9yLmM6MTQ2NTo2OiB3YXJuaW5nOiBzeW1ib2wgJ2k5eHhfcmVhZF9sdXRzJyB3YXMgbm90
IGRlY2xhcmVkLiBTaG91bGQgaXQgYmUgc3RhdGljPwoKQ29tbWl0OiBkcm0vaTkxNTogRXh0cmFj
dCBjaHZfcmVhZF9sdXRzKCkKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEV4dHJhY3QgaTk2NV9y
ZWFkX2x1dHMoKQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogRXh0cmFjdCBpY2xfcmVhZF9sdXRz
KCkKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEV4dHJhY3QgZ2xrX3JlYWRfbHV0cygpCk9rYXkh
CgpDb21taXQ6IGRybS9pOTE1OiBFeHRyYWN0IGJkd19yZWFkX2x1dHMoKQpPa2F5IQoKQ29tbWl0
OiBkcm0vaTkxNTogRXh0cmFjdCBpdmJfcmVhZF9sdXRzKCkKT2theSEKCkNvbW1pdDogZHJtL2k5
MTU6IEV4dHJhY3QgaWxrX3JlYWRfbHV0cygpCk9rYXkhCgpDb21taXQ6IEZPUl9URVNUSU5HX09O
TFk6IFByaW50IHJnYiB2YWx1ZXMgb2YgaHcgYW5kIHN3IGJsb2JzCk9rYXkhCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
