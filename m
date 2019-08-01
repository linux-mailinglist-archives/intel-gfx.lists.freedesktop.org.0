Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E84DF7DA81
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 13:41:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 096096E529;
	Thu,  1 Aug 2019 11:41:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FC436E524;
 Thu,  1 Aug 2019 11:41:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 04:41:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,334,1559545200"; d="scan'208";a="256622231"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by orsmga001.jf.intel.com with ESMTP; 01 Aug 2019 04:41:40 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: dri-devel <dri-devel@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Thu,  1 Aug 2019 17:11:19 +0530
Message-Id: <20190801114119.28830-7-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190801114119.28830-1-ramalingam.c@intel.com>
References: <20190801114119.28830-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v12 6/6] drm/hdcp: reference for srm file format
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
Cc: Jani Nikula <jani.nikula@intel.com>, Pekka Paalanen <ppaalanen@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gdGhlIGtlcm5lbCBkb2N1bWVudGF0aW9uLCBIRENQIHNwZWNpZmljYXRpb25zIGxpbmtzIGFy
ZSBzaGFyZWQgYXMgYQpyZWZlcmVuY2UgZm9yIFNSTSB0YWJsZSBmb3JtYXQuCgp2MjoKICBGaXhl
ZCBzbWFsbCBuaXRzLiBbU2hhc2hhbmtdCgpTaWduZWQtb2ZmLWJ5OiBSYW1hbGluZ2FtIEMgPHJh
bWFsaW5nYW0uY0BpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBTaGFzaGFuayBTaGFybWEgPHNoYXNo
YW5rLnNoYXJtYUBpbnRlbC5jb20+CkFja2VkLWJ5OiBQZWtrYSBQYWFsYW5lbiA8cGVra2EucGFh
bGFuZW5AY29sbGFib3JhLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2hkY3AuYyB8IDcg
KysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9kcm1faGRjcC5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9oZGNwLmMKaW5k
ZXggNzc0MzNlZTNkNjUyLi45MTkxNjMzYTNjNDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9kcm1faGRjcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1faGRjcC5jCkBAIC0yNzEsNiAr
MjcxLDEzIEBAIHN0YXRpYyB2b2lkIGRybV9oZGNwX3JlcXVlc3Rfc3JtKHN0cnVjdCBkcm1fZGV2
aWNlICpkcm1fZGV2KQogICoKICAqIFNSTSBzaG91bGQgYmUgcHJlc2VudGVkIGluIHRoZSBuYW1l
IG9mICJkaXNwbGF5X2hkY3Bfc3JtLmJpbiIuCiAgKgorICogRm9ybWF0IG9mIHRoZSBTUk0gdGFi
bGUsIHRoYXQgdXNlcnNwYWNlIG5lZWRzIHRvIHdyaXRlIGludG8gdGhlIGJpbmFyeSBmaWxlLAor
ICogaXMgZGVmaW5lZCBhdDoKKyAqIDEuIFJlbmV3YWJpbGl0eSBjaGFwdGVyIG9uIDU1dGggcGFn
ZSBvZiBIRENQIDEuNCBzcGVjaWZpY2F0aW9uCisgKiBodHRwczovL3d3dy5kaWdpdGFsLWNwLmNv
bS9zaXRlcy9kZWZhdWx0L2ZpbGVzL3NwZWNpZmljYXRpb25zL0hEQ1AlMjBTcGVjaWZpY2F0aW9u
JTIwUmV2MV80X1NlY3VyZS5wZGYKKyAqIDIuIFJlbmV3YWJpbGl0eSBjaGFwdGVyIG9uIDYzcmQg
cGFnZSBvZiBIRENQIDIuMiBzcGVjaWZpY2F0aW9uCisgKiBodHRwczovL3d3dy5kaWdpdGFsLWNw
LmNvbS9zaXRlcy9kZWZhdWx0L2ZpbGVzL3NwZWNpZmljYXRpb25zL0hEQ1AlMjBvbiUyMEhETUkl
MjBTcGVjaWZpY2F0aW9uJTIwUmV2Ml8yX0ZpbmFsMS5wZGYKKyAqCiAgKiBSZXR1cm5zOgogICog
VFJVRSBvbiBhbnkgb2YgdGhlIEtTViBpcyByZXZva2VkLCBlbHNlIEZBTFNFLgogICovCi0tIAoy
LjE5LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
