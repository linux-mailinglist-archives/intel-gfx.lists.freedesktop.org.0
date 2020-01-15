Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2719A13CF66
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 22:48:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 522D26EB5F;
	Wed, 15 Jan 2020 21:48:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9ED16EB60
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 21:48:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 13:48:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,323,1574150400"; d="scan'208";a="373067290"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by orsmga004.jf.intel.com with ESMTP; 15 Jan 2020 13:48:15 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jan 2020 23:45:54 +0200
Message-Id: <20200115214556.2052-4-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200115214556.2052-1-stanislav.lisovskiy@intel.com>
References: <20200115214556.2052-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v12 3/5] drm/i915: Manipulate DBuf slices
 properly
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

U3RhcnQgbWFuaXB1bGF0aW5nIERCdWYgc2xpY2VzIGFzIGEgbWFzaywKYnV0IG5vdCBhcyBhIHRv
dGFsIG51bWJlciwgYXMgY3VycmVudCBhcHByb2FjaApkb2Vzbid0IGdpdmUgdXMgZnVsbCBjb250
cm9sIG9uIGFsbCBjb21iaW5hdGlvbnMKb2Ygc2xpY2VzLCB3aGljaCB3ZSBtaWdodCBuZWVkKGxp
a2UgZW5hYmxpbmcgUzIKb25seSBjYW4ndCBlbmFibGVkIGJ5IHNldHRpbmcgZW5hYmxlZF9zbGlj
ZXM9MSkuCgpSZW1vdmVkIHdyb25nIGNvZGUgZnJvbSBpbnRlbF9nZXRfZGRiX3NpemUgYXMKaXQg
ZG9lc24ndCBtYXRjaCB0byBCU3BlYy4gRm9yIG5vdyBzdGlsbCBqdXN0CnVzZSBEQnVmIHNsaWNl
IHVudGlsIHByb3BlciBhbGdvcml0aG0gaXMgaW1wbGVtZW50ZWQuCgpPdGhlciBtaW5vciBjb2Rl
IHJlZmFjdG9yaW5nIHRvIGdldCBwcmVwYXJlZApmb3IgbWFqb3IgREJ1ZiBhc3NpZ25tZW50IGNo
YW5nZXMgbGFuZGVkOgotIEFzIG5vdyBlbmFibGVkIHNsaWNlcyBjb250YWluIGEgbWFzawogIHdl
IHN0aWxsIG5lZWQgc29tZSB2YWx1ZSB3aGljaCBzaG91bGQKICByZWZsZWN0IGhvdyBtdWNoIERC
dWYgc2xpY2VzIGFyZSBzdXBwb3J0ZWQKICBieSB0aGUgcGxhdGZvcm0sIG5vdyBkZXZpY2UgaW5m
byBjb250YWlucwogIG51bV9zdXBwb3J0ZWRfZGJ1Zl9zbGljZXMuCi0gUmVtb3ZlZCB1bm5lZWRl
ZCBhc3NlcnRpb24gYXMgd2UgYXJlIG5vdwogIG1hbmlwdWxhdGluZyBzbGljZXMgaW4gYSBtb3Jl
IHByb3BlciB3YXkuCgp2MjogU3RhcnQgdXNpbmcgZW5hYmxlZF9zbGljZXMgaW4gZGV2X3ByaXYK
CnYzOiAiZW5hYmxlZF9zbGljZXMiIGlzIG5vdyAiZW5hYmxlZF9kYnVmX3NsaWNlc19tYXNrIiwK
ICAgIGFzIHRoaXMgbm93IHNpdHMgaW4gZGV2X3ByaXYgaW5kZXBlbmRlbnRseS4KCnY0OiAtIEZp
eGVkIGRlYnVnIHByaW50IGZvcm1hdHRpbmcgdG8gaGV4KE1hdHQgUm9wZXIpCiAgICAtIE9wdGlt
aXplZCBkYnVmIHNsaWNlIHVwZGF0ZXMgdG8gYmUgdXNlZCBvbmx5CiAgICAgIGlmIHNsaWNlIHVu
aW9uIGlzIGRpZmZlcmVudCBmcm9tIGN1cnJlbnQgY29uZihNYXR0IFJvcGVyKQogICAgLSBGaXhl
ZCBzb21lIGZ1bmN0aW9ucyB0byBiZSBzdGF0aWMoTWF0dCBSb3BlcikKICAgIC0gQ3JlYXRlZCBh
IHBhcmFtZXRlcml6ZWQgdmVyc2lvbiBmb3IgREJVRl9DVEwgdG8KICAgICAgc2ltcGxpZnkgREJ1
ZiBwcm9ncmFtbWluZyBjeWNsZShNYXR0IFJvcGVyKQogICAgLSBSZW1vdmVkIHVucmVxdXJlZCBm
aWVsZCBmcm9tIEdFTjEwX0ZFQVRVUkVTKE1hdHQgUm9wZXIpCgp2NTogLSBSZW1vdmVkIHJlZHVu
ZGFudCBwcm9ncmFtbWluZyBkYnVmIHNsaWNlcyBoZWxwZXIoVmlsbGUgU3lyasOkbMOkKQogICAg
LSBTdGFydGVkIHRvIHVzZSBwYXJhbWV0ZXJpemVkIGxvb3AgZm9yIGh3IHJlYWRvdXQgdG8gZ2V0
IHNsaWNlcwogICAgICAoVmlsbGUgU3lyasOkbMOkKQogICAgLSBBZGRlZCBiYWNrIGFzc2VydGlv
biBjaGVja2luZyBhbW91bnQgb2YgREJVRiBzbGljZXMgZW5hYmxlZAogICAgICBhZnRlciBEQyBz
dGF0ZXMgNS82IHRyYW5zaXRpb24sIGFsc28gYWRkZWQgbmV3IGFzc2VydGlvbgogICAgICBhcyBz
dGFydGluZyBmcm9tIElDTCBETUMgc2VlbXMgdG8gcmVzdG9yZSB0aGUgbGFzdCBEQnVmCiAgICAg
IHBvd2VyIHN0YXRlIHNldCwgcmF0aGVyIHRoYW4gcG93ZXIgdXAgYWxsIGRidWYgc2xpY2VzCiAg
ICAgIGFzIGFzc2VydGlvbiB3YXMgcHJldmlvdXNseSBleHBlY3RpbmcoVmlsbGUgU3lyasOkbMOk
KQoKdjY6IC0gTm93IHVzaW5nIGVudW0gZm9yIERCdWYgc2xpY2VzIGluIHRoaXMgcGF0Y2ggKFZp
bGxlIFN5cmrDpGzDpCkKICAgIC0gUmVtb3ZlZCBnZW4xMV9hc3NlcnRfZGJ1Zl9lbmFibGVkIGFu
ZCBwdXQgZ2VuOV9hc3NlcnRfZGJ1Zl9lbmFibGVkCiAgICAgIGJhY2ssIGFzIHdlIHJlYWxseSBu
ZWVkIHRvIGhhdmUgYSBzaW5nbGUgdW5pZmllZCBhc3NlcnQgaGVyZQogICAgICBob3dldmVyIGN1
cnJlbnRseSBlbmFibGluZyBhbHdheXMgc2xpY2UgMSBpcyBlbmZvcmNlZCBieSBCU3BlYywKICAg
ICAgc28gd2Ugd2lsbCBoYXZlIHRvIE9SIGVuYWJsZWQgc2xpY2VzIG1hc2sgd2l0aCAxIGluIG9y
ZGVyCiAgICAgIHRvIGJlIGNvbnNpc3RlbnQgd2l0aCBCU3BlYywgdGhhdCB3YXkgd2UgY2FuIHVu
aWZ5IHRoYXQKICAgICAgYXNzZXJ0aW9uIGFuZCBhZ2FpbnN0IHRoZSBhY3R1YWwgc3RhdGUgZnJv
bSB0aGUgZHJpdmVyLCBidXQKICAgICAgbm90IHNvbWUgaGFyZGNvZGVkIHZhbHVlLihjb25jbHVk
ZWQgd2l0aCBWaWxsZSkKICAgIC0gUmVtb3ZlIHBhcmFtZXRlcml6ZWQgREJVRl9DVEwgdmVyc2lv
biwgdG8gZXh0cmFjdCBpdCB0byBhbm90aGVyCiAgICAgIHBhdGNoLihWaWxsZSBTeXJqw6Rsw6Qp
CgpTaWduZWQtb2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5
QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyAgfCAyMyArKy0tLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dl
ci5jICAgIHwgOTUgKysrKysrKysrLS0tLS0tLS0tLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9wb3dlci5oICAgIHwgIDYgKysKIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oICAgICAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2ku
YyAgICAgICAgICAgICAgIHwgIDUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rldmlj
ZV9pbmZvLmggICAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgICAg
ICAgICAgICAgICB8IDY1ICsrKysrKy0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BtLmggICAgICAgICAgICAgICB8ICAyICstCiA5IGZpbGVzIGNoYW5nZWQsIDk4IGluc2VydGlv
bnMoKyksIDEwMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jCmluZGV4IDhiMDZlZjI5NjkzZS4uMDYxZGUxNjFiOTViIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTM3NzAsMTIg
KzEzNzcwLDEyIEBAIHN0YXRpYyB2b2lkIHZlcmlmeV93bV9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YywKIAogCXNrbF9waXBlX2RkYl9nZXRfaHdfc3RhdGUoY3J0YywgaHctPmRkYl95LCBo
dy0+ZGRiX3V2KTsKIAotCWh3X2VuYWJsZWRfc2xpY2VzID0gaW50ZWxfZW5hYmxlZF9kYnVmX3Ns
aWNlc19udW0oZGV2X3ByaXYpOworCWh3X2VuYWJsZWRfc2xpY2VzID0gaW50ZWxfZW5hYmxlZF9k
YnVmX3NsaWNlc19tYXNrKGRldl9wcml2KTsKIAogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDExICYmCi0JICAgIGh3X2VuYWJsZWRfc2xpY2VzICE9IGRldl9wcml2LT5lbmFibGVkX2RidWZf
c2xpY2VzX251bSkKLQkJRFJNX0VSUk9SKCJtaXNtYXRjaCBpbiBEQlVGIFNsaWNlcyAoZXhwZWN0
ZWQgJXUsIGdvdCAldSlcbiIsCi0JCQkgIGRldl9wcml2LT5lbmFibGVkX2RidWZfc2xpY2VzX251
bSwKKwkgICAgaHdfZW5hYmxlZF9zbGljZXMgIT0gZGV2X3ByaXYtPmVuYWJsZWRfZGJ1Zl9zbGlj
ZXNfbWFzaykKKwkJRFJNX0VSUk9SKCJtaXNtYXRjaCBpbiBEQlVGIFNsaWNlcyAoZXhwZWN0ZWQg
MHgleCwgZ290IDB4JXgpXG4iLAorCQkJICBkZXZfcHJpdi0+ZW5hYmxlZF9kYnVmX3NsaWNlc19t
YXNrLAogCQkJICBod19lbmFibGVkX3NsaWNlcyk7CiAKIAkvKiBwbGFuZXMgKi8KQEAgLTE1MTE5
LDIyICsxNTExOSwyMyBAQCBzdGF0aWMgdm9pZCBpbnRlbF91cGRhdGVfdHJhbnNfcG9ydF9zeW5j
X2NydGNzKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogc3RhdGljIHZvaWQgaWNsX2RidWZfc2xp
Y2VfcHJlX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIHsKIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7
Ci0JdTggaHdfZW5hYmxlZF9zbGljZXMgPSBkZXZfcHJpdi0+ZW5hYmxlZF9kYnVmX3NsaWNlc19u
dW07Ci0JdTggcmVxdWlyZWRfc2xpY2VzID0gc3RhdGUtPmVuYWJsZWRfZGJ1Zl9zbGljZXNfbnVt
OworCXU4IGh3X2VuYWJsZWRfc2xpY2VzID0gZGV2X3ByaXYtPmVuYWJsZWRfZGJ1Zl9zbGljZXNf
bWFzazsKKwl1OCByZXF1aXJlZF9zbGljZXMgPSBzdGF0ZS0+ZW5hYmxlZF9kYnVmX3NsaWNlc19t
YXNrOworCXU4IHNsaWNlc191bmlvbiA9IGh3X2VuYWJsZWRfc2xpY2VzIHwgcmVxdWlyZWRfc2xp
Y2VzOwogCiAJLyogSWYgMm5kIERCdWYgc2xpY2UgcmVxdWlyZWQsIGVuYWJsZSBpdCBoZXJlICov
Ci0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEgJiYgcmVxdWlyZWRfc2xpY2VzID4gaHdf
ZW5hYmxlZF9zbGljZXMpCi0JCWljbF9kYnVmX3NsaWNlc191cGRhdGUoZGV2X3ByaXYsIHJlcXVp
cmVkX3NsaWNlcyk7CisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEgJiYgc2xpY2VzX3Vu
aW9uICE9IGh3X2VuYWJsZWRfc2xpY2VzKQorCQlpY2xfZGJ1Zl9zbGljZXNfdXBkYXRlKGRldl9w
cml2LCBzbGljZXNfdW5pb24pOwogfQogCiBzdGF0aWMgdm9pZCBpY2xfZGJ1Zl9zbGljZV9wb3N0
X3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIHsKIAlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7Ci0JdTgg
aHdfZW5hYmxlZF9zbGljZXMgPSBkZXZfcHJpdi0+ZW5hYmxlZF9kYnVmX3NsaWNlc19udW07Ci0J
dTggcmVxdWlyZWRfc2xpY2VzID0gc3RhdGUtPmVuYWJsZWRfZGJ1Zl9zbGljZXNfbnVtOworCXU4
IGh3X2VuYWJsZWRfc2xpY2VzID0gZGV2X3ByaXYtPmVuYWJsZWRfZGJ1Zl9zbGljZXNfbWFzazsK
Kwl1OCByZXF1aXJlZF9zbGljZXMgPSBzdGF0ZS0+ZW5hYmxlZF9kYnVmX3NsaWNlc19tYXNrOwog
CiAJLyogSWYgMm5kIERCdWYgc2xpY2UgaXMgbm8gbW9yZSByZXF1aXJlZCBkaXNhYmxlIGl0ICov
Ci0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEgJiYgcmVxdWlyZWRfc2xpY2VzIDwgaHdf
ZW5hYmxlZF9zbGljZXMpCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEgJiYgcmVxdWly
ZWRfc2xpY2VzICE9IGh3X2VuYWJsZWRfc2xpY2VzKQogCQlpY2xfZGJ1Zl9zbGljZXNfdXBkYXRl
KGRldl9wcml2LCByZXF1aXJlZF9zbGljZXMpOwogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCmluZGV4IDVlMWM2MDFmMGY5OS4u
NDUwM2Y1ZmFiNjNkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuYwpAQCAtMTUsNiArMTUsNyBAQAogI2luY2x1ZGUgImludGVsX2Rp
c3BsYXlfdHlwZXMuaCIKICNpbmNsdWRlICJpbnRlbF9kcGlvX3BoeS5oIgogI2luY2x1ZGUgImlu
dGVsX2hvdHBsdWcuaCIKKyNpbmNsdWRlICJpbnRlbF9wbS5oIgogI2luY2x1ZGUgImludGVsX3Np
ZGViYW5kLmgiCiAjaW5jbHVkZSAiaW50ZWxfdGMuaCIKICNpbmNsdWRlICJpbnRlbF92Z2EuaCIK
QEAgLTEwMjgsMTEgKzEwMjksMTIgQEAgc3RhdGljIGJvb2wgZ2VuOV9kY19vZmZfcG93ZXJfd2Vs
bF9lbmFibGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAogc3RhdGljIHZv
aWQgZ2VuOV9hc3NlcnRfZGJ1Zl9lbmFibGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKIHsKLQl1MzIgdG1wID0gSTkxNV9SRUFEKERCVUZfQ1RMKTsKKwl1OCBlbmFibGVkX2Ri
dWZfc2xpY2VzID0gaW50ZWxfZW5hYmxlZF9kYnVmX3NsaWNlc19tYXNrKGRldl9wcml2KTsKIAot
CVdBUk4oKHRtcCAmIChEQlVGX1BPV0VSX1NUQVRFIHwgREJVRl9QT1dFUl9SRVFVRVNUKSkgIT0K
LQkgICAgIChEQlVGX1BPV0VSX1NUQVRFIHwgREJVRl9QT1dFUl9SRVFVRVNUKSwKLQkgICAgICJV
bmV4cGVjdGVkIERCdWYgcG93ZXIgcG93ZXIgc3RhdGUgKDB4JTA4eClcbiIsIHRtcCk7CisJV0FS
TihlbmFibGVkX2RidWZfc2xpY2VzICE9IGRldl9wcml2LT5lbmFibGVkX2RidWZfc2xpY2VzX21h
c2ssCisJICAgICAiVW5leHBlY3RlZCBEQnVmIHBvd2VyIHBvd2VyIHN0YXRlICgweCUwOHgsIGV4
cGVjdGVkIDB4JTA4eClcbiIsCisJICAgICBlbmFibGVkX2RidWZfc2xpY2VzLAorCSAgICAgZGV2
X3ByaXYtPmVuYWJsZWRfZGJ1Zl9zbGljZXNfbWFzayk7CiB9CiAKIHN0YXRpYyB2b2lkIGdlbjlf
ZGlzYWJsZV9kY19zdGF0ZXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQpAQCAt
NDM5Niw3MiArNDM5OCw2MSBAQCBzdGF0aWMgdm9pZCBnZW45X2RidWZfZGlzYWJsZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJaW50ZWxfZGJ1Zl9zbGljZV9zZXQoZGV2X3By
aXYsIERCVUZfQ1RMLCBmYWxzZSk7CiB9CiAKLXN0YXRpYyB1OCBpbnRlbF9kYnVmX21heF9zbGlj
ZXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQoraW50IGludGVsX2RidWZfbWF4
X3NsaWNlcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7Ci0JaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPCAxMSkKLQkJcmV0dXJuIDE7Ci0JcmV0dXJuIDI7CisJcmV0dXJuIElO
VEVMX0lORk8oZGV2X3ByaXYpLT5udW1fc3VwcG9ydGVkX2RidWZfc2xpY2VzOwogfQogCiB2b2lk
IGljbF9kYnVmX3NsaWNlc191cGRhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LAogCQkJICAgIHU4IHJlcV9zbGljZXMpCiB7Ci0JY29uc3QgdTggaHdfZW5hYmxlZF9zbGljZXMg
PSBkZXZfcHJpdi0+ZW5hYmxlZF9kYnVmX3NsaWNlc19udW07Ci0JYm9vbCByZXQ7CisJaW50IGk7
CisJaW50IG1heF9zbGljZXMgPSBpbnRlbF9kYnVmX21heF9zbGljZXMoZGV2X3ByaXYpOwogCi0J
aWYgKHJlcV9zbGljZXMgPiBpbnRlbF9kYnVmX21heF9zbGljZXMoZGV2X3ByaXYpKSB7Ci0JCURS
TV9FUlJPUigiSW52YWxpZCBudW1iZXIgb2YgZGJ1ZiBzbGljZXMgcmVxdWVzdGVkXG4iKTsKLQkJ
cmV0dXJuOwotCX0KKwlXQVJOKGh3ZWlnaHQ4KHJlcV9zbGljZXMpID4gbWF4X3NsaWNlcywKKwkg
ICAgICJJbnZhbGlkIG51bWJlciBvZiBkYnVmIHNsaWNlcyByZXF1ZXN0ZWRcbiIpOwogCi0JaWYg
KHJlcV9zbGljZXMgPT0gaHdfZW5hYmxlZF9zbGljZXMgfHwgcmVxX3NsaWNlcyA9PSAwKQotCQly
ZXR1cm47CisJRFJNX0RFQlVHX0tNUygiVXBkYXRpbmcgZGJ1ZiBzbGljZXMgdG8gMHgleFxuIiwg
cmVxX3NsaWNlcyk7CiAKLQlpZiAocmVxX3NsaWNlcyA+IGh3X2VuYWJsZWRfc2xpY2VzKQotCQly
ZXQgPSBpbnRlbF9kYnVmX3NsaWNlX3NldChkZXZfcHJpdiwgREJVRl9DVExfUzIsIHRydWUpOwot
CWVsc2UKLQkJcmV0ID0gaW50ZWxfZGJ1Zl9zbGljZV9zZXQoZGV2X3ByaXYsIERCVUZfQ1RMX1My
LCBmYWxzZSk7CisJZm9yIChpID0gMDsgaSA8IG1heF9zbGljZXM7IGkrKykgeworCQl1OCBzbGlj
ZV9zZXQgPSByZXFfc2xpY2VzICYgQklUKGkpOworCisJCXN3aXRjaCAoaSkgeworCQljYXNlIERC
VUZfUzE6CisJCQlpbnRlbF9kYnVmX3NsaWNlX3NldChkZXZfcHJpdiwKKwkJCQkJICAgICBEQlVG
X0NUTF9TMSwKKwkJCQkJICAgICBzbGljZV9zZXQpOworCQkJYnJlYWs7CisJCWNhc2UgREJVRl9T
MjoKKwkJCWludGVsX2RidWZfc2xpY2Vfc2V0KGRldl9wcml2LAorCQkJCQkgICAgIERCVUZfQ1RM
X1MyLAorCQkJCQkgICAgIHNsaWNlX3NldCk7CisJCQlicmVhazsKKwkJZGVmYXVsdDoKKwkJCU1J
U1NJTkdfQ0FTRShpKTsKKwkJfQorCX0KIAotCWlmIChyZXQpCi0JCWRldl9wcml2LT5lbmFibGVk
X2RidWZfc2xpY2VzX251bSA9IHJlcV9zbGljZXM7CisJZGV2X3ByaXYtPmVuYWJsZWRfZGJ1Zl9z
bGljZXNfbWFzayA9IHJlcV9zbGljZXM7CiB9CiAKIHN0YXRpYyB2b2lkIGljbF9kYnVmX2VuYWJs
ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7Ci0JSTkxNV9XUklURShEQlVG
X0NUTF9TMSwgSTkxNV9SRUFEKERCVUZfQ1RMX1MxKSB8IERCVUZfUE9XRVJfUkVRVUVTVCk7Ci0J
STkxNV9XUklURShEQlVGX0NUTF9TMiwgSTkxNV9SRUFEKERCVUZfQ1RMX1MyKSB8IERCVUZfUE9X
RVJfUkVRVUVTVCk7Ci0JUE9TVElOR19SRUFEKERCVUZfQ1RMX1MyKTsKLQotCXVkZWxheSgxMCk7
Ci0KLQlpZiAoIShJOTE1X1JFQUQoREJVRl9DVExfUzEpICYgREJVRl9QT1dFUl9TVEFURSkgfHwK
LQkgICAgIShJOTE1X1JFQUQoREJVRl9DVExfUzIpICYgREJVRl9QT1dFUl9TVEFURSkpCi0JCURS
TV9FUlJPUigiREJ1ZiBwb3dlciBlbmFibGUgdGltZW91dFxuIik7Ci0JZWxzZQotCQkvKgotCQkg
KiBGSVhNRTogZm9yIG5vdyBwcmV0ZW5kIHRoYXQgd2Ugb25seSBoYXZlIDEgc2xpY2UsIHNlZQot
CQkgKiBpbnRlbF9lbmFibGVkX2RidWZfc2xpY2VzX251bSgpLgotCQkgKi8KLQkJZGV2X3ByaXYt
PmVuYWJsZWRfZGJ1Zl9zbGljZXNfbnVtID0gMTsKKwkvKgorCSAqIEp1c3QgcG93ZXIgdXAgMSBz
bGljZSwgd2Ugd2lsbAorCSAqIGZpZ3VyZSBvdXQgbGF0ZXIgd2hpY2ggc2xpY2VzIHdlIGhhdmUg
YW5kIHdoYXQgd2UgbmVlZC4KKwkgKi8KKwlkZXZfcHJpdi0+ZW5hYmxlZF9kYnVmX3NsaWNlc19t
YXNrID0gQklUKERCVUZfUzEpOworCWljbF9kYnVmX3NsaWNlc191cGRhdGUoZGV2X3ByaXYsIGRl
dl9wcml2LT5lbmFibGVkX2RidWZfc2xpY2VzX21hc2spOwogfQogCiBzdGF0aWMgdm9pZCBpY2xf
ZGJ1Zl9kaXNhYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKLQlJOTE1
X1dSSVRFKERCVUZfQ1RMX1MxLCBJOTE1X1JFQUQoREJVRl9DVExfUzEpICYgfkRCVUZfUE9XRVJf
UkVRVUVTVCk7Ci0JSTkxNV9XUklURShEQlVGX0NUTF9TMiwgSTkxNV9SRUFEKERCVUZfQ1RMX1My
KSAmIH5EQlVGX1BPV0VSX1JFUVVFU1QpOwotCVBPU1RJTkdfUkVBRChEQlVGX0NUTF9TMik7Ci0K
LQl1ZGVsYXkoMTApOwotCi0JaWYgKChJOTE1X1JFQUQoREJVRl9DVExfUzEpICYgREJVRl9QT1dF
Ul9TVEFURSkgfHwKLQkgICAgKEk5MTVfUkVBRChEQlVGX0NUTF9TMikgJiBEQlVGX1BPV0VSX1NU
QVRFKSkKLQkJRFJNX0VSUk9SKCJEQnVmIHBvd2VyIGRpc2FibGUgdGltZW91dCFcbiIpOwotCWVs
c2UKLQkJLyoKLQkJICogRklYTUU6IGZvciBub3cgcHJldGVuZCB0aGF0IHRoZSBmaXJzdCBzbGlj
ZSBpcyBhbHdheXMKLQkJICogZW5hYmxlZCwgc2VlIGludGVsX2VuYWJsZWRfZGJ1Zl9zbGljZXNf
bnVtKCkuCi0JCSAqLwotCQlkZXZfcHJpdi0+ZW5hYmxlZF9kYnVmX3NsaWNlc19udW0gPSAxOwor
CS8qCisJICogRGlzYWJsZSBhbGwgc2xpY2VzCisJICovCisJZGV2X3ByaXYtPmVuYWJsZWRfZGJ1
Zl9zbGljZXNfbWFzayA9IDA7CisJaWNsX2RidWZfc2xpY2VzX3VwZGF0ZShkZXZfcHJpdiwgZGV2
X3ByaXYtPmVuYWJsZWRfZGJ1Zl9zbGljZXNfbWFzayk7CiB9CiAKIHN0YXRpYyB2b2lkIGljbF9t
YnVzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaAppbmRleCAyNjA4
YTY1YWY3ZmEuLmQwN2JkYmUyMDQwYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmgKQEAgLTMwNywxMiArMzA3LDE4IEBAIGludGVs
X2Rpc3BsYXlfcG93ZXJfcHV0X2FzeW5jKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAog
fQogI2VuZGlmCiAKK2VudW0gZGJ1Zl9zbGljZSB7CisJREJVRl9TMSwKKwlEQlVGX1MyLAorfTsK
KwogI2RlZmluZSB3aXRoX2ludGVsX2Rpc3BsYXlfcG93ZXIoaTkxNSwgZG9tYWluLCB3ZikgXAog
CWZvciAoKHdmKSA9IGludGVsX2Rpc3BsYXlfcG93ZXJfZ2V0KChpOTE1KSwgKGRvbWFpbikpOyAo
d2YpOyBcCiAJICAgICBpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dF9hc3luYygoaTkxNSksIChkb21h
aW4pLCAod2YpKSwgKHdmKSA9IDApCiAKIHZvaWQgaWNsX2RidWZfc2xpY2VzX3VwZGF0ZShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCQkgICAgdTggcmVxX3NsaWNlcyk7Citp
bnQgaW50ZWxfZGJ1Zl9tYXhfc2xpY2VzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dik7CiAKIHZvaWQgY2h2X3BoeV9wb3dlcmdhdGVfbGFuZXMoc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIsCiAJCQkgICAgIGJvb2wgb3ZlcnJpZGUsIHVuc2lnbmVkIGludCBtYXNrKTsKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgK
aW5kZXggNmRjYTkwZWJjYTM1Li4wOWYxNGU5ZTc4NjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCkBAIC01MTgsNyArNTE4LDcg
QEAgc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSB7CiAJc3RydWN0IHNrbF9kZGJfdmFsdWVzIHdt
X3Jlc3VsdHM7CiAKIAkvKiBOdW1iZXIgb2YgZW5hYmxlZCBEQnVmIHNsaWNlcyAqLwotCXU4IGVu
YWJsZWRfZGJ1Zl9zbGljZXNfbnVtOworCXU4IGVuYWJsZWRfZGJ1Zl9zbGljZXNfbWFzazsKIAog
CXN0cnVjdCBpOTE1X3N3X2ZlbmNlIGNvbW1pdF9yZWFkeTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmgKaW5kZXggOWRiZjJlNTdiMDFiLi41Yjg5NWFkMzhmYmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaApAQCAtMTIwOCw3ICsxMjA4LDcgQEAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgewogCQli
b29sIGRpc3RydXN0X2Jpb3Nfd207CiAJfSB3bTsKIAotCXU4IGVuYWJsZWRfZGJ1Zl9zbGljZXNf
bnVtOyAvKiBHRU4xMSBoYXMgY29uZmlndXJhYmxlIDIgc2xpY2VzICovCisJdTggZW5hYmxlZF9k
YnVmX3NsaWNlc19tYXNrOyAvKiBHRU4xMSBoYXMgY29uZmlndXJhYmxlIDIgc2xpY2VzICovCiAK
IAlzdHJ1Y3QgZHJhbV9pbmZvIHsKIAkJYm9vbCB2YWxpZDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5j
CmluZGV4IDgzZjAxNDAxYjhiNS4uNmM2ZGFhNDRjNDM5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BjaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNp
LmMKQEAgLTYxNSw3ICs2MTUsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RldmljZV9p
bmZvIGNodl9pbmZvID0gewogCS5oYXNfZ3RfdWMgPSAxLCBcCiAJLmRpc3BsYXkuaGFzX2hkY3Ag
PSAxLCBcCiAJLmRpc3BsYXkuaGFzX2lwYyA9IDEsIFwKLQkuZGRiX3NpemUgPSA4OTYKKwkuZGRi
X3NpemUgPSA4OTYsIFwKKwkubnVtX3N1cHBvcnRlZF9kYnVmX3NsaWNlcyA9IDEKIAogI2RlZmlu
ZSBTS0xfUExBVEZPUk0gXAogCUdFTjlfRkVBVFVSRVMsIFwKQEAgLTY1MCw2ICs2NTEsNyBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZvIHNrbF9ndDRfaW5mbyA9IHsKICNk
ZWZpbmUgR0VOOV9MUF9GRUFUVVJFUyBcCiAJR0VOKDkpLCBcCiAJLmlzX2xwID0gMSwgXAorCS5u
dW1fc3VwcG9ydGVkX2RidWZfc2xpY2VzID0gMSwgXAogCS5kaXNwbGF5Lmhhc19ob3RwbHVnID0g
MSwgXAogCS5lbmdpbmVfbWFzayA9IEJJVChSQ1MwKSB8IEJJVChWQ1MwKSB8IEJJVChCQ1MwKSB8
IEJJVChWRUNTMCksIFwKIAkucGlwZV9tYXNrID0gQklUKFBJUEVfQSkgfCBCSVQoUElQRV9CKSB8
IEJJVChQSVBFX0MpLCBcCkBAIC03NzQsNiArNzc2LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBp
bnRlbF9kZXZpY2VfaW5mbyBjbmxfaW5mbyA9IHsKIAl9LCBcCiAJR0VOKDExKSwgXAogCS5kZGJf
c2l6ZSA9IDIwNDgsIFwKKwkubnVtX3N1cHBvcnRlZF9kYnVmX3NsaWNlcyA9IDIsIFwKIAkuaGFz
X2xvZ2ljYWxfcmluZ19lbHNxID0gMSwgXAogCS5jb2xvciA9IHsgLmRlZ2FtbWFfbHV0X3NpemUg
PSAzMywgLmdhbW1hX2x1dF9zaXplID0gMjYyMTQ1IH0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RldmljZV9pbmZvLmgKaW5kZXggMjcyNWNiN2ZjMTY5Li43ZDRkMTIyZDIxODIgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaApAQCAtMTgwLDYgKzE4MCw3IEBA
IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyB7CiAJfSBkaXNwbGF5OwogCiAJdTE2IGRkYl9zaXpl
OyAvKiBpbiBibG9ja3MgKi8KKwl1OCBudW1fc3VwcG9ydGVkX2RidWZfc2xpY2VzOyAvKiBudW1i
ZXIgb2YgREJ1ZiBzbGljZXMgKi8KIAogCS8qIFJlZ2lzdGVyIG9mZnNldHMgZm9yIHRoZSB2YXJp
b3VzIGRpc3BsYXkgcGlwZXMgYW5kIHRyYW5zY29kZXJzICovCiAJaW50IHBpcGVfb2Zmc2V0c1tJ
OTE1X01BWF9UUkFOU0NPREVSU107CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCA4ZjZmNjQ3
MjYyNmEuLjdiZDQ4ZjcxMTk4YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC0zNjQ0LDI2
ICszNjQ0LDM2IEBAIGJvb2wgaWxrX2Rpc2FibGVfbHBfd20oc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQogCXJldHVybiBfaWxrX2Rpc2FibGVfbHBfd20oZGV2X3ByaXYsIFdNX0RJ
UlRZX0xQX0FMTCk7CiB9CiAKLXU4IGludGVsX2VuYWJsZWRfZGJ1Zl9zbGljZXNfbnVtKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3U4IGludGVsX2VuYWJsZWRfZGJ1Zl9zbGlj
ZXNfbWFzayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7Ci0JdTggZW5hYmxl
ZF9kYnVmX3NsaWNlc19udW07Ci0KLQkvKiBTbGljZSAxIHdpbGwgYWx3YXlzIGJlIGVuYWJsZWQg
Ki8KLQllbmFibGVkX2RidWZfc2xpY2VzX251bSA9IDE7CisJaW50IGk7CisJaW50IG1heF9zbGlj
ZXMgPSBpbnRlbF9kYnVmX21heF9zbGljZXMoZGV2X3ByaXYpOworCXU4IGVuYWJsZWRfc2xpY2Vz
X21hc2sgPSAwOwogCiAJLyogR2VuIHByaW9yIHRvIEdFTjExIGhhdmUgb25seSBvbmUgREJ1ZiBz
bGljZSAqLwogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTEpCi0JCXJldHVybiBlbmFibGVk
X2RidWZfc2xpY2VzX251bTsKKwkJcmV0dXJuIEJJVChEQlVGX1MxKTsKIAotCS8qCi0JICogRklY
TUU6IGZvciBub3cgd2UnbGwgb25seSBldmVyIHVzZSAxIHNsaWNlOyBwcmV0ZW5kIHRoYXQgd2Ug
aGF2ZQotCSAqIG9ubHkgdGhhdCAxIHNsaWNlIGVuYWJsZWQgdW50aWwgd2UgaGF2ZSBhIHByb3Bl
ciB3YXkgZm9yIG9uLWRlbWFuZAotCSAqIHRvZ2dsaW5nIG9mIHRoZSBzZWNvbmQgc2xpY2UuCi0J
ICovCi0JaWYgKDAgJiYgSTkxNV9SRUFEKERCVUZfQ1RMX1MyKSAmIERCVUZfUE9XRVJfU1RBVEUp
Ci0JCWVuYWJsZWRfZGJ1Zl9zbGljZXNfbnVtKys7CisJZm9yIChpID0gMDsgaSA8IG1heF9zbGlj
ZXM7IGkrKykgeworCQl1OCBzbGljZV9iaXQgPSBCSVQoaSk7CisJCWJvb2wgcmVzOworCisJCXN3
aXRjaCAoaSkgeworCQljYXNlIERCVUZfUzE6CisJCQlyZXMgPSBJOTE1X1JFQUQoREJVRl9DVExf
UzEpICYgREJVRl9QT1dFUl9TVEFURTsKKwkJCWJyZWFrOworCQljYXNlIERCVUZfUzI6CisJCQly
ZXMgPSBJOTE1X1JFQUQoREJVRl9DVExfUzIpICYgREJVRl9QT1dFUl9TVEFURTsKKwkJCWJyZWFr
OworCQlkZWZhdWx0OgorCQkJTUlTU0lOR19DQVNFKHNsaWNlX2JpdCk7CisJCX0KIAotCXJldHVy
biBlbmFibGVkX2RidWZfc2xpY2VzX251bTsKKwkJaWYgKHJlcykKKwkJCWVuYWJsZWRfc2xpY2Vz
X21hc2sgfD0gc2xpY2VfYml0OworCX0KKworCXJldHVybiBlbmFibGVkX3NsaWNlc19tYXNrOwog
fQogCiAvKgpAQCAtMzg3MSw4ICszODgxLDYgQEAgc3RhdGljIHUxNiBpbnRlbF9nZXRfZGRiX3Np
emUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogewogCXN0cnVjdCBkcm1fYXRv
bWljX3N0YXRlICpzdGF0ZSA9IGNydGNfc3RhdGUtPnVhcGkuc3RhdGU7CiAJc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqaW50ZWxfc3RhdGUgPSB0b19pbnRlbF9hdG9taWNfc3RhdGUoc3RhdGUp
OwotCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlOwotCXU2NCB0
b3RhbF9kYXRhX2J3OwogCXUxNiBkZGJfc2l6ZSA9IElOVEVMX0lORk8oZGV2X3ByaXYpLT5kZGJf
c2l6ZTsKIAogCVdBUk5fT04oZGRiX3NpemUgPT0gMCk7CkBAIC0zODgwLDIzICszODg4LDggQEAg
c3RhdGljIHUxNiBpbnRlbF9nZXRfZGRiX3NpemUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTEpCiAJCXJldHVybiBkZGJfc2l6
ZSAtIDQ7IC8qIDQgYmxvY2tzIGZvciBieXBhc3MgcGF0aCBhbGxvY2F0aW9uICovCiAKLQlhZGp1
c3RlZF9tb2RlID0gJmNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGU7Ci0JdG90YWxfZGF0YV9i
dyA9IHRvdGFsX2RhdGFfcmF0ZSAqIGRybV9tb2RlX3ZyZWZyZXNoKGFkanVzdGVkX21vZGUpOwot
Ci0JLyoKLQkgKiAxMkdCL3MgaXMgbWF4aW11bSBCVyBzdXBwb3J0ZWQgYnkgc2luZ2xlIERCdWYg
c2xpY2UuCi0JICoKLQkgKiBGSVhNRSBkYnVmIHNsaWNlIGNvZGUgaXMgYnJva2VuOgotCSAqIC0g
bXVzdCB3YWl0IGZvciBwbGFuZXMgdG8gc3RvcCB1c2luZyB0aGUgc2xpY2UgYmVmb3JlIHBvd2Vy
aW5nIGl0IG9mZgotCSAqIC0gcGxhbmUgc3RyYWRkbGluZyBib3RoIHNsaWNlcyBpcyBpbGxlZ2Fs
IGluIG11bHRpLXBpcGUgc2NlbmFyaW9zCi0JICogLSBzaG91bGQgdmFsaWRhdGUgd2Ugc3RheSB3
aXRoaW4gdGhlIGh3IGJhbmR3aWR0aCBsaW1pdHMKLQkgKi8KLQlpZiAoMCAmJiAobnVtX2FjdGl2
ZSA+IDEgfHwgdG90YWxfZGF0YV9idyA+PSBHQnBzKDEyKSkpIHsKLQkJaW50ZWxfc3RhdGUtPmVu
YWJsZWRfZGJ1Zl9zbGljZXNfbnVtID0gMjsKLQl9IGVsc2UgewotCQlpbnRlbF9zdGF0ZS0+ZW5h
YmxlZF9kYnVmX3NsaWNlc19udW0gPSAxOwotCQlkZGJfc2l6ZSAvPSAyOwotCX0KKwlpbnRlbF9z
dGF0ZS0+ZW5hYmxlZF9kYnVmX3NsaWNlc19tYXNrID0gQklUKERCVUZfUzEpOworCWRkYl9zaXpl
IC89IDI7CiAKIAlyZXR1cm4gZGRiX3NpemU7CiB9CkBAIC00MDkzLDggKzQwODYsOCBAQCB2b2lk
IHNrbF9waXBlX2RkYl9nZXRfaHdfc3RhdGUoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAKIHZv
aWQgc2tsX2RkYl9nZXRfaHdfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQogewotCWRldl9wcml2LT5lbmFibGVkX2RidWZfc2xpY2VzX251bSA9Ci0JCQkJaW50ZWxfZW5h
YmxlZF9kYnVmX3NsaWNlc19udW0oZGV2X3ByaXYpOworCWRldl9wcml2LT5lbmFibGVkX2RidWZf
c2xpY2VzX21hc2sgPQorCQkJCWludGVsX2VuYWJsZWRfZGJ1Zl9zbGljZXNfbWFzayhkZXZfcHJp
dik7CiB9CiAKIC8qCkBAIC01MjM2LDcgKzUyMjksNyBAQCBza2xfY29tcHV0ZV9kZGIoc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJc3RydWN0IGludGVsX2NydGMgKmNydGM7CiAJ
aW50IHJldCwgaTsKIAotCXN0YXRlLT5lbmFibGVkX2RidWZfc2xpY2VzX251bSA9IGRldl9wcml2
LT5lbmFibGVkX2RidWZfc2xpY2VzX251bTsKKwlzdGF0ZS0+ZW5hYmxlZF9kYnVmX3NsaWNlc19t
YXNrID0gZGV2X3ByaXYtPmVuYWJsZWRfZGJ1Zl9zbGljZXNfbWFzazsKIAogCWZvcl9lYWNoX29s
ZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBvbGRfY3J0Y19zdGF0ZSwKIAkJ
CQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uaAppbmRleCAy
MmZkMmRhZjYwOGUuLmQ2MGE4NTQyMWM1YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5oCkBAIC0z
Miw3ICszMiw3IEBAIHZvaWQgZzR4X3dtX2dldF9od19zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpOwogdm9pZCB2bHZfd21fZ2V0X2h3X3N0YXRlKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdik7CiB2b2lkIGlsa193bV9nZXRfaHdfc3RhdGUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIHZvaWQgc2tsX3dtX2dldF9od19zdGF0ZShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwotdTggaW50ZWxfZW5hYmxlZF9kYnVmX3Ns
aWNlc19udW0oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKK3U4IGludGVsX2Vu
YWJsZWRfZGJ1Zl9zbGljZXNfbWFzayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
Owogdm9pZCBza2xfcGlwZV9kZGJfZ2V0X2h3X3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
LAogCQkJICAgICAgIHN0cnVjdCBza2xfZGRiX2VudHJ5ICpkZGJfeSwKIAkJCSAgICAgICBzdHJ1
Y3Qgc2tsX2RkYl9lbnRyeSAqZGRiX3V2KTsKLS0gCjIuMjQuMS40ODUuZ2FkMDVhM2Q4ZTUKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
