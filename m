Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C95C340F
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 14:18:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DB076E629;
	Tue,  1 Oct 2019 12:18:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 554C56E629
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 12:18:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 05:18:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="203215441"
Received: from akaras-dev.fi.intel.com ([10.237.72.61])
 by orsmga002.jf.intel.com with ESMTP; 01 Oct 2019 05:18:18 -0700
From: Anna Karas <anna.karas@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Oct 2019 15:17:45 +0300
Message-Id: <20191001121745.27295-1-anna.karas@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: Describe structure members in
 documentation
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIG1pc3NpbmcgZGVzY3JpcHRpb25zIG9mIGk5MTVfcGVyZl9zdHJlYW0gc3RydWN0dXJlIG1l
bWJlcnMKdG8gZG9jdW1lbnRhdGlvbi4KCkNjOiBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgPHVtZXNo
Lm5lcmxpZ2UucmFtYXBwYUBpbnRlbC5jb20+CkNjOiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVs
LmcubGFuZHdlcmxpbkBpbnRlbC5jb20+CkNjOiBSb2JlcnQgQnJhZ2cgPHJvYmVydEBzaXhieW5p
bmUub3JnPgpTaWduZWQtb2ZmLWJ5OiBBbm5hIEthcmFzIDxhbm5hLmthcmFzQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIHwgMjkgKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmgKaW5kZXggMzM3ZDgzMDY0MTZhLi5lMjY5YzkyZjIyN2YgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaApAQCAtMTEzMCwxNCArMTEzMCw0MyBAQCBzdHJ1Y3QgaTkxNV9wZXJm
X3N0cmVhbSB7CiAJICogQHBpbm5lZF9jdHg6IFRoZSBPQSBjb250ZXh0IHNwZWNpZmljIGluZm9y
bWF0aW9uLgogCSAqLwogCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpwaW5uZWRfY3R4OworCisJLyoq
CisJICogQHNwZWNpZmljX2N0eF9pZDogVGhlIGlkIG9mIHRoZSBzcGVjaWZpYyBjb250ZXh0Lgor
CSAqLwogCXUzMiBzcGVjaWZpY19jdHhfaWQ7CisKKwkvKioKKwkgKiBAc3BlY2lmaWNfY3R4X2lk
X21hc2s6IFRoZSBtYXNrIHVzZWQgdG8gbWFza2luZyBzcGVjaWZpY19jdHhfaWQgYml0cy4KKwkg
Ki8KIAl1MzIgc3BlY2lmaWNfY3R4X2lkX21hc2s7CiAKKwkvKioKKwkgKiBAcG9sbF9jaGVja190
aW1lcjogSGlnaCByZXNvbHV0aW9uIHRpbWVyIHRoYXQgd2lsbCBwZXJpb2RpY2FsbHkKKwkgKiBj
aGVjayBmb3IgZGF0YSBpbiB0aGUgY2lyY3VsYXIgT0EgYnVmZmVyIGZvciBub3RpZnlpbmcgdXNl
cnNwYWNlCisJICogKGUuZy4gZHVyaW5nIGEgcmVhZCgpIG9yIHBvbGwoKSkuCisJICovCiAJc3Ry
dWN0IGhydGltZXIgcG9sbF9jaGVja190aW1lcjsKKworCS8qKgorCSAqIEBwb2xsX3dxOiBUaGUg
d2FpdCBxdWV1ZSB0aGF0IGhydGltZXIgY2FsbGJhY2sgd2FrZXMgd2hlbiBpdAorCSAqIHNlZXMg
ZGF0YSByZWFkeSB0byByZWFkIGluIHRoZSBjaXJjdWxhciBPQSBidWZmZXIuCisJICovCiAJd2Fp
dF9xdWV1ZV9oZWFkX3QgcG9sbF93cTsKKworCS8qKgorCSAqIEBwb2xsaW46IFdoZXRoZXIgdGhl
cmUgaXMgZGF0YSBhdmFpbGFibGUgdG8gcmVhZC4KKwkgKi8KIAlib29sIHBvbGxpbjsKIAorCS8q
KgorCSAqIEBwZXJpb2RpYzogV2hldGhlciBwZXJpb2RpYyBzYW1wbGluZyBpcyBjdXJyZW50bHkg
ZW5hYmxlZC4KKwkgKi8KIAlib29sIHBlcmlvZGljOworCisJLyoqCisJICogQHBlcmlvZF9leHBv
bmVudDogVGhlIE9BIHVuaXQgc2FtcGxpbmcgZnJlcXVlbmN5IGlzIGRlcml2ZWQgZnJvbSB0aGlz
LgorCSAqLwogCWludCBwZXJpb2RfZXhwb25lbnQ7CiAKIAkvKioKLS0gCjIuMTkuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
