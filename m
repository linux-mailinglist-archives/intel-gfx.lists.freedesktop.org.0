Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27595EADD7
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 11:51:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 705656EE1C;
	Thu, 31 Oct 2019 10:51:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DCB506EE1B;
 Thu, 31 Oct 2019 10:51:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D5C57A0071;
 Thu, 31 Oct 2019 10:51:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 31 Oct 2019 10:51:31 -0000
Message-ID: <20191031105131.29574.57133@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191031104747.5308-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191031104747.5308-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_dr?=
 =?utf-8?q?m/i915/execlists=3A_Verify_context_register_state_before_execut?=
 =?utf-8?q?ion_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZXhlY2xpc3RzOiBWZXJpZnkg
Y29udGV4dCByZWdpc3RlciBzdGF0ZSBiZWZvcmUgZXhlY3V0aW9uIChyZXYyKQpVUkwgICA6IGh0
dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjg1OTkvClN0YXRlIDogZmFp
bHVyZQoKPT0gU3VtbWFyeSA9PQoKQXBwbHlpbmc6IGRybS9pOTE1L2V4ZWNsaXN0czogVmVyaWZ5
IGNvbnRleHQgcmVnaXN0ZXIgc3RhdGUgYmVmb3JlIGV4ZWN1dGlvbgplcnJvcjogc2hhMSBpbmZv
cm1hdGlvbiBpcyBsYWNraW5nIG9yIHVzZWxlc3MgKGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jKS4KZXJyb3I6IGNvdWxkIG5vdCBidWlsZCBmYWtlIGFuY2VzdG9yCmhpbnQ6IFVz
ZSAnZ2l0IGFtIC0tc2hvdy1jdXJyZW50LXBhdGNoJyB0byBzZWUgdGhlIGZhaWxlZCBwYXRjaApQ
YXRjaCBmYWlsZWQgYXQgMDAwMSBkcm0vaTkxNS9leGVjbGlzdHM6IFZlcmlmeSBjb250ZXh0IHJl
Z2lzdGVyIHN0YXRlIGJlZm9yZSBleGVjdXRpb24KV2hlbiB5b3UgaGF2ZSByZXNvbHZlZCB0aGlz
IHByb2JsZW0sIHJ1biAiZ2l0IGFtIC0tY29udGludWUiLgpJZiB5b3UgcHJlZmVyIHRvIHNraXAg
dGhpcyBwYXRjaCwgcnVuICJnaXQgYW0gLS1za2lwIiBpbnN0ZWFkLgpUbyByZXN0b3JlIHRoZSBv
cmlnaW5hbCBicmFuY2ggYW5kIHN0b3AgcGF0Y2hpbmcsIHJ1biAiZ2l0IGFtIC0tYWJvcnQiLgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
