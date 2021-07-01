Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A17A3B9377
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 16:38:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 366F06EB2F;
	Thu,  1 Jul 2021 14:38:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BC1C6EB29;
 Thu,  1 Jul 2021 14:38:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="208363570"
X-IronPort-AV: E=Sophos;i="5.83,314,1616482800"; d="scan'208";a="208363570"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 07:38:25 -0700
X-IronPort-AV: E=Sophos;i="5.83,314,1616482800"; d="scan'208";a="420426106"
Received: from dfdonlon-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.21.173])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 07:38:22 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jul 2021 15:36:49 +0100
Message-Id: <20210701143650.1094468-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210701143650.1094468-1-matthew.auld@intel.com>
References: <20210701143650.1094468-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/uapi: reject caching ioctls for
 discrete
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org,
 Kenneth Graunke <kenneth@whitecape.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQncyBhIG5vb3Agb24gREcxLCBhbmQgaW4gdGhlIGZ1dHVyZSB3aGVuIG5lZWQgdG8gc3VwcG9y
dCBvdGhlciBkZXZpY2VzCndoaWNoIGxldCB1cyBjb250cm9sIHRoZSBjb2hlcmVuY3ksIHRoZW4g
aXQgc2hvdWxkIGJlIGFuIGltbXV0YWJsZQpjcmVhdGlvbiB0aW1lIHByb3BlcnR5IGZvciB0aGUg
Qk8uCgpTdWdnZXN0ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KU2lnbmVk
LW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpDYzogVGhvbWFz
IEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgpDYzogTWFhcnRl
biBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IEtlbm5l
dGggR3JhdW5rZSA8a2VubmV0aEB3aGl0ZWNhcGUub3JnPgpDYzogSmFzb24gRWtzdHJhbmQgPGph
c29uQGpsZWtzdHJhbmQubmV0PgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZnds
bC5jaD4KQ2M6IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMgfCA2ICsrKysrKwogMSBmaWxl
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9kb21haW4uYwppbmRleCA3ZDE0MDBiMTM0MjkuLjQzMDA0YmVmNTVjYiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYwpAQCAtMjY4LDYgKzI2OCw5IEBA
IGludCBpOTE1X2dlbV9nZXRfY2FjaGluZ19pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2
b2lkICpkYXRhLAogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CiAJaW50IGVyciA9
IDA7CiAKKwlpZiAoSVNfREdGWCh0b19pOTE1KGRldikpKQorCQlyZXR1cm4gLUVOT0RFVjsKKwog
CXJjdV9yZWFkX2xvY2soKTsKIAlvYmogPSBpOTE1X2dlbV9vYmplY3RfbG9va3VwX3JjdShmaWxl
LCBhcmdzLT5oYW5kbGUpOwogCWlmICghb2JqKSB7CkBAIC0zMDMsNiArMzA2LDkgQEAgaW50IGk5
MTVfZ2VtX3NldF9jYWNoaW5nX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRh
dGEsCiAJZW51bSBpOTE1X2NhY2hlX2xldmVsIGxldmVsOwogCWludCByZXQgPSAwOwogCisJaWYg
KElTX0RHRlgoaTkxNSkpCisJCXJldHVybiAtRU5PREVWOworCiAJc3dpdGNoIChhcmdzLT5jYWNo
aW5nKSB7CiAJY2FzZSBJOTE1X0NBQ0hJTkdfTk9ORToKIAkJbGV2ZWwgPSBJOTE1X0NBQ0hFX05P
TkU7Ci0tIAoyLjI2LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
