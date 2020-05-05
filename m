Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DF81C59A3
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 16:32:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AB8089EB8;
	Tue,  5 May 2020 14:32:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F307889EB8
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 14:32:32 +0000 (UTC)
IronPort-SDR: 3RA6w79mp9slM1Ui5cpnhmlBUMMjIGxbV1Fx1HKXRW2W2gHEFSCdhEeJubzWeNTz7TCBIrKh2Q
 Y/1pyjP3ArtQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 07:32:32 -0700
IronPort-SDR: Cw8My6TrevPYV3rC0zhl3E5EbXfpTyj3ZegNGL/usQuT4XXPCQD4BI9NCzP93Q8DysKwsuBuwY
 LHiiAGSTYzfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,355,1583222400"; d="scan'208";a="434505737"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga005.jf.intel.com with ESMTP; 05 May 2020 07:32:30 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 May 2020 17:28:12 +0300
Message-Id: <20200505142816.13021-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200505142816.13021-1-stanislav.lisovskiy@intel.com>
References: <20200505142816.13021-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 1/5] drm/i915: Decouple cdclk calculation
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
bF9tb2Rlc2V0X2NoZWNrcwogICAgICAoVmlsbGUgU3lyasOkbMOkKQoKdjM6IC0gQ2xlYXIgcGxs
cyBhZnRlciBpbnRlbF9tb2Rlc2V0X2NhbGNfY2RjbGsKCnY0OiAtIEFkZGVkIHItYiBmcm9tIHBy
ZXZpb3VzIHJldmlzaW9uIHRvIGNvbW1pdCBtZXNzYWdlCgpSZXZpZXdlZC1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogU3Rh
bmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAyMiArKysrKysrKysr
Ky0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5k
ZXggZmQ2ZDYzYjAzNDg5Li4zYmY2NzUxNDk3YzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNDQ5MywxMiArMTQ0OTMsNiBAQCBzdGF0aWMg
aW50IGludGVsX21vZGVzZXRfY2hlY2tzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
KQogCQkJcmV0dXJuIHJldDsKIAl9CiAKLQlyZXQgPSBpbnRlbF9tb2Rlc2V0X2NhbGNfY2RjbGso
c3RhdGUpOwotCWlmIChyZXQpCi0JCXJldHVybiByZXQ7Ci0KLQlpbnRlbF9tb2Rlc2V0X2NsZWFy
X3BsbHMoc3RhdGUpOwotCiAJaWYgKElTX0hBU1dFTEwoZGV2X3ByaXYpKQogCQlyZXR1cm4gaHN3
X21vZGVfc2V0X3BsYW5lc193b3JrYXJvdW5kKHN0YXRlKTsKIApAQCAtMTQ4MzAsMTAgKzE0ODI0
LDYgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2soc3RydWN0IGRybV9kZXZpY2UgKmRl
diwKIAkJCWdvdG8gZmFpbDsKIAl9CiAKLQlyZXQgPSBpbnRlbF9hdG9taWNfY2hlY2tfY3J0Y3Mo
c3RhdGUpOwotCWlmIChyZXQpCi0JCWdvdG8gZmFpbDsKLQogCWludGVsX2ZiY19jaG9vc2VfY3J0
YyhkZXZfcHJpdiwgc3RhdGUpOwogCXJldCA9IGNhbGNfd2F0ZXJtYXJrX2RhdGEoc3RhdGUpOwog
CWlmIChyZXQpCkBAIC0xNDg0Myw2ICsxNDgzMywxOCBAQCBzdGF0aWMgaW50IGludGVsX2F0b21p
Y19jaGVjayhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCWlmIChyZXQpCiAJCWdvdG8gZmFpbDsK
IAorCWlmIChhbnlfbXMpIHsKKwkJcmV0ID0gaW50ZWxfbW9kZXNldF9jYWxjX2NkY2xrKHN0YXRl
KTsKKwkJaWYgKHJldCkKKwkJCXJldHVybiByZXQ7CisKKwkJaW50ZWxfbW9kZXNldF9jbGVhcl9w
bGxzKHN0YXRlKTsKKwl9CisKKwlyZXQgPSBpbnRlbF9hdG9taWNfY2hlY2tfY3J0Y3Moc3RhdGUp
OworCWlmIChyZXQpCisJCWdvdG8gZmFpbDsKKwogCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRj
X2luX3N0YXRlKHN0YXRlLCBjcnRjLCBvbGRfY3J0Y19zdGF0ZSwKIAkJCQkJICAgIG5ld19jcnRj
X3N0YXRlLCBpKSB7CiAJCWlmICghbmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkgJiYKLS0g
CjIuMjQuMS40ODUuZ2FkMDVhM2Q4ZTUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
