Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B44F82BE
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 23:09:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A56206E2B2;
	Mon, 11 Nov 2019 22:09:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E11116E2B2
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 22:09:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 14:09:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,294,1569308400"; d="scan'208";a="215821435"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga002.jf.intel.com with ESMTP; 11 Nov 2019 14:09:49 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2019 14:09:47 -0800
Message-Id: <20191111220948.32472-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/perf: Allow non-privileged access
 when OA buffer is not sampled
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U0FNUExFX09BX1JFUE9SVCBlbmFibGVzIHNhbXBsaW5nIG9mIE9BIHJlcG9ydHMgZnJvbSB0aGUg
T0EgYnVmZmVyLgpTaW5jZSByZXBvcnRzIGZyb20gT0EgYnVmZmVyIGhhZCBzeXN0ZW0gd2lkZSB2
aXNpYmlsaXR5LCBjb2xsZWN0aW5nCnNhbXBsZXMgZnJvbSB0aGUgT0EgYnVmZmVyIHdhcyBhIHBy
aXZpbGVnZWQgb3BlcmF0aW9uIG9uIHByZXZpb3VzCnBsYXRmb3Jtcy4gUHJpb3IgdG8gVEdMLCBp
dCB3YXMgYWxzbyBuZWNlc3NhcnkgdG8gc2FtcGxlIHRoZSBPQSBidWZmZXIKdG8gbm9ybWFsaXpl
IHJlcG9ydHMgZnJvbSBNSSBSRVBPUlQgUEVSRiBDT1VOVC4KClRHTCBoYXMgYSBkZWRpY2F0ZWQg
T0FSIHVuaXQgdG8gc2FtcGxlIHBlcmYgcmVwb3J0cyBmb3IgYSBzcGVjaWZpYwpyZW5kZXIgY29u
dGV4dC4gVGhpcyByZW1vdmVzIHRoZSBuZWNlc3NpdHkgdG8gc2FtcGxlIE9BIGJ1ZmZlci4KCi0g
SWYgbm90IHNhbXBsaW5nIHRoZSBPQSBidWZmZXIsIGFsbG93IG5vbi1wcml2aWxlZ2VkIGFjY2Vz
cy4gQW4gZWFybGllcgogIHBhdGNoIGFsbG93cyB0aGUgbm9uLXByaXZpbGVnZSBhY2Nlc3M6CiAg
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzMzNzcxNi8/c2VyaWVzPTY4
NTgyJnJldj0xCi0gQ2xlYXIgdXAgdGhlIHBhdGggZm9yIG5vbi1wcml2aWxlZ2VkIGFjY2VzcyBp
biB0aGlzIHBhdGNoCgpTaWduZWQtb2ZmLWJ5OiBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgPHVtZXNo
Lm5lcmxpZ2UucmFtYXBwYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wZXJmLmMgfCA1ICsrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKaW5kZXggNTA3MjM2YmQ0MWFlLi5i
OTIyMDAwZTRiOWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCkBAIC0yNzEzLDcgKzI3MTMs
OCBAQCBzdGF0aWMgaW50IGk5MTVfb2Ffc3RyZWFtX2luaXQoc3RydWN0IGk5MTVfcGVyZl9zdHJl
YW0gKnN0cmVhbSwKIAkJcmV0dXJuIC1FSU5WQUw7CiAJfQogCi0JaWYgKCEocHJvcHMtPnNhbXBs
ZV9mbGFncyAmIFNBTVBMRV9PQV9SRVBPUlQpKSB7CisJaWYgKCEocHJvcHMtPnNhbXBsZV9mbGFn
cyAmIFNBTVBMRV9PQV9SRVBPUlQpICYmCisJICAgIChJTlRFTF9HRU4ocGVyZi0+aTkxNSkgPCAx
MiB8fCAhc3RyZWFtLT5jdHgpKSB7CiAJCURSTV9ERUJVRygiT25seSBPQSByZXBvcnQgc2FtcGxp
bmcgc3VwcG9ydGVkXG4iKTsKIAkJcmV0dXJuIC1FSU5WQUw7CiAJfQpAQCAtMjc0NSw3ICsyNzQ2
LDcgQEAgc3RhdGljIGludCBpOTE1X29hX3N0cmVhbV9pbml0KHN0cnVjdCBpOTE1X3BlcmZfc3Ry
ZWFtICpzdHJlYW0sCiAKIAlmb3JtYXRfc2l6ZSA9IHBlcmYtPm9hX2Zvcm1hdHNbcHJvcHMtPm9h
X2Zvcm1hdF0uc2l6ZTsKIAotCXN0cmVhbS0+c2FtcGxlX2ZsYWdzIHw9IFNBTVBMRV9PQV9SRVBP
UlQ7CisJc3RyZWFtLT5zYW1wbGVfZmxhZ3MgPSBwcm9wcy0+c2FtcGxlX2ZsYWdzOwogCXN0cmVh
bS0+c2FtcGxlX3NpemUgKz0gZm9ybWF0X3NpemU7CiAKIAlzdHJlYW0tPm9hX2J1ZmZlci5mb3Jt
YXRfc2l6ZSA9IGZvcm1hdF9zaXplOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
