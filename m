Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C87294090
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 18:33:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B0D56ED65;
	Tue, 20 Oct 2020 16:33:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1326D6ED65;
 Tue, 20 Oct 2020 16:33:28 +0000 (UTC)
IronPort-SDR: mBnvwVtbuaFFQUZ5u3G9c8lCUDirFxW05IClEyeVATRfKJHEsg1Yeha6B7JQcWo6EnsaFiBNxc
 fVf/Lo8eM96Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="166462002"
X-IronPort-AV: E=Sophos;i="5.77,397,1596524400"; d="scan'208";a="166462002"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2020 09:33:26 -0700
IronPort-SDR: jzzLmdIf0L8fblMfhbCAE6vWpoleOxdxs3tKEqQoGLmdqmD8GuManZDgZZMKLGAU/2MN7KdMS3
 v/e6Z9h5k/kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,397,1596524400"; d="scan'208";a="316083895"
Received: from plaxmina-desktop.iind.intel.com ([10.145.162.62])
 by orsmga003.jf.intel.com with ESMTP; 20 Oct 2020 09:33:21 -0700
From: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
To: jani.nikula@linux.intel.com, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 ville.syrjala@linux.intel.com, daniels@collabora.com,
 sameer.lattannavar@intel.com, contact@emersion.fr,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>
Date: Tue, 20 Oct 2020 21:44:23 +0530
Message-Id: <20201020161427.6941-2-pankaj.laxminarayan.bharadiya@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20201020161427.6941-1-pankaj.laxminarayan.bharadiya@intel.com>
References: <20201020161427.6941-1-pankaj.laxminarayan.bharadiya@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 1/4] drm: Introduce plane and CRTC scaling
 filter properties
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

