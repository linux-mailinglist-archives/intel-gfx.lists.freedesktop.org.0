Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 911B53C9C81
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jul 2021 12:16:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3BC16E802;
	Thu, 15 Jul 2021 10:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE0A76E802;
 Thu, 15 Jul 2021 10:16:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="190198911"
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="190198911"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2021 03:16:05 -0700
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="460341196"
Received: from omurra1x-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.240.195])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2021 03:16:02 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jul 2021 11:15:34 +0100
Message-Id: <20210715101536.2606307-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210715101536.2606307-1-matthew.auld@intel.com>
References: <20210715101536.2606307-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/uapi: convert drm_i915_gem_userptr
 to kernel doc
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

QWRkIHRoZSBtaXNzaW5nIGtlcm5lbC1kb2MuCgpTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQg
PG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CkNjOiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhl
bGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5s
YW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGxpbnV4LmludGVsLmNvbT4KQ2M6IEpvcmRhbiBKdXN0ZW4gPGpvcmRhbi5sLmp1c3RlbkBp
bnRlbC5jb20+CkNjOiBLZW5uZXRoIEdyYXVua2UgPGtlbm5ldGhAd2hpdGVjYXBlLm9yZz4KQ2M6
IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4KQ2M6IERhbmllbCBWZXR0ZXIg
PGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkNjOiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0Bp
bnRlbC5jb20+Ci0tLQogaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oIHwgNDAgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDM5IGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvZHJtL2k5MTVf
ZHJtLmggYi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKaW5kZXggODY4YzJlZTdiZTYwLi5l
MjBlZWVjYTdhMWMgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAorKysg
Yi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKQEAgLTIxNDEsMTQgKzIxNDEsNTIgQEAgc3Ry
dWN0IGRybV9pOTE1X3Jlc2V0X3N0YXRzIHsKIAlfX3UzMiBwYWQ7CiB9OwogCisvKioKKyAqIHN0
cnVjdCBkcm1faTkxNV9nZW1fdXNlcnB0ciAtIENyZWF0ZSBHRU0gb2JqZWN0IGZyb20gdXNlciBh
bGxvY2F0ZWQgbWVtb3J5LgorICoKKyAqIFVzZXJwdHIgb2JqZWN0cyBoYXZlIHNldmVyYWwgcmVz
dHJpY3Rpb25zIG9uIHdoYXQgaW9jdGxzIGNhbiBiZSB1c2VkIHdpdGggdGhlCisgKiBvYmplY3Qg
aGFuZGxlLgorICovCiBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX3VzZXJwdHIgeworCS8qKgorCSAqIEB1
c2VyX3B0cjogVGhlIHBvaW50ZXIgdG8gdGhlIGFsbG9jYXRlZCBtZW1vcnkuCisJICoKKwkgKiBO
ZWVkcyB0byBiZSBhbGlnbmVkIHRvIFBBR0VfU0laRS4KKwkgKi8KIAlfX3U2NCB1c2VyX3B0cjsK
KworCS8qKgorCSAqIEB1c2VyX3NpemU6CisJICoKKwkgKiBUaGUgc2l6ZSBpbiBieXRlcyBmb3Ig
dGhlIGFsbG9jYXRlZCBtZW1vcnkuIFRoaXMgd2lsbCBhbHNvIGJlY29tZSB0aGUKKwkgKiBvYmpl
Y3Qgc2l6ZS4KKwkgKgorCSAqIE5lZWRzIHRvIGJlIGFsaWduZWQgdG8gUEFHRV9TSVpFLCBhbmQg
c2hvdWxkIGJlIGF0IGxlYXN0IFBBR0VfU0laRSwKKwkgKiBvciBsYXJnZXIuCisJICovCiAJX191
NjQgdXNlcl9zaXplOworCisJLyoqCisJICogQGZsYWdzOgorCSAqCisJICogU3VwcG9ydGVkIGZs
YWdzOgorCSAqCisJICogSTkxNV9VU0VSUFRSX1JFQURfT05MWToKKwkgKgorCSAqIE1hcmsgdGhl
IG9iamVjdCBhcyByZWFkb25seSwgdGhpcyBhbHNvIG1lYW5zIEdQVSBhY2Nlc3MgY2FuIG9ubHkg
YmUKKwkgKiByZWFkb25seS4gVGhpcyBpcyBvbmx5IHN1cHBvcnRlZCBvbiBIVyB3aGljaCBzdXBw
b3J0cyByZWFkb25seSBhY2Nlc3MKKwkgKiB0aHJvdWdoIHRoZSBHVFQuIElmIHRoZSBIVyBjYW4n
dCBzdXBwb3J0IHJlYWRvbmx5IGFjY2VzcywgYW4gZXJyb3IgaXMKKwkgKiByZXR1cm5lZC4KKwkg
KgorCSAqIEk5MTVfVVNFUlBUUl9VTlNZTkNIUk9OSVpFRDoKKwkgKgorCSAqIE5PVCBVU0VELiBT
ZXR0aW5nIHRoaXMgZmxhZyB3aWxsIHJlc3VsdCBpbiBhbiBlcnJvci4KKwkgKi8KIAlfX3UzMiBm
bGFnczsKICNkZWZpbmUgSTkxNV9VU0VSUFRSX1JFQURfT05MWSAweDEKICNkZWZpbmUgSTkxNV9V
U0VSUFRSX1VOU1lOQ0hST05JWkVEIDB4ODAwMDAwMDAKIAkvKioKLQkgKiBSZXR1cm5lZCBoYW5k
bGUgZm9yIHRoZSBvYmplY3QuCisJICogQGhhbmRsZTogUmV0dXJuZWQgaGFuZGxlIGZvciB0aGUg
b2JqZWN0LgogCSAqCiAJICogT2JqZWN0IGhhbmRsZXMgYXJlIG5vbnplcm8uCiAJICovCi0tIAoy
LjI2LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
