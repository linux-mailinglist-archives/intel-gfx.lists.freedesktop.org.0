Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77323197BCF
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 14:27:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDD066E286;
	Mon, 30 Mar 2020 12:27:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 248FC6E287
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 12:27:39 +0000 (UTC)
IronPort-SDR: kbaiT3BoPXecghY74rX2CSBGmj2txWszL59Lyq+khntwde4tljG25tfAfx3kodx3DlO2/Dj8pw
 suGmCmzBgoQg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 05:27:39 -0700
IronPort-SDR: 6dY8ec3brX584UHD03ilpjvNEArPPbS47uqDSmsTu+RamWMVmo2othgoqg0Nj8MY0bDyf8BchO
 nP/HKYpvidlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,324,1580803200"; d="scan'208";a="248684159"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga003.jf.intel.com with ESMTP; 30 Mar 2020 05:27:36 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 15:23:50 +0300
Message-Id: <20200330122354.24752-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200330122354.24752-1-stanislav.lisovskiy@intel.com>
References: <20200330122354.24752-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/5] drm/i915: Decouple cdclk calculation
 from modeset checks
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

V2UgbmVlZCB0byBjYWxjdWxhdGUgY2RjbGsgYWZ0ZXIgd2F0ZXJtYXJrcy9kZGIgaGFzIGJlZW4g
Y2FsY3VsYXRlZAphcyB3aXRoIHJlY2VudCBodyBDRENMSyBuZWVkcyB0byBiZSBhZGp1c3RlZCBh
Y2NvcmRpbmdseSB0byBEQnVmCnJlcXVpcmVtZW50cywgd2hpY2ggaXMgbm90IHBvc3NpYmxlIHdp
dGggY3VycmVudCBjb2RlIG9yZ2FuaXphdGlvbi4KClNldHRpbmcgQ0RDTEsgYWNjb3JkaW5nIHRv
IERCdWYgQlcgcmVxdWlyZW1lbnRzIGFuZCBub3QganVzdCByZWplY3RpbmcKaWYgaXQgZG9lc24n
dCBzYXRpc2Z5IEJXIHJlcXVpcmVtZW50cywgd2lsbCBhbGxvdyB1cyB0byBzYXZlIHBvd2VyIHdo
ZW4KaXQgaXMgcG9zc2libGUgYW5kIGdhaW4gYWRkaXRpb25hbCBiYW5kd2lkdGggd2hlbiBpdCdz
IG5lZWRlZCAtIGkuZQpib29zdGluZyBib3RoIG91ciBwb3dlciBtYW5hZ2VtZW50IGFuZCBwZXJm
b21hbmNlIGNhcGFiaWxpdGllcy4KClRoaXMgcGF0Y2ggaXMgcHJlcGFyYXRpb24gZm9yIHRoYXQs
IGZpcnN0IHdlIG5vdyBleHRyYWN0IG1vZGVzZXQKY2FsY3VsYXRpb24gZnJvbSBtb2Rlc2V0IGNo
ZWNrcywgaW4gb3JkZXIgdG8gY2FsbCBpdCBhZnRlciB3bS9kZGIKaGFzIGJlZW4gY2FsY3VsYXRl
ZC4KCnYyOiAtIEV4dHJhY3Qgb25seSBpbnRlbF9tb2Rlc2V0X2NhbGNfY2RjbGsgZnJvbSBpbnRl
bF9tb2Rlc2V0X2NoZWNrcwogICAgICAoVmlsbGUgU3lyasOkbMOkKQoKU2lnbmVkLW9mZi1ieTog
U3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxOCArKysrKysr
KysrLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5k
ZXggN2M0NWQ2NzZjOWI3Li4xN2Q4M2YzN2Y0OWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNDU0NSwxMCArMTQ1NDUsNiBAQCBzdGF0aWMg
aW50IGludGVsX21vZGVzZXRfY2hlY2tzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
KQogCQkJcmV0dXJuIHJldDsKIAl9CiAKLQlyZXQgPSBpbnRlbF9tb2Rlc2V0X2NhbGNfY2RjbGso
c3RhdGUpOwotCWlmIChyZXQpCi0JCXJldHVybiByZXQ7Ci0KIAlpbnRlbF9tb2Rlc2V0X2NsZWFy
X3BsbHMoc3RhdGUpOwogCiAJaWYgKElTX0hBU1dFTEwoZGV2X3ByaXYpKQpAQCAtMTQ4ODIsMTAg
KzE0ODc4LDYgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2soc3RydWN0IGRybV9kZXZp
Y2UgKmRldiwKIAkJCWdvdG8gZmFpbDsKIAl9CiAKLQlyZXQgPSBpbnRlbF9hdG9taWNfY2hlY2tf
Y3J0Y3Moc3RhdGUpOwotCWlmIChyZXQpCi0JCWdvdG8gZmFpbDsKLQogCWludGVsX2ZiY19jaG9v
c2VfY3J0YyhkZXZfcHJpdiwgc3RhdGUpOwogCXJldCA9IGNhbGNfd2F0ZXJtYXJrX2RhdGEoc3Rh
dGUpOwogCWlmIChyZXQpCkBAIC0xNDg5NSw2ICsxNDg4NywxNiBAQCBzdGF0aWMgaW50IGludGVs
X2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCWlmIChyZXQpCiAJCWdvdG8g
ZmFpbDsKIAorCWlmIChhbnlfbXMpIHsKKwkJcmV0ID0gaW50ZWxfbW9kZXNldF9jYWxjX2NkY2xr
KHN0YXRlKTsKKwkJaWYgKHJldCkKKwkJCXJldHVybiByZXQ7CisJfQorCisJcmV0ID0gaW50ZWxf
YXRvbWljX2NoZWNrX2NydGNzKHN0YXRlKTsKKwlpZiAocmV0KQorCQlnb3RvIGZhaWw7CisKIAlm
b3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNf
c3RhdGUsCiAJCQkJCSAgICBuZXdfY3J0Y19zdGF0ZSwgaSkgewogCQlpZiAoIW5lZWRzX21vZGVz
ZXQobmV3X2NydGNfc3RhdGUpICYmCi0tIAoyLjI0LjEuNDg1LmdhZDA1YTNkOGU1CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
