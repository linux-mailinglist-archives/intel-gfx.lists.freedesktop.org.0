Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8F137585C
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 18:19:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77A536ECCB;
	Thu,  6 May 2021 16:19:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BD5C6ECCB
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 May 2021 16:19:48 +0000 (UTC)
IronPort-SDR: qm9b9qyZhOre9oOtiIdsRjtloy4VPy06Tz1DYrFBqIPxbkNf7vLceNBzST3EKYeu9snWKl+AP9
 xNm2j4RUtaAA==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="195395947"
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="195395947"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 09:19:48 -0700
IronPort-SDR: tkNIBJJHa2bwjdL2zt/rxX88Uq6KMTGjAKRjyHW3qVW1YTFz1diOYBhdiPyWXbQJFjGaLweXit
 nJnYNy2ge4yw==
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="407072205"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 09:19:46 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 May 2021 19:19:27 +0300
Message-Id: <20210506161930.309688-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210506161930.309688-1-imre.deak@intel.com>
References: <20210506161930.309688-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 07/10] drm/i915/adl_p: Add stride restriction
 when using DPT
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpBbGRl
cmxha2UtUCBoYXZlIGEgbmV3IHN0cmlkZSByZXN0cmljdGlvbiB3aGVuIHVzaW5nIERQVCBhbmQg
aXQgaXMgdXNlZApieSBub24gbGluZWFyIGZyYW1lYnVmZmVycy4gU3RyaWRlIG5lZWRzIHRvIGJl
IGEgcG93ZXIgb2YgdHdvIHRvIHRha2UKZnVsbCBEUFQgcm93cywgYnV0IHN0cmlkZSBpcyBhIHBh
cmFtZXRlciBzZXQgYnkgdXNlcnNwYWNlLgoKV2hhdCB3ZSBjb3VsZCBkbyBpcyB1c2UgYSBmYWtl
IHN0cmlkZSB3aGVuIGRvaW5nIERQVCBhbGxvY2F0aW9uIHNvCkhXIHJlcXVpcmVtZW50cyBhcmUg
bWV0IGFuZCB1c2Vyc3BhY2UgZG9uJ3QgbmVlZCB0byBiZSBjaGFuZ2VkIHRvCm1ldCB0aGlzIHBv
d2VyIG9mIHR3byByZXN0cmljdGlvbnMgYnV0IHRoaXMgY2hhbmdlIHdpbGwgdGFrZSBhIHdoaWxl
CnRvIGJlIGltcGxlbWVudGVkIHNvIGZvciBub3cgYWRkaW5nIHRoaXMgcmVzdHJpY3Rpb24gaW4g
ZHJpdmVyIHRvCnJlamVjdCBhdG9taWMgY29tbWl0cyB0aGF0IHdvdWxkIGNhdXNlIHZpc3VhbCBj
b3JydXB0aW9ucy4KCkJTcGVjOiA1MzM5MwpBY2tlZC1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5k
LnJvcGVyQGludGVsLmNvbT4KQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5j
b20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpD
YzogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+ClNp
Z25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA5ICsrKysrKysrKwog
MSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggMjkyMzk2MDU4ZTc1ZC4uNzBhYzE5Nzc0NmIx
ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAg
LTExNTY2LDYgKzExNTY2LDE1IEBAIHN0YXRpYyBpbnQgaW50ZWxfZnJhbWVidWZmZXJfaW5pdChz
dHJ1Y3QgaW50ZWxfZnJhbWVidWZmZXIgKmludGVsX2ZiLAogCQkJfQogCQl9CiAKKwkJaWYgKElT
X0FMREVSTEFLRV9QKGRldl9wcml2KSAmJgorCQkgICAgbW9kZV9jbWQtPm1vZGlmaWVyW2ldICE9
IERSTV9GT1JNQVRfTU9EX0xJTkVBUiAmJgorCQkgICAgIWlzX3Bvd2VyX29mXzIobW9kZV9jbWQt
PnBpdGNoZXNbaV0pKSB7CisJCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwKKwkJCQkgICAg
InBsYW5lICVkIHBpdGNoICglZCkgbXVzdCBiZSBwb3dlciBvZiB0d28gZm9yIHRpbGVkIGJ1ZmZl
cnNcbiIsCisJCQkJICAgIGksIG1vZGVfY21kLT5waXRjaGVzW2ldKTsKKwkJCWdvdG8gZXJyOwor
CQl9CisKIAkJZmItPm9ialtpXSA9ICZvYmotPmJhc2U7CiAJfQogCi0tIAoyLjI3LjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
