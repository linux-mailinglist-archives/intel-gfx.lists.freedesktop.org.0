Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B46A9D7CF
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 22:55:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 805326E30F;
	Mon, 26 Aug 2019 20:55:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B9FB6E30B
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 20:55:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 13:55:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="170977915"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.9.29])
 by orsmga007.jf.intel.com with ESMTP; 26 Aug 2019 13:55:08 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2019 13:54:59 -0700
Message-Id: <20190826205459.29447-8-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190826205459.29447-1-lucas.demarchi@intel.com>
References: <20190826205459.29447-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 8/8] drm/i915/tgl/perf: use the same oa ctx_id
 format as icl
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KCkNvbXBhcmVk
IHRvIEljZWxha2UsIFRpZ2VybGFrZSdzIE1BWF9DT05URVhUX0hXX0lEIGlzIHNtYWxsZXIgYnkg
b25lLCBidXQKc2luY2Ugd2UganVzdCB1c2UgdGhlIHVwcGVyIDMyIGJpdHMgb2YgdGhlIGxyY19k
ZXNjLCBpdCdzIGd1YXJhbnRlZWQgT0EKd2lsbCB1c2UgdGhlIGNvcnJlY3Qgb25lLgoKQ2M6IExp
b25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClJldmlld2Vk
LWJ5OiBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgPHVtZXNoLm5lcmxpZ2UucmFtYXBwYUBpbnRlbC5j
b20+Ckxpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8y
MDE5MDgyMzA4MjA1NS41OTkyLTE5LWx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbQotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BlcmYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCmluZGV4
IGU0MmI4NjgyN2Q2Yi4uMmM5ZjQ2ZTEyNjIyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BlcmYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwpA
QCAtMTI5OSw3ICsxMjk5LDggQEAgc3RhdGljIGludCBvYV9nZXRfcmVuZGVyX2N0eF9pZChzdHJ1
Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQogCQl9CiAJCWJyZWFrOwogCi0JY2FzZSAxMTog
eworCWNhc2UgMTE6CisJY2FzZSAxMjogewogCQlzdHJlYW0tPnNwZWNpZmljX2N0eF9pZF9tYXNr
ID0KIAkJCSgoMVUgPDwgR0VOMTFfU1dfQ1RYX0lEX1dJRFRIKSAtIDEpIDw8IChHRU4xMV9TV19D
VFhfSURfU0hJRlQgLSAzMikgfAogCQkJKCgxVSA8PCBHRU4xMV9FTkdJTkVfSU5TVEFOQ0VfV0lE
VEgpIC0gMSkgPDwgKEdFTjExX0VOR0lORV9JTlNUQU5DRV9TSElGVCAtIDMyKSB8Ci0tIAoyLjIx
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
