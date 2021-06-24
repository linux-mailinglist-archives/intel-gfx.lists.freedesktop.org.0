Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4073B2CF8
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 12:53:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DA486EB59;
	Thu, 24 Jun 2021 10:53:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 240526EB57;
 Thu, 24 Jun 2021 10:53:51 +0000 (UTC)
IronPort-SDR: ncd2qx+zflViNkzGB/AT7gaHyySQGYCtiuQv74e0i2j+bk0CJazkKJnxzyXIJEgzNAR2tAZypT
 SQwOnQtXnt+g==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="271292823"
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="271292823"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 03:53:50 -0700
IronPort-SDR: PzZzIoUyODME44ZvOWzHNBiict5S/yyV2OBfC4qEHOWDo7JMKXl2vfocXWHsQH5HIIRfYhTgcc
 ZGEiCORV8gtQ==
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="624149104"
Received: from cmutgix-mobl.gar.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.20])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 03:53:48 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 24 Jun 2021 12:53:37 +0200
Message-Id: <20210624105337.296520-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Reinstate the mmap ioctl for some
 platforms
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVpbnN0YXRlIHRoZSBtbWFwIGlvY3RsIGZvciBhbGwgY3VycmVudCBpbnRlZ3JhdGVkIHBsYXRm
b3Jtcy4KVGhlIGludGVudGlvbiB3YXMgcmVhbGx5IHRvIGhhdmUgaXQgZGlzYWJsZWQgZm9yIGRp
c2NyZXRlIGdyYXBoaWNzCndoZXJlIHdlIGVuZm9yY2UgYSBzaW5nbGUgbW1hcCBtb2RlLgoKRml4
ZXM6IDM1Y2JkOTFlYjU0MSAoImRybS9pOTE1OiBEaXNhYmxlIG1tYXAgaW9jdGwgZm9yIGdlbjEy
KyIpClNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxp
bnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1h
bi5jIHwgNyArKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAzIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9t
bWFuLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCmluZGV4IDJm
ZDE1NTc0MmJkMi4uMDliNWVkMDE4YWFmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fbW1hbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9tbWFuLmMKQEAgLTYyLDEwICs2MiwxMSBAQCBpOTE1X2dlbV9tbWFwX2lvY3RsKHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iajsKIAl1bnNpZ25lZCBsb25nIGFkZHI7CiAKLQkvKiBtbWFwIGlvY3RsIGlzIGRpc2Fs
bG93ZWQgZm9yIGFsbCBwbGF0Zm9ybXMgYWZ0ZXIgVEdMLUxQLiAgVGhpcyBhbHNvCi0JICogY292
ZXJzIGFsbCBwbGF0Zm9ybXMgd2l0aCBsb2NhbCBtZW1vcnkuCisJLyoKKwkgKiBtbWFwIGlvY3Rs
IGlzIGRpc2FsbG93ZWQgZm9yIGFsbCBkaXNjcmV0ZSBwbGF0Zm9ybXMsIGFuZCBmb3IKKwkgKiBh
bmQgZm9yIGFsbCBwbGF0Zm9ybXMgd2l0aCBHUkFQSElDU19WRVIgPiAxMi4KIAkgKi8KLQlpZiAo
R1JBUEhJQ1NfVkVSKGk5MTUpID49IDEyICYmICFJU19USUdFUkxBS0UoaTkxNSkpCisJaWYgKElT
X0RHRlgoaTkxNSkgfHwgR1JBUEhJQ1NfVkVSKGk5MTUpID4gMTIpCiAJCXJldHVybiAtRU9QTk9U
U1VQUDsKIAogCWlmIChhcmdzLT5mbGFncyAmIH4oSTkxNV9NTUFQX1dDKSkKLS0gCjIuMzEuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
