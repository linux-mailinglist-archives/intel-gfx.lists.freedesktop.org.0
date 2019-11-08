Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B40F527E
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 18:23:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5299D6FA2A;
	Fri,  8 Nov 2019 17:23:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BAA336FA2A;
 Fri,  8 Nov 2019 17:23:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B7397A0003;
 Fri,  8 Nov 2019 17:23:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Fri, 08 Nov 2019 17:23:49 -0000
Message-ID: <157323382974.6461.866476439755513932@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191108134500.29212-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20191108134500.29212-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_Enable_second_dbuf_slice_for_ICL_and_TGL_=28rev3=29?=
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
ZiBzbGljZSBmb3IgSUNMIGFuZCBUR0wgKHJldjMpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82OTEyNC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5
ID09CgokIGRpbSBzcGFyc2Ugb3JpZ2luL2RybS10aXAKU3BhcnNlIHZlcnNpb246IHYwLjYuMApD
b21taXQ6IGRybS9pOTE1OiBFbmFibGUgc2Vjb25kIGRidWYgc2xpY2UgZm9yIElDTCBhbmQgVEdM
Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjQyNDQ6MTogd2FybmluZzogc3ltYm9s
ICdza2xfcGlwZV9kb3duc2NhbGVfYW1vdW50JyB3YXMgbm90IGRlY2xhcmVkLiBTaG91bGQgaXQg
YmUgc3RhdGljPworZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzo0MjY1OjE6IHdhcm5p
bmc6IHN5bWJvbCAnaWNsX2dldF9waXBlX3JhdGlvJyB3YXMgbm90IGRlY2xhcmVkLiBTaG91bGQg
aXQgYmUgc3RhdGljPworZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzo0MzYyOjMwOiB3
YXJuaW5nOiBzeW1ib2wgJ2ljbF9hbGxvd2VkX2RidWZzJyB3YXMgbm90IGRlY2xhcmVkLiBTaG91
bGQgaXQgYmUgc3RhdGljPworZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzo0Mzg2OjMw
OiB3YXJuaW5nOiBzeW1ib2wgJ3RnbF9hbGxvd2VkX2RidWZzJyB3YXMgbm90IGRlY2xhcmVkLiBT
aG91bGQgaXQgYmUgc3RhdGljPworZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzo0NDU2
OjU6IHdhcm5pbmc6IHN5bWJvbCAnaTkxNV9nZXRfYWxsb3dlZF9kYnVmX21hc2snIHdhcyBub3Qg
ZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBzdGF0aWM/CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
