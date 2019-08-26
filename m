Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E1F9C9A2
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 08:49:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B0746E19C;
	Mon, 26 Aug 2019 06:49:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ABA9B6E19C;
 Mon, 26 Aug 2019 06:49:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A33B8A010A;
 Mon, 26 Aug 2019 06:49:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swati Sharma" <swati2.sharma@intel.com>
Date: Mon, 26 Aug 2019 06:49:21 -0000
Message-ID: <20190826064921.13705.64325@emeril.freedesktop.org>
References: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_adding_state_checker_for_gamma_lut_value?=
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
a2VyIGZvciBnYW1tYSBsdXQgdmFsdWUKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzY1Nzg0LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQg
ZGltIHNwYXJzZSBvcmlnaW4vZHJtLXRpcApTcGFyc2UgdmVyc2lvbjogdjAuNi4wCkNvbW1pdDog
ZHJtL2k5MTUvZGlzcGxheTogQWRkIGZ1bmMgdG8gZ2V0IGdhbW1hIGJpdCBwcmVjaXNpb24KT2th
eSEKCkNvbW1pdDogZHJtL2k5MTUvZGlzcGxheTogQWRkIGRlYnVnIGxvZyBmb3IgY29sb3IgcGFy
YW1ldGVycwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9kaXNwbGF5OiBBZGQgZnVuYyB0byBjb21w
YXJlIGh3L3N3IGdhbW1hIGx1dApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9kaXNwbGF5OiBBZGQg
bWFjcm8gdG8gY29tcGFyZSBnYW1tYSBody9zdyBsdXQKT2theSEKCkNvbW1pdDogZHJtL2k5MTUv
ZGlzcGxheTogRXh0cmFjdCBpOXh4X3JlYWRfbHV0cygpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NvbG9yLmM6MTU2OTo2OiB3YXJuaW5nOiBzeW1ib2wgJ2k5eHhfcmVhZF9s
dXRzJyB3YXMgbm90IGRlY2xhcmVkLiBTaG91bGQgaXQgYmUgc3RhdGljPwoKQ29tbWl0OiBkcm0v
aTkxL2Rpc3BsYXk6IEV4dHJhY3QgaTk2NV9yZWFkX2x1dHMoKQpPa2F5IQoKQ29tbWl0OiBkcm0v
aTkxNS9kaXNwbGF5OiBFeHRyYWN0IGNodl9yZWFkX2x1dHMoKQpPa2F5IQoKQ29tbWl0OiBkcm0v
aTkxNS9kaXNwbGF5OiBFeHRyYWN0IGlsa19yZWFkX2x1dHMoKQpPa2F5IQoKQ29tbWl0OiBkcm0v
aTkxNS9kaXNwbGF5OiBFeHRyYWN0IGdsa19yZWFkX2x1dHMoKQpPa2F5IQoKQ29tbWl0OiBGT1Jf
VEVTVElOR19PTkxZOiBQcmludCByZ2IgdmFsdWVzIG9mIGh3IGFuZCBzdyBibG9icwpPa2F5IQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
