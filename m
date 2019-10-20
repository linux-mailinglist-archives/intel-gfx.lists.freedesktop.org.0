Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6062DE00D
	for <lists+intel-gfx@lfdr.de>; Sun, 20 Oct 2019 20:34:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8251E89A72;
	Sun, 20 Oct 2019 18:34:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1BA4689A72;
 Sun, 20 Oct 2019 18:34:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 11BD0A0138;
 Sun, 20 Oct 2019 18:34:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Sun, 20 Oct 2019 18:34:33 -0000
Message-ID: <20191020183433.5311.26612@emeril.freedesktop.org>
References: <20191020181933.54829-1-hdegoede@redhat.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191020181933.54829-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_dr?=
 =?utf-8?q?m/i915=3A_Program_LUT_before_intel=5Fcolor=5Fcommit=28=29_if_LU?=
 =?utf-8?q?T_was_not_previously_set?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFByb2dyYW0gTFVUIGJlZm9y
ZSBpbnRlbF9jb2xvcl9jb21taXQoKSBpZiBMVVQgd2FzIG5vdCBwcmV2aW91c2x5IHNldApVUkwg
ICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjgyNzgvClN0YXRl
IDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQXBwbHlpbmc6IGRybS9pOTE1OiBQcm9ncmFtIExV
VCBiZWZvcmUgaW50ZWxfY29sb3JfY29tbWl0KCkgaWYgTFVUIHdhcyBub3QgcHJldmlvdXNseSBz
ZXQKVXNpbmcgaW5kZXggaW5mbyB0byByZWNvbnN0cnVjdCBhIGJhc2UgdHJlZS4uLgpNCWRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwpNCWRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCk0JZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKRmFsbGluZyBiYWNrIHRvIHBhdGNoaW5nIGJhc2UgYW5k
IDMtd2F5IG1lcmdlLi4uCkF1dG8tbWVyZ2luZyBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApBdXRvLW1lcmdpbmcgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQ09ORkxJQ1QgKGNvbnRlbnQpOiBNZXJnZSBjb25mbGlj
dCBpbiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpBdXRvLW1l
cmdpbmcgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCmVycm9yOiBG
YWlsZWQgdG8gbWVyZ2UgaW4gdGhlIGNoYW5nZXMuCmhpbnQ6IFVzZSAnZ2l0IGFtIC0tc2hvdy1j
dXJyZW50LXBhdGNoJyB0byBzZWUgdGhlIGZhaWxlZCBwYXRjaApQYXRjaCBmYWlsZWQgYXQgMDAw
MSBkcm0vaTkxNTogUHJvZ3JhbSBMVVQgYmVmb3JlIGludGVsX2NvbG9yX2NvbW1pdCgpIGlmIExV
VCB3YXMgbm90IHByZXZpb3VzbHkgc2V0CldoZW4geW91IGhhdmUgcmVzb2x2ZWQgdGhpcyBwcm9i
bGVtLCBydW4gImdpdCBhbSAtLWNvbnRpbnVlIi4KSWYgeW91IHByZWZlciB0byBza2lwIHRoaXMg
cGF0Y2gsIHJ1biAiZ2l0IGFtIC0tc2tpcCIgaW5zdGVhZC4KVG8gcmVzdG9yZSB0aGUgb3JpZ2lu
YWwgYnJhbmNoIGFuZCBzdG9wIHBhdGNoaW5nLCBydW4gImdpdCBhbSAtLWFib3J0Ii4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
