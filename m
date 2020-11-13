Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D86D2B2072
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 17:28:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 799786E55C;
	Fri, 13 Nov 2020 16:28:31 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A9236E550;
 Fri, 13 Nov 2020 16:28:29 +0000 (UTC)
IronPort-SDR: iaey56MBYjD0T1QDvbnDXrQ7bVh/cNybt888RjqHrgSewy/KFLr1FLAl+ELiEBlrH9d4+/QMUk
 PuH4Edqi0ayA==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="232113221"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="232113221"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 08:28:28 -0800
IronPort-SDR: RyiY0Spqv3L9+E3SrJNB76ldjkjN50u9bc7y0ECvThFYt2161whJaMkFQMT/2graS6rbgc9fB2
 Qp9MmLyNOzPw==
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="474721208"
Received: from shalomzo-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.180.188])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 08:28:27 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 13 Nov 2020 16:27:31 +0000
Message-Id: <20201113162736.2434791-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC i-g-t 0/5] User friendly lsgpu/intel_gpu_top
 device listing
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClBsZWFzZSBz
ZWUgaW5kaXZpZHVhbCBwYXRoIGNvbW1pdCBtZXNzYWdlcyBmb3IgZGV0YWlscywgYnV0IGVzc2Vu
dGlhbGx5IEkKaW1wbGVtZW50ZWQgdGhpczoKCiQgc3VkbyB0b29scy9sc2dwdQpjYXJkMSAgICAg
ICAgICAgICAgICAgICA4MDg2OjQ5MDUgICAgZHJtOi9kZXYvZHJpL2NhcmQxCuKUlOKUgHJlbmRl
ckQxMjkgICAgICAgICAgICAgICAgICAgICAgICAgZHJtOi9kZXYvZHJpL3JlbmRlckQxMjkKY2Fy
ZDAgICAgICAgICAgICAgICAgICAgODA4NjozRTk4ICAgIGRybTovZGV2L2RyaS9jYXJkMArilJTi
lIByZW5kZXJEMTI4ICAgICAgICAgICAgICAgICAgICAgICAgIGRybTovZGV2L2RyaS9yZW5kZXJE
MTI4CgokIHN1ZG8gdG9vbHMvbHNncHUgLS1wY2kKY2FyZDEgICAgICAgICAgICAgICAgICAgODA4
Njo0OTA1ICAgIHBjaTp2ZW5kb3I9ODA4NixkZXZpY2U9NDkwNSxjYXJkPTAK4pSU4pSAcmVuZGVy
RDEyOQpjYXJkMCAgICAgICAgICAgICAgICAgICA4MDg2OjNFOTggICAgcGNpOnZlbmRvcj04MDg2
LGRldmljZT0zRTk4LGNhcmQ9MArilJTilIByZW5kZXJEMTI4CgokIHN1ZG8gdG9vbHMvbHNncHUg
LS1zeXNmcwpjYXJkMSAgICAgICAgICAgICAgICAgICA4MDg2OjQ5MDUgICAgc3lzOi9zeXMvZGV2
aWNlcy9wY2kwMDAwOjAwLzAwMDA6MDA6MDEuMC8wMDAwOjAxOjAwLjAvMDAwMDowMjowMS4wLzAw
MDA6MDM6MDAuMArilJTilIByZW5kZXJEMTI5ICAgICAgICAgICAgICAgICAgICAgICAgIHN5czov
c3lzL2RldmljZXMvcGNpMDAwMDowMC8wMDAwOjAwOjAxLjAvMDAwMDowMTowMC4wLzAwMDA6MDI6
MDEuMC8wMDAwOjAzOjAwLjAvZHJtL3JlbmRlckQxMjkKY2FyZDAgICAgICAgICAgICAgICAgICAg
ODA4NjozRTk4ICAgIHN5czovc3lzL2RldmljZXMvcGNpMDAwMDowMC8wMDAwOjAwOjAyLjAK4pSU
4pSAcmVuZGVyRDEyOCAgICAgICAgICAgICAgICAgICAgICAgICBzeXM6L3N5cy9kZXZpY2VzL3Bj
aTAwMDA6MDAvMDAwMDowMDowMi4wL2RybS9yZW5kZXJEMTI4CgpJIG5lZWQgdG8gZmluZCBhIG1h
Y2hpbmUgd2l0aCB0d28gR1BVcyBvZiB0aGUgc2FtZSBkZXZpY2UgaWQgdG8gZmluaXNoIHRlc3Rp
bmcKdGhpcyBoZW5jZSBzdGlsbCBSRkMuCgpUdnJ0a28gVXJzdWxpbiAoNSk6CiAgaW50ZWxfZ3B1
X3RvcDogVXNlciBmcmllbmRseSBkZXZpY2UgbGlzdGluZwogIGxzZ3B1OiBVc2VyIGZyaWVuZGx5
IGRldmljZSBsaXN0aW5nCiAgbGliL2lndF9kZXZpY2Vfc2NhbjogUmVtZW1iZXIgUENJIGNhcmQg
aW5kZXggYWZ0ZXIgc2Nhbm5pbmcKICBsc2dwdTogQWRkIGZpbHRlciB0eXBlIHByaW50LW91dCBz
ZWxlY3Rpb24KICBpbnRlbF9ncHVfdG9wOiBEZWZhdWx0IEdQVSBsaXN0IHRvIFBDSSBtb2RlCgog
bGliL2lndF9kZXZpY2Vfc2Nhbi5jIHwgMjA1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKystLS0tLQogbGliL2lndF9kZXZpY2Vfc2Nhbi5oIHwgIDE2ICsrKy0KIHRvb2xzL2lu
dGVsX2dwdV90b3AuYyB8ICAgOCArLQogdG9vbHMvbHNncHUuYyAgICAgICAgIHwgIDM4ICsrKysr
Ky0tCiA0IGZpbGVzIGNoYW5nZWQsIDIzMyBpbnNlcnRpb25zKCspLCAzNCBkZWxldGlvbnMoLSkK
Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
