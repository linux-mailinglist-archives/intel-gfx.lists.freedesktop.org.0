Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFA4B4D61
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 14:05:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B4396EBF6;
	Tue, 17 Sep 2019 12:05:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 501CC6EC02
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 12:04:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 05:04:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,516,1559545200"; d="scan'208";a="188907496"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga003.jf.intel.com with ESMTP; 17 Sep 2019 05:04:51 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 45F485C1E3A; Tue, 17 Sep 2019 15:04:32 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190917112348.31500-1-chris@chris-wilson.co.uk>
References: <20190917112348.31500-1-chris@chris-wilson.co.uk>
Date: Tue, 17 Sep 2019 15:04:32 +0300
Message-ID: <87tv9bqgbz.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gVGlnZXJs
YWtlIGRvZXMgbm90IHNlZW0gdG8gYmUgc3VmZmVyaW5nIGZyb20gdGhlIHNhbWUgZmF1bHQgYXMg
SWNlbGFrZQo+IGRpZCwgc28gbGV0IHRoZSB0ZXN0cyBydW4gYXMgdGhleSBzaG91bGQgY29tcGxl
dGUgd2l0aGluIHRoZSB0aW1lb3V0Lgo+Cj4gRWFybHkgdGdsIHJlc3VsdHM6Cj4KPiBiYXNpYy1z
bWFsbC1jb3B5OiBTVUNDRVNTICgxLDY3MXMpCj4gZm9ya2VkLWJhc2ljLXNtYWxsLWNvcHk6IFNV
Q0NFU1MgKDM3LDU2OHMpCj4KPiBtZWRpdW0tY29weTogU1VDQ0VTUyAoMywzMDdzKQo+IGZvcmtl
ZC1tZWRpdW0tY29weTogU1VDQ0VTUyAoNzYsNjE0cykKPiBmb3JrZWQtbWVkaXVtLWNvcHktWFk6
IFNVQ0NFU1MgKDIwMywyNTFzKQo+IGZvcmtlZC1tZWRpdW0tY29weS1vZGQ6IFNVQ0NFU1MgKDIw
NCwyNjVzKQo+Cj4gTm90IGdyZWF0LCBidXQgbm93aGVyZSBuZWFyIGFzIGJhZCBhcyBpY2wsCj4g
ICAgICAgIHNpbmdsZSAgICAgIGZvcmtlZAo+IGdsazogICAgMi4xNXMgICAgICAgMi44OXMKPiBp
Y2w6ICAgIDIuNTBzICAgICAyODEuMDhzCj4KPiBSZWZlcmVuY2VzOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA4ODIKPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWlrYSBLdW9wcGFsYSA8
bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IE1hcnRpbiBQZXJlcyA8bWFydGlu
LnBlcmVzQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgdGVzdHMvaTkxNS9nZW1fbW1hcF9ndHQu
YyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fbW1hcF9ndHQuYyBiL3Rlc3RzL2k5MTUv
Z2VtX21tYXBfZ3R0LmMKPiBpbmRleCBhYzQzOWNkZjguLmUyYzZhZDlhMCAxMDA2NDQKPiAtLS0g
YS90ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5jCj4gKysrIGIvdGVzdHMvaTkxNS9nZW1fbW1hcF9n
dHQuYwo+IEBAIC03OTIsNyArNzkyLDcgQEAgdGVzdF9odWdlX2NvcHkoaW50IGZkLCBpbnQgaHVn
ZSwgaW50IHRpbGluZ19hLCBpbnQgdGlsaW5nX2IsIGludCBuY3B1cykKPiAgCXVpbnQ2NF90IGh1
Z2Vfb2JqZWN0X3NpemUsIGk7Cj4gIAl1bnNpZ25lZCBtb2RlID0gQ0hFQ0tfUkFNOwo+ICAKPiAt
CWlndF9mYWlsX29uX2YoaW50ZWxfZ2VuKGRldmlkKSA+PSAxMSAmJiBuY3B1cyA+IDEsCj4gKwlp
Z3RfZmFpbF9vbl9mKGludGVsX2dlbihkZXZpZCkgPT0gMTEgJiYgbmNwdXMgPiAxLAo+ICAJCSAg
ICAgICJQbGVhc2UgYWRqdXN0IHlvdXIgZXhwZWN0YXRpb25zLCBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA4ODJcbiIpOwoKSXQgc2VlbXMgdG8gYmUgc3Rp
bGwgZXhwb25lbnRpYWwgc28gaG93IGFib3V0LAoKaWYgKGludGVsX2dlbihkZXZpZCkgPj0gMTEp
CiAgIG5jcHVzID0gbWF4KDIsIChuY3B1cy0xKS8yKTsKCldvdWxkIGRyb3AgdGhlIG1lZGl1bS1v
ZGQgdG8gMTQgc2Vjb25kcywgd2l0aG91dCBodWdlIGRlbnQgaW4gY292ZXJhZ2UgYXMKYXMgb2Rk
IG51bWJlciBvZiBjcHVzIHdvdWxkIGJlIGJvdW5jaW5nIG9uIGl0PwoKLU1pa2EKCj4gIAo+ICAJ
c3dpdGNoIChodWdlKSB7Cj4gLS0gCj4gMi4yMy4wCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
