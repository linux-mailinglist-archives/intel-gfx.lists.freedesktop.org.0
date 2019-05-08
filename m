Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B902917928
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 14:11:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02AC38991D;
	Wed,  8 May 2019 12:11:25 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA70E89919;
 Wed,  8 May 2019 12:11:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 05:11:21 -0700
X-ExtLoop1: 1
Received: from jzapadkx-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.0.159])
 by fmsmga008.fm.intel.com with ESMTP; 08 May 2019 05:11:20 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed,  8 May 2019 13:10:53 +0100
Message-Id: <20190508121058.27038-17-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190508121058.27038-1-tvrtko.ursulin@linux.intel.com>
References: <20190508121058.27038-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 16/21] gem_wsim: Some more example
 workloads
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkEgZmV3IGFk
ZGl0aW9uYWwgd29ya2xvYWRzIHVzZWZ1bCBmb3IgZXhwZXJpbWVudGluZyB3aXRoIHNjaGVkdWxp
bmcuCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwu
Y29tPgotLS0KIGJlbmNobWFya3Mvd3NpbS9mcmFtZS1zcGxpdC02MGZwcy53c2ltICAgICAgfCAx
NiArKysrKysrKysrKysrKysrCiBiZW5jaG1hcmtzL3dzaW0vaGlnaC1jb21wb3NpdGVkLWdhbWUu
d3NpbSAgIHwgMTEgKysrKysrKysrKysKIGJlbmNobWFya3Mvd3NpbS9tZWRpYS0xMDgwcC1wbGF5
ZXIud3NpbSAgICAgfCAgNSArKysrKwogYmVuY2htYXJrcy93c2ltL21lZGl1bS1jb21wb3NpdGVk
LWdhbWUud3NpbSB8ICA5ICsrKysrKysrKwogNCBmaWxlcyBjaGFuZ2VkLCA0MSBpbnNlcnRpb25z
KCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgYmVuY2htYXJrcy93c2ltL2ZyYW1lLXNwbGl0LTYwZnBz
LndzaW0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBiZW5jaG1hcmtzL3dzaW0vaGlnaC1jb21wb3NpdGVk
LWdhbWUud3NpbQogY3JlYXRlIG1vZGUgMTAwNjQ0IGJlbmNobWFya3Mvd3NpbS9tZWRpYS0xMDgw
cC1wbGF5ZXIud3NpbQogY3JlYXRlIG1vZGUgMTAwNjQ0IGJlbmNobWFya3Mvd3NpbS9tZWRpdW0t
Y29tcG9zaXRlZC1nYW1lLndzaW0KCmRpZmYgLS1naXQgYS9iZW5jaG1hcmtzL3dzaW0vZnJhbWUt
c3BsaXQtNjBmcHMud3NpbSBiL2JlbmNobWFya3Mvd3NpbS9mcmFtZS1zcGxpdC02MGZwcy53c2lt
Cm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uY2ZiZmNkMzliZTdkCi0t
LSAvZGV2L251bGwKKysrIGIvYmVuY2htYXJrcy93c2ltL2ZyYW1lLXNwbGl0LTYwZnBzLndzaW0K
QEAgLTAsMCArMSwxNiBAQAorWC4xLjAKK00uMS5WQ1MxCitCLjEKK1guMi4wCitNLjIuVkNTMgor
Qi4yCitiLjIuMS5WQ1MxCitmCisxLkRFRkFVTFQuNDAwMC02MDAwLmYtMS4wCisyLkRFRkFVTFQu
NDAwMC02MDAwLnMtMS4wCithLi0zCiszLlJDUy4yMDAwLTQwMDAuLTMvLTIuMAorMy5WRUNTLjIw
MDAuLTEuMAorNC5CQ1MuMTAwMC4tMS4wCitzLi0yCitwLjE2NjY3CmRpZmYgLS1naXQgYS9iZW5j
aG1hcmtzL3dzaW0vaGlnaC1jb21wb3NpdGVkLWdhbWUud3NpbSBiL2JlbmNobWFya3Mvd3NpbS9o
aWdoLWNvbXBvc2l0ZWQtZ2FtZS53c2ltCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAw
MDAwMDAwMC4uYTkwYTJiMmJlOTViCi0tLSAvZGV2L251bGwKKysrIGIvYmVuY2htYXJrcy93c2lt
L2hpZ2gtY29tcG9zaXRlZC1nYW1lLndzaW0KQEAgLTAsMCArMSwxMSBAQAorMS5SQ1MuNTAwLjAu
MAorMS5SQ1MuMjAwMC4wLjAKKzEuUkNTLjIwMDAuMC4wCisxLlJDUy4yMDAwLjAuMAorMS5SQ1Mu
MjAwMC4wLjAKKzEuUkNTLjIwMDAuMC4wCisxLlJDUy4yMDAwLjAuMAorUC4yLjEKKzIuQkNTLjEw
MDAuLTIuMAorMi5SQ1MuMjAwMC4tMS4xCitwLjE2NjY3CmRpZmYgLS1naXQgYS9iZW5jaG1hcmtz
L3dzaW0vbWVkaWEtMTA4MHAtcGxheWVyLndzaW0gYi9iZW5jaG1hcmtzL3dzaW0vbWVkaWEtMTA4
MHAtcGxheWVyLndzaW0KbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi5i
Y2JiMGNmZDJhZDMKLS0tIC9kZXYvbnVsbAorKysgYi9iZW5jaG1hcmtzL3dzaW0vbWVkaWEtMTA4
MHAtcGxheWVyLndzaW0KQEAgLTAsMCArMSw1IEBACisxLlZDUy41MDAwLTEwMDAwLjAuMAorMi5S
Q1MuMTAwMC0yMDAwLi0xLjAKK1AuMy4xCiszLkJDUy4xMDAwLi0yLjAKK3AuMTY2NjcKZGlmZiAt
LWdpdCBhL2JlbmNobWFya3Mvd3NpbS9tZWRpdW0tY29tcG9zaXRlZC1nYW1lLndzaW0gYi9iZW5j
aG1hcmtzL3dzaW0vbWVkaXVtLWNvbXBvc2l0ZWQtZ2FtZS53c2ltCm5ldyBmaWxlIG1vZGUgMTAw
NjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uNTgwODgzNTE2MTY4Ci0tLSAvZGV2L251bGwKKysrIGIv
YmVuY2htYXJrcy93c2ltL21lZGl1bS1jb21wb3NpdGVkLWdhbWUud3NpbQpAQCAtMCwwICsxLDkg
QEAKKzEuUkNTLjEwMDAtMjAwMC4wLjAKKzEuUkNTLjEwMDAtMjAwMC4wLjAKKzEuUkNTLjEwMDAt
MjAwMC4wLjAKKzEuUkNTLjEwMDAtMjAwMC4wLjAKKzEuUkNTLjEwMDAtMjAwMC4wLjAKK1AuMi4x
CisyLkJDUy4xMDAwLi0yLjAKKzIuUkNTLjIwMDAuLTEuMQorcC4xNjY2NwotLSAKMi4xOS4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
