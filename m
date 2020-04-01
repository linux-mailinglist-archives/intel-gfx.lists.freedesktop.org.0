Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9363B19AB7C
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 14:17:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6823F6E931;
	Wed,  1 Apr 2020 12:17:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24E976E92F
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 12:16:59 +0000 (UTC)
IronPort-SDR: Co2GKS4RI4Iwhv6/eYYBdY+qPUorXh2GGVoAwga4XFP2vZ5+UleBTApPr/ZuhO7VykMO/A78+j
 BJ6vrXuNMNew==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 05:16:59 -0700
IronPort-SDR: K1cXyE7WbLKQsc5krg1hKy3BL57vj1NZKgKtFEezVglIeflwezfsYMkYnEQeg0BbitFJmh9p9S
 f6PdXN8I8UUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,331,1580803200"; d="scan'208";a="422697497"
Received: from unknown (HELO jeevan-desktop.iind.intel.com) ([10.223.74.85])
 by orsmga005.jf.intel.com with ESMTP; 01 Apr 2020 05:16:57 -0700
From: Jeevan B <jeevan.b@intel.com>
To: uma.shankar@intel.com
Date: Wed,  1 Apr 2020 17:42:25 +0530
Message-Id: <1585743148-31205-2-git-send-email-jeevan.b@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585743148-31205-1-git-send-email-jeevan.b@intel.com>
References: <1585743148-31205-1-git-send-email-jeevan.b@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: utilize subconnector property for
 DP
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
Cc: Jeevan B <jeevan.b@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2UgRFAtc3BlY2lmaWMgaW5mb3JtYXRpb24gaXMgc3RvcmVkIGluIGRyaXZlcidzIHN0cnVj
dHVyZXMsIGV2ZXJ5CmRyaXZlciBuZWVkcyB0byBpbXBsZW1lbnQgc3ViY29ubmVjdG9yIHByb3Bl
cnR5IGJ5IGl0c2VsZi4KCnYyOiB1cGRhdGVzIHRvIG1hdGNoIHByZXZpb3VzIGNvbW1pdCBjaGFu
Z2VzCgpSZXZpZXdlZC1ieTogRW1pbCBWZWxpa292IDxlbWlsLnZlbGlrb3ZAY29sbGFib3JhLmNv
bT4KVGVzdGVkLWJ5OiBPbGVnIFZhc2lsZXYgPG9sZWcudmFzaWxldkBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IE9sZWcgVmFzaWxldiA8b2xlZy52YXNpbGV2QGludGVsLmNvbT4KQ2M6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnClNpZ25lZC1vZmYtYnk6IEplZXZhbiBCIDxqZWV2YW4uYkBp
bnRlbC5jb20+Ckxpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9t
c2dpZC8yMDE5MDgyOTExNDg1NC4xNTM5LTQtb2xlZy52YXNpbGV2QGludGVsLmNvbQotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDggKysrKysrKysKIDEgZmls
ZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMKaW5kZXggMmU3MTVlNi4uYzJjOWVkMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYwpAQCAtNjE0MCw2ICs2MTQwLDExIEBAIGludGVsX2RwX2RldGVjdChz
dHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAogCSAqLwogCWludGVsX2Rpc3BsYXlfcG93
ZXJfZmx1c2hfd29yayhkZXZfcHJpdik7CiAKKwlpZiAoIWludGVsX2RwX2lzX2VkcChpbnRlbF9k
cCkpCisJCWRybV9kcF9zZXRfc3ViY29ubmVjdG9yX3Byb3BlcnR5KGNvbm5lY3RvciwKKwkJCQkJ
CSBzdGF0dXMsCisJCQkJCQkgaW50ZWxfZHAtPmRwY2QsCisJCQkJCQkgaW50ZWxfZHAtPmRvd25z
dHJlYW1fcG9ydHMpOwogCXJldHVybiBzdGF0dXM7CiB9CiAKQEAgLTcxOTIsNiArNzE5Nyw5IEBA
IGludGVsX2RwX2FkZF9wcm9wZXJ0aWVzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIHN0cnVj
dCBkcm1fY29ubmVjdG9yICpjb25uZWN0CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2ID0gdG9faTkxNShjb25uZWN0b3ItPmRldik7CiAJZW51bSBwb3J0IHBvcnQgPSBkcF90b19k
aWdfcG9ydChpbnRlbF9kcCktPmJhc2UucG9ydDsKIAorCWlmICghaW50ZWxfZHBfaXNfZWRwKGlu
dGVsX2RwKSkKKwkJZHJtX21vZGVfYWRkX2RwX3N1YmNvbm5lY3Rvcl9wcm9wZXJ0eShjb25uZWN0
b3IpOworCiAJaWYgKCFJU19HNFgoZGV2X3ByaXYpICYmIHBvcnQgIT0gUE9SVF9BKQogCQlpbnRl
bF9hdHRhY2hfZm9yY2VfYXVkaW9fcHJvcGVydHkoY29ubmVjdG9yKTsKIAotLSAKMi43LjQKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
