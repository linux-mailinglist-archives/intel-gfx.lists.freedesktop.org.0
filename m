Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1C91251F
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 01:32:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34F71893EF;
	Thu,  2 May 2019 23:32:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2BDF2893EF;
 Thu,  2 May 2019 23:32:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2603CA00FA;
 Thu,  2 May 2019 23:32:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Thu, 02 May 2019 23:32:17 -0000
Message-ID: <20190502233217.26885.56446@emeril.freedesktop.org>
References: <20190502231315.7388-1-umesh.nerlige.ramappa@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190502231315.7388-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915/perf=3A_Refactor_oa_object_to_better_manage_resources_?=
 =?utf-8?b?KHJldjIp?=
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
b2JqZWN0IHRvIGJldHRlciBtYW5hZ2UgcmVzb3VyY2VzIChyZXYyKQpVUkwgICA6IGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjAxNzYvClN0YXRlIDogd2FybmluZwoK
PT0gU3VtbWFyeSA9PQoKJCBkaW0gc3BhcnNlIG9yaWdpbi9kcm0tdGlwClNwYXJzZSB2ZXJzaW9u
OiB2MC41LjIKQ29tbWl0OiBkcm0vaTkxNS9wZXJmOiBSZWZhY3RvciBvYSBvYmplY3QgdG8gYmV0
dGVyIG1hbmFnZSByZXNvdXJjZXMKLU86ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmM6
MTQzMDoxNTogd2FybmluZzogbWVtc2V0IHdpdGggYnl0ZSBjb3VudCBvZiAxNjc3NzIxNgotTzpk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYzoxNDg4OjE1OiB3YXJuaW5nOiBtZW1zZXQg
d2l0aCBieXRlIGNvdW50IG9mIDE2Nzc3MjE2Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bl
cmYuYzoxNDM4OjE1OiB3YXJuaW5nOiBtZW1zZXQgd2l0aCBieXRlIGNvdW50IG9mIDE2Nzc3MjE2
Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYzoxNDk3OjE1OiB3YXJuaW5nOiBtZW1z
ZXQgd2l0aCBieXRlIGNvdW50IG9mIDE2Nzc3MjE2Ci1kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxm
dGVzdHMvLi4vaTkxNV9kcnYuaDozNDQ4OjE2OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNp
emVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzLy4uL2k5MTVfZHJ2Lmg6
MzQ0MzoxNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
