Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CC21157DE
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 20:43:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1F466E06B;
	Fri,  6 Dec 2019 19:43:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA72A6E06B
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 19:43:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Dec 2019 11:43:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,285,1571727600"; d="scan'208";a="219491937"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by fmsmga001.fm.intel.com with ESMTP; 06 Dec 2019 11:43:40 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>
Date: Fri,  6 Dec 2019 11:43:38 -0800
Message-Id: <20191206194339.31356-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915/perf: Allow non-privileged
 access when OA buffer is not sampled
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
Lm5lcmxpZ2UucmFtYXBwYUBpbnRlbC5jb20+CkZpeGVzOiAwMGE3ZjBkNzE1NWMgKCJkcm0vaTkx
NS90Z2w6IEFkZCBwZXJmIHN1cHBvcnQgb24gVEdMIikKUmV2aWV3ZWQtYnk6IExpb25lbCBMYW5k
d2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BlcmYuYyB8IDUgKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwppbmRleCBmMjBk
ZGE0MGIzNzguLjlmZWY3YjU3NTIwZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wZXJmLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKQEAgLTI3
MjIsNyArMjcyMiw4IEBAIHN0YXRpYyBpbnQgaTkxNV9vYV9zdHJlYW1faW5pdChzdHJ1Y3QgaTkx
NV9wZXJmX3N0cmVhbSAqc3RyZWFtLAogCQlyZXR1cm4gLUVJTlZBTDsKIAl9CiAKLQlpZiAoIShw
cm9wcy0+c2FtcGxlX2ZsYWdzICYgU0FNUExFX09BX1JFUE9SVCkpIHsKKwlpZiAoIShwcm9wcy0+
c2FtcGxlX2ZsYWdzICYgU0FNUExFX09BX1JFUE9SVCkgJiYKKwkgICAgKElOVEVMX0dFTihwZXJm
LT5pOTE1KSA8IDEyIHx8ICFzdHJlYW0tPmN0eCkpIHsKIAkJRFJNX0RFQlVHKCJPbmx5IE9BIHJl
cG9ydCBzYW1wbGluZyBzdXBwb3J0ZWRcbiIpOwogCQlyZXR1cm4gLUVJTlZBTDsKIAl9CkBAIC0y
NzU0LDcgKzI3NTUsNyBAQCBzdGF0aWMgaW50IGk5MTVfb2Ffc3RyZWFtX2luaXQoc3RydWN0IGk5
MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSwKIAogCWZvcm1hdF9zaXplID0gcGVyZi0+b2FfZm9ybWF0
c1twcm9wcy0+b2FfZm9ybWF0XS5zaXplOwogCi0Jc3RyZWFtLT5zYW1wbGVfZmxhZ3MgfD0gU0FN
UExFX09BX1JFUE9SVDsKKwlzdHJlYW0tPnNhbXBsZV9mbGFncyA9IHByb3BzLT5zYW1wbGVfZmxh
Z3M7CiAJc3RyZWFtLT5zYW1wbGVfc2l6ZSArPSBmb3JtYXRfc2l6ZTsKIAogCXN0cmVhbS0+b2Ff
YnVmZmVyLmZvcm1hdF9zaXplID0gZm9ybWF0X3NpemU7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
