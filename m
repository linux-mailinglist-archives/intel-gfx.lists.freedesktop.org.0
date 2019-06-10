Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0123F3B40D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 13:34:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0C6089127;
	Mon, 10 Jun 2019 11:34:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2705D89125;
 Mon, 10 Jun 2019 11:34:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1B057A0109;
 Mon, 10 Jun 2019 11:34:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 10 Jun 2019 11:34:22 -0000
Message-ID: <20190610113422.9308.21038@emeril.freedesktop.org>
References: <20190610072126.6355-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190610072126.6355-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5B01/28=5D_drm/i915=3A_Move_fence_register_tr?=
 =?utf-8?q?acking_from_i915-=3Emm_to_ggtt?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzI4
XSBkcm0vaTkxNTogTW92ZSBmZW5jZSByZWdpc3RlciB0cmFja2luZyBmcm9tIGk5MTUtPm1tIHRv
IGdndHQKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYx
ODI0LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkFwcGx5aW5nOiBkcm0vaTkxNTog
TW92ZSBmZW5jZSByZWdpc3RlciB0cmFja2luZyBmcm9tIGk5MTUtPm1tIHRvIGdndHQKQXBwbHlp
bmc6IGRybS9pOTE1OiBUcmFjayBnZ3R0IGZlbmNlIHJlc2VydmF0aW9ucyB1bmRlciBpdHMgb3du
IG11dGV4CkFwcGx5aW5nOiBkcm0vaTkxNTogQ29tYmluZSB1bmJvdW5kL2JvdW5kIGxpc3QgdHJh
Y2tpbmcgZm9yIG9iamVjdHMKQXBwbHlpbmc6IGRybS9pOTE1OiBQcm9tb3RlIGk5MTUtPm1tLm9i
al9sb2NrIHRvIGJlIGlycXNhZmUKQXBwbHlpbmc6IGRybS9pOTE1OiBNYWtlIHRoZSBzZW1hcGhv
cmUgc2F0dXJhdGlvbiBtYXNrIGdsb2JhbApBcHBseWluZzogZHJtL2k5MTU6IEtlZXAgY29udGV4
dHMgcGlubmVkIHVudGlsIGFmdGVyIHRoZSBuZXh0IGtlcm5lbCBjb250ZXh0IHN3aXRjaApBcHBs
eWluZzogZHJtL2k5MTU6IFN0b3AgcmV0aXJpbmcgYWxvbmcgZW5naW5lCkFwcGx5aW5nOiBkcm0v
aTkxNTogUmVwbGFjZSBlbmdpbmUtPnRpbWVsaW5lIHdpdGggYSBwbGFpbiBsaXN0CkFwcGx5aW5n
OiBkcm0vaTkxNTogRmx1c2ggdGhlIGV4ZWN1dGlvbi1jYWxsYmFja3Mgb24gcmV0aXJpbmcKQXBw
bHlpbmc6IGRybS9pOTE1L2V4ZWNsaXN0czogUHJlZW1wdC10by1idXN5CkFwcGx5aW5nOiBkcm0v
aTkxNS9leGVjbGlzdHM6IE1pbmltYWxpc3RpYyB0aW1lc2xpY2luZwpBcHBseWluZzogZHJtL2k5
MTUvZXhlY2xpc3RzOiBGb3JjZSBwcmVlbXB0aW9uCkFwcGx5aW5nOiBkcm0vaTkxNTogVXNlIGZv
cmNlZCBwcmVlbXB0aW9ucyBpbiBwcmVmZXJlbmNlIG92ZXIgaGFuZ2NoZWNrCkFwcGx5aW5nOiBk
cm0vaTkxNTogQWRkIGEgbGFiZWwgZm9yIGNvbmZpZyBEUk1fSTkxNV9TUElOX1JFUVVFU1QKQXBw
bHlpbmc6IGRybS9pOTE1OiBUaHJvdyBhd2F5IHRoZSBhY3RpdmUgb2JqZWN0IHJldGlyZW1lbnQg
Y29tcGxleGl0eQpBcHBseWluZzogZHJtL2k5MTU6IFByb3ZpZGUgYW4gaTkxNV9hY3RpdmUuYWNx
dWlyZSBjYWxsYmFjawpBcHBseWluZzogZHJtL2k5MTU6IFB1c2ggdGhlIGk5MTVfYWN0aXZlLnJl
dGlyZSBpbnRvIGEgd29ya2VyCkFwcGx5aW5nOiBkcm0vaTkxNS9vdmVybGF5OiBTd2l0Y2ggdG8g
dXNpbmcgaTkxNV9hY3RpdmUgdHJhY2tpbmcKQXBwbHlpbmc6IGRybS9pOTE1OiBGb3JnbyBsYXN0
X2ZlbmNlIGFjdGl2ZSByZXF1ZXN0IHRyYWNraW5nCkFwcGx5aW5nOiBkcm0vaTkxNTogRXh0cmFj
dCBpbnRlbF9mcm9udGJ1ZmZlciBhY3RpdmUgdHJhY2tpbmcKQXBwbHlpbmc6IGRybS9pOTE1OiBD
b29yZGluYXRlIGk5MTVfYWN0aXZlIHdpdGggaXRzIG93biBtdXRleApBcHBseWluZzogZHJtL2k5
MTU6IE9ubHkgdHJhY2sgYm91bmQgZWxlbWVudHMgb2YgdGhlIEdUVApBcHBseWluZzogZHJtL2k5
MTU6IFByb3BhZ2F0ZSBmZW5jZSBlcnJvcnMKQXBwbHlpbmc6IGRybS9pOTE1OiBBbGxvdyBwYWdl
IHBpbm5pbmcgdG8gYmUgaW4gdGhlIGJhY2tncm91bmQKQXBwbHlpbmc6IGRybS9pOTE1OiBQdWxs
IGtyZWYgaW50byBpOTE1X2FkZHJlc3Nfc3BhY2UKQXBwbHlpbmc6IGRybS9pOTE1OiBSZW5hbWUg
aTkxNV9od19wcGd0dCB0byBpOTE1X3BwZ3R0CmVycm9yOiBzaGExIGluZm9ybWF0aW9uIGlzIGxh
Y2tpbmcgb3IgdXNlbGVzcyAoZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCkuCmVycm9y
OiBjb3VsZCBub3QgYnVpbGQgZmFrZSBhbmNlc3RvcgpoaW50OiBVc2UgJ2dpdCBhbSAtLXNob3ct
Y3VycmVudC1wYXRjaCcgdG8gc2VlIHRoZSBmYWlsZWQgcGF0Y2gKUGF0Y2ggZmFpbGVkIGF0IDAw
MjYgZHJtL2k5MTU6IFJlbmFtZSBpOTE1X2h3X3BwZ3R0IHRvIGk5MTVfcHBndHQKV2hlbiB5b3Ug
aGF2ZSByZXNvbHZlZCB0aGlzIHByb2JsZW0sIHJ1biAiZ2l0IGFtIC0tY29udGludWUiLgpJZiB5
b3UgcHJlZmVyIHRvIHNraXAgdGhpcyBwYXRjaCwgcnVuICJnaXQgYW0gLS1za2lwIiBpbnN0ZWFk
LgpUbyByZXN0b3JlIHRoZSBvcmlnaW5hbCBicmFuY2ggYW5kIHN0b3AgcGF0Y2hpbmcsIHJ1biAi
Z2l0IGFtIC0tYWJvcnQiLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
