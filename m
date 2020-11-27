Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C38D2C64C2
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 13:10:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 148326EC89;
	Fri, 27 Nov 2020 12:09:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 237F189F6B;
 Fri, 27 Nov 2020 12:09:32 +0000 (UTC)
IronPort-SDR: WauYSzbx0pAJ7AxztcbV6a/HOKws82cHqi/39Zf5ky+FYhdxA74Pw1tYm1CKJOLNTY/LGtipAX
 BrXNSgsfYocg==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="172540682"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="172540682"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:09:32 -0800
IronPort-SDR: mrh5ZE+y3KBOI8t5/Y+gskefZ0ilZ6TpgIpLLe2kAdkLJuWH4EA/98ncKfRn9BrVjtwCQzF5pz
 +QSVff948w/g==
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="548028988"
Received: from mjgleeso-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.251.85.2])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:09:30 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 12:05:44 +0000
Message-Id: <20201127120718.454037-69-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201127120718.454037-1-matthew.auld@intel.com>
References: <20201127120718.454037-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 068/162] drm/i915/selftests: Prepare cs
 engine tests for obj->mm.lock removal
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
Cc: dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNv
bT4KClNhbWUgYXMgb3RoZXIgdGVzdHMsIHVzZSBwaW5fbWFwX3VubG9ja2VkLgoKU2lnbmVkLW9m
Zi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNv
bT4KQ2M6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9lbmdpbmVfY3MuYyB8IDQg
KystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9lbmdpbmVfY3MuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9jcy5jCmluZGV4IDcyOWMz
YzdiMTFlMi4uODUzZDFmMDIxMzFhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9zZWxmdGVzdF9lbmdpbmVfY3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxm
dGVzdF9lbmdpbmVfY3MuYwpAQCAtNzIsNyArNzIsNyBAQCBzdGF0aWMgc3RydWN0IGk5MTVfdm1h
ICpjcmVhdGVfZW1wdHlfYmF0Y2goc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQogCWlmIChJU19F
UlIob2JqKSkKIAkJcmV0dXJuIEVSUl9DQVNUKG9iaik7CiAKLQljcyA9IGk5MTVfZ2VtX29iamVj
dF9waW5fbWFwKG9iaiwgSTkxNV9NQVBfV0IpOworCWNzID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9t
YXBfdW5sb2NrZWQob2JqLCBJOTE1X01BUF9XQik7CiAJaWYgKElTX0VSUihjcykpIHsKIAkJZXJy
ID0gUFRSX0VSUihjcyk7CiAJCWdvdG8gZXJyX3B1dDsKQEAgLTIwOCw3ICsyMDgsNyBAQCBzdGF0
aWMgc3RydWN0IGk5MTVfdm1hICpjcmVhdGVfbm9wX2JhdGNoKHN0cnVjdCBpbnRlbF9jb250ZXh0
ICpjZSkKIAlpZiAoSVNfRVJSKG9iaikpCiAJCXJldHVybiBFUlJfQ0FTVChvYmopOwogCi0JY3Mg
PSBpOTE1X2dlbV9vYmplY3RfcGluX21hcChvYmosIEk5MTVfTUFQX1dCKTsKKwljcyA9IGk5MTVf
Z2VtX29iamVjdF9waW5fbWFwX3VubG9ja2VkKG9iaiwgSTkxNV9NQVBfV0IpOwogCWlmIChJU19F
UlIoY3MpKSB7CiAJCWVyciA9IFBUUl9FUlIoY3MpOwogCQlnb3RvIGVycl9wdXQ7Ci0tIAoyLjI2
LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
