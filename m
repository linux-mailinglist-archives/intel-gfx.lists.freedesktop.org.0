Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5A9BC85F
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 14:59:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83CCB89262;
	Tue, 24 Sep 2019 12:59:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F47B88AEF;
 Tue, 24 Sep 2019 12:59:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 05:59:41 -0700
X-IronPort-AV: E=Sophos;i="5.64,544,1559545200"; d="scan'208";a="340073500"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 05:59:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 24 Sep 2019 15:58:59 +0300
Message-Id: <f202f2cdd7c3176649dadeb48a6da4b208e9e829.1569329774.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1569329774.git.jani.nikula@intel.com>
References: <cover.1569329774.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 3/9] drm/etnaviv: use drm_debug_enabled() to
 check for debug categories
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 etnaviv@lists.freedesktop.org, Russell King <linux+etnaviv@armlinux.org.uk>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxsb3cgYmV0dGVyIGFic3RyYWN0aW9uIG9mIHRoZSBkcm1fZGVidWcgZ2xvYmFsIHZhcmlhYmxl
IGluIHRoZQpmdXR1cmUuIE5vIGZ1bmN0aW9uYWwgY2hhbmdlcy4KCkNjOiBMdWNhcyBTdGFjaCA8
bC5zdGFjaEBwZW5ndXRyb25peC5kZT4KQ2M6IFJ1c3NlbGwgS2luZyA8bGludXgrZXRuYXZpdkBh
cm1saW51eC5vcmcudWs+CkNjOiBDaHJpc3RpYW4gR21laW5lciA8Y2hyaXN0aWFuLmdtZWluZXJA
Z21haWwuY29tPgpDYzogZXRuYXZpdkBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQWNrZWQtYnk6IEx1
Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5p
a3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9ldG5hdml2
L2V0bmF2aXZfYnVmZmVyLmMgfCA4ICsrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9ldG5h
dml2L2V0bmF2aXZfYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2J1
ZmZlci5jCmluZGV4IDdlNGUyOTU5YmY0Zi4uMzJkOWZhYzU4N2Y5IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2J1ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9ldG5hdml2L2V0bmF2aXZfYnVmZmVyLmMKQEAgLTMyNiw3ICszMjYsNyBAQCB2b2lkIGV0bmF2
aXZfYnVmZmVyX3F1ZXVlKHN0cnVjdCBldG5hdml2X2dwdSAqZ3B1LCB1MzIgZXhlY19zdGF0ZSwK
IAogCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmdwdS0+bG9jayk7CiAKLQlpZiAoZHJtX2RlYnVnICYg
RFJNX1VUX0RSSVZFUikKKwlpZiAoZHJtX2RlYnVnX2VuYWJsZWQoRFJNX1VUX0RSSVZFUikpCiAJ
CWV0bmF2aXZfYnVmZmVyX2R1bXAoZ3B1LCBidWZmZXIsIDAsIDB4NTApOwogCiAJbGlua190YXJn
ZXQgPSBldG5hdml2X2NtZGJ1Zl9nZXRfdmEoY21kYnVmLApAQCAtNDU5LDEzICs0NTksMTMgQEAg
dm9pZCBldG5hdml2X2J1ZmZlcl9xdWV1ZShzdHJ1Y3QgZXRuYXZpdl9ncHUgKmdwdSwgdTMyIGV4
ZWNfc3RhdGUsCiAJCSBldG5hdml2X2NtZGJ1Zl9nZXRfdmEoYnVmZmVyLCAmZ3B1LT5tbXVfY29u
dGV4dC0+Y21kYnVmX21hcHBpbmcpCiAJCSArIGJ1ZmZlci0+dXNlcl9zaXplIC0gNCk7CiAKLQlp
ZiAoZHJtX2RlYnVnICYgRFJNX1VUX0RSSVZFUikKKwlpZiAoZHJtX2RlYnVnX2VuYWJsZWQoRFJN
X1VUX0RSSVZFUikpCiAJCXByX2luZm8oInN0cmVhbSBsaW5rIHRvIDB4JTA4eCBAIDB4JTA4eCAl
cFxuIiwKIAkJCXJldHVybl90YXJnZXQsCiAJCQlldG5hdml2X2NtZGJ1Zl9nZXRfdmEoY21kYnVm
LCAmZ3B1LT5tbXVfY29udGV4dC0+Y21kYnVmX21hcHBpbmcpLAogCQkJY21kYnVmLT52YWRkcik7
CiAKLQlpZiAoZHJtX2RlYnVnICYgRFJNX1VUX0RSSVZFUikgeworCWlmIChkcm1fZGVidWdfZW5h
YmxlZChEUk1fVVRfRFJJVkVSKSkgewogCQlwcmludF9oZXhfZHVtcChLRVJOX0lORk8sICJjbWQg
IiwgRFVNUF9QUkVGSVhfT0ZGU0VULCAxNiwgNCwKIAkJCSAgICAgICBjbWRidWYtPnZhZGRyLCBj
bWRidWYtPnNpemUsIDApOwogCkBAIC00ODQsNiArNDg0LDYgQEAgdm9pZCBldG5hdml2X2J1ZmZl
cl9xdWV1ZShzdHJ1Y3QgZXRuYXZpdl9ncHUgKmdwdSwgdTMyIGV4ZWNfc3RhdGUsCiAJCQkJICAg
IFZJVl9GRV9MSU5LX0hFQURFUl9QUkVGRVRDSChsaW5rX2R3b3JkcyksCiAJCQkJICAgIGxpbmtf
dGFyZ2V0KTsKIAotCWlmIChkcm1fZGVidWcgJiBEUk1fVVRfRFJJVkVSKQorCWlmIChkcm1fZGVi
dWdfZW5hYmxlZChEUk1fVVRfRFJJVkVSKSkKIAkJZXRuYXZpdl9idWZmZXJfZHVtcChncHUsIGJ1
ZmZlciwgMCwgMHg1MCk7CiB9Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
