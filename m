Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C620E56E5
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 01:06:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01F6D6EBC1;
	Fri, 25 Oct 2019 23:06:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B51EA6EBC1
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 23:06:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 16:06:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,230,1569308400"; d="scan'208";a="282396801"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by orsmga001.jf.intel.com with ESMTP; 25 Oct 2019 16:06:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2019 16:06:18 -0700
Message-Id: <20191025230623.27829-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/5] DP AUX updates
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGZpcnN0IHBhdGNoIGhlcmUgaGFzIGFscmVhZHkgYmVlbiBzdWJtaXR0ZWQgYW5kIHJldmll
d2VkLCBidXQgaXMKc3RpbGwgd2FpdGluZyBvbiBDSSByZXN1bHRzIHRvIGJlIG1lcmdlZC4gIFRo
ZSBob3BlIGlzIHRoYXQgdGhlIGZpbmFsCnBhdGNoIGluIHRoaXMgc2VyaWVzIHdpbGwgc29sdmUg
dGhlIFRHTCBmb3JldmVyLWJ1c3kgQVVYIHRyYW5zYWN0aW9ucwpkZXNjcmliZWQgaW4gaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA1MTI4LgoKQ2M6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpDYzogTHVjYXMgRGUgTWFy
Y2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CgpNYXR0IFJvcGVyICg1KToKICBkcm0vaTkx
NS90Z2w6IEhhbmRsZSBBVVggaW50ZXJydXB0cyBmb3IgVEMgcG9ydHMKICBkcm0vaTkxNTogRHJv
cCB1bnVzZWQgQVVYIHJlZ2lzdGVyIG9mZnNldHMKICBkcm0vaTkxNTogQWRkIG1pc3NpbmcgQVVY
IGNoYW5uZWwgSCAmIEkgc3VwcG9ydAogIGRybS9pOTE1OiBQcm92aWRlIG1vcmUgaW5mb3JtYXRp
b24gb24gRFAgQVVYIGZhaWx1cmVzCiAgZHJtL2k5MTUvdGdsOiBBZGQgQVVYIEIgJiBDIHRvIERD
X09GRl9QT1dFUl9ET01BSU5TCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
aW9zLmMgICAgIHwgIDYgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyAgfCAzNiArKysrLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuaCAgfCAgMiArCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyLmMgICAgfCAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMgICAgICAgfCAgNyArKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3ZidF9kZWZzLmggfCAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jICAg
ICAgICAgICAgICAgfCAxMCArKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAg
ICAgICAgICAgICAgIHwgNDIgKysrLS0tLS0tLS0tLS0tLS0tLQogOCBmaWxlcyBjaGFuZ2VkLCA0
MCBpbnNlcnRpb25zKCspLCA2NyBkZWxldGlvbnMoLSkKCi0tIAoyLjIxLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
