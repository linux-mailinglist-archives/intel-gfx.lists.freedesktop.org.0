Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FE0C1E86
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 11:58:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 017A26E22E;
	Mon, 30 Sep 2019 09:58:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2E5D6E22E
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 09:58:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 02:58:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,565,1559545200"; d="scan'208";a="215655071"
Received: from bkokkula-mobl1.ger.corp.intel.com (HELO [10.252.7.77])
 ([10.252.7.77])
 by fmsmga004.fm.intel.com with ESMTP; 30 Sep 2019 02:58:15 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190927173409.31175-1-matthew.auld@intel.com>
 <20190927173409.31175-11-matthew.auld@intel.com>
 <156961694798.1880.4203652934664083568@skylake-alporthouse-com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <d390ac14-25d3-8d9d-5bcf-52e722a787f7@intel.com>
Date: Mon, 30 Sep 2019 10:58:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <156961694798.1880.4203652934664083568@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 10/22] drm/i915/selftests: add write-dword
 test for LMEM
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
Cc: daniel.vetter@ffwll.ch
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjcvMDkvMjAxOSAyMTo0MiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTWF0dGhl
dyBBdWxkICgyMDE5LTA5LTI3IDE4OjMzOjU3KQo+PiArICAgICAgIGkgPSAwOwo+PiArICAgICAg
IGVuZ2luZXMgPSBpOTE1X2dlbV9jb250ZXh0X2xvY2tfZW5naW5lcyhjdHgpOwo+PiArICAgICAg
IGRvIHsKPj4gKyAgICAgICAgICAgICAgIHUzMiBybmcgPSBwcmFuZG9tX3UzMl9zdGF0ZSgmcHJu
Zyk7Cj4+ICsgICAgICAgICAgICAgICB1MzIgZHdvcmQgPSBvZmZzZXRfaW5fcGFnZShybmcpIC8g
NDsKPj4gKwo+PiArICAgICAgICAgICAgICAgY2UgPSBlbmdpbmVzLT5lbmdpbmVzW29yZGVyW2ld
ICUgZW5naW5lcy0+bnVtX2VuZ2luZXNdOwo+PiArICAgICAgICAgICAgICAgaSA9IChpICsgMSkg
JSAoY291bnQgKiBjb3VudCk7Cj4+ICsgICAgICAgICAgICAgICBpZiAoIWNlIHx8ICFpbnRlbF9l
bmdpbmVfY2FuX3N0b3JlX2R3b3JkKGNlLT5lbmdpbmUpKQo+PiArICAgICAgICAgICAgICAgICAg
ICAgICBjb250aW51ZTsKPj4gKwo+PiArICAgICAgICAgICAgICAgZXJyID0gaWd0X2dwdV93cml0
ZV9kdyhjZSwgdm1hLCBkd29yZCwgcm5nKTsKPj4gKyAgICAgICAgICAgICAgIGlmIChlcnIpCj4+
ICsgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+IAo+IERvIHlvdSBoYXZlIGEgdGVzdCB0
aGF0IGRvZXMKPiAJZHdvcmQsCj4gCTY0QiBvciBjYWNoZWxpbmUsCj4gCXBhZ2UKPiAJcmFuZG9t
IHdpZHRoJnN0cmlkZXMgb2YgdGhlIGFib3ZlCj4gYmVmb3JlIGRvaW5nIHRoZSByZWFkIGJhY2sg
b2YgYSByYW5kb20gZHdvcmQgZnJvbSB0aG9zZT8KCkFyZSB5b3UgdGhpbmtpbmcgd3JpdGVfZHcg
KyBpbmNyZW1lbnQoZHdvcmQsIHF3b3JkLCBjbCwgLi4pLCBvciBhY3R1YWxseSAKZG9pbmcgdGhl
IGZpbGw6IHdyaXRlX2R3LCB3cml0ZV9xdywgd3JpdGVfYmxvY2s/CgpPciBtYXliZSBib3RoPyBJ
IGhhdmUgYmVlbiBwbGF5aW5nIGFyb3VuZCB3aXRoIHRoZSB3cml0ZV9kdyArIGluY3JlbWVudCAK
Zm9yIGh1Z2VwYWdlcy5jLgoKPiAKPiBUaGluayBuYXN0eSBjYWNoZSBhcnRpZmFjdHMsIFBDSSB0
cmFuc2ZlcnMsIGFuZCB0aW1pbmcuCj4gLUNocmlzCj4gCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
