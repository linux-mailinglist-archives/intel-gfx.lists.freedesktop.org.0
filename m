Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EA338156D
	for <lists+intel-gfx@lfdr.de>; Sat, 15 May 2021 05:10:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F1936F4D3;
	Sat, 15 May 2021 03:10:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6DD36F4D3
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 May 2021 03:10:42 +0000 (UTC)
IronPort-SDR: Wl4IZ//QJH9ps9NjKN1aJbdTByG5GbE2cEFlGPCydgqftHtTivYEdgKwLWUTc9uajFPEfMlh5Y
 6IG26hor8kMA==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="187383699"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="187383699"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 20:10:41 -0700
IronPort-SDR: UiF2S9/91YJS9KuHb8uHYqbJEMwLtmhm0wAv1qmp7M/P3CEiEf4gN5miVVpWKNWPxgGZkxdQt6
 FbBmXUHJLw0g==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="392901182"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 20:10:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 20:10:20 -0700
Message-Id: <20210515031035.2561658-9-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210515031035.2561658-1-matthew.d.roper@intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 08/23] drm/i915/adl_p: Handle TC cold
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpPbiBB
REwtUCBUQyBjb2xkIGlzIGV4aXRlZCBhbmQgYmxvY2tlZCB3aGVuIGxlZ2FjeSBhdXggaXMgcG93
ZXJlZCwKdGhhdCBpcyBleGFjbHkgdGhlIHNhbWUgb2Ygd2hhdCBJQ0wgbmVlZCBmb3Igc3RhdGlj
IFRDIHBvcnRzLgoKVE9ETzogV2hlbiBhIFRCVCBodWIgb3IgbW9uaXRvciBpcyBjb25uZWN0ZWQg
aXQgd2lsbCBjYXVzZSBUQlQgYW5kCmxlZ2FjeSBhdXggdG8gYmUgcG93ZXJlZCBhdCB0aGUgc2Ft
ZSB0aW1lLCBob3BlZnVsbHkgdGhpcyB3aWxsIG5vdApjYXVzZSBhbnkgaXNzdWVzIGJ1dCBpZiBp
dCBkbywgc29tZSByZXdvcmsgd2lsbCBiZSBuZWVkZWQuCgp2MjoKIC0gc2tpcCBpY2xfdGNfcG9y
dF9hc3NlcnRfcmVmX2hlbGQoKSB3YXJuIG9uLCBhZGwtcCB1c2VzIGF1eCB0bwogICBibG9jayBU
QyBjb2xkCgpCU3BlYzogNTU0ODAKQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5j
b20+ClNpZ25lZC1vZmYtYnk6IENsaW50b24gVGF5bG9yIDxDbGludG9uLkEuVGF5bG9yQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIu
YyB8IDMgKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgICAgICAg
ICAgICB8IDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9wb3dlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3Bvd2VyLmMKaW5kZXggNTRjNmQ2NTAxMWVlLi4yOWQyZjFkMGNmZmQgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCkBAIC01NTEs
NyArNTUxLDggQEAgc3RhdGljIHZvaWQgaWNsX3RjX3BvcnRfYXNzZXJ0X3JlZl9oZWxkKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlpZiAoZHJtX1dBUk5fT04oJmRldl9wcml2
LT5kcm0sICFkaWdfcG9ydCkpCiAJCXJldHVybjsKIAotCWlmIChESVNQTEFZX1ZFUihkZXZfcHJp
dikgPT0gMTEgJiYgZGlnX3BvcnQtPnRjX2xlZ2FjeV9wb3J0KQorCWlmIChJU19BTERFUkxBS0Vf
UChkZXZfcHJpdikgfHwKKwkgICAgKERJU1BMQVlfVkVSKGRldl9wcml2KSA9PSAxMSAmJiBkaWdf
cG9ydC0+dGNfbGVnYWN5X3BvcnQpKQogCQlyZXR1cm47CiAKIAlkcm1fV0FSTl9PTigmZGV2X3By
aXYtPmRybSwgIWludGVsX3RjX3BvcnRfcmVmX2hlbGQoZGlnX3BvcnQpKTsKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYwppbmRleCBlMzI1NDYzYWNkZGQuLjFiMTA4ZGVhNWZl
ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYwpAQCAtMjgsNyArMjgs
NyBAQCB0Y19jb2xkX2dldF9wb3dlcl9kb21haW4oc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAq
ZGlnX3BvcnQpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRp
Z19wb3J0LT5iYXNlLmJhc2UuZGV2KTsKIAotCWlmIChESVNQTEFZX1ZFUihpOTE1KSA9PSAxMSkK
KwlpZiAoSVNfQUxERVJMQUtFX1AoaTkxNSkgfHwgRElTUExBWV9WRVIoaTkxNSkgPT0gMTEpCiAJ
CXJldHVybiBpbnRlbF9sZWdhY3lfYXV4X3RvX3Bvd2VyX2RvbWFpbihkaWdfcG9ydC0+YXV4X2No
KTsKIAllbHNlCiAJCXJldHVybiBQT1dFUl9ET01BSU5fVENfQ09MRF9PRkY7Ci0tIAoyLjI1LjQK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
