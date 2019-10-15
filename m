Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B9FD8282
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 23:48:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C3936E896;
	Tue, 15 Oct 2019 21:48:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D6FD06E896;
 Tue, 15 Oct 2019 21:48:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CBF97A0096;
 Tue, 15 Oct 2019 21:48:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Tue, 15 Oct 2019 21:48:22 -0000
Message-ID: <20191015214822.22843.98658@emeril.freedesktop.org>
References: <20191015193035.25982-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191015193035.25982-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Plane_cdclk_requirements_and_fp16_for_gen4+_=28r?=
 =?utf-8?q?ev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFBsYW5lIGNkY2xrIHJlcXVp
cmVtZW50cyBhbmQgZnAxNiBmb3IgZ2VuNCsgKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MzM3My8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1t
YXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmQ3ODBkMjUyMWU5YyBkcm0v
aTkxNTogQWRkIGRlYnVncyB0byBkaXN0aW5naXVzaCBhIGNkMnggdXBkYXRlIGZyb20gYSBmdWxs
IGNkY2xrIHBsbCB1cGRhdGUKOGY2Nzc3YmM4MjU5IGRybS9pOTE1OiBSZXdvcmsgZ2xvYmFsIHN0
YXRlIGxvY2tpbmcKNTkyOTY4MzE3NzE4IGRybS9pOTE1OiBNb3ZlIGNoZWNrX2RpZ2l0YWxfcG9y
dF9jb25mbGljdHMoKSBlYXJpZXIKM2NlM2UxYmRmMjE3IGRybS9pOTE1OiBBbGxvdyBwbGFuZXMg
dG8gZGVjbGFyZSB0aGVpciBtaW5pbXVtIGFjY2VwdGFibGUgY2RjbGsKLTozMTY6IENIRUNLOlNQ
QUNJTkc6IHNwYWNlcyBwcmVmZXJyZWQgYXJvdW5kIHRoYXQgJyonIChjdHg6RXhWKQojMzE2OiBG
SUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYzoxMzY2ODoK
KwkJKm5lZWRfbW9kZXNldCB8PSBpbnRlbF9wbGFuZV9jYWxjX21pbl9jZGNsayhzdGF0ZSwgcGxh
bmUpOwogCQleCgp0b3RhbDogMCBlcnJvcnMsIDAgd2FybmluZ3MsIDEgY2hlY2tzLCA3NzAgbGlu
ZXMgY2hlY2tlZApiMjFmZGJiOThiMWQgZHJtL2k5MTU6IEVsaW1pbmF0ZSBza2xfY2hlY2tfcGlw
ZV9tYXhfcGl4ZWxfcmF0ZSgpCjE3ZmQ2MTBkYzQxNSBkcm0vaTkxNTogU2ltcGxpZnkgc2tsX21h
eF9zY2FsZSgpCjU4YzQ4MTdkNzUzOSBkcm0vaTkxNTogQWRkIHN1cHBvcnQgZm9yIGhhbGYgZmxv
YXQgZnJhbWVidWZmZXJzIGZvciBza2wrCjI2ODkzMDdhYTAxZiBkcm0vaTkxNTogQWRkIHN1cHBv
cnQgZm9yIGhhbGYgZmxvYXQgZnJhbWVidWZmZXJzIGZvciBnZW40KyBwcmltYXJ5IHBsYW5lcwox
MGQwNzgzYmY2ZmMgZHJtL2k5MTU6IEFkZCBzdXBwb3J0IGZvciBoYWxmIGZsb2F0IGZyYW1lYnVm
ZmVycyBmb3IgaXZiKyBzcHJpdGVzCjdmYjIyZDYyNTY2MiBkcm0vaTkxNTogQWRkIHN1cHBvcnQg
Zm9yIGhhbGYgZmxvYXQgZnJhbWVidWZmZXJzIG9uIHNuYiBzcHJpdGVzCjViYTVkYTYwYzBlZiBk
cm0vaTkxNTogTW92ZSBtb3JlIGNkY2xrIHN0YXRlIGhhbmRsaW5nIGludG8gaW50ZWxfbW9kZXNl
dF9jYWxjX2NkY2xrKCkKNDVlZjY0MWVhNWM3IGRybS9pOTE1OiBDb25zb2xpZGF0ZSBtb3JlIGNk
Y2xrIHN0YXRlIGhhbmRsaW5nCjY2N2U4OGVhYTM5MCBkcm0vaTkxNTogQ29sbGVjdCBtb3JlIGNk
Y2xrIHN0YXRlIHVuZGVyIHRoZSBzYW1lIHJvb2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
