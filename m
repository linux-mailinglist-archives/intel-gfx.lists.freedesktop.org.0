Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAB08525D
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 19:51:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4BF38912A;
	Wed,  7 Aug 2019 17:51:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C17DA8912A;
 Wed,  7 Aug 2019 17:51:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BAD4EA0088;
 Wed,  7 Aug 2019 17:51:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Wed, 07 Aug 2019 17:51:06 -0000
Message-ID: <20190807175106.24674.2232@emeril.freedesktop.org>
References: <20190806233002.984-1-umesh.nerlige.ramappa@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190806233002.984-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915/perf=3A_Refactor_oa_object_to_better_manage_resources_?=
 =?utf-8?b?KHJldjYp?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvcGVyZjogUmVmYWN0b3Igb2Eg
b2JqZWN0IHRvIGJldHRlciBtYW5hZ2UgcmVzb3VyY2VzIChyZXY2KQpVUkwgICA6IGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjAxNzYvClN0YXRlIDogd2FybmluZwoK
PT0gU3VtbWFyeSA9PQoKJCBkaW0gc3BhcnNlIG9yaWdpbi9kcm0tdGlwClNwYXJzZSB2ZXJzaW9u
OiB2MC41LjIKQ29tbWl0OiBkcm0vaTkxNS9wZXJmOiBSZWZhY3RvciBvYSBvYmplY3QgdG8gYmV0
dGVyIG1hbmFnZSByZXNvdXJjZXMKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jOjE0
MzU6MTU6IHdhcm5pbmc6IG1lbXNldCB3aXRoIGJ5dGUgY291bnQgb2YgMTY3NzcyMTYKK2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jOjE0OTQ6MTU6IHdhcm5pbmc6IG1lbXNldCB3aXRo
IGJ5dGUgY291bnQgb2YgMTY3NzcyMTYKLU86ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJm
LmM6MTQzMDoxNTogd2FybmluZzogbWVtc2V0IHdpdGggYnl0ZSBjb3VudCBvZiAxNjc3NzIxNgot
Tzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYzoxNDg4OjE1OiB3YXJuaW5nOiBtZW1z
ZXQgd2l0aCBieXRlIGNvdW50IG9mIDE2Nzc3MjE2CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
