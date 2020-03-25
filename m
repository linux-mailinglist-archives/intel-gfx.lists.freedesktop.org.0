Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD020193005
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 19:04:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 897006E1B9;
	Wed, 25 Mar 2020 18:04:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB98C6E1B9
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 18:04:07 +0000 (UTC)
IronPort-SDR: 11BvICAx7b2/OGIHPcFAp50rvirQFml91RnpugDrFZrGKQk9SXJV5njNA9IpKBnjLqwH6mooI6
 2LFI3UhvWIAw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 11:04:07 -0700
IronPort-SDR: KVhxdu/E7Ttdk2vCvqknUg4JvYrD2s9OH0D+yDMPhT+HCEgZxPty5fTR3NIVHVMWnEQb09/IeV
 DMrhnLRsvw/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,305,1580803200"; d="scan'208";a="282215313"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga002.fm.intel.com with ESMTP; 25 Mar 2020 11:04:07 -0700
To: John Harrison <John.C.Harrison@Intel.com>, intel-gfx@lists.freedesktop.org
References: <20200312011631.15262-1-daniele.ceraolospurio@intel.com>
 <20200312011631.15262-7-daniele.ceraolospurio@intel.com>
 <8d922c51-a183-247a-69fc-2e5e1119c8be@Intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <bb874021-db58-3486-b411-8c5caaf8682f@intel.com>
