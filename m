Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D697102F57
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 23:31:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3439D6E423;
	Tue, 19 Nov 2019 22:31:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B730A6E423;
 Tue, 19 Nov 2019 22:31:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AE98EA0075;
 Tue, 19 Nov 2019 22:31:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 19 Nov 2019 22:31:34 -0000
Message-ID: <157420269468.32165.12498323762666806220@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191119210844.16947-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20191119210844.16947-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_more_dma-buf_lockdep_priming?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogbW9yZSBkbWEtYnVmIGxvY2tkZXAgcHJpbWlu
ZwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjk2OTUv
ClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4v
ZHJtLXRpcAo4NzdlNGVkZjFmZjUgZHJtL21vZGVzZXQ6IFByaW1lIG1vZGVzZXQgbG9jayB2cyBk
bWFfcmVzdgotOjY4OiBXQVJOSU5HOk5PX0FVVEhPUl9TSUdOX09GRjogTWlzc2luZyBTaWduZWQt
b2ZmLWJ5OiBsaW5lIGJ5IG5vbWluYWwgcGF0Y2ggYXV0aG9yICdEYW5pZWwgVmV0dGVyIDxkYW5p
ZWwudmV0dGVyQGZmd2xsLmNoPicKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVj
a3MsIDQwIGxpbmVzIGNoZWNrZWQKNTBiYzAzZmYzZGE3IGRtYS1yZXN2OiBBbHNvIHByaW1lIGFj
cXVpcmUgY3R4IGZvciBsb2NrZGVwCi06MTEwOiBXQVJOSU5HOk5PX0FVVEhPUl9TSUdOX09GRjog
TWlzc2luZyBTaWduZWQtb2ZmLWJ5OiBsaW5lIGJ5IG5vbWluYWwgcGF0Y2ggYXV0aG9yICdEYW5p
ZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPicKCnRvdGFsOiAwIGVycm9ycywgMSB3
YXJuaW5ncywgMCBjaGVja3MsIDI0IGxpbmVzIGNoZWNrZWQKNTlhYTY3ZWZmNjEzIGRybS9tc206
IERvbid0IGluaXQgd3dfbXV0ZWMgYWNxdWlyZSBjdHggYmVmb3JlIG5lZWRlZAotOjQyOiBXQVJO
SU5HOk5PX0FVVEhPUl9TSUdOX09GRjogTWlzc2luZyBTaWduZWQtb2ZmLWJ5OiBsaW5lIGJ5IG5v
bWluYWwgcGF0Y2ggYXV0aG9yICdEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNo
PicKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDE0IGxpbmVzIGNoZWNr
ZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
