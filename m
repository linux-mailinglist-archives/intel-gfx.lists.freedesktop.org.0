Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE173B9379
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 16:38:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69A088944A;
	Thu,  1 Jul 2021 14:38:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A02766EB31;
 Thu,  1 Jul 2021 14:38:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="208363573"
X-IronPort-AV: E=Sophos;i="5.83,314,1616482800"; d="scan'208";a="208363573"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 07:38:27 -0700
X-IronPort-AV: E=Sophos;i="5.83,314,1616482800"; d="scan'208";a="420426115"
Received: from dfdonlon-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.21.173])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 07:38:25 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jul 2021 15:36:50 +0100
Message-Id: <20210701143650.1094468-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210701143650.1094468-1-matthew.auld@intel.com>
References: <20210701143650.1094468-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/uapi: reject set_domain for
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

VGhlIENQVSBkb21haW4gc2hvdWxkIGJlIHN0YXRpYyBmb3IgZGlzY3JldGUsIGFuZCBvbiBERzEg
d2UgZG9uJ3QgbmVlZAphbnkgZmx1c2hpbmcgc2luY2UgZXZlcnl0aGluZyBpcyBhbHJlYWR5IGNv
aGVyZW50LCBzbyByZWFsbHkgYWxsIHRoaXMKZG9lcyBpcyBhbiBvYmplY3Qgd2FpdCwgZm9yIHdo
aWNoIHdlIGhhdmUgYW4gaW9jdGwuIExvbmdlciB0ZXJtIHRoZQpkZXNpcmVkIGNhY2hpbmcgc2hv
dWxkIGJlIGFuIGltbXV0YWJsZSBjcmVhdGlvbiB0aW1lIHByb3BlcnR5IGZvciB0aGUKQk8uCgpP
bmUgb3RoZXIgdXNlciBpcyBpcmlzICsgdXNlcnB0ciwgd2hpY2ggdXNlcyB0aGUgc2V0X2RvbWFp
biB0byBwcm9iZSBhbGwKdGhlIHBhZ2VzIHRvIGNoZWNrIGlmIHRoZSBHVVAgc3VjY2VlZHMsIGhv
d2V2ZXIga2VlcGluZyB0aGUgc2V0X2RvbWFpbgphcm91bmQganVzdCBmb3IgdGhhdCBzZWVtcyBy
YXRoZXIgc2N1ZmZlZC4gV2UgY291bGQgZXF1YWxseSBqdXN0IHN1Ym1pdAphIGR1bW15IGJhdGNo
LCB3aGljaCBzaG91bGQgaG9wZWZ1bGx5IGJlIGdvb2QgZW5vdWdoLCBvdGhlcndpc2UgYWRkaW5n
IGEKbmV3IGNyZWF0aW9uIHRpbWUgZmxhZyBmb3IgdXNlcnB0ciBtaWdodCBiZSBhbiBvcHRpb24u
IEFsdGhvdWdoIGxvbmdlcgp0ZXJtIHdlIHdpbGwgYWxzbyBoYXZlIHZtX2JpbmQsIHdoaWNoIHNo
b3VsZCBhbHNvIGJlIGEgbmljZSBmaXQgZm9yCnRoaXMsIHNvIGFkZGluZyBhIHdob2xlIG5ldyBm
bGFnIGlzIGxpa2VseSBvdmVya2lsbC4KClN1Z2dlc3RlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFu
aWVsQGZmd2xsLmNoPgpTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBp
bnRlbC5jb20+CkNjOiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5p
bnRlbC5jb20+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXgu
aW50ZWwuY29tPgpDYzogS2VubmV0aCBHcmF1bmtlIDxrZW5uZXRoQHdoaXRlY2FwZS5vcmc+CkNj
OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+CkNjOiBEYW5pZWwgVmV0dGVy
IDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpDYzogUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4u
YyB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCmluZGV4IDQzMDA0YmVmNTVjYi4uYjY4NGE2
MmJmM2IwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9t
YWluLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCkBA
IC00OTAsNiArNDkwLDkgQEAgaTkxNV9nZW1fc2V0X2RvbWFpbl9pb2N0bChzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LCB2b2lkICpkYXRhLAogCXUzMiB3cml0ZV9kb21haW4gPSBhcmdzLT53cml0ZV9k
b21haW47CiAJaW50IGVycjsKIAorCWlmIChJU19ER0ZYKHRvX2k5MTUoZGV2KSkpCisJCXJldHVy
biAtRU5PREVWOworCiAJLyogT25seSBoYW5kbGUgc2V0dGluZyBkb21haW5zIHRvIHR5cGVzIHVz
ZWQgYnkgdGhlIENQVS4gKi8KIAlpZiAoKHdyaXRlX2RvbWFpbiB8IHJlYWRfZG9tYWlucykgJiBJ
OTE1X0dFTV9HUFVfRE9NQUlOUykKIAkJcmV0dXJuIC1FSU5WQUw7Ci0tIAoyLjI2LjMKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
