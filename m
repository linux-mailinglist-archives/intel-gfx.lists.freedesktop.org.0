Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 868BE82F5D
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 12:03:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 793276E357;
	Tue,  6 Aug 2019 10:03:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4F7A8920E
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 10:03:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 03:03:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; d="scan'208";a="192631767"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 06 Aug 2019 03:03:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Aug 2019 13:07:22 +0300
Message-Id: <ebe19d3c508faa82e651ab3c8eb7a0975bfa52b7.1565085691.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1565085691.git.jani.nikula@intel.com>
References: <cover.1565085691.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 01/10] drm/i915: move intel_display.c function
 declarations
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW92ZSB0aGUgZGVjbGFyYXRpb25zIG9mIGZ1bmN0aW9ucyBpbiBpbnRlbF9kaXNwbGF5LmMgdG8K
aW50ZWxfZGlzcGxheS5oLiBUaGVyZSBpcyBzdGlsbCBwbGVudHkgb2YgY2xlYW51cCB0byBkbyBp
bgppbnRlbF9kaXNwbGF5LltjaF0sIGJ1dCBvbmUgc3RlcCBhdCBhIHRpbWUuCgpTaWduZWQtb2Zm
LWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIHwgMTcxICsrKysrKysrKysrKysrKysr
KysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgIHwgIDE1IC0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaCAgICAgICAgICAgICB8IDEzNCAtLS0t
LS0tLS0tLS0tLS0KIDMgZmlsZXMgY2hhbmdlZCwgMTcxIGluc2VydGlvbnMoKyksIDE0OSBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5o
CmluZGV4IGQyYzcxOGYyNTQ3OC4uYmYwZDcyMjVlNjQ5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaApAQCAtMjgsOCArMjgsMzAgQEAKICNpbmNsdWRl
IDxkcm0vZHJtX3V0aWwuaD4KICNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4KIAorZW51bSBsaW5r
X21fbl9zZXQ7CitzdHJ1Y3QgZHBsbDsKK3N0cnVjdCBkcm1fY29ubmVjdG9yOworc3RydWN0IGRy
bV9kZXZpY2U7CitzdHJ1Y3QgZHJtX2VuY29kZXI7CitzdHJ1Y3QgZHJtX2ZpbGU7CitzdHJ1Y3Qg
ZHJtX2ZyYW1lYnVmZmVyOworc3RydWN0IGRybV9pOTE1X2Vycm9yX3N0YXRlX2J1ZjsKK3N0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0Owogc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7CitzdHJ1Y3Qg
ZHJtX21vZGVzZXRfYWNxdWlyZV9jdHg7CitzdHJ1Y3QgZHJtX3BsYW5lOworc3RydWN0IGRybV9w
bGFuZV9zdGF0ZTsKK3N0cnVjdCBpOTE1X2dndHRfdmlldzsKK3N0cnVjdCBpbnRlbF9jcnRjOwor
c3RydWN0IGludGVsX2NydGNfc3RhdGU7CitzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0Oworc3Ry
dWN0IGludGVsX2RwOworc3RydWN0IGludGVsX2VuY29kZXI7CitzdHJ1Y3QgaW50ZWxfbG9hZF9k
ZXRlY3RfcGlwZTsKK3N0cnVjdCBpbnRlbF9wbGFuZTsKIHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0
ZTsKK3N0cnVjdCBpbnRlbF9yZW1hcHBlZF9pbmZvOworc3RydWN0IGludGVsX3JvdGF0aW9uX2lu
Zm87CiAKIGVudW0gaTkxNV9ncGlvIHsKIAlHUElPQSwKQEAgLTQwMCw0ICs0MjIsMTUzIEBAIHUz
MiBpbnRlbF9wbGFuZV9mYl9tYXhfc3RyaWRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwKIGJvb2wgaW50ZWxfcGxhbmVfY2FuX3JlbWFwKGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFu
ZV9zdGF0ZSAqcGxhbmVfc3RhdGUpOwogZW51bSBwaHkgaW50ZWxfcG9ydF90b19waHkoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGVudW0gcG9ydCBwb3J0KTsKIAordm9pZCBpbnRlbF9w
bGFuZV9kZXN0cm95KHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lKTsKK3ZvaWQgaTgzMF9lbmFibGVf
cGlwZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcGlwZSBwaXBlKTsK
K3ZvaWQgaTgzMF9kaXNhYmxlX3BpcGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LCBlbnVtIHBpcGUgcGlwZSk7CitlbnVtIHBpcGUgaW50ZWxfY3J0Y19wY2hfdHJhbnNjb2Rlcihz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7CitpbnQgdmx2X2dldF9ocGxsX3ZjbyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOworaW50IHZsdl9nZXRfY2NrX2Nsb2NrKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJICAgICAgY29uc3QgY2hhciAqbmFtZSwgdTMy
IHJlZywgaW50IHJlZl9mcmVxKTsKK2ludCB2bHZfZ2V0X2Nja19jbG9ja19ocGxsKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJCSAgIGNvbnN0IGNoYXIgKm5hbWUsIHUzMiBy
ZWcpOwordm9pZCBscHRfZGlzYWJsZV9wY2hfdHJhbnNjb2RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpOwordm9pZCBscHRfZGlzYWJsZV9pY2xraXAoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KTsKK3ZvaWQgaW50ZWxfaW5pdF9kaXNwbGF5X2hvb2tzKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Cit1bnNpZ25lZCBpbnQgaW50ZWxfZmJfeHlf
dG9fbGluZWFyKGludCB4LCBpbnQgeSwKKwkJCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVf
c3RhdGUgKnN0YXRlLAorCQkJCSAgIGludCBwbGFuZSk7Cit1bnNpZ25lZCBpbnQgaW50ZWxfZmJf
YWxpZ25faGVpZ2h0KGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLAorCQkJCSAgIGlu
dCBjb2xvcl9wbGFuZSwgdW5zaWduZWQgaW50IGhlaWdodCk7Cit2b2lkIGludGVsX2FkZF9mYl9v
ZmZzZXRzKGludCAqeCwgaW50ICp5LAorCQkJICBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3Rh
dGUgKnN0YXRlLCBpbnQgcGxhbmUpOwordW5zaWduZWQgaW50IGludGVsX3JvdGF0aW9uX2luZm9f
c2l6ZShjb25zdCBzdHJ1Y3QgaW50ZWxfcm90YXRpb25faW5mbyAqcm90X2luZm8pOwordW5zaWdu
ZWQgaW50IGludGVsX3JlbWFwcGVkX2luZm9fc2l6ZShjb25zdCBzdHJ1Y3QgaW50ZWxfcmVtYXBw
ZWRfaW5mbyAqcmVtX2luZm8pOworYm9vbCBpbnRlbF9oYXNfcGVuZGluZ19mYl91bnBpbihzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOworaW50IGludGVsX2Rpc3BsYXlfc3VzcGVu
ZChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsKK3ZvaWQgaW50ZWxfcHBzX3VubG9ja19yZWdzX3dh
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Cit2b2lkIGludGVsX2VuY29kZXJf
ZGVzdHJveShzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIpOworc3RydWN0IGRybV9kaXNwbGF5
X21vZGUgKgoraW50ZWxfZW5jb2Rlcl9jdXJyZW50X21vZGUoc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIpOworYm9vbCBpbnRlbF9waHlfaXNfY29tYm8oc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LCBlbnVtIHBoeSBwaHkpOworYm9vbCBpbnRlbF9waHlfaXNfdGMoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBoeSBwaHkpOworZW51bSB0Y19wb3J0
IGludGVsX3BvcnRfdG9fdGMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAorCQkJ
ICAgICAgZW51bSBwb3J0IHBvcnQpOworaW50IGludGVsX2dldF9waXBlX2Zyb21fY3J0Y19pZF9p
b2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAorCQkJCSAgICAgIHN0cnVj
dCBkcm1fZmlsZSAqZmlsZV9wcml2KTsKK2VudW0gdHJhbnNjb2RlciBpbnRlbF9waXBlX3RvX2Nw
dV90cmFuc2NvZGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJCQkJICAg
ICBlbnVtIHBpcGUgcGlwZSk7Cit1MzIgaW50ZWxfY3J0Y19nZXRfdmJsYW5rX2NvdW50ZXIoc3Ry
dWN0IGludGVsX2NydGMgKmNydGMpOworCitpbnQgaXJvbmxha2VfZ2V0X2xhbmVzX3JlcXVpcmVk
KGludCB0YXJnZXRfY2xvY2ssIGludCBsaW5rX2J3LCBpbnQgYnBwKTsKK3ZvaWQgdmx2X3dhaXRf
cG9ydF9yZWFkeShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCisJCQkgc3RydWN0
IGludGVsX2RpZ2l0YWxfcG9ydCAqZHBvcnQsCisJCQkgdW5zaWduZWQgaW50IGV4cGVjdGVkX21h
c2spOworaW50IGludGVsX2dldF9sb2FkX2RldGVjdF9waXBlKHN0cnVjdCBkcm1fY29ubmVjdG9y
ICpjb25uZWN0b3IsCisJCQkgICAgICAgY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1v
ZGUsCisJCQkgICAgICAgc3RydWN0IGludGVsX2xvYWRfZGV0ZWN0X3BpcGUgKm9sZCwKKwkJCSAg
ICAgICBzdHJ1Y3QgZHJtX21vZGVzZXRfYWNxdWlyZV9jdHggKmN0eCk7Cit2b2lkIGludGVsX3Jl
bGVhc2VfbG9hZF9kZXRlY3RfcGlwZShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAor
CQkJCSAgICBzdHJ1Y3QgaW50ZWxfbG9hZF9kZXRlY3RfcGlwZSAqb2xkLAorCQkJCSAgICBzdHJ1
Y3QgZHJtX21vZGVzZXRfYWNxdWlyZV9jdHggKmN0eCk7CitzdHJ1Y3QgaTkxNV92bWEgKgoraW50
ZWxfcGluX2FuZF9mZW5jZV9mYl9vYmooc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIsCisJCQkg
ICBjb25zdCBzdHJ1Y3QgaTkxNV9nZ3R0X3ZpZXcgKnZpZXcsCisJCQkgICBib29sIHVzZXNfZmVu
Y2UsCisJCQkgICB1bnNpZ25lZCBsb25nICpvdXRfZmxhZ3MpOwordm9pZCBpbnRlbF91bnBpbl9m
Yl92bWEoc3RydWN0IGk5MTVfdm1hICp2bWEsIHVuc2lnbmVkIGxvbmcgZmxhZ3MpOworc3RydWN0
IGRybV9mcmFtZWJ1ZmZlciAqCitpbnRlbF9mcmFtZWJ1ZmZlcl9jcmVhdGUoc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaiwKKwkJCSBzdHJ1Y3QgZHJtX21vZGVfZmJfY21kMiAqbW9kZV9j
bWQpOworaW50IGludGVsX3ByZXBhcmVfcGxhbmVfZmIoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUs
CisJCQkgICBzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpuZXdfc3RhdGUpOwordm9pZCBpbnRlbF9j
bGVhbnVwX3BsYW5lX2ZiKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLAorCQkJICAgIHN0cnVjdCBk
cm1fcGxhbmVfc3RhdGUgKm9sZF9zdGF0ZSk7CisKK3ZvaWQgYXNzZXJ0X3BjaF90cmFuc2NvZGVy
X2Rpc2FibGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJCQkgICAgZW51
bSBwaXBlIHBpcGUpOworCitpbnQgdmx2X2ZvcmNlX3BsbF9vbihzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsIGVudW0gcGlwZSBwaXBlLAorCQkgICAgIGNvbnN0IHN0cnVjdCBkcGxs
ICpkcGxsKTsKK3ZvaWQgdmx2X2ZvcmNlX3BsbF9vZmYoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LCBlbnVtIHBpcGUgcGlwZSk7CitpbnQgbHB0X2dldF9pY2xraXAoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKK2Jvb2wgaW50ZWxfZnV6enlfY2xvY2tfY2hlY2so
aW50IGNsb2NrMSwgaW50IGNsb2NrMik7CisKK3ZvaWQgaW50ZWxfcHJlcGFyZV9yZXNldChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwordm9pZCBpbnRlbF9maW5pc2hfcmVzZXQo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKK3ZvaWQgaW50ZWxfZHBfZ2V0X21f
bihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKKwkJICAgICAgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKnBpcGVfY29uZmlnKTsKK3ZvaWQgaW50ZWxfZHBfc2V0X21fbihjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKKwkJICAgICAgZW51bSBsaW5rX21fbl9zZXQgbV9u
KTsKK3ZvaWQgaW50ZWxfZHBfeWNiY3JfNDIwX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwLAorCQkJICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KTsKK2ludCBpbnRlbF9kb3RjbG9ja19jYWxjdWxhdGUoaW50IGxpbmtfZnJlcSwgY29uc3Qgc3Ry
dWN0IGludGVsX2xpbmtfbV9uICptX24pOworYm9vbCBieHRfZmluZF9iZXN0X2RwbGwoc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCisJCQlzdHJ1Y3QgZHBsbCAqYmVzdF9jbG9j
ayk7CitpbnQgY2h2X2NhbGNfZHBsbF9wYXJhbXMoaW50IHJlZmNsaywgc3RydWN0IGRwbGwgKnBs
bF9jbG9jayk7CisKK2Jvb2wgaW50ZWxfY3J0Y19hY3RpdmUoc3RydWN0IGludGVsX2NydGMgKmNy
dGMpOworYm9vbCBoc3dfY3J0Y19zdGF0ZV9pcHNfY2FwYWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cit2b2lkIGhzd19lbmFibGVfaXBzKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKK3ZvaWQgaHN3X2Rpc2FibGVfaXBzKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKK2VudW0gaW50ZWxfZGlz
cGxheV9wb3dlcl9kb21haW4gaW50ZWxfcG9ydF90b19wb3dlcl9kb21haW4oZW51bSBwb3J0IHBv
cnQpOworZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbgoraW50ZWxfYXV4X3Bvd2VyX2Rv
bWFpbihzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCk7Cit2b2lkIGludGVsX21v
ZGVfZnJvbV9waXBlX2NvbmZpZyhzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSwKKwkJCQkg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKTsKK3ZvaWQgaW50ZWxfY3J0Y19h
cm1fZmlmb191bmRlcnJ1bihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKKwkJCQkgIHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKKwordTE2IHNrbF9zY2FsZXJfY2FsY19waGFz
ZShpbnQgc3ViLCBpbnQgc2NhbGUsIGJvb2wgY2hyb21hX2NlbnRlcik7CitpbnQgc2tsX3VwZGF0
ZV9zY2FsZXJfY3J0YyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CitpbnQg
c2tsX21heF9zY2FsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwK
KwkJICB1MzIgcGl4ZWxfZm9ybWF0KTsKK3UzMiBnbGtfcGxhbmVfY29sb3JfY3RsKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAorCQkJY29uc3Qgc3RydWN0IGludGVs
X3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSk7Cit1MzIgZ2xrX3BsYW5lX2NvbG9yX2N0bF9jcnRj
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKK3UzMiBza2xfcGxh
bmVfY3RsKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAorCQkgIGNv
bnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpOwordTMyIHNrbF9wbGFu
ZV9jdGxfY3J0Yyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cit1
MzIgc2tsX3BsYW5lX3N0cmlkZShjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5l
X3N0YXRlLAorCQkgICAgIGludCBwbGFuZSk7CitpbnQgc2tsX2NoZWNrX3BsYW5lX3N1cmZhY2Uo
c3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSk7CitpbnQgaTl4eF9jaGVja19w
bGFuZV9zdXJmYWNlKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpOworaW50
IHNrbF9mb3JtYXRfdG9fZm91cmNjKGludCBmb3JtYXQsIGJvb2wgcmdiX29yZGVyLCBib29sIGFs
cGhhKTsKK3Vuc2lnbmVkIGludCBpOXh4X3BsYW5lX21heF9zdHJpZGUoc3RydWN0IGludGVsX3Bs
YW5lICpwbGFuZSwKKwkJCQkgICB1MzIgcGl4ZWxfZm9ybWF0LCB1NjQgbW9kaWZpZXIsCisJCQkJ
ICAgdW5zaWduZWQgaW50IHJvdGF0aW9uKTsKK2ludCBiZHdfZ2V0X3BpcGVtaXNjX2JwcChzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7CisKK3N0cnVjdCBpbnRlbF9kaXNwbGF5X2Vycm9yX3N0YXRl
ICoKK2ludGVsX2Rpc3BsYXlfY2FwdHVyZV9lcnJvcl9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpOwordm9pZCBpbnRlbF9kaXNwbGF5X3ByaW50X2Vycm9yX3N0YXRlKHN0
cnVjdCBkcm1faTkxNV9lcnJvcl9zdGF0ZV9idWYgKmUsCisJCQkJICAgICBzdHJ1Y3QgaW50ZWxf
ZGlzcGxheV9lcnJvcl9zdGF0ZSAqZXJyb3IpOworCisvKiBtb2Rlc2V0dGluZyAqLwordm9pZCBp
bnRlbF9tb2Rlc2V0X2luaXRfaHcoc3RydWN0IGRybV9kZXZpY2UgKmRldik7CitpbnQgaW50ZWxf
bW9kZXNldF9pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpOwordm9pZCBpbnRlbF9tb2Rlc2V0
X2RyaXZlcl9yZW1vdmUoc3RydWN0IGRybV9kZXZpY2UgKmRldik7CitpbnQgaW50ZWxfbW9kZXNl
dF92Z2Ffc2V0X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgYm9vbCBz
dGF0ZSk7Cit2b2lkIGludGVsX2Rpc3BsYXlfcmVzdW1lKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYp
Owordm9pZCBpOTE1X3JlZGlzYWJsZV92Z2Eoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KTsKK3ZvaWQgaTkxNV9yZWRpc2FibGVfdmdhX3Bvd2VyX29uKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdik7Cit2b2lkIGludGVsX2luaXRfcGNoX3JlZmNsayhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOworCisvKiBtb2Rlc2V0dGluZyBhc3NlcnRzICovCit2
b2lkIGFzc2VydF9wYW5lbF91bmxvY2tlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsCisJCQkgICBlbnVtIHBpcGUgcGlwZSk7Cit2b2lkIGFzc2VydF9wbGwoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LAorCQllbnVtIHBpcGUgcGlwZSwgYm9vbCBzdGF0ZSk7Cisj
ZGVmaW5lIGFzc2VydF9wbGxfZW5hYmxlZChkLCBwKSBhc3NlcnRfcGxsKGQsIHAsIHRydWUpCisj
ZGVmaW5lIGFzc2VydF9wbGxfZGlzYWJsZWQoZCwgcCkgYXNzZXJ0X3BsbChkLCBwLCBmYWxzZSkK
K3ZvaWQgYXNzZXJ0X2RzaV9wbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBi
b29sIHN0YXRlKTsKKyNkZWZpbmUgYXNzZXJ0X2RzaV9wbGxfZW5hYmxlZChkKSBhc3NlcnRfZHNp
X3BsbChkLCB0cnVlKQorI2RlZmluZSBhc3NlcnRfZHNpX3BsbF9kaXNhYmxlZChkKSBhc3NlcnRf
ZHNpX3BsbChkLCBmYWxzZSkKK3ZvaWQgYXNzZXJ0X2ZkaV9yeF9wbGwoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LAorCQkgICAgICAgZW51bSBwaXBlIHBpcGUsIGJvb2wgc3RhdGUp
OworI2RlZmluZSBhc3NlcnRfZmRpX3J4X3BsbF9lbmFibGVkKGQsIHApIGFzc2VydF9mZGlfcnhf
cGxsKGQsIHAsIHRydWUpCisjZGVmaW5lIGFzc2VydF9mZGlfcnhfcGxsX2Rpc2FibGVkKGQsIHAp
IGFzc2VydF9mZGlfcnhfcGxsKGQsIHAsIGZhbHNlKQordm9pZCBhc3NlcnRfcGlwZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcGlwZSBwaXBlLCBib29sIHN0YXRlKTsK
KyNkZWZpbmUgYXNzZXJ0X3BpcGVfZW5hYmxlZChkLCBwKSBhc3NlcnRfcGlwZShkLCBwLCB0cnVl
KQorI2RlZmluZSBhc3NlcnRfcGlwZV9kaXNhYmxlZChkLCBwKSBhc3NlcnRfcGlwZShkLCBwLCBm
YWxzZSkKKwogI2VuZGlmCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCA4OTMxZGQ4NDdiYjUu
LjIzNDVlOWY4YzI2ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0yNjM1LDI0ICsyNjM1
LDkgQEAgbWt3cml0ZV9kZXZpY2VfaW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCiAJcmV0dXJuIChzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gKilJTlRFTF9JTkZPKGRldl9w
cml2KTsKIH0KIAotLyogbW9kZXNldHRpbmcgKi8KLXZvaWQgaW50ZWxfbW9kZXNldF9pbml0X2h3
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpOwotaW50IGludGVsX21vZGVzZXRfaW5pdChzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2KTsKLXZvaWQgaW50ZWxfbW9kZXNldF9kcml2ZXJfcmVtb3ZlKHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYpOwotaW50IGludGVsX21vZGVzZXRfdmdhX3NldF9zdGF0ZShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGJvb2wgc3RhdGUpOwotdm9pZCBpbnRlbF9k
aXNwbGF5X3Jlc3VtZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsKLXZvaWQgaTkxNV9yZWRpc2Fi
bGVfdmdhKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Ci12b2lkIGk5MTVfcmVk
aXNhYmxlX3ZnYV9wb3dlcl9vbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwot
dm9pZCBpbnRlbF9pbml0X3BjaF9yZWZjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KTsKLQogaW50IGk5MTVfcmVnX3JlYWRfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwg
dm9pZCAqZGF0YSwKIAkJCXN0cnVjdCBkcm1fZmlsZSAqZmlsZSk7CiAKLXN0cnVjdCBpbnRlbF9k
aXNwbGF5X2Vycm9yX3N0YXRlICoKLWludGVsX2Rpc3BsYXlfY2FwdHVyZV9lcnJvcl9zdGF0ZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwotdm9pZCBpbnRlbF9kaXNwbGF5X3By
aW50X2Vycm9yX3N0YXRlKHN0cnVjdCBkcm1faTkxNV9lcnJvcl9zdGF0ZV9idWYgKmUsCi0JCQkJ
ICAgICBzdHJ1Y3QgaW50ZWxfZGlzcGxheV9lcnJvcl9zdGF0ZSAqZXJyb3IpOwotCiAjZGVmaW5l
IF9fSTkxNV9SRUdfT1Aob3BfXywgZGV2X3ByaXZfXywgLi4uKSBcCiAJaW50ZWxfdW5jb3JlXyMj
b3BfXygmKGRldl9wcml2X18pLT51bmNvcmUsIF9fVkFfQVJHU19fKQogCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2Rydi5oCmluZGV4IGM0MDE2MTY0YzM0ZS4uZDZmODUxZDU4MWEzIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kcnYuaApAQCAtMTQ3Myw0MSArMTQ3Myw2IEBAIGludGVsX2F0b21pY19nZXRfbmV3
X2NydGNfc3RhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiB9CiAKIC8qIGlu
dGVsX2Rpc3BsYXkuYyAqLwotdm9pZCBpbnRlbF9wbGFuZV9kZXN0cm95KHN0cnVjdCBkcm1fcGxh
bmUgKnBsYW5lKTsKLXZvaWQgaTgzMF9lbmFibGVfcGlwZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsIGVudW0gcGlwZSBwaXBlKTsKLXZvaWQgaTgzMF9kaXNhYmxlX3BpcGUoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBpcGUgcGlwZSk7Ci1lbnVtIHBp
cGUgaW50ZWxfY3J0Y19wY2hfdHJhbnNjb2RlcihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7Ci1p
bnQgdmx2X2dldF9ocGxsX3ZjbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwot
aW50IHZsdl9nZXRfY2NrX2Nsb2NrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwK
LQkJICAgICAgY29uc3QgY2hhciAqbmFtZSwgdTMyIHJlZywgaW50IHJlZl9mcmVxKTsKLWludCB2
bHZfZ2V0X2Nja19jbG9ja19ocGxsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwK
LQkJCSAgIGNvbnN0IGNoYXIgKm5hbWUsIHUzMiByZWcpOwotdm9pZCBscHRfZGlzYWJsZV9wY2hf
dHJhbnNjb2RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwotdm9pZCBscHRf
ZGlzYWJsZV9pY2xraXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKLXZvaWQg
aW50ZWxfaW5pdF9kaXNwbGF5X2hvb2tzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dik7Ci11bnNpZ25lZCBpbnQgaW50ZWxfZmJfeHlfdG9fbGluZWFyKGludCB4LCBpbnQgeSwKLQkJ
CQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnN0YXRlLAotCQkJCSAgIGludCBw
bGFuZSk7Ci11bnNpZ25lZCBpbnQgaW50ZWxfZmJfYWxpZ25faGVpZ2h0KGNvbnN0IHN0cnVjdCBk
cm1fZnJhbWVidWZmZXIgKmZiLAotCQkJCSAgIGludCBjb2xvcl9wbGFuZSwgdW5zaWduZWQgaW50
IGhlaWdodCk7Ci12b2lkIGludGVsX2FkZF9mYl9vZmZzZXRzKGludCAqeCwgaW50ICp5LAotCQkJ
ICBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnN0YXRlLCBpbnQgcGxhbmUpOwotdW5z
aWduZWQgaW50IGludGVsX3JvdGF0aW9uX2luZm9fc2l6ZShjb25zdCBzdHJ1Y3QgaW50ZWxfcm90
YXRpb25faW5mbyAqcm90X2luZm8pOwotdW5zaWduZWQgaW50IGludGVsX3JlbWFwcGVkX2luZm9f
c2l6ZShjb25zdCBzdHJ1Y3QgaW50ZWxfcmVtYXBwZWRfaW5mbyAqcmVtX2luZm8pOwotYm9vbCBp
bnRlbF9oYXNfcGVuZGluZ19mYl91bnBpbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpOwotaW50IGludGVsX2Rpc3BsYXlfc3VzcGVuZChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsK
LXZvaWQgaW50ZWxfcHBzX3VubG9ja19yZWdzX3dhKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdik7Ci12b2lkIGludGVsX2VuY29kZXJfZGVzdHJveShzdHJ1Y3QgZHJtX2VuY29kZXIg
KmVuY29kZXIpOwotc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKgotaW50ZWxfZW5jb2Rlcl9jdXJy
ZW50X21vZGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpOwotYm9vbCBpbnRlbF9waHlf
aXNfY29tYm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBoeSBwaHkp
OwotYm9vbCBpbnRlbF9waHlfaXNfdGMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LCBlbnVtIHBoeSBwaHkpOwotZW51bSB0Y19wb3J0IGludGVsX3BvcnRfdG9fdGMoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAotCQkJICAgICAgZW51bSBwb3J0IHBvcnQpOwotaW50
IGludGVsX2dldF9waXBlX2Zyb21fY3J0Y19pZF9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LCB2b2lkICpkYXRhLAotCQkJCSAgICAgIHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2KTsKLWVu
dW0gdHJhbnNjb2RlciBpbnRlbF9waXBlX3RvX2NwdV90cmFuc2NvZGVyKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKLQkJCQkJICAgICBlbnVtIHBpcGUgcGlwZSk7CiBzdGF0aWMg
aW5saW5lIGJvb2wKIGludGVsX2NydGNfaGFzX3R5cGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUsCiAJCSAgICBlbnVtIGludGVsX291dHB1dF90eXBlIHR5cGUpCkBA
IC0xNTM2LDEwOCArMTUwMSw5IEBAIGludGVsX3dhaXRfZm9yX3ZibGFua19pZl9hY3RpdmUoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBpbnQgcGlwZSkKIAkJaW50ZWxfd2FpdF9m
b3JfdmJsYW5rKGRldl9wcml2LCBwaXBlKTsKIH0KIAotdTMyIGludGVsX2NydGNfZ2V0X3ZibGFu
a19jb3VudGVyKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsKLQotaW50IGlyb25sYWtlX2dldF9s
YW5lc19yZXF1aXJlZChpbnQgdGFyZ2V0X2Nsb2NrLCBpbnQgbGlua19idywgaW50IGJwcCk7Ci12
b2lkIHZsdl93YWl0X3BvcnRfcmVhZHkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LAotCQkJIHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRwb3J0LAotCQkJIHVuc2lnbmVkIGlu
dCBleHBlY3RlZF9tYXNrKTsKLWludCBpbnRlbF9nZXRfbG9hZF9kZXRlY3RfcGlwZShzdHJ1Y3Qg
ZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAotCQkJICAgICAgIGNvbnN0IHN0cnVjdCBkcm1fZGlz
cGxheV9tb2RlICptb2RlLAotCQkJICAgICAgIHN0cnVjdCBpbnRlbF9sb2FkX2RldGVjdF9waXBl
ICpvbGQsCi0JCQkgICAgICAgc3RydWN0IGRybV9tb2Rlc2V0X2FjcXVpcmVfY3R4ICpjdHgpOwot
dm9pZCBpbnRlbF9yZWxlYXNlX2xvYWRfZGV0ZWN0X3BpcGUoc3RydWN0IGRybV9jb25uZWN0b3Ig
KmNvbm5lY3RvciwKLQkJCQkgICAgc3RydWN0IGludGVsX2xvYWRfZGV0ZWN0X3BpcGUgKm9sZCwK
LQkJCQkgICAgc3RydWN0IGRybV9tb2Rlc2V0X2FjcXVpcmVfY3R4ICpjdHgpOwotc3RydWN0IGk5
MTVfdm1hICoKLWludGVsX3Bpbl9hbmRfZmVuY2VfZmJfb2JqKHN0cnVjdCBkcm1fZnJhbWVidWZm
ZXIgKmZiLAotCQkJICAgY29uc3Qgc3RydWN0IGk5MTVfZ2d0dF92aWV3ICp2aWV3LAotCQkJICAg
Ym9vbCB1c2VzX2ZlbmNlLAotCQkJICAgdW5zaWduZWQgbG9uZyAqb3V0X2ZsYWdzKTsKLXZvaWQg
aW50ZWxfdW5waW5fZmJfdm1hKHN0cnVjdCBpOTE1X3ZtYSAqdm1hLCB1bnNpZ25lZCBsb25nIGZs
YWdzKTsKLXN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKgotaW50ZWxfZnJhbWVidWZmZXJfY3JlYXRl
KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCi0JCQkgc3RydWN0IGRybV9tb2RlX2Zi
X2NtZDIgKm1vZGVfY21kKTsKLWludCBpbnRlbF9wcmVwYXJlX3BsYW5lX2ZiKHN0cnVjdCBkcm1f
cGxhbmUgKnBsYW5lLAotCQkJICAgc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAqbmV3X3N0YXRlKTsK
LXZvaWQgaW50ZWxfY2xlYW51cF9wbGFuZV9mYihzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKLQkJ
CSAgICBzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpvbGRfc3RhdGUpOwotCi12b2lkIGFzc2VydF9w
Y2hfdHJhbnNjb2Rlcl9kaXNhYmxlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
Ci0JCQkJICAgIGVudW0gcGlwZSBwaXBlKTsKLQotaW50IHZsdl9mb3JjZV9wbGxfb24oc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBpcGUgcGlwZSwKLQkJICAgICBjb25z
dCBzdHJ1Y3QgZHBsbCAqZHBsbCk7Ci12b2lkIHZsdl9mb3JjZV9wbGxfb2ZmKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwaXBlIHBpcGUpOwotaW50IGxwdF9nZXRfaWNs
a2lwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Ci1ib29sIGludGVsX2Z1enp5
X2Nsb2NrX2NoZWNrKGludCBjbG9jazEsIGludCBjbG9jazIpOwotCi0vKiBtb2Rlc2V0dGluZyBh
c3NlcnRzICovCi12b2lkIGFzc2VydF9wYW5lbF91bmxvY2tlZChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsCi0JCQkgICBlbnVtIHBpcGUgcGlwZSk7Ci12b2lkIGFzc2VydF9wbGwo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAotCQllbnVtIHBpcGUgcGlwZSwgYm9v
bCBzdGF0ZSk7Ci0jZGVmaW5lIGFzc2VydF9wbGxfZW5hYmxlZChkLCBwKSBhc3NlcnRfcGxsKGQs
IHAsIHRydWUpCi0jZGVmaW5lIGFzc2VydF9wbGxfZGlzYWJsZWQoZCwgcCkgYXNzZXJ0X3BsbChk
LCBwLCBmYWxzZSkKLXZvaWQgYXNzZXJ0X2RzaV9wbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LCBib29sIHN0YXRlKTsKLSNkZWZpbmUgYXNzZXJ0X2RzaV9wbGxfZW5hYmxlZChk
KSBhc3NlcnRfZHNpX3BsbChkLCB0cnVlKQotI2RlZmluZSBhc3NlcnRfZHNpX3BsbF9kaXNhYmxl
ZChkKSBhc3NlcnRfZHNpX3BsbChkLCBmYWxzZSkKLXZvaWQgYXNzZXJ0X2ZkaV9yeF9wbGwoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAotCQkgICAgICAgZW51bSBwaXBlIHBpcGUs
IGJvb2wgc3RhdGUpOwotI2RlZmluZSBhc3NlcnRfZmRpX3J4X3BsbF9lbmFibGVkKGQsIHApIGFz
c2VydF9mZGlfcnhfcGxsKGQsIHAsIHRydWUpCi0jZGVmaW5lIGFzc2VydF9mZGlfcnhfcGxsX2Rp
c2FibGVkKGQsIHApIGFzc2VydF9mZGlfcnhfcGxsKGQsIHAsIGZhbHNlKQotdm9pZCBhc3NlcnRf
cGlwZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcGlwZSBwaXBlLCBi
b29sIHN0YXRlKTsKLSNkZWZpbmUgYXNzZXJ0X3BpcGVfZW5hYmxlZChkLCBwKSBhc3NlcnRfcGlw
ZShkLCBwLCB0cnVlKQotI2RlZmluZSBhc3NlcnRfcGlwZV9kaXNhYmxlZChkLCBwKSBhc3NlcnRf
cGlwZShkLCBwLCBmYWxzZSkKLXZvaWQgaW50ZWxfcHJlcGFyZV9yZXNldChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwotdm9pZCBpbnRlbF9maW5pc2hfcmVzZXQoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKLXZvaWQgaW50ZWxfZHBfZ2V0X21fbihzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YywKLQkJICAgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVf
Y29uZmlnKTsKLXZvaWQgaW50ZWxfZHBfc2V0X21fbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSwKLQkJICAgICAgZW51bSBsaW5rX21fbl9zZXQgbV9uKTsKLXZvaWQg
aW50ZWxfZHBfeWNiY3JfNDIwX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAotCQkJ
ICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKLWludCBp
bnRlbF9kb3RjbG9ja19jYWxjdWxhdGUoaW50IGxpbmtfZnJlcSwgY29uc3Qgc3RydWN0IGludGVs
X2xpbmtfbV9uICptX24pOwotYm9vbCBieHRfZmluZF9iZXN0X2RwbGwoc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUsCi0JCQlzdHJ1Y3QgZHBsbCAqYmVzdF9jbG9jayk7Ci1pbnQg
Y2h2X2NhbGNfZHBsbF9wYXJhbXMoaW50IHJlZmNsaywgc3RydWN0IGRwbGwgKnBsbF9jbG9jayk7
Ci0KLWJvb2wgaW50ZWxfY3J0Y19hY3RpdmUoc3RydWN0IGludGVsX2NydGMgKmNydGMpOwotYm9v
bCBoc3dfY3J0Y19zdGF0ZV9pcHNfY2FwYWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSk7Ci12b2lkIGhzd19lbmFibGVfaXBzKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKLXZvaWQgaHN3X2Rpc2FibGVfaXBzKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKLWVudW0gaW50ZWxfZGlzcGxheV9wb3dl
cl9kb21haW4gaW50ZWxfcG9ydF90b19wb3dlcl9kb21haW4oZW51bSBwb3J0IHBvcnQpOwotZW51
bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbgotaW50ZWxfYXV4X3Bvd2VyX2RvbWFpbihzdHJ1
Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCk7Ci12b2lkIGludGVsX21vZGVfZnJvbV9w
aXBlX2NvbmZpZyhzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSwKLQkJCQkgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKTsKLXZvaWQgaW50ZWxfY3J0Y19hcm1fZmlmb191
bmRlcnJ1bihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKLQkJCQkgIHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKTsKLQotdTE2IHNrbF9zY2FsZXJfY2FsY19waGFzZShpbnQgc3Vi
LCBpbnQgc2NhbGUsIGJvb2wgY2hyb21hX2NlbnRlcik7Ci1pbnQgc2tsX3VwZGF0ZV9zY2FsZXJf
Y3J0YyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Ci1pbnQgc2tsX21heF9z
Y2FsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKLQkJICB1MzIg
cGl4ZWxfZm9ybWF0KTsKLQogc3RhdGljIGlubGluZSB1MzIgaW50ZWxfcGxhbmVfZ2d0dF9vZmZz
ZXQoY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpzdGF0ZSkKIHsKIAlyZXR1cm4gaTkx
NV9nZ3R0X29mZnNldChzdGF0ZS0+dm1hKTsKIH0KIAotdTMyIGdsa19wbGFuZV9jb2xvcl9jdGwo
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCi0JCQljb25zdCBzdHJ1
Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKTsKLXUzMiBnbGtfcGxhbmVfY29sb3Jf
Y3RsX2NydGMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwotdTMy
IHNrbF9wbGFuZV9jdGwoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUs
Ci0JCSAgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSk7Ci11MzIg
c2tsX3BsYW5lX2N0bF9jcnRjKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKTsKLXUzMiBza2xfcGxhbmVfc3RyaWRlKGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0
ZSAqcGxhbmVfc3RhdGUsCi0JCSAgICAgaW50IHBsYW5lKTsKLWludCBza2xfY2hlY2tfcGxhbmVf
c3VyZmFjZShzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKTsKLWludCBpOXh4
X2NoZWNrX3BsYW5lX3N1cmZhY2Uoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0
ZSk7Ci1pbnQgc2tsX2Zvcm1hdF90b19mb3VyY2MoaW50IGZvcm1hdCwgYm9vbCByZ2Jfb3JkZXIs
IGJvb2wgYWxwaGEpOwotdW5zaWduZWQgaW50IGk5eHhfcGxhbmVfbWF4X3N0cmlkZShzdHJ1Y3Qg
aW50ZWxfcGxhbmUgKnBsYW5lLAotCQkJCSAgIHUzMiBwaXhlbF9mb3JtYXQsIHU2NCBtb2RpZmll
ciwKLQkJCQkgICB1bnNpZ25lZCBpbnQgcm90YXRpb24pOwotaW50IGJkd19nZXRfcGlwZW1pc2Nf
YnBwKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsKLQogI2VuZGlmIC8qIF9fSU5URUxfRFJWX0hf
XyAqLwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
