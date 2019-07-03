Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5411F5E2DF
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 13:37:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 453136E11F;
	Wed,  3 Jul 2019 11:37:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DAD189B22
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 11:37:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 04:37:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="164320053"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga008.fm.intel.com with ESMTP; 03 Jul 2019 04:36:59 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x63Baw3d004878; Wed, 3 Jul 2019 12:36:58 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 11:36:39 +0000
Message-Id: <20190703113640.31100-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Upgrade to GuC 33.0.0
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TmV3IEd1QyBmaXJtd2FyZSBpcyBhdmFpbGFibGUuIExldCdzIHVzZSBpdC4KClNpZ25lZC1vZmYt
Ynk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgpDYzogRGFu
aWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfZncuYyAgIHwgMjAgKysrKysrKysrKy0t
LS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19md2lmLmggfCAgNyArLS0t
LS0tCiAyIGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19mdy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2Z3LmMKaW5kZXggOTcwZjM5ZWYyNDhiLi5kYjFlMGRh
Y2E3ZGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19mdy5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19mdy5jCkBAIC0zOCwzNyArMzgsMzcg
QEAKIAlfX3N0cmluZ2lmeShLRVkjI19HVUNfRldfUEFUQ0gpICIuYmluIgogCiAjZGVmaW5lIFNL
TF9HVUNfRldfUFJFRklYIHNrbAotI2RlZmluZSBTS0xfR1VDX0ZXX01BSk9SIDMyCisjZGVmaW5l
IFNLTF9HVUNfRldfTUFKT1IgMzMKICNkZWZpbmUgU0tMX0dVQ19GV19NSU5PUiAwCi0jZGVmaW5l
IFNLTF9HVUNfRldfUEFUQ0ggMworI2RlZmluZSBTS0xfR1VDX0ZXX1BBVENIIDAKICNkZWZpbmUg
U0tMX0dVQ19GSVJNV0FSRV9QQVRIIF9fTUFLRV9HVUNfRldfUEFUSChTS0wpCiBNT0RVTEVfRklS
TVdBUkUoU0tMX0dVQ19GSVJNV0FSRV9QQVRIKTsKIAogI2RlZmluZSBCWFRfR1VDX0ZXX1BSRUZJ
WCBieHQKLSNkZWZpbmUgQlhUX0dVQ19GV19NQUpPUiAzMgorI2RlZmluZSBCWFRfR1VDX0ZXX01B
Sk9SIDMzCiAjZGVmaW5lIEJYVF9HVUNfRldfTUlOT1IgMAotI2RlZmluZSBCWFRfR1VDX0ZXX1BB
VENIIDMKKyNkZWZpbmUgQlhUX0dVQ19GV19QQVRDSCAwCiAjZGVmaW5lIEJYVF9HVUNfRklSTVdB
UkVfUEFUSCBfX01BS0VfR1VDX0ZXX1BBVEgoQlhUKQogTU9EVUxFX0ZJUk1XQVJFKEJYVF9HVUNf
RklSTVdBUkVfUEFUSCk7CiAKICNkZWZpbmUgS0JMX0dVQ19GV19QUkVGSVgga2JsCi0jZGVmaW5l
IEtCTF9HVUNfRldfTUFKT1IgMzIKKyNkZWZpbmUgS0JMX0dVQ19GV19NQUpPUiAzMwogI2RlZmlu
ZSBLQkxfR1VDX0ZXX01JTk9SIDAKLSNkZWZpbmUgS0JMX0dVQ19GV19QQVRDSCAzCisjZGVmaW5l
IEtCTF9HVUNfRldfUEFUQ0ggMAogI2RlZmluZSBLQkxfR1VDX0ZJUk1XQVJFX1BBVEggX19NQUtF
X0dVQ19GV19QQVRIKEtCTCkKIE1PRFVMRV9GSVJNV0FSRShLQkxfR1VDX0ZJUk1XQVJFX1BBVEgp
OwogCiAjZGVmaW5lIEdMS19HVUNfRldfUFJFRklYIGdsawotI2RlZmluZSBHTEtfR1VDX0ZXX01B
Sk9SIDMyCisjZGVmaW5lIEdMS19HVUNfRldfTUFKT1IgMzMKICNkZWZpbmUgR0xLX0dVQ19GV19N
SU5PUiAwCi0jZGVmaW5lIEdMS19HVUNfRldfUEFUQ0ggMworI2RlZmluZSBHTEtfR1VDX0ZXX1BB
VENIIDAKICNkZWZpbmUgR0xLX0dVQ19GSVJNV0FSRV9QQVRIIF9fTUFLRV9HVUNfRldfUEFUSChH
TEspCiBNT0RVTEVfRklSTVdBUkUoR0xLX0dVQ19GSVJNV0FSRV9QQVRIKTsKIAogI2RlZmluZSBJ
Q0xfR1VDX0ZXX1BSRUZJWCBpY2wKLSNkZWZpbmUgSUNMX0dVQ19GV19NQUpPUiAzMgorI2RlZmlu
ZSBJQ0xfR1VDX0ZXX01BSk9SIDMzCiAjZGVmaW5lIElDTF9HVUNfRldfTUlOT1IgMAotI2RlZmlu
ZSBJQ0xfR1VDX0ZXX1BBVENIIDMKKyNkZWZpbmUgSUNMX0dVQ19GV19QQVRDSCAwCiAjZGVmaW5l
IElDTF9HVUNfRklSTVdBUkVfUEFUSCBfX01BS0VfR1VDX0ZXX1BBVEgoSUNMKQogTU9EVUxFX0ZJ
Uk1XQVJFKElDTF9HVUNfRklSTVdBUkVfUEFUSCk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2d1Y19md2lmLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9n
dWNfZndpZi5oCmluZGV4IDkyYmQ3ZmZiNWIxMC4uMzBjY2EzYTI5MzIzIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfZndpZi5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2d1Y19md2lmLmgKQEAgLTQzLDEzICs0Myw4IEBACiAjZGVmaW5lIEdVQ19W
SURFT19FTkdJTkUyCQk0CiAjZGVmaW5lIEdVQ19NQVhfRU5HSU5FU19OVU0JCShHVUNfVklERU9f
RU5HSU5FMiArIDEpCiAKLS8qCi0gKiBYWFg6IEJld2FyZSB0aGF0IEdlbjkgZmlybXdhcmUgMzIu
eCB1c2VzIHdyb25nIGRlZmluaXRpb24gZm9yCi0gKiBHVUNfTUFYX0lOU1RBTkNFU19QRVJfQ0xB
U1MgKDEpIGJ1dCB0aGlzIGlzIGhhcm1sZXNzIGZvciB1cyBub3cKLSAqIGFzIHdlIGFyZSBub3Qg
ZW5hYmxpbmcgR3VDIHN1Ym1pc3Npb24gbW9kZSB3aGVyZSB0aGlzIHdpbGwgYmUgdXNlZAotICov
CiAjZGVmaW5lIEdVQ19NQVhfRU5HSU5FX0NMQVNTRVMJCTUKLSNkZWZpbmUgR1VDX01BWF9JTlNU
QU5DRVNfUEVSX0NMQVNTCTQKKyNkZWZpbmUgR1VDX01BWF9JTlNUQU5DRVNfUEVSX0NMQVNTCTE2
CiAKICNkZWZpbmUgR1VDX0RPT1JCRUxMX0lOVkFMSUQJCTI1NgogCi0tIAoyLjE5LjIKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
