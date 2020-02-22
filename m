Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F66168BF5
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 03:07:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 740416F5B1;
	Sat, 22 Feb 2020 02:07:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D68226F5AA
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 02:07:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 18:07:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,470,1574150400"; d="scan'208";a="409315540"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.221])
 by orsmga005.jf.intel.com with ESMTP; 21 Feb 2020 18:07:33 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Feb 2020 18:08:13 -0800
Message-Id: <20200222020815.50599-6-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200222020815.50599-1-jose.souza@intel.com>
References: <20200222020815.50599-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/8] drm/i915/tgl: Add note to Wa_1607297627
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIG5vdGUgYWJvdXQgdGhlIGNvbmZsaXRpbmcgaW5mb3JtYXRpb24gaW4gQlNwZWMgYWJvdXQg
dGhpcyBXQS4KCkJTcGVjOiA1Mjg5MApTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNv
dXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF93b3JrYXJvdW5kcy5jIHwgMTAgKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYwppbmRleCA5NzhhNWIwNTFjZTkuLmJjNTAyNWM4MWM0ZiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCkBAIC0xMzQ0LDkgKzEz
NDQsMTMgQEAgcmNzX2VuZ2luZV93YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQogCQkJICAgIEdFTjlfQ1RYX1BSRUVNUFRfUkVH
LAogCQkJICAgIEdFTjEyX0RJU0FCTEVfUE9TSF9CVVNZX0ZGX0RPUF9DRyk7CiAKLQkJLyogV2Ff
MTYwNzAzMDMxNzp0Z2wgKi8KLQkJLyogV2FfMTYwNzE4NjUwMDp0Z2wgKi8KLQkJLyogV2FfMTYw
NzI5NzYyNzp0Z2wgKi8KKwkJLyoKKwkJICogV2FfMTYwNzAzMDMxNzp0Z2wKKwkJICogV2FfMTYw
NzE4NjUwMDp0Z2wKKwkJICogV2FfMTYwNzI5NzYyNzp0Z2wgdGhlcmUgaXMgMyBlbnRyaWVzIGZv
ciB0aGlzIFdBIG9uIEJTcGVjLCAyCisJCSAqIG9mIHRoZW4gc2F5cyBpdCBpcyBmaXhlZCBvbiBC
MCB0aGUgb3RoZXIgb25lIHNheXMgaXQgaXMKKwkJICogcGVybWFuZW50CisJCSAqLwogCQl3YV9t
YXNrZWRfZW4od2FsLAogCQkJICAgICBHRU42X1JDX1NMRUVQX1BTTUlfQ09OVFJPTCwKIAkJCSAg
ICAgR0VOMTJfV0FJVF9GT1JfRVZFTlRfUE9XRVJfRE9XTl9ESVNBQkxFIHwKLS0gCjIuMjUuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
