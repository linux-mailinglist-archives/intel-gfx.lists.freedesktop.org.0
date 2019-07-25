Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D2B750AF
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 16:13:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D636E6E6E2;
	Thu, 25 Jul 2019 14:13:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BE056E6E2
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 14:13:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 07:13:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="177980543"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Jul 2019 07:13:11 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6PEDAq1009278; Thu, 25 Jul 2019 15:13:10 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jul 2019 14:13:06 +0000
Message-Id: <20190725141308.24660-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915: Fix GuC documentation links
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

V2UgbW92ZWQgR3VDIHJlbGF0ZWQgZmlsZXMgdG8gbmV3IGxvY2F0aW9uIGJ1dCB3ZSBtaXNzZWQg
dG8gdXBkYXRlCi5yc3QgZmlsZSB3aXRoIGxpbmtzLgoKUmVmZXJlbmNlczogY29tbWl0IDBmMjYx
YjI0MWQ5YyAoImRybS9pOTE1L3VjOiBtb3ZlIEd1QyBhbmQgSHVDIGZpbGVzIHVuZGVyIGd0L3Vj
LyIpClNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50
ZWwuY29tPgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlv
QGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpS
ZXZpZXdlZC1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlv
QGludGVsLmNvbT4KLS0tCiBEb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdCB8IDEwICsrKysrLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QgYi9Eb2N1bWVudGF0aW9uL2dwdS9p
OTE1LnJzdAppbmRleCBjMzhlZjBkZGE2MDUuLmMyMTczZDEyMDQ5MiAxMDA2NDQKLS0tIGEvRG9j
dW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QKKysrIGIvRG9jdW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QK
QEAgLTQzMywyOCArNDMzLDI4IEBAIEd1QwogR3VDLXNwZWNpZmljIGZpcm13YXJlIGxvYWRlcgog
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogCi0uLiBrZXJuZWwtZG9jOjogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2Z3LmMKKy4uIGtlcm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfZncuYwogICAgOmludGVybmFsOgogCiBHdUMtYmFzZWQg
Y29tbWFuZCBzdWJtaXNzaW9uCiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAKLS4uIGtl
cm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfc3VibWlzc2lvbi5jCisu
LiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1p
c3Npb24uYwogICAgOmRvYzogR3VDLWJhc2VkIGNvbW1hbmQgc3VibWlzc2lvbgogCi0uLiBrZXJu
ZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYworLi4g
a2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNz
aW9uLmMKICAgIDppbnRlcm5hbDoKIAogR3VDIEZpcm13YXJlIExheW91dAogLS0tLS0tLS0tLS0t
LS0tLS0tLQogCi0uLiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3Vj
X2Z3aWYuaAorLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X2d1Y19md2lmLmgKICAgIDpkb2M6IEd1QyBGaXJtd2FyZSBMYXlvdXQKIAogR3VDIEFkZHJlc3Mg
U3BhY2UKIC0tLS0tLS0tLS0tLS0tLS0tCiAKLS4uIGtlcm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9ndWMuYworLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX2d1Yy5jCiAgICA6ZG9jOiBHdUMgQWRkcmVzcyBTcGFjZQogCiBUcmFjaW5n
Ci0tIAoyLjE5LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
