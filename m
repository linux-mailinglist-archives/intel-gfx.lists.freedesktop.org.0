Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A77D9294099
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 18:34:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD5726F43E;
	Tue, 20 Oct 2020 16:34:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A0406F43E;
 Tue, 20 Oct 2020 16:34:08 +0000 (UTC)
IronPort-SDR: uMRvPJ9VvDI36JOUKy4n+5Tw+cFmFgOLEDfU4MEvjbof0WTQRcGctzLFYdxhdw53nzksfod/+0
 R+fjHXsyI18w==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="167329970"
X-IronPort-AV: E=Sophos;i="5.77,397,1596524400"; d="scan'208";a="167329970"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2020 09:34:07 -0700
IronPort-SDR: m9AZ7FjIY7oktc07uDMz0Eb5rhpoWm7QHW3rToJuqCtEwkwKhmRli4EX17FUgO3YhtBoRf78s2
 CrvB2v2jbvtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,397,1596524400"; d="scan'208";a="316084150"
Received: from plaxmina-desktop.iind.intel.com ([10.145.162.62])
 by orsmga003.jf.intel.com with ESMTP; 20 Oct 2020 09:33:58 -0700
From: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
To: jani.nikula@linux.intel.com, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 ville.syrjala@linux.intel.com, daniels@collabora.com,
 sameer.lattannavar@intel.com, contact@emersion.fr,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Karthik B S <karthik.b.s@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 Manasi Navare <manasi.d.navare@intel.com>,
 Wambui Karuga <wambui.karugax@gmail.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>,
 Imre Deak <imre.deak@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Sean Paul <sean@poorly.run>,
 Uma Shankar <uma.shankar@intel.com>, Matt Roper <matthew.d.roper@intel.com>
Date: Tue, 20 Oct 2020 21:44:26 +0530
Message-Id: <20201020161427.6941-5-pankaj.laxminarayan.bharadiya@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20201020161427.6941-1-pankaj.laxminarayan.bharadiya@intel.com>
References: <20201020161427.6941-1-pankaj.laxminarayan.bharadiya@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 4/4] drm/i915: Enable scaling filter for
 plane and CRTC
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

