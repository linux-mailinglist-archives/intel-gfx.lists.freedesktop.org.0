Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FF7372D1
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 13:28:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B387A895E1;
	Thu,  6 Jun 2019 11:28:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 646A689471
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 11:28:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 04:28:24 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO [10.251.93.246])
 ([10.251.93.246])
 by fmsmga004.fm.intel.com with ESMTP; 06 Jun 2019 04:28:24 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190604152408.24468-1-chris@chris-wilson.co.uk>
 <9ea334bb-024c-2e1f-92e4-7563ad690c87@linux.intel.com>
 <155981219692.19464.13852789202039173857@skylake-alporthouse-com>
 <d307ed67-3d81-6ed6-de46-1e1a78435a6f@linux.intel.com>
 <155981919713.19464.17277391483692934952@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <647f0356-689e-846e-5cdd-3226bca42b0d@linux.intel.com>
Date: Thu, 6 Jun 2019 12:28:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <155981919713.19464.17277391483692934952@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Skip context_barrier emission for
 unused contexts
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA2LzA2LzIwMTkgMTI6MDYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTA2IDEwOjE5OjEwKQo+Pgo+PiBPbiAwNi8wNi8yMDE5IDEwOjA5
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA2
LTA1IDExOjQwOjI3KQo+Pj4+Cj4+Pj4gT24gMDQvMDYvMjAxOSAxNjoyNCwgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+Pj4+PiBUaGUgaW50ZW50IHdhcyB0byBza2lwIHVudXNlZCBIVyBjb250ZXh0cyBi
eSBjaGVja2luZyBjZS0+c3RhdGUuCj4+Pj4+IEhvd2V2ZXIsIHRoaXMgb25seSB3b3JrcyBmb3Ig
ZXhlY2xpc3RzIHdoZXJlIHRoZSBwcEdUVCBwb2ludGVycyBpcwo+Pj4+PiBzdG9yZWQgaW5zaWRl
IHRoZSBIVyBjb250ZXh0LiBGb3IgZ2VuNywgdGhlIHBwR1RUIGlzIGFsb25nc2lkZSB0aGUKPj4+
Pj4gbG9naWNhbCBzdGF0ZSBhbmQgbXVzdCBiZSB1cGRhdGVkIG9uIGFsbCBhY3RpdmUgZW5naW5l
cyBidXQsIGNydWNpYWxseSwKPj4+Pj4gb25seSBvbiBhY3RpdmUgZW5naW5lcy4gQXMgd2UgbmVl
ZCBkaWZmZXJlbnQgY2hlY2tzLCBhbmQgdG8ga2VlcAo+Pj4+PiBjb250ZXh0X2JhcnJpZXJfdGFz
aygpIGFnbm9zdGljLCBwYXNzIGluIHRoZSBwcmVkaWNhdGUuCj4+Pj4+Cj4+Pj4+IEJ1Z3ppbGxh
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA4MzYKPj4+
Pj4gRml4ZXM6IDYyYzhlNDIzNDUwZCAoImRybS9pOTE1OiBTa2lwIHVudXNlZCBjb250ZXh0cyBm
b3IgY29udGV4dF9iYXJyaWVyX3Rhc2soKSIpCj4+Pj4+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+Pj4+PiBDYzogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4+Pj4gLS0tCj4+Pj4+ICAgICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jICAgfCAxNSArKysrKysrKysrKysrKy0K
Pj4+Pj4gICAgIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYyB8
IDE5ICsrKysrKysrKysrKysrKy0tLS0KPj4+Pj4gICAgIDIgZmlsZXMgY2hhbmdlZCwgMjkgaW5z
ZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4+Pj4+IGluZGV4IDA4NzIxZWY2MmU0ZS4uNjgx
OWI1OThkMjI2IDEwMDY0NAo+Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fY29udGV4dC5jCj4+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9jb250ZXh0LmMKPj4+Pj4gQEAgLTkwMiw2ICs5MDIsNyBAQCBzdGF0aWMgdm9pZCBjYl9y
ZXRpcmUoc3RydWN0IGk5MTVfYWN0aXZlICpiYXNlKQo+Pj4+PiAgICAgSTkxNV9TRUxGVEVTVF9E
RUNMQVJFKHN0YXRpYyBpbnRlbF9lbmdpbmVfbWFza190IGNvbnRleHRfYmFycmllcl9pbmplY3Rf
ZmF1bHQpOwo+Pj4+PiAgICAgc3RhdGljIGludCBjb250ZXh0X2JhcnJpZXJfdGFzayhzdHJ1Y3Qg
aTkxNV9nZW1fY29udGV4dCAqY3R4LAo+Pj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGludGVsX2VuZ2luZV9tYXNrX3QgZW5naW5lcywKPj4+Pj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgYm9vbCAoKnNraXApKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgdm9pZCAq
ZGF0YSksCj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50ICgqZW1pdCko
c3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsIHZvaWQgKmRhdGEpLAo+Pj4+PiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHZvaWQgKCp0YXNrKSh2b2lkICpkYXRhKSwKPj4+Pj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB2b2lkICpkYXRhKQo+Pj4+PiBAQCAtOTMxLDcgKzkz
MiwxMCBAQCBzdGF0aWMgaW50IGNvbnRleHRfYmFycmllcl90YXNrKHN0cnVjdCBpOTE1X2dlbV9j
b250ZXh0ICpjdHgsCj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+Pj4+PiAg
ICAgICAgICAgICAgICAgfQo+Pj4+PiAgICAgCj4+Pj4+IC0gICAgICAgICAgICAgaWYgKCEoY2Ut
PmVuZ2luZS0+bWFzayAmIGVuZ2luZXMpIHx8ICFjZS0+c3RhdGUpCj4+Pj4+ICsgICAgICAgICAg
ICAgaWYgKCEoY2UtPmVuZ2luZS0+bWFzayAmIGVuZ2luZXMpKQo+Pj4+PiArICAgICAgICAgICAg
ICAgICAgICAgY29udGludWU7Cj4+Pj4+ICsKPj4+Pj4gKyAgICAgICAgICAgICBpZiAoc2tpcCAm
JiBza2lwKGNlLCBkYXRhKSkKPj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7
Cj4+Pj4+ICAgICAKPj4+Pj4gICAgICAgICAgICAgICAgIHJxID0gaW50ZWxfY29udGV4dF9jcmVh
dGVfcmVxdWVzdChjZSk7Cj4+Pj4+IEBAIC0xMDU4LDYgKzEwNjIsMTQgQEAgc3RhdGljIGludCBl
bWl0X3BwZ3R0X3VwZGF0ZShzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwgdm9pZCAqZGF0YSkKPj4+
Pj4gICAgICAgICByZXR1cm4gMDsKPj4+Pj4gICAgIH0KPj4+Pj4gICAgIAo+Pj4+PiArc3RhdGlj
IGJvb2wgc2tpcF9wcGd0dF91cGRhdGUoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLCB2b2lkICpk
YXRhKQo+Pj4+PiArewo+Pj4+PiArICAgICBpZiAoSEFTX0xPR0lDQUxfUklOR19DT05URVhUUyhj
ZS0+ZW5naW5lLT5pOTE1KSkKPj4+Pj4gKyAgICAgICAgICAgICByZXR1cm4gIWNlLT5zdGF0ZTsK
Pj4+Pj4gKyAgICAgZWxzZQo+Pj4+PiArICAgICAgICAgICAgIHJldHVybiAhYXRvbWljX3JlYWQo
JmNlLT5waW5fY291bnQpOwo+Pj4+Cj4+Pj4gV291bGQgInJldHVybiAhYXRvbWljX3JlYWQoJmNl
LT5waW5fY291bnQpIHx8ICFjZS0+c3RhdGU7IiB3b3JrIGFuZAo+Pj4+IGF2b2lkIHRoZSBzb21l
d2hhdCBpcmt5IEhBU19MT0dJQ0FMX1JJTkdfQ09OVEVYVFMgY2hlY2s/Cj4+Pgo+Pj4gTm8sIGJl
Y2F1c2Ugd2UgbmVlZCB0aGUgYmFycmllciBvbiBnZW43ICFyY3Mgd2hpY2ggZG9lc24ndCBoYXZl
Cj4+PiBjZS0+c3RhdGUgKGJ1dCBkb2VzIG5lZWQgdG8gc3dpdGNoIG1tKS4KPj4KPj4gVGhhdCdz
IG5vdCB0aGUgcGF0aCB3aGljaCB3b3VsZCBiZSBjb3ZlcmVkIGJ5ICFhdG9taWNfcmVhZCgmY2Ut
PnBpbl9jb3VudCkgPwo+IAo+IEFuZCB3aGVuIHBpbl9jb3VudCA+IDAgaXQgd291bGQgdGhlbiBz
a2lwIGR1ZSB0byAhY2UtPnN0YXRlLCBsZWFkaW5nIHVzCj4gYmFjayB0byB0aGUgY3VycmVudCBw
cm9ibGVtLgoKQnJhaW4gZmFydC4uIE9rYXkuLiBidXQgcGluX2NvdW50IGNoZWNrIGl0c2VsZiBp
cyBub3Qgc3VmZmljaWVudCBmb3IgCmJvdGggcGxhdGZvcm1zPyBDYW4ndCB3ZSBza2lwIHBpbl9j
b3VudCA9PSAwICYmIGNlLT5zdGF0ZSAhPSBOVUxMIG9uIApleGVjbGlzdHM/CgpSZWdhcmRzLAoK
VHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
