Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC95D17441D
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 02:21:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 128936F53C;
	Sat, 29 Feb 2020 01:21:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A629E6F53C
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Feb 2020 01:21:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 17:21:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,498,1574150400"; d="scan'208";a="385661482"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga004.jf.intel.com with ESMTP; 28 Feb 2020 17:21:31 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Feb 2020 17:20:41 -0800
Message-Id: <20200229012042.27487-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915/huc: update TGL HuC to v7.0.12
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

VXBkYXRlIHRvIHRoZSBsYXRlc3QgYXZhaWxhYmxlIFRHTCBIdUMsIHdoaWNoIGluY2x1ZGVzIGNo
YW5nZXMgcmVxdWlyZWQKYnkgdGhlIG1lZGlhIHRlYW0uCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWxl
IENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpDYzogVG9u
eSBZZSA8dG9ueS55ZUBpbnRlbC5jb20+CkNjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2Fq
ZGVjemtvQGludGVsLmNvbT4KQ2M6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGlu
dGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMg
fCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwppbmRleCA1NDM0YzA3YWVmYTEu
LjE4Yzc1NTIwMzY4OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfdWNfZncuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5j
CkBAIC00Myw3ICs0Myw3IEBAIHZvaWQgaW50ZWxfdWNfZndfY2hhbmdlX3N0YXR1cyhzdHJ1Y3Qg
aW50ZWxfdWNfZncgKnVjX2Z3LAogICogZmVhdHVyZXMuCiAgKi8KICNkZWZpbmUgSU5URUxfVUNf
RklSTVdBUkVfREVGUyhmd19kZWYsIGd1Y19kZWYsIGh1Y19kZWYpIFwKLQlmd19kZWYoVElHRVJM
QUtFLCAgIDAsIGd1Y19kZWYodGdsLCAzNSwgMiwgMCksIGh1Y19kZWYodGdsLCAgNywgMCwgMykp
IFwKKwlmd19kZWYoVElHRVJMQUtFLCAgIDAsIGd1Y19kZWYodGdsLCAzNSwgMiwgMCksIGh1Y19k
ZWYodGdsLCAgNywgMCwgMTIpKSBcCiAJZndfZGVmKEVMS0hBUlRMQUtFLCAwLCBndWNfZGVmKGVo
bCwgMzMsIDAsIDQpLCBodWNfZGVmKGVobCwgIDksIDAsIDApKSBcCiAJZndfZGVmKElDRUxBS0Us
ICAgICAwLCBndWNfZGVmKGljbCwgMzMsIDAsIDApLCBodWNfZGVmKGljbCwgIDksIDAsIDApKSBc
CiAJZndfZGVmKENPRkZFRUxBS0UsICA1LCBndWNfZGVmKGNtbCwgMzMsIDAsIDApLCBodWNfZGVm
KGNtbCwgIDQsIDAsIDApKSBcCi0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
