Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 411C2D12FB
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 17:38:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 193606E9E5;
	Wed,  9 Oct 2019 15:38:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F65A6E9E5;
 Wed,  9 Oct 2019 15:38:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 08:38:03 -0700
X-IronPort-AV: E=Sophos;i="5.67,276,1566889200"; d="scan'208";a="196950083"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 08:37:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed,  9 Oct 2019 18:37:30 +0300
Message-Id: <9c955d574206a43bb99f8d79df45fad3819f3bd7.1570635293.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1570635293.git.jani.nikula@intel.com>
References: <cover.1570635293.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 3/8] drm/amdgpu: use drm_debug_enabled() to
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
Cc: jani.nikula@intel.com, Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 amd-gfx@lists.freedesktop.org, David Zhou <David1.Zhou@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxsb3cgYmV0dGVyIGFic3RyYWN0aW9uIG9mIHRoZSBkcm1fZGVidWcgZ2xvYmFsIHZhcmlhYmxl
IGluIHRoZQpmdXR1cmUuIE5vIGZ1bmN0aW9uYWwgY2hhbmdlcy4KCkNjOiBBbGV4IERldWNoZXIg
PGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+CkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+CkNjOiBEYXZpZCAoQ2h1bk1pbmcpIFpob3UgPERhdmlkMS5aaG91
QGFtZC5jb20+CkNjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpBY2tlZC1ieTogQWxl
eCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPgpTaWduZWQtb2ZmLWJ5OiBKYW5p
IE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L3NtdV92MTFfMF9pMmMuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9zbXVfdjExXzBfaTJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zbXVf
djExXzBfaTJjLmMKaW5kZXggYzQ0NzIzYzI2N2M5Li5jOTAyZjI2Y2Y1MGQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NtdV92MTFfMF9pMmMuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9zbXVfdjExXzBfaTJjLmMKQEAgLTIzNCw3ICsyMzQsNyBAQCBz
dGF0aWMgdWludDMyX3Qgc211X3YxMV8wX2kyY190cmFuc21pdChzdHJ1Y3QgaTJjX2FkYXB0ZXIg
KmNvbnRyb2wsCiAJRFJNX0RFQlVHX0RSSVZFUigiSTJDX1RyYW5zbWl0KCksIGFkZHJlc3MgPSAl
eCwgYnl0ZXMgPSAlZCAsIGRhdGE6ICIsCiAJCSAodWludDE2X3QpYWRkcmVzcywgbnVtYnl0ZXMp
OwogCi0JaWYgKGRybV9kZWJ1ZyAmIERSTV9VVF9EUklWRVIpIHsKKwlpZiAoZHJtX2RlYnVnX2Vu
YWJsZWQoRFJNX1VUX0RSSVZFUikpIHsKIAkJcHJpbnRfaGV4X2R1bXAoS0VSTl9JTkZPLCAiZGF0
YTogIiwgRFVNUF9QUkVGSVhfTk9ORSwKIAkJCSAgICAgICAxNiwgMSwgZGF0YSwgbnVtYnl0ZXMs
IGZhbHNlKTsKIAl9CkBAIC0zODgsNyArMzg4LDcgQEAgc3RhdGljIHVpbnQzMl90IHNtdV92MTFf
MF9pMmNfcmVjZWl2ZShzdHJ1Y3QgaTJjX2FkYXB0ZXIgKmNvbnRyb2wsCiAJRFJNX0RFQlVHX0RS
SVZFUigiSTJDX1JlY2VpdmUoKSwgYWRkcmVzcyA9ICV4LCBieXRlcyA9ICVkLCBkYXRhIDoiLAog
CQkgICh1aW50MTZfdClhZGRyZXNzLCBieXRlc19yZWNlaXZlZCk7CiAKLQlpZiAoZHJtX2RlYnVn
ICYgRFJNX1VUX0RSSVZFUikgeworCWlmIChkcm1fZGVidWdfZW5hYmxlZChEUk1fVVRfRFJJVkVS
KSkgewogCQlwcmludF9oZXhfZHVtcChLRVJOX0lORk8sICJkYXRhOiAiLCBEVU1QX1BSRUZJWF9O
T05FLAogCQkJICAgICAgIDE2LCAxLCBkYXRhLCBieXRlc19yZWNlaXZlZCwgZmFsc2UpOwogCX0K
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
