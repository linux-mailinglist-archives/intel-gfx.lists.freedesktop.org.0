Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7387C8AA1A
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 00:00:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A43496E5E8;
	Mon, 12 Aug 2019 22:00:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4728E6E5E6;
 Mon, 12 Aug 2019 22:00:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3EA6FA0091;
 Mon, 12 Aug 2019 22:00:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 12 Aug 2019 22:00:48 -0000
Message-ID: <20190812220048.20589.17931@emeril.freedesktop.org>
References: <20190812133915.18824-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190812133915.18824-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_drm/i915/guc=3A_Use_a_local_cancel=5Fport=5Fre?=
 =?utf-8?q?quests_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggZHJtL2k5
MTUvZ3VjOiBVc2UgYSBsb2NhbCBjYW5jZWxfcG9ydF9yZXF1ZXN0cyAocmV2MikKVVJMICAgOiBo
dHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY1MDg5LwpTdGF0ZSA6IGZh
aWx1cmUKCj09IFN1bW1hcnkgPT0KCkFwcGx5aW5nOiBkcm0vaTkxNS9ndWM6IFVzZSBhIGxvY2Fs
IGNhbmNlbF9wb3J0X3JlcXVlc3RzCkFwcGx5aW5nOiBkcm0vaTkxNTogUHVzaCB0aGUgd2FrZXJl
Zi0+Y291bnQgZGVmZXJyYWwgdG8gdGhlIGJhY2tlbmQKQXBwbHlpbmc6IGRybS9pOTE1L2d0OiBT
YXZlL3Jlc3RvcmUgaW50ZXJydXB0cyBhcm91bmQgYnJlYWRjcnVtYiBkaXNhYmxlCkFwcGx5aW5n
OiBkcm0vaTkxNS9leGVjbGlzdHM6IExpZnQgcHJvY2Vzc19jc2IoKSBvdXQgb2YgdGhlIGlycS1v
ZmYgc3BpbmxvY2sKQXBwbHlpbmc6IGRybS9pOTE1L2d0OiBUcmFjayB0aW1lbGluZSBhY3RpdmVu
ZXNzIGluIGVudGVyL2V4aXQKQXBwbHlpbmc6IGRybS9pOTE1L2d0OiBDb252ZXJ0IHRpbWVsaW5l
IHRyYWNraW5nIHRvIHNwaW5sb2NrCkFwcGx5aW5nOiBkcm0vaTkxNS9ndDogR3VhcmQgdGltZWxp
bmUgcGlubmluZyB3aXRoIGl0cyBvd24gbXV0ZXgKQXBwbHlpbmc6IGRybS9pOTE1OiBQcm90ZWN0
IHJlcXVlc3QgcmV0aXJlbWVudCB3aXRoIHRpbWVsaW5lLT5tdXRleApVc2luZyBpbmRleCBpbmZv
IHRvIHJlY29uc3RydWN0IGEgYmFzZSB0cmVlLi4uCk0JZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3QuYwpNCWRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmgKTQlk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKRmFsbGluZyBiYWNrIHRv
IHBhdGNoaW5nIGJhc2UgYW5kIDMtd2F5IG1lcmdlLi4uCkF1dG8tbWVyZ2luZyBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKQXV0by1tZXJnaW5nIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmgKQXV0by1tZXJnaW5nIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2d0LmMKQ09ORkxJQ1QgKGNvbnRlbnQpOiBNZXJnZSBjb25mbGljdCBp
biBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jCmVycm9yOiBGYWlsZWQgdG8gbWVy
Z2UgaW4gdGhlIGNoYW5nZXMuCmhpbnQ6IFVzZSAnZ2l0IGFtIC0tc2hvdy1jdXJyZW50LXBhdGNo
JyB0byBzZWUgdGhlIGZhaWxlZCBwYXRjaApQYXRjaCBmYWlsZWQgYXQgMDAwOCBkcm0vaTkxNTog
UHJvdGVjdCByZXF1ZXN0IHJldGlyZW1lbnQgd2l0aCB0aW1lbGluZS0+bXV0ZXgKV2hlbiB5b3Ug
aGF2ZSByZXNvbHZlZCB0aGlzIHByb2JsZW0sIHJ1biAiZ2l0IGFtIC0tY29udGludWUiLgpJZiB5
b3UgcHJlZmVyIHRvIHNraXAgdGhpcyBwYXRjaCwgcnVuICJnaXQgYW0gLS1za2lwIiBpbnN0ZWFk
LgpUbyByZXN0b3JlIHRoZSBvcmlnaW5hbCBicmFuY2ggYW5kIHN0b3AgcGF0Y2hpbmcsIHJ1biAi
Z2l0IGFtIC0tYWJvcnQiLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
