Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2EFE6799D
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 12:07:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC3EF6E3CE;
	Sat, 13 Jul 2019 10:07:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B4F136E3CB;
 Sat, 13 Jul 2019 10:07:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AE566A0106;
 Sat, 13 Jul 2019 10:07:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 13 Jul 2019 10:07:50 -0000
Message-ID: <20190713100750.5760.32126@emeril.freedesktop.org>
References: <20190713100016.8026-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190713100016.8026-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B01/11=5D_drm/i915/guc=3A_Use_system_?=
 =?utf-8?q?workqueue_for_log_capture?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzEx
XSBkcm0vaTkxNS9ndWM6IFVzZSBzeXN0ZW0gd29ya3F1ZXVlIGZvciBsb2cgY2FwdHVyZQpVUkwg
ICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjM2NzQvClN0YXRl
IDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRp
cAoxZDM4ZjE1ZWM1ZjIgZHJtL2k5MTUvZ3VjOiBVc2Ugc3lzdGVtIHdvcmtxdWV1ZSBmb3IgbG9n
IGNhcHR1cmUKMWI5YjYwMzZkM2YxIGRybS9pOTE1L3VjOiByZXBsYWNlIHVjIGluaXQvZmluaSBt
aXNjCmRjZThjMWI0MDkyMiBkcm0vaTkxNS91YzogaW50cm9kdWNlIGludGVsX3VjX2Z3X3N1cHBv
cnRlZApkZWJmNjhiZjM5MmEgZHJtL2k5MTUvZ3VjOiBtb3ZlIGd1YyBpcnEgZnVuY3Rpb25zIHRv
IGludGVsX2d1YyBwYXJhbWV0ZXIKYzUzZDQxMDNmNGNmIGRybS9pOTE1L2d1YzogdW5pZnkgZ3Vj
IGlycSBoYW5kbGluZwpkMzFhZGIxODU1NzQgZHJtL2k5MTUvdWM6IG1vdmUgR3VDIGFuZCBIdUMg
ZmlsZXMgdW5kZXIgZ3QvdWMvCi06ODA6IFdBUk5JTkc6RklMRV9QQVRIX0NIQU5HRVM6IGFkZGVk
LCBtb3ZlZCBvciBkZWxldGVkIGZpbGUocyksIGRvZXMgTUFJTlRBSU5FUlMgbmVlZCB1cGRhdGlu
Zz8KIzgwOiAKbmV3IGZpbGUgbW9kZSAxMDA2NDQKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5n
cywgMCBjaGVja3MsIDE0MCBsaW5lcyBjaGVja2VkCmQ4M2Q4MTE4ZTAzYyBkcm0vaTkxNS91Yzog
bW92ZSBHdUMvSHVDIGluc2lkZSBpbnRlbF9ndCB1bmRlciBhIG5ldyBpbnRlbF91Ywo4Mjc1NDNj
ZjRlNGIgZHJtL2k5MTUvdWM6IE1vdmUgaW50ZWwgZnVuY3Rpb25zIHRvIGludGVsX3VjCjVkZTk3
YTRhMGZkOCBkcm0vaTkxNS91YzogcHJlZmVyIGludGVsX2d0IG92ZXIgaTkxNSBpbiBHdUMvSHVD
IHBhdGhzCjBkODZjYTY3YWMxYSBkcm0vaTkxNS9ndWM6IHByZWZlciBpbnRlbF9ndCBpbiBndWMg
aW50ZXJydXB0IGZ1bmN0aW9ucwo2MzExODI2YjgxMjYgZHJtL2k5MTUvdWM6IGtpbGwgPGcsaD51
Y190b19pOTE1CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
