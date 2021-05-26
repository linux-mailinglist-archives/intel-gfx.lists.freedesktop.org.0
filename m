Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 293243919DD
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 16:19:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DF9B6ED1E;
	Wed, 26 May 2021 14:19:54 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 490216ED1E;
 Wed, 26 May 2021 14:19:53 +0000 (UTC)
IronPort-SDR: uAhg/rF/fsKWFcuvKoyApeXwUC8X8DgSeRsZoq1HO86FwR2wquslNOm1Ms/JQkCHxj2FavhplL
 4Pk/HHdeO2SA==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="182122512"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="182122512"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 07:19:52 -0700
IronPort-SDR: 4tT9HheDhqBJDmkOfDDQalFYQAoR1R6kszn4f1FZ7Jl9zOSyNbhULiG8HyaTr5QP5fTwGmshsV
 7UF578j5QYlQ==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="444068796"
Received: from wardmich-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.209.181])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 07:19:51 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 26 May 2021 15:19:46 +0100
Message-Id: <20210526141946.2347085-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210526100006.2205062-1-tvrtko.ursulin@linux.intel.com>
References: <20210526100006.2205062-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/params: Align visibility of device
 level and global modparams
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
Cc: Jani Nikula <jani.nikula@intel.com>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCldlIGhhdmUg
YSBmZXcgbW9kcGFyYW1zIHdoaWNoIGdldCBjb25kaXRpb25hbHkgZXhwb3NlZCBiYXNlZCBvbiBh
IEtjb25maWcKb3B0aW9ucyBhbmQgaW4gbW9zdCBjYXNlcyB0aGlzIGFsc28gbWVhbnMgcG9ydGlv
bnMgb2YgdGhlIGRyaXZlcgppbXBsZW1lbnRpbmcgdGhlIHJlc3BlY3RpdmUgZmVhdHVyZSBhcmUg
YWxzbyBsZWZ0IG91dC4KCkFsaWduIHRoZSB2aXNpYmlsaXR5IG9mIGRldmljZSBsZXZlbCBhbmQg
Z2xvYmFsIG1vZHBhcmFtcyB0byBtYWtlIHRoZW0KY29uc2lzdGVudCBpbiB0aGlzIHJlc3BlY3Qu
Cgp2MjoKICogRml4IG1pc3BsYWNlZCBwYXJlbnRoZXNlcy4KClNpZ25lZC1vZmYtYnk6IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CkNjOiBKYW5pIE5pa3VsYSA8amFu
aS5uaWt1bGFAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oIHwg
OCArKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaAppbmRleCAxNGNkNjRjYzYxZDAuLjRhMTE0
YTVhZDAwMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oCkBAIC03MSwxOCArNzEsMTgg
QEAgc3RydWN0IGRybV9wcmludGVyOwogCXBhcmFtKGludCwgZmFzdGJvb3QsIC0xLCAwNjAwKSBc
CiAJcGFyYW0oaW50LCBlbmFibGVfZHBjZF9iYWNrbGlnaHQsIC0xLCAwNjAwKSBcCiAJcGFyYW0o
Y2hhciAqLCBmb3JjZV9wcm9iZSwgQ09ORklHX0RSTV9JOTE1X0ZPUkNFX1BST0JFLCAwNDAwKSBc
Ci0JcGFyYW0odW5zaWduZWQgbG9uZywgZmFrZV9sbWVtX3N0YXJ0LCAwLCAwNDAwKSBcCi0JcGFy
YW0odW5zaWduZWQgaW50LCByZXF1ZXN0X3RpbWVvdXRfbXMsIENPTkZJR19EUk1fSTkxNV9SRVFV
RVNUX1RJTUVPVVQsIDA2MDApIFwKKwlwYXJhbSh1bnNpZ25lZCBsb25nLCBmYWtlX2xtZW1fc3Rh
cnQsIDAsIElTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X1VOU1RBQkxFX0ZBS0VfTE1FTSkgPyAw
NDAwIDogMCkgXAorCXBhcmFtKHVuc2lnbmVkIGludCwgcmVxdWVzdF90aW1lb3V0X21zLCBDT05G
SUdfRFJNX0k5MTVfUkVRVUVTVF9USU1FT1VULCBDT05GSUdfRFJNX0k5MTVfUkVRVUVTVF9USU1F
T1VUID8gMDYwMCA6IDApIFwKIAkvKiBsZWF2ZSBib29scyBhdCB0aGUgZW5kIHRvIG5vdCBjcmVh
dGUgaG9sZXMgKi8gXAogCXBhcmFtKGJvb2wsIGVuYWJsZV9oYW5nY2hlY2ssIHRydWUsIDA2MDAp
IFwKIAlwYXJhbShib29sLCBsb2FkX2RldGVjdF90ZXN0LCBmYWxzZSwgMDYwMCkgXAogCXBhcmFt
KGJvb2wsIGZvcmNlX3Jlc2V0X21vZGVzZXRfdGVzdCwgZmFsc2UsIDA2MDApIFwKLQlwYXJhbShi
b29sLCBlcnJvcl9jYXB0dXJlLCB0cnVlLCAwNjAwKSBcCisJcGFyYW0oYm9vbCwgZXJyb3JfY2Fw
dHVyZSwgdHJ1ZSwgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVfQ0FQVFVSRV9FUlJPUikgPyAw
NjAwIDogMCkgXAogCXBhcmFtKGJvb2wsIGRpc2FibGVfZGlzcGxheSwgZmFsc2UsIDA0MDApIFwK
IAlwYXJhbShib29sLCB2ZXJib3NlX3N0YXRlX2NoZWNrcywgdHJ1ZSwgMCkgXAogCXBhcmFtKGJv
b2wsIG51Y2xlYXJfcGFnZWZsaXAsIGZhbHNlLCAwNDAwKSBcCiAJcGFyYW0oYm9vbCwgZW5hYmxl
X2RwX21zdCwgdHJ1ZSwgMDYwMCkgXAotCXBhcmFtKGJvb2wsIGVuYWJsZV9ndnQsIGZhbHNlLCAw
NDAwKQorCXBhcmFtKGJvb2wsIGVuYWJsZV9ndnQsIGZhbHNlLCBJU19FTkFCTEVEKENPTkZJR19E
Uk1fSTkxNV9HVlQpID8gMDQwMCA6IDApCiAKICNkZWZpbmUgTUVNQkVSKFQsIG1lbWJlciwgLi4u
KSBUIG1lbWJlcjsKIHN0cnVjdCBpOTE1X3BhcmFtcyB7Ci0tIAoyLjMwLjIKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
