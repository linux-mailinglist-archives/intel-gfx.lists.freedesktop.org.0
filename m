Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA565D7CD
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 23:24:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A3A2897B4;
	Tue,  2 Jul 2019 21:24:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 887EF897B4;
 Tue,  2 Jul 2019 21:24:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5FB66A011B;
 Tue,  2 Jul 2019 21:24:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 02 Jul 2019 21:24:23 -0000
Message-ID: <20190702212423.28691.81507@emeril.freedesktop.org>
References: <20190702192304.31955-1-lucas.demarchi@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190702192304.31955-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/dmc=3A_protect_against_reading_random_memory_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZG1jOiBwcm90ZWN0IGFnYWlu
c3QgcmVhZGluZyByYW5kb20gbWVtb3J5IChyZXYyKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjE2OTUvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFy
eSA9PQoKQXBwbHlpbmc6IGRybS9pOTE1L2RtYzogcHJvdGVjdCBhZ2FpbnN0IHJlYWRpbmcgcmFu
ZG9tIG1lbW9yeQpVc2luZyBpbmRleCBpbmZvIHRvIHJlY29uc3RydWN0IGEgYmFzZSB0cmVlLi4u
Ck0JZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmMKRmFsbGluZyBiYWNrIHRvIHBhdGNo
aW5nIGJhc2UgYW5kIDMtd2F5IG1lcmdlLi4uCkF1dG8tbWVyZ2luZyBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9jc3IuYwpDT05GTElDVCAoY29udGVudCk6IE1lcmdlIGNvbmZsaWN0IGluIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jCmVycm9yOiBGYWlsZWQgdG8gbWVyZ2UgaW4g
dGhlIGNoYW5nZXMuCmhpbnQ6IFVzZSAnZ2l0IGFtIC0tc2hvdy1jdXJyZW50LXBhdGNoJyB0byBz
ZWUgdGhlIGZhaWxlZCBwYXRjaApQYXRjaCBmYWlsZWQgYXQgMDAwMSBkcm0vaTkxNS9kbWM6IHBy
b3RlY3QgYWdhaW5zdCByZWFkaW5nIHJhbmRvbSBtZW1vcnkKV2hlbiB5b3UgaGF2ZSByZXNvbHZl
ZCB0aGlzIHByb2JsZW0sIHJ1biAiZ2l0IGFtIC0tY29udGludWUiLgpJZiB5b3UgcHJlZmVyIHRv
IHNraXAgdGhpcyBwYXRjaCwgcnVuICJnaXQgYW0gLS1za2lwIiBpbnN0ZWFkLgpUbyByZXN0b3Jl
IHRoZSBvcmlnaW5hbCBicmFuY2ggYW5kIHN0b3AgcGF0Y2hpbmcsIHJ1biAiZ2l0IGFtIC0tYWJv
cnQiLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
