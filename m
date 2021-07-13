Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8D73C677B
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 02:34:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E18D89F07;
	Tue, 13 Jul 2021 00:34:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 391F189F07
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 00:34:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10043"; a="273907687"
X-IronPort-AV: E=Sophos;i="5.84,235,1620716400"; d="scan'208";a="273907687"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 17:34:47 -0700
X-IronPort-AV: E=Sophos;i="5.84,235,1620716400"; d="scan'208";a="451584099"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 17:34:47 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Jul 2021 17:38:51 -0700
Message-Id: <20210713003854.143197-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210713003854.143197-1-jose.souza@intel.com>
References: <20210713003854.143197-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 3/6] drm/i915: Implement Wa_1508744258
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
PgpSZXZpZXdlZC1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDcgKysr
KysrKwogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IGU1ZTNmODIwMDc0YTkuLmMzNDYyMjll
MmJlMDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91
bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpA
QCAtNjcwLDYgKzY3MCwxMyBAQCBzdGF0aWMgdm9pZCBnZW4xMl9jdHhfd29ya2Fyb3VuZHNfaW5p
dChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCiAJICAgICAgIEZGX01PREUyX0dTX1RJ
TUVSX01BU0ssCiAJICAgICAgIEZGX01PREUyX0dTX1RJTUVSXzIyNCwKIAkgICAgICAgMCk7CisK
KwkvKgorCSAqIFdhXzE0MDEyMTMxMjI3OmRnMQorCSAqIFdhXzE1MDg3NDQyNTg6dGdsLHJrbCxk
ZzEsYWRsLXMsYWRsLXAKKwkgKi8KKwl3YV9tYXNrZWRfZW4od2FsLCBHRU43X0NPTU1PTl9TTElD
RV9DSElDS0VOMSwKKwkJICAgICBHRU45X1JIV09fT1BUSU1JWkFUSU9OX0RJU0FCTEUpOwogfQog
CiBzdGF0aWMgdm9pZCBkZzFfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lLAotLSAKMi4zMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
