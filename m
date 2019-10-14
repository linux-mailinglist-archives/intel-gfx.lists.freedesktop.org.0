Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 912D8D6702
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 18:15:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD81E6E52F;
	Mon, 14 Oct 2019 16:15:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 641BA6E52A;
 Mon, 14 Oct 2019 16:15:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C3FEA0087;
 Mon, 14 Oct 2019 16:15:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 14 Oct 2019 16:15:18 -0000
Message-ID: <20191014161518.23968.54344@emeril.freedesktop.org>
References: <20191014090757.32111-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191014090757.32111-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_se?=
 =?utf-8?q?ries_starting_with_=5B01/15=5D_drm/i915/display=3A_Squelch_kern?=
 =?utf-8?q?eldoc_warnings?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzE1
XSBkcm0vaTkxNS9kaXNwbGF5OiBTcXVlbGNoIGtlcm5lbGRvYyB3YXJuaW5ncwpVUkwgICA6IGh0
dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjc5NzAvClN0YXRlIDogZmFp
bHVyZQoKPT0gU3VtbWFyeSA9PQoKQXBwbHlpbmc6IGRybS9pOTE1L2Rpc3BsYXk6IFNxdWVsY2gg
a2VybmVsZG9jIHdhcm5pbmdzClVzaW5nIGluZGV4IGluZm8gdG8gcmVjb25zdHJ1Y3QgYSBiYXNl
IHRyZWUuLi4KTQlkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpG
YWxsaW5nIGJhY2sgdG8gcGF0Y2hpbmcgYmFzZSBhbmQgMy13YXkgbWVyZ2UuLi4KTm8gY2hhbmdl
cyAtLSBQYXRjaCBhbHJlYWR5IGFwcGxpZWQuCkFwcGx5aW5nOiBkcm0vaTkxNS9nZW06IERpc3Rp
bmd1aXNoIGVhY2ggb2JqZWN0IHR5cGUKQXBwbHlpbmc6IGRybS9pOTE1L2V4ZWNsaXN0czogQXNz
ZXJ0IHRhc2tsZXQgaXMgbG9ja2VkIGZvciBwcm9jZXNzX2NzYigpCkFwcGx5aW5nOiBkcm0vaTkx
NS9leGVjbGlzdHM6IENsZWFyIHNlbWFwaG9yZSBpbW1lZGlhdGVseSB1cG9uIEVMU1AgcHJvbW90
aW9uCkFwcGx5aW5nOiBkcm0vaTkxNS9leGVjbGlzdHM6IFR3ZWFrIHZpcnR1YWwgdW5zdWJtaXNz
aW9uClVzaW5nIGluZGV4IGluZm8gdG8gcmVjb25zdHJ1Y3QgYSBiYXNlIHRyZWUuLi4KTQlkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpNCWRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVxdWVzdC5jCkZhbGxpbmcgYmFjayB0byBwYXRjaGluZyBiYXNlIGFuZCAzLXdheSBtZXJn
ZS4uLgpObyBjaGFuZ2VzIC0tIFBhdGNoIGFscmVhZHkgYXBwbGllZC4KQXBwbHlpbmc6IGRybS9p
OTE1L3NlbGZ0ZXN0czogQ2hlY2sga25vd24gcmVnaXN0ZXIgdmFsdWVzIHdpdGhpbiB0aGUgY29u
dGV4dApVc2luZyBpbmRleCBpbmZvIHRvIHJlY29uc3RydWN0IGEgYmFzZSB0cmVlLi4uCk0JZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMKRmFsbGluZyBiYWNrIHRvIHBhdGNo
aW5nIGJhc2UgYW5kIDMtd2F5IG1lcmdlLi4uCkF1dG8tbWVyZ2luZyBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9zZWxmdGVzdF9scmMuYwpDT05GTElDVCAoY29udGVudCk6IE1lcmdlIGNvbmZsaWN0
IGluIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jCmVycm9yOiBGYWlsZWQg
dG8gbWVyZ2UgaW4gdGhlIGNoYW5nZXMuCmhpbnQ6IFVzZSAnZ2l0IGFtIC0tc2hvdy1jdXJyZW50
LXBhdGNoJyB0byBzZWUgdGhlIGZhaWxlZCBwYXRjaApQYXRjaCBmYWlsZWQgYXQgMDAwNiBkcm0v
aTkxNS9zZWxmdGVzdHM6IENoZWNrIGtub3duIHJlZ2lzdGVyIHZhbHVlcyB3aXRoaW4gdGhlIGNv
bnRleHQKV2hlbiB5b3UgaGF2ZSByZXNvbHZlZCB0aGlzIHByb2JsZW0sIHJ1biAiZ2l0IGFtIC0t
Y29udGludWUiLgpJZiB5b3UgcHJlZmVyIHRvIHNraXAgdGhpcyBwYXRjaCwgcnVuICJnaXQgYW0g
LS1za2lwIiBpbnN0ZWFkLgpUbyByZXN0b3JlIHRoZSBvcmlnaW5hbCBicmFuY2ggYW5kIHN0b3Ag
cGF0Y2hpbmcsIHJ1biAiZ2l0IGFtIC0tYWJvcnQiLgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
