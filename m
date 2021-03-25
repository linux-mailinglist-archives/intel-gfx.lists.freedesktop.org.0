Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CA0349BE0
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 22:48:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E4A06EE59;
	Thu, 25 Mar 2021 21:48:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A49C6EE5E
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 21:48:34 +0000 (UTC)
IronPort-SDR: w7fRQ44XJukjiubW6oo9qRLCPawKfWeyOEh+vBOJppeRZ7Igp4v3cbrc2YUgL+Ng9GudiYD+iR
 Sc5GbD6fbysg==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="171005087"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="171005087"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:48:33 -0700
IronPort-SDR: LDgwPXeF698gdIAeLyVwOS6Q4lZZMZHBl8LhiJa1ZT7BRtHOjBy96xeD8mFbDHQHKsjB/nkrv9
 Hhdm9u6U1q8g==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="375235693"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:48:32 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 23:48:00 +0200
Message-Id: <20210325214808.2071517-18-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210325214808.2071517-1-imre.deak@intel.com>
References: <20210325214808.2071517-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 17/25] drm/i915: Store the normal view FB
 pitch in FB's intel_fb_view
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

SW5zdGVhZCBvZiBzcGVjaWFsIGNhc2luZyBnZXR0aW5nIHRoZSBwaXRjaCBmb3IgdGhlIG5vcm1h
bCB2aWV3LCBzdG9yZQppdCBkdXJpbmcgRkIgY3JlYXRpb24gdG8gdGhlIEZCIG5vcm1hbCB2aWV3
IHN0cnVjdCBhbmQgcmV0cml2ZSBpdCBmcm9tCnRoZXJlIGR1cmluZyBhdG9taWMgY2hlY2ssIGFz
IGl0J3MgZG9uZSBmb3IgdGhlIHJvdGF0ZWQgdmlldy4gQQpmb2xsb3ctdXAgcGF0Y2ggZG9lcyB0
aGUgc2FtZSBmb3IgYSBuZXcgRkIgcmVtYXBwZWQgdmlldy4KCkNjOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsg
PGltcmUuZGVha0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mYi5jIHwgOSArKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyks
IDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYi5jCmlu
ZGV4IGIyMjNlMTZlYjZhMjIuLjMxZmQ4NDgwZjcwN2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiLmMKQEAgLTQ4NCwxMiArNDg0LDE0IEBAIHN0YXRpYyBib29sIGludGVs
X3BsYW5lX2Nhbl9yZW1hcChjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0
YXRlKQogCXJldHVybiB0cnVlOwogfQogCi1pbnQgaW50ZWxfZmJfcGl0Y2goY29uc3Qgc3RydWN0
IGRybV9mcmFtZWJ1ZmZlciAqZmIsIGludCBjb2xvcl9wbGFuZSwgdW5zaWduZWQgaW50IHJvdGF0
aW9uKQoraW50IGludGVsX2ZiX3BpdGNoKGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmRy
bV9mYiwgaW50IGNvbG9yX3BsYW5lLCB1bnNpZ25lZCBpbnQgcm90YXRpb24pCiB7CisJc3RydWN0
IGludGVsX2ZyYW1lYnVmZmVyICpmYiA9IHRvX2ludGVsX2ZyYW1lYnVmZmVyKGRybV9mYik7CisK
IAlpZiAoZHJtX3JvdGF0aW9uXzkwX29yXzI3MChyb3RhdGlvbikpCi0JCXJldHVybiB0b19pbnRl
bF9mcmFtZWJ1ZmZlcihmYiktPnJvdGF0ZWRfdmlldy5jb2xvcl9wbGFuZVtjb2xvcl9wbGFuZV0u
cGl0Y2g7CisJCXJldHVybiBmYi0+cm90YXRlZF92aWV3LmNvbG9yX3BsYW5lW2NvbG9yX3BsYW5l
XS5waXRjaDsKIAllbHNlCi0JCXJldHVybiBmYi0+cGl0Y2hlc1tjb2xvcl9wbGFuZV07CisJCXJl
dHVybiBmYi0+bm9ybWFsX3ZpZXcuY29sb3JfcGxhbmVbY29sb3JfcGxhbmVdLnBpdGNoOwogfQog
CiBzdGF0aWMgYm9vbCBpbnRlbF9wbGFuZV9uZWVkc19yZW1hcChjb25zdCBzdHJ1Y3QgaW50ZWxf
cGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQpAQCAtNzQ0LDYgKzc0Niw3IEBAIGludCBpbnRlbF9m
aWxsX2ZiX2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHN0cnVjdCBkcm1fZnJh
bWVidWZmZXIgKmZiCiAJCSAqLwogCQlpbnRlbF9mYi0+bm9ybWFsX3ZpZXcuY29sb3JfcGxhbmVb
aV0ueCA9IHg7CiAJCWludGVsX2ZiLT5ub3JtYWxfdmlldy5jb2xvcl9wbGFuZVtpXS55ID0geTsK
KwkJaW50ZWxfZmItPm5vcm1hbF92aWV3LmNvbG9yX3BsYW5lW2ldLnBpdGNoID0gaW50ZWxfZmIt
PmJhc2UucGl0Y2hlc1tpXTsKIAogCQlvZmZzZXQgPSBjYWxjX3BsYW5lX2FsaWduZWRfb2Zmc2V0
KGludGVsX2ZiLCBpLCAmeCwgJnkpOwogCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
