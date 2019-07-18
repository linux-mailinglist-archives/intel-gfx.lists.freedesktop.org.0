Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 746716D136
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 17:35:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2E406E408;
	Thu, 18 Jul 2019 15:35:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DDAAF6E406;
 Thu, 18 Jul 2019 15:35:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D587CA432F;
 Thu, 18 Jul 2019 15:35:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 18 Jul 2019 15:35:53 -0000
Message-ID: <20190718153553.17743.33027@emeril.freedesktop.org>
References: <20190718145407.21352-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190718145407.21352-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/4=5D_drm/i915=3A_Drop_wmb=28=29_in?=
 =?utf-8?q?side_pread=5Fgtt?=
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
ZHJtL2k5MTU6IERyb3Agd21iKCkgaW5zaWRlIHByZWFkX2d0dApVUkwgICA6IGh0dHBzOi8vcGF0
Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjM4OTUvClN0YXRlIDogd2FybmluZwoKPT0g
U3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAo3YTk1ODczNDkxMGIg
ZHJtL2k5MTU6IERyb3Agd21iKCkgaW5zaWRlIHByZWFkX2d0dAo0NWUyMWE2YTk5ZGIgZHJtL2k5
MTU6IFVzZSBtYXhpbXVtIHdyaXRlIGZsdXNoIGZvciBwd3JpdGVfZ3R0CmRlNWQ0OWI0OTE5NSBk
cm0vaTkxNTogRmx1c2ggYWxsIHVzZXIgc3VyZmFjZXMgcHJpb3IgdG8gZmlyc3QgdXNlCi06MTI6
IEVSUk9SOkJBRF9TSUdOX09GRjogVW5yZWNvZ25pemVkIGVtYWlsIGFkZHJlc3M6ICdzdGFibGV2
Z2VyLmtlcm5lbC5vcmcnCiMxMjogCkNjOiBzdGFibGV2Z2VyLmtlcm5lbC5vcmcKCnRvdGFsOiAx
IGVycm9ycywgMCB3YXJuaW5ncywgMCBjaGVja3MsIDM4IGxpbmVzIGNoZWNrZWQKN2U4ZGI1ZjRk
NGY5IGRybS9pOTE1OiBGbHVzaCBzdGFsZSBjYWNoZWxpbmVzIG9uIHNldC1jYWNoZS1sZXZlbAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