Date: Wed, 25 Mar 2020 11:03:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <8d922c51-a183-247a-69fc-2e5e1119c8be@Intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 6/6] drm/i915/uc: do not free err log on
 uc_fini
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAzLzI1LzIwIDEwOjU4IEFNLCBKb2huIEhhcnJpc29uIHdyb3RlOgo+IE9uIDMvMTEvMjAy
MCAxODoxNiwgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyB3cm90ZToKPj4gd2UgZG8gY2FsbCB1Y19m
aW5pIGlmIHRoZXJlIGlzIGFuIGlzc3VlIHdoaWxlIGxvYWRpbmcgdGhlIEd1Qywgc28gd2UKPj4g
Y2FuJ3QgZGVsZXRlIGluIHRoZXJlIHRoZSBsb2dzIHdlIG5lZWQgdG8gZGVidWcgdGhlIGxvYWQg
ZmFpbHVyZS4KPj4gTW92aW5nIHRoZSBsb2cgZnJlZSB0byBkcml2ZXIgcmVtb3ZlIGVuc3VyZXMg
dGhlIGxvZ3Mgc3RpY2sgYXJvdW5kIG9uZwo+PiBlbm91Z2ggZm9yIHVzIHRvIGR1bXAgdGhlbS4K
PiBJIHRoaW5rIHRoaXMgY291bGQgYmUgd29yZGVkIGJldHRlciBhbmQgaGFzIGEgY291cGxlIG9m
IHR5cG9zLgo+IAoKSG93IGFib3V0OgoKIldlIG5lZWQgdG8ga2VlcCB0aGUgR3VDIGVycm9yIGxv
Z3MgYXJvdW5kIHRvIGRlYnVnIHRoZSBsb2FkIGZhaWx1cmUsIHNvIAp3ZSBjYW4ndCBjbGVhbiB0
aGVtIGluIHRoZSBlcnJvciB1bndpbmQsIHdoaWNoIGluY2x1ZGVzIHVjX2ZpbmkoKS4gCk1vdmlu
ZyB0aGUgY2xlYW51cCB0byBkcml2ZXIgcmVtb3ZlIGVuc3VyZXMgdGhhdCB0aGUgbG9ncyBzdGlj
ayBhcm91bmQgCmxvbmcgZW5vdWdoIGZvciB1cyB0byBkdW1wIHRoZW0uIgoKPwoKRGFuaWVsZQoK
PiBPdGhlcndpc2UgaXQgbG9va3MgcGxhdXNpYmxlLgo+IFJldmlld2VkLWJ5OiBKb2huIEhhcnJp
c29uIDxKb2huLkMuSGFycmlzb25ASW50ZWwuY29tPgo+IAo+PiBTaWduZWQtb2ZmLWJ5OiBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+PiBD
YzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4+IC0tLQo+
PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jwqDCoMKgIHwgMyArLS0KPj4g
wqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyB8IDkgKysrKysrKy0tCj4+
IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmggfCAxICsKPj4gwqAgMyBm
aWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jIAo+PiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMKPj4gaW5kZXggM2RlYTg4ODFlOTE1Li5lZGE2NmIw
ZDQ0YmQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMK
Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYwo+PiBAQCAtNjM1LDgg
KzYzNSw3IEBAIHZvaWQgaW50ZWxfZ3RfZHJpdmVyX3JlbW92ZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0
KQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgX19pbnRlbF9ndF9kaXNhYmxlKGd0KTsKPj4gLcKgwqDC
oCBpbnRlbF91Y19maW5pX2h3KCZndC0+dWMpOwo+PiAtwqDCoMKgIGludGVsX3VjX2ZpbmkoJmd0
LT51Yyk7Cj4+ICvCoMKgwqAgaW50ZWxfdWNfZHJpdmVyX3JlbW92ZSgmZ3QtPnVjKTsKPj4gwqDC
oMKgwqDCoCBpbnRlbF9lbmdpbmVzX3JlbGVhc2UoZ3QpOwo+PiDCoCB9Cj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jIAo+PiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKPj4gaW5kZXggYTRjYmUwNmUwNmJkLi5iMTFlNTY0
ZWYyMmUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3Vj
LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwo+PiBAQCAt
MTMxLDYgKzEzMSwxMyBAQCBzdGF0aWMgdm9pZCBfX3VjX2ZyZWVfbG9hZF9lcnJfbG9nKHN0cnVj
dCAKPj4gaW50ZWxfdWMgKnVjKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaTkxNV9nZW1fb2JqZWN0
X3B1dChsb2cpOwo+PiDCoCB9Cj4+ICt2b2lkIGludGVsX3VjX2RyaXZlcl9yZW1vdmUoc3RydWN0
IGludGVsX3VjICp1YykKPj4gK3sKPj4gK8KgwqDCoCBpbnRlbF91Y19maW5pX2h3KHVjKTsKPj4g
K8KgwqDCoCBpbnRlbF91Y19maW5pKHVjKTsKPj4gK8KgwqDCoCBfX3VjX2ZyZWVfbG9hZF9lcnJf
bG9nKHVjKTsKPj4gK30KPj4gKwo+PiDCoCBzdGF0aWMgaW5saW5lIGJvb2wgZ3VjX2NvbW11bmlj
YXRpb25fZW5hYmxlZChzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCj4+IMKgIHsKPj4gwqDCoMKgwqDC
oCByZXR1cm4gaW50ZWxfZ3VjX2N0X2VuYWJsZWQoJmd1Yy0+Y3QpOwo+PiBAQCAtMzExLDggKzMx
OCw2IEBAIHN0YXRpYyB2b2lkIF9fdWNfZmluaShzdHJ1Y3QgaW50ZWxfdWMgKnVjKQo+PiDCoCB7
Cj4+IMKgwqDCoMKgwqAgaW50ZWxfaHVjX2ZpbmkoJnVjLT5odWMpOwo+PiDCoMKgwqDCoMKgIGlu
dGVsX2d1Y19maW5pKCZ1Yy0+Z3VjKTsKPj4gLQo+PiAtwqDCoMKgIF9fdWNfZnJlZV9sb2FkX2Vy
cl9sb2codWMpOwo+PiDCoCB9Cj4+IMKgIHN0YXRpYyBpbnQgX191Y19zYW5pdGl6ZShzdHJ1Y3Qg
aW50ZWxfdWMgKnVjKQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfdWMuaCAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5oCj4+
IGluZGV4IDVhZTdiNTBiN2RjMS4uOWM5NTRjNTg5ZWRmIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5oCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX3VjLmgKPj4gQEAgLTM0LDYgKzM0LDcgQEAgc3RydWN0IGludGVsX3Vj
IHsKPj4gwqAgdm9pZCBpbnRlbF91Y19pbml0X2Vhcmx5KHN0cnVjdCBpbnRlbF91YyAqdWMpOwo+
PiDCoCB2b2lkIGludGVsX3VjX2RyaXZlcl9sYXRlX3JlbGVhc2Uoc3RydWN0IGludGVsX3VjICp1
Yyk7Cj4+ICt2b2lkIGludGVsX3VjX2RyaXZlcl9yZW1vdmUoc3RydWN0IGludGVsX3VjICp1Yyk7
Cj4+IMKgIHZvaWQgaW50ZWxfdWNfaW5pdF9tbWlvKHN0cnVjdCBpbnRlbF91YyAqdWMpOwo+PiDC
oCB2b2lkIGludGVsX3VjX3Jlc2V0X3ByZXBhcmUoc3RydWN0IGludGVsX3VjICp1Yyk7Cj4+IMKg
IHZvaWQgaW50ZWxfdWNfc3VzcGVuZChzdHJ1Y3QgaW50ZWxfdWMgKnVjKTsKPiAKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
