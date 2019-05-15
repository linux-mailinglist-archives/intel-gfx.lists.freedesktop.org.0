Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 686081F992
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2019 19:49:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9504189261;
	Wed, 15 May 2019 17:43:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A36B8928B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2019 17:43:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 May 2019 10:43:55 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.54.134.77])
 by orsmga007.jf.intel.com with ESMTP; 15 May 2019 10:43:55 -0700
Date: Wed, 15 May 2019 10:44:42 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20190515174442.GB8091@localhost.localdomain>
References: <20190502231315.7388-1-umesh.nerlige.ramappa@intel.com>
 <2f27cddc-3ca2-c347-bbbc-eddee3024e7e@intel.com>
 <20190514181400.GA8091@localhost.localdomain>
 <46f258bd-ac0a-94d2-2acd-9ffdcabbaa85@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <46f258bd-ac0a-94d2-2acd-9ffdcabbaa85@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
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

T24gV2VkLCBNYXkgMTUsIDIwMTkgYXQgMTA6MTE6MzRBTSArMDEwMCwgTGlvbmVsIExhbmR3ZXJs
aW4gd3JvdGU6Cj5PbiAxNC8wNS8yMDE5IDE5OjE0LCBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgd3Jv
dGU6Cj4+T24gVHVlLCBNYXkgMTQsIDIwMTkgYXQgMTA6MzQ6NDlBTSArMDEwMCwgTGlvbmVsIExh
bmR3ZXJsaW4gd3JvdGU6Cj4+PkhpIFVtZXNoLAo+Pj4KPj4+SSBqdXN0IG5vdGljZWQgdGhpcyBk
aWZmZXJlbnQgYmV0d2VlbiB2MSAmIHYyLgo+Pj5NeSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgaWYg
ZGVzdHJveSgpIGlzIGNhbGxlZCwgc3RyZWFtIHNob3VsZCBiZSAKPj4+dGhlIHNhbWUgYXMgZGV2
X3ByaXYtPnBlcmYuZXhjbHVzaXZlX3N0cmVhbS4KPj4+SWYgaXQncyBub3QgaXQgc291bmRzIGxp
a2UgYSBidWcuIFNvIHdoeSBjaGFuZ2UgdGhpcz8KPj4+Cj4+djIgZml4ZXMgb25seSBjaGVja3Bh
dGNoIHdhcm5pbmdzLiBpdCB3YXJuZWQgb24gdXNlIG9mIEJVR19PTi4gCj4+QlVHX09OIGlzIGlu
dGVuZGVkIHRvIGNyYXNoIHRoZSBzeXN0ZW0gaW4gc2V2ZXJlIGNhc2VzIHdoZXJlIHRoZSAKPj5k
cml2ZXIva2VybmVsIGlzIHVudXNhYmxlLiBJbiB0aGlzIGNhc2UsIHRoZSBtaXNtYXRjaCBiZXR3
ZWVuIHVzZXIgCj4+cGFzc2VkIGluZm9ybWF0aW9uIGFuZCBleGNsdXNpdmVfc3RyZWFtIG1heSBu
b3QgcmVxdWlyZSBhIGNyYXNoLgo+Cj4KPlRoaXMgaXMgY2FsbGVkIGZyb20gaTkxNV9wZXJmX3Jl
bGVhc2UoKSB3aGljaCBpcyBhdHRhY2hlZCB0byB0aGUgCj5pOTE1LXBlcmYgZmlsZSBkZXNjcmlw
dG9yIG9ubHkgaW4gaTkxNV9wZXJmLmMuCj4KPklmIHdlIG1hbmFnZWQgdG8gcmVhY2ggdGhhdCBm
dW5jdGlvbiBpdCBtdXN0IGJlIGJlY2F1c2UgdGhlIGZpbGUgCj5kZXNjcmlwdG9yIGdpdmVuIGJ5
IHVzZXJzcGFjZSBpcyBhc3NvY2lhdGVkIHRvIHRoZSBpOTE1LXBlcmYgc3RyZWFtLgo+Cj5IYXZp
bmcgc3RyZWFtICE9IGRldl9wcml2LT5wZXJmLmV4Y2x1c2l2ZV9zdHJlYW0gbWVhbnMgdGhhdCB3
ZSAKPnByb2JhYmx5IHNjcmV3ZWQgdXAgdGhlIGxvY2tpbmcgc29tZXdoZXJlIGluIHRoaXMgZmls
ZS4KPgo+U28gSSB3b3VsZCBhcmd1ZSB0aGlzIGlzIGEga2VybmVsIGlzc3VlLCBub3QgYSB1c2Vy
IGlzc3VlIGFuZCB0aGF0IAo+dXNpbmcgQlVHX09OKCkgaXMganVzdGlmaWVkLgo+Ckkgc2VlLiBX
aWxsIGNoYW5nZSBpdCBiYWNrLgoKVGhhbmtzLApVbWVzaAo+Cj5UaGFua3MsCj4KPgo+LUxpb25l
bAo+Cj4KPj4+LUxpb25lbAo+Pj4KPj4+T24gMDMvMDUvMjAxOSAwMDoxMywgVW1lc2ggTmVybGln
ZSBSYW1hcHBhIHdyb3RlOgo+Pj4+wqBzdGF0aWMgdm9pZCBpOTE1X29hX3N0cmVhbV9kZXN0cm95
KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCj4+Pj7CoHsKPj4+PsKgwqDCoMKgIHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHN0cmVhbS0+ZGV2X3ByaXY7Cj4+Pj4t
wqDCoMKgIEJVR19PTihzdHJlYW0gIT0gZGV2X3ByaXYtPnBlcmYub2EuZXhjbHVzaXZlX3N0cmVh
bSk7Cj4+Pj4rwqDCoMKgIGlmIChzdHJlYW0gIT0gZGV2X3ByaXYtPnBlcmYuZXhjbHVzaXZlX3N0
cmVhbSkgewo+Pj4+K8KgwqDCoMKgwqDCoMKgIFdBUk5fT05fT05DRShzdHJlYW0gIT0gZGV2X3By
aXYtPnBlcmYuZXhjbHVzaXZlX3N0cmVhbSk7Cj4+Pj4rwqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+
Pj4+K8KgwqDCoCB9Cj4+Pj7CoMKgwqDCoCAvKgo+Pj4KPj4+Cj4+Cj4KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
