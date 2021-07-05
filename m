Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0F73BBDE3
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jul 2021 15:53:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 855F88936B;
	Mon,  5 Jul 2021 13:53:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CD958936B;
 Mon,  5 Jul 2021 13:53:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10035"; a="207154298"
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; d="scan'208";a="207154298"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2021 06:53:34 -0700
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; d="scan'208";a="562596248"
Received: from ricrossl-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.23.185])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2021 06:53:30 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Jul 2021 14:53:09 +0100
Message-Id: <20210705135310.1502437-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210705135310.1502437-1-matthew.auld@intel.com>
References: <20210705135310.1502437-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 4/5] drm/i915/uapi: convert
 drm_i915_gem_set_domain to kernel doc
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

Q29udmVydCBhbGwgdGhlIGRybV9pOTE1X2dlbV9zZXRfZG9tYWluIGJpdHMgdG8gcHJvcGVyIGtl
cm5lbCBkb2MuCgpTdWdnZXN0ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4K
U2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpDYzog
VGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgpDYzog
TWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6
IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+CkNjOiBKb3Jk
YW4gSnVzdGVuIDxqb3JkYW4ubC5qdXN0ZW5AaW50ZWwuY29tPgpDYzogS2VubmV0aCBHcmF1bmtl
IDxrZW5uZXRoQHdoaXRlY2FwZS5vcmc+CkNjOiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0
cmFuZC5uZXQ+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpDYzog
UmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPgotLS0KIGluY2x1ZGUvdWFwaS9k
cm0vaTkxNV9kcm0uaCB8IDM0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9k
cm0uaAppbmRleCBhNGZhY2VlYjhjMzIuLjZmOTRlNWU3NTY5YSAxMDA2NDQKLS0tIGEvaW5jbHVk
ZS91YXBpL2RybS9pOTE1X2RybS5oCisrKyBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaApA
QCAtODgwLDE0ICs4ODAsNDIgQEAgc3RydWN0IGRybV9pOTE1X2dlbV9tbWFwX29mZnNldCB7CiAJ
X191NjQgZXh0ZW5zaW9uczsKIH07CiAKKworLyoqCisgKiBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX3Nl
dF9kb21haW4gLSBBZGp1c3QgdGhlIG9iamVjdHMgd3JpdGUgb3IgcmVhZCBkb21haW4sIGluCisg
KiBwcmVwYXJhdGlvbiBmb3IgYWNjZXNzaW5nIHRoZSBwYWdlcyB2aWEgc29tZSBDUFUgZG9tYWlu
LgorICoKKyAqIFNwZWNpZnlpbmcgYSBuZXcgd3JpdGUgb3IgcmVhZCBkb21haW4gd2lsbCBmbHVz
aCB0aGUgb2JqZWN0IG91dCBvZiB0aGUKKyAqIHByZXZpb3VzIGRvbWFpbihpZiByZXF1aXJlZCks
IGJlZm9yZSB0aGVuIHVwZGF0aW5nIHRoZSBvYmplY3RzIGRvbWFpbgorICogdHJhY2tpbmcgd2l0
aCB0aGUgbmV3IGRvbWFpbi4KKyAqCisgKiBOb3RlIHRoaXMgbWlnaHQgaW52b2x2ZSB3YWl0aW5n
IGZvciB0aGUgb2JqZWN0IGZpcnN0IGlmIGl0IGlzIHN0aWxsIGFjdGl2ZSBvbgorICogdGhlIEdQ
VS4KKyAqCisgKiBTdXBwb3J0ZWQgdmFsdWVzIGZvciBAcmVhZF9kb21haW5zIGFuZCBAd3JpdGVf
ZG9tYWluOgorICoKKyAqCS0gSTkxNV9HRU1fRE9NQUlOX1dDOiBVbmNhY2hlZCB3cml0ZS1jb21i
aW5lZCBkb21haW4KKyAqCS0gSTkxNV9HRU1fRE9NQUlOX0NQVTogQ1BVIGNhY2hlIGRvbWFpbgor
ICoJLSBJOTE1X0dFTV9ET01BSU5fR1RUOiBNYXBwYWJsZSBhcGVydHVyZSBkb21haW4KKyAqCisg
KiBBbGwgb3RoZXIgZG9tYWlucyBhcmUgcmVqZWN0ZWQuCisgKgorICovCiBzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX3NldF9kb21haW4gewotCS8qKiBIYW5kbGUgZm9yIHRoZSBvYmplY3QgKi8KKwkvKiog
QGhhbmRsZTogSGFuZGxlIGZvciB0aGUgb2JqZWN0LiAqLwogCV9fdTMyIGhhbmRsZTsKIAotCS8q
KiBOZXcgcmVhZCBkb21haW5zICovCisJLyoqCisJICogQHJlYWRfZG9tYWluczogTmV3IHJlYWQg
ZG9tYWlucy4KKwkgKi8KIAlfX3UzMiByZWFkX2RvbWFpbnM7CiAKLQkvKiogTmV3IHdyaXRlIGRv
bWFpbiAqLworCS8qKgorCSAqIEB3cml0ZV9kb21haW46IE5ldyB3cml0ZSBkb21haW4uCisJICoK
KwkgKiBOb3RlIHRoYXQgaGF2aW5nIHNvbWV0aGluZyBpbiB0aGUgd3JpdGUgZG9tYWluIGltcGxp
ZXMgaXQncyBpbiB0aGUKKwkgKiByZWFkIGRvbWFpbiwgYW5kIG9ubHkgdGhhdCByZWFkIGRvbWFp
bi4KKwkgKi8KIAlfX3UzMiB3cml0ZV9kb21haW47CiB9OwogCi0tIAoyLjI2LjMKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
