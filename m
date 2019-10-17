Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FF5DA68B
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 09:37:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBC056E9FB;
	Thu, 17 Oct 2019 07:37:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 891EB6E9FA;
 Thu, 17 Oct 2019 07:37:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 612EBA0118;
 Thu, 17 Oct 2019 07:37:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Thu, 17 Oct 2019 07:37:27 -0000
Message-ID: <20191017073727.5566.8812@emeril.freedesktop.org>
References: <20191017072009.31539-1-umesh.nerlige.ramappa@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191017072009.31539-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5Bv2=2C1/3=5D_drm/i915/perf=3A_Add_hel?=
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
M10gZHJtL2k5MTUvcGVyZjogQWRkIGhlbHBlciBtYWNyb3MgZm9yIGNvbXBhcmluZyB3aXRoIHdo
aXRlbGlzdGVkIHJlZ2lzdGVycwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9zZXJpZXMvNjgxMzEvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0g
Y2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAoxNTkwMzhiZjU4NmQgZHJtL2k5MTUvcGVyZjogQWRk
IGhlbHBlciBtYWNyb3MgZm9yIGNvbXBhcmluZyB3aXRoIHdoaXRlbGlzdGVkIHJlZ2lzdGVycwot
OjIwOiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdhZGRyJyAt
IHBvc3NpYmxlIHNpZGUtZWZmZWN0cz8KIzIwOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BlcmYuYzozNTE3OgorI2RlZmluZSBBRERSX0lOX1JBTkdFKGFkZHIsIHN0YXJ0LCBlbmQp
IFwKKwkoKGFkZHIpID49IChzdGFydCkgJiYgXAorCSAoYWRkcikgPD0gKGVuZCkpCgotOjI0OiBD
SEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdhZGRyJyAtIHBvc3Np
YmxlIHNpZGUtZWZmZWN0cz8KIzI0OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bl
cmYuYzozNTIxOgorI2RlZmluZSBSRUdfSU5fUkFOR0UoYWRkciwgc3RhcnQsIGVuZCkgXAorCSgo
YWRkcikgPj0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoc3RhcnQpICYmIFwKKwkgKGFkZHIpIDw9IGk5
MTVfbW1pb19yZWdfb2Zmc2V0KGVuZCkpCgp0b3RhbDogMCBlcnJvcnMsIDAgd2FybmluZ3MsIDIg
Y2hlY2tzLCA5OCBsaW5lcyBjaGVja2VkCjY5YmY3MDg5YjdlNyBkcm0vaTkxNS90Z2w6IEFkZCBw
ZXJmIHN1cHBvcnQgb24gVEdMCi06NzIzOiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFOR0VTOiBhZGRl
ZCwgbW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJTIG5lZWQgdXBkYXRp
bmc/CiM3MjM6IApuZXcgZmlsZSBtb2RlIDEwMDY0NAoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5p
bmdzLCAwIGNoZWNrcywgNzc1IGxpbmVzIGNoZWNrZWQKYjg5MjhkMThhZWNjIGRybS9pOTE1L3Bl
cmY6IGVuYWJsZSBPQVIgY29udGV4dCBzYXZlL3Jlc3RvcmUgb2YgcGVyZm9ybWFuY2UgY291bnRl
cnMKLTo3OTogQ0hFQ0s6Q09NUEFSSVNPTl9UT19OVUxMOiBDb21wYXJpc29uIHRvIE5VTEwgY291
bGQgYmUgd3JpdHRlbiAib2FfY29uZmlnIgojNzk6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGVyZi5jOjI0NjM6CisJcmV0ID0gZ2VuMTJfZW1pdF9vYXJfY29uZmlnKHN0cmVhbS0+
cGlubmVkX2N0eCwgb2FfY29uZmlnICE9IE5VTEwpOwoKdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5p
bmdzLCAxIGNoZWNrcywgNTggbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
