Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 524BA25232F
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Aug 2020 23:54:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94FC46E0B7;
	Tue, 25 Aug 2020 21:54:38 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F5496E0B7
 for <Intel-gfx@lists.freedesktop.org>; Tue, 25 Aug 2020 21:54:37 +0000 (UTC)
IronPort-SDR: Yw6+mJjoWN9Wq2iFCv6UfmKua1QaQhyApjke/MWiQD5piN1ONtLt2KUe+uzoBwPGz7gUd1abwv
 Nb2CFj9O9Opw==
X-IronPort-AV: E=McAfee;i="6000,8403,9724"; a="217749022"
X-IronPort-AV: E=Sophos;i="5.76,354,1592895600"; d="scan'208";a="217749022"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 14:54:36 -0700
IronPort-SDR: qMNXNzpCRecf+G0Slph48l1urKjZSjKyj/4vxoZgXWVcGZmQUL1/BGxH+s8SnEbOViHmaZL43t
 CeHW33nKYTUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,354,1592895600"; d="scan'208";a="312692330"
Received: from unknown (HELO cataylo2-MOBL1.amr.corp.intel.com)
 ([10.254.124.161])
 by orsmga002.jf.intel.com with ESMTP; 25 Aug 2020 14:54:36 -0700
From: clinton.a.taylor@intel.com
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 25 Aug 2020 14:54:34 -0700
Message-Id: <20200825215434.6009-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200805232920.15085-1-clinton.a.taylor@intel.com>
References: <20200805232920.15085-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915/gt: Implement WA_1406941453
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

RnJvbTogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KCkVuYWJsZSBI
VyBEZWZhdWx0IGZsaXAgZm9yIHNtYWxsIFBMLgoKYnNwZWM6IDUyODkwCmJzcGVjOiA1MzUwOApi
c3BlYzogNTMyNzMKCnYyOiByZWJhc2UgdG8gZHJtLXRpcAp2MzogbW92ZSBmcm9tIGN0eCB0byBn
dCB3b3JrYXJvdW5kcy4gUmVtb3ZlIHdoaXRlbGlzdC4KCkNjOiBNYXR0IEF0d29vZCA8bWF0dGhl
dy5zLmF0d29vZEBpbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50
ZWwuY29tPgpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IENsaW50IFRheWxvciA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDMgKysr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgIHwgMSArCiAyIGZp
bGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IGEzZjcyYjc1YzYxZS4uMGFlY2I5N2ZkNDFjIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKQEAgLTEyMTEsNiAr
MTIxMSw5IEBAIGdlbjEyX2d0X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUsCiAJCQkgIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKIHsKIAl3YV9pbml0X21j
cihpOTE1LCB3YWwpOworCisJLyogV2FfMTQwNjk0MTQ1MzpnZW4xMiAqLworCVdBX1NFVF9CSVRf
TUFTS0VEKEdFTjEwX1NBTVBMRVJfTU9ERSwgRU5BQkxFX1NNQUxMUEwpOwogfQogCiBzdGF0aWMg
dm9pZApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggYWM2OTE5MjdlMjlkLi5hYjRiMWFiZDQz
NjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtOTMxNSw2ICs5MzE1LDcgQEAgZW51bSB7
CiAjZGVmaW5lICAgR0VOMTFfTFNOX1VOU0xDVkNfR0FGU19IQUxGX1NGX01BWEFMTE9DCSgxIDw8
IDcpCiAKICNkZWZpbmUgR0VOMTBfU0FNUExFUl9NT0RFCQlfTU1JTygweEUxOEMpCisjZGVmaW5l
ICAgRU5BQkxFX1NNQUxMUEwJCQlSRUdfQklUKDE1KQogI2RlZmluZSAgIEdFTjExX1NBTVBMRVJf
RU5BQkxFX0hFQURMRVNTX01TRwlSRUdfQklUKDUpCiAKIC8qIElWWUJSSURHRSBEUEYgKi8KLS0g
CjIuMjguMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
