Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE4682DCF
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 10:35:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 388F36E32C;
	Tue,  6 Aug 2019 08:35:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 214656E32C
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 08:35:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 01:35:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; d="scan'208";a="192613640"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.186])
 by fmsmga001.fm.intel.com with ESMTP; 06 Aug 2019 01:35:50 -0700
Date: Tue, 6 Aug 2019 11:35:49 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190806083549.GB30053@intel.intel>
References: <20190805221956.17277-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805221956.17277-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Cancel persistent contexts if
 !hangcheck
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

SGkgQ2hyaXMsCgo+ICtzdGF0aWMgdm9pZCBraWxsX2NvbnRleHQoc3RydWN0IGk5MTVfZ2VtX2Nv
bnRleHQgKmN0eCkKPiArewo+ICsJc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXNfaXRlciBpdDsKPiAr
CXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKPiArCWludGVsX2VuZ2luZV9tYXNrX3Qg
dG1wLCBhY3RpdmU7Cj4gKwlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7Cj4gKwo+ICsJaWYgKGk5
MTVfZ2VtX2NvbnRleHRfaXNfYmFubmVkKGN0eCkpCj4gKwkJcmV0dXJuOwoKanVzdCBhIHF1ZXN0
aW9uLCBpZiBhIGNvbnRleHQgaXMgImJhbm5lZCIsIGRvbid0IHdlIHdhbnQgdG8gY2hlY2sKb24g
dGhlIHJlcXVlc3RzIGFueXdheT8KCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX2hlYXJ0YmVhdC5jCgpoZWFydGJlYXQ/IEkgbGlrZSBpdCA6KQoKUmV2aWV3ZWQt
Ynk6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgoKVGhhbmtzLApBbmRpCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
