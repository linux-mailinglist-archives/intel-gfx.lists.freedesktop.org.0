Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57EC5121EC0
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 00:09:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A44EB6E8F1;
	Mon, 16 Dec 2019 23:09:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5A6E6E8EF
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 23:09:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 14:08:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,323,1571727600"; d="scan'208";a="240188487"
Received: from gneiger-mobl2.amr.corp.intel.com (HELO
 josouza-MOBL.amr.corp.intel.com) ([10.251.15.215])
 by fmsmga004.fm.intel.com with ESMTP; 16 Dec 2019 14:08:10 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2019 14:07:38 -0800
Message-Id: <20191216220742.34332-7-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191216220742.34332-1-jose.souza@intel.com>
References: <20191216220742.34332-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 07/11] drm/i915/tgl: Select master transcoder
 for MST stream
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVEdMIHRoZSBibGVuZGluZyBvZiBhbGwgdGhlIHN0cmVhbXMgaGF2ZSBtb3ZlZCBmcm9tIERE
SSB0bwp0cmFuc2NvZGVyLCBzbyBub3cgZXZlcnkgdHJhbnNjb2RlciB3b3JraW5nIG92ZXIgdGhl
IHNhbWUgTVNUIHBvcnQgbXVzdApzZW5kIGl0cyBzdHJlYW0gdG8gYSBtYXN0ZXIgdHJhbnNjb2Rl
ciBhbmQgbWFzdGVyIHdpbGwgc2VuZCB0byBEREkKcmVzcGVjdGluZyB0aGUgdGltZSBzbG90cy4K
ClNvIGhlcmUgYWRkaW5nIGFsbCB0aGUgQ1JUQ3MgdGhhdCBzaGFyZXMgdGhlIHNhbWUgTVNUIHN0
cmVhbSBpZgpuZWVkZWQgYW5kIGNvbXB1dGluZyB0aGVpciBzdGF0ZSBhZ2FpbiwgaXQgd2lsbCBw
aWNrIHRoZSBsb3dlc3QKcGlwZS90cmFuc2NvZGVyIGFtb25nIHRoZSBvbmVzIGluIHRoZSBzYW1l
IHN0cmVhbSB0byBiZSBtYXN0ZXIuCgpNb3N0IG9mIHRoZSB0aW1lIHNrbF9jb21taXRfbW9kZXNl
dF9lbmFibGVzKCkgZW5hYmxlcyBwaXBlcyBpbiBhCmNyZXNjZW50IG9yZGVyIGJ1dCBkdWUgRERC
IG92ZXJsYXBwaW5nIGl0IG1pZ2h0IG5vdCBoYXBwZW4sIHRoaXMKc2NlbmFyaW9zIHdpbGwgYmUg
aGFuZGxlZCBpbiB0aGUgbmV4dCBwYXRjaC4KCnYyOgotIFVzaW5nIHJlY2VudGx5IGFkZGVkIGlu
dGVsX2NydGNfc3RhdGVfcmVzZXQoKSB0byBzZXQKbXN0X21hc3Rlcl90cmFuc2NvZGVyIHRvIGlu
dmFsaWQgdHJhbnNjb2RlciBmb3IgYWxsIG5vbiBnZW4xMiAmIE1TVApjb2RlIHBhdGhzCi0gU2V0
dGluZyBsb3dlc3QgcGlwZS90cmFuc2NvZGVyIGFzIG1hc3RlciwgcHJldmlvdXNseSBpdCB3YXMg
dGhlCmZpcnN0IG9uZSBidXQgc2V0dGluZyBhIHByZWRpY3RhYmxlIG9uZSB3aWxsIGhlbHAgaW4g
ZnV0dXJlIE1TVCBlCnBvcnQgc3luYyBpbnRlZ3JhdGlvbgotIE1vdmluZyB0byBpbnRlbCB0eXBl
IGFzIG11Y2ggYXMgd2UgY2FuCgp2MzoKLSBOb3cgaW50ZWxfZHBfbXN0X21hc3Rlcl90cmFuc19j
b21wdXRlKCkgcmV0dXJucyB0aGUgTVNUIG1hc3RlciB0cmFuc2NvZGVyCi0gUmVwbGFjZWQgc3Rk
Ym9vbC5oIGJ5IGxpbnV4L3R5cGVzLmgKLSBTa2lwIHRoZSBjb25uZWN0b3IgYmVpbmcgY2hlY2tl
ZCBpbgppbnRlbF9kcF9tc3RfYXRvbWljX21hc3Rlcl90cmFuc19jaGVjaygpCi0gVXNpbmcgcGlw
ZSBpbnN0ZWFkIG9mIHRyYW5zY29kZXIgdG8gY29tcHV0ZSBNU1QgbWFzdGVyCgpCU3BlYzogNTA0
OTMKQlNwZWM6IDQ5MTkwCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMgICB8
ICAxNCArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuaCAgIHwg
ICA0ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgICB8ICAx
NCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgIDEz
ICstCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgIDMg
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyAgIHwgMTQ2ICsr
KysrKysrKysrKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9t
c3QuaCAgIHwgICA1ICsKIDcgZmlsZXMgY2hhbmdlZCwgMTg2IGluc2VydGlvbnMoKyksIDEzIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXRvbWljLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5j
CmluZGV4IGI3ZGRhMThiNmYyOS4uMGVlNzc2MGZiMjRhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMKQEAgLTE5Miw2ICsxOTIsMjAgQEAgaW50ZWxfY29u
bmVjdG9yX25lZWRzX21vZGVzZXQoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJ
CQkJCQkJCQkgICAgbmV3X2Nvbm5fc3RhdGUtPmNydGMpKSk7CiB9CiAKK3N0cnVjdCBpbnRlbF9k
aWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSAqCitpbnRlbF9hdG9taWNfZ2V0X2RpZ2l0YWxfY29ubmVj
dG9yX3N0YXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAorCQkJCQkgc3RydWN0
IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQoreworCXN0cnVjdCBkcm1fY29ubmVjdG9yX3N0
YXRlICpjb25uZWN0b3Jfc3RhdGU7CisKKwljb25uZWN0b3Jfc3RhdGUgPSBkcm1fYXRvbWljX2dl
dF9jb25uZWN0b3Jfc3RhdGUoJnN0YXRlLT5iYXNlLAorCQkJCQkJCSAmY29ubmVjdG9yLT5iYXNl
KTsKKwlpZiAoSVNfRVJSKGNvbm5lY3Rvcl9zdGF0ZSkpCisJCXJldHVybiBFUlJfQ0FTVChjb25u
ZWN0b3Jfc3RhdGUpOworCisJcmV0dXJuIHRvX2ludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRl
KGNvbm5lY3Rvcl9zdGF0ZSk7Cit9CisKIC8qKgogICogaW50ZWxfY3J0Y19kdXBsaWNhdGVfc3Rh
dGUgLSBkdXBsaWNhdGUgY3J0YyBzdGF0ZQogICogQGNydGM6IGRybSBjcnRjCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuaAppbmRleCBhN2QxYTg1NzZjNDguLjc0
Yzc0OWRiZmI0ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9hdG9taWMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21p
Yy5oCkBAIC0xNyw2ICsxNyw3IEBAIHN0cnVjdCBkcm1fZGV2aWNlOwogc3RydWN0IGRybV9pOTE1
X3ByaXZhdGU7CiBzdHJ1Y3QgZHJtX3Byb3BlcnR5Owogc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZTsKK3N0cnVjdCBpbnRlbF9jb25uZWN0b3I7CiBzdHJ1Y3QgaW50ZWxfY3J0YzsKIHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlOwogCkBAIC0zNCw2ICszNSw5IEBAIHN0cnVjdCBkcm1fY29ubmVjdG9y
X3N0YXRlICoKIGludGVsX2RpZ2l0YWxfY29ubmVjdG9yX2R1cGxpY2F0ZV9zdGF0ZShzdHJ1Y3Qg
ZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKTsKIGJvb2wgaW50ZWxfY29ubmVjdG9yX25lZWRzX21v
ZGVzZXQoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJCQkJICAgc3RydWN0IGRy
bV9jb25uZWN0b3IgKmNvbm5lY3Rvcik7CitzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9jb25uZWN0b3Jf
c3RhdGUgKgoraW50ZWxfYXRvbWljX2dldF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZShzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKKwkJCQkJIHN0cnVjdCBpbnRlbF9jb25uZWN0b3Ig
KmNvbm5lY3Rvcik7CiAKIHN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqaW50ZWxfY3J0Y19kdXBsaWNh
dGVfc3RhdGUoc3RydWN0IGRybV9jcnRjICpjcnRjKTsKIHZvaWQgaW50ZWxfY3J0Y19kZXN0cm95
X3N0YXRlKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jCmluZGV4IDViNmYzMjUxN2M3NS4uNmVlNTIzMDA0NWViIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTE5MDMsOCArMTkwMywxMyBAQCBp
bnRlbF9kZGlfdHJhbnNjb2Rlcl9mdW5jX3JlZ192YWxfZ2V0KGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCQl0ZW1wIHw9IFRSQU5TX0RESV9NT0RFX1NFTEVDVF9E
UF9NU1Q7CiAJCXRlbXAgfD0gRERJX1BPUlRfV0lEVEgoY3J0Y19zdGF0ZS0+bGFuZV9jb3VudCk7
CiAKLQkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCi0JCQl0ZW1wIHw9IFRSQU5TX0RE
SV9NU1RfVFJBTlNQT1JUX1NFTEVDVChjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2Rlcik7CisJCWlm
IChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7CisJCQllbnVtIHRyYW5zY29kZXIgbWFzdGVy
OworCisJCQltYXN0ZXIgPSBjcnRjX3N0YXRlLT5tc3RfbWFzdGVyX3RyYW5zY29kZXI7CisJCQlX
QVJOX09OKG1hc3RlciA9PSBJTlZBTElEX1RSQU5TQ09ERVIpOworCQkJdGVtcCB8PSBUUkFOU19E
RElfTVNUX1RSQU5TUE9SVF9TRUxFQ1QobWFzdGVyKTsKKwkJfQogCX0gZWxzZSB7CiAJCXRlbXAg
fD0gVFJBTlNfRERJX01PREVfU0VMRUNUX0RQX1NTVDsKIAkJdGVtcCB8PSBERElfUE9SVF9XSURU
SChjcnRjX3N0YXRlLT5sYW5lX2NvdW50KTsKQEAgLTQzNzcsNiArNDM4MiwxMSBAQCB2b2lkIGlu
dGVsX2RkaV9nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQlwaXBl
X2NvbmZpZy0+b3V0cHV0X3R5cGVzIHw9IEJJVChJTlRFTF9PVVRQVVRfRFBfTVNUKTsKIAkJcGlw
ZV9jb25maWctPmxhbmVfY291bnQgPQogCQkJKCh0ZW1wICYgRERJX1BPUlRfV0lEVEhfTUFTSykg
Pj4gRERJX1BPUlRfV0lEVEhfU0hJRlQpICsgMTsKKworCQlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSAxMikKKwkJCXBpcGVfY29uZmlnLT5tc3RfbWFzdGVyX3RyYW5zY29kZXIgPQorCQkJCQlS
RUdfRklFTERfR0VUKFRSQU5TX0RESV9NU1RfVFJBTlNQT1JUX1NFTEVDVF9NQVNLLCB0ZW1wKTsK
KwogCQlpbnRlbF9kcF9nZXRfbV9uKGludGVsX2NydGMsIHBpcGVfY29uZmlnKTsKIAkJYnJlYWs7
CiAJZGVmYXVsdDoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKaW5kZXggMGVlMmU4NmE4ODI2Li5lOTc2ZjgyYTBkYjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC00Niw2ICs0Niw3IEBACiAjaW5jbHVk
ZSAiZGlzcGxheS9pbnRlbF9jcnQuaCIKICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2RkaS5oIgog
I2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZHAuaCIKKyNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2Rw
X21zdC5oIgogI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZHNpLmgiCiAjaW5jbHVkZSAiZGlzcGxh
eS9pbnRlbF9kdm8uaCIKICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2dtYnVzLmgiCkBAIC0xMTY2
Niw2ICsxMTY2Nyw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2NydGNfc3RhdGVfcmVzZXQoc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJY3J0Y19zdGF0ZS0+aHN3X3dvcmthcm91
bmRfcGlwZSA9IElOVkFMSURfUElQRTsKIAljcnRjX3N0YXRlLT5vdXRwdXRfZm9ybWF0ID0gSU5U
RUxfT1VUUFVUX0ZPUk1BVF9JTlZBTElEOwogCWNydGNfc3RhdGUtPnNjYWxlcl9zdGF0ZS5zY2Fs
ZXJfaWQgPSAtMTsKKwljcnRjX3N0YXRlLT5tc3RfbWFzdGVyX3RyYW5zY29kZXIgPSBJTlZBTElE
X1RSQU5TQ09ERVI7CiB9CiAKIC8qIFJldHVybnMgdGhlIGN1cnJlbnRseSBwcm9ncmFtbWVkIG1v
ZGUgb2YgdGhlIGdpdmVuIGVuY29kZXIuICovCkBAIC0xMjUxMyw2ICsxMjUxNSw5IEBAIHN0YXRp
YyB2b2lkIGludGVsX2R1bXBfcGlwZV9jb25maWcoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKnBpcGVfY29uZmlnLAogCQkJICAgICAgcGlwZV9jb25maWctPmNzY19tb2RlLCBwaXBlX2Nv
bmZpZy0+Z2FtbWFfbW9kZSwKIAkJCSAgICAgIHBpcGVfY29uZmlnLT5nYW1tYV9lbmFibGUsIHBp
cGVfY29uZmlnLT5jc2NfZW5hYmxlKTsKIAorCURSTV9ERUJVR19LTVMoIk1TVCBtYXN0ZXIgdHJh
bnNjb2RlcjogJXNcbiIsCisJCSAgICAgIHRyYW5zY29kZXJfbmFtZShwaXBlX2NvbmZpZy0+bXN0
X21hc3Rlcl90cmFuc2NvZGVyKSk7CisKIGR1bXBfcGxhbmVzOgogCWlmICghc3RhdGUpCiAJCXJl
dHVybjsKQEAgLTEyNjU0LDYgKzEyNjU5LDcgQEAgaW50ZWxfY3J0Y19wcmVwYXJlX2NsZWFyZWRf
c3RhdGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJbWVtY3B5KHNhdmVk
X3N0YXRlLT5pY2xfcG9ydF9kcGxscywgY3J0Y19zdGF0ZS0+aWNsX3BvcnRfZHBsbHMsCiAJICAg
ICAgIHNpemVvZihzYXZlZF9zdGF0ZS0+aWNsX3BvcnRfZHBsbHMpKTsKIAlzYXZlZF9zdGF0ZS0+
Y3JjX2VuYWJsZWQgPSBjcnRjX3N0YXRlLT5jcmNfZW5hYmxlZDsKKwlzYXZlZF9zdGF0ZS0+bXN0
X21hc3Rlcl90cmFuc2NvZGVyID0gSU5WQUxJRF9UUkFOU0NPREVSOwogCWlmIChJU19HNFgoZGV2
X3ByaXYpIHx8CiAJICAgIElTX1ZBTExFWVZJRVcoZGV2X3ByaXYpIHx8IElTX0NIRVJSWVZJRVco
ZGV2X3ByaXYpKQogCQlzYXZlZF9zdGF0ZS0+d20gPSBjcnRjX3N0YXRlLT53bTsKQEAgLTEzMjkz
LDYgKzEzMjk5LDggQEAgaW50ZWxfcGlwZV9jb25maWdfY29tcGFyZShjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3VycmVudF9jb25maWcsCiAJUElQRV9DT05GX0NIRUNLX0koZHNjLmRz
Y19zcGxpdCk7CiAJUElQRV9DT05GX0NIRUNLX0koZHNjLmNvbXByZXNzZWRfYnBwKTsKIAorCVBJ
UEVfQ09ORl9DSEVDS19JKG1zdF9tYXN0ZXJfdHJhbnNjb2Rlcik7CisKICN1bmRlZiBQSVBFX0NP
TkZfQ0hFQ0tfWAogI3VuZGVmIFBJUEVfQ09ORl9DSEVDS19JCiAjdW5kZWYgUElQRV9DT05GX0NI
RUNLX0JPT0wKQEAgLTE0Mzc3LDcgKzE0Mzg1LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfY29tbWl0
X21vZGVzZXRfZGlzYWJsZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJdTMy
IGhhbmRsZWQgPSAwOwogCWludCBpOwogCi0JLyogT25seSBkaXNhYmxlIHBvcnQgc3luYyBzbGF2
ZXMgKi8KKwkvKiBPbmx5IGRpc2FibGUgcG9ydCBzeW5jIGFuZCBNU1Qgc2xhdmVzICovCiAJZm9y
X2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0
YXRlLAogCQkJCQkgICAgbmV3X2NydGNfc3RhdGUsIGkpIHsKIAkJaWYgKCFuZWVkc19tb2Rlc2V0
KG5ld19jcnRjX3N0YXRlKSkKQEAgLTE0MzkxLDcgKzE0Mzk5LDggQEAgc3RhdGljIHZvaWQgaW50
ZWxfY29tbWl0X21vZGVzZXRfZGlzYWJsZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUpCiAJCSAqIHNsYXZlIENSVENzIGFyZSBkaXNhYmxlZCBmaXJzdCBhbmQgdGhlbiBtYXN0ZXIg
Q1JUQyBzaW5jZQogCQkgKiBTbGF2ZSB2YmxhbmtzIGFyZSBtYXNrZWQgdGlsbCBNYXN0ZXIgVmJs
YW5rcy4KIAkJICovCi0JCWlmICghaXNfdHJhbnNfcG9ydF9zeW5jX3NsYXZlKG9sZF9jcnRjX3N0
YXRlKSkKKwkJaWYgKCFpc190cmFuc19wb3J0X3N5bmNfc2xhdmUob2xkX2NydGNfc3RhdGUpICYm
CisJCSAgICAhaW50ZWxfZHBfbXN0X2lzX3NsYXZlX3RyYW5zKG9sZF9jcnRjX3N0YXRlKSkKIAkJ
CWNvbnRpbnVlOwogCiAJCWludGVsX3ByZV9wbGFuZV91cGRhdGUoc3RhdGUsIGNydGMpOwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVz
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApp
bmRleCA4M2VhMDQxNDliNzcuLjYzMGE5NDg5MmI3YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKQEAgLTEwNTQsNiArMTA1NCw5
IEBAIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlIHsKIAogCS8qIEJpdG1hc2sgdG8gaW5kaWNhdGUg
c2xhdmVzIGF0dGFjaGVkICovCiAJdTggc3luY19tb2RlX3NsYXZlc19tYXNrOworCisJLyogT25s
eSB2YWxpZCBvbiBUR0wrICovCisJZW51bSB0cmFuc2NvZGVyIG1zdF9tYXN0ZXJfdHJhbnNjb2Rl
cjsKIH07CiAKIHN0cnVjdCBpbnRlbF9jcnRjIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX21zdC5jCmluZGV4IDkyNmU0OWY0NDlhNi4uOTM5NWM2MTFjNDg1IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKQEAgLTg3LDYgKzg3
LDU0IEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfbXN0X2NvbXB1dGVfbGlua19jb25maWcoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJcmV0dXJuIDA7CiB9CiAKKy8qCisgKiBJdGVyYXRl
IG92ZXIgYWxsIGNvbm5lY3RvcnMgYW5kIHNldCBtc3RfbWFzdGVyX3RyYW5zY29kZXIgdG8gdGhl
IHNtYWxsZXN0CisgKiB0cmFuc2NvZGVyIGlkIHRoYXQgc2hhcmVzIHRoZSBzYW1lIE1TVCBjb25u
ZWN0b3IuCisgKi8KK3N0YXRpYyBlbnVtIHRyYW5zY29kZXIKK2ludGVsX2RwX21zdF9tYXN0ZXJf
dHJhbnNfY29tcHV0ZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKKwkJCQkgIHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAorCQkJCSAgc3RydWN0IGRybV9jb25uZWN0
b3Jfc3RhdGUgKmNvbm5lY3Rvcl9zdGF0ZSkKK3sKKwlzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSA9IHRvX2ludGVsX2F0b21pY19zdGF0ZShjcnRjX3N0YXRlLT51YXBpLnN0YXRlKTsK
KwlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IgPSB0b19pbnRlbF9jb25uZWN0b3Io
Y29ubmVjdG9yX3N0YXRlLT5jb25uZWN0b3IpOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOworCXN0cnVjdCBpbnRlbF9kaWdp
dGFsX2Nvbm5lY3Rvcl9zdGF0ZSAqaXRlcl9jb25uZWN0b3Jfc3RhdGU7CisJc3RydWN0IGludGVs
X2Nvbm5lY3RvciAqaXRlcl9jb25uZWN0b3I7CisJZW51bSBwaXBlIHJldCA9IEk5MTVfTUFYX1BJ
UEVTOworCWludCBpOworCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCAxMikKKwkJcmV0dXJu
IElOVkFMSURfVFJBTlNDT0RFUjsKKworCWZvcl9lYWNoX25ld19pbnRlbF9jb25uZWN0b3JfaW5f
c3RhdGUoc3RhdGUsIGl0ZXJfY29ubmVjdG9yLAorCQkJCQkgICAgICBpdGVyX2Nvbm5lY3Rvcl9z
dGF0ZSwgaSkgeworCQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqaXRlcl9jcnRjX3N0YXRlOwor
CQlzdHJ1Y3QgaW50ZWxfY3J0YyAqaXRlcl9jcnRjOworCisJCWlmIChjb25uZWN0b3ItPm1zdF9w
b3J0ICE9IGl0ZXJfY29ubmVjdG9yLT5tc3RfcG9ydCB8fAorCQkgICAgIWl0ZXJfY29ubmVjdG9y
X3N0YXRlLT5iYXNlLmNydGMpCisJCQljb250aW51ZTsKKworCQlpdGVyX2NydGMgPSB0b19pbnRl
bF9jcnRjKGl0ZXJfY29ubmVjdG9yX3N0YXRlLT5iYXNlLmNydGMpOworCQlpdGVyX2NydGNfc3Rh
dGUgPSBpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLAorCQkJCQkJCQkgIGl0
ZXJfY3J0Yyk7CisJCWlmICghaXRlcl9jcnRjX3N0YXRlLT51YXBpLmFjdGl2ZSkKKwkJCWNvbnRp
bnVlOworCisJCS8qCisJCSAqIFVzaW5nIGNydGMtPnBpcGUgYmVjYXVzZSBjcnRjX3N0YXRlLT5j
cHVfdHJhbnNjb2RlciBpcworCQkgKiBjb21wdXRlZCwgc28gb3RoZXJzIHBpcGUgY3B1X3RyYW5z
Y29kZXIgY291bGQgaGF2ZSBiZWluZworCQkgKiBjb21wdXRlZCB5ZXQKKwkJICovCisJCWlmIChp
dGVyX2NydGMtPnBpcGUgPCByZXQpCisJCQlyZXQgPSBpdGVyX2NydGMtPnBpcGU7CisJfQorCisJ
LyogU2ltcGxlIGNhc3Qgd29ya3MgYmVjYXVzZSBUR0wgZG9uJ3QgaGF2ZSBhIGVEUCB0cmFuc2Nv
ZGVyICovCisJcmV0dXJuIChlbnVtIHRyYW5zY29kZXIpcmV0OworfQorCiBzdGF0aWMgaW50IGlu
dGVsX2RwX21zdF9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwK
IAkJCQkgICAgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLAogCQkJCSAg
ICAgICBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSkKQEAgLTE1NCwyNCAr
MjAyLDkwIEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfbXN0X2NvbXB1dGVfY29uZmlnKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLAogCiAJaW50ZWxfZGRpX2NvbXB1dGVfbWluX3ZvbHRhZ2Vf
bGV2ZWwoZGV2X3ByaXYsIHBpcGVfY29uZmlnKTsKIAorCXBpcGVfY29uZmlnLT5tc3RfbWFzdGVy
X3RyYW5zY29kZXIgPSBpbnRlbF9kcF9tc3RfbWFzdGVyX3RyYW5zX2NvbXB1dGUoZW5jb2RlciwK
KwkJCQkJCQkJCSAgICAgICBwaXBlX2NvbmZpZywKKwkJCQkJCQkJCSAgICAgICBjb25uX3N0YXRl
KTsKKwlpZiAocmV0KQorCQlyZXR1cm4gcmV0OworCisJcmV0dXJuIDA7Cit9CisKKy8qCisgKiBJ
ZiBvbmUgb2YgdGhlIGNvbm5lY3RvcnMgaW4gYSBNU1Qgc3RyZWFtIG5lZWRzIGEgbW9kZXNldCwg
bWFyayBhbGwgQ1JUQ3MKKyAqIHRoYXQgaGF2ZSBhIGNvbm5lY3RvciBpbiB0aGUgc2FtZSBNU1Qg
c3RyZWFtIGFzIG1vZGUgY2hhbmdlZCwKKyAqIGludGVsX21vZGVzZXRfcGlwZV9jb25maWcoKStp
bnRlbF9jcnRjX2NoZWNrX2Zhc3RzZXQoKSB3aWxsIHRha2UgdG8gZG8gYQorICogZmFzdHNldCB3
aGVuIHBvc3NpYmxlLgorICovCitzdGF0aWMgaW50CitpbnRlbF9kcF9tc3RfYXRvbWljX21hc3Rl
cl90cmFuc19jaGVjayhzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsCisJCQkJICAg
ICAgIHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQoreworCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsKKwlzdHJ1Y3Qg
ZHJtX2Nvbm5lY3Rvcl9saXN0X2l0ZXIgY29ubmVjdG9yX2xpc3RfaXRlcjsKKwlzdHJ1Y3QgaW50
ZWxfY29ubmVjdG9yICpjb25uZWN0b3JfaXRlcjsKKworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
IDwgMTIpCisJCXJldHVybiAgMDsKKworCWlmICghaW50ZWxfY29ubmVjdG9yX25lZWRzX21vZGVz
ZXQoc3RhdGUsICZjb25uZWN0b3ItPmJhc2UpKQorCQlyZXR1cm4gMDsKKworCWRybV9jb25uZWN0
b3JfbGlzdF9pdGVyX2JlZ2luKCZkZXZfcHJpdi0+ZHJtLCAmY29ubmVjdG9yX2xpc3RfaXRlcik7
CisJZm9yX2VhY2hfaW50ZWxfY29ubmVjdG9yX2l0ZXIoY29ubmVjdG9yX2l0ZXIsICZjb25uZWN0
b3JfbGlzdF9pdGVyKSB7CisJCXN0cnVjdCBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSAq
Y29ubmVjdG9yX2l0ZXJfc3RhdGU7CisJCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlOworCQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKKworCQlpZiAoY29ubmVjdG9yX2l0ZXIt
Pm1zdF9wb3J0ICE9IGNvbm5lY3Rvci0+bXN0X3BvcnQgfHwKKwkJICAgIGNvbm5lY3Rvcl9pdGVy
ID09IGNvbm5lY3RvcikKKwkJCWNvbnRpbnVlOworCisJCWNvbm5lY3Rvcl9pdGVyX3N0YXRlID0K
KwkJCWludGVsX2F0b21pY19nZXRfZGlnaXRhbF9jb25uZWN0b3Jfc3RhdGUoc3RhdGUsCisJCQkJ
CQkJCSBjb25uZWN0b3JfaXRlcik7CisJCWlmIChJU19FUlIoY29ubmVjdG9yX2l0ZXJfc3RhdGUp
KSB7CisJCQlkcm1fY29ubmVjdG9yX2xpc3RfaXRlcl9lbmQoJmNvbm5lY3Rvcl9saXN0X2l0ZXIp
OworCQkJcmV0dXJuIFBUUl9FUlIoY29ubmVjdG9yX2l0ZXJfc3RhdGUpOworCQl9CisKKwkJaWYg
KCFjb25uZWN0b3JfaXRlcl9zdGF0ZS0+YmFzZS5jcnRjKQorCQkJY29udGludWU7CisKKwkJY3J0
YyA9IHRvX2ludGVsX2NydGMoY29ubmVjdG9yX2l0ZXJfc3RhdGUtPmJhc2UuY3J0Yyk7CisJCWNy
dGNfc3RhdGUgPSBpbnRlbF9hdG9taWNfZ2V0X2NydGNfc3RhdGUoJnN0YXRlLT5iYXNlLCBjcnRj
KTsKKwkJaWYgKElTX0VSUihjcnRjX3N0YXRlKSkgeworCQkJZHJtX2Nvbm5lY3Rvcl9saXN0X2l0
ZXJfZW5kKCZjb25uZWN0b3JfbGlzdF9pdGVyKTsKKwkJCXJldHVybiBQVFJfRVJSKGNydGNfc3Rh
dGUpOworCQl9CisKKwkJY3J0Y19zdGF0ZS0+dWFwaS5tb2RlX2NoYW5nZWQgPSB0cnVlOworCX0K
Kwlkcm1fY29ubmVjdG9yX2xpc3RfaXRlcl9lbmQoJmNvbm5lY3Rvcl9saXN0X2l0ZXIpOworCiAJ
cmV0dXJuIDA7CiB9CiAKIHN0YXRpYyBpbnQKIGludGVsX2RwX21zdF9hdG9taWNfY2hlY2soc3Ry
dWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKLQkJCSAgc3RydWN0IGRybV9hdG9taWNfc3Rh
dGUgKnN0YXRlKQorCQkJICBzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqX3N0YXRlKQogeworCXN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlID0gdG9faW50ZWxfYXRvbWljX3N0YXRlKF9z
dGF0ZSk7CiAJc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKm5ld19jb25uX3N0YXRlID0KLQkJ
ZHJtX2F0b21pY19nZXRfbmV3X2Nvbm5lY3Rvcl9zdGF0ZShzdGF0ZSwgY29ubmVjdG9yKTsKKwkJ
ZHJtX2F0b21pY19nZXRfbmV3X2Nvbm5lY3Rvcl9zdGF0ZSgmc3RhdGUtPmJhc2UsIGNvbm5lY3Rv
cik7CiAJc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKm9sZF9jb25uX3N0YXRlID0KLQkJZHJt
X2F0b21pY19nZXRfb2xkX2Nvbm5lY3Rvcl9zdGF0ZShzdGF0ZSwgY29ubmVjdG9yKTsKKwkJZHJt
X2F0b21pY19nZXRfb2xkX2Nvbm5lY3Rvcl9zdGF0ZSgmc3RhdGUtPmJhc2UsIGNvbm5lY3Rvcik7
CiAJc3RydWN0IGludGVsX2Nvbm5lY3RvciAqaW50ZWxfY29ubmVjdG9yID0KIAkJdG9faW50ZWxf
Y29ubmVjdG9yKGNvbm5lY3Rvcik7CiAJc3RydWN0IGRybV9jcnRjICpuZXdfY3J0YyA9IG5ld19j
b25uX3N0YXRlLT5jcnRjOwogCXN0cnVjdCBkcm1fZHBfbXN0X3RvcG9sb2d5X21nciAqbWdyOwog
CWludCByZXQ7CiAKLQlyZXQgPSBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9hdG9taWNfY2hlY2so
Y29ubmVjdG9yLCBzdGF0ZSk7CisJcmV0ID0gaW50ZWxfZGlnaXRhbF9jb25uZWN0b3JfYXRvbWlj
X2NoZWNrKGNvbm5lY3RvciwgJnN0YXRlLT5iYXNlKTsKKwlpZiAocmV0KQorCQlyZXR1cm4gcmV0
OworCisJcmV0ID0gaW50ZWxfZHBfbXN0X2F0b21pY19tYXN0ZXJfdHJhbnNfY2hlY2soaW50ZWxf
Y29ubmVjdG9yLCBzdGF0ZSk7CiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIApAQCAtMTgyLDEy
ICsyOTYsOSBAQCBpbnRlbF9kcF9tc3RfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fY29ubmVjdG9y
ICpjb25uZWN0b3IsCiAJICogY29ubmVjdG9yCiAJICovCiAJaWYgKG5ld19jcnRjKSB7Ci0JCXN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKmludGVsX3N0YXRlID0KLQkJCXRvX2ludGVsX2F0b21p
Y19zdGF0ZShzdGF0ZSk7CiAJCXN0cnVjdCBpbnRlbF9jcnRjICppbnRlbF9jcnRjID0gdG9faW50
ZWxfY3J0YyhuZXdfY3J0Yyk7CiAJCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
ID0KLQkJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoaW50ZWxfc3RhdGUsCi0JCQkJ
CQkJaW50ZWxfY3J0Yyk7CisJCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRl
LCBpbnRlbF9jcnRjKTsKIAogCQlpZiAoIWNydGNfc3RhdGUgfHwKIAkJICAgICFkcm1fYXRvbWlj
X2NydGNfbmVlZHNfbW9kZXNldCgmY3J0Y19zdGF0ZS0+dWFwaSkgfHwKQEAgLTE5Niw3ICszMDcs
NyBAQCBpbnRlbF9kcF9tc3RfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25u
ZWN0b3IsCiAJfQogCiAJbWdyID0gJmVuY190b19tc3Qob2xkX2Nvbm5fc3RhdGUtPmJlc3RfZW5j
b2RlciktPnByaW1hcnktPmRwLm1zdF9tZ3I7Ci0JcmV0ID0gZHJtX2RwX2F0b21pY19yZWxlYXNl
X3ZjcGlfc2xvdHMoc3RhdGUsIG1nciwKKwlyZXQgPSBkcm1fZHBfYXRvbWljX3JlbGVhc2VfdmNw
aV9zbG90cygmc3RhdGUtPmJhc2UsIG1nciwKIAkJCQkJICAgICAgIGludGVsX2Nvbm5lY3Rvci0+
cG9ydCk7CiAKIAlyZXR1cm4gcmV0OwpAQCAtMjQxLDYgKzM1Miw5IEBAIHN0YXRpYyB2b2lkIGlu
dGVsX21zdF9wb3N0X2Rpc2FibGVfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJ
aW50ZWxfZHAtPmFjdGl2ZV9tc3RfbGlua3MtLTsKIAlsYXN0X21zdF9zdHJlYW0gPSBpbnRlbF9k
cC0+YWN0aXZlX21zdF9saW5rcyA9PSAwOwogCisJV0FSTl9PTihJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDEyICYmIGxhc3RfbXN0X3N0cmVhbSAmJgorCQkhaW50ZWxfZHBfbXN0X2lzX21hc3Rlcl90
cmFucyhvbGRfY3J0Y19zdGF0ZSkpOworCiAJLyoKIAkgKiBGcm9tIFRHTCBzcGVjOiAiSWYgbXVs
dGktc3RyZWFtIHNsYXZlIHRyYW5zY29kZXI6IENvbmZpZ3VyZQogCSAqIFRyYW5zY29kZXIgQ2xv
Y2sgU2VsZWN0IHRvIGRpcmVjdCBubyBjbG9jayB0byB0aGUgdHJhbnNjb2RlciIKQEAgLTMyMSw2
ICs0MzUsOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tc3RfcHJlX2VuYWJsZV9kcChzdHJ1Y3QgaW50
ZWxfZW5jb2RlciAqZW5jb2RlciwKIAlpbnRlbF9tc3QtPmNvbm5lY3RvciA9IGNvbm5lY3RvcjsK
IAlmaXJzdF9tc3Rfc3RyZWFtID0gaW50ZWxfZHAtPmFjdGl2ZV9tc3RfbGlua3MgPT0gMDsKIAor
CVdBUk5fT04oSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMiAmJiBmaXJzdF9tc3Rfc3RyZWFtICYm
CisJCSFpbnRlbF9kcF9tc3RfaXNfbWFzdGVyX3RyYW5zKHBpcGVfY29uZmlnKSk7CisKIAlEUk1f
REVCVUdfS01TKCJhY3RpdmUgbGlua3MgJWRcbiIsIGludGVsX2RwLT5hY3RpdmVfbXN0X2xpbmtz
KTsKIAogCWlmIChmaXJzdF9tc3Rfc3RyZWFtKQpAQCAtNzI2LDMgKzg0MywxNCBAQCBpbnRlbF9k
cF9tc3RfZW5jb2Rlcl9jbGVhbnVwKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2Rp
Z19wb3J0KQogCWRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyX2Rlc3Ryb3koJmludGVsX2RwLT5tc3Rf
bWdyKTsKIAkvKiBlbmNvZGVycyB3aWxsIGdldCBraWxsZWQgYnkgbm9ybWFsIGNsZWFudXAgKi8K
IH0KKworYm9vbCBpbnRlbF9kcF9tc3RfaXNfbWFzdGVyX3RyYW5zKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQoreworCXJldHVybiBjcnRjX3N0YXRlLT5tc3RfbWFz
dGVyX3RyYW5zY29kZXIgPT0gY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXI7Cit9CisKK2Jvb2wg
aW50ZWxfZHBfbXN0X2lzX3NsYXZlX3RyYW5zKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKQoreworCXJldHVybiBjcnRjX3N0YXRlLT5tc3RfbWFzdGVyX3RyYW5zY29k
ZXIgIT0gSU5WQUxJRF9UUkFOU0NPREVSICYmCisJICAgICAgIGNydGNfc3RhdGUtPm1zdF9tYXN0
ZXJfdHJhbnNjb2RlciAhPSBjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcjsKK30KZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5oCmluZGV4IGY2NjBhZDgwZGIwNC4u
ODU0NzI0ZjY4ZjA5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX21zdC5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBf
bXN0LmgKQEAgLTYsMTAgKzYsMTUgQEAKICNpZm5kZWYgX19JTlRFTF9EUF9NU1RfSF9fCiAjZGVm
aW5lIF9fSU5URUxfRFBfTVNUX0hfXwogCisjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KKwogc3Ry
dWN0IGludGVsX2RpZ2l0YWxfcG9ydDsKK3N0cnVjdCBpbnRlbF9jcnRjX3N0YXRlOwogCiBpbnQg
aW50ZWxfZHBfbXN0X2VuY29kZXJfaW5pdChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRl
bF9kaWdfcG9ydCwgaW50IGNvbm5faWQpOwogdm9pZCBpbnRlbF9kcF9tc3RfZW5jb2Rlcl9jbGVh
bnVwKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0KTsKIGludCBpbnRl
bF9kcF9tc3RfZW5jb2Rlcl9hY3RpdmVfbGlua3Moc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAq
aW50ZWxfZGlnX3BvcnQpOworYm9vbCBpbnRlbF9kcF9tc3RfaXNfbWFzdGVyX3RyYW5zKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKK2Jvb2wgaW50ZWxfZHBfbXN0
X2lzX3NsYXZlX3RyYW5zKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KTsKIAogI2VuZGlmIC8qIF9fSU5URUxfRFBfTVNUX0hfXyAqLwotLSAKMi4yNC4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
