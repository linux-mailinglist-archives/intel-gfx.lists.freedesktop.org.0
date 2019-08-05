Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CDF8234C
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 19:00:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26F996E504;
	Mon,  5 Aug 2019 17:00:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E345A6E50B;
 Mon,  5 Aug 2019 17:00:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D9F20A0020;
 Mon,  5 Aug 2019 17:00:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Mon, 05 Aug 2019 17:00:40 -0000
Message-ID: <20190805170040.20003.12772@emeril.freedesktop.org>
References: <20190805165320.14464-1-umesh.nerlige.ramappa@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190805165320.14464-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/perf=3A_Refactor_oa_object_to_better_manage_resourc?=
 =?utf-8?b?ZXMgKHJldjQp?=
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
b2JqZWN0IHRvIGJldHRlciBtYW5hZ2UgcmVzb3VyY2VzIChyZXY0KQpVUkwgICA6IGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjAxNzYvClN0YXRlIDogd2FybmluZwoK
PT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcApmODg1YWYwY2Rk
MjMgZHJtL2k5MTUvcGVyZjogUmVmYWN0b3Igb2Egb2JqZWN0IHRvIGJldHRlciBtYW5hZ2UgcmVz
b3VyY2VzCi06ODgwOiBXQVJOSU5HOkFWT0lEX0JVRzogQXZvaWQgY3Jhc2hpbmcgdGhlIGtlcm5l
bCAtIHRyeSB1c2luZyBXQVJOX09OICYgcmVjb3ZlcnkgY29kZSByYXRoZXIgdGhhbiBCVUcoKSBv
ciBCVUdfT04oKQojODgwOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYzox
MzY4OgorCUJVR19PTihzdHJlYW0gIT0gZGV2X3ByaXYtPnBlcmYuZXhjbHVzaXZlX3N0cmVhbSk7
CgotOjE1NjM6IENIRUNLOlNQQUNJTkc6IHNwYWNlcyBwcmVmZXJyZWQgYXJvdW5kIHRoYXQgJzw8
JyAoY3R4OlZ4VikKIzE1NjM6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5j
OjM2MTk6CisJCQkJZGV2X3ByaXYtPnBlcmYuZ2VuOF92YWxpZF9jdHhfYml0ID0gKDE8PDI1KTsK
IAkJCQkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KCi06MTU3MTogQ0hF
Q0s6U1BBQ0lORzogc3BhY2VzIHByZWZlcnJlZCBhcm91bmQgdGhhdCAnPDwnIChjdHg6VnhWKQoj
MTU3MTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmM6MzYyNDoKKwkJCQlk
ZXZfcHJpdi0+cGVyZi5nZW44X3ZhbGlkX2N0eF9iaXQgPSAoMTw8MTYpOwogCQkJCSAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgoKLToxNjAxOiBDSEVDSzpTUEFDSU5HOiBz
cGFjZXMgcHJlZmVycmVkIGFyb3VuZCB0aGF0ICc8PCcgKGN0eDpWeFYpCiMxNjAxOiBGSUxFOiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYzozNjQ0OgorCQkJZGV2X3ByaXYtPnBlcmYu
Z2VuOF92YWxpZF9jdHhfYml0ID0gKDE8PDE2KTsKIAkJCSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgXgoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAzIGNoZWNrcywg
MjA3NSBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
