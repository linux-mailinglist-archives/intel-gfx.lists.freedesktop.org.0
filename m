Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A172FB91A7
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 16:24:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E05C96E03B;
	Fri, 20 Sep 2019 14:24:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B2EE6E03B;
 Fri, 20 Sep 2019 14:24:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 047D4A0114;
 Fri, 20 Sep 2019 14:24:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Fri, 20 Sep 2019 14:24:51 -0000
Message-ID: <20190920142451.25914.61652@emeril.freedesktop.org>
References: <20190920104413.21410-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190920104413.21410-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Restrict_qgv_points_which_don=27t_have_enough_ba?=
 =?utf-8?b?bmR3aWR0aC4gKHJldjIp?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFJlc3RyaWN0IHFndiBwb2lu
dHMgd2hpY2ggZG9uJ3QgaGF2ZSBlbm91Z2ggYmFuZHdpZHRoLiAocmV2MikKVVJMICAgOiBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY2OTkzLwpTdGF0ZSA6IHdhcm5p
bmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKNTg2NzZk
Y2IxMTk1IGRybS9pOTE1OiBSZXN0cmljdCBxZ3YgcG9pbnRzIHdoaWNoIGRvbid0IGhhdmUgZW5v
dWdoIGJhbmR3aWR0aC4KLTo0NjogQ0hFQ0s6TElORV9TUEFDSU5HOiBQbGVhc2UgZG9uJ3QgdXNl
IG11bHRpcGxlIGJsYW5rIGxpbmVzCiM0NjogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9idy5jOjEwOToKKworCgotOjcwOiBXQVJOSU5HOkJSQUNFUzogYnJhY2VzIHt9
IGFyZSBub3QgbmVjZXNzYXJ5IGZvciBzaW5nbGUgc3RhdGVtZW50IGJsb2NrcwojNzA6IEZJTEU6
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYzo0MTY6CisJaWYgKHJldCA8
IDApIHsKKwkJZ290byBmYWxsYmFjazsKKwl9CgotOjgwOiBDSEVDSzpCUkFDRVM6IFVuYmFsYW5j
ZWQgYnJhY2VzIGFyb3VuZCBlbHNlIHN0YXRlbWVudAojODA6IEZJTEU6IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYzo0MjY6CisJCX0gZWxzZQoKdG90YWw6IDAgZXJyb3Jz
LCAxIHdhcm5pbmdzLCAyIGNoZWNrcywgOTMgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
