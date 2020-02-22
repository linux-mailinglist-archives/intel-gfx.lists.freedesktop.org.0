Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FCE168BF3
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 03:07:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72D4A6F5AF;
	Sat, 22 Feb 2020 02:07:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 871536F5AA
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 02:07:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 18:07:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,470,1574150400"; d="scan'208";a="409315532"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.221])
 by orsmga005.jf.intel.com with ESMTP; 21 Feb 2020 18:07:32 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Feb 2020 18:08:11 -0800
Message-Id: <20200222020815.50599-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200222020815.50599-1-jose.souza@intel.com>
References: <20200222020815.50599-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/8] drm/i915/tgl: Add Wa_1409085225,
 Wa_14010229206
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

RnJvbTogTWF0dCBBdHdvb2QgPG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPgoKRGlzYWJsZSBQ
dXNoIENvbnN0YW50IGJ1ZmZlciBhZGRpdGlvbiBmb3IgVEdMLgoKdjI6IHR5cG9zLCBhZGQgYWRk
aXRpb25hbCBXYSByZWZlcmVuY2UKdjM6IHVzZSBSRUdfQklUIG1hY3JvLCBtb3ZlIHRvIHJjc19l
bmdpbmVfd2FfaW5pdCwgY2xlYW4gdXAgY29tbWl0Cm1lc3NhZ2UuCgpCc3BlYzogNTI4OTAKQ2M6
IFJhZmFlbCBBbnRvZ25vbGxpIDxyYWZhZWwuYW50b2dub2xsaUBpbnRlbC5jb20+CkNjOiBNYXR0
IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXR0IEF0
d29vZCA8bWF0dGhldy5zLmF0d29vZEBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCA2ICsrKysrKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICB8IDMgKysrCiAyIGZpbGVzIGNoYW5nZWQsIDkg
aW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jCmluZGV4IGZiZWQ1YmRjOWUwNC4uZTk2MTljNDkzZTZhIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKQEAgLTEzNjksNiArMTM2OSwxMiBAQCByY3Nf
ZW5naW5lX3dhX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkx
NV93YV9saXN0ICp3YWwpCiAJCXdhX21hc2tlZF9lbih3YWwsCiAJCQkgICAgIEdFTjdfUk9XX0NI
SUNLRU4yLAogCQkJICAgICBHRU4xMl9ESVNBQkxFX0VBUkxZX1JFQUQpOworCisJCS8qCisJCSAq
IFdhXzE0MDkwODUyMjU6dGdsCisJCSAqIFdhXzE0MDEwMjI5MjA2OnRnbAorCQkgKi8KKwkJd2Ff
bWFza2VkX2VuKHdhbCwgR0VOOV9ST1dfQ0hJQ0tFTjQsIEdFTjEyX0RJU0FCTEVfVERMX1BVU0gp
OwogCX0KIAogCWlmIChJU19USUdFUkxBS0UoaTkxNSkpIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
CmluZGV4IDQ5ODcyYTFkYzdhNC4uNzgxNjRmYTllNTc0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgKQEAgLTkxNTksNiArOTE1OSw5IEBAIGVudW0gewogI2RlZmluZSAgIFBVU0hfQ09OU1RBTlRf
REVSRUZfRElTQUJMRQkoMSA8PCA4KQogI2RlZmluZSAgIEdFTjExX1RETF9DTE9DS19HQVRJTkdf
RklYX0RJU0FCTEUJKDEgPDwgMSkKIAorI2RlZmluZSBHRU45X1JPV19DSElDS0VONAkJX01NSU8o
MHhlNDhjKQorI2RlZmluZSAgIEdFTjEyX0RJU0FCTEVfVERMX1BVU0gJUkVHX0JJVCg5KQorCiAj
ZGVmaW5lIEhTV19ST1dfQ0hJQ0tFTjMJCV9NTUlPKDB4ZTQ5YykKICNkZWZpbmUgIEhTV19ST1df
Q0hJQ0tFTjNfTDNfR0xPQkFMX0FUT01JQ1NfRElTQUJMRSAgICAoMSA8PCA2KQogCi0tIAoyLjI1
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
