Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9D133007
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 14:44:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9934B89271;
	Mon,  3 Jun 2019 12:44:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 305A189271;
 Mon,  3 Jun 2019 12:44:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 05:44:28 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.143])
 by orsmga004.jf.intel.com with ESMTP; 03 Jun 2019 05:44:23 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon,  3 Jun 2019 18:38:49 +0530
Message-Id: <1559567330-25182-3-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559567330-25182-1-git-send-email-uma.shankar@intel.com>
References: <1559567330-25182-1-git-send-email-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v2 2/3] drm: Fix docbook warnings in hdr metadata
 helper structures
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
Cc: linux-fbdev@vger.kernel.org, jonas@kwiboo.se,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Hans Verkuil <hansverk@cisco.com>, David Airlie <airlied@linux.ie>,
 seanpaul@chromium.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rml4ZXMgdGhlIGZvbGxvd2luZyB3YXJuaW5nczoKLi9pbmNsdWRlL2RybS9kcm1fbW9kZV9jb25m
aWcuaDo4NDE6IHdhcm5pbmc6IEluY29ycmVjdCB1c2Ugb2YKa2VybmVsLWRvYyBmb3JtYXQ6ICAg
ICAgICAgICogaGRyX291dHB1dF9tZXRhZGF0YV9wcm9wZXJ0eTogQ29ubmVjdG9yCnByb3BlcnR5
IGNvbnRhaW5pbmcgaGRyCi4vaW5jbHVkZS9kcm0vZHJtX21vZGVfY29uZmlnLmg6OTE4OiB3YXJu
aW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdoZHJfb3V0cHV0X21ldGFkYXRhX3By
b3BlcnR5JyBub3QgZGVzY3JpYmVkIGluICdkcm1fbW9kZV9jb25maWcnCi4vaW5jbHVkZS9kcm0v
ZHJtX2Nvbm5lY3Rvci5oOjEyNTE6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1i
ZXIgJ2hkcl9vdXRwdXRfbWV0YWRhdGEnIG5vdCBkZXNjcmliZWQgaW4gJ2RybV9jb25uZWN0b3In
Ci4vaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oOjEyNTE6IHdhcm5pbmc6IEZ1bmN0aW9uIHBh
cmFtZXRlciBvciBtZW1iZXIgJ2hkcl9zaW5rX21ldGFkYXRhJyBub3QgZGVzY3JpYmVkIGluICdk
cm1fY29ubmVjdG9yJwoKQWxzbyBhZGRzIHNvbWUgcHJvcGVydHkgZG9jdW1lbnRhdGlvbiBmb3Ig
SERSIE1ldGFkYXRhIENvbm5lY3RvcgpQcm9wZXJ0eSBpbiBjb25uZWN0b3IgcHJvcGVydHkgY3Jl
YXRlIGZ1bmN0aW9uLgoKdjI6IEZpeGVkIFNlYW4gUGF1bCdzIHJldmlldyBjb21tZW50cy4KCnYz
OiBGaXhlZCBEYW5pZWwgVmV0dGVyJ3MgcmV2aWV3IGNvbW1lbnRzLCBhZGRlZCB0aGUgVUFQSSBz
dHJ1Y3R1cmUKZGVmaW5pdGlvbiBzZWN0aW9uIGluIGtlcm5lbCBkb2NzLgoKdjQ6IEZpeGVkIERh
bmllbCBWZXR0ZXIncyByZXZpZXcgY29tbWVudHMuCgpDYzogU2hhc2hhbmsgU2hhcm1hIDxzaGFz
aGFuay5zaGFybWFAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBs
aW51eC5pbnRlbC5jb20+CkNjOiBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4u
Y29tPgpDYzogU2VhbiBQYXVsIDxzZWFuQHBvb3JseS5ydW4+CkNjOiBEYXZpZCBBaXJsaWUgPGFp
cmxpZWRAbGludXguaWU+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+CkNjOiBC
YXJ0bG9taWVqIFpvbG5pZXJraWV3aWN6IDxiLnpvbG5pZXJraWVAc2Ftc3VuZy5jb20+CkNjOiAi
VmlsbGUgU3lyasOkIiA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBIYW5zIFZl
cmt1aWwgPGhhbnN2ZXJrQGNpc2NvLmNvbT4KQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKQ2M6IGxpbnV4LWZiZGV2QHZnZXIua2VybmVsLm9yZwpSZXZpZXdlZC1ieTogU2VhbiBQ
YXVsIDxzZWFuQHBvb3JseS5ydW4+ClNpZ25lZC1vZmYtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hh
bmthckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3IuYyB8IDM3
ICsrKysrKysrKysrKysrKysrKysrKwogaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oICAgICB8
ICAxICsKIGluY2x1ZGUvZHJtL2RybV9tb2RlX2NvbmZpZy5oICAgfCAgNCArLS0KIGluY2x1ZGUv
bGludXgvaGRtaS5oICAgICAgICAgICAgfCAxMiArKysrKysrCiBpbmNsdWRlL3VhcGkvZHJtL2Ry
bV9tb2RlLmggICAgIHwgNzQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Ky0KIDUgZmlsZXMgY2hhbmdlZCwgMTI1IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3IuYyBiL2RyaXZlcnMvZ3B1
L2RybS9kcm1fY29ubmVjdG9yLmMKaW5kZXggYzlhYzhiOS4uYzQ0NWQ1NyAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJt
X2Nvbm5lY3Rvci5jCkBAIC05NTYsNiArOTU2LDQzIEBAIGludCBkcm1fZGlzcGxheV9pbmZvX3Nl
dF9idXNfZm9ybWF0cyhzdHJ1Y3QgZHJtX2Rpc3BsYXlfaW5mbyAqaW5mbywKICAqCSAgaXMgbm8g
bG9uZ2VyIHByb3RlY3RlZCBhbmQgdXNlcnNwYWNlIHNob3VsZCB0YWtlIGFwcHJvcHJpYXRlIGFj
dGlvbgogICoJICAod2hhdGV2ZXIgdGhhdCBtaWdodCBiZSkuCiAgKgorICogSERSX09VVFBVVF9N
RVRBREFUQToKKyAqCUNvbm5lY3RvciBwcm9wZXJ0eSB0byBlbmFibGUgdXNlcnNwYWNlIHRvIHNl
bmQgSERSIE1ldGFkYXRhIHRvCisgKglkcml2ZXIuIFRoaXMgbWV0YWRhdGEgaXMgYmFzZWQgb24g
dGhlIGNvbXBvc2l0aW9uIGFuZCBibGVuZGluZworICoJcG9saWNpZXMgZGVjaWRlZCBieSB1c2Vy
LCB0YWtpbmcgaW50byBhY2NvdW50IHRoZSBoYXJkd2FyZSBhbmQKKyAqCXNpbmsgY2FwYWJpbGl0
aWVzLiBUaGUgZHJpdmVyIGdldHMgdGhpcyBtZXRhZGF0YSBhbmQgY3JlYXRlcyBhCisgKglEeW5h
bWljIFJhbmdlIGFuZCBNYXN0ZXJpbmcgSW5mb2ZyYW1lIChEUk0pIGluIGNhc2Ugb2YgSERNSSwK
KyAqCVNEUCBwYWNrZXQgKE5vbi1hdWRpbyBJTkZPRlJBTUUgU0RQIHYxLjMpIGZvciBEUC4gVGhp
cyBpcyB0aGVuCisgKglzZW50IHRvIHNpbmsuIFRoaXMgbm90aWZpZXMgdGhlIHNpbmsgb2YgdGhl
IHVwY29taW5nIGZyYW1lJ3MgQ29sb3IKKyAqCUVuY29kaW5nIGFuZCBMdW1pbmFuY2UgcGFyYW1l
dGVycy4KKyAqCisgKglVc2Vyc3BhY2UgZmlyc3QgbmVlZCB0byBkZXRlY3QgdGhlIEhEUiBjYXBh
YmlsaXRpZXMgb2Ygc2luayBieQorICoJcmVhZGluZyBhbmQgcGFyc2luZyB0aGUgRURJRC4gRGV0
YWlscyBvZiBIRFIgbWV0YWRhdGEgZm9yIEhETUkKKyAqCWFyZSBhZGRlZCBpbiBDVEEgODYxLkcg
c3BlYy4gRm9yIERQICwgaXRzIGRlZmluZWQgaW4gVkVTQSBEUAorICoJU3RhbmRhcmQgdjEuNC4g
SXQgbmVlZHMgdG8gdGhlbiBnZXQgdGhlIG1ldGFkYXRhIGluZm9ybWF0aW9uCisgKglvZiB0aGUg
dmlkZW8vZ2FtZS9hcHAgY29udGVudCB3aGljaCBhcmUgZW5jb2RlZCBpbiBIRFIgKGJhc2ljYWxs
eQorICoJdXNpbmcgSERSIHRyYW5zZmVyIGZ1bmN0aW9ucykuIFdpdGggdGhpcyBpbmZvcm1hdGlv
biBpdCBuZWVkcyB0bworICoJZGVjaWRlIG9uIGEgYmxlbmRpbmcgcG9saWN5IGFuZCBjb21wb3Nl
IHRoZSByZWxldmFudAorICoJbGF5ZXJzL292ZXJsYXlzIGludG8gYSBjb21tb24gZm9ybWF0LiBP
bmNlIHRoaXMgYmxlbmRpbmcgaXMgZG9uZSwKKyAqCXVzZXJzcGFjZSB3aWxsIGJlIGF3YXJlIG9m
IHRoZSBtZXRhZGF0YSBvZiB0aGUgY29tcG9zZWQgZnJhbWUgdG8KKyAqCWJlIHNlbmQgdG8gc2lu
ay4gSXQgdGhlbiB1c2VzIHRoaXMgcHJvcGVydHkgdG8gY29tbXVuaWNhdGUgdGhpcworICoJbWV0
YWRhdGEgdG8gZHJpdmVyIHdoaWNoIHRoZW4gbWFrZSBhIEluZm9mcmFtZSBwYWNrZXQgYW5kIHNl
bmRzCisgKgl0byBzaW5rIGJhc2VkIG9uIHRoZSB0eXBlIG9mIGVuY29kZXIgY29ubmVjdGVkLgor
ICoKKyAqCVVzZXJzcGFjZSB3aWxsIGJlIHJlc3BvbnNpYmxlIHRvIGRvIFRvbmUgbWFwcGluZyBv
cGVyYXRpb24gaW4gY2FzZToKKyAqCQktIFNvbWUgbGF5ZXJzIGFyZSBIRFIgYW5kIG90aGVycyBh
cmUgU0RSCisgKgkJLSBIRFIgbGF5ZXJzIGx1bWluYW5jZSBpcyBub3Qgc2FtZSBhcyBzaW5rCisg
KglJdCB3aWxsIGV2ZW4gbmVlZCB0byBkbyBjb2xvcnNwYWNlIGNvbnZlcnNpb24gYW5kIGdldCBh
bGwgbGF5ZXJzCisgKgl0byBvbmUgY29tbW9uIGNvbG9yc3BhY2UgZm9yIGJsZW5kaW5nLiBJdCBj
YW4gdXNlIGVpdGhlciBHTCwgTWVkaWEKKyAqCW9yIGRpc3BsYXkgZW5naW5lIHRvIGdldCB0aGlz
IGRvbmUgYmFzZWQgb24gdGhlIGNhcGFiaWx0aWVzIG9mIHRoZQorICoJYXNzb2NpYXRlZCBoYXJk
d2FyZS4KKyAqCisgKglEcml2ZXIgZXhwZWN0cyBtZXRhZGF0YSB0byBiZSBwdXQgaW4gJmhkcl9v
dXRwdXRfbWV0YWRhdGEgc3RydWN0dXJlCisgKglmcm9tIHVzZXJzcGFjZS4gSXQgcGFyc2VzIEVE
SUQgYW5kIHNhdmVzIHRoZSBzaW5rIG1ldGFkYXRhIGluCisgKgkmaGRyX3NpbmtfbWV0YWRhdGEu
IERyaXZlciB1c2VzICZkcm1faGRtaV9pbmZvZnJhbWVfc2V0X2hkcl9tZXRhZGF0YQorICoJaGVs
cGVyIHRvIHNldCB0aGUgSERSIG1ldGFkYXRhLCAmaGRtaV9kcm1faW5mb2ZyYW1lX3BhY2sgdG8g
cGFjayB0aGUKKyAqCWluZm9mcmFtZSBhcyBwZXIgc3BlYywgaW4gY2FzZSBvZiBIRE1JIGVuY29k
ZXIuCisgKgogICogbWF4IGJwYzoKICAqCVRoaXMgcmFuZ2UgcHJvcGVydHkgaXMgdXNlZCBieSB1
c2Vyc3BhY2UgdG8gbGltaXQgdGhlIGJpdCBkZXB0aC4gV2hlbgogICoJdXNlZCB0aGUgZHJpdmVy
IHdvdWxkIGxpbWl0IHRoZSBicGMgaW4gYWNjb3JkYW5jZSB3aXRoIHRoZSB2YWxpZCByYW5nZQpk
aWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oIGIvaW5jbHVkZS9kcm0vZHJt
X2Nvbm5lY3Rvci5oCmluZGV4IDU0NzY1NjEuLjQ3ZTc0OWIgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUv
ZHJtL2RybV9jb25uZWN0b3IuaAorKysgYi9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmgKQEAg
LTEyNDQsNiArMTI0NCw3IEBAIHN0cnVjdCBkcm1fY29ubmVjdG9yIHsKIAkgKi8KIAlzdHJ1Y3Qg
bGxpc3Rfbm9kZSBmcmVlX25vZGU7CiAKKwkvKiogQGhkcl9zaW5rX21ldGFkYXRhOiBIRFIgTWV0
YWRhdGEgSW5mb3JtYXRpb24gcmVhZCBmcm9tIHNpbmsgKi8KIAlzdHJ1Y3QgaGRyX3NpbmtfbWV0
YWRhdGEgaGRyX3NpbmtfbWV0YWRhdGE7CiB9OwogCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9k
cm1fbW9kZV9jb25maWcuaCBiL2luY2x1ZGUvZHJtL2RybV9tb2RlX2NvbmZpZy5oCmluZGV4IDRm
ODhjYzkuLjc1OWQ0NjIgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL2RybV9tb2RlX2NvbmZpZy5o
CisrKyBiL2luY2x1ZGUvZHJtL2RybV9tb2RlX2NvbmZpZy5oCkBAIC04MzcsOCArODM3LDggQEAg
c3RydWN0IGRybV9tb2RlX2NvbmZpZyB7CiAJc3RydWN0IGRybV9wcm9wZXJ0eSAqd3JpdGViYWNr
X291dF9mZW5jZV9wdHJfcHJvcGVydHk7CiAKIAkvKioKLQkgKiBoZHJfb3V0cHV0X21ldGFkYXRh
X3Byb3BlcnR5OiBDb25uZWN0b3IgcHJvcGVydHkgY29udGFpbmluZyBoZHIKLQkgKiBtZXRhdGRh
LiBUaGlzIHdpbGwgYmUgcHJvdmlkZWQgYnkgdXNlcnNwYWNlIGNvbXBvc2l0b3JzIGJhc2VkCisJ
ICogQGhkcl9vdXRwdXRfbWV0YWRhdGFfcHJvcGVydHk6IENvbm5lY3RvciBwcm9wZXJ0eSBjb250
YWluaW5nIGhkcgorCSAqIG1ldGF0YWRhLiBUaGlzIHdpbGwgYmUgcHJvdmlkZWQgYnkgdXNlcnNw
YWNlIGNvbXBvc2l0b3JzIGJhc2VkCiAJICogb24gSERSIGNvbnRlbnQKIAkgKi8KIAlzdHJ1Y3Qg
ZHJtX3Byb3BlcnR5ICpoZHJfb3V0cHV0X21ldGFkYXRhX3Byb3BlcnR5OwpkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9saW51eC9oZG1pLmggYi9pbmNsdWRlL2xpbnV4L2hkbWkuaAppbmRleCBlZTU1YmE1
Li45OTE4YTZjIDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L2hkbWkuaAorKysgYi9pbmNsdWRl
L2xpbnV4L2hkbWkuaApAQCAtMzY3LDggKzM2NywxOSBAQCBzdHJ1Y3QgaGRyX3N0YXRpY19tZXRh
ZGF0YSB7CiAJX191MTYgbWluX2NsbDsKIH07CiAKKy8qKgorICogc3RydWN0IGhkcl9zaW5rX21l
dGFkYXRhIC0gSERSIHNpbmsgbWV0YWRhdGEKKyAqCisgKiBNZXRhZGF0YSBJbmZvcm1hdGlvbiBy
ZWFkIGZyb20gU2luaydzIEVESUQKKyAqLwogc3RydWN0IGhkcl9zaW5rX21ldGFkYXRhIHsKKwkv
KioKKwkgKiBAbWV0YWRhdGFfdHlwZTogU3RhdGljX01ldGFkYXRhX0Rlc2NyaXB0b3JfSUQuCisJ
ICovCiAJX191MzIgbWV0YWRhdGFfdHlwZTsKKwkvKioKKwkgKiBAaGRtaV90eXBlMTogSERSIE1l
dGFkYXRhIEluZm9mcmFtZS4KKwkgKi8KIAl1bmlvbiB7CiAJCXN0cnVjdCBoZHJfc3RhdGljX21l
dGFkYXRhIGhkbWlfdHlwZTE7CiAJfTsKQEAgLTM5OCw2ICs0MDksNyBAQCBzc2l6ZV90IGhkbWlf
dmVuZG9yX2luZm9mcmFtZV9wYWNrX29ubHkoY29uc3Qgc3RydWN0IGhkbWlfdmVuZG9yX2luZm9m
cmFtZSAqZnJhbQogICogQHNwZDogc3BkIGluZm9mcmFtZQogICogQHZlbmRvcjogdW5pb24gb2Yg
YWxsIHZlbmRvciBpbmZvZnJhbWVzCiAgKiBAYXVkaW86IGF1ZGlvIGluZm9mcmFtZQorICogQGRy
bTogRHluYW1pYyBSYW5nZSBhbmQgTWFzdGVyaW5nIGluZm9mcmFtZQogICoKICAqIFRoaXMgaXMg
dXNlZCBieSB0aGUgZ2VuZXJpYyBwYWNrIGZ1bmN0aW9uLiBUaGlzIHdvcmtzIHNpbmNlIGFsbCBp
bmZvZnJhbWVzCiAgKiBoYXZlIHRoZSBzYW1lIGhlYWRlciB3aGljaCBhbHNvIGluZGljYXRlcyB3
aGljaCB0eXBlIG9mIGluZm9mcmFtZSBzaG91bGQgYmUKZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFw
aS9kcm0vZHJtX21vZGUuaCBiL2luY2x1ZGUvdWFwaS9kcm0vZHJtX21vZGUuaAppbmRleCAxOWI1
Y2YzLi41YWIzMzFlIDEwMDY0NAotLS0gYS9pbmNsdWRlL3VhcGkvZHJtL2RybV9tb2RlLmgKKysr
IGIvaW5jbHVkZS91YXBpL2RybS9kcm1fbW9kZS5oCkBAIC0zMyw2ICszMywxNSBAQAogZXh0ZXJu
ICJDIiB7CiAjZW5kaWYKIAorLyoqCisgKiBET0M6IG92ZXJ2aWV3CisgKgorICogRFJNIGV4cG9z
ZXMgbWFueSBVQVBJIGFuZCBzdHJ1Y3R1cmUgZGVmaW5pdGlvbiB0byBoYXZlIGEgY29uc2lzdGVu
dAorICogYW5kIHN0YW5kYXJkaXplZCBpbnRlcmZhY2Ugd2l0aCB1c2VyLgorICogVXNlcnNwYWNl
IGNhbiByZWZlciB0byB0aGVzZSBzdHJ1Y3R1cmUgZGVmaW5pdGlvbnMgYW5kIFVBUEkgZm9ybWF0
cworICogdG8gY29tbXVuaWNhdGUgdG8gZHJpdmVyCisgKi8KKwogI2RlZmluZSBEUk1fQ09OTkVD
VE9SX05BTUVfTEVOCTMyCiAjZGVmaW5lIERSTV9ESVNQTEFZX01PREVfTEVOCTMyCiAjZGVmaW5l
IERSTV9QUk9QX05BTUVfTEVOCTMyCkBAIC02MzAsMjQgKzYzOSw4NyBAQCBzdHJ1Y3QgZHJtX2Nv
bG9yX2x1dCB7CiAJX191MTYgcmVzZXJ2ZWQ7CiB9OwogCi0vKiBIRFIgTWV0YWRhdGEgSW5mb2Zy
YW1lIGFzIHBlciA4NjEuRyBzcGVjICovCisvKioKKyAqIHN0cnVjdCBoZHJfbWV0YWRhdGFfaW5m
b2ZyYW1lIC0gSERSIE1ldGFkYXRhIEluZm9mcmFtZSBEYXRhLgorICoKKyAqIEhEUiBNZXRhZGF0
YSBJbmZvZnJhbWUgYXMgcGVyIENUQSA4NjEuRyBzcGVjLiBUaGlzIGlzIGV4cGVjdGVkCisgKiB0
byBtYXRjaCBleGFjdGx5IHdpdGggdGhlIHNwZWMuCisgKgorICogVXNlcnNwYWNlIGlzIGV4cGVj
dGVkIHRvIHBhc3MgdGhlIG1ldGFkYXRhIGluZm9ybWF0aW9uIGFzIHBlcgorICogdGhlIGZvcm1h
dCBkZXNjcmliZWQgaW4gdGhpcyBzdHJ1Y3R1cmUuCisgKi8KIHN0cnVjdCBoZHJfbWV0YWRhdGFf
aW5mb2ZyYW1lIHsKKwkvKioKKwkgKiBAZW90ZjogRWxlY3Ryby1PcHRpY2FsIFRyYW5zZmVyIEZ1
bmN0aW9uIChFT1RGKQorCSAqIHVzZWQgaW4gdGhlIHN0cmVhbS4KKwkgKi8KIAlfX3U4IGVvdGY7
CisJLyoqCisJICogQG1ldGFkYXRhX3R5cGU6IFN0YXRpY19NZXRhZGF0YV9EZXNjcmlwdG9yX0lE
LgorCSAqLwogCV9fdTggbWV0YWRhdGFfdHlwZTsKKwkvKioKKwkgKiBAZGlzcGxheV9wcmltYXJp
ZXM6IENvbG9yIFByaW1hcmllcyBvZiB0aGUgRGF0YS4KKwkgKiBUaGVzZSBhcmUgY29kZWQgYXMg
dW5zaWduZWQgMTYtYml0IHZhbHVlcyBpbiB1bml0cyBvZgorCSAqIDAuMDAwMDIsIHdoZXJlIDB4
MDAwMCByZXByZXNlbnRzIHplcm8gYW5kIDB4QzM1MAorCSAqIHJlcHJlc2VudHMgMS4wMDAwLgor
CSAqIEBkaXNwbGF5X3ByaW1hcmllcy54OiBYIGNvcmRpbmF0ZSBvZiBjb2xvciBwcmltYXJ5Lgor
CSAqIEBkaXNwbGF5X3ByaW1hcmllcy55OiBZIGNvcmRpbmF0ZSBvZiBjb2xvciBwcmltYXJ5Lgor
CSAqLwogCXN0cnVjdCB7CiAJCV9fdTE2IHgsIHk7CiAJCX0gZGlzcGxheV9wcmltYXJpZXNbM107
CisJLyoqCisJICogQHdoaXRlX3BvaW50OiBXaGl0ZSBQb2ludCBvZiBDb2xvcnNwYWNlIERhdGEu
CisJICogVGhlc2UgYXJlIGNvZGVkIGFzIHVuc2lnbmVkIDE2LWJpdCB2YWx1ZXMgaW4gdW5pdHMg
b2YKKwkgKiAwLjAwMDAyLCB3aGVyZSAweDAwMDAgcmVwcmVzZW50cyB6ZXJvIGFuZCAweEMzNTAK
KwkgKiByZXByZXNlbnRzIDEuMDAwMC4KKwkgKiBAd2hpdGVfcG9pbnQueDogWCBjb3JkaW5hdGUg
b2Ygd2hpdGVwb2ludCBvZiBjb2xvciBwcmltYXJ5LgorCSAqIEB3aGl0ZV9wb2ludC55OiBZIGNv
cmRpbmF0ZSBvZiB3aGl0ZXBvaW50IG9mIGNvbG9yIHByaW1hcnkuCisJICovCiAJc3RydWN0IHsK
IAkJX191MTYgeCwgeTsKIAkJfSB3aGl0ZV9wb2ludDsKKwkvKioKKwkgKiBAbWF4X2Rpc3BsYXlf
bWFzdGVyaW5nX2x1bWluYW5jZTogTWF4IE1hc3RlcmluZyBEaXNwbGF5IEx1bWluYW5jZS4KKwkg
KiBUaGlzIHZhbHVlIGlzIGNvZGVkIGFzIGFuIHVuc2lnbmVkIDE2LWJpdCB2YWx1ZSBpbiB1bml0
cyBvZiAxIGNkL20yLAorCSAqIHdoZXJlIDB4MDAwMSByZXByZXNlbnRzIDEgY2QvbTIgYW5kIDB4
RkZGRiByZXByZXNlbnRzIDY1NTM1IGNkL20yLgorCSAqLwogCV9fdTE2IG1heF9kaXNwbGF5X21h
c3RlcmluZ19sdW1pbmFuY2U7CisJLyoqCisJICogQG1pbl9kaXNwbGF5X21hc3RlcmluZ19sdW1p
bmFuY2U6IE1pbiBNYXN0ZXJpbmcgRGlzcGxheSBMdW1pbmFuY2UuCisJICogVGhpcyB2YWx1ZSBp
cyBjb2RlZCBhcyBhbiB1bnNpZ25lZCAxNi1iaXQgdmFsdWUgaW4gdW5pdHMgb2YKKwkgKiAwLjAw
MDEgY2QvbTIsIHdoZXJlIDB4MDAwMSByZXByZXNlbnRzIDAuMDAwMSBjZC9tMiBhbmQgMHhGRkZG
CisJICogcmVwcmVzZW50cyA2LjU1MzUgY2QvbTIuCisJICovCiAJX191MTYgbWluX2Rpc3BsYXlf
bWFzdGVyaW5nX2x1bWluYW5jZTsKKwkvKioKKwkgKiBAbWF4X2NsbDogTWF4IENvbnRlbnQgTGln
aHQgTGV2ZWwuCisJICogVGhpcyB2YWx1ZSBpcyBjb2RlZCBhcyBhbiB1bnNpZ25lZCAxNi1iaXQg
dmFsdWUgaW4gdW5pdHMgb2YgMSBjZC9tMiwKKwkgKiB3aGVyZSAweDAwMDEgcmVwcmVzZW50cyAx
IGNkL20yIGFuZCAweEZGRkYgcmVwcmVzZW50cyA2NTUzNSBjZC9tMi4KKwkgKi8KIAlfX3UxNiBt
YXhfY2xsOworCS8qKgorCSAqIEBtYXhfZmFsbDogTWF4IEZyYW1lIEF2ZXJhZ2UgTGlnaHQgTGV2
ZWwuCisJICogVGhpcyB2YWx1ZSBpcyBjb2RlZCBhcyBhbiB1bnNpZ25lZCAxNi1iaXQgdmFsdWUg
aW4gdW5pdHMgb2YgMSBjZC9tMiwKKwkgKiB3aGVyZSAweDAwMDEgcmVwcmVzZW50cyAxIGNkL20y
IGFuZCAweEZGRkYgcmVwcmVzZW50cyA2NTUzNSBjZC9tMi4KKwkgKi8KIAlfX3UxNiBtYXhfZmFs
bDsKIH07CiAKKy8qKgorICogc3RydWN0IGhkcl9vdXRwdXRfbWV0YWRhdGEgLSBIRFIgb3V0cHV0
IG1ldGFkYXRhCisgKgorICogTWV0YWRhdGEgSW5mb3JtYXRpb24gdG8gYmUgcGFzc2VkIGZyb20g
dXNlcnNwYWNlCisgKi8KIHN0cnVjdCBoZHJfb3V0cHV0X21ldGFkYXRhIHsKKwkvKioKKwkgKiBA
bWV0YWRhdGFfdHlwZTogU3RhdGljX01ldGFkYXRhX0Rlc2NyaXB0b3JfSUQuCisJICovCiAJX191
MzIgbWV0YWRhdGFfdHlwZTsKKwkvKioKKwkgKiBAaGRtaV9tZXRhZGF0YV90eXBlMTogSERSIE1l
dGFkYXRhIEluZm9mcmFtZS4KKwkgKi8KIAl1bmlvbiB7CiAJCXN0cnVjdCBoZHJfbWV0YWRhdGFf
aW5mb2ZyYW1lIGhkbWlfbWV0YWRhdGFfdHlwZTE7CiAJfTsKLS0gCjEuOS4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
