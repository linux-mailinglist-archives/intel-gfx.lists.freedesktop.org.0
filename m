Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F32A3B93BE
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 17:10:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ACD16EB38;
	Thu,  1 Jul 2021 15:10:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1C8B6EB37;
 Thu,  1 Jul 2021 15:10:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="188234859"
X-IronPort-AV: E=Sophos;i="5.83,314,1616482800"; d="scan'208";a="188234859"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 08:10:36 -0700
X-IronPort-AV: E=Sophos;i="5.83,314,1616482800"; d="scan'208";a="457693560"
Received: from dfdonlon-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.21.173])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 08:10:33 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jul 2021 16:10:18 +0100
Message-Id: <20210701151019.1103315-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210701151019.1103315-1-matthew.auld@intel.com>
References: <20210701151019.1103315-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915/uapi: reject caching ioctls for
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
 dri-devel@lists.freedesktop.org, Kenneth Graunke <kenneth@whitecape.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQncyBhIG5vb3Agb24gREcxLCBhbmQgaW4gdGhlIGZ1dHVyZSB3aGVuIG5lZWQgdG8gc3VwcG9y
dCBvdGhlciBkZXZpY2VzCndoaWNoIGxldCB1cyBjb250cm9sIHRoZSBjb2hlcmVuY3ksIHRoZW4g
aXQgc2hvdWxkIGJlIGFuIGltbXV0YWJsZQpjcmVhdGlvbiB0aW1lIHByb3BlcnR5IGZvciB0aGUg
Qk8uIFRoaXMgd2lsbCBsaWtlbHkgYmUgY29udHJvbGxlZAp0aHJvdWdoIGEgbmV3IGdlbV9jcmVh
dGVfZXh0IGV4dGVuc2lvbi4KClN1Z2dlc3RlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZm
d2xsLmNoPgpTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5j
b20+CkNjOiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5j
b20+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwu
Y29tPgpDYzogSm9yZGFuIEp1c3RlbiA8am9yZGFuLmwuanVzdGVuQGludGVsLmNvbT4KQ2M6IEtl
bm5ldGggR3JhdW5rZSA8a2VubmV0aEB3aGl0ZWNhcGUub3JnPgpDYzogSmFzb24gRWtzdHJhbmQg
PGphc29uQGpsZWtzdHJhbmQubmV0PgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBm
ZndsbC5jaD4KQ2M6IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMgfCA2ICsrKysrKwogMSBm
aWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9kb21haW4uYwppbmRleCA3ZDE0MDBiMTM0MjkuLjQzMDA0YmVmNTVjYiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYwpAQCAtMjY4LDYgKzI2OCw5
IEBAIGludCBpOTE1X2dlbV9nZXRfY2FjaGluZ19pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LCB2b2lkICpkYXRhLAogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CiAJaW50IGVy
ciA9IDA7CiAKKwlpZiAoSVNfREdGWCh0b19pOTE1KGRldikpKQorCQlyZXR1cm4gLUVOT0RFVjsK
KwogCXJjdV9yZWFkX2xvY2soKTsKIAlvYmogPSBpOTE1X2dlbV9vYmplY3RfbG9va3VwX3JjdShm
aWxlLCBhcmdzLT5oYW5kbGUpOwogCWlmICghb2JqKSB7CkBAIC0zMDMsNiArMzA2LDkgQEAgaW50
IGk5MTVfZ2VtX3NldF9jYWNoaW5nX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQg
KmRhdGEsCiAJZW51bSBpOTE1X2NhY2hlX2xldmVsIGxldmVsOwogCWludCByZXQgPSAwOwogCisJ
aWYgKElTX0RHRlgoaTkxNSkpCisJCXJldHVybiAtRU5PREVWOworCiAJc3dpdGNoIChhcmdzLT5j
YWNoaW5nKSB7CiAJY2FzZSBJOTE1X0NBQ0hJTkdfTk9ORToKIAkJbGV2ZWwgPSBJOTE1X0NBQ0hF
X05PTkU7Ci0tIAoyLjI2LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
