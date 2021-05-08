Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3582376EBF
	for <lists+intel-gfx@lfdr.de>; Sat,  8 May 2021 04:29:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEE8D6E843;
	Sat,  8 May 2021 02:28:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1D846E82B
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 May 2021 02:28:32 +0000 (UTC)
IronPort-SDR: +vmNUyTePqjteNk/GbEOhc6xKtxoMISR5XBibqBvnIrRqHn5n41oBW3nKHAbXR22PMrClo/TZ7
 CB9LduO+D0UQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9977"; a="284317036"
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="284317036"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 19:28:30 -0700
IronPort-SDR: hSJVQbbZTxFgOHIhH4w5e4i+0Z9MR6o1JNxFAhTOwcsGv1CM62+Z85TH576JvZA4Uv+wciNvTx
 j/P5w5Y/8XcA==
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="533910175"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 19:28:29 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 May 2021 19:28:18 -0700
Message-Id: <20210508022820.780227-47-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210508022820.780227-1-matthew.d.roper@intel.com>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 46/48] drm/i915/display/adl_p: Implement
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
TWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCAyMSArKysrKysrKysrKysrKysrKysrKy0K
IDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCmluZGV4IGM5ZjE0ODRmMzgxMS4u
NDY1NmE2ZWRjM2JlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NkY2xrLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNs
ay5jCkBAIC0xMjUzLDYgKzEyNTMsMjEgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9jZGNs
a192YWxzIHJrbF9jZGNsa190YWJsZVtdID0gewogCXt9CiB9OwogCitzdGF0aWMgY29uc3Qgc3Ry
dWN0IGludGVsX2NkY2xrX3ZhbHMgYWRscF9hX3N0ZXBfY2RjbGtfdGFibGVbXSA9IHsKKwl7IC5y
ZWZjbGsgPSAxOTIwMCwgLmNkY2xrID0gMzA3MjAwLCAuZGl2aWRlciA9IDIsIC5yYXRpbyA9IDMy
IH0sCisJeyAucmVmY2xrID0gMTkyMDAsIC5jZGNsayA9IDU1NjgwMCwgLmRpdmlkZXIgPSAyLCAu
cmF0aW8gPSA1OCB9LAorCXsgLnJlZmNsayA9IDE5MjAwLCAuY2RjbGsgPSA2NTI4MDAsIC5kaXZp
ZGVyID0gMiwgLnJhdGlvID0gNjggfSwKKworCXsgLnJlZmNsayA9IDI0MDAwLCAuY2RjbGsgPSAz
MTIwMDAsIC5kaXZpZGVyID0gMiwgLnJhdGlvID0gMjYgfSwKKwl7IC5yZWZjbGsgPSAyNDAwMCwg
LmNkY2xrID0gNTUyMDAwLCAuZGl2aWRlciA9IDIsIC5yYXRpbyA9IDQ2IH0sCisJeyAucmVmY2xr
ID0gMjQ0MDAsIC5jZGNsayA9IDY0ODAwMCwgLmRpdmlkZXIgPSAyLCAucmF0aW8gPSA1NCB9LAor
CisJeyAucmVmY2xrID0gMzg0MDAsIC5jZGNsayA9IDMwNzIwMCwgLmRpdmlkZXIgPSAyLCAucmF0
aW8gPSAxNiB9LAorCXsgLnJlZmNsayA9IDM4NDAwLCAuY2RjbGsgPSA1NTY4MDAsIC5kaXZpZGVy
ID0gMiwgLnJhdGlvID0gMjkgfSwKKwl7IC5yZWZjbGsgPSAzODQwMCwgLmNkY2xrID0gNjUyODAw
LCAuZGl2aWRlciA9IDIsIC5yYXRpbyA9IDM0IH0sCisJe30KK307CisKIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgaW50ZWxfY2RjbGtfdmFscyBhZGxwX2NkY2xrX3RhYmxlW10gPSB7CiAJeyAucmVmY2xr
ID0gMTkyMDAsIC5jZGNsayA9IDE3MjgwMCwgLmRpdmlkZXIgPSAzLCAucmF0aW8gPSAyNyB9LAog
CXsgLnJlZmNsayA9IDE5MjAwLCAuY2RjbGsgPSAxOTIwMDAsIC5kaXZpZGVyID0gMiwgLnJhdGlv
ID0gMjAgfSwKQEAgLTI4MDEsNyArMjgxNiwxMSBAQCB2b2lkIGludGVsX2luaXRfY2RjbGtfaG9v
a3Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQlkZXZfcHJpdi0+ZGlzcGxh
eS5id19jYWxjX21pbl9jZGNsayA9IHNrbF9id19jYWxjX21pbl9jZGNsazsKIAkJZGV2X3ByaXYt
PmRpc3BsYXkubW9kZXNldF9jYWxjX2NkY2xrID0gYnh0X21vZGVzZXRfY2FsY19jZGNsazsKIAkJ
ZGV2X3ByaXYtPmRpc3BsYXkuY2FsY192b2x0YWdlX2xldmVsID0gdGdsX2NhbGNfdm9sdGFnZV9s
ZXZlbDsKLQkJZGV2X3ByaXYtPmNkY2xrLnRhYmxlID0gYWRscF9jZGNsa190YWJsZTsKKwkJLyog
V2FfMjIwMTEzMjAzMTY6YWRscFthMF0gKi8KKwkJaWYgKElTX0FETFBfRElTUExBWV9TVEVQKGRl
dl9wcml2LCBTVEVQX0EwLCBTVEVQX0EwKSkKKwkJCWRldl9wcml2LT5jZGNsay50YWJsZSA9IGFk
bHBfYV9zdGVwX2NkY2xrX3RhYmxlOworCQllbHNlCisJCQlkZXZfcHJpdi0+Y2RjbGsudGFibGUg
PSBhZGxwX2NkY2xrX3RhYmxlOwogCX0gZWxzZSBpZiAoSVNfUk9DS0VUTEFLRShkZXZfcHJpdikp
IHsKIAkJZGV2X3ByaXYtPmRpc3BsYXkuc2V0X2NkY2xrID0gYnh0X3NldF9jZGNsazsKIAkJZGV2
X3ByaXYtPmRpc3BsYXkuYndfY2FsY19taW5fY2RjbGsgPSBza2xfYndfY2FsY19taW5fY2RjbGs7
Ci0tIAoyLjI1LjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
