Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC323C1ADE
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 23:14:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1C516E9B4;
	Thu,  8 Jul 2021 21:14:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 901536E9AB
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 21:14:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="207775058"
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="207775058"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 14:14:21 -0700
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="560755467"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 14:14:20 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jul 2021 14:18:22 -0700
Message-Id: <20210708211827.288601-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210708211827.288601-1-jose.souza@intel.com>
References: <20210708211827.288601-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/7] drm/i915: Implement Wa_1508744258
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

U2FtZSBiaXQgd2FzIHJlcXVpcmVkIGZvciBXYV8xNDAxMjEzMTIyNyBpbiBERzEgbm93IGl0IGlz
IGFsc28KcmVxdWlyZWQgYXMgV2FfMTUwODc0NDI1OCB0byBUR0wsIFJLTCwgREcxLCBBREwtUyBh
bmQgQURMLVAuCgpDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwg
NyArKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggZTVlM2Y4MjAwNzRhOS4uYzM0
NjIyOWUyYmUwMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29y
a2Fyb3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jCkBAIC02NzAsNiArNjcwLDEzIEBAIHN0YXRpYyB2b2lkIGdlbjEyX2N0eF93b3JrYXJvdW5k
c19pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIAkgICAgICAgRkZfTU9ERTJf
R1NfVElNRVJfTUFTSywKIAkgICAgICAgRkZfTU9ERTJfR1NfVElNRVJfMjI0LAogCSAgICAgICAw
KTsKKworCS8qCisJICogV2FfMTQwMTIxMzEyMjc6ZGcxCisJICogV2FfMTUwODc0NDI1ODp0Z2ws
cmtsLGRnMSxhZGwtcyxhZGwtcAorCSAqLworCXdhX21hc2tlZF9lbih3YWwsIEdFTjdfQ09NTU9O
X1NMSUNFX0NISUNLRU4xLAorCQkgICAgIEdFTjlfUkhXT19PUFRJTUlaQVRJT05fRElTQUJMRSk7
CiB9CiAKIHN0YXRpYyB2b2lkIGRnMV9jdHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUsCi0tIAoyLjMyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
