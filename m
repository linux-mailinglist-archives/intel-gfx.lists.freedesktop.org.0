Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F15063C677F
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 02:34:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D8A189F43;
	Tue, 13 Jul 2021 00:34:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F38789F07
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 00:34:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10043"; a="273907688"
X-IronPort-AV: E=Sophos;i="5.84,235,1620716400"; d="scan'208";a="273907688"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 17:34:47 -0700
X-IronPort-AV: E=Sophos;i="5.84,235,1620716400"; d="scan'208";a="451584103"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 17:34:48 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Jul 2021 17:38:52 -0700
Message-Id: <20210713003854.143197-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210713003854.143197-1-jose.souza@intel.com>
References: <20210713003854.143197-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 4/6] drm/i915/adl_s: Extend Wa_1406941453
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

QlNwZWM6IDU0MzcwCkNjOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5j
b20+ClJldmlld2VkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgNSAr
KystLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwppbmRleCBjMzQ2MjI5
ZTJiZTAwLi43MjU2MmMyMzNhZDIwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3dvcmthcm91bmRzLmMKQEAgLTE2NzcsOCArMTY3Nyw5IEBAIHJjc19lbmdpbmVfd2FfaW5pdChz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkK
IAkJCSAgICAgR0VOOF9SQ19TRU1BX0lETEVfTVNHX0RJU0FCTEUpOwogCX0KIAotCWlmIChJU19E
RzEoaTkxNSkgfHwgSVNfUk9DS0VUTEFLRShpOTE1KSB8fCBJU19USUdFUkxBS0UoaTkxNSkpIHsK
LQkJLyogV2FfMTQwNjk0MTQ1Mzp0Z2wscmtsLGRnMSAqLworCWlmIChJU19ERzEoaTkxNSkgfHwg
SVNfUk9DS0VUTEFLRShpOTE1KSB8fCBJU19USUdFUkxBS0UoaTkxNSkgfHwKKwkgICAgSVNfQUxE
RVJMQUtFX1MoaTkxNSkpIHsKKwkJLyogV2FfMTQwNjk0MTQ1Mzp0Z2wscmtsLGRnMSxhZGwtcyAq
LwogCQl3YV9tYXNrZWRfZW4od2FsLAogCQkJICAgICBHRU4xMF9TQU1QTEVSX01PREUsCiAJCQkg
ICAgIEVOQUJMRV9TTUFMTFBMKTsKLS0gCjIuMzIuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
