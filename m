Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED18386B24
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 22:18:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C9746EA8E;
	Mon, 17 May 2021 20:18:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3EB96EAA4
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 20:18:08 +0000 (UTC)
IronPort-SDR: uGqLmPh1A7YfiJMIjIytCj48PPR7L7MrxXtqxE7rJ4bhXx8Usr/tDwXQaUCWZr4+dGtKSjqJ6h
 AEBFp3aM3hJA==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="200605054"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="200605054"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 13:18:07 -0700
IronPort-SDR: rU7S+h4RCR5c+Y5OLeCmMFga+dTfMl87qtFCXwpZV1SFU66NSgvaraju9bVj/StYQ8cFKcNzdu
 7cX9CXjH/xQQ==
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="541456554"
Received: from luo1-mobl.ccr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.1.90])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 13:18:06 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 May 2021 13:21:17 -0700
Message-Id: <20210517202117.179303-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI] drm/i915: Initialize err in remap_io_sg()
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
Cc: Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgdGhlIGRvIHdoaWxlIGxvb3AgYnJlYWtzIGluICdpZiAoIXNnX2RtYV9sZW4oc2dsKSknIGlu
IHRoZSBmaXJzdAppdGVyYXRpb24sIGVyciBpcyB1bmluaXRpYWxpemVkIGNhdXNpbmcgYSB3cm9u
ZyBjYWxsIHRvIHphcF92bWFfcHRlcygpLgoKQnV0IHRoYXQgaXMgaW1wb3NzaWJsZSB0byBoYXBw
ZW4gYXMgYSBzY2F0dGVybGlzdCBtdXN0IGhhdmUgYXQgbGVhc3QKb25lIHZhbGlkIHNlZ21lbnQu
CkFueXdheXMgdG8gYXZvaWQgbW9yZSByZXBvcnRzIGZyb20gc3RhdGljIGNoZWNrZXJzIGluaXRp
YWxpemluZyByZXQKaGVyZS4KCkZpeGVzOiBiMTJkNjkxZWE1ZTAgKCJpOTE1OiBmaXggcmVtYXBf
aW9fc2cgdG8gdmVyaWZ5IHRoZSBwZ3Byb3QiKQpSZXZpZXdlZC1ieTogQ2hyaXN0b3BoIEhlbGx3
aWcgPGhjaEBsc3QuZGU+CkNjOiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4KU2lnbmVk
LW9mZi1ieTogSmFtZXMgQXVzbXVzIDxqYW1lcy5hdXNtdXNAaW50ZWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X21tLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X21tLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X21tLmMKaW5kZXggNGM4
Y2QwOGM2NzJkLi4yNTU3NmZhNzNmZjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfbW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X21tLmMKQEAgLTQ3LDcg
KzQ3LDcgQEAgaW50IHJlbWFwX2lvX3NnKHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLAogCQlz
dHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnbCwgcmVzb3VyY2Vfc2l6ZV90IGlvYmFzZSkKIHsKIAl1bnNp
Z25lZCBsb25nIHBmbiwgbGVuLCByZW1hcHBlZCA9IDA7Ci0JaW50IGVycjsKKwlpbnQgZXJyID0g
MDsKIAogCS8qIFdlIHJlbHkgb24gcHJldmFsaWRhdGlvbiBvZiB0aGUgaW8tbWFwcGluZyB0byBz
a2lwIHRyYWNrX3BmbigpLiAqLwogCUdFTV9CVUdfT04oKHZtYS0+dm1fZmxhZ3MgJiBFWFBFQ1RF
RF9GTEFHUykgIT0gRVhQRUNURURfRkxBR1MpOwotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
