Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE35168BF2
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 03:07:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AF596F5AC;
	Sat, 22 Feb 2020 02:07:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1327F6F5AB
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 02:07:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 18:07:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,470,1574150400"; d="scan'208";a="409315543"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.221])
 by orsmga005.jf.intel.com with ESMTP; 21 Feb 2020 18:07:33 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Feb 2020 18:08:14 -0800
Message-Id: <20200222020815.50599-7-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200222020815.50599-1-jose.souza@intel.com>
References: <20200222020815.50599-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/8] drm/i915/tgl: Add note about Wa_1607063988
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

VGhpcyBpc3N1ZSB3b3JrYXJvdW5kIGluIFdhXzE2MDcwNjM5ODggaGFzIHRoZSBzYW1lIGZpeCBh
cwpXYV8xNjA3MTM4MzM2LCBzbyBqdXN0IGFkZGluZyBhIG5vdGUgaW4gdGhlIGNvZGUuCgpTaWdu
ZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgNSArKysr
LQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IGJjNTAyNWM4MWM0
Zi4uY2MzZmJlM2RmZDlmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmth
cm91bmRzLmMKQEAgLTEzMzksNyArMTMzOSwxMCBAQCByY3NfZW5naW5lX3dhX2luaXQoc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiAJCQkg
ICAgIEdFTjlfQ1NfREVCVUdfTU9ERTEsCiAJCQkgICAgIEZGX0RPUF9DTE9DS19HQVRFX0RJU0FC
TEUpOwogCi0JCS8qIFdhXzE2MDcxMzgzMzY6dGdsICovCisJCS8qCisJCSAqIFdhXzE2MDcxMzgz
MzY6dGdsCisJCSAqIFdhXzE2MDcwNjM5ODg6dGdsCisJCSAqLwogCQl3YV93cml0ZV9vcih3YWws
CiAJCQkgICAgR0VOOV9DVFhfUFJFRU1QVF9SRUcsCiAJCQkgICAgR0VOMTJfRElTQUJMRV9QT1NI
X0JVU1lfRkZfRE9QX0NHKTsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
