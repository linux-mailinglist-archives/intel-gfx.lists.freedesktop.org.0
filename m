Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA0DD9989
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 20:50:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00D896E9C5;
	Wed, 16 Oct 2019 18:50:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90DDC6E9C4
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 18:50:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 11:50:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,304,1566889200"; d="scan'208";a="220876671"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by fmsmga004.fm.intel.com with ESMTP; 16 Oct 2019 11:50:33 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Oct 2019 11:52:35 -0700
Message-Id: <20191016185240.28299-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v10 1/6] drm/i915/display/icl: Save Master
 transcoder in slave's crtc_state for Transcoder Port Sync
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gY2FzZSBvZiB0aWxlZCBkaXNwbGF5cyB3aGVuIHRoZSB0d28gdGlsZXMgYXJlIHNlbnQgYWNy
b3NzIHR3byBDUlRDcwpvdmVyIHR3byBzZXBhcmF0ZSBEUCBTU1QgY29ubmVjdG9ycywgd2UgbmVl
ZCBhIG1lY2hhbmlzbSB0byBzeW5jaHJvbml6ZQp0aGUgdHdvIENSVENzIGFuZCB0aGVpciBjb3Jy
ZXNwb25kaW5nIHRyYW5zY29kZXJzLgpTbyB1c2UgdGhlIG1hc3Rlci1zbGF2ZSBtb2RlIHdoZXJl
IHRoZXJlIGlzIG9uZSBtYXN0ZXIgY29ycmVzcG9uZGluZwp0byBsYXN0IGhvcml6b250YWwgYW5k
IHZlcnRpY2FsIHRpbGUgdGhhdCBuZWVkcyB0byBiZSBnZW5sb2NrZWQgd2l0aAphbGwgb3RoZXIg
c2xhdmUgdGlsZXMuClRoaXMgcGF0Y2ggaWRlbnRpZmllcyBzYXZlcyB0aGUgbWFzdGVyIHRyYW5z
Y29kZXIgaW4gYWxsIHRoZSBzbGF2ZQpDUlRDIHN0YXRlcy4gVGhpcyBpcyBuZWVkZWQgdG8gc2Vs
ZWN0IHRoZSBtYXN0ZXIgQ1JUQy90cmFuc2NvZGVyCndoaWxlIGNvbmZpZ3VyaW5nIHRyYW5zY29k
ZXIgcG9ydCBzeW5jIGZvciB0aGUgY29ycmVzcG9uZGluZyBzbGF2ZXMuCgp2NjoKUmViYXNlICht
YW5hc2kpCnY1OgoqIEFkZHJlc3MgVmlsbGUncyBjb21tZW50cwoqIEp1c3QgcGFzcyBjcnRjX3N0
YXRlLCBubyBuZWVkIHRvIGNoZWNrIEdFTiAoVmlsbGUpCnY0OgoqIFJlYmFzZQp2MzoKKiBVc2Ug
bWFzdGVyX3RyYW1zY29kZXIgaW5zdGVhZCBvZiBtYXN0ZXJfY3J0YyBmb3IgdmFsaWQKSFcgc3Rh
dGUgcmVhZG91dHMgKFZpbGxlKQp2MjoKKiBNb3ZlIHRoaXMgdG8gaW50ZWxfbW9kZV9zZXRfcGlw
ZV9jb25maWcoSmFuaSBOLCBWaWxsZSkKKiBVc2Ugc2xhdmVfYml0bWFzayB0byBzYXZlIGFzc29j
aWF0ZWQgc2xhdmVzIGluIG1hc3RlciBjcnRjIHN0YXRlIChWaWxsZSkKCkNjOiBEYW5pZWwgVmV0
dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxh
bmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJA
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVA
aW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hv
cnN0QGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyAgfCAxMTggKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCAgfCAgIDIgKwogLi4uL2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgICA2ICsKIDMgZmlsZXMgY2hhbmdlZCwgMTI2
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCmluZGV4IGI0Mjc2MWMyZWY2My4uYTVmY2M4MjY1NmJmIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtNTE5LDYgKzUxOSwyMCBAQCBu
ZWVkc19tb2Rlc2V0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpzdGF0ZSkKIAlyZXR1
cm4gZHJtX2F0b21pY19jcnRjX25lZWRzX21vZGVzZXQoJnN0YXRlLT5iYXNlKTsKIH0KIAorYm9v
bAoraXNfdHJhbnNfcG9ydF9zeW5jX21vZGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUpCit7CisJcmV0dXJuIChjcnRjX3N0YXRlLT5tYXN0ZXJfdHJhbnNjb2RlciAh
PSBJTlZBTElEX1RSQU5TQ09ERVIgfHwKKwkJY3J0Y19zdGF0ZS0+c3luY19tb2RlX3NsYXZlc19t
YXNrKTsKK30KKworc3RhdGljIGJvb2wKK2lzX3RyYW5zX3BvcnRfc3luY19tYXN0ZXIoY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit7CisJcmV0dXJuIChjcnRjX3N0
YXRlLT5tYXN0ZXJfdHJhbnNjb2RlciA9PSBJTlZBTElEX1RSQU5TQ09ERVIgJiYKKwkJY3J0Y19z
dGF0ZS0+c3luY19tb2RlX3NsYXZlc19tYXNrKTsKK30KKwogLyoKICAqIFBsYXRmb3JtIHNwZWNp
ZmljIGhlbHBlcnMgdG8gY2FsY3VsYXRlIHRoZSBwb3J0IFBMTCBsb29wYmFjay0gKGNsb2NrLm0p
LAogICogYW5kIHBvc3QtZGl2aWRlciAoY2xvY2sucCkgdmFsdWVzLCBwcmUtIChjbG9jay52Y28p
IGFuZCBwb3N0LWRpdmlkZWQgZmFzdApAQCAtMTE3NzUsNiArMTE3ODksOTEgQEAgc3RhdGljIGJv
b2wgYzhfcGxhbmVzX2NoYW5nZWQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19j
cnRjX3N0YXRlKQogCXJldHVybiAhb2xkX2NydGNfc3RhdGUtPmM4X3BsYW5lcyAhPSAhbmV3X2Ny
dGNfc3RhdGUtPmM4X3BsYW5lczsKIH0KIAorc3RhdGljIGludCBpY2xfYWRkX3N5bmNfbW9kZV9j
cnRjcyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwlzdHJ1Y3QgZHJt
X2NydGMgKmNydGMgPSBjcnRjX3N0YXRlLT5iYXNlLmNydGM7CisJc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUgPSB0b19pbnRlbF9hdG9taWNfc3RhdGUoY3J0Y19zdGF0ZS0+YmFzZS5z
dGF0ZSk7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRj
X3N0YXRlLT5iYXNlLmNydGMtPmRldik7CisJc3RydWN0IGRybV9jb25uZWN0b3IgKm1hc3Rlcl9j
b25uZWN0b3IsICpjb25uZWN0b3I7CisJc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5l
Y3Rvcl9zdGF0ZTsKKwlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9saXN0X2l0ZXIgY29ubl9pdGVyOwor
CXN0cnVjdCBkcm1fY3J0YyAqbWFzdGVyX2NydGMgPSBOVUxMOworCXN0cnVjdCBkcm1fY3J0Y19z
dGF0ZSAqbWFzdGVyX2NydGNfc3RhdGU7CisJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm1hc3Rl
cl9waXBlX2NvbmZpZzsKKwlpbnQgaSwgdGlsZV9ncm91cF9pZDsKKworCWlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpIDwgMTEpCisJCXJldHVybiAwOworCisJLyoKKwkgKiBJbiBjYXNlIG9mIHRpbGVk
IGRpc3BsYXlzIHRoZXJlIGNvdWxkIGJlIG9uZSBvciBtb3JlIHNsYXZlcyBidXQgdGhlcmUgaXMK
KwkgKiBvbmx5IG9uZSBtYXN0ZXIuIExldHMgbWFrZSB0aGUgQ1JUQyB1c2VkIGJ5IHRoZSBjb25u
ZWN0b3IgY29ycmVzcG9uZGluZworCSAqIHRvIHRoZSBsYXN0IGhvcml6b25hbCBhbmQgbGFzdCB2
ZXJ0aWNhbCB0aWxlIGEgbWFzdGVyL2dlbmxvY2sgQ1JUQy4KKwkgKiBBbGwgdGhlIG90aGVyIENS
VENzIGNvcnJlc3BvbmRpbmcgdG8gb3RoZXIgdGlsZXMgb2YgdGhlIHNhbWUgVGlsZSBncm91cAor
CSAqIGFyZSB0aGUgc2xhdmUgQ1JUQ3MgYW5kIGhvbGQgYSBwb2ludGVyIHRvIHRoZWlyIGdlbmxv
Y2sgQ1JUQy4KKwkgKi8KKwlmb3JfZWFjaF9uZXdfY29ubmVjdG9yX2luX3N0YXRlKCZzdGF0ZS0+
YmFzZSwgY29ubmVjdG9yLCBjb25uZWN0b3Jfc3RhdGUsIGkpIHsKKwkJaWYgKGNvbm5lY3Rvcl9z
dGF0ZS0+Y3J0YyAhPSBjcnRjKQorCQkJY29udGludWU7CisJCWlmICghY29ubmVjdG9yLT5oYXNf
dGlsZSkKKwkJCWNvbnRpbnVlOworCQlpZiAoY3J0Y19zdGF0ZS0+YmFzZS5tb2RlLmhkaXNwbGF5
ICE9IGNvbm5lY3Rvci0+dGlsZV9oX3NpemUgfHwKKwkJICAgIGNydGNfc3RhdGUtPmJhc2UubW9k
ZS52ZGlzcGxheSAhPSBjb25uZWN0b3ItPnRpbGVfdl9zaXplKQorCQkJcmV0dXJuIDA7CisJCWlm
IChjb25uZWN0b3ItPnRpbGVfaF9sb2MgPT0gY29ubmVjdG9yLT5udW1faF90aWxlIC0gMSAmJgor
CQkgICAgY29ubmVjdG9yLT50aWxlX3ZfbG9jID09IGNvbm5lY3Rvci0+bnVtX3ZfdGlsZSAtIDEp
CisJCQljb250aW51ZTsKKwkJY3J0Y19zdGF0ZS0+c3luY19tb2RlX3NsYXZlc19tYXNrID0gMDsK
KwkJdGlsZV9ncm91cF9pZCA9IGNvbm5lY3Rvci0+dGlsZV9ncm91cC0+aWQ7CisJCWRybV9jb25u
ZWN0b3JfbGlzdF9pdGVyX2JlZ2luKCZkZXZfcHJpdi0+ZHJtLCAmY29ubl9pdGVyKTsKKwkJZHJt
X2Zvcl9lYWNoX2Nvbm5lY3Rvcl9pdGVyKG1hc3Rlcl9jb25uZWN0b3IsICZjb25uX2l0ZXIpIHsK
KwkJCXN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICptYXN0ZXJfY29ubl9zdGF0ZSA9IE5VTEw7
CisKKwkJCWlmICghbWFzdGVyX2Nvbm5lY3Rvci0+aGFzX3RpbGUpCisJCQkJY29udGludWU7CisJ
CQlpZiAobWFzdGVyX2Nvbm5lY3Rvci0+dGlsZV9oX2xvYyAhPSBtYXN0ZXJfY29ubmVjdG9yLT5u
dW1faF90aWxlIC0gMSB8fAorCQkJICAgIG1hc3Rlcl9jb25uZWN0b3ItPnRpbGVfdl9sb2MgIT0g
bWFzdGVyX2Nvbm5lY3Rvci0+bnVtX3ZfdGlsZSAtIDEpCisJCQkJY29udGludWU7CisJCQlpZiAo
bWFzdGVyX2Nvbm5lY3Rvci0+dGlsZV9ncm91cC0+aWQgIT0gdGlsZV9ncm91cF9pZCkKKwkJCQlj
b250aW51ZTsKKworCQkJbWFzdGVyX2Nvbm5fc3RhdGUgPSBkcm1fYXRvbWljX2dldF9jb25uZWN0
b3Jfc3RhdGUoJnN0YXRlLT5iYXNlLAorCQkJCQkJCQkJICAgbWFzdGVyX2Nvbm5lY3Rvcik7CisJ
CQlpZiAoSVNfRVJSKG1hc3Rlcl9jb25uX3N0YXRlKSkgeworCQkJCWRybV9jb25uZWN0b3JfbGlz
dF9pdGVyX2VuZCgmY29ubl9pdGVyKTsKKwkJCQlyZXR1cm4gUFRSX0VSUihtYXN0ZXJfY29ubl9z
dGF0ZSk7CisJCQl9CisJCQlpZiAobWFzdGVyX2Nvbm5fc3RhdGUtPmNydGMpIHsKKwkJCQltYXN0
ZXJfY3J0YyA9IG1hc3Rlcl9jb25uX3N0YXRlLT5jcnRjOworCQkJCWJyZWFrOworCQkJfQorCQl9
CisJCWRybV9jb25uZWN0b3JfbGlzdF9pdGVyX2VuZCgmY29ubl9pdGVyKTsKKworCQlpZiAoIW1h
c3Rlcl9jcnRjKSB7CisJCQlEUk1fREVCVUdfS01TKCJDb3VsZCBub3QgZmluZCBNYXN0ZXIgQ1JU
QyBmb3IgU2xhdmUgQ1JUQyAlZFxuIiwKKwkJCQkgICAgICBjb25uZWN0b3Jfc3RhdGUtPmNydGMt
PmJhc2UuaWQpOworCQkJcmV0dXJuIC1FSU5WQUw7CisJCX0KKworCQltYXN0ZXJfY3J0Y19zdGF0
ZSA9IGRybV9hdG9taWNfZ2V0X2NydGNfc3RhdGUoJnN0YXRlLT5iYXNlLAorCQkJCQkJCSAgICAg
IG1hc3Rlcl9jcnRjKTsKKwkJaWYgKElTX0VSUihtYXN0ZXJfY3J0Y19zdGF0ZSkpCisJCQlyZXR1
cm4gUFRSX0VSUihtYXN0ZXJfY3J0Y19zdGF0ZSk7CisKKwkJbWFzdGVyX3BpcGVfY29uZmlnID0g
dG9faW50ZWxfY3J0Y19zdGF0ZShtYXN0ZXJfY3J0Y19zdGF0ZSk7CisJCWNydGNfc3RhdGUtPm1h
c3Rlcl90cmFuc2NvZGVyID0gbWFzdGVyX3BpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlcjsKKwkJ
bWFzdGVyX3BpcGVfY29uZmlnLT5zeW5jX21vZGVfc2xhdmVzX21hc2sgfD0KKwkJCUJJVChjcnRj
X3N0YXRlLT5jcHVfdHJhbnNjb2Rlcik7CisJCURSTV9ERUJVR19LTVMoIk1hc3RlciBUcmFuc2Nv
ZGVyID0gJXMgYWRkZWQgZm9yIFNsYXZlIENSVEMgPSAlZCwgc2xhdmUgdHJhbnNjb2RlciBiaXRt
YXNrID0gJWRcbiIsCisJCQkgICAgICB0cmFuc2NvZGVyX25hbWUoY3J0Y19zdGF0ZS0+bWFzdGVy
X3RyYW5zY29kZXIpLAorCQkJICAgICAgY3J0Y19zdGF0ZS0+YmFzZS5jcnRjLT5iYXNlLmlkLAor
CQkJICAgICAgbWFzdGVyX3BpcGVfY29uZmlnLT5zeW5jX21vZGVfc2xhdmVzX21hc2spOworCX0K
KworCXJldHVybiAwOworfQorCiBzdGF0aWMgaW50IGludGVsX2NydGNfYXRvbWljX2NoZWNrKHN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCQkJCSAgIHN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjKQogewpAQCAtMTIyNzMsNiArMTIzNzIsMTMgQEAgY2xlYXJfaW50ZWxfY3J0Y19zdGF0
ZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAlpZiAoSVNfRzRYKGRldl9w
cml2KSB8fAogCSAgICBJU19WQUxMRVlWSUVXKGRldl9wcml2KSB8fCBJU19DSEVSUllWSUVXKGRl
dl9wcml2KSkKIAkJc2F2ZWRfc3RhdGUtPndtID0gY3J0Y19zdGF0ZS0+d207CisJLyoKKwkgKiBT
YXZlIHRoZSBzbGF2ZSBiaXRtYXNrIHdoaWNoIGdldHMgZmlsbGVkIGZvciBtYXN0ZXIgY3J0YyBz
dGF0ZSBkdXJpbmcKKwkgKiBzbGF2ZSBhdG9taWMgY2hlY2sgY2FsbC4KKwkgKi8KKwlpZiAoaXNf
dHJhbnNfcG9ydF9zeW5jX21hc3RlcihjcnRjX3N0YXRlKSkKKwkJc2F2ZWRfc3RhdGUtPnN5bmNf
bW9kZV9zbGF2ZXNfbWFzayA9CisJCQljcnRjX3N0YXRlLT5zeW5jX21vZGVfc2xhdmVzX21hc2s7
CiAKIAkvKiBLZWVwIGJhc2UgZHJtX2NydGNfc3RhdGUgaW50YWN0LCBvbmx5IGNsZWFyIG91ciBl
eHRlbmRlZCBzdHJ1Y3QgKi8KIAlCVUlMRF9CVUdfT04ob2Zmc2V0b2Yoc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUsIGJhc2UpKTsKQEAgLTEyMzY2LDYgKzEyNDcyLDE1IEBAIGludGVsX21vZGVzZXRf
cGlwZV9jb25maWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKQogCWRybV9t
b2RlX3NldF9jcnRjaW5mbygmcGlwZV9jb25maWctPmJhc2UuYWRqdXN0ZWRfbW9kZSwKIAkJCSAg
ICAgIENSVENfU1RFUkVPX0RPVUJMRSk7CiAKKwkvKiBTZXQgdGhlIGNydGNfc3RhdGUgZGVmYXVs
dHMgZm9yIHRyYW5zX3BvcnRfc3luYyAqLworCXBpcGVfY29uZmlnLT5tYXN0ZXJfdHJhbnNjb2Rl
ciA9IElOVkFMSURfVFJBTlNDT0RFUjsKKwlyZXQgPSBpY2xfYWRkX3N5bmNfbW9kZV9jcnRjcyhw
aXBlX2NvbmZpZyk7CisJaWYgKHJldCkgeworCQlEUk1fREVCVUdfS01TKCJDYW5ub3QgYXNzaWdu
IFN5bmMgTW9kZSBDUlRDczogJWRcbiIsCisJCQkgICAgICByZXQpOworCQlyZXR1cm4gcmV0Owor
CX0KKwogCS8qIFBhc3Mgb3VyIG1vZGUgdG8gdGhlIGNvbm5lY3RvcnMgYW5kIHRoZSBDUlRDIHRv
IGdpdmUgdGhlbSBhIGNoYW5jZSB0bwogCSAqIGFkanVzdCBpdCBhY2NvcmRpbmcgdG8gbGltaXRh
dGlvbnMgb3IgY29ubmVjdG9yIHByb3BlcnRpZXMsIGFuZCBhbHNvCiAJICogYSBjaGFuY2UgdG8g
cmVqZWN0IHRoZSBtb2RlIGVudGlyZWx5LgpAQCAtMTI4ODEsNiArMTI5OTYsOSBAQCBpbnRlbF9w
aXBlX2NvbmZpZ19jb21wYXJlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjdXJyZW50
X2NvbmZpZywKIAlQSVBFX0NPTkZfQ0hFQ0tfSU5GT0ZSQU1FKGhkbWkpOwogCVBJUEVfQ09ORl9D
SEVDS19JTkZPRlJBTUUoZHJtKTsKIAorCVBJUEVfQ09ORl9DSEVDS19JKHN5bmNfbW9kZV9zbGF2
ZXNfbWFzayk7CisJUElQRV9DT05GX0NIRUNLX0kobWFzdGVyX3RyYW5zY29kZXIpOworCiAjdW5k
ZWYgUElQRV9DT05GX0NIRUNLX1gKICN1bmRlZiBQSVBFX0NPTkZfQ0hFQ0tfSQogI3VuZGVmIFBJ
UEVfQ09ORl9DSEVDS19CT09MCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5oCmluZGV4IGJlZDIwM2VjMWRmOC4uMGNkYTI3NTU3M2UyIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaApAQCAtOTMsNiArOTMsNyBAQCBl
bnVtIHBpcGUgewogI2RlZmluZSBwaXBlX25hbWUocCkgKChwKSArICdBJykKIAogZW51bSB0cmFu
c2NvZGVyIHsKKwlJTlZBTElEX1RSQU5TQ09ERVIgPSAtMSwKIAkvKgogCSAqIFRoZSBmb2xsb3dp
bmcgdHJhbnNjb2RlcnMgaGF2ZSBhIDE6MSB0cmFuc2NvZGVyIC0+IHBpcGUgbWFwcGluZywKIAkg
KiBrZWVwIHRoZWlyIHZhbHVlcyBmaXhlZDogdGhlIGNvZGUgYXNzdW1lcyB0aGF0IFRSQU5TQ09E
RVJfQT0wLCB0aGUKQEAgLTQ2MSw2ICs0NjIsNyBAQCBlbnVtIGRybV9tb2RlX3N0YXR1cwogaW50
ZWxfbW9kZV92YWxpZF9tYXhfcGxhbmVfc2l6ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCiAJCQkJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUpOwogZW51bSBw
aHkgaW50ZWxfcG9ydF90b19waHkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGVudW0g
cG9ydCBwb3J0KTsKK2Jvb2wgaXNfdHJhbnNfcG9ydF9zeW5jX21vZGUoY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKnN0YXRlKTsKIAogdm9pZCBpbnRlbF9wbGFuZV9kZXN0cm95KHN0cnVj
dCBkcm1fcGxhbmUgKnBsYW5lKTsKIHZvaWQgaTgzMF9lbmFibGVfcGlwZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcGlwZSBwaXBlKTsKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKaW5kZXggNDAzOTBkODU1
ODE1Li44MzU4MTUyZTQwM2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCkBAIC05OTEsNiArOTkxLDEyIEBAIHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlIHsKIAogCS8qIEZvcndhcmQgRXJyb3IgY29ycmVjdGlvbiBTdGF0ZSAqLwog
CWJvb2wgZmVjX2VuYWJsZTsKKworCS8qIFBvaW50ZXIgdG8gbWFzdGVyIHRyYW5zY29kZXIgaW4g
Y2FzZSBvZiB0aWxlZCBkaXNwbGF5cyAqLworCWVudW0gdHJhbnNjb2RlciBtYXN0ZXJfdHJhbnNj
b2RlcjsKKworCS8qIEJpdG1hc2sgdG8gaW5kaWNhdGUgc2xhdmVzIGF0dGFjaGVkICovCisJdTgg
c3luY19tb2RlX3NsYXZlc19tYXNrOwogfTsKIAogc3RydWN0IGludGVsX2NydGMgewotLSAKMi4x
OS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
