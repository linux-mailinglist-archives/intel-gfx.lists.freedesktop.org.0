Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B434C2E375
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 19:42:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD84B6E072;
	Wed, 29 May 2019 17:42:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4D8DD89E38;
 Wed, 29 May 2019 17:42:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 473F6A0019;
 Wed, 29 May 2019 17:42:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 29 May 2019 17:42:15 -0000
Message-ID: <20190529174215.29224.47826@emeril.freedesktop.org>
References: <20190529160605.28739-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190529160605.28739-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B01/10=5D_drm/i915=3A_Add_windowing_for_p?=
 =?utf-8?q?rimary_planes_on_gen2/3_and_chv?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzEw
XSBkcm0vaTkxNTogQWRkIHdpbmRvd2luZyBmb3IgcHJpbWFyeSBwbGFuZXMgb24gZ2VuMi8zIGFu
ZCBjaHYKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYx
MzQ1LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIHNwYXJzZSBvcmlnaW4v
ZHJtLXRpcApTcGFyc2UgdmVyc2lvbjogdjAuNS4yCkNvbW1pdDogZHJtL2k5MTU6IEFkZCB3aW5k
b3dpbmcgZm9yIHByaW1hcnkgcGxhbmVzIG9uIGdlbjIvMyBhbmQgY2h2Ck9rYXkhCgpDb21taXQ6
IGRybS9pOTE1OiBEaXNhYmxlIHNwcml0ZSBnYW1tYSBvbiBpdmItYmR3Ck9rYXkhCgpDb21taXQ6
IGRybS9pOTE1OiBQcm9ncmFtIHBsYW5lIGdhbW1hIHJhbXBzCk9rYXkhCgpDb21taXQ6IGRybS9p
OTE1OiBEZWFsIHdpdGggY3BwPT04IGZvciBnNHggd2F0ZXJtYXJrcworZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uYzoxMTMzOjIzOiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVv
Zih2b2lkKQotZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzo0NDUyOjI1OiB3YXJuaW5n
OiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQotZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcG0uYzo0NDYzOjI1OiB3YXJuaW5nOiB0b28gbWFueSB3YXJuaW5ncworZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcG0uYzo0NDUyOjI1OiB3YXJuaW5nOiB0b28gbWFueSB3YXJuaW5ncwoK
Q29tbWl0OiBkcm0vaTkxNTogQ29zbWV0aWMgZml4IGZvciBza2wrIHBsYW5lIHN3aXRjaCBzdGF0
ZW1lbnQKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IENsZWFuIHVwIHNrbCB2cy4gaWNsIHBsYW5l
IGZvcm1hdHMKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEFkZCBzdXBwb3J0IGZvciBoYWxmIGZs
b2F0IGZyYW1lYnVmZmVycyBmb3Igc2tsKwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogQWRkIHN1
cHBvcnQgZm9yIGhhbGYgZmxvYXQgZnJhbWVidWZmZXJzIGZvciBnZW40KyBwcmltYXJ5IHBsYW5l
cwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogQWRkIHN1cHBvcnQgZm9yIGhhbGYgZmxvYXQgZnJh
bWVidWZmZXJzIGZvciBpdmIrIHNwcml0ZXMKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nw
cml0ZS5jOjExMTA6Mjg6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zcHJpdGUuYzoxMTEyOjIwOiB3YXJuaW5nOiBleHBy
ZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQoKQ29tbWl0OiBkcm0vaTkxNTogQWRkIHN1cHBvcnQg
Zm9yIGhhbGYgZmxvYXQgZnJhbWVidWZmZXJzIG9uIHNuYiBzcHJpdGVzCk9rYXkhCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
