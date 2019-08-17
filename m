Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F2A91077
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2019 15:11:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9EB66E4D4;
	Sat, 17 Aug 2019 13:11:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6C946E4CA
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Aug 2019 13:11:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Aug 2019 06:11:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,397,1559545200"; d="scan'208";a="182434670"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga006.jf.intel.com with ESMTP; 17 Aug 2019 06:11:48 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.129.244])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7HDBkfE023218; Sat, 17 Aug 2019 14:11:47 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 17 Aug 2019 13:11:42 +0000
Message-Id: <20190817131144.26884-2-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190817131144.26884-1-michal.wajdeczko@intel.com>
References: <20190817131144.26884-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/uc: Cleanup fw fetch only if it
 was successful
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

V2UgY2FuIHJlbHkgb24gZmlybXdhcmUgc3RhdHVzIEFWQUlMQUJMRSB0byBkZXRlcm1pbmUgaWYg
YW55CmZpcm13YXJlIGNsZWFudXAgaXMgcmVxdWlyZWQuIEFsc28gZG9uJ3QgdW5jb25kaXRpb25h
bGx5IHJlc2V0CmZ3IHN0YXR1cyB0byBTRUxFQ1RFRCBhcyB3ZSB3aWxsIGxvb3NlIE1JU1NJTkcv
RVJST1IgY29kZXMuCgpTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2Fq
ZGVjemtvQGludGVsLmNvbT4KQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2Vy
YW9sb3NwdXJpb0BpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jIHwg
OCArKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwppbmRleCA4OTBhZTZi
NGEzZDAuLjUyN2RlMWZkOWQ3OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfdWNfZncuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91
Y19mdy5jCkBAIC01NTksMTggKzU1OSwxNiBAQCB2b2lkIGludGVsX3VjX2Z3X2Zpbmkoc3RydWN0
IGludGVsX3VjX2Z3ICp1Y19mdykKIAogLyoqCiAgKiBpbnRlbF91Y19md19jbGVhbnVwX2ZldGNo
IC0gY2xlYW51cCB1QyBmaXJtd2FyZQotICoKICAqIEB1Y19mdzogdUMgZmlybXdhcmUKICAqCiAg
KiBDbGVhbnMgdXAgdUMgZmlybXdhcmUgYnkgcmVsZWFzaW5nIHRoZSBmaXJtd2FyZSBHRU0gb2Jq
LgogICovCiB2b2lkIGludGVsX3VjX2Z3X2NsZWFudXBfZmV0Y2goc3RydWN0IGludGVsX3VjX2Z3
ICp1Y19mdykKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOworCWlmICghaW50
ZWxfdWNfZndfaXNfYXZhaWxhYmxlKHVjX2Z3KSkKKwkJcmV0dXJuOwogCi0Jb2JqID0gZmV0Y2hf
YW5kX3plcm8oJnVjX2Z3LT5vYmopOwotCWlmIChvYmopCi0JCWk5MTVfZ2VtX29iamVjdF9wdXQo
b2JqKTsKKwlpOTE1X2dlbV9vYmplY3RfcHV0KGZldGNoX2FuZF96ZXJvKCZ1Y19mdy0+b2JqKSk7
CiAKIAlpbnRlbF91Y19md19jaGFuZ2Vfc3RhdHVzKHVjX2Z3LCBJTlRFTF9VQ19GSVJNV0FSRV9T
RUxFQ1RFRCk7CiB9Ci0tIAoyLjE5LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
