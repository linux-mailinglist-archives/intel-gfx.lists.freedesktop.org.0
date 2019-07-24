Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 136AB735A0
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 19:34:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBF646E60E;
	Wed, 24 Jul 2019 17:34:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FDAD6E56E
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 17:34:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 10:34:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,303,1559545200"; d="scan'208";a="177716492"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Jul 2019 10:34:51 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6OHYoSE007518; Wed, 24 Jul 2019 18:34:50 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Jul 2019 17:34:43 +0000
Message-Id: <20190724173446.35188-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Fix GuC documentation links
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
QGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgot
LS0KIERvY3VtZW50YXRpb24vZ3B1L2k5MTUucnN0IHwgMTAgKysrKystLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2dwdS9pOTE1LnJzdCBiL0RvY3VtZW50YXRpb24vZ3B1L2k5MTUucnN0CmluZGV4
IGMzOGVmMGRkYTYwNS4uYzIxNzNkMTIwNDkyIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2dw
dS9pOTE1LnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdApAQCAtNDMzLDI4ICs0
MzMsMjggQEAgR3VDCiBHdUMtc3BlY2lmaWMgZmlybXdhcmUgbG9hZGVyCiAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCiAKLS4uIGtlcm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9ndWNfZncuYworLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX2d1Y19mdy5jCiAgICA6aW50ZXJuYWw6CiAKIEd1Qy1iYXNlZCBjb21tYW5kIHN1Ym1p
c3Npb24KIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIAotLi4ga2VybmVsLWRvYzo6IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19zdWJtaXNzaW9uLmMKKy4uIGtlcm5lbC1kb2M6
OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jCiAgICA6
ZG9jOiBHdUMtYmFzZWQgY29tbWFuZCBzdWJtaXNzaW9uCiAKLS4uIGtlcm5lbC1kb2M6OiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfc3VibWlzc2lvbi5jCisuLiBrZXJuZWwtZG9jOjog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYwogICAgOmlu
dGVybmFsOgogCiBHdUMgRmlybXdhcmUgTGF5b3V0CiAtLS0tLS0tLS0tLS0tLS0tLS0tCiAKLS4u
IGtlcm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfZndpZi5oCisuLiBr
ZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Z3aWYuaAog
ICAgOmRvYzogR3VDIEZpcm13YXJlIExheW91dAogCiBHdUMgQWRkcmVzcyBTcGFjZQogLS0tLS0t
LS0tLS0tLS0tLS0KIAotLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2d1Yy5jCisuLiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
Z3VjLmMKICAgIDpkb2M6IEd1QyBBZGRyZXNzIFNwYWNlCiAKIFRyYWNpbmcKLS0gCjIuMTkuMgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
