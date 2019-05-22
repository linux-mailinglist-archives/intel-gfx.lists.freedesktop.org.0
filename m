Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C027E2677E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 17:57:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D88B89C28;
	Wed, 22 May 2019 15:57:38 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8430A89C14;
 Wed, 22 May 2019 15:57:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 08:57:36 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by fmsmga005.fm.intel.com with ESMTP; 22 May 2019 08:57:35 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 22 May 2019 16:57:11 +0100
Message-Id: <20190522155720.28723-7-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190522155720.28723-1-tvrtko.ursulin@linux.intel.com>
References: <20190522155720.28723-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 06/15] gem_wsim: Some more example
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
Y29tPgpBY2tlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0t
LQogYmVuY2htYXJrcy93c2ltL2ZyYW1lLXNwbGl0LTYwZnBzLndzaW0gICAgICB8IDE2ICsrKysr
KysrKysrKysrKysKIGJlbmNobWFya3Mvd3NpbS9oaWdoLWNvbXBvc2l0ZWQtZ2FtZS53c2ltICAg
fCAxMSArKysrKysrKysrKwogYmVuY2htYXJrcy93c2ltL21lZGlhLTEwODBwLXBsYXllci53c2lt
ICAgICB8ICA1ICsrKysrCiBiZW5jaG1hcmtzL3dzaW0vbWVkaXVtLWNvbXBvc2l0ZWQtZ2FtZS53
c2ltIHwgIDkgKysrKysrKysrCiA0IGZpbGVzIGNoYW5nZWQsIDQxIGluc2VydGlvbnMoKykKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBiZW5jaG1hcmtzL3dzaW0vZnJhbWUtc3BsaXQtNjBmcHMud3NpbQog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGJlbmNobWFya3Mvd3NpbS9oaWdoLWNvbXBvc2l0ZWQtZ2FtZS53
c2ltCiBjcmVhdGUgbW9kZSAxMDA2NDQgYmVuY2htYXJrcy93c2ltL21lZGlhLTEwODBwLXBsYXll
ci53c2ltCiBjcmVhdGUgbW9kZSAxMDA2NDQgYmVuY2htYXJrcy93c2ltL21lZGl1bS1jb21wb3Np
dGVkLWdhbWUud3NpbQoKZGlmZiAtLWdpdCBhL2JlbmNobWFya3Mvd3NpbS9mcmFtZS1zcGxpdC02
MGZwcy53c2ltIGIvYmVuY2htYXJrcy93c2ltL2ZyYW1lLXNwbGl0LTYwZnBzLndzaW0KbmV3IGZp
bGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4yMGZkY2Y4YzhiNGEKLS0tIC9kZXYv
bnVsbAorKysgYi9iZW5jaG1hcmtzL3dzaW0vZnJhbWUtc3BsaXQtNjBmcHMud3NpbQpAQCAtMCww
ICsxLDE2IEBACitYLjEuMAorTS4xLlZDUzEKK0IuMQorWC4yLjAKK00uMi5WQ1MyCitCLjIKK2Iu
Mi5WQ1MyLlZDUzEKK2YKKzEuREVGQVVMVC40MDAwLTYwMDAuZi0xLjAKKzIuREVGQVVMVC40MDAw
LTYwMDAucy0xLjAKK2EuLTMKKzMuUkNTLjIwMDAtNDAwMC4tMy8tMi4wCiszLlZFQ1MuMjAwMC4t
MS4wCis0LkJDUy4xMDAwLi0xLjAKK3MuLTIKK3AuMTY2NjcKZGlmZiAtLWdpdCBhL2JlbmNobWFy
a3Mvd3NpbS9oaWdoLWNvbXBvc2l0ZWQtZ2FtZS53c2ltIGIvYmVuY2htYXJrcy93c2ltL2hpZ2gt
Y29tcG9zaXRlZC1nYW1lLndzaW0KbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAw
MDAwLi5hOTBhMmIyYmU5NWIKLS0tIC9kZXYvbnVsbAorKysgYi9iZW5jaG1hcmtzL3dzaW0vaGln
aC1jb21wb3NpdGVkLWdhbWUud3NpbQpAQCAtMCwwICsxLDExIEBACisxLlJDUy41MDAuMC4wCisx
LlJDUy4yMDAwLjAuMAorMS5SQ1MuMjAwMC4wLjAKKzEuUkNTLjIwMDAuMC4wCisxLlJDUy4yMDAw
LjAuMAorMS5SQ1MuMjAwMC4wLjAKKzEuUkNTLjIwMDAuMC4wCitQLjIuMQorMi5CQ1MuMTAwMC4t
Mi4wCisyLlJDUy4yMDAwLi0xLjEKK3AuMTY2NjcKZGlmZiAtLWdpdCBhL2JlbmNobWFya3Mvd3Np
bS9tZWRpYS0xMDgwcC1wbGF5ZXIud3NpbSBiL2JlbmNobWFya3Mvd3NpbS9tZWRpYS0xMDgwcC1w
bGF5ZXIud3NpbQpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmJjYmIw
Y2ZkMmFkMwotLS0gL2Rldi9udWxsCisrKyBiL2JlbmNobWFya3Mvd3NpbS9tZWRpYS0xMDgwcC1w
bGF5ZXIud3NpbQpAQCAtMCwwICsxLDUgQEAKKzEuVkNTLjUwMDAtMTAwMDAuMC4wCisyLlJDUy4x
MDAwLTIwMDAuLTEuMAorUC4zLjEKKzMuQkNTLjEwMDAuLTIuMAorcC4xNjY2NwpkaWZmIC0tZ2l0
IGEvYmVuY2htYXJrcy93c2ltL21lZGl1bS1jb21wb3NpdGVkLWdhbWUud3NpbSBiL2JlbmNobWFy
a3Mvd3NpbS9tZWRpdW0tY29tcG9zaXRlZC1nYW1lLndzaW0KbmV3IGZpbGUgbW9kZSAxMDA2NDQK
aW5kZXggMDAwMDAwMDAwMDAwLi41ODA4ODM1MTYxNjgKLS0tIC9kZXYvbnVsbAorKysgYi9iZW5j
aG1hcmtzL3dzaW0vbWVkaXVtLWNvbXBvc2l0ZWQtZ2FtZS53c2ltCkBAIC0wLDAgKzEsOSBAQAor
MS5SQ1MuMTAwMC0yMDAwLjAuMAorMS5SQ1MuMTAwMC0yMDAwLjAuMAorMS5SQ1MuMTAwMC0yMDAw
LjAuMAorMS5SQ1MuMTAwMC0yMDAwLjAuMAorMS5SQ1MuMTAwMC0yMDAwLjAuMAorUC4yLjEKKzIu
QkNTLjEwMDAuLTIuMAorMi5SQ1MuMjAwMC4tMS4xCitwLjE2NjY3Ci0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
