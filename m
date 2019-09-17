Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C71BCB4D02
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 13:37:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2D986EBDC;
	Tue, 17 Sep 2019 11:37:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75AA36EBE5
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 11:37:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 04:37:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,516,1559545200"; d="scan'208";a="177358530"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga007.jf.intel.com with ESMTP; 17 Sep 2019 04:37:28 -0700
Received: from [10.237.72.73] (mperes-desk.fi.intel.com [10.237.72.73])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id BCA8A580472;
 Tue, 17 Sep 2019 04:37:27 -0700 (PDT)
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190917112348.31500-1-chris@chris-wilson.co.uk>
From: Martin Peres <martin.peres@linux.intel.com>
Message-ID: <867bbbc9-6c5f-7f34-2eb6-51874f28016c@linux.intel.com>
Date: Tue, 17 Sep 2019 14:37:25 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20190917112348.31500-1-chris@chris-wilson.co.uk>
Content-Language: en-PH
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_mmap_gtt: Run forked mmap
 tests on tgl
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

CgpPbiAxNy8wOS8yMDE5IDE0OjIzLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gVGlnZXJsYWtlIGRv
ZXMgbm90IHNlZW0gdG8gYmUgc3VmZmVyaW5nIGZyb20gdGhlIHNhbWUgZmF1bHQgYXMgSWNlbGFr
ZQo+IGRpZCwgc28gbGV0IHRoZSB0ZXN0cyBydW4gYXMgdGhleSBzaG91bGQgY29tcGxldGUgd2l0
aGluIHRoZSB0aW1lb3V0Lgo+IAo+IEVhcmx5IHRnbCByZXN1bHRzOgo+IAo+IGJhc2ljLXNtYWxs
LWNvcHk6IFNVQ0NFU1MgKDEsNjcxcykKPiBmb3JrZWQtYmFzaWMtc21hbGwtY29weTogU1VDQ0VT
UyAoMzcsNTY4cykKPiAKPiBtZWRpdW0tY29weTogU1VDQ0VTUyAoMywzMDdzKQo+IGZvcmtlZC1t
ZWRpdW0tY29weTogU1VDQ0VTUyAoNzYsNjE0cykKPiBmb3JrZWQtbWVkaXVtLWNvcHktWFk6IFNV
Q0NFU1MgKDIwMywyNTFzKQo+IGZvcmtlZC1tZWRpdW0tY29weS1vZGQ6IFNVQ0NFU1MgKDIwNCwy
NjVzKQoKVGhhbmtzIGZvciBjaGVja2luZyB0aGlzIG91dCEKCjMgbWludXRlcyBmb3IgYSBzdWJ0
ZXN0IGlzIHN0aWxsIGFuIGV0ZXJuaXR5Li4uIEhvdyBtdWNoIGxvc3QgY292ZXJhZ2UKd291bGQg
aXQgYmUgaWYgd2UgZGlkIG5vdCBleGVjdXRlIHRoZSBub24tc21hbGwgZm9ya2VkIHRlc3Q/CgpN
YXJ0aW4KCj4gCj4gTm90IGdyZWF0LCBidXQgbm93aGVyZSBuZWFyIGFzIGJhZCBhcyBpY2wsCj4g
ICAgICAgIHNpbmdsZSAgICAgIGZvcmtlZAo+IGdsazogICAgMi4xNXMgICAgICAgMi44OXMKPiBp
Y2w6ICAgIDIuNTBzICAgICAyODEuMDhzCj4gCj4gUmVmZXJlbmNlczogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwODgyCj4gU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEg
PG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+IENjOiBNYXJ0aW4gUGVyZXMgPG1hcnRp
bi5wZXJlc0BsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIHRlc3RzL2k5MTUvZ2VtX21tYXBfZ3R0
LmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQo+IAo+IGRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5jIGIvdGVzdHMvaTkx
NS9nZW1fbW1hcF9ndHQuYwo+IGluZGV4IGFjNDM5Y2RmOC4uZTJjNmFkOWEwIDEwMDY0NAo+IC0t
LSBhL3Rlc3RzL2k5MTUvZ2VtX21tYXBfZ3R0LmMKPiArKysgYi90ZXN0cy9pOTE1L2dlbV9tbWFw
X2d0dC5jCj4gQEAgLTc5Miw3ICs3OTIsNyBAQCB0ZXN0X2h1Z2VfY29weShpbnQgZmQsIGludCBo
dWdlLCBpbnQgdGlsaW5nX2EsIGludCB0aWxpbmdfYiwgaW50IG5jcHVzKQo+ICAJdWludDY0X3Qg
aHVnZV9vYmplY3Rfc2l6ZSwgaTsKPiAgCXVuc2lnbmVkIG1vZGUgPSBDSEVDS19SQU07Cj4gIAo+
IC0JaWd0X2ZhaWxfb25fZihpbnRlbF9nZW4oZGV2aWQpID49IDExICYmIG5jcHVzID4gMSwKPiAr
CWlndF9mYWlsX29uX2YoaW50ZWxfZ2VuKGRldmlkKSA9PSAxMSAmJiBuY3B1cyA+IDEsCj4gIAkJ
ICAgICAgIlBsZWFzZSBhZGp1c3QgeW91ciBleHBlY3RhdGlvbnMsIGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDg4MlxuIik7Cj4gIAo+ICAJc3dpdGNoICho
dWdlKSB7Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
