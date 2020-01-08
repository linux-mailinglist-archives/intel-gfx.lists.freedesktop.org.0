Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E64134573
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 15:56:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F4196E87C;
	Wed,  8 Jan 2020 14:56:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BBE96E87C
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 14:56:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 06:56:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,410,1571727600"; d="scan'208";a="215972872"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 08 Jan 2020 06:56:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Jan 2020 16:56:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jan 2020 16:56:16 +0200
Message-Id: <20200108145616.7349-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Pass cpu_transcoder to
 assert_pipe_disabled() always
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkkg
bWlzc2VkIGEgZmV3IGFzc2VydF9waXBlX2Rpc2FibGVkKCkgY2FzZXMgd2hlbiBjaGFuZ2luZyBp
dCB0bwp0YWtlIGVudW0gdHJhbnNjb2RlciBpbnN0ZWFkIG9mIGVudW0gcGlwZSwgbWFraW5nIHNw
YXJzZSB1bmhhcHB5LgpDb252ZXJ0IHRoZSBsZWZ0b3ZlcnMuCgpSZXBvcnRlZC1ieToga2J1aWxk
IHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgNCArKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3R2LmMgfCAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwg
MyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5k
ZXggOTkxZjM0MzU3OWVmLi43Yzc2ZDQzNzkwNmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMKQEAgLTMwODUsNyArMzA4NSw3IEBAIHN0YXRpYyB2b2lkIGlsa19lZHBf
cGxsX29uKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJc3RydWN0IGludGVsX2NydGMgKmNy
dGMgPSB0b19pbnRlbF9jcnRjKHBpcGVfY29uZmlnLT51YXBpLmNydGMpOwogCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwogCi0JYXNz
ZXJ0X3BpcGVfZGlzYWJsZWQoZGV2X3ByaXYsIGNydGMtPnBpcGUpOworCWFzc2VydF9waXBlX2Rp
c2FibGVkKGRldl9wcml2LCBwaXBlX2NvbmZpZy0+Y3B1X3RyYW5zY29kZXIpOwogCWFzc2VydF9k
cF9wb3J0X2Rpc2FibGVkKGludGVsX2RwKTsKIAlhc3NlcnRfZWRwX3BsbF9kaXNhYmxlZChkZXZf
cHJpdik7CiAKQEAgLTMxMjUsNyArMzEyNSw3IEBAIHN0YXRpYyB2b2lkIGlsa19lZHBfcGxsX29m
ZihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0g
dG9faW50ZWxfY3J0YyhvbGRfY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKIAotCWFzc2Vy
dF9waXBlX2Rpc2FibGVkKGRldl9wcml2LCBjcnRjLT5waXBlKTsKKwlhc3NlcnRfcGlwZV9kaXNh
YmxlZChkZXZfcHJpdiwgb2xkX2NydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyKTsKIAlhc3NlcnRf
ZHBfcG9ydF9kaXNhYmxlZChpbnRlbF9kcCk7CiAJYXNzZXJ0X2VkcF9wbGxfZW5hYmxlZChkZXZf
cHJpdik7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dHYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdHYuYwppbmRleCA1MDcw
MzUzNjQzNmMuLjRmM2Y5MDJlNGE5YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF90di5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdHYuYwpAQCAtMTUyNyw3ICsxNTI3LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfdHZfcHJlX2Vu
YWJsZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJCSAgICgodmlkZW9fbGV2ZWxz
LT5ibGFjayA8PCBUVl9CTEFDS19MRVZFTF9TSElGVCkgfAogCQkJICAgICh2aWRlb19sZXZlbHMt
PmJsYW5rIDw8IFRWX0JMQU5LX0xFVkVMX1NISUZUKSkpOwogCi0JYXNzZXJ0X3BpcGVfZGlzYWJs
ZWQoZGV2X3ByaXYsIGludGVsX2NydGMtPnBpcGUpOworCWFzc2VydF9waXBlX2Rpc2FibGVkKGRl
dl9wcml2LCBwaXBlX2NvbmZpZy0+Y3B1X3RyYW5zY29kZXIpOwogCiAJLyogRmlsdGVyIGN0bCBt
dXN0IGJlIHNldCBiZWZvcmUgVFZfV0lOX1NJWkUgKi8KIAl0dl9maWx0ZXJfY3RsID0gVFZfQVVU
T19TQ0FMRTsKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
