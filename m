Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B1924319
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 23:47:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CAB0891FB;
	Mon, 20 May 2019 21:46:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 20FA6891FB;
 Mon, 20 May 2019 21:46:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 192C1A0109;
 Mon, 20 May 2019 21:46:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Mon, 20 May 2019 21:46:57 -0000
Message-ID: <20190520214657.784.16337@emeril.freedesktop.org>
References: <20190520213945.17046-1-daniel.vetter@ffwll.ch>
X-Patchwork-Hint: ignore
In-Reply-To: <20190520213945.17046-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5B1/4=5D_mm=3A_Check_if_mmu_notifier_callback?=
 =?utf-8?q?s_are_allowed_to_fail?=
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
bW06IENoZWNrIGlmIG1tdSBub3RpZmllciBjYWxsYmFja3MgYXJlIGFsbG93ZWQgdG8gZmFpbApV
UkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjA4NzQvClN0
YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0FMTCAgICBzY3JpcHRzL2NoZWNrc3lzY2Fs
bHMuc2gKICBDQUxMICAgIHNjcmlwdHMvYXRvbWljL2NoZWNrLWF0b21pY3Muc2gKICBERVNDRU5E
ICBvYmp0b29sCiAgQ0hLICAgICBpbmNsdWRlL2dlbmVyYXRlZC9jb21waWxlLmgKICBDQyAgICAg
IGtlcm5lbC9zY2hlZC9jb3JlLm8Ka2VybmVsL3NjaGVkL2NvcmUuYzogSW4gZnVuY3Rpb24g4oCY
c2NoZWR1bGVfZGVidWfigJk6Cmtlcm5lbC9zY2hlZC9jb3JlLmM6MzI3NzozMzogZXJyb3I6IOKA
mHN0cnVjdCB0YXNrX3N0cnVjdOKAmSBoYXMgbm8gbWVtYmVyIG5hbWVkIOKAmG5vbl9ibG9ja2lu
Z19jb3VudOKAmTsgZGlkIHlvdSBtZWFuIOKAmG5vbl9ibG9ja19jb3VudOKAmT8KICAgIHByZXYt
PmNvbW0sIHByZXYtPnBpZCwgcHJldi0+bm9uX2Jsb2NraW5nX2NvdW50KTsKICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+CiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIG5vbl9ibG9ja19jb3VudApzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI3
ODogcmVjaXBlIGZvciB0YXJnZXQgJ2tlcm5lbC9zY2hlZC9jb3JlLm8nIGZhaWxlZAptYWtlWzJd
OiAqKiogW2tlcm5lbC9zY2hlZC9jb3JlLm9dIEVycm9yIDEKc2NyaXB0cy9NYWtlZmlsZS5idWls
ZDo0ODk6IHJlY2lwZSBmb3IgdGFyZ2V0ICdrZXJuZWwvc2NoZWQnIGZhaWxlZAptYWtlWzFdOiAq
KiogW2tlcm5lbC9zY2hlZF0gRXJyb3IgMgpNYWtlZmlsZToxMDcxOiByZWNpcGUgZm9yIHRhcmdl
dCAna2VybmVsJyBmYWlsZWQKbWFrZTogKioqIFtrZXJuZWxdIEVycm9yIDIKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