R0VOID49IDEwIGhhcmR3YXJlIHN1cHBvcnRzIHRoZSBwcm9ncmFtbWFibGUgc2NhbGVyIGZpbHRl
ci4KCkF0dGFjaCBzY2FsaW5nIGZpbHRlciBwcm9wZXJ0eSBmb3IgQ1JUQyBhbmQgcGxhbmUgZm9y
IEdFTiA+PSAxMApoYXJkd2FyZXMgYW5kIHByb2dyYW0gc2NhbGVyIGZpbHRlciBiYXNlZCBvbiB0
aGUgc2VsZWN0ZWQgZmlsdGVyCnR5cGUuCgpjaGFuZ2VzIHNpbmNlIHYzOgoqIE5vbmUKY2hhbmdl
cyBzaW5jZSB2MjoKKiBVc2UgdXBkYXRlZCBmdW5jdGlvbnMKKiBBZGQgcHNfY3RybCB2YXIgdG8g
Y29udGFpbiB0aGUgZnVsbCBQU19DVFJMIHJlZ2lzdGVyIHZhbHVlIChWaWxsZSkKKiBEdXBsaWNh
dGUgdGhlIHNjYWxpbmcgZmlsdGVyIGluIGNydGMgYW5kIHBsYW5lIGh3IHN0YXRlIChWaWxsZSkK
Y2hhbmdlcyBzaW5jZSB2MToKKiBOb25lCkNoYW5nZXMgc2luY2UgUkZDOgoqIEVuYWJsZSBwcm9w
ZXJ0aWVzIGZvciBHRU4gPj0gMTAgcGxhdGZvcm1zIChWaWxsZSkKKiBEbyBub3Qgcm91bmQgb2Zm
IHRoZSBjcnRjIGNvLW9yZGluYXRlIChEYW5pYWwgU3RvbmUsIFZpbGxlKQoqIEFkZCBuZXcgZnVu
Y3Rpb25zIHRvIGhhbmRsZSBzY2FsaW5nIGZpbHRlciBzZXR1cCAoVmlsbGUpCiogUmVtb3ZlIGNv
ZWZmaWNpZW50IHNldCAwIGhhcmRjb2RpbmcuCgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2Fy
IDx1bWEuc2hhbmthckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFNoYXNoYW5rIFNoYXJtYSA8
c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW5raXQgTmF1dGl5YWwg
PGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBQYW5rYWogQmhhcmFk
aXlhIDxwYW5rYWoubGF4bWluYXJheWFuLmJoYXJhZGl5YUBpbnRlbC5jb20+Ci0tLQogLi4uL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jICB8ICAxICsKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICAgfCAxOCArKysrKysrKysrKysr
KysrLS0KIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfCAg
MiArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyAgICB8IDE1
ICsrKysrKysrKysrKystLQogNCBmaWxlcyBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXRvbWljX3BsYW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0
b21pY19wbGFuZS5jCmluZGV4IDZiZDhlNmNkZDQ3Ny4uMzMzNGZmMjUzNjAwIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKQEAgLTI2
Miw2ICsyNjIsNyBAQCB2b2lkIGludGVsX3BsYW5lX2NvcHlfdWFwaV90b19od19zdGF0ZShzdHJ1
Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlLAogCXBsYW5lX3N0YXRlLT5ody5yb3Rh
dGlvbiA9IGZyb21fcGxhbmVfc3RhdGUtPnVhcGkucm90YXRpb247CiAJcGxhbmVfc3RhdGUtPmh3
LmNvbG9yX2VuY29kaW5nID0gZnJvbV9wbGFuZV9zdGF0ZS0+dWFwaS5jb2xvcl9lbmNvZGluZzsK
IAlwbGFuZV9zdGF0ZS0+aHcuY29sb3JfcmFuZ2UgPSBmcm9tX3BsYW5lX3N0YXRlLT51YXBpLmNv
bG9yX3JhbmdlOworCXBsYW5lX3N0YXRlLT5ody5zY2FsaW5nX2ZpbHRlciA9IGZyb21fcGxhbmVf
c3RhdGUtPnVhcGkuc2NhbGluZ19maWx0ZXI7CiB9CiAKIHZvaWQgaW50ZWxfcGxhbmVfc2V0X2lu
dmlzaWJsZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggM2ZjOTczYWQzYWMxLi5l
ZjMxYTkzYThiYzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCkBAIC02NDEyLDYgKzY0MTIsNyBAQCBzdGF0aWMgdm9pZCBza2xfcGZpdF9lbmFibGUo
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJaW50IGhzY2FsZSwg
dnNjYWxlOwogCXVuc2lnbmVkIGxvbmcgaXJxZmxhZ3M7CiAJaW50IGlkOworCXUzMiBwc19jdHJs
OwogCiAJaWYgKCFjcnRjX3N0YXRlLT5wY2hfcGZpdC5lbmFibGVkKQogCQlyZXR1cm47CkBAIC02
NDI4LDEwICs2NDI5LDE2IEBAIHN0YXRpYyB2b2lkIHNrbF9wZml0X2VuYWJsZShjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAogCWlkID0gc2NhbGVyX3N0YXRlLT5z
Y2FsZXJfaWQ7CiAKKwlwc19jdHJsID0gc2tsX3NjYWxlcl9nZXRfZmlsdGVyX3NlbGVjdChjcnRj
X3N0YXRlLT5ody5zY2FsaW5nX2ZpbHRlciwgMCk7CisJcHNfY3RybCB8PSAgUFNfU0NBTEVSX0VO
IHwgc2NhbGVyX3N0YXRlLT5zY2FsZXJzW2lkXS5tb2RlOworCiAJc3Bpbl9sb2NrX2lycXNhdmUo
JmRldl9wcml2LT51bmNvcmUubG9jaywgaXJxZmxhZ3MpOwogCi0JaW50ZWxfZGVfd3JpdGVfZnco
ZGV2X3ByaXYsIFNLTF9QU19DVFJMKHBpcGUsIGlkKSwgUFNfU0NBTEVSX0VOIHwKLQkJCSAgUFNf
RklMVEVSX01FRElVTSB8IHNjYWxlcl9zdGF0ZS0+c2NhbGVyc1tpZF0ubW9kZSk7CisJc2tsX3Nj
YWxlcl9zZXR1cF9maWx0ZXIoZGV2X3ByaXYsIHBpcGUsIGlkLCAwLAorCQkJCWNydGNfc3RhdGUt
Pmh3LnNjYWxpbmdfZmlsdGVyKTsKKworCWludGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBTS0xf
UFNfQ1RSTChwaXBlLCBpZCksIHBzX2N0cmwpOworCiAJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3By
aXYsIFNLTF9QU19WUEhBU0UocGlwZSwgaWQpLAogCQkJICBQU19ZX1BIQVNFKDApIHwgUFNfVVZf
UkdCX1BIQVNFKHV2X3JnYl92cGhhc2UpKTsKIAlpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwg
U0tMX1BTX0hQSEFTRShwaXBlLCBpZCksCkBAIC0xMzQ1Myw2ICsxMzQ2MCw3IEBAIGludGVsX2Ny
dGNfY29weV91YXBpX3RvX2h3X3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQogCWNydGNfc3RhdGUtPmh3LmFjdGl2ZSA9IGNydGNfc3RhdGUtPnVhcGkuYWN0aXZlOwog
CWNydGNfc3RhdGUtPmh3Lm1vZGUgPSBjcnRjX3N0YXRlLT51YXBpLm1vZGU7CiAJY3J0Y19zdGF0
ZS0+aHcuYWRqdXN0ZWRfbW9kZSA9IGNydGNfc3RhdGUtPnVhcGkuYWRqdXN0ZWRfbW9kZTsKKwlj
cnRjX3N0YXRlLT5ody5zY2FsaW5nX2ZpbHRlciA9IGNydGNfc3RhdGUtPnVhcGkuc2NhbGluZ19m
aWx0ZXI7CiAJaW50ZWxfY3J0Y19jb3B5X3VhcGlfdG9faHdfc3RhdGVfbm9tb2Rlc2V0KGNydGNf
c3RhdGUpOwogfQogCkBAIC0xMzQ2NCw2ICsxMzQ3Miw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2Ny
dGNfY29weV9od190b191YXBpX3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlCiAJCSAgICBkcm1fYXRvbWljX3NldF9tb2RlX2Zvcl9jcnRjKCZjcnRjX3N0YXRlLT51YXBp
LCAmY3J0Y19zdGF0ZS0+aHcubW9kZSkgPCAwKTsKIAogCWNydGNfc3RhdGUtPnVhcGkuYWRqdXN0
ZWRfbW9kZSA9IGNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGU7CisJY3J0Y19zdGF0ZS0+dWFw
aS5zY2FsaW5nX2ZpbHRlciA9IGNydGNfc3RhdGUtPmh3LnNjYWxpbmdfZmlsdGVyOwogCiAJLyog
Y29weSBjb2xvciBibG9icyB0byB1YXBpICovCiAJZHJtX3Byb3BlcnR5X3JlcGxhY2VfYmxvYigm
Y3J0Y19zdGF0ZS0+dWFwaS5kZWdhbW1hX2x1dCwKQEAgLTE3MDU4LDYgKzE3MDY3LDExIEBAIHN0
YXRpYyBpbnQgaW50ZWxfY3J0Y19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwgZW51bSBwaXBlIHBpcGUpCiAJCWRldl9wcml2LT5wbGFuZV90b19jcnRjX21hcHBpbmdbaTl4
eF9wbGFuZV0gPSBjcnRjOwogCX0KIAorCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwKQor
CQlkcm1fY3J0Y19jcmVhdGVfc2NhbGluZ19maWx0ZXJfcHJvcGVydHkoJmNydGMtPmJhc2UsCisJ
CQkJCQlCSVQoRFJNX1NDQUxJTkdfRklMVEVSX0RFRkFVTFQpIHwKKwkJCQkJCUJJVChEUk1fU0NB
TElOR19GSUxURVJfTkVBUkVTVF9ORUlHSEJPUikpOworCiAJaW50ZWxfY29sb3JfaW5pdChjcnRj
KTsKIAogCWludGVsX2NydGNfY3JjX2luaXQoY3J0Yyk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IGJlN2MwM2M4NDRhNy4u
ZjZmMDYyNjY0OWUwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtNTM1LDYgKzUzNSw3IEBAIHN0cnVjdCBpbnRlbF9wbGFu
ZV9zdGF0ZSB7CiAJCXVuc2lnbmVkIGludCByb3RhdGlvbjsKIAkJZW51bSBkcm1fY29sb3JfZW5j
b2RpbmcgY29sb3JfZW5jb2Rpbmc7CiAJCWVudW0gZHJtX2NvbG9yX3JhbmdlIGNvbG9yX3Jhbmdl
OworCQllbnVtIGRybV9zY2FsaW5nX2ZpbHRlciBzY2FsaW5nX2ZpbHRlcjsKIAl9IGh3OwogCiAJ
c3RydWN0IGk5MTVfZ2d0dF92aWV3IHZpZXc7CkBAIC04MjUsNiArODI2LDcgQEAgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgewogCQlib29sIGFjdGl2ZSwgZW5hYmxlOwogCQlzdHJ1Y3QgZHJtX3By
b3BlcnR5X2Jsb2IgKmRlZ2FtbWFfbHV0LCAqZ2FtbWFfbHV0LCAqY3RtOwogCQlzdHJ1Y3QgZHJt
X2Rpc3BsYXlfbW9kZSBtb2RlLCBhZGp1c3RlZF9tb2RlOworCQllbnVtIGRybV9zY2FsaW5nX2Zp
bHRlciBzY2FsaW5nX2ZpbHRlcjsKIAl9IGh3OwogCiAJLyoqCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwppbmRleCA4OGJmZWJkZjkyMjguLmI2ZGVlYjMzODQ3
NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCkBAIC00
NDQsNiArNDQ0LDcgQEAgc2tsX3Byb2dyYW1fc2NhbGVyKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxh
bmUsCiAJdTE2IHlfaHBoYXNlLCB1dl9yZ2JfaHBoYXNlOwogCXUxNiB5X3ZwaGFzZSwgdXZfcmdi
X3ZwaGFzZTsKIAlpbnQgaHNjYWxlLCB2c2NhbGU7CisJdTMyIHBzX2N0cmw7CiAKIAloc2NhbGUg
PSBkcm1fcmVjdF9jYWxjX2hzY2FsZSgmcGxhbmVfc3RhdGUtPnVhcGkuc3JjLAogCQkJCSAgICAg
ICZwbGFuZV9zdGF0ZS0+dWFwaS5kc3QsCkBAIC00NzAsOCArNDcxLDEzIEBAIHNrbF9wcm9ncmFt
X3NjYWxlcihzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAogCQl1dl9yZ2JfdnBoYXNlID0gc2ts
X3NjYWxlcl9jYWxjX3BoYXNlKDEsIHZzY2FsZSwgZmFsc2UpOwogCX0KIAotCWludGVsX2RlX3dy
aXRlX2Z3KGRldl9wcml2LCBTS0xfUFNfQ1RSTChwaXBlLCBzY2FsZXJfaWQpLAotCQkJICBQU19T
Q0FMRVJfRU4gfCBQU19QTEFORV9TRUwocGxhbmUtPmlkKSB8IHNjYWxlci0+bW9kZSk7CisJcHNf
Y3RybCA9IHNrbF9zY2FsZXJfZ2V0X2ZpbHRlcl9zZWxlY3QocGxhbmVfc3RhdGUtPmh3LnNjYWxp
bmdfZmlsdGVyLCAwKTsKKwlwc19jdHJsIHw9IFBTX1NDQUxFUl9FTiB8IFBTX1BMQU5FX1NFTChw
bGFuZS0+aWQpIHwgc2NhbGVyLT5tb2RlOworCisJc2tsX3NjYWxlcl9zZXR1cF9maWx0ZXIoZGV2
X3ByaXYsIHBpcGUsIHNjYWxlcl9pZCwgMCwKKwkJCQlwbGFuZV9zdGF0ZS0+aHcuc2NhbGluZ19m
aWx0ZXIpOworCisJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFNLTF9QU19DVFJMKHBpcGUs
IHNjYWxlcl9pZCksIHBzX2N0cmwpOwogCWludGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBTS0xf
UFNfVlBIQVNFKHBpcGUsIHNjYWxlcl9pZCksCiAJCQkgIFBTX1lfUEhBU0UoeV92cGhhc2UpIHwg
UFNfVVZfUkdCX1BIQVNFKHV2X3JnYl92cGhhc2UpKTsKIAlpbnRlbF9kZV93cml0ZV9mdyhkZXZf
cHJpdiwgU0tMX1BTX0hQSEFTRShwaXBlLCBzY2FsZXJfaWQpLApAQCAtMzIwNSw2ICszMjExLDEx
IEBAIHNrbF91bml2ZXJzYWxfcGxhbmVfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKIAkJZHJtX3BsYW5lX2Vu
YWJsZV9mYl9kYW1hZ2VfY2xpcHMoJnBsYW5lLT5iYXNlKTsKIAorCWlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpID49IDEwKQorCQlkcm1fcGxhbmVfY3JlYXRlX3NjYWxpbmdfZmlsdGVyX3Byb3BlcnR5
KCZwbGFuZS0+YmFzZSwKKwkJCQkJCUJJVChEUk1fU0NBTElOR19GSUxURVJfREVGQVVMVCkgfAor
CQkJCQkJQklUKERSTV9TQ0FMSU5HX0ZJTFRFUl9ORUFSRVNUX05FSUdIQk9SKSk7CisKIAlkcm1f
cGxhbmVfaGVscGVyX2FkZCgmcGxhbmUtPmJhc2UsICZpbnRlbF9wbGFuZV9oZWxwZXJfZnVuY3Mp
OwogCiAJcmV0dXJuIHBsYW5lOwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
