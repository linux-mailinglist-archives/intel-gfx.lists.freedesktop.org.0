Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AA9115E62
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 21:04:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20EE16E223;
	Sat,  7 Dec 2019 20:04:08 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0F556E223
 for <Intel-GFX@lists.freedesktop.org>; Sat,  7 Dec 2019 20:04:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Dec 2019 12:04:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,289,1571727600"; d="scan'208";a="386832082"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga005.jf.intel.com with ESMTP; 07 Dec 2019 12:04:03 -0800
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.149.132])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 xB7K42mH028537; Sat, 7 Dec 2019 20:04:02 GMT
To: Intel-GFX@lists.freedesktop.org, "John Harrison"
 <John.C.Harrison@intel.com>
References: <20191121002723.33133-1-John.C.Harrison@Intel.com>
 <op.0blpe6urxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <b702f66c-8e05-c014-6a5e-6d9dce71e7f5@Intel.com>
Date: Sat, 07 Dec 2019 21:04:01 +0100
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.0cf10znhxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <b702f66c-8e05-c014-6a5e-6d9dce71e7f5@Intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: Extra info notice about FW
 version mis-match vs overrides
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAwNiBEZWMgMjAxOSAyMjoyMTozNyArMDEwMCwgSm9obiBIYXJyaXNvbiAgCjxKb2hu
LkMuSGFycmlzb25AaW50ZWwuY29tPiB3cm90ZToKCj4gT24gMTEvMjEvMjAxOSAwMjo0MywgTWlj
aGFsIFdhamRlY3prbyB3cm90ZToKPj4gT24gVGh1LCAyMSBOb3YgMjAxOSAwMToyNzoyMyArMDEw
MCwgPEpvaG4uQy5IYXJyaXNvbkBpbnRlbC5jb20+IHdyb3RlOgo+Pgo+Pj4gRnJvbTogSm9obiBI
YXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KPj4+Cj4+PiBJZiBhIEZXIG92ZXJy
aWRlIGlzIHByZXNlbnQgdGhlbiBhIHZlcnNpb24gbWlzLW1hdGNoIGlzIGFjdHVhbGx5Cj4+PiBp
Z25vcmVkLiBUaGUgd2FybmluZyBtZXNzYWdlIHdhcyBzdGlsbCBiZWluZyBwcmludGVkLCB0aG91
Z2guIFdoaWNoCj4+Cj4+IEl0IHdhc24ndCBhICJ3YXJuaW5nIiwganVzdCAibm90aWNlIgo+Pgo+
Pj4gY291bGQgY29uZnVzZSBwZW9wbGUgYnkgaW1wbHlpbmcgdGhhdCB0aGUgbG9hZCBoYWQgZmFp
bGVkIGR1ZSB0byB0aGUKPj4+IG1pcy1tYXRjaCB3aGVuIGFjdHVhbGx5IHNvbWV0aGluZyBlbHNl
IGhhZCBmYWlsZWQuCj4+Cj4+IFRoZSBtaXMtbWF0Y2ggc3RpbGwgbWlnaHQgYmUgYSByZWFzb24g
d2h5IHNvbWV0aGluZyBlbHNlIGZhaWxlZC4KPj4gSWYgdGhlcmUgaXMgcG9zc2libGUgY29uZnVz
aW5nLCBpdCdzIGxpa2VseSBkdWUgdG8gbGFjayBvZiBvciBpbmNvbXBsZXRlCj4+IG1lc3NhZ2Ug
ZnJvbSB0aGlzIG90aGVyIGZhaWx1cmUgcG9pbnQuIFNvIHdlIHNob3VsZCBtYWtlIHN1cmUgdGhh
dCBhbGwKPj4gZmFpbHVyZSBwb2ludHMgY29ycmVjdGx5IGluZGljYXRlIHRoZSBmYWlsdXJlIHJl
YXNvbiB0byBhdm9pZCBjb25mdXNpbmcuCj4+IERvIHlvdSByZWNhbGwgd2hhdCB0aGlzIG90aGVy
IGNvbmZ1c2luZyBmYWlsdXJlIHdhcz8KPgo+IFNvcnJ5LCBiYWQgY29tbWl0IG1lc3NhZ2UgY29t
bWVudC4gVGhlIHBvaW50IHdhcyB0aGF0IHlvdSBjb3VsZCAgCj4gc3VjY2Vzc2Z1bGx5IGxvYWQg
dGhlIEd1QyBGVyBidXQgdGhlbiBzb21ldGhpbmcgZW50aXJlbHkgdW5yZWxhdGVkIGZhaWxzICAK
PiAod2l0aCBvciB3aXRob3V0IGFwcHJvcHJpYXRlIGVycm9yIG1lc3NhZ2UpLiBIb3dldmVyLCB0
aGUgZmlyc3QgYXBwYXJlbnQgIAo+IGZhaWx1cmUgaW4gZG1lc2cgaXMgdGhlIEd1QyB2ZXJzaW9u
IG1pcy1tYXRjaC4gVGhlcmVmb3JlIGEgdXNlciAob3IgZXZlbgoKYWdhaW4sIGl0IHdhc24ndCBl
cnJvciBtZXNzYWdlLCBqdXN0IGEgbm90aWNlIHRvIGNsZWFybHkgaW5kaWNhdGUgdGhhdApmdyB2
ZXJzaW9uIGJlaW5nIHVzZWQgaXMgbm90IG1hdGNoaW5nIHRlc3RlZCBhbmQgZ3VhcmFudGVlZCBj
b25maWd1cmF0aW9uLgoKPiBkZXZlbG9wZXIpIG1pZ2h0IGFzc3VtZSB0aGF0IGFsbCBzdWJzZXF1
ZW50IGlzc3VlcyBhcmUgY2F1c2VkIGJ5IHRoZSBGVyAgCj4gbWlzbWF0Y2ggY2F1c2luZyB0aGUg
R3VDIHRvIG5vdCBsb2FkIGF0IGFsbCBhbmQgaGVuY2Ugbm90IGludmVzdGlnYXRlCgpXZSBmYWls
IHRvIGZldGNoIG1pc21hdGNoZWQgZncgb25seSBpZiB1c2VyIGlzIHRyeWluZyB0byBjaGVhdCB3
aXRoIHVzCihieSByZW5hbWluZyBtaXNtYXRjaGVkIGZ3IGJsb2IgdG8gZXhwZWN0ZWQgZmlsZW5h
bWUpLiBJbiBjYXNlIG9mCm92ZXJyaWRlLCBmZXRjaCB3aWxsIGNvbnRpbnVlLCBidXQgd2UgbWF5
IGZhaWwgZHVlIHRvIGhhcmQgdG8gcHJlZGljdApBQkkgaW5jb21wYXRpYmlsaXR5L2JyZWFrYWdl
LgoKPiBhbnkgbGF0ZXIgbWVzc2FnZXMgdW50aWwgdGhpcyBmaXJzdCBvbmUgaXMgZml4ZWQvdW5k
ZXJzdG9vZC4KCklmIHRoZXJlIGFyZSBhbnkgbGF0ZXIgZXJyb3JzLCB3ZSBoYXZlIHRvIGFjY291
bnQgdGhhdCB0aGVzZSBtaWdodApiZSBjYXVzZWQgYnkgbWlzbWF0Y2hlZCBmdywgb3RoZXJ3aXNl
LCB3ZSB3b3VsZCB1c2UgdGhhdCBvdGhlciBmdwphcyBkZWZhdWx0IG9uZS4KCj4KPiBTbyB0aGUg
cG9pbnQgaXMganVzdCB0byBhdm9pZCBwZW9wbGUgd2FzdGluZyB0aW1lIGludmVzdGlnYXRpbmcg
IAo+IHNvbWV0aGluZyB0aGF0IGlzIG5vdCBhY3R1YWxseSBhbiBlcnJvci4KCk9yZGluYXJ5IHVz
ZXIgaXMgbmV2ZXIgZXhwZWN0ZWQgdG8gc2VlIHRoaXMgbm90aWNlLgoKVXNlcnMvZGV2ZWxvcGVy
cyB0aGF0IG92ZXJyaWRlIGZ3IHBhdGggbXVzdCBleHBlY3QgdGhpcyBub3RpY2UuClRoZXJlIGlz
IGEgc3RpbGwgcmlzayBvZiBwb3RlbnRpYWwgaXNzdWVzIGNhdXNlZCBieSBsb2FkaW5nCm1pc21h
dGNoZWQgZmlybXdhcmUgdGhhdCB3aWxsIG5vdCBoYXZlIHByb3BlciBlcnJvciBtZXNzYWdlLgoK
Pgo+Cj4+Cj4+Pgo+Pj4gVGhpcyBwYXRjaCBhZGRzIGFuIGV4dHJhIG1lc3NhZ2UgdG8gc2F5IHRo
YXQgdGhlIG1pcy1tYXRjaCBpcyBiZWluZwo+Pj4gaWdub3JlZCBpZiBhbiBvdmVycmlkZSBpcyBw
cmVzZW50Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEpvaG4gSGFycmlzb24gPEpvaG4uQy5IYXJy
aXNvbkBJbnRlbC5jb20+Cj4+PiAtLS0KPj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF91Y19mdy5jIHwgMyArKysKPj4+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
Cj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3Vj
X2Z3LmMgIAo+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCj4+
PiBpbmRleCA2NmEzMGFiNzA0NGEuLmMxYWU4MDdiMDdhZSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKPj4+IEBAIC0zNjEsNiArMzYxLDkgQEAgaW50
IGludGVsX3VjX2Z3X2ZldGNoKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncsICAKPj4+IHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+Pj4gICAgICAgICAgICAgIGVyciA9IC1FTk9FWEVD
Owo+Pj4gICAgICAgICAgICAgIGdvdG8gZmFpbDsKPj4+ICAgICAgICAgIH0KPj4+ICsKPj4+ICsg
ICAgICAgIGRldl9ub3RpY2UoZGV2LCAiJXMgZmlybXdhcmUgJXM6IEZpcm13YXJlIG92ZXJyaWRl
IHNvICAKPj4+IGlnbm9yaW5nIHZlcnNpb24gbWlzLW1hdGNoXG4iLAo+Pj4gKyAgICAgICAgICAg
ICAgIGludGVsX3VjX2Z3X3R5cGVfcmVwcih1Y19mdy0+dHlwZSksIHVjX2Z3LT5wYXRoKTsKPj4K
Pj4gSWYgeW91IHN0aWxsIHdhbnQgdG8gaW5jbHVkZSBjbGVhciBzdGF0ZW1lbnQgYWJvdXQgbWlz
LW1hdGNoIGJlaW5nICAKPj4gaWdub3JlZCwKPj4gdGhlbiBtYXliZSBpbnN0ZWFkIG9mIGFkZGlu
ZyBuZXcgbWVzc2FnZSBpdCBjb3VsZCBiZSBjb21iaW5lZCB3aXRoIG9sZCAgCj4+IG9uZToKPj4K
PiBPciBtYXliZSBqdXN0IG1vdmUgdGhlIG1pcy1tYXRjaCBub3RpY2UgaW50byB0aGUgJ2dvdG8g
ZmFpbCcgc2VjdGlvbiBhbmQgIAo+IG5vdCBwcmludCBhbnl0aGluZyBhdCBhbGwgaW4gdGhlIGNh
c2Ugb2YgYW4gb3ZlcnJpZGUuIE9uIHRoZSBncm91bmRzICAKPiB0aGF0IGlmIHNvbWVvbmUgaXMg
c3BlY2lmeWluZyBhbiBvdmVycmlkZSB0aGVuIGl0IGlzIGFsbW9zdCBjZXJ0YWlubHkgIAo+IGJl
Y2F1c2UgdGhlIGRlZmF1bHQgdmVyc2lvbiBpcyBub3Qgd2hhdCB0aGV5IHdhbnQuIFNvIHllcywg
aXQgb2J2aW91c2x5ICAKPiBpcyBnb2luZyB0byBiZSBtaXMtbWF0Y2guCgpZb3UgY2FuIHNhZmVs
eSAoYW5kIHNpbGVudGx5KSBvdmVycmlkZSBmdyBhY2NvcmRpbmcgdG8gZncgdmVyc2lvbgpjb21w
YXRpYmlsaXR5IHNjaGVtYTogc2FtZSBtYWpvciBhbmQgbmV3ZXIgbWlub3IgYXJlIE9LIHRvIHVz
ZS4KClRoaXMgbm90aWNlIG1lc3NhZ2Ugd2FzIGNhcHR1cmluZyBjYXNlcyB3aGVuIHlvdSB0cnkg
dG8gYmVuZCB0aGUgcnVsZXM6CnVzZSBtaXNtYXRjaGVkIG1ham9yIChhcyBpdCBpcyB1bmxpa2Vs
eSB0byB3b3JrLCBzaW5jZSBpdCBpbmRpY2F0ZXMgbm8KYmFja3dhcmQgY29tcGF0aWJpbGl0eSBv
biBBQkkgbGV2ZWwsIG90aGVyd2lzZSBtYWpvciB2ZXJzaW9uIHNob3VsZCBzdGF5CnRoZSBzYW1l
KSBvciB1c2Ugb2YgbGVnYWN5IG1pbm9yIChwb3NzaWJseSB3aWxsIGFsc28gbm90IHdvcmsgZHVl
IHRvCm1pc3NpbmcgZmVhdHVyZSB0aGF0IGlzIGV4cGVjdGVkL3VzZWQgYnkgZHJpdmVyKS4KCk1p
Y2hhbAoKPgo+Cj4+IGlmICh1Y19mdy0+bWFqb3JfdmVyX2ZvdW5kICE9IHVjX2Z3LT5tYWpvcl92
ZXJfd2FudGVkIHx8Cj4+ICAgICAgICAgICAgIHVjX2Z3LT5taW5vcl92ZXJfZm91bmQgPCB1Y19m
dy0+bWlub3JfdmVyX3dhbnRlZCkgewo+PiAtICAgICAgICAgICAgICAgZGV2X25vdGljZShkZXYs
ICIlcyBmaXJtd2FyZSAlczogdW5leHBlY3RlZCB2ZXJzaW9uOiAgCj4+ICV1LiV1ICE9ICV1LiV1
XG4iLAo+PiArICAgICAgICAgICAgICAgZGV2X25vdGljZShkZXYsICIlcyBmaXJtd2FyZSAlczog
JXM6ICV1LiV1ICE9ICV1LiV1XG4iLAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnRl
bF91Y19md190eXBlX3JlcHIodWNfZnctPnR5cGUpLCAgCj4+IHVjX2Z3LT5wYXRoLAo+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgICBpbnRlbF91Y19md19pc19vdmVycmlkZGVuKHVjX2Z3KSA/
Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICJpZ25vcmluZyB1bmV4cGVjdGVkIHZlcnNp
b24iIDogIndyb25nICAKPj4gdmVyc2lvbiIsCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHVjX2Z3LT5tYWpvcl92ZXJfZm91bmQsICAKPj4gdWNfZnctPm1pbm9yX3Zlcl9mb3VuZCwKPj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgdWNfZnctPm1ham9yX3Zlcl93YW50ZWQsICAKPj4g
dWNfZnctPm1pbm9yX3Zlcl93YW50ZWQpOwo+PiAgICAgICAgICAgICAgICAgaWYgKCFpbnRlbF91
Y19md19pc19vdmVycmlkZGVuKHVjX2Z3KSkgewo+Pgo+PiBNaWNoYWwKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
