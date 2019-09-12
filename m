Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07786B164D
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 00:33:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD8A56EE4B;
	Thu, 12 Sep 2019 22:33:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E1E4C6EE4B;
 Thu, 12 Sep 2019 22:33:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DA1FDA0094;
 Thu, 12 Sep 2019 22:33:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Thu, 12 Sep 2019 22:33:43 -0000
Message-ID: <20190912223343.12411.35439@emeril.freedesktop.org>
References: <20190912133816.1382-1-mika.kuoppala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190912133816.1382-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_se?=
 =?utf-8?q?ries_starting_with_=5B1/4=5D_drm/i915/tgl=3A_Introduce_gen12_fo?=
 =?utf-8?q?rcewake_ranges_=28rev3=29?=
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
ZHJtL2k5MTUvdGdsOiBJbnRyb2R1Y2UgZ2VuMTIgZm9yY2V3YWtlIHJhbmdlcyAocmV2MykKVVJM
ICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY2NjA4LwpTdGF0
ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkFwcGx5aW5nOiBkcm0vaTkxNS90Z2w6IEludHJv
ZHVjZSBnZW4xMiBmb3JjZXdha2UgcmFuZ2VzCkFwcGx5aW5nOiBkcm0vaTkxNS90Z2w6IHMvc3Mv
ZXUgZnVzZSByZWFkaW5nIHN1cHBvcnQKQXBwbHlpbmc6IGRybS9pOTE1L3RnbDogUmUtZW5hYmxl
IHJjNgpVc2luZyBpbmRleCBpbmZvIHRvIHJlY29uc3RydWN0IGEgYmFzZSB0cmVlLi4uCk0JZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwpGYWxsaW5nIGJhY2sgdG8gcGF0Y2hpbmcgYmFz
ZSBhbmQgMy13YXkgbWVyZ2UuLi4KQXV0by1tZXJnaW5nIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGNpLmMKQ09ORkxJQ1QgKGNvbnRlbnQpOiBNZXJnZSBjb25mbGljdCBpbiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BjaS5jCmVycm9yOiBGYWlsZWQgdG8gbWVyZ2UgaW4gdGhlIGNoYW5n
ZXMuCmhpbnQ6IFVzZSAnZ2l0IGFtIC0tc2hvdy1jdXJyZW50LXBhdGNoJyB0byBzZWUgdGhlIGZh
aWxlZCBwYXRjaApQYXRjaCBmYWlsZWQgYXQgMDAwMyBkcm0vaTkxNS90Z2w6IFJlLWVuYWJsZSBy
YzYKV2hlbiB5b3UgaGF2ZSByZXNvbHZlZCB0aGlzIHByb2JsZW0sIHJ1biAiZ2l0IGFtIC0tY29u
dGludWUiLgpJZiB5b3UgcHJlZmVyIHRvIHNraXAgdGhpcyBwYXRjaCwgcnVuICJnaXQgYW0gLS1z
a2lwIiBpbnN0ZWFkLgpUbyByZXN0b3JlIHRoZSBvcmlnaW5hbCBicmFuY2ggYW5kIHN0b3AgcGF0
Y2hpbmcsIHJ1biAiZ2l0IGFtIC0tYWJvcnQiLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
