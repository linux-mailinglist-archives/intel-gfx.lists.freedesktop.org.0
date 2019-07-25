Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7644174F04
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 15:19:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF5A16E754;
	Thu, 25 Jul 2019 13:19:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D2996E754
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 13:19:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 06:19:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,306,1559545200"; d="scan'208";a="164173903"
Received: from ovasilev-desk1.fi.intel.com ([10.237.72.57])
 by orsmga008.jf.intel.com with ESMTP; 25 Jul 2019 06:18:59 -0700
From: Oleg Vasilev <oleg.vasilev@intel.com>
To: arek@hiler.eu,
	martin.peres@free.fr
Date: Thu, 25 Jul 2019 16:18:51 +0300
Message-Id: <20190725131852.23967-4-oleg.vasilev@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190725131852.23967-1-oleg.vasilev@intel.com>
References: <20190725131852.23967-1-oleg.vasilev@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 4/5] drm/i915: utilize subconnector property
 for DP
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2UgRFAtc3BlY2lmaWMgaW5mb3JtYXRpb24gaXMgc3RvcmVkIGluIGRyaXZlcidzIHN0cnVj
dHVyZXMsIGV2ZXJ5CmRyaXZlciBuZWVkcyB0byBpbXBsZW1lbnQgc3ViY29ubmVjdG9yIHByb3Bl
cnR5IGJ5IGl0c2VsZi4KClNpZ25lZC1vZmYtYnk6IE9sZWcgVmFzaWxldiA8b2xlZy52YXNpbGV2
QGludGVsLmNvbT4KQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKCnYyOiB1cGRh
dGVzIHRvIG1hdGNoIHByZXZpb3VzIGNvbW1pdCBjaGFuZ2VzClNpZ25lZC1vZmYtYnk6IE9sZWcg
VmFzaWxldiA8b2xlZy52YXNpbGV2QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMgfCA2ICsrKysrKwogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRleCA2ODg4
YzhkZjA0ZTUuLmM5NDkyZWM2NmJiNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYwpAQCAtNTQzNiw2ICs1NDM2LDEwIEBAIGludGVsX2RwX2RldGVjdChzdHJ1Y3QgZHJt
X2Nvbm5lY3RvciAqY29ubmVjdG9yLAogCWlmIChzdGF0dXMgIT0gY29ubmVjdG9yX3N0YXR1c19j
b25uZWN0ZWQgJiYgIWludGVsX2RwLT5pc19tc3QpCiAJCWludGVsX2RwX3Vuc2V0X2VkaWQoaW50
ZWxfZHApOwogCisJZHJtX2RwX3NldF9zdWJjb25uZWN0b3JfcHJvcGVydHkoY29ubmVjdG9yLAor
CQkJCQkgc3RhdHVzLAorCQkJCQkgaW50ZWxfZHAtPmRwY2QsCisJCQkJCSBpbnRlbF9kcC0+ZG93
bnN0cmVhbV9wb3J0cyk7CiAJcmV0dXJuIHN0YXR1czsKIH0KIApAQCAtNjMzMiw2ICs2MzM2LDgg
QEAgaW50ZWxfZHBfYWRkX3Byb3BlcnRpZXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgc3Ry
dWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3QKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSB0b19pOTE1KGNvbm5lY3Rvci0+ZGV2KTsKIAllbnVtIHBvcnQgcG9ydCA9IGRwX3Rv
X2RpZ19wb3J0KGludGVsX2RwKS0+YmFzZS5wb3J0OwogCisJZHJtX21vZGVfYWRkX2RwX3N1YmNv
bm5lY3Rvcl9wcm9wZXJ0eShjb25uZWN0b3IpOworCiAJaWYgKCFJU19HNFgoZGV2X3ByaXYpICYm
IHBvcnQgIT0gUE9SVF9BKQogCQlpbnRlbF9hdHRhY2hfZm9yY2VfYXVkaW9fcHJvcGVydHkoY29u
bmVjdG9yKTsKIAotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
