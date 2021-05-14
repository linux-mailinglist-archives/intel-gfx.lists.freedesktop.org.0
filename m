Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CC4380D5B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 17:37:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 935366F385;
	Fri, 14 May 2021 15:37:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30DA76F382
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 15:37:22 +0000 (UTC)
IronPort-SDR: sRb4+KXmUdEKmeTK8HqMl8CeeOfZPmMuj5fZt16UVZduo9sIHeXPEm78tZxIJI9y0gTor+WuFV
 BbQzpH1vGxLA==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="200243938"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="200243938"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 08:37:19 -0700
IronPort-SDR: wkoiDo89zS69oBJOAk8agPu71d2AQ3pQ8pknvgFTnVCPfECdHopC3h4RIrs2vkC9KCW274JCNQ
 /tiFL2lowVSQ==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="610796597"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 08:37:19 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 08:37:10 -0700
Message-Id: <20210514153711.2359617-19-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210514153711.2359617-1-matthew.d.roper@intel.com>
References: <20210514153711.2359617-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 18/19] drm/i915/display/adl_p: Implement
 Wa_22011320316
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpJbXBs
ZW1lbnRhdGlvbiBkZXRhaWxzIGFyZSBpbiB0aGUgSFNEIDIyMDExMzIwMzE2LCByZXF1aXJpbmcg
Q0QgY2xvY2sKdG8gYmUgYXQgbGVhc3QgMzA3TUh6IHRvIG1ha2UgREMgc3RhdGVzIHRvIHdvcmsu
CgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KQ2M6IEFudXNoYSBT
cml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IENs
aW50b24gVGF5bG9yIDxDbGludG9uLkEuVGF5bG9yQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
TWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1pa2Eg
S2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgMjEgKysrKysrKysrKysrKysrKysrKystCiAxIGZpbGUg
Y2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwppbmRleCBjOWYxNDg0ZjM4MTEuLjQ2NTZhNmVk
YzNiZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNs
ay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwpAQCAt
MTI1Myw2ICsxMjUzLDIxIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfY2RjbGtfdmFscyBy
a2xfY2RjbGtfdGFibGVbXSA9IHsKIAl7fQogfTsKIAorc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRl
bF9jZGNsa192YWxzIGFkbHBfYV9zdGVwX2NkY2xrX3RhYmxlW10gPSB7CisJeyAucmVmY2xrID0g
MTkyMDAsIC5jZGNsayA9IDMwNzIwMCwgLmRpdmlkZXIgPSAyLCAucmF0aW8gPSAzMiB9LAorCXsg
LnJlZmNsayA9IDE5MjAwLCAuY2RjbGsgPSA1NTY4MDAsIC5kaXZpZGVyID0gMiwgLnJhdGlvID0g
NTggfSwKKwl7IC5yZWZjbGsgPSAxOTIwMCwgLmNkY2xrID0gNjUyODAwLCAuZGl2aWRlciA9IDIs
IC5yYXRpbyA9IDY4IH0sCisKKwl7IC5yZWZjbGsgPSAyNDAwMCwgLmNkY2xrID0gMzEyMDAwLCAu
ZGl2aWRlciA9IDIsIC5yYXRpbyA9IDI2IH0sCisJeyAucmVmY2xrID0gMjQwMDAsIC5jZGNsayA9
IDU1MjAwMCwgLmRpdmlkZXIgPSAyLCAucmF0aW8gPSA0NiB9LAorCXsgLnJlZmNsayA9IDI0NDAw
LCAuY2RjbGsgPSA2NDgwMDAsIC5kaXZpZGVyID0gMiwgLnJhdGlvID0gNTQgfSwKKworCXsgLnJl
ZmNsayA9IDM4NDAwLCAuY2RjbGsgPSAzMDcyMDAsIC5kaXZpZGVyID0gMiwgLnJhdGlvID0gMTYg
fSwKKwl7IC5yZWZjbGsgPSAzODQwMCwgLmNkY2xrID0gNTU2ODAwLCAuZGl2aWRlciA9IDIsIC5y
YXRpbyA9IDI5IH0sCisJeyAucmVmY2xrID0gMzg0MDAsIC5jZGNsayA9IDY1MjgwMCwgLmRpdmlk
ZXIgPSAyLCAucmF0aW8gPSAzNCB9LAorCXt9Cit9OworCiBzdGF0aWMgY29uc3Qgc3RydWN0IGlu
dGVsX2NkY2xrX3ZhbHMgYWRscF9jZGNsa190YWJsZVtdID0gewogCXsgLnJlZmNsayA9IDE5MjAw
LCAuY2RjbGsgPSAxNzI4MDAsIC5kaXZpZGVyID0gMywgLnJhdGlvID0gMjcgfSwKIAl7IC5yZWZj
bGsgPSAxOTIwMCwgLmNkY2xrID0gMTkyMDAwLCAuZGl2aWRlciA9IDIsIC5yYXRpbyA9IDIwIH0s
CkBAIC0yODAxLDcgKzI4MTYsMTEgQEAgdm9pZCBpbnRlbF9pbml0X2NkY2xrX2hvb2tzKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJZGV2X3ByaXYtPmRpc3BsYXkuYndfY2Fs
Y19taW5fY2RjbGsgPSBza2xfYndfY2FsY19taW5fY2RjbGs7CiAJCWRldl9wcml2LT5kaXNwbGF5
Lm1vZGVzZXRfY2FsY19jZGNsayA9IGJ4dF9tb2Rlc2V0X2NhbGNfY2RjbGs7CiAJCWRldl9wcml2
LT5kaXNwbGF5LmNhbGNfdm9sdGFnZV9sZXZlbCA9IHRnbF9jYWxjX3ZvbHRhZ2VfbGV2ZWw7Ci0J
CWRldl9wcml2LT5jZGNsay50YWJsZSA9IGFkbHBfY2RjbGtfdGFibGU7CisJCS8qIFdhXzIyMDEx
MzIwMzE2OmFkbHBbYTBdICovCisJCWlmIChJU19BRExQX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwg
U1RFUF9BMCwgU1RFUF9BMCkpCisJCQlkZXZfcHJpdi0+Y2RjbGsudGFibGUgPSBhZGxwX2Ffc3Rl
cF9jZGNsa190YWJsZTsKKwkJZWxzZQorCQkJZGV2X3ByaXYtPmNkY2xrLnRhYmxlID0gYWRscF9j
ZGNsa190YWJsZTsKIAl9IGVsc2UgaWYgKElTX1JPQ0tFVExBS0UoZGV2X3ByaXYpKSB7CiAJCWRl
dl9wcml2LT5kaXNwbGF5LnNldF9jZGNsayA9IGJ4dF9zZXRfY2RjbGs7CiAJCWRldl9wcml2LT5k
aXNwbGF5LmJ3X2NhbGNfbWluX2NkY2xrID0gc2tsX2J3X2NhbGNfbWluX2NkY2xrOwotLSAKMi4y
NS40CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
