Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D71F6BF51C
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 16:33:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D6BC6ECDC;
	Thu, 26 Sep 2019 14:33:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FBF96ECDC
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 14:33:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 07:33:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,552,1559545200"; d="scan'208";a="273407126"
Received: from akaras-dev.fi.intel.com ([10.237.72.61])
 by orsmga001.jf.intel.com with ESMTP; 26 Sep 2019 07:33:15 -0700
From: Anna Karas <anna.karas@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Sep 2019 17:32:44 +0300
Message-Id: <20190926143244.29102-1-anna.karas@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Update references to previously
 renamed files
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
Cc: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VXBkYXRlIHJlZmVyZW5jZXMgdG8gcmVzZXJ2YXRpb24uYyBhbmQgcmVzZXJ2YXRpb24uaCBzaW5j
ZSB0aGVzZSBmaWxlcwpoYXZlIGJlZW4gcmVuYW1lZCB0byBkbWEtcmVzdi5jIGFuZCBkbWEtcmVz
di5oIHJlc3BlY3RpdmVseS4KCkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+Ckxpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC8z
MjM0MDEvP3Nlcmllcz02NTAzNyZyZXY9MQpTaWduZWQtb2ZmLWJ5OiBBbm5hIEthcmFzIDxhbm5h
LmthcmFzQGludGVsLmNvbT4KLS0tCiBEb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5y
c3QgfCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3Qg
Yi9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QKaW5kZXggYjU0MWU5N2M3YWIx
Li5jNzhkYjI4NTE5ZjcgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEt
YnVmLnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QKQEAgLTEx
OCwxMyArMTE4LDEzIEBAIEtlcm5lbCBGdW5jdGlvbnMgYW5kIFN0cnVjdHVyZXMgUmVmZXJlbmNl
CiBSZXNlcnZhdGlvbiBPYmplY3RzCiAtLS0tLS0tLS0tLS0tLS0tLS0tCiAKLS4uIGtlcm5lbC1k
b2M6OiBkcml2ZXJzL2RtYS1idWYvcmVzZXJ2YXRpb24uYworLi4ga2VybmVsLWRvYzo6IGRyaXZl
cnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCiAgICA6ZG9jOiBSZXNlcnZhdGlvbiBPYmplY3QgT3ZlcnZp
ZXcKIAotLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZG1hLWJ1Zi9yZXNlcnZhdGlvbi5jCisuLiBr
ZXJuZWwtZG9jOjogZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKICAgIDpleHBvcnQ6CiAKLS4u
IGtlcm5lbC1kb2M6OiBpbmNsdWRlL2xpbnV4L3Jlc2VydmF0aW9uLmgKKy4uIGtlcm5lbC1kb2M6
OiBpbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKICAgIDppbnRlcm5hbDoKIAogRE1BIEZlbmNlcwot
LSAKMi4xOS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
