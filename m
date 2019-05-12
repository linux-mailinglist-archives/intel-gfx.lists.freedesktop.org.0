Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2945A1AC0F
	for <lists+intel-gfx@lfdr.de>; Sun, 12 May 2019 14:31:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F7FF899BB;
	Sun, 12 May 2019 12:31:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BD6AB898C8;
 Sun, 12 May 2019 12:31:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B7499A009E;
 Sun, 12 May 2019 12:31:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 12 May 2019 12:31:04 -0000
Message-ID: <20190512123104.24063.26313@emeril.freedesktop.org>
References: <20190512122231.4899-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190512122231.4899-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Mark_semaphores_as_complete_on_unsubmit_out_if_p?=
 =?utf-8?q?ayload_was_started?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IE1hcmsgc2VtYXBob3JlcyBh
cyBjb21wbGV0ZSBvbiB1bnN1Ym1pdCBvdXQgaWYgcGF5bG9hZCB3YXMgc3RhcnRlZApVUkwgICA6
IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjA1NDgvClN0YXRlIDog
d2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAo2
YjBhODhkZjE3MjcgZHJtL2k5MTU6IE1hcmsgc2VtYXBob3JlcyBhcyBjb21wbGV0ZSBvbiB1bnN1
Ym1pdCBvdXQgaWYgcGF5bG9hZCB3YXMgc3RhcnRlZAotOjEwOiBXQVJOSU5HOkNPTU1JVF9MT0df
TE9OR19MSU5FOiBQb3NzaWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0aW9uIChwcmVmZXIg
YSBtYXhpbXVtIDc1IGNoYXJzIHBlciBsaW5lKQojMTA6IApSZWZlcmVuY2VzOiBjYTZlNTZmNjU0
ZTcgKCJkcm0vaTkxNTogRGlzYWJsZSBzZW1hcGhvcmUgYnVzeXdhaXRzIG9uIHNhdHVyYXRlZCBz
eXN0ZW1zIikKCi06MTA6IEVSUk9SOkdJVF9DT01NSVRfSUQ6IFBsZWFzZSB1c2UgZ2l0IGNvbW1p
dCBkZXNjcmlwdGlvbiBzdHlsZSAnY29tbWl0IDwxMisgY2hhcnMgb2Ygc2hhMT4gKCI8dGl0bGUg
bGluZT4iKScgLSBpZTogJ2NvbW1pdCBjYTZlNTZmNjU0ZTcgKCJkcm0vaTkxNTogRGlzYWJsZSBz
ZW1hcGhvcmUgYnVzeXdhaXRzIG9uIHNhdHVyYXRlZCBzeXN0ZW1zIiknCiMxMDogClJlZmVyZW5j
ZXM6IGNhNmU1NmY2NTRlNyAoImRybS9pOTE1OiBEaXNhYmxlIHNlbWFwaG9yZSBidXN5d2FpdHMg
b24gc2F0dXJhdGVkIHN5c3RlbXMiKQoKdG90YWw6IDEgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNo
ZWNrcywgMTAgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
