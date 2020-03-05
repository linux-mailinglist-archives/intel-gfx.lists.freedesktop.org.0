Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0EFE17AFA9
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 21:25:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 408A16E0FD;
	Thu,  5 Mar 2020 20:25:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A83D6E0FD
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 20:25:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 12:25:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,519,1574150400"; d="scan'208";a="352431859"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga001.fm.intel.com with ESMTP; 05 Mar 2020 12:25:18 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Mar 2020 12:24:35 -0800
Message-Id: <20200305202435.1284242-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Don't treat unslice registers as
 masked
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
Cc: Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIFVOU0xJQ0VfVU5JVF9MRVZFTF9DTEtHQVRFIGFuZCBVTlNMSUNFX1VOSVRfTEVWRUxfQ0xL
R0FURTIgcmVnaXN0ZXJzCnRoYXQgd2UgdXBkYXRlIGluIGEgZmV3IGVuZ2luZSB3b3JrYXJvdW5k
cyBhcmUgbm90IG1hc2tlZCByZWdpc3RlcnMKKGkuZS4sIHdlIGRvbid0IGhhdmUgdG8gd3JpdGUg
YSBtYXNrIGJpdCBpbiB0aGUgdG9wIDE2IGJpdHMgd2hlbgp1cGRhdGluZyBvbmUgb2YgdGhlIGxv
d2VyIDE2IGJpdHMpLiAgQXMgc3VjaCwgdGhlc2Ugd29ya2Fyb3VuZHMgc2hvdWxkCmJlIGFwcGxp
ZWQgdmlhIHdhX3dyaXRlX29yKCkgcmF0aGVyIHRoYW4gd2FfbWFza2VkX2VuKCkKClJlcG9ydGVk
LWJ5OiBOaWNrIERlc2F1bG5pZXJzIDxuZGVzYXVsbmllcnNAZ29vZ2xlLmNvbT4KRml4ZXM6IDUw
MTQ4YTI1Zjg0MSAoImRybS9pOTE1L3RnbDogTW92ZSBhbmQgcmVzdHJpY3QgV2FfMTQwODYxNTA3
MiIpCkZpeGVzOiAzNTUxZmY5Mjg3NDQgKCJkcm0vaTkxNS9nZW4xMTogTW92aW5nIFdBcyB0byBy
Y3NfZW5naW5lX3dhX2luaXQoKSIpCkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVy
QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jIHwgMTIgKysrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jCmluZGV4IDkwOGE3MDkxNDM5OS4uYjQ3ODUyMTJmYjdkIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKQEAgLTEzODIsOCArMTM4Miw4IEBAIHJjc19l
bmdpbmVfd2FfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0cnVjdCBpOTE1
X3dhX2xpc3QgKndhbCkKIAkJd2FfbWFza2VkX2VuKHdhbCwgR0VOOV9ST1dfQ0hJQ0tFTjQsIEdF
TjEyX0RJU0FCTEVfVERMX1BVU0gpOwogCiAJCS8qIFdhXzE0MDg2MTUwNzI6dGdsICovCi0JCXdh
X21hc2tlZF9lbih3YWwsIFVOU0xJQ0VfVU5JVF9MRVZFTF9DTEtHQVRFMiwKLQkJCSAgICAgVlNV
TklUX0NMS0dBVEVfRElTX1RHTCk7CisJCXdhX3dyaXRlX29yKHdhbCwgVU5TTElDRV9VTklUX0xF
VkVMX0NMS0dBVEUyLAorCQkJICAgIFZTVU5JVF9DTEtHQVRFX0RJU19UR0wpOwogCX0KIAogCWlm
IChJU19USUdFUkxBS0UoaTkxNSkpIHsKQEAgLTE0NjcsMTIgKzE0NjcsMTIgQEAgcmNzX2VuZ2lu
ZV93YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgc3RydWN0IGk5MTVfd2Ff
bGlzdCAqd2FsKQogCQkgKiBXYV8xNDA4NjE1MDcyOmljbCxlaGwgICh2c3VuaXQpCiAJCSAqIFdh
XzE0MDc1OTYyOTQ6aWNsLGVobCAgKGhzdW5pdCkKIAkJICovCi0JCXdhX21hc2tlZF9lbih3YWws
IFVOU0xJQ0VfVU5JVF9MRVZFTF9DTEtHQVRFLAotCQkJICAgICBWU1VOSVRfQ0xLR0FURV9ESVMg
fCBIU1VOSVRfQ0xLR0FURV9ESVMpOworCQl3YV93cml0ZV9vcih3YWwsIFVOU0xJQ0VfVU5JVF9M
RVZFTF9DTEtHQVRFLAorCQkJICAgIFZTVU5JVF9DTEtHQVRFX0RJUyB8IEhTVU5JVF9DTEtHQVRF
X0RJUyk7CiAKIAkJLyogV2FfMTQwNzM1MjQyNzppY2wsZWhsICovCi0JCXdhX21hc2tlZF9lbih3
YWwsIFVOU0xJQ0VfVU5JVF9MRVZFTF9DTEtHQVRFMiwKLQkJCSAgICAgUFNEVU5JVF9DTEtHQVRF
X0RJUyk7CisJCXdhX3dyaXRlX29yKHdhbCwgVU5TTElDRV9VTklUX0xFVkVMX0NMS0dBVEUyLAor
CQkJICAgIFBTRFVOSVRfQ0xLR0FURV9ESVMpOwogCiAJCS8qIFdhXzE0MDY2ODAxNTk6aWNsLGVo
bCAqLwogCQl3YV93cml0ZV9vcih3YWwsCi0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
