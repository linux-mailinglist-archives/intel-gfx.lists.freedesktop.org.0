Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8255221ECE
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 21:57:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 849A789893;
	Fri, 17 May 2019 19:57:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 15E1689893;
 Fri, 17 May 2019 19:57:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0F032A00EA;
 Fri, 17 May 2019 19:57:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 17 May 2019 19:57:37 -0000
Message-ID: <20190517195737.9057.90444@emeril.freedesktop.org>
References: <20190517193132.8140-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190517193132.8140-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B01/14=5D_drm/i915=3A_Pass_intel=5Fatomic?=
 =?utf-8?q?=5Fstate_to_cdclk_funcs?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzE0
XSBkcm0vaTkxNTogUGFzcyBpbnRlbF9hdG9taWNfc3RhdGUgdG8gY2RjbGsgZnVuY3MKVVJMICAg
OiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYwODAzLwpTdGF0ZSA6
IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIHNwYXJzZSBvcmlnaW4vZHJtLXRpcApTcGFy
c2UgdmVyc2lvbjogdjAuNS4yCkNvbW1pdDogZHJtL2k5MTU6IFBhc3MgaW50ZWxfYXRvbWljX3N0
YXRlIHRvIGNkY2xrIGZ1bmNzCi1POmRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NkY2xrLmM6
MjMwODoyOTogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLU86ZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsuYzoyMzA4OjI5OiB3YXJuaW5nOiBleHByZXNzaW9u
IHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsuYzoy
MzA3OjI5OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsuYzoyMzA3OjI5OiB3YXJuaW5nOiBleHByZXNzaW9uIHVz
aW5nIHNpemVvZih2b2lkKQotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jZGNsay5jOjI1
NDc6MTc6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCi1POmRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2NkY2xrLmM6MjU0NzoxNzogd2FybmluZzogZXhwcmVzc2lvbiB1
c2luZyBzaXplb2Yodm9pZCkKLU86ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsuYzoy
NTgzOjE3OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQotTzpkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9jZGNsay5jOjI1ODM6MTc6IHdhcm5pbmc6IGV4cHJlc3Npb24g
dXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jZGNsay5jOjI1
MzY6MTc6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9jZGNsay5jOjI1MzY6MTc6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNp
bmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jZGNsay5jOjI1NzA6
MTc6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9jZGNsay5jOjI1NzA6MTc6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcg
c2l6ZW9mKHZvaWQpCgpDb21taXQ6IGRybS9pOTE1OiBDbGVhbiB1cCBjZGNsayB2ZnVuYyBhc3Np
Z25tZW50cwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogUGFzcyBpbnRlbF9hdG9taWMgc3RhdGUg
dG8gY2hlY2tfZGlnaXRhbF9wb3J0X2NvbmZsaWN0cygpCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1
OiBVc2UgaW50ZWxfIHR5cGVzIGluIGludGVsX21vZGVzZXRfY2xlYXJfcGxscygpCk9rYXkhCgpD
b21taXQ6IGRybS9pOTE1OiBVc2UgaW50ZWxfIHR5cGVzIGluIGhhc3dlbGxfbW9kZV9zZXRfcGxh
bmVzX3dvcmthcm91bmQoKQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogRG9uJ3QgcGFzcyB0aGUg
Y3J0YyB0byBpbnRlbF9kdW1wX3BpcGVfY29uZmlnKCkKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6
IERvbid0IHBhc3MgdGhlIGNydGMgdG8gaW50ZWxfbW9kZXNldF9waXBlX2NvbmZpZygpCk9rYXkh
CgpDb21taXQ6IGRybS9pOTE1OiBVc2UgaW50ZWxfIHR5cGVzIGluIGludGVsX21vZGVzZXRfY2hl
Y2tzKCkKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IFVzZSBpbnRlbF8gdHlwZXMgaW4gaW50ZWxf
YXRvbWljX2NoZWNrKCkKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IE1vdmUgc3RhdGUgZHVtcCB0
byB0aGUgZW5kIG9mIGF0b21pY19jaGVjaygpCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBJbmNs
dWRlIGNydGNfc3RhdGUuYWN0aXZlIGluIGNydGMgc3RhdGUgZHVtcHMKT2theSEKCkNvbW1pdDog
ZHJtL2k5MTU6IER1bXAgZmFpbGVkIGNydGMgc3RhdGVzIGR1cmluZyBhdG9taWMgY2hlY2sKT2th
eSEKCkNvbW1pdDogZHJtL2k5MTU6IE1ha2Ugc3RhdGUgZHVtcGVycyB0YWtlIGEgY29uc3Qgc3Rh
dGUKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEZpeCBwbGFuZSBzdGF0ZSBkdW1wcwpPa2F5IQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
