Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8CCF9C74
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 22:46:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D7A46E457;
	Tue, 12 Nov 2019 21:45:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E3ED96E457;
 Tue, 12 Nov 2019 21:45:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DC214A0096;
 Tue, 12 Nov 2019 21:45:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Tue, 12 Nov 2019 21:45:57 -0000
Message-ID: <157359515787.31293.9226207970861248830@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191112163812.22075-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191112163812.22075-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B1/4=5D_drm/i915/fbc=3A_Nuke_bogus_single?=
 =?utf-8?q?_pipe_fbc1_restriction?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNF0g
ZHJtL2k5MTUvZmJjOiBOdWtlIGJvZ3VzIHNpbmdsZSBwaXBlIGZiYzEgcmVzdHJpY3Rpb24KVVJM
ICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY5MzY2LwpTdGF0
ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIHNwYXJzZSBvcmlnaW4vZHJtLXRpcApT
cGFyc2UgdmVyc2lvbjogdjAuNi4wCkNvbW1pdDogZHJtL2k5MTUvZmJjOiBOdWtlIGJvZ3VzIHNp
bmdsZSBwaXBlIGZiYzEgcmVzdHJpY3Rpb24KT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IFJlbG9j
YXRlIGludGVsX2NydGNfYWN0aXZlKCkKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEVMaW1pbmF0
ZSBpbnRlbF9waXBlX3RvX2NwdV90cmFuc2NvZGVyKCkgZnJvbSBhc3NlcnRfZmRpX3R4KCkKT2th
eSEKCkNvbW1pdDogZHJtL2k5MTU6IFBhc3MgY3B1IHRyYW5zY29kZXIgdG8gYXNzZXJ0X3BpcGUo
KQorZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jOjMwNDA6OTogICAgIGlu
dCBlbnVtIHBpcGUgdmVyc3VzCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmM6MzA0MDo5OiAgICAgaW50IGVudW0gdHJhbnNjb2RlcgorZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jOjMwNDA6OTogd2FybmluZzogbWl4aW5nIGRpZmZlcmVudCBlbnVt
IHR5cGVzCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmM6MzA4MDo5OiAg
ICAgaW50IGVudW0gcGlwZSB2ZXJzdXMKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYzozMDgwOjk6ICAgICBpbnQgZW51bSB0cmFuc2NvZGVyCitkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmM6MzA4MDo5OiB3YXJuaW5nOiBtaXhpbmcgZGlmZmVyZW50
IGVudW0gdHlwZXMKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdHYuYzoxNTMw
Ojk6ICAgICBpbnQgZW51bSBwaXBlIHZlcnN1cworZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF90di5jOjE1MzA6OTogICAgIGludCBlbnVtIHRyYW5zY29kZXIKK2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdHYuYzoxNTMwOjk6IHdhcm5pbmc6IG1peGluZyBkaWZm
ZXJlbnQgZW51bSB0eXBlcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
