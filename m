Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 473A87C3ED
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 15:47:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1310F89BFC;
	Wed, 31 Jul 2019 13:47:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1887589BFC
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 13:47:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 06:47:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,330,1559545200"; d="scan'208";a="191245919"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 31 Jul 2019 06:47:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michal Marek <michal.lkml@markovi.net>, linux-kbuild@vger.kernel.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Wed, 31 Jul 2019 16:51:24 +0300
Message-ID: <87pnlqmhwj.fsf@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] better kbuild support for drivers spanning multiple
 directories?
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

CkhpIC0KClRoZSBkcm0vaTkxNSBbMV1bMl0gZHJpdmVyIGhhcyBncm93biBxdWl0ZSBiaWcgb3Zl
ciB0aGUgeWVhcnM6IDQwMCsKZmlsZXMgd2l0aCBhIHRvdGFsIHNsb2Njb3VudCBvZiAxNzVrIGxp
bmVzLiBBIGZsYXQgZGlyZWN0b3J5IHN0cnVjdHVyZQpqdXN0IHdhc24ndCBtYW5hZ2VhYmxlIGFu
eW1vcmUsIGFuZCB3ZSBvcHRlZCB0byBhZGQgc3ViZGlyZWN0b3JpZXMsCmRlc3BpdGUgdGhlIGdl
bmVyYWwgcmVjb21tZW5kYXRpb24gWzNdIG5vdCB0byBkbyB0aGlzLgoKTW9zdGx5LCBpdCB3b3Jr
cyBhbGwgcmlnaHQsIHdpdGggc29tZSBxdWlya3MuIEZvciBleGFtcGxlLCB0aGluZ3MgbGlrZQoK
CSQgbWFrZSBkcml2ZXJzL2dwdS9kcm0vaTkxNS88c3ViZGlyPi88ZmlsZT4ubwoKZG8gbm90IHdv
cmsgb3V0IG9mIHRoZSBib3g7IHdlIG5lZWQgdG8gYWRkIHN1YmRpciBNYWtlZmlsZXMgdG8gZG8g
dGhpbmdzCmxpa2U6CgoJc3ViZGlyLWNjZmxhZ3MteSArPSAtSSQoc3JjdHJlZSkvJChzcmMpLy4u
CgphbmQgaW5jbHVkZSB0aGVtIHVzaW5nIG9iai15ICs9IDxzdWJkaXI+LyBpbiB0aGUgdG9wIGxl
dmVsIE1ha2VmaWxlLgoKQnV0IHRoZSBtYWluIHByb2JsZW0gcmVhbGx5IGlzIGhhdmluZyB0byBo
YXZlIGEgdG9wIGxldmVsIE1ha2VmaWxlCnNwZWNpZnlpbmcgZXZlcnl0aGluZywgaW5zdGVhZCBv
ZiBiZWluZyBhYmxlIHRvIHJlY3Vyc2UgaW50bwpzdWJkaXJlY3RvcmlzIHdpdGgsIHNheSwgbGli
LXkgKz0gPHN1YmRpcj4vLCBhbmQgaGF2aW5nIHRoYXQgYnVpbGQgYSBsaWIKd2l0aGluIHRoZSBz
dWJkaXJlY3RvcnkgdGhhdCBnZXRzIGxpbmtlZCBpbnRvIHRoZSBwYXJlbnQgbGV2ZWwgbW9kdWxl
LgoKSXMgdGhlcmUgYSBiZXR0ZXIgd2F5PyBDb3VsZCB3ZSBoYXZlIGEgYmV0dGVyIHdheT8KCkJS
LApKYW5pLgoKClsxXSBkcml2ZXJzL2dwdS9kcm0vaTkxNQpbMl0gaHR0cHM6Ly9jZ2l0LmZyZWVk
ZXNrdG9wLm9yZy9kcm0vZHJtLXRpcC90cmVlL2RyaXZlcnMvZ3B1L2RybS9pOTE1ClszXSBEb2N1
bWVudGF0aW9uL2tidWlsZC9tb2R1bGVzLnJzdCBzZWN0aW9uIDQuMwoKCi0tIApKYW5pIE5pa3Vs
YSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
