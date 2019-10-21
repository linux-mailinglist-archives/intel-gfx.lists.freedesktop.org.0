Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DFBDF890
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 01:20:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 343716E2D6;
	Mon, 21 Oct 2019 23:20:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D69166E2D8;
 Mon, 21 Oct 2019 23:20:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CFFB7A0134;
 Mon, 21 Oct 2019 23:20:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Mon, 21 Oct 2019 23:20:54 -0000
Message-ID: <20191021232054.5727.91072@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191021225249.33269-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20191021225249.33269-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5Bv2=2C1/2=5D_drm/i915/perf=3A_Add_hel?=
 =?utf-8?q?per_macros_for_comparing_with_whitelisted_registers?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3YyLDEv
Ml0gZHJtL2k5MTUvcGVyZjogQWRkIGhlbHBlciBtYWNyb3MgZm9yIGNvbXBhcmluZyB3aXRoIHdo
aXRlbGlzdGVkIHJlZ2lzdGVycwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9zZXJpZXMvNjgzNTEvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0g
Y2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAozOTAxYjQwNzUxMzIgZHJtL2k5MTUvcGVyZjogQWRk
IGhlbHBlciBtYWNyb3MgZm9yIGNvbXBhcmluZyB3aXRoIHdoaXRlbGlzdGVkIHJlZ2lzdGVycwot
OjIxOiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdhZGRyJyAt
IHBvc3NpYmxlIHNpZGUtZWZmZWN0cz8KIzIxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BlcmYuYzozNTE4OgorI2RlZmluZSBBRERSX0lOX1JBTkdFKGFkZHIsIHN0YXJ0LCBlbmQp
IFwKKwkoKGFkZHIpID49IChzdGFydCkgJiYgXAorCSAoYWRkcikgPD0gKGVuZCkpCgotOjI1OiBD
SEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdhZGRyJyAtIHBvc3Np
YmxlIHNpZGUtZWZmZWN0cz8KIzI1OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bl
cmYuYzozNTIyOgorI2RlZmluZSBSRUdfSU5fUkFOR0UoYWRkciwgc3RhcnQsIGVuZCkgXAorCSgo
YWRkcikgPj0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoc3RhcnQpICYmIFwKKwkgKGFkZHIpIDw9IGk5
MTVfbW1pb19yZWdfb2Zmc2V0KGVuZCkpCgp0b3RhbDogMCBlcnJvcnMsIDAgd2FybmluZ3MsIDIg
Y2hlY2tzLCA5OCBsaW5lcyBjaGVja2VkCmU5MzUwOWQ0ZGE3NCBkcm0vaTkxNS90Z2w6IEFkZCBw
ZXJmIHN1cHBvcnQgb24gVEdMCi06NDQ2OiBDSEVDSzpDT01QQVJJU09OX1RPX05VTEw6IENvbXBh
cmlzb24gdG8gTlVMTCBjb3VsZCBiZSB3cml0dGVuICJvYV9jb25maWciCiM0NDY6IEZJTEU6IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jOjI0NzA6CisJCQkJCSAgICBvYV9jb25maWcg
IT0gTlVMTCk7CgotOjgyNTogV0FSTklORzpGSUxFX1BBVEhfQ0hBTkdFUzogYWRkZWQsIG1vdmVk
IG9yIGRlbGV0ZWQgZmlsZShzKSwgZG9lcyBNQUlOVEFJTkVSUyBuZWVkIHVwZGF0aW5nPwojODI1
OiAKbmV3IGZpbGUgbW9kZSAxMDA2NDQKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMSBj
aGVja3MsIDg2MSBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
