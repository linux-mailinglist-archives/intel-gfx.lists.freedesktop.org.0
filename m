Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BB6465A4
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 19:23:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5144089B38;
	Fri, 14 Jun 2019 17:23:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8CA8A89AAD;
 Fri, 14 Jun 2019 17:23:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 84463A3C0D;
 Fri, 14 Jun 2019 17:23:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 14 Jun 2019 17:23:25 -0000
Message-ID: <20190614172325.19703.83621@emeril.freedesktop.org>
References: <20190614164606.15633-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190614164606.15633-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/3=5D_drm/i915=3A_Keep_context?=
 =?utf-8?q?s_pinned_until_after_the_next_kernel_context_switch?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
M10gZHJtL2k5MTU6IEtlZXAgY29udGV4dHMgcGlubmVkIHVudGlsIGFmdGVyIHRoZSBuZXh0IGtl
cm5lbCBjb250ZXh0IHN3aXRjaApVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9zZXJpZXMvNjIxMjQvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0g
Y2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAoyYzc5NTQzYzI5YjMgZHJtL2k5MTU6IEtlZXAgY29u
dGV4dHMgcGlubmVkIHVudGlsIGFmdGVyIHRoZSBuZXh0IGtlcm5lbCBjb250ZXh0IHN3aXRjaAoz
ZmI2NWFhNWQ0NzcgZHJtL2k5MTU6IFN0b3AgcmV0aXJpbmcgYWxvbmcgZW5naW5lCmU5MTJhZjM5
YTY1MCBkcm0vaTkxNTogUmVwbGFjZSBlbmdpbmUtPnRpbWVsaW5lIHdpdGggYSBwbGFpbiBsaXN0
Ci06MTgxOiBDSEVDSzpVTkNPTU1FTlRFRF9ERUZJTklUSU9OOiBzcGlubG9ja190IGRlZmluaXRp
b24gd2l0aG91dCBjb21tZW50CiMxODE6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV90eXBlcy5oOjI5MjoKKwkJc3BpbmxvY2tfdCBsb2NrOwoKdG90YWw6IDAgZXJy
b3JzLCAwIHdhcm5pbmdzLCAxIGNoZWNrcywgOTY4IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
