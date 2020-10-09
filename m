Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0AC289221
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Oct 2020 21:45:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3A216ED8F;
	Fri,  9 Oct 2020 19:45:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 877666ED8F
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Oct 2020 19:44:59 +0000 (UTC)
IronPort-SDR: OscOOBB5BTgzyYcoiW6ECSTK11sKOFqaFDuTWYH9YI5EA8TuPaHHCF/1fJxAGH4NFcsMgmRG7o
 hrPU/AOiVuvg==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="250225407"
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="250225407"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:44:57 -0700
IronPort-SDR: hIqsDof11FOyhc8KkUdUGYEsG4LSyEnFv3oStZLeW3DPTfX3h7artUAu8cZul/byrLuivA/Gav
 yjgphjkkHTXQ==
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="529050527"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:44:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Oct 2020 12:44:42 -0700
Message-Id: <20201009194442.3668677-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20201009194442.3668677-1-matthew.d.roper@intel.com>
References: <20201009194442.3668677-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915: Update gen12 multicast
 register ranges
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

VGhlIHVwZGF0ZWQgYnNwZWMgZm9yY2V3YWtlIHRhYmxlIGFsc28gcHJvdmlkZXMgdXMgd2l0aCBu
ZXcgbXVsdGljYXN0CnJhbmdlcyB0aGF0IHNob3VsZCBiZSByZWZsZWN0ZWQgaW4gb3VyIHdvcmth
cm91bmQgY29kZS4KCk5vdGUgdGhhdCB0aGVyZSBhcmUgZGlmZmVyZW50IHR5cGVzIG9mIG11bHRp
Y2FzdCByZWdpc3RlcnMgd2l0aApkaWZmZXJlbnQgc3R5bGVzIG9mIHJlcGxpY2F0aW9uIGFuZCBk
aWZmZXJlbnQgc3RlZXJpbmcgcmVnaXN0ZXJzLiAgVGhlCmk5MTUgTUNSIHJhbmdlIGxpc3RzIHdl
J3JlIHVwZGF0aW5nIGhlcmUgYXJlIG9ubHkgdXNlZCB0byBlbnN1cmUgd2UgY2FuCnZlcmlmeSB3
b3JrYXJvdW5kcyBwcm9wZXJseSAoaS5lLiwgaWYgd2UgY2FuJ3Qgc3RlZXIgcmVnaXN0ZXIgcmVh
ZHMgd2UKZG9uJ3Qgd2FudCB0byB2ZXJpZnkgd29ya2Fyb3VuZHMgd2hlcmUgYW4gdW5zdGVlcmVk
IHJlYWQgbWlnaHQgaGl0IGEKZnVzZWQtb2ZmIGluc3RhbmNlIG9mIHRoZSB1bml0KS4gIEJlY2F1
c2Ugb2YgdGhpcywgd2UgZG9uJ3QgbmVlZCB0bwppbmNsdWRlIGFueSBvZiB0aGUgbXVsdGljYXN0
IHJhbmdlcyB3aGVyZSBhbGwgaW5zdGFuY2VzIG9mIHRoZSByZWdpc3Rlcgp3aWxsIGFsd2F5cyBw
cmVzZW50IGFuZCBmdXNpbmcgZG9lc24ndCBwbGF5IGEgcm9sZS4gIFNwZWNpZmljYWxseSwgdGhh
dAptZWFucyB0aGF0IHdlIGFyZSBub3QgaW5jbHVkaW5nIHRoZSBNQ1IgcmFuZ2VzIGRlc2lnbmF0
ZWQgYXMgIlNRSURJIiBpbgp0aGUgYnNwZWMuCgpCc3BlYzogNjY2OTYKQ2M6IENheiBZb2tveWFt
YSA8Y2F6Lnlva295YW1hQGludGVsLmNvbT4KQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRh
bmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhl
dy5kLnJvcGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93
b3JrYXJvdW5kcy5jIHwgMjggKysrKysrKysrKysrKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MjIgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYwppbmRleCA2YzU4MGQwZDllYTguLjc4YzU0ODBjNjQwMSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCkBAIC0yMDMx
LDEwICsyMDMxLDEyIEBAIGNyZWF0ZV9zY3JhdGNoKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2Ug
KnZtLCBpbnQgY291bnQpCiAJcmV0dXJuIEVSUl9QVFIoZXJyKTsKIH0KIAotc3RhdGljIGNvbnN0
IHN0cnVjdCB7CitzdHJ1Y3QgbWNyX3JhbmdlIHsKIAl1MzIgc3RhcnQ7CiAJdTMyIGVuZDsKLX0g
bWNyX3Jhbmdlc19nZW44W10gPSB7Cit9OworCitzdGF0aWMgY29uc3Qgc3RydWN0IG1jcl9yYW5n
ZSBtY3JfcmFuZ2VzX2dlbjhbXSA9IHsKIAl7IC5zdGFydCA9IDB4NTUwMCwgLmVuZCA9IDB4NTVm
ZiB9LAogCXsgLnN0YXJ0ID0gMHg3MDAwLCAuZW5kID0gMHg3ZmZmIH0sCiAJeyAuc3RhcnQgPSAw
eDk0MDAsIC5lbmQgPSAweDk3ZmYgfSwKQEAgLTIwNDMsMTEgKzIwNDUsMjUgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCB7CiAJe30sCiB9OwogCitzdGF0aWMgY29uc3Qgc3RydWN0IG1jcl9yYW5nZSBt
Y3JfcmFuZ2VzX2dlbjEyW10gPSB7CisJeyAuc3RhcnQgPSAgMHg4MTUwLCAuZW5kID0gIDB4ODE1
ZiB9LAorCXsgLnN0YXJ0ID0gIDB4OTUyMCwgLmVuZCA9ICAweDk1NWYgfSwKKwl7IC5zdGFydCA9
ICAweGIxMDAsIC5lbmQgPSAgMHhiM2ZmIH0sCisJeyAuc3RhcnQgPSAgMHhkZTgwLCAuZW5kID0g
IDB4ZThmZiB9LAorCXsgLnN0YXJ0ID0gMHgyNGEwMCwgLmVuZCA9IDB4MjRhN2YgfSwKKwl7fSwK
K307CisKIHN0YXRpYyBib29sIG1jcl9yYW5nZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwgdTMyIG9mZnNldCkKIHsKKwljb25zdCBzdHJ1Y3QgbWNyX3JhbmdlICptY3JfcmFuZ2VzOwog
CWludCBpOwogCi0JaWYgKElOVEVMX0dFTihpOTE1KSA8IDgpCisJaWYgKElOVEVMX0dFTihpOTE1
KSA+PSAxMikKKwkJbWNyX3JhbmdlcyA9IG1jcl9yYW5nZXNfZ2VuMTI7CisJZWxzZSBpZiAoSU5U
RUxfR0VOKGk5MTUpID49IDgpCisJCW1jcl9yYW5nZXMgPSBtY3JfcmFuZ2VzX2dlbjg7CisJZWxz
ZQogCQlyZXR1cm4gZmFsc2U7CiAKIAkvKgpAQCAtMjA1NSw5ICsyMDcxLDkgQEAgc3RhdGljIGJv
b2wgbWNyX3JhbmdlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1MzIgb2Zmc2V0KQog
CSAqIHdoaWNoIG9ubHkgY29udHJvbHMgQ1BVIGluaXRpYXRlZCBNTUlPLiBSb3V0aW5nIGRvZXMg
bm90CiAJICogd29yayBmb3IgQ1MgYWNjZXNzIHNvIHdlIGNhbm5vdCB2ZXJpZnkgdGhlbSBvbiB0
aGlzIHBhdGguCiAJICovCi0JZm9yIChpID0gMDsgbWNyX3Jhbmdlc19nZW44W2ldLnN0YXJ0OyBp
KyspCi0JCWlmIChvZmZzZXQgPj0gbWNyX3Jhbmdlc19nZW44W2ldLnN0YXJ0ICYmCi0JCSAgICBv
ZmZzZXQgPD0gbWNyX3Jhbmdlc19nZW44W2ldLmVuZCkKKwlmb3IgKGkgPSAwOyBtY3JfcmFuZ2Vz
W2ldLnN0YXJ0OyBpKyspCisJCWlmIChvZmZzZXQgPj0gbWNyX3Jhbmdlc1tpXS5zdGFydCAmJgor
CQkgICAgb2Zmc2V0IDw9IG1jcl9yYW5nZXNbaV0uZW5kKQogCQkJcmV0dXJuIHRydWU7CiAKIAly
ZXR1cm4gZmFsc2U7Ci0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
