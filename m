Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5381EA5C23
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2019 20:13:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E1998925D;
	Mon,  2 Sep 2019 18:13:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3892A8925D;
 Mon,  2 Sep 2019 18:13:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2F276A363D;
 Mon,  2 Sep 2019 18:13:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 02 Sep 2019 18:13:22 -0000
Message-ID: <20190902181322.16949.97021@emeril.freedesktop.org>
References: <cover.1567446845.git.jani.nikula@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <cover.1567446845.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_deconflate_display_disable_from_no_display?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IGRlY29uZmxhdGUgZGlzcGxh
eSBkaXNhYmxlIGZyb20gbm8gZGlzcGxheQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9zZXJpZXMvNjYxMzUvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoK
JCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAphOTAzNDUwMzgzZmIgZHJtL2k5MTU6IGFk
ZCBJTlRFTF9OVU1fUElQRVMoKSBhbmQgdXNlIGl0CmYzZjEwYjEzMTI3ZCBkcm0vaTkxNTogY29u
dmVydCBkZXZpY2UgaW5mbyBudW1fcGlwZXMgdG8gcGlwZV9tYXNrCjcwYTJhNzhjMDgzYSBkcm0v
aTkxNTogaW50cm9kdWNlIElOVEVMX0RJU1BMQVlfRU5BQkxFRCgpCi06MTMzOiBXQVJOSU5HOkxP
TkdfTElORTogbGluZSBvdmVyIDEwMCBjaGFyYWN0ZXJzCiMxMzM6IEZJTEU6IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2Lmg6MjE5MDoKKyNkZWZpbmUgSU5URUxfRElTUExBWV9FTkFCTEVE
KGRldl9wcml2KSAoV0FSTl9PTighSEFTX0RJU1BMQVkoZGV2X3ByaXYpKSwgIWk5MTVfbW9kcGFy
YW1zLmRpc2FibGVfZGlzcGxheSkKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVj
a3MsIDg5IGxpbmVzIGNoZWNrZWQKNDQyZWQ2MzRhYjlmIGRybS9pOTE1OiBzdG9wIGNvbmZsYXRp
bmcgSEFTX0RJU1BMQVkoKSBhbmQgZGlzYWJsZWQgZGlzcGxheQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
