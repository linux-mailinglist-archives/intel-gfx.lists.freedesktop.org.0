Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C933C6050
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 18:18:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 835D589388;
	Mon, 12 Jul 2021 16:18:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5BC289388
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 16:18:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10043"; a="197282989"
X-IronPort-AV: E=Sophos;i="5.84,234,1620716400"; d="scan'208";a="197282989"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 09:18:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,234,1620716400"; d="scan'208";a="451446527"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 12 Jul 2021 09:18:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Jul 2021 19:18:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Jul 2021 19:18:15 +0300
Message-Id: <20210712161815.24776-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210712161815.24776-1-ville.syrjala@linux.intel.com>
References: <20210712161815.24776-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: s/0/NULL/
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClVz
ZSBOVUxMIHdoZXJlIGFwcHJvcHJpYXRlLgoKZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cmluZ19zdWJtaXNzaW9uLmM6MTIxMDoyNDogd2FybmluZzogVXNpbmcgcGxhaW4gaW50ZWdlciBh
cyBOVUxMIHBvaW50ZXIKClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cmluZ19zdWJtaXNzaW9uLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9yaW5nX3N1Ym1pc3Npb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdf
c3VibWlzc2lvbi5jCmluZGV4IDVjNGQyMDRkMDdjYy4uNjk2YTBmZjQzNjdjIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYwpAQCAtMTIwNyw3
ICsxMjA3LDcgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAqZ2VuN19jdHhfdm1hKHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAlpbnQgc2l6ZSwgZXJyOwogCiAJaWYgKEdSQVBISUNT
X1ZFUihlbmdpbmUtPmk5MTUpICE9IDcgfHwgZW5naW5lLT5jbGFzcyAhPSBSRU5ERVJfQ0xBU1Mp
Ci0JCXJldHVybiAwOworCQlyZXR1cm4gTlVMTDsKIAogCWVyciA9IGdlbjdfY3R4X3N3aXRjaF9i
Yl9zZXR1cChlbmdpbmUsIE5VTEwgLyogcHJvYmUgc2l6ZSAqLyk7CiAJaWYgKGVyciA8IDApCi0t
IAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