SW50cm9kdWNlIHBlci1wbGFuZSBhbmQgcGVyLUNSVEMgc2NhbGluZyBmaWx0ZXIgcHJvcGVydGll
cyB0byBhbGxvdwp1c2Vyc3BhY2UgdG8gc2VsZWN0IHRoZSBkcml2ZXIncyBkZWZhdWx0IHNjYWxp
bmcgZmlsdGVyIG9yCk5lYXJlc3QtbmVpZ2hib3IoTk4pIGZpbHRlciBmb3IgdXBzY2FsaW5nIG9w
ZXJhdGlvbnMgb24gQ1JUQyBhbmQKcGxhbmUuCgpEcml2ZXJzIGNhbiBzZXQgdXAgdGhpcyBwcm9w
ZXJ0eSBmb3IgYSBwbGFuZSBieSBjYWxsaW5nCmRybV9wbGFuZV9jcmVhdGVfc2NhbGluZ19maWx0
ZXIoKSBhbmQgZm9yIGEgQ1JUQyBieSBjYWxsaW5nCmRybV9jcnRjX2NyZWF0ZV9zY2FsaW5nX2Zp
bHRlcigpLgoKTk4gZmlsdGVyIHdvcmtzIGJ5IGZpbGxpbmcgaW4gdGhlIG1pc3NpbmcgY29sb3Ig
dmFsdWVzIGluIHRoZSB1cHNjYWxlZAppbWFnZSB3aXRoIHRoYXQgb2YgdGhlIGNvb3JkaW5hdGUt
bWFwcGVkIG5lYXJlc3Qgc291cmNlIHBpeGVsIHZhbHVlLgoKTk4gZmlsdGVyIGZvciBpbnRlZ2Vy
IG11bHRpcGxlIHNjYWxpbmcgY2FuIGJlIHBhcnRpY3VsYXJseSB1c2VmdWwgZm9yCmZvciBwaXhl
bCBhcnQgZ2FtZXMgdGhhdCByZWx5IG9uIHNoYXJwLCBibG9ja3kgaW1hZ2VzIHRvIGRlbGl2ZXIg
dGhlaXIKZGlzdGluY3RpdmUgbG9vay4KCmNoYW5nZXMgc2luY2U6IHY2OgoqIE1vdmUgcHJvcGVy
dHkgZG9jIHRvIGV4aXN0aW5nICJTdGFuZGFyZCBDUlRDIFByb3BlcnRpZXMiIGFuZAogICJQbGFu
ZSBDb21wb3NpdGlvbiBQcm9wZXJ0aWVzIiBkb2MgY29tbWVudHMgKFNpbW9uKQpjaGFuZ2VzIHNp
bmNlIHYzOgoqIFJlZmFjdG9yIGNvZGUsIGFkZCBuZXcgZnVuY3Rpb24gZm9yIGNvbW1vbiBjb2Rl
IChWaWxsZSkKY2hhbmdlcyBzaW5jZSB2MjoKKiBDcmVhdGUgcGVyLXBsYW5lIGFuZCBwZXItQ1JU
QyBzY2FsaW5nIGZpbHRlciBwcm9wZXJ0eSAoVmlsbGUpCmNoYW5nZXMgc2luY2UgdjE6CiogTm9u
ZQpjaGFuZ2VzIHNpbmNlIFJGQzoKKiBBZGQgc2VwYXJhdGUgcHJvcGVydGllcyBmb3IgcGxhbmUg
YW5kIENSVEMgKFZpbGxlKQoKUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5r
YXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBQYW5rYWogQmhhcmFkaXlhIDxwYW5rYWoubGF4
bWluYXJheWFuLmJoYXJhZGl5YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9h
dG9taWNfdWFwaS5jICAgfCAgOCArKysrCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2JsZW5kLmMgICAg
ICAgICB8IDEzICsrKysrCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2NydGMuYyAgICAgICAgICB8IDQw
ICsrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9kcm1fY3J0Y19pbnRlcm5hbC5oIHwg
IDMgKysKIGRyaXZlcnMvZ3B1L2RybS9kcm1fcGxhbmUuYyAgICAgICAgIHwgNzMgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysKIGluY2x1ZGUvZHJtL2RybV9jcnRjLmggICAgICAgICAgICAg
IHwgMTYgKysrKysrKwogaW5jbHVkZS9kcm0vZHJtX3BsYW5lLmggICAgICAgICAgICAgfCAyMSAr
KysrKysrKysKIDcgZmlsZXMgY2hhbmdlZCwgMTc0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY191YXBpLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJt
X2F0b21pY191YXBpLmMKaW5kZXggMjVjMjY5YmM0NjgxLi5lZjgyMDA5MDM1ZTYgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vZHJtX2F0b21pY191YXBpLmMKQEAgLTQ2OSw2ICs0NjksOCBAQCBzdGF0aWMgaW50IGRybV9h
dG9taWNfY3J0Y19zZXRfcHJvcGVydHkoc3RydWN0IGRybV9jcnRjICpjcnRjLAogCQkJcmV0dXJu
IC1FRkFVTFQ7CiAKIAkJc2V0X291dF9mZW5jZV9mb3JfY3J0YyhzdGF0ZS0+c3RhdGUsIGNydGMs
IGZlbmNlX3B0cik7CisJfSBlbHNlIGlmIChwcm9wZXJ0eSA9PSBjcnRjLT5zY2FsaW5nX2ZpbHRl
cl9wcm9wZXJ0eSkgeworCQlzdGF0ZS0+c2NhbGluZ19maWx0ZXIgPSB2YWw7CiAJfSBlbHNlIGlm
IChjcnRjLT5mdW5jcy0+YXRvbWljX3NldF9wcm9wZXJ0eSkgewogCQlyZXR1cm4gY3J0Yy0+ZnVu
Y3MtPmF0b21pY19zZXRfcHJvcGVydHkoY3J0Yywgc3RhdGUsIHByb3BlcnR5LCB2YWwpOwogCX0g
ZWxzZSB7CkBAIC01MDMsNiArNTA1LDggQEAgZHJtX2F0b21pY19jcnRjX2dldF9wcm9wZXJ0eShz
dHJ1Y3QgZHJtX2NydGMgKmNydGMsCiAJCSp2YWwgPSAoc3RhdGUtPmdhbW1hX2x1dCkgPyBzdGF0
ZS0+Z2FtbWFfbHV0LT5iYXNlLmlkIDogMDsKIAllbHNlIGlmIChwcm9wZXJ0eSA9PSBjb25maWct
PnByb3Bfb3V0X2ZlbmNlX3B0cikKIAkJKnZhbCA9IDA7CisJZWxzZSBpZiAocHJvcGVydHkgPT0g
Y3J0Yy0+c2NhbGluZ19maWx0ZXJfcHJvcGVydHkpCisJCSp2YWwgPSBzdGF0ZS0+c2NhbGluZ19m
aWx0ZXI7CiAJZWxzZSBpZiAoY3J0Yy0+ZnVuY3MtPmF0b21pY19nZXRfcHJvcGVydHkpCiAJCXJl
dHVybiBjcnRjLT5mdW5jcy0+YXRvbWljX2dldF9wcm9wZXJ0eShjcnRjLCBzdGF0ZSwgcHJvcGVy
dHksIHZhbCk7CiAJZWxzZQpAQCAtNTg1LDYgKzU4OSw4IEBAIHN0YXRpYyBpbnQgZHJtX2F0b21p
Y19wbGFuZV9zZXRfcHJvcGVydHkoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsCiAJCQkJCXNpemVv
ZihzdHJ1Y3QgZHJtX3JlY3QpLAogCQkJCQkmcmVwbGFjZWQpOwogCQlyZXR1cm4gcmV0OworCX0g
ZWxzZSBpZiAocHJvcGVydHkgPT0gcGxhbmUtPnNjYWxpbmdfZmlsdGVyX3Byb3BlcnR5KSB7CisJ
CXN0YXRlLT5zY2FsaW5nX2ZpbHRlciA9IHZhbDsKIAl9IGVsc2UgaWYgKHBsYW5lLT5mdW5jcy0+
YXRvbWljX3NldF9wcm9wZXJ0eSkgewogCQlyZXR1cm4gcGxhbmUtPmZ1bmNzLT5hdG9taWNfc2V0
X3Byb3BlcnR5KHBsYW5lLCBzdGF0ZSwKIAkJCQlwcm9wZXJ0eSwgdmFsKTsKQEAgLTY0Myw2ICs2
NDksOCBAQCBkcm1fYXRvbWljX3BsYW5lX2dldF9wcm9wZXJ0eShzdHJ1Y3QgZHJtX3BsYW5lICpw
bGFuZSwKIAl9IGVsc2UgaWYgKHByb3BlcnR5ID09IGNvbmZpZy0+cHJvcF9mYl9kYW1hZ2VfY2xp
cHMpIHsKIAkJKnZhbCA9IChzdGF0ZS0+ZmJfZGFtYWdlX2NsaXBzKSA/CiAJCQlzdGF0ZS0+ZmJf
ZGFtYWdlX2NsaXBzLT5iYXNlLmlkIDogMDsKKwl9IGVsc2UgaWYgKHByb3BlcnR5ID09IHBsYW5l
LT5zY2FsaW5nX2ZpbHRlcl9wcm9wZXJ0eSkgeworCQkqdmFsID0gc3RhdGUtPnNjYWxpbmdfZmls
dGVyOwogCX0gZWxzZSBpZiAocGxhbmUtPmZ1bmNzLT5hdG9taWNfZ2V0X3Byb3BlcnR5KSB7CiAJ
CXJldHVybiBwbGFuZS0+ZnVuY3MtPmF0b21pY19nZXRfcHJvcGVydHkocGxhbmUsIHN0YXRlLCBw
cm9wZXJ0eSwgdmFsKTsKIAl9IGVsc2UgewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2Ry
bV9ibGVuZC5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9ibGVuZC5jCmluZGV4IGYxZGNhZDk2ZjM0
MS4uYWUyMjM0YWFlOTNkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2JsZW5kLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9ibGVuZC5jCkBAIC0xOTQsNiArMTk0LDE5IEBACiAg
KiBOb3RlIHRoYXQgYWxsIHRoZSBwcm9wZXJ0eSBleHRlbnNpb25zIGRlc2NyaWJlZCBoZXJlIGFw
cGx5IGVpdGhlciB0byB0aGUKICAqIHBsYW5lIG9yIHRoZSBDUlRDIChlLmcuIGZvciB0aGUgYmFj
a2dyb3VuZCBjb2xvciwgd2hpY2ggY3VycmVudGx5IGlzIG5vdAogICogZXhwb3NlZCBhbmQgYXNz
dW1lZCB0byBiZSBibGFjaykuCisgKgorICogU0NBTElOR19GSUxURVI6CisgKgorICogICAgIElu
ZGljYXRlcyBzY2FsaW5nIGZpbHRlciB0byBiZSB1c2VkIGZvciBwbGFuZSBzY2FsZXIKKyAqCisg
KiAgICAgVGhlIHZhbHVlIG9mIHRoaXMgcHJvcGVydHkgY2FuIGJlIG9uZSBvZiB0aGUgZm9sbG93
aW5nOgorICogICAgIERlZmF1bHQ6CisgKiAgICAgICAgICAgICBEcml2ZXIncyBkZWZhdWx0IHNj
YWxpbmcgZmlsdGVyCisgKiAgICAgTmVhcmVzdCBOZWlnaGJvcjoKKyAqICAgICAgICAgICAgIE5l
YXJlc3QgTmVpZ2hib3Igc2NhbGluZyBmaWx0ZXIKKyAqCisgKiBEcml2ZXJzIGNhbiBzZXQgdXAg
dGhpcyBwcm9wZXJ0eSBmb3IgYSBwbGFuZSBieSBjYWxsaW5nCisgKiBkcm1fcGxhbmVfY3JlYXRl
X3NjYWxpbmdfZmlsdGVyX3Byb3BlcnR5CiAgKi8KIAogLyoqCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vZHJtX2NydGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fY3J0Yy5jCmluZGV4IGFl
Y2RkN2VhMjZkYy4uZjkyNzk3NmVjYTUwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJt
X2NydGMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2NydGMuYwpAQCAtMjI5LDYgKzIyOSwx
NSBAQCBzdHJ1Y3QgZG1hX2ZlbmNlICpkcm1fY3J0Y19jcmVhdGVfZmVuY2Uoc3RydWN0IGRybV9j
cnRjICpjcnRjKQogICogCXVzZXItc3BhY2UgbXVzdCBzZXQgdGhpcyBwcm9wZXJ0eSB0byAwLgog
ICoKICAqIAlTZXR0aW5nIE1PREVfSUQgdG8gMCB3aWxsIHJlbGVhc2UgcmVzZXJ2ZWQgcmVzb3Vy
Y2VzIGZvciB0aGUgQ1JUQy4KKyAqIFNDQUxJTkdfRklMVEVSOgorICoJQXRvbWljIHByb3BlcnR5
IGZvciBzZXR0aW5nIHRoZSBzY2FsaW5nIGZpbHRlciBmb3IgQ1JUQyBzY2FsZXIKKyAqCisgKglU
aGUgdmFsdWUgb2YgdGhpcyBwcm9wZXJ0eSBjYW4gYmUgb25lIG9mIHRoZSBmb2xsb3dpbmc6Cisg
KglEZWZhdWx0OgorICoJCURyaXZlcidzIGRlZmF1bHQgc2NhbGluZyBmaWx0ZXIKKyAqCU5lYXJl
c3QgTmVpZ2hib3I6CisgKgkJTmVhcmVzdCBOZWlnaGJvciBzY2FsaW5nIGZpbHRlcgorICoKICAq
LwogCiAvKioKQEAgLTc3NCwzICs3ODMsMzQgQEAgaW50IGRybV9tb2RlX2NydGNfc2V0X29ial9w
cm9wKHN0cnVjdCBkcm1fbW9kZV9vYmplY3QgKm9iaiwKIAogCXJldHVybiByZXQ7CiB9CisKKy8q
KgorICogZHJtX2NydGNfY3JlYXRlX3NjYWxpbmdfZmlsdGVyX3Byb3BlcnR5IC0gY3JlYXRlIGEg
bmV3IHNjYWxpbmcgZmlsdGVyCisgKiBwcm9wZXJ0eQorICoKKyAqIEBjcnRjOiBkcm0gQ1JUQwor
ICogQHN1cHBvcnRlZF9maWx0ZXJzOiBiaXRtYXNrIG9mIHN1cHBvcnRlZCBzY2FsaW5nIGZpbHRl
cnMsIG11c3QgaW5jbHVkZQorICoJCSAgICAgICBCSVQoRFJNX1NDQUxJTkdfRklMVEVSX0RFRkFV
TFQpLgorICoKKyAqIFRoaXMgZnVuY3Rpb24gbGV0cyBkcml2ZXIgdG8gZW5hYmxlIHRoZSBzY2Fs
aW5nIGZpbHRlciBwcm9wZXJ0eSBvbiBhIGdpdmVuCisgKiBDUlRDLgorICoKKyAqIFJFVFVSTlM6
CisgKiBaZXJvIGZvciBzdWNjZXNzIG9yIC1lcnJubworICovCitpbnQgZHJtX2NydGNfY3JlYXRl
X3NjYWxpbmdfZmlsdGVyX3Byb3BlcnR5KHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKKwkJCQkJICAg
IHVuc2lnbmVkIGludCBzdXBwb3J0ZWRfZmlsdGVycykKK3sKKwlzdHJ1Y3QgZHJtX3Byb3BlcnR5
ICpwcm9wID0KKwkJZHJtX2NyZWF0ZV9zY2FsaW5nX2ZpbHRlcl9wcm9wKGNydGMtPmRldiwgc3Vw
cG9ydGVkX2ZpbHRlcnMpOworCisJaWYgKElTX0VSUihwcm9wKSkKKwkJcmV0dXJuIFBUUl9FUlIo
cHJvcCk7CisKKwlkcm1fb2JqZWN0X2F0dGFjaF9wcm9wZXJ0eSgmY3J0Yy0+YmFzZSwgcHJvcCwK
KwkJCQkgICBEUk1fU0NBTElOR19GSUxURVJfREVGQVVMVCk7CisJY3J0Yy0+c2NhbGluZ19maWx0
ZXJfcHJvcGVydHkgPSBwcm9wOworCisJcmV0dXJuIDA7Cit9CitFWFBPUlRfU1lNQk9MKGRybV9j
cnRjX2NyZWF0ZV9zY2FsaW5nX2ZpbHRlcl9wcm9wZXJ0eSk7CmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vZHJtX2NydGNfaW50ZXJuYWwuaCBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fY3J0Y19p
bnRlcm5hbC5oCmluZGV4IGRhOTZiMmY2NGQ3ZS4uNTRkNGNmMTIzM2U5IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vZHJtX2NydGNfaW50ZXJuYWwuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
ZHJtX2NydGNfaW50ZXJuYWwuaApAQCAtNzIsNiArNzIsOSBAQCBpbnQgZHJtX2NydGNfZm9yY2Vf
ZGlzYWJsZShzdHJ1Y3QgZHJtX2NydGMgKmNydGMpOwogCiBzdHJ1Y3QgZG1hX2ZlbmNlICpkcm1f
Y3J0Y19jcmVhdGVfZmVuY2Uoc3RydWN0IGRybV9jcnRjICpjcnRjKTsKIAorc3RydWN0IGRybV9w
cm9wZXJ0eSAqCitkcm1fY3JlYXRlX3NjYWxpbmdfZmlsdGVyX3Byb3Aoc3RydWN0IGRybV9kZXZp
Y2UgKmRldiwKKwkJCSAgICAgICB1bnNpZ25lZCBpbnQgc3VwcG9ydGVkX2ZpbHRlcnMpOwogLyog
SU9DVExzICovCiBpbnQgZHJtX21vZGVfZ2V0Y3J0YyhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAog
CQkgICAgIHZvaWQgKmRhdGEsIHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2KTsKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fcGxhbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcGxh
bmUuYwppbmRleCBhZmZlMWNmZWQwMDkuLmU2MjMxOTQ3Zjk4NyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2RybV9wbGFuZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcGxhbmUuYwpA
QCAtMTIzMSwzICsxMjMxLDc2IEBAIGludCBkcm1fbW9kZV9wYWdlX2ZsaXBfaW9jdGwoc3RydWN0
IGRybV9kZXZpY2UgKmRldiwKIAogCXJldHVybiByZXQ7CiB9CisKK3N0cnVjdCBkcm1fcHJvcGVy
dHkgKgorZHJtX2NyZWF0ZV9zY2FsaW5nX2ZpbHRlcl9wcm9wKHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYsCisJCQkgICAgICAgdW5zaWduZWQgaW50IHN1cHBvcnRlZF9maWx0ZXJzKQoreworCXN0cnVj
dCBkcm1fcHJvcGVydHkgKnByb3A7CisJc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fcHJvcF9lbnVt
X2xpc3QgcHJvcHNbXSA9IHsKKwkJeyBEUk1fU0NBTElOR19GSUxURVJfREVGQVVMVCwgIkRlZmF1
bHQiIH0sCisJCXsgRFJNX1NDQUxJTkdfRklMVEVSX05FQVJFU1RfTkVJR0hCT1IsICJOZWFyZXN0
IE5laWdoYm9yIiB9LAorCX07CisJdW5zaWduZWQgaW50IHZhbGlkX21vZGVfbWFzayA9IEJJVChE
Uk1fU0NBTElOR19GSUxURVJfREVGQVVMVCkgfAorCQkJCSAgICAgICBCSVQoRFJNX1NDQUxJTkdf
RklMVEVSX05FQVJFU1RfTkVJR0hCT1IpOworCWludCBpOworCisJaWYgKFdBUk5fT04oKHN1cHBv
cnRlZF9maWx0ZXJzICYgfnZhbGlkX21vZGVfbWFzaykgfHwKKwkJICAgICgoc3VwcG9ydGVkX2Zp
bHRlcnMgJiBCSVQoRFJNX1NDQUxJTkdfRklMVEVSX0RFRkFVTFQpKSA9PSAwKSkpCisJCXJldHVy
biBFUlJfUFRSKC1FSU5WQUwpOworCisJcHJvcCA9IGRybV9wcm9wZXJ0eV9jcmVhdGUoZGV2LCBE
Uk1fTU9ERV9QUk9QX0VOVU0sCisJCQkJICAgIlNDQUxJTkdfRklMVEVSIiwKKwkJCQkgICBod2Vp
Z2h0MzIoc3VwcG9ydGVkX2ZpbHRlcnMpKTsKKwlpZiAoIXByb3ApCisJCXJldHVybiBFUlJfUFRS
KC1FTk9NRU0pOworCisJZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUocHJvcHMpOyBpKyspIHsK
KwkJaW50IHJldDsKKworCQlpZiAoIShCSVQocHJvcHNbaV0udHlwZSkgJiBzdXBwb3J0ZWRfZmls
dGVycykpCisJCQljb250aW51ZTsKKworCQlyZXQgPSBkcm1fcHJvcGVydHlfYWRkX2VudW0ocHJv
cCwgcHJvcHNbaV0udHlwZSwKKwkJCQkJICAgIHByb3BzW2ldLm5hbWUpOworCisJCWlmIChyZXQp
IHsKKwkJCWRybV9wcm9wZXJ0eV9kZXN0cm95KGRldiwgcHJvcCk7CisKKwkJCXJldHVybiBFUlJf
UFRSKHJldCk7CisJCX0KKwl9CisKKwlyZXR1cm4gcHJvcDsKK30KKworLyoqCisgKiBkcm1fcGxh
bmVfY3JlYXRlX3NjYWxpbmdfZmlsdGVyX3Byb3BlcnR5IC0gY3JlYXRlIGEgbmV3IHNjYWxpbmcg
ZmlsdGVyCisgKiBwcm9wZXJ0eQorICoKKyAqIEBwbGFuZTogZHJtIHBsYW5lCisgKiBAc3VwcG9y
dGVkX2ZpbHRlcnM6IGJpdG1hc2sgb2Ygc3VwcG9ydGVkIHNjYWxpbmcgZmlsdGVycywgbXVzdCBp
bmNsdWRlCisgKgkJICAgICAgIEJJVChEUk1fU0NBTElOR19GSUxURVJfREVGQVVMVCkuCisgKgor
ICogVGhpcyBmdW5jdGlvbiBsZXRzIGRyaXZlciB0byBlbmFibGUgdGhlIHNjYWxpbmcgZmlsdGVy
IHByb3BlcnR5IG9uIGEgZ2l2ZW4KKyAqIHBsYW5lLgorICoKKyAqIFJFVFVSTlM6CisgKiBaZXJv
IGZvciBzdWNjZXNzIG9yIC1lcnJubworICovCitpbnQgZHJtX3BsYW5lX2NyZWF0ZV9zY2FsaW5n
X2ZpbHRlcl9wcm9wZXJ0eShzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKKwkJCQkJICAgICB1bnNp
Z25lZCBpbnQgc3VwcG9ydGVkX2ZpbHRlcnMpCit7CisJc3RydWN0IGRybV9wcm9wZXJ0eSAqcHJv
cCA9CisJCWRybV9jcmVhdGVfc2NhbGluZ19maWx0ZXJfcHJvcChwbGFuZS0+ZGV2LCBzdXBwb3J0
ZWRfZmlsdGVycyk7CisKKwlpZiAoSVNfRVJSKHByb3ApKQorCQlyZXR1cm4gUFRSX0VSUihwcm9w
KTsKKworCWRybV9vYmplY3RfYXR0YWNoX3Byb3BlcnR5KCZwbGFuZS0+YmFzZSwgcHJvcCwKKwkJ
CQkgICBEUk1fU0NBTElOR19GSUxURVJfREVGQVVMVCk7CisJcGxhbmUtPnNjYWxpbmdfZmlsdGVy
X3Byb3BlcnR5ID0gcHJvcDsKKworCXJldHVybiAwOworfQorRVhQT1JUX1NZTUJPTChkcm1fcGxh
bmVfY3JlYXRlX3NjYWxpbmdfZmlsdGVyX3Byb3BlcnR5KTsKZGlmZiAtLWdpdCBhL2luY2x1ZGUv
ZHJtL2RybV9jcnRjLmggYi9pbmNsdWRlL2RybS9kcm1fY3J0Yy5oCmluZGV4IDU5YjUxYTA5Y2Fl
Ni4uYmE4MzllNWUzNTdkIDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9kcm1fY3J0Yy5oCisrKyBi
L2luY2x1ZGUvZHJtL2RybV9jcnRjLmgKQEAgLTMyNCw2ICszMjQsMTMgQEAgc3RydWN0IGRybV9j
cnRjX3N0YXRlIHsKIAkgKi8KIAlib29sIHNlbGZfcmVmcmVzaF9hY3RpdmU7CiAKKwkvKioKKwkg
KiBAc2NhbGluZ19maWx0ZXI6CisJICoKKwkgKiBTY2FsaW5nIGZpbHRlciB0byBiZSBhcHBsaWVk
CisJICovCisJZW51bSBkcm1fc2NhbGluZ19maWx0ZXIgc2NhbGluZ19maWx0ZXI7CisKIAkvKioK
IAkgKiBAZXZlbnQ6CiAJICoKQEAgLTEwODMsNiArMTA5MCwxMiBAQCBzdHJ1Y3QgZHJtX2NydGMg
ewogCS8qKiBAcHJvcGVydGllczogcHJvcGVydHkgdHJhY2tpbmcgZm9yIHRoaXMgQ1JUQyAqLwog
CXN0cnVjdCBkcm1fb2JqZWN0X3Byb3BlcnRpZXMgcHJvcGVydGllczsKIAorCS8qKgorCSAqIEBz
Y2FsaW5nX2ZpbHRlcl9wcm9wZXJ0eTogcHJvcGVydHkgdG8gYXBwbHkgYSBwYXJ0aWN1bGFyIGZp
bHRlciB3aGlsZQorCSAqIHNjYWxpbmcuCisJICovCisJc3RydWN0IGRybV9wcm9wZXJ0eSAqc2Nh
bGluZ19maWx0ZXJfcHJvcGVydHk7CisKIAkvKioKIAkgKiBAc3RhdGU6CiAJICoKQEAgLTEyNjYs
NCArMTI3OSw3IEBAIHN0YXRpYyBpbmxpbmUgc3RydWN0IGRybV9jcnRjICpkcm1fY3J0Y19maW5k
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAjZGVmaW5lIGRybV9mb3JfZWFjaF9jcnRjKGNydGMs
IGRldikgXAogCWxpc3RfZm9yX2VhY2hfZW50cnkoY3J0YywgJihkZXYpLT5tb2RlX2NvbmZpZy5j
cnRjX2xpc3QsIGhlYWQpCiAKK2ludCBkcm1fY3J0Y19jcmVhdGVfc2NhbGluZ19maWx0ZXJfcHJv
cGVydHkoc3RydWN0IGRybV9jcnRjICpjcnRjLAorCQkJCQkgICAgdW5zaWduZWQgaW50IHN1cHBv
cnRlZF9maWx0ZXJzKTsKKwogI2VuZGlmIC8qIF9fRFJNX0NSVENfSF9fICovCmRpZmYgLS1naXQg
YS9pbmNsdWRlL2RybS9kcm1fcGxhbmUuaCBiL2luY2x1ZGUvZHJtL2RybV9wbGFuZS5oCmluZGV4
IDNmMzk2ZDk0YWZlNC4uMWQ4MmIyNjRlNWU0IDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9kcm1f
cGxhbmUuaAorKysgYi9pbmNsdWRlL2RybS9kcm1fcGxhbmUuaApAQCAtMzUsNiArMzUsMTEgQEAg
c3RydWN0IGRybV9jcnRjOwogc3RydWN0IGRybV9wcmludGVyOwogc3RydWN0IGRybV9tb2Rlc2V0
X2FjcXVpcmVfY3R4OwogCitlbnVtIGRybV9zY2FsaW5nX2ZpbHRlciB7CisJRFJNX1NDQUxJTkdf
RklMVEVSX0RFRkFVTFQsCisJRFJNX1NDQUxJTkdfRklMVEVSX05FQVJFU1RfTkVJR0hCT1IsCit9
OworCiAvKioKICAqIHN0cnVjdCBkcm1fcGxhbmVfc3RhdGUgLSBtdXRhYmxlIHBsYW5lIHN0YXRl
CiAgKgpAQCAtMjE0LDYgKzIxOSwxMyBAQCBzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlIHsKIAkgKi8K
IAlib29sIHZpc2libGU7CiAKKwkvKioKKwkgKiBAc2NhbGluZ19maWx0ZXI6CisJICoKKwkgKiBT
Y2FsaW5nIGZpbHRlciB0byBiZSBhcHBsaWVkCisJICovCisJZW51bSBkcm1fc2NhbGluZ19maWx0
ZXIgc2NhbGluZ19maWx0ZXI7CisKIAkvKioKIAkgKiBAY29tbWl0OiBUcmFja3MgdGhlIHBlbmRp
bmcgY29tbWl0IHRvIHByZXZlbnQgdXNlLWFmdGVyLWZyZWUgY29uZGl0aW9ucywKIAkgKiBhbmQg
Zm9yIGFzeW5jIHBsYW5lIHVwZGF0ZXMuCkBAIC03MjQsNiArNzM2LDEyIEBAIHN0cnVjdCBkcm1f
cGxhbmUgewogCSAqIFNlZSBkcm1fcGxhbmVfY3JlYXRlX2NvbG9yX3Byb3BlcnRpZXMoKS4KIAkg
Ki8KIAlzdHJ1Y3QgZHJtX3Byb3BlcnR5ICpjb2xvcl9yYW5nZV9wcm9wZXJ0eTsKKworCS8qKgor
CSAqIEBzY2FsaW5nX2ZpbHRlcl9wcm9wZXJ0eTogcHJvcGVydHkgdG8gYXBwbHkgYSBwYXJ0aWN1
bGFyIGZpbHRlciB3aGlsZQorCSAqIHNjYWxpbmcuCisJICovCisJc3RydWN0IGRybV9wcm9wZXJ0
eSAqc2NhbGluZ19maWx0ZXJfcHJvcGVydHk7CiB9OwogCiAjZGVmaW5lIG9ial90b19wbGFuZSh4
KSBjb250YWluZXJfb2YoeCwgc3RydWN0IGRybV9wbGFuZSwgYmFzZSkKQEAgLTg2Miw0ICs4ODAs
NyBAQCBkcm1fcGxhbmVfZ2V0X2RhbWFnZV9jbGlwcyhjb25zdCBzdHJ1Y3QgZHJtX3BsYW5lX3N0
YXRlICpzdGF0ZSkKIAkJCQkJc3RhdGUtPmZiX2RhbWFnZV9jbGlwcy0+ZGF0YSA6IE5VTEwpOwog
fQogCitpbnQgZHJtX3BsYW5lX2NyZWF0ZV9zY2FsaW5nX2ZpbHRlcl9wcm9wZXJ0eShzdHJ1Y3Qg
ZHJtX3BsYW5lICpwbGFuZSwKKwkJCQkJICAgICB1bnNpZ25lZCBpbnQgc3VwcG9ydGVkX2ZpbHRl
cnMpOworCiAjZW5kaWYKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
