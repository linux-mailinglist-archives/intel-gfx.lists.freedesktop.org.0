Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D251EAB7
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2019 11:11:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED297896BF;
	Wed, 15 May 2019 09:11:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28AA7896BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2019 09:11:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 May 2019 02:11:37 -0700
X-ExtLoop1: 1
Received: from unknown (HELO [10.103.238.204]) ([10.103.238.204])
 by fmsmga004.fm.intel.com with ESMTP; 15 May 2019 02:11:35 -0700
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20190502231315.7388-1-umesh.nerlige.ramappa@intel.com>
 <2f27cddc-3ca2-c347-bbbc-eddee3024e7e@intel.com>
 <20190514181400.GA8091@localhost.localdomain>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <46f258bd-ac0a-94d2-2acd-9ffdcabbaa85@intel.com>
Date: Wed, 15 May 2019 10:11:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190514181400.GA8091@localhost.localdomain>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Refactor oa object to better
 manage resources
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTQvMDUvMjAxOSAxOToxNCwgVW1lc2ggTmVybGlnZSBSYW1hcHBhIHdyb3RlOgo+IE9uIFR1
ZSwgTWF5IDE0LCAyMDE5IGF0IDEwOjM0OjQ5QU0gKzAxMDAsIExpb25lbCBMYW5kd2VybGluIHdy
b3RlOgo+PiBIaSBVbWVzaCwKPj4KPj4gSSBqdXN0IG5vdGljZWQgdGhpcyBkaWZmZXJlbnQgYmV0
d2VlbiB2MSAmIHYyLgo+PiBNeSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgaWYgZGVzdHJveSgpIGlz
IGNhbGxlZCwgc3RyZWFtIHNob3VsZCBiZSB0aGUgCj4+IHNhbWUgYXMgZGV2X3ByaXYtPnBlcmYu
ZXhjbHVzaXZlX3N0cmVhbS4KPj4gSWYgaXQncyBub3QgaXQgc291bmRzIGxpa2UgYSBidWcuIFNv
IHdoeSBjaGFuZ2UgdGhpcz8KPj4KPiB2MiBmaXhlcyBvbmx5IGNoZWNrcGF0Y2ggd2FybmluZ3Mu
IGl0IHdhcm5lZCBvbiB1c2Ugb2YgQlVHX09OLiBCVUdfT04gCj4gaXMgaW50ZW5kZWQgdG8gY3Jh
c2ggdGhlIHN5c3RlbSBpbiBzZXZlcmUgY2FzZXMgd2hlcmUgdGhlIAo+IGRyaXZlci9rZXJuZWwg
aXMgdW51c2FibGUuIEluIHRoaXMgY2FzZSwgdGhlIG1pc21hdGNoIGJldHdlZW4gdXNlciAKPiBw
YXNzZWQgaW5mb3JtYXRpb24gYW5kIGV4Y2x1c2l2ZV9zdHJlYW0gbWF5IG5vdCByZXF1aXJlIGEg
Y3Jhc2guCgoKVGhpcyBpcyBjYWxsZWQgZnJvbSBpOTE1X3BlcmZfcmVsZWFzZSgpIHdoaWNoIGlz
IGF0dGFjaGVkIHRvIHRoZSAKaTkxNS1wZXJmIGZpbGUgZGVzY3JpcHRvciBvbmx5IGluIGk5MTVf
cGVyZi5jLgoKSWYgd2UgbWFuYWdlZCB0byByZWFjaCB0aGF0IGZ1bmN0aW9uIGl0IG11c3QgYmUg
YmVjYXVzZSB0aGUgZmlsZSAKZGVzY3JpcHRvciBnaXZlbiBieSB1c2Vyc3BhY2UgaXMgYXNzb2Np
YXRlZCB0byB0aGUgaTkxNS1wZXJmIHN0cmVhbS4KCkhhdmluZyBzdHJlYW0gIT0gZGV2X3ByaXYt
PnBlcmYuZXhjbHVzaXZlX3N0cmVhbSBtZWFucyB0aGF0IHdlIHByb2JhYmx5IApzY3Jld2VkIHVw
IHRoZSBsb2NraW5nIHNvbWV3aGVyZSBpbiB0aGlzIGZpbGUuCgpTbyBJIHdvdWxkIGFyZ3VlIHRo
aXMgaXMgYSBrZXJuZWwgaXNzdWUsIG5vdCBhIHVzZXIgaXNzdWUgYW5kIHRoYXQgdXNpbmcgCkJV
R19PTigpIGlzIGp1c3RpZmllZC4KCgpUaGFua3MsCgoKLUxpb25lbAoKCj4+IC1MaW9uZWwKPj4K
Pj4gT24gMDMvMDUvMjAxOSAwMDoxMywgVW1lc2ggTmVybGlnZSBSYW1hcHBhIHdyb3RlOgo+Pj4g
wqBzdGF0aWMgdm9pZCBpOTE1X29hX3N0cmVhbV9kZXN0cm95KHN0cnVjdCBpOTE1X3BlcmZfc3Ry
ZWFtICpzdHJlYW0pCj4+PiDCoHsKPj4+IMKgwqDCoMKgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiA9IHN0cmVhbS0+ZGV2X3ByaXY7Cj4+PiAtwqDCoMKgIEJVR19PTihzdHJlYW0g
IT0gZGV2X3ByaXYtPnBlcmYub2EuZXhjbHVzaXZlX3N0cmVhbSk7Cj4+PiArwqDCoMKgIGlmIChz
dHJlYW0gIT0gZGV2X3ByaXYtPnBlcmYuZXhjbHVzaXZlX3N0cmVhbSkgewo+Pj4gK8KgwqDCoMKg
wqDCoMKgIFdBUk5fT05fT05DRShzdHJlYW0gIT0gZGV2X3ByaXYtPnBlcmYuZXhjbHVzaXZlX3N0
cmVhbSk7Cj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+Pj4gK8KgwqDCoCB9Cj4+PiDCoMKg
wqDCoCAvKgo+Pgo+Pgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
