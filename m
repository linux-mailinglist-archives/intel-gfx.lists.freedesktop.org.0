Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB381A868C
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 18:26:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0420B89369;
	Wed,  4 Sep 2019 16:26:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 066CB893A4
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 16:26:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 09:26:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,467,1559545200"; d="scan'208";a="199066102"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 04 Sep 2019 09:26:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Sep 2019 19:26:25 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 19:26:10 +0300
Message-Id: <20190904162625.15048-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/15] drm/i915: Expose margin connector
 properties for underscan
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFw
cGFyZW50bHkgc29tZSBUVnMgc3VjayBhbmQgYWx3YXlzIG92ZXJzY2FuIGV2ZW4gd2hlbiBvdXIg
aW5mb2ZyYW1lcwpzYXkgdGhhdCB0aGUgaW1hZ2Ugc2hvdWxkIGJlIHVuZGVyc2Nhbm5lZC4gTGV0
J3MgZXhwb3NlIHRoZSAobm93CnN0YW5kYXJkKSBtYXJnaW4gcHJvcGVydGllcyB0byBhbGxvdyB0
aGUgdXNlciB0aGUgY29tcGVuc2F0ZSBieQpzcXVpc2hpbmcgdGhlIGltYWdlIGRvd24gYSBiaXQg
dmlhIHRoZSBwYW5lbCBmaXR0ZXIuCgpJJ3ZlIG9ubHkgaW1wbGVtZW50ZWQgdGhpcyBmb3IgaWxr
KyBiZWNhdXNlIHRoZSBvbGQgZ21jaCBwYW5lbCBmaXR0ZXIKaXMgYW5ub3lpbmdseSBsaW1pdGVk
LiBBbHNvIHRoZXJlIGlzIG9ubHkgb25lIHBmaXQgb24gZ21jaCBwbGF0Zm9ybXMKKG5vdCBjb3Vu
dGluZyB0aGUgZ200NSBUViBzY2FsZXIgLT4gcGZpdDIgdHJpY2ssIHdoaWNoIHdlIGRvbid0IGV2
ZW4Kc3VwcG9ydCBhdCB0aGUgbW9tZW50KS4gU0tMKyBhcmUgYWxzbyBhIGJpdCBsaW1pdGVkIGJ5
IHRoZSBudW1iZXIKb2YgcGlwZSBzY2FsZXJzIHRoZXkgaGF2ZSBhdmFpbGFibGUgZm9yIHBmaXQg
dnMuIHBsYW5lIHNjYWxpbmcsIGJ1dAp3ZSdsbCBsZWF2ZSB0aGF0IHVwIHRvIHRoZSB1c3VhbCBh
dG9taWMgIi1FSU5WQUwgLT4gdHJ5IHNvbWV0aGluZwpkaWZmZXJlbnQiIGFwcHJvYWNoLgoKRW50
aXJlIHNlcmllcyBhdmFpbGFibGUgaGVyZToKZ2l0Oi8vZ2l0aHViLmNvbS92c3lyamFsYS9saW51
eC5naXQgaGRtaV9tYXJnaW5zXzMKClZpbGxlIFN5cmrDpGzDpCAoMTUpOgogIGRybS9lZGlkOiBB
ZGQgZHJtX2hkbWlfYXZpX2luZm9mcmFtZV9iYXJzKCkKICBkcm0vaTkxNTogUGFyYW1ldHJpemUg
UEZJVF9QSVBFCiAgZHJtL2k5MTU6IFJlcGxhY2Ugc29tZSBhY2NpZGVudGFsIEk5MTVfUkVBRF9G
VygpcyB3aXRoIHRoZSBub3JtYWwKICAgIHZlcnNpb24KICBkcm0vaTkxNTogRml4IHNrbCsgbm9u
LXNjYWxlZCBwZml0IG1vZGVzCiAgZHJtL2k5MTU6IEZsYXR0ZW4gYSBidW5jaCBvZiB0aGUgcGZp
dCBmdW5jdGlvbnMKICBkcm0vaTkxNTogVXNlIGRybV9yZWN0IHRvIHN0b3JlIHRoZSBwZml0IHdp
bmRvdyBwb3Mvc2l6ZQogIGRybS9pOTE1OiBDaGVjayBwaXBlIHNvdXJjZSBzaXplIGFnYWluc3Qg
cGZpdCBsaW1pdHMKICBkcm0vaTkxNTogQ2hlY2sgcGZpdCBzY2FsaW5nIGZhY3RvcnMKICBkcm0v
aTkxNTogQ2hlY2sgcGZpdCBtaW5pbXVtIHRpbWluZ3MKICBkcm0vaTkxNTogcy9waXBlX2NvbmZp
Zy9jcnRjX3N0YXRlLyBpbiBwZml0IGZ1bmN0aW9ucwogIGRybS9pOTE1OiBQYXNzIGNvbm5lY3Rv
ciBzdGF0ZSB0byBwZml0IGNhbGN1bGF0aW9ucwogIGRybS9pOTE1OiBIYXZlIHBmaXQgY2FsY3Vs
YXRpb25zIHJldHVybiBhbiBlcnJvciBjb2RlCiAgZHJtL2k5MTU6IEV4cG9zZSBtYXJnaW4gcHJv
cGVydGllcyBvbiBpbGsrIEhETUkKICBkcm0vaTkxNTogRXhwb3NlIG1hcmdpbiBwcm9wZXJ0aWVz
IG9uIGlsaysgRFAgU1NUCiAgZHJtL2k5MTU6IEV4cG9zZSBtYXJnaW4gcHJvcGVydGllcyBvbiBE
UCBNU1QKCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYyAgICAgICAgICAgICAgICAgICAgfCAg
MTcgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMgICAgICAgIHwgIDEx
ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jICAgfCAgIDQg
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgNDI5ICsr
KysrKysrKysrKy0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmggIHwgICAxIC0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aCAgICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAg
ICAgIHwgIDUzICstLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3Qu
YyAgIHwgICA3ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jICAg
ICB8ICA1MCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYyAg
IHwgICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHZkcy5jICAgICB8
ICAxNiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jICAgIHwg
MTQ2ICsrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5oICAg
IHwgIDEwICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2kuYyAgICAgICAg
fCAgIDkgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8
ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAgICAgICAgICAgICAgfCAg
MzcgKy0KIGluY2x1ZGUvZHJtL2RybV9lZGlkLmggICAgICAgICAgICAgICAgICAgICAgICB8ICAg
NCArCiAxNyBmaWxlcyBjaGFuZ2VkLCA1MDYgaW5zZXJ0aW9ucygrKSwgMjk0IGRlbGV0aW9ucygt
KQoKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
