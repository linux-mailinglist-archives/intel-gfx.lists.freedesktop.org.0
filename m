Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C433B93C1
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 17:10:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80A5B6EB3C;
	Thu,  1 Jul 2021 15:10:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CEA56EB3B;
 Thu,  1 Jul 2021 15:10:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="188234867"
X-IronPort-AV: E=Sophos;i="5.83,314,1616482800"; d="scan'208";a="188234867"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 08:10:39 -0700
X-IronPort-AV: E=Sophos;i="5.83,314,1616482800"; d="scan'208";a="457693588"
Received: from dfdonlon-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.21.173])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 08:10:36 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jul 2021 16:10:19 +0100
Message-Id: <20210701151019.1103315-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210701151019.1103315-1-matthew.auld@intel.com>
References: <20210701151019.1103315-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915/uapi: reject set_domain for
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

VGhlIENQVSBkb21haW4gc2hvdWxkIGJlIHN0YXRpYyBmb3IgZGlzY3JldGUsIGFuZCBvbiBERzEg
d2UgZG9uJ3QgbmVlZAphbnkgZmx1c2hpbmcgc2luY2UgZXZlcnl0aGluZyBpcyBhbHJlYWR5IGNv
aGVyZW50LCBzbyByZWFsbHkgYWxsIHRoaXMKZG9lcyBpcyBhbiBvYmplY3Qgd2FpdCwgZm9yIHdo
aWNoIHdlIGhhdmUgYW4gaW9jdGwuIExvbmdlciB0ZXJtIHRoZQpkZXNpcmVkIGNhY2hpbmcgc2hv
dWxkIGJlIGFuIGltbXV0YWJsZSBjcmVhdGlvbiB0aW1lIHByb3BlcnR5IGZvciB0aGUKQk8sIHdo
aWNoIGNhbiBiZSBzZXQgd2l0aCBzb21ldGhpbmcgbGlrZSBnZW1fY3JlYXRlX2V4dC4KCk9uZSBv
dGhlciB1c2VyIGlzIGlyaXMgKyB1c2VycHRyLCB3aGljaCB1c2VzIHRoZSBzZXRfZG9tYWluIHRv
IHByb2JlIGFsbAp0aGUgcGFnZXMgdG8gY2hlY2sgaWYgdGhlIEdVUCBzdWNjZWVkcywgaG93ZXZl
ciBrZWVwaW5nIHRoZSBzZXRfZG9tYWluCmFyb3VuZCBqdXN0IGZvciB0aGF0IHNlZW1zIHJhdGhl
ciBzY3VmZmVkLiBXZSBjb3VsZCBlcXVhbGx5IGp1c3Qgc3VibWl0CmEgZHVtbXkgYmF0Y2gsIHdo
aWNoIHNob3VsZCBob3BlZnVsbHkgYmUgZ29vZCBlbm91Z2gsIG90aGVyd2lzZSBhZGRpbmcgYQpu
ZXcgY3JlYXRpb24gdGltZSBmbGFnIGZvciB1c2VycHRyIG1pZ2h0IGJlIGFuIG9wdGlvbi4gQWx0
aG91Z2ggbG9uZ2VyCnRlcm0gd2Ugd2lsbCBhbHNvIGhhdmUgdm1fYmluZCwgd2hpY2ggc2hvdWxk
IGFsc28gYmUgYSBuaWNlIGZpdCBmb3IKdGhpcywgc28gYWRkaW5nIGEgd2hvbGUgbmV3IGZsYWcg
aXMgbGlrZWx5IG92ZXJraWxsLgoKU3VnZ2VzdGVkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxA
ZmZ3bGwuY2g+ClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVs
LmNvbT4KQ2M6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVs
LmNvbT4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRl
bC5jb20+CkNjOiBKb3JkYW4gSnVzdGVuIDxqb3JkYW4ubC5qdXN0ZW5AaW50ZWwuY29tPgpDYzog
S2VubmV0aCBHcmF1bmtlIDxrZW5uZXRoQHdoaXRlY2FwZS5vcmc+CkNjOiBKYXNvbiBFa3N0cmFu
ZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVy
QGZmd2xsLmNoPgpDYzogUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYyB8IDMgKysrCiAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2RvbWFpbi5jCmluZGV4IDQzMDA0YmVmNTVjYi4uYjY4NGE2MmJmM2IwIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCkBAIC00OTAsNiArNDkwLDkg
QEAgaTkxNV9nZW1fc2V0X2RvbWFpbl9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lk
ICpkYXRhLAogCXUzMiB3cml0ZV9kb21haW4gPSBhcmdzLT53cml0ZV9kb21haW47CiAJaW50IGVy
cjsKIAorCWlmIChJU19ER0ZYKHRvX2k5MTUoZGV2KSkpCisJCXJldHVybiAtRU5PREVWOworCiAJ
LyogT25seSBoYW5kbGUgc2V0dGluZyBkb21haW5zIHRvIHR5cGVzIHVzZWQgYnkgdGhlIENQVS4g
Ki8KIAlpZiAoKHdyaXRlX2RvbWFpbiB8IHJlYWRfZG9tYWlucykgJiBJOTE1X0dFTV9HUFVfRE9N
QUlOUykKIAkJcmV0dXJuIC1FSU5WQUw7Ci0tIAoyLjI2LjMKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
