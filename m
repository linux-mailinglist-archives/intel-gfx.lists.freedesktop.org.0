Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86ECB128405
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 22:42:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E67BC6ECB0;
	Fri, 20 Dec 2019 21:42:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3173C6ECB4
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 21:42:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 13:42:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,337,1571727600"; d="scan'208";a="213684225"
Received: from kitaracr-mobl.amr.corp.intel.com (HELO
 josouza-MOBL.amr.corp.intel.com) ([10.252.207.149])
 by fmsmga008.fm.intel.com with ESMTP; 20 Dec 2019 13:42:39 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Dec 2019 13:42:23 -0800
Message-Id: <20191220214228.262345-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191220214228.262345-1-jose.souza@intel.com>
References: <20191220214228.262345-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 3/8] drm/i915/tgl: Select master transcoder
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
ZSBpbnN0ZWFkIG9mIHRyYW5zY29kZXIgdG8gY29tcHV0ZSBNU1QgbWFzdGVyCgp2NDoKLSByZW5h
bWVkIGNvbm5lY3Rvcl9zdGF0ZSB0byBjb25uX3N0YXRlCgp2NToKLSBJbXByb3ZlZCB0aGUgcGFy
YW1ldGVycyBvZiBpbnRlbF9kcF9tc3RfbWFzdGVyX3RyYW5zX2NvbXB1dGUoKSB0bwpzaW1wbHkg
Y29kZQotIEFkZGVkIGNhbGwgZHJtX2F0b21pY19hZGRfYWZmZWN0ZWRfcGxhbmVzKCkgaW4KaW50
ZWxfZHBfbXN0X2F0b21pY19tYXN0ZXJfdHJhbnNfY2hlY2soKSBhcyBoZWxwZXIgY291bGQgbm90
IGRvIGl0CmZvciB1cwotIFJlbW92ZWQgImlmIChyZXQpIiBsZWZ0IG92ZXIgZnJvbSB2MyBjaGFu
Z2VzCgp2NjoKLSBoYW5kbGVkIHJldCA9PSBJOTE1X01BWF9QSVBFUyBjYXNlIGluIGNvbXB1dGUK
CkJTcGVjOiA1MDQ5MwpCU3BlYzogNDkxOTAKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hp
QGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXRvbWljLmMgICB8ICAxNCArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9hdG9taWMuaCAgIHwgICA0ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMgICAgICB8ICAxNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgIHwgIDEyICstCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmggICAgfCAgIDMgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9t
c3QuYyAgIHwgMTQzICsrKysrKysrKysrKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcF9tc3QuaCAgIHwgICA1ICsKIDcgZmlsZXMgY2hhbmdlZCwgMTgyIGluc2Vy
dGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2F0b21pYy5jCmluZGV4IGI3ZGRhMThiNmYyOS4uMGViOTczZjY1OTc3IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMKQEAgLTE5Miw2ICsxOTIs
MjAgQEAgaW50ZWxfY29ubmVjdG9yX25lZWRzX21vZGVzZXQoc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUsCiAJCQkJCQkJCQkgICAgbmV3X2Nvbm5fc3RhdGUtPmNydGMpKSk7CiB9CiAK
K3N0cnVjdCBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSAqCitpbnRlbF9hdG9taWNfZ2V0
X2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
LAorCQkJCQkgc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQoreworCXN0cnVjdCBk
cm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlOworCisJY29ubl9zdGF0ZSA9IGRybV9hdG9t
aWNfZ2V0X2Nvbm5lY3Rvcl9zdGF0ZSgmc3RhdGUtPmJhc2UsCisJCQkJCQkgICAgJmNvbm5lY3Rv
ci0+YmFzZSk7CisJaWYgKElTX0VSUihjb25uX3N0YXRlKSkKKwkJcmV0dXJuIEVSUl9DQVNUKGNv
bm5fc3RhdGUpOworCisJcmV0dXJuIHRvX2ludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlKGNv
bm5fc3RhdGUpOworfQorCiAvKioKICAqIGludGVsX2NydGNfZHVwbGljYXRlX3N0YXRlIC0gZHVw
bGljYXRlIGNydGMgc3RhdGUKICAqIEBjcnRjOiBkcm0gY3J0YwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmgKaW5kZXggYTdkMWE4NTc2YzQ4Li43NGM3NDlkYmZi
NGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWlj
LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuaApAQCAt
MTcsNiArMTcsNyBAQCBzdHJ1Y3QgZHJtX2RldmljZTsKIHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
Owogc3RydWN0IGRybV9wcm9wZXJ0eTsKIHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGU7CitzdHJ1
Y3QgaW50ZWxfY29ubmVjdG9yOwogc3RydWN0IGludGVsX2NydGM7CiBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZTsKIApAQCAtMzQsNiArMzUsOSBAQCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAq
CiBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9kdXBsaWNhdGVfc3RhdGUoc3RydWN0IGRybV9jb25u
ZWN0b3IgKmNvbm5lY3Rvcik7CiBib29sIGludGVsX2Nvbm5lY3Rvcl9uZWVkc19tb2Rlc2V0KHN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCQkJCSAgIHN0cnVjdCBkcm1fY29ubmVj
dG9yICpjb25uZWN0b3IpOworc3RydWN0IGludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlICoK
K2ludGVsX2F0b21pY19nZXRfZGlnaXRhbF9jb25uZWN0b3Jfc3RhdGUoc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUsCisJCQkJCSBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0
b3IpOwogCiBzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKmludGVsX2NydGNfZHVwbGljYXRlX3N0YXRl
KHN0cnVjdCBkcm1fY3J0YyAqY3J0Yyk7CiB2b2lkIGludGVsX2NydGNfZGVzdHJveV9zdGF0ZShz
dHJ1Y3QgZHJtX2NydGMgKmNydGMsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYwppbmRleCBjOWJhN2Q3ZjM3ODcuLmMzYWM5NTBlNzlhOCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0xODk5LDggKzE4OTksMTMgQEAgaW50ZWxfZGRp
X3RyYW5zY29kZXJfZnVuY19yZWdfdmFsX2dldChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKIAkJdGVtcCB8PSBUUkFOU19ERElfTU9ERV9TRUxFQ1RfRFBfTVNUOwog
CQl0ZW1wIHw9IERESV9QT1JUX1dJRFRIKGNydGNfc3RhdGUtPmxhbmVfY291bnQpOwogCi0JCWlm
IChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQotCQkJdGVtcCB8PSBUUkFOU19ERElfTVNUX1RS
QU5TUE9SVF9TRUxFQ1QoY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIpOworCQlpZiAoSU5URUxf
R0VOKGRldl9wcml2KSA+PSAxMikgeworCQkJZW51bSB0cmFuc2NvZGVyIG1hc3RlcjsKKworCQkJ
bWFzdGVyID0gY3J0Y19zdGF0ZS0+bXN0X21hc3Rlcl90cmFuc2NvZGVyOworCQkJV0FSTl9PTiht
YXN0ZXIgPT0gSU5WQUxJRF9UUkFOU0NPREVSKTsKKwkJCXRlbXAgfD0gVFJBTlNfRERJX01TVF9U
UkFOU1BPUlRfU0VMRUNUKG1hc3Rlcik7CisJCX0KIAl9IGVsc2UgewogCQl0ZW1wIHw9IFRSQU5T
X0RESV9NT0RFX1NFTEVDVF9EUF9TU1Q7CiAJCXRlbXAgfD0gRERJX1BPUlRfV0lEVEgoY3J0Y19z
dGF0ZS0+bGFuZV9jb3VudCk7CkBAIC00NDA1LDYgKzQ0MTAsMTEgQEAgdm9pZCBpbnRlbF9kZGlf
Z2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJcGlwZV9jb25maWct
Pm91dHB1dF90eXBlcyB8PSBCSVQoSU5URUxfT1VUUFVUX0RQX01TVCk7CiAJCXBpcGVfY29uZmln
LT5sYW5lX2NvdW50ID0KIAkJCSgodGVtcCAmIERESV9QT1JUX1dJRFRIX01BU0spID4+IERESV9Q
T1JUX1dJRFRIX1NISUZUKSArIDE7CisKKwkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIp
CisJCQlwaXBlX2NvbmZpZy0+bXN0X21hc3Rlcl90cmFuc2NvZGVyID0KKwkJCQkJUkVHX0ZJRUxE
X0dFVChUUkFOU19ERElfTVNUX1RSQU5TUE9SVF9TRUxFQ1RfTUFTSywgdGVtcCk7CisKIAkJaW50
ZWxfZHBfZ2V0X21fbihpbnRlbF9jcnRjLCBwaXBlX2NvbmZpZyk7CiAJCWJyZWFrOwogCWRlZmF1
bHQ6CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4
IGZjNzc4MjllYTk1OC4uZWI5N2FkNTYyYzk2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtNDYsNiArNDYsNyBAQAogI2luY2x1ZGUgImRpc3Bs
YXkvaW50ZWxfY3J0LmgiCiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9kZGkuaCIKICNpbmNsdWRl
ICJkaXNwbGF5L2ludGVsX2RwLmgiCisjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9kcF9tc3QuaCIK
ICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2RzaS5oIgogI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxf
ZHZvLmgiCiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9nbWJ1cy5oIgpAQCAtMTE2MjcsNiArMTE2
MjgsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jcnRjX3N0YXRlX3Jlc2V0KHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCWNydGNfc3RhdGUtPmhzd193b3JrYXJvdW5kX3BpcGUg
PSBJTlZBTElEX1BJUEU7CiAJY3J0Y19zdGF0ZS0+b3V0cHV0X2Zvcm1hdCA9IElOVEVMX09VVFBV
VF9GT1JNQVRfSU5WQUxJRDsKIAljcnRjX3N0YXRlLT5zY2FsZXJfc3RhdGUuc2NhbGVyX2lkID0g
LTE7CisJY3J0Y19zdGF0ZS0+bXN0X21hc3Rlcl90cmFuc2NvZGVyID0gSU5WQUxJRF9UUkFOU0NP
REVSOwogfQogCiBzdGF0aWMgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmludGVsX2NydGNfc3Rh
dGVfYWxsb2Moc3RydWN0IGludGVsX2NydGMgKmNydGMpCkBAIC0xMjQ4NCw2ICsxMjQ4Niw5IEBA
IHN0YXRpYyB2b2lkIGludGVsX2R1bXBfcGlwZV9jb25maWcoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKnBpcGVfY29uZmlnLAogCQkJICAgICAgcGlwZV9jb25maWctPmNzY19tb2RlLCBw
aXBlX2NvbmZpZy0+Z2FtbWFfbW9kZSwKIAkJCSAgICAgIHBpcGVfY29uZmlnLT5nYW1tYV9lbmFi
bGUsIHBpcGVfY29uZmlnLT5jc2NfZW5hYmxlKTsKIAorCURSTV9ERUJVR19LTVMoIk1TVCBtYXN0
ZXIgdHJhbnNjb2RlcjogJXNcbiIsCisJCSAgICAgIHRyYW5zY29kZXJfbmFtZShwaXBlX2NvbmZp
Zy0+bXN0X21hc3Rlcl90cmFuc2NvZGVyKSk7CisKIGR1bXBfcGxhbmVzOgogCWlmICghc3RhdGUp
CiAJCXJldHVybjsKQEAgLTEzMjY0LDYgKzEzMjY5LDggQEAgaW50ZWxfcGlwZV9jb25maWdfY29t
cGFyZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3VycmVudF9jb25maWcsCiAJUElQ
RV9DT05GX0NIRUNLX0koZHNjLmRzY19zcGxpdCk7CiAJUElQRV9DT05GX0NIRUNLX0koZHNjLmNv
bXByZXNzZWRfYnBwKTsKIAorCVBJUEVfQ09ORl9DSEVDS19JKG1zdF9tYXN0ZXJfdHJhbnNjb2Rl
cik7CisKICN1bmRlZiBQSVBFX0NPTkZfQ0hFQ0tfWAogI3VuZGVmIFBJUEVfQ09ORl9DSEVDS19J
CiAjdW5kZWYgUElQRV9DT05GX0NIRUNLX0JPT0wKQEAgLTE0MzQ4LDcgKzE0MzU1LDcgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfY29tbWl0X21vZGVzZXRfZGlzYWJsZXMoc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUpCiAJdTMyIGhhbmRsZWQgPSAwOwogCWludCBpOwogCi0JLyogT25seSBk
aXNhYmxlIHBvcnQgc3luYyBzbGF2ZXMgKi8KKwkvKiBPbmx5IGRpc2FibGUgcG9ydCBzeW5jIGFu
ZCBNU1Qgc2xhdmVzICovCiAJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3Rh
dGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLAogCQkJCQkgICAgbmV3X2NydGNfc3RhdGUsIGkpIHsK
IAkJaWYgKCFuZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKSkKQEAgLTE0MzYyLDcgKzE0MzY5
LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfY29tbWl0X21vZGVzZXRfZGlzYWJsZXMoc3RydWN0IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJCSAqIHNsYXZlIENSVENzIGFyZSBkaXNhYmxlZCBm
aXJzdCBhbmQgdGhlbiBtYXN0ZXIgQ1JUQyBzaW5jZQogCQkgKiBTbGF2ZSB2YmxhbmtzIGFyZSBt
YXNrZWQgdGlsbCBNYXN0ZXIgVmJsYW5rcy4KIAkJICovCi0JCWlmICghaXNfdHJhbnNfcG9ydF9z
eW5jX3NsYXZlKG9sZF9jcnRjX3N0YXRlKSkKKwkJaWYgKCFpc190cmFuc19wb3J0X3N5bmNfc2xh
dmUob2xkX2NydGNfc3RhdGUpICYmCisJCSAgICAhaW50ZWxfZHBfbXN0X2lzX3NsYXZlX3RyYW5z
KG9sZF9jcnRjX3N0YXRlKSkKIAkJCWNvbnRpbnVlOwogCiAJCWludGVsX3ByZV9wbGFuZV91cGRh
dGUoc3RhdGUsIGNydGMpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaAppbmRleCA4M2VhMDQxNDliNzcuLjYzMGE5NDg5MmI3YiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVz
LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVz
LmgKQEAgLTEwNTQsNiArMTA1NCw5IEBAIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlIHsKIAogCS8q
IEJpdG1hc2sgdG8gaW5kaWNhdGUgc2xhdmVzIGF0dGFjaGVkICovCiAJdTggc3luY19tb2RlX3Ns
YXZlc19tYXNrOworCisJLyogT25seSB2YWxpZCBvbiBUR0wrICovCisJZW51bSB0cmFuc2NvZGVy
IG1zdF9tYXN0ZXJfdHJhbnNjb2RlcjsKIH07CiAKIHN0cnVjdCBpbnRlbF9jcnRjIHsKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCmluZGV4IDdhYTA5NzVjMzNi
Ny4uOGNmZmYwNzg0ODZkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwX21zdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbXN0LmMKQEAgLTg3LDEwICs4Nyw1NiBAQCBzdGF0aWMgaW50IGludGVsX2RwX21zdF9jb21w
dXRlX2xpbmtfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCXJldHVybiAw
OwogfQogCisvKgorICogSXRlcmF0ZSBvdmVyIGFsbCBjb25uZWN0b3JzIGFuZCByZXR1cm4gdGhl
IHNtYWxsZXN0IHRyYW5zY29kZXIgaW4gdGhlIE1TVAorICogc3RyZWFtCisgKi8KK3N0YXRpYyBl
bnVtIHRyYW5zY29kZXIKK2ludGVsX2RwX21zdF9tYXN0ZXJfdHJhbnNfY29tcHV0ZShzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKKwkJCQkgIHN0cnVjdCBpbnRlbF9kcCAqbXN0X3Bv
cnQpCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShzdGF0
ZS0+YmFzZS5kZXYpOworCXN0cnVjdCBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSAqY29u
bl9zdGF0ZTsKKwlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3I7CisJZW51bSBwaXBl
IHJldCA9IEk5MTVfTUFYX1BJUEVTOworCWludCBpOworCisJaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPCAxMikKKwkJcmV0dXJuIElOVkFMSURfVFJBTlNDT0RFUjsKKworCWZvcl9lYWNoX25ld19p
bnRlbF9jb25uZWN0b3JfaW5fc3RhdGUoc3RhdGUsIGNvbm5lY3RvciwgY29ubl9zdGF0ZSwgaSkg
eworCQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZTsKKwkJc3RydWN0IGludGVs
X2NydGMgKmNydGM7CisKKwkJaWYgKGNvbm5lY3Rvci0+bXN0X3BvcnQgIT0gbXN0X3BvcnQgfHwg
IWNvbm5fc3RhdGUtPmJhc2UuY3J0YykKKwkJCWNvbnRpbnVlOworCisJCWNydGMgPSB0b19pbnRl
bF9jcnRjKGNvbm5fc3RhdGUtPmJhc2UuY3J0Yyk7CisJCWNydGNfc3RhdGUgPSBpbnRlbF9hdG9t
aWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsKKwkJaWYgKCFjcnRjX3N0YXRlLT51
YXBpLmFjdGl2ZSkKKwkJCWNvbnRpbnVlOworCisJCS8qCisJCSAqIFVzaW5nIGNydGMtPnBpcGUg
YmVjYXVzZSBjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlciBpcworCQkgKiBjb21wdXRlZCwgc28g
b3RoZXJzIENSVENzIGNvdWxkIGhhdmUgbm9uLWNvbXB1dGVkCisJCSAqIGNwdV90cmFuc2NvZGVy
CisJCSAqLworCQlpZiAoY3J0Yy0+cGlwZSA8IHJldCkKKwkJCXJldCA9IGNydGMtPnBpcGU7CisJ
fQorCisJaWYgKHJldCA9PSBJOTE1X01BWF9QSVBFUykKKwkJcmV0dXJuIElOVkFMSURfVFJBTlND
T0RFUjsKKworCS8qIFNpbXBsZSBjYXN0IHdvcmtzIGJlY2F1c2UgVEdMIGRvbid0IGhhdmUgYSBl
RFAgdHJhbnNjb2RlciAqLworCXJldHVybiAoZW51bSB0cmFuc2NvZGVyKXJldDsKK30KKwogc3Rh
dGljIGludCBpbnRlbF9kcF9tc3RfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIsCiAJCQkJICAgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZp
ZywKIAkJCQkgICAgICAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpCiB7
CisJc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUgPSB0b19pbnRlbF9hdG9taWNfc3Rh
dGUoY29ubl9zdGF0ZS0+c3RhdGUpOwogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwogCXN0cnVjdCBpbnRlbF9kcF9tc3RfZW5j
b2RlciAqaW50ZWxfbXN0ID0gZW5jX3RvX21zdCgmZW5jb2Rlci0+YmFzZSk7CiAJc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCA9ICZpbnRlbF9tc3QtPnByaW1hcnktPmRwOwpAQCAtMTU0LDI0ICsy
MDAsOTEgQEAgc3RhdGljIGludCBpbnRlbF9kcF9tc3RfY29tcHV0ZV9jb25maWcoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsCiAKIAlpbnRlbF9kZGlfY29tcHV0ZV9taW5fdm9sdGFnZV9s
ZXZlbChkZXZfcHJpdiwgcGlwZV9jb25maWcpOwogCisJcGlwZV9jb25maWctPm1zdF9tYXN0ZXJf
dHJhbnNjb2RlciA9IGludGVsX2RwX21zdF9tYXN0ZXJfdHJhbnNfY29tcHV0ZShzdGF0ZSwgaW50
ZWxfZHApOworCisJcmV0dXJuIDA7Cit9CisKKy8qCisgKiBJZiBvbmUgb2YgdGhlIGNvbm5lY3Rv
cnMgaW4gYSBNU1Qgc3RyZWFtIG5lZWRzIGEgbW9kZXNldCwgbWFyayBhbGwgQ1JUQ3MKKyAqIHRo
YXQgc2hhcmVzIHRoZSBzYW1lIE1TVCBzdHJlYW0gYXMgbW9kZSBjaGFuZ2VkLAorICogaW50ZWxf
bW9kZXNldF9waXBlX2NvbmZpZygpK2ludGVsX2NydGNfY2hlY2tfZmFzdHNldCgpIHdpbGwgdGFr
ZSBjYXJlIHRvIGRvCisgKiBhIGZhc3RzZXQgd2hlbiBwb3NzaWJsZS4KKyAqLworc3RhdGljIGlu
dAoraW50ZWxfZHBfbXN0X2F0b21pY19tYXN0ZXJfdHJhbnNfY2hlY2soc3RydWN0IGludGVsX2Nv
bm5lY3RvciAqY29ubmVjdG9yLAorCQkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KHN0YXRlLT5iYXNlLmRldik7CisJc3RydWN0IGRybV9jb25uZWN0b3JfbGlzdF9pdGVyIGNvbm5l
Y3Rvcl9saXN0X2l0ZXI7CisJc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yX2l0ZXI7
CisKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8IDEyKQorCQlyZXR1cm4gIDA7CisKKwlpZiAo
IWludGVsX2Nvbm5lY3Rvcl9uZWVkc19tb2Rlc2V0KHN0YXRlLCAmY29ubmVjdG9yLT5iYXNlKSkK
KwkJcmV0dXJuIDA7CisKKwlkcm1fY29ubmVjdG9yX2xpc3RfaXRlcl9iZWdpbigmZGV2X3ByaXYt
PmRybSwgJmNvbm5lY3Rvcl9saXN0X2l0ZXIpOworCWZvcl9lYWNoX2ludGVsX2Nvbm5lY3Rvcl9p
dGVyKGNvbm5lY3Rvcl9pdGVyLCAmY29ubmVjdG9yX2xpc3RfaXRlcikgeworCQlzdHJ1Y3QgaW50
ZWxfZGlnaXRhbF9jb25uZWN0b3Jfc3RhdGUgKmNvbm5faXRlcl9zdGF0ZTsKKwkJc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7CisJCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwor
CQlpbnQgcmV0OworCisJCWlmIChjb25uZWN0b3JfaXRlci0+bXN0X3BvcnQgIT0gY29ubmVjdG9y
LT5tc3RfcG9ydCB8fAorCQkgICAgY29ubmVjdG9yX2l0ZXIgPT0gY29ubmVjdG9yKQorCQkJY29u
dGludWU7CisKKwkJY29ubl9pdGVyX3N0YXRlID0gaW50ZWxfYXRvbWljX2dldF9kaWdpdGFsX2Nv
bm5lY3Rvcl9zdGF0ZShzdGF0ZSwKKwkJCQkJCQkJCSAgIGNvbm5lY3Rvcl9pdGVyKTsKKwkJaWYg
KElTX0VSUihjb25uX2l0ZXJfc3RhdGUpKSB7CisJCQlkcm1fY29ubmVjdG9yX2xpc3RfaXRlcl9l
bmQoJmNvbm5lY3Rvcl9saXN0X2l0ZXIpOworCQkJcmV0dXJuIFBUUl9FUlIoY29ubl9pdGVyX3N0
YXRlKTsKKwkJfQorCisJCWlmICghY29ubl9pdGVyX3N0YXRlLT5iYXNlLmNydGMpCisJCQljb250
aW51ZTsKKworCQljcnRjID0gdG9faW50ZWxfY3J0Yyhjb25uX2l0ZXJfc3RhdGUtPmJhc2UuY3J0
Yyk7CisJCWNydGNfc3RhdGUgPSBpbnRlbF9hdG9taWNfZ2V0X2NydGNfc3RhdGUoJnN0YXRlLT5i
YXNlLCBjcnRjKTsKKwkJaWYgKElTX0VSUihjcnRjX3N0YXRlKSkgeworCQkJZHJtX2Nvbm5lY3Rv
cl9saXN0X2l0ZXJfZW5kKCZjb25uZWN0b3JfbGlzdF9pdGVyKTsKKwkJCXJldHVybiBQVFJfRVJS
KGNydGNfc3RhdGUpOworCQl9CisKKwkJcmV0ID0gZHJtX2F0b21pY19hZGRfYWZmZWN0ZWRfcGxh
bmVzKCZzdGF0ZS0+YmFzZSwgJmNydGMtPmJhc2UpOworCQlpZiAocmV0KSB7CisJCQlkcm1fY29u
bmVjdG9yX2xpc3RfaXRlcl9lbmQoJmNvbm5lY3Rvcl9saXN0X2l0ZXIpOworCQkJcmV0dXJuIHJl
dDsKKwkJfQorCQljcnRjX3N0YXRlLT51YXBpLm1vZGVfY2hhbmdlZCA9IHRydWU7CisJfQorCWRy
bV9jb25uZWN0b3JfbGlzdF9pdGVyX2VuZCgmY29ubmVjdG9yX2xpc3RfaXRlcik7CisKIAlyZXR1
cm4gMDsKIH0KIAogc3RhdGljIGludAogaW50ZWxfZHBfbXN0X2F0b21pY19jaGVjayhzdHJ1Y3Qg
ZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAotCQkJICBzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAq
c3RhdGUpCisJCQkgIHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpfc3RhdGUpCiB7CisJc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUgPSB0b19pbnRlbF9hdG9taWNfc3RhdGUoX3N0YXRl
KTsKIAlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqbmV3X2Nvbm5fc3RhdGUgPQotCQlkcm1f
YXRvbWljX2dldF9uZXdfY29ubmVjdG9yX3N0YXRlKHN0YXRlLCBjb25uZWN0b3IpOworCQlkcm1f
YXRvbWljX2dldF9uZXdfY29ubmVjdG9yX3N0YXRlKCZzdGF0ZS0+YmFzZSwgY29ubmVjdG9yKTsK
IAlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqb2xkX2Nvbm5fc3RhdGUgPQotCQlkcm1fYXRv
bWljX2dldF9vbGRfY29ubmVjdG9yX3N0YXRlKHN0YXRlLCBjb25uZWN0b3IpOworCQlkcm1fYXRv
bWljX2dldF9vbGRfY29ubmVjdG9yX3N0YXRlKCZzdGF0ZS0+YmFzZSwgY29ubmVjdG9yKTsKIAlz
dHJ1Y3QgaW50ZWxfY29ubmVjdG9yICppbnRlbF9jb25uZWN0b3IgPQogCQl0b19pbnRlbF9jb25u
ZWN0b3IoY29ubmVjdG9yKTsKIAlzdHJ1Y3QgZHJtX2NydGMgKm5ld19jcnRjID0gbmV3X2Nvbm5f
c3RhdGUtPmNydGM7CiAJc3RydWN0IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptZ3I7CiAJaW50
IHJldDsKIAotCXJldCA9IGludGVsX2RpZ2l0YWxfY29ubmVjdG9yX2F0b21pY19jaGVjayhjb25u
ZWN0b3IsIHN0YXRlKTsKKwlyZXQgPSBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9hdG9taWNfY2hl
Y2soY29ubmVjdG9yLCAmc3RhdGUtPmJhc2UpOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7CisK
KwlyZXQgPSBpbnRlbF9kcF9tc3RfYXRvbWljX21hc3Rlcl90cmFuc19jaGVjayhpbnRlbF9jb25u
ZWN0b3IsIHN0YXRlKTsKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCkBAIC0xODIsMTIgKzI5
NSw5IEBAIGludGVsX2RwX21zdF9hdG9taWNfY2hlY2soc3RydWN0IGRybV9jb25uZWN0b3IgKmNv
bm5lY3RvciwKIAkgKiBjb25uZWN0b3IKIAkgKi8KIAlpZiAobmV3X2NydGMpIHsKLQkJc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqaW50ZWxfc3RhdGUgPQotCQkJdG9faW50ZWxfYXRvbWljX3N0
YXRlKHN0YXRlKTsKIAkJc3RydWN0IGludGVsX2NydGMgKmludGVsX2NydGMgPSB0b19pbnRlbF9j
cnRjKG5ld19jcnRjKTsKIAkJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQot
CQkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShpbnRlbF9zdGF0ZSwKLQkJCQkJCQlp
bnRlbF9jcnRjKTsKKwkJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGlu
dGVsX2NydGMpOwogCiAJCWlmICghY3J0Y19zdGF0ZSB8fAogCQkgICAgIWRybV9hdG9taWNfY3J0
Y19uZWVkc19tb2Rlc2V0KCZjcnRjX3N0YXRlLT51YXBpKSB8fApAQCAtMTk2LDcgKzMwNiw3IEBA
IGludGVsX2RwX21zdF9hdG9taWNfY2hlY2soc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rv
ciwKIAl9CiAKIAltZ3IgPSAmZW5jX3RvX21zdChvbGRfY29ubl9zdGF0ZS0+YmVzdF9lbmNvZGVy
KS0+cHJpbWFyeS0+ZHAubXN0X21ncjsKLQlyZXQgPSBkcm1fZHBfYXRvbWljX3JlbGVhc2VfdmNw
aV9zbG90cyhzdGF0ZSwgbWdyLAorCXJldCA9IGRybV9kcF9hdG9taWNfcmVsZWFzZV92Y3BpX3Ns
b3RzKCZzdGF0ZS0+YmFzZSwgbWdyLAogCQkJCQkgICAgICAgaW50ZWxfY29ubmVjdG9yLT5wb3J0
KTsKIAogCXJldHVybiByZXQ7CkBAIC0yNDAsNiArMzUwLDggQEAgc3RhdGljIHZvaWQgaW50ZWxf
bXN0X3Bvc3RfZGlzYWJsZV9kcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAogCWlu
dGVsX2RwLT5hY3RpdmVfbXN0X2xpbmtzLS07CiAJbGFzdF9tc3Rfc3RyZWFtID0gaW50ZWxfZHAt
PmFjdGl2ZV9tc3RfbGlua3MgPT0gMDsKKwlXQVJOX09OKElOVEVMX0dFTihkZXZfcHJpdikgPj0g
MTIgJiYgbGFzdF9tc3Rfc3RyZWFtICYmCisJCSFpbnRlbF9kcF9tc3RfaXNfbWFzdGVyX3RyYW5z
KG9sZF9jcnRjX3N0YXRlKSk7CiAKIAlpbnRlbF9jcnRjX3ZibGFua19vZmYob2xkX2NydGNfc3Rh
dGUpOwogCkBAIC0zMTcsNiArNDI5LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfbXN0X3ByZV9lbmFi
bGVfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJY29ubmVjdG9yLT5lbmNvZGVy
ID0gZW5jb2RlcjsKIAlpbnRlbF9tc3QtPmNvbm5lY3RvciA9IGNvbm5lY3RvcjsKIAlmaXJzdF9t
c3Rfc3RyZWFtID0gaW50ZWxfZHAtPmFjdGl2ZV9tc3RfbGlua3MgPT0gMDsKKwlXQVJOX09OKElO
VEVMX0dFTihkZXZfcHJpdikgPj0gMTIgJiYgZmlyc3RfbXN0X3N0cmVhbSAmJgorCQkhaW50ZWxf
ZHBfbXN0X2lzX21hc3Rlcl90cmFucyhwaXBlX2NvbmZpZykpOwogCiAJRFJNX0RFQlVHX0tNUygi
YWN0aXZlIGxpbmtzICVkXG4iLCBpbnRlbF9kcC0+YWN0aXZlX21zdF9saW5rcyk7CiAKQEAgLTcy
MiwzICs4MzYsMTQgQEAgaW50ZWxfZHBfbXN0X2VuY29kZXJfY2xlYW51cChzdHJ1Y3QgaW50ZWxf
ZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCkKIAlkcm1fZHBfbXN0X3RvcG9sb2d5X21ncl9k
ZXN0cm95KCZpbnRlbF9kcC0+bXN0X21ncik7CiAJLyogZW5jb2RlcnMgd2lsbCBnZXQga2lsbGVk
IGJ5IG5vcm1hbCBjbGVhbnVwICovCiB9CisKK2Jvb2wgaW50ZWxfZHBfbXN0X2lzX21hc3Rlcl90
cmFucyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwlyZXR1
cm4gY3J0Y19zdGF0ZS0+bXN0X21hc3Rlcl90cmFuc2NvZGVyID09IGNydGNfc3RhdGUtPmNwdV90
cmFuc2NvZGVyOworfQorCitib29sIGludGVsX2RwX21zdF9pc19zbGF2ZV90cmFucyhjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwlyZXR1cm4gY3J0Y19zdGF0
ZS0+bXN0X21hc3Rlcl90cmFuc2NvZGVyICE9IElOVkFMSURfVFJBTlNDT0RFUiAmJgorCSAgICAg
ICBjcnRjX3N0YXRlLT5tc3RfbWFzdGVyX3RyYW5zY29kZXIgIT0gY3J0Y19zdGF0ZS0+Y3B1X3Ry
YW5zY29kZXI7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX21zdC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3Qu
aAppbmRleCBmNjYwYWQ4MGRiMDQuLjg1NDcyNGY2OGYwOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5oCkBAIC02LDEwICs2LDE1IEBACiAjaWZuZGVmIF9f
SU5URUxfRFBfTVNUX0hfXwogI2RlZmluZSBfX0lOVEVMX0RQX01TVF9IX18KIAorI2luY2x1ZGUg
PGxpbnV4L3R5cGVzLmg+CisKIHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQ7CitzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZTsKIAogaW50IGludGVsX2RwX21zdF9lbmNvZGVyX2luaXQoc3RydWN0IGlu
dGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQsIGludCBjb25uX2lkKTsKIHZvaWQgaW50
ZWxfZHBfbXN0X2VuY29kZXJfY2xlYW51cChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRl
bF9kaWdfcG9ydCk7CiBpbnQgaW50ZWxfZHBfbXN0X2VuY29kZXJfYWN0aXZlX2xpbmtzKHN0cnVj
dCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0KTsKK2Jvb2wgaW50ZWxfZHBfbXN0
X2lzX21hc3Rlcl90cmFucyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSk7Citib29sIGludGVsX2RwX21zdF9pc19zbGF2ZV90cmFucyhjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CiAKICNlbmRpZiAvKiBfX0lOVEVMX0RQX01TVF9IX18g
Ki8KLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
