Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 469D4315544
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 18:41:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AD566E0EF;
	Tue,  9 Feb 2021 17:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DABBD6E0EF
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 17:41:15 +0000 (UTC)
IronPort-SDR: 3BnEkGT0pJzUMf3Rg3r98hgBcLmU1rtKhicaNgo9DLCG4yb1kJlkolnD4t+aWNjswaJRY4TZ5o
 ykBhYGNRMHng==
X-IronPort-AV: E=McAfee;i="6000,8403,9890"; a="243419229"
X-IronPort-AV: E=Sophos;i="5.81,165,1610438400"; d="scan'208";a="243419229"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 09:41:15 -0800
IronPort-SDR: 1YAsq1u5+Ayz1/kr+r22E5sN5o26TyK1Uc4F//IMur+Tx4ESS6ZSsYpT0lsNGjg/Dh4CCU1Pw+
 0w2wgg5v3yPQ==
X-IronPort-AV: E=Sophos;i="5.81,165,1610438400"; d="scan'208";a="578120905"
Received: from rmahmood-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.254.190.123])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 09:41:12 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Feb 2021 09:42:38 -0800
Message-Id: <20210209174238.153278-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Add DDR5 and LPDDR5 BW buddy
 page entries
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

U2V0IHRoZSByaWdodCBCVyBidWRkeSBwYWdlIG1hc2sgZm9yIG5ldyBtZW1vcnkgdHlwZXMuCgpC
U3BlYzogNDkyMTgKQ2M6IENsaW50IFRheWxvciA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+
CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpDYzogTHVjYXMgRGUg
TWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIHwgOCArKysrKysrKwogMSBmaWxl
IGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKaW5kZXggZTE3YjFjYTM1NmMzLi5mMDBjMTc1
MGZlYmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9wb3dlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9wb3dlci5jCkBAIC01MzE3LDE3ICs1MzE3LDI1IEBAIHN0cnVjdCBidWRkeV9wYWdlX21h
c2sgewogCiBzdGF0aWMgY29uc3Qgc3RydWN0IGJ1ZGR5X3BhZ2VfbWFzayB0Z2xfYnVkZHlfcGFn
ZV9tYXNrc1tdID0gewogCXsgLm51bV9jaGFubmVscyA9IDEsIC50eXBlID0gSU5URUxfRFJBTV9E
RFI0LCAgIC5wYWdlX21hc2sgPSAweEYgfSwKKwl7IC5udW1fY2hhbm5lbHMgPSAxLCAudHlwZSA9
IElOVEVMX0RSQU1fRERSNSwJLnBhZ2VfbWFzayA9IDB4RiB9LAogCXsgLm51bV9jaGFubmVscyA9
IDIsIC50eXBlID0gSU5URUxfRFJBTV9MUEREUjQsIC5wYWdlX21hc2sgPSAweDFDIH0sCisJeyAu
bnVtX2NoYW5uZWxzID0gMiwgLnR5cGUgPSBJTlRFTF9EUkFNX0xQRERSNSwgLnBhZ2VfbWFzayA9
IDB4MUMgfSwKIAl7IC5udW1fY2hhbm5lbHMgPSAyLCAudHlwZSA9IElOVEVMX0RSQU1fRERSNCwg
ICAucGFnZV9tYXNrID0gMHgxRiB9LAorCXsgLm51bV9jaGFubmVscyA9IDIsIC50eXBlID0gSU5U
RUxfRFJBTV9ERFI1LCAgIC5wYWdlX21hc2sgPSAweDFFIH0sCiAJeyAubnVtX2NoYW5uZWxzID0g
NCwgLnR5cGUgPSBJTlRFTF9EUkFNX0xQRERSNCwgLnBhZ2VfbWFzayA9IDB4MzggfSwKKwl7IC5u
dW1fY2hhbm5lbHMgPSA0LCAudHlwZSA9IElOVEVMX0RSQU1fTFBERFI1LCAucGFnZV9tYXNrID0g
MHgzOCB9LAogCXt9CiB9OwogCiBzdGF0aWMgY29uc3Qgc3RydWN0IGJ1ZGR5X3BhZ2VfbWFzayB3
YV8xNDA5NzY3MTA4X2J1ZGR5X3BhZ2VfbWFza3NbXSA9IHsKIAl7IC5udW1fY2hhbm5lbHMgPSAx
LCAudHlwZSA9IElOVEVMX0RSQU1fTFBERFI0LCAucGFnZV9tYXNrID0gMHgxIH0sCiAJeyAubnVt
X2NoYW5uZWxzID0gMSwgLnR5cGUgPSBJTlRFTF9EUkFNX0REUjQsICAgLnBhZ2VfbWFzayA9IDB4
MSB9LAorCXsgLm51bV9jaGFubmVscyA9IDEsIC50eXBlID0gSU5URUxfRFJBTV9ERFI1LCAgIC5w
YWdlX21hc2sgPSAweDEgfSwKKwl7IC5udW1fY2hhbm5lbHMgPSAxLCAudHlwZSA9IElOVEVMX0RS
QU1fTFBERFI1LCAucGFnZV9tYXNrID0gMHgxIH0sCiAJeyAubnVtX2NoYW5uZWxzID0gMiwgLnR5
cGUgPSBJTlRFTF9EUkFNX0xQRERSNCwgLnBhZ2VfbWFzayA9IDB4MyB9LAogCXsgLm51bV9jaGFu
bmVscyA9IDIsIC50eXBlID0gSU5URUxfRFJBTV9ERFI0LCAgIC5wYWdlX21hc2sgPSAweDMgfSwK
Kwl7IC5udW1fY2hhbm5lbHMgPSAyLCAudHlwZSA9IElOVEVMX0RSQU1fRERSNSwgICAucGFnZV9t
YXNrID0gMHgzIH0sCisJeyAubnVtX2NoYW5uZWxzID0gMiwgLnR5cGUgPSBJTlRFTF9EUkFNX0xQ
RERSNSwgLnBhZ2VfbWFzayA9IDB4MyB9LAogCXt9CiB9OwogCi0tIAoyLjMwLjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
