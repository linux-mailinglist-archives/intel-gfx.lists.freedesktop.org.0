Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFAED751A
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 13:34:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7950D6E7B4;
	Tue, 15 Oct 2019 11:34:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 420216E7B2
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 11:34:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 04:34:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,299,1566889200"; d="scan'208";a="201729371"
Received: from tnguy72-mobl.ccr.corp.intel.com ([10.249.254.232])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Oct 2019 04:34:47 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191015083724.24390-1-abdiel.janulgue@linux.intel.com>
 <20191015083724.24390-4-abdiel.janulgue@linux.intel.com>
 <157113815409.22469.15481252246242687026@skylake-alporthouse-com>
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Message-ID: <1732c6ff-c55e-c1b4-2708-87c6ec95fd5d@linux.intel.com>
Date: Tue, 15 Oct 2019 14:34:45 +0300
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157113815409.22469.15481252246242687026@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 4/5] drm/i915: cpu-map based dumb buffers
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAxNS8xMC8yMDE5IDE0LjE1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gUXVvdGluZyBBYmRp
ZWwgSmFudWxndWUgKDIwMTktMTAtMTUgMDk6Mzc6MjMpCj4+ICtpbnQKPj4gK2k5MTVfZ2VtX21t
YXBfZHVtYihzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCj4+ICsgICAgICAgICAgICAgICAgIHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsCj4+ICsgICAgICAgICAgICAgICAgIHUzMiBoYW5kbGUsCj4+ICsg
ICAgICAgICAgICAgICAgIHU2NCAqb2Zmc2V0KQo+PiArewo+PiArICAgICAgIHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkZXYpOwo+PiArICAgICAgIGVudW0gaTkxNV9t
bWFwX3R5cGUgbW1hcF90eXBlID0gSEFTX01BUFBBQkxFX0FQRVJUVVJFKGk5MTUpID8KPj4gKyAg
ICAgICAgICAgICAgIEk5MTVfTU1BUF9UWVBFX0dUVCA6IEk5MTVfTU1BUF9UWVBFX1dDOwo+IAo+
IElzIHRoZXJlIGFueSByZWFzb24gdG8gcHJlZmVyIEdUVCBhdCBhbGw/Cj4gLUNocmlzCgpJJ20g
bm90IGF3YXJlIG9mIGFueS4gOi8gWWVhaCB0aGlzIGNvdWxkIGJlIGFsbCBDUFUgbW1hcHMKCj4g
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
