Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7188C3CF68C
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 11:06:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 052C989F38;
	Tue, 20 Jul 2021 09:06:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31A7989F38
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 09:06:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="198475221"
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="198475221"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 02:06:53 -0700
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="469548418"
Received: from acker-mobl.ger.corp.intel.com (HELO [10.252.48.57])
 ([10.252.48.57])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 02:06:48 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210715120842.806605-1-maarten.lankhorst@linux.intel.com>
 <da8d2b40-bceb-f32e-28bc-8652575835ba@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <9513568f-f635-205d-1970-b65edda7dd6a@linux.intel.com>
Date: Tue, 20 Jul 2021 11:06:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <da8d2b40-bceb-f32e-28bc-8652575835ba@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Add missing docbook chapters
 for i915 uapi.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMTYtMDctMjAyMSBvbSAxNTowNyBzY2hyZWVmIFR2cnRrbyBVcnN1bGluOgo+Cj4gT24gMTUv
MDcvMjAyMSAxMzowOCwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+IEkgbm90aWNlZCB3aGVu
IGdyZXBwaW5nIGZvciBET0M6IHRoYXQgdGhvc2Ugd2VyZSBkZWZpbmVkCj4+IGluIHRoZSBoZWFk
ZXIsIGJ1dCBub3QgYWN0dWFsbHkgdXNlZC4gRml4IGl0IGJ5IHJlbW92aW5nCj4+IGFsbCBjaGFw
dGVycyBhbmQgdGhlIGludGVybmFsIGFubm90YXRpb24sIHNvIHRoZSBkb2Nib29rCj4+IGdlbmVy
YXRlZCBjaGFwdGVycyBhcmUgdXNlZC4KPj4KPj4gQ2hhbmdlcyBzaW5jZSB2MToKPj4gLSBKdXN0
IHJlbW92ZSB0aGUgY2hhcHRlcnMsIG5vIG5lZWQgZm9yIHRob3NlLgo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29t
Pgo+PiBMaW5rOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQv
MjAyMTA3MDkxMTM4NDIuNjUxMTQwLTEtbWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29t
Cj4+IC0tLQo+PiDCoCBEb2N1bWVudGF0aW9uL2dwdS9kcml2ZXItdWFwaS5yc3QgfCAyMSAtLS0t
LS0tLS0tLS0tLS0tLS0tLS0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDIxIGRlbGV0aW9ucygtKQo+
Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9ncHUvZHJpdmVyLXVhcGkucnN0IGIvRG9j
dW1lbnRhdGlvbi9ncHUvZHJpdmVyLXVhcGkucnN0Cj4+IGluZGV4IDI3ZDBmYmUzM2U4Ny4uNDQx
MWU2OTE5YTNkIDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2dwdS9kcml2ZXItdWFwaS5y
c3QKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9ncHUvZHJpdmVyLXVhcGkucnN0Cj4+IEBAIC01LDI1
ICs1LDQgQEAgRFJNIERyaXZlciB1QVBJCj4+IMKgIGRybS9pOTE1IHVBUEkKPj4gwqAgPT09PT09
PT09PT09PQo+PiDCoCAtRW5naW5lIERpc2NvdmVyeSB1QVBJCj4+IC0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KPj4gLQo+PiAtLi4ga2VybmVsLWRvYzo6IGluY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0u
aAo+PiAtwqDCoCA6ZG9jOiBFbmdpbmUgRGlzY292ZXJ5IHVBUEkKPj4gLQo+PiAtQ29udGV4dCBF
bmdpbmUgTWFwIHVBUEkKPj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+IC0KPj4gLS4uIGtl
cm5lbC1kb2M6OiBpbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKPj4gLcKgwqAgOmRvYzogQ29u
dGV4dCBFbmdpbmUgTWFwIHVBUEkKPj4gLQo+PiAtVmlydHVhbCBFbmdpbmUgdUFQSQo+PiAtLS0t
LS0tLS0tLS0tLS0tLS0tLQo+PiAtCj4+IC0uLiBrZXJuZWwtZG9jOjogaW5jbHVkZS91YXBpL2Ry
bS9pOTE1X2RybS5oCj4+IC3CoMKgIDpkb2M6IFZpcnR1YWwgRW5naW5lIHVBUEkKPj4gLQo+Cj4g
SG1tIG15IGlkZWEgd2FzIHRvIGhhdmUgdGhlIGFib3ZlIHRocmVlIGxhaWQgb3V0IHNlcXVlbnRp
YWxseSBpbiB0aGUgZG9jIHNvIHRoZSBuYXJyYXRpdmUgbWFrZXMgc2Vuc2UuIE90aGVyd2lzZSB0
aGV5IGFyZSBhdCByYW5kb20gbG9jYXRpb25zIGluIGk5MTVfZHJtLmggc28gcmVhZGVyIGNhbm5v
dCBnZXQgdGhlIG5pY2Ugc3RvcnkgYXJvdW5kIGhpZ2ggbGV2ZWwgb3BlcmF0aW9uIGFuZCBpbnRl
cmFjdGlvbnMgYmV0d2VlbiB0aGVuLiBJbml0aWFsbHkgSSBoYWQgdGhpcyBuYXJyYXRpdmUgcmln
aHQgaW4gdGhpcyBmaWxlIGJ1dCBEYW5pZWwgd2FudGVkIGl0IG1vdmVkIGludG8gaTkxNV9kcm0u
aC4KPgo+IEkgZGlkbid0IHJlYWxseSB1bmRlcnN0YW5kIHRoZSBjb21taXQgbWVzc2FnZSB0byB1
bmRlcnN0YW5kIHdoYXQgd2Fzbid0IHJpZ2h0PwoKU29tZSBjaGFwdGVycyB3ZW50IG1pc3Npbmcs
IGFuZCBpbnN0ZWFkIG9mIGRlZmluaW5nIHRoZSBzYW1lIGNoYXB0ZXJzIGluIG11bHRpcGxlIHBs
YWNlcywgSSBmZWx0IHdlIGNvdWxkIGp1c3QgcmV2ZXJ0IHRoZSBjaGFuZ2UgYW5kIGdldCBpdCBy
aWdodC4KCmluY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaDogKiBET0M6IHVldmVudHMgZ2VuZXJh
dGVkIGJ5IGk5MTUgb24gaXQncyBkZXZpY2Ugbm9kZQppbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJt
Lmg6ICogRE9DOiBwZXJmX2V2ZW50cyBleHBvc2VkIGJ5IGk5MTUgdGhyb3VnaCAvc3lzL2J1cy9l
dmVudF9zb3VyY2VzL2RyaXZlcnMvaTkxNQppbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmg6ICog
RE9DOiBWaXJ0dWFsIEVuZ2luZSB1QVBJCmluY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaDogKiBE
T0M6IENvbnRleHQgRW5naW5lIE1hcCB1QVBJCmluY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaDog
KiBET0M6IEVuZ2luZSBEaXNjb3ZlcnkgdUFQSQoKWW91IGFkZGVkIHRoZSBsYXN0IDMsIGJ1dCBm
b3Jnb3QgdGhlIGZpcnN0IDIuIFNpbmNlIHJlbW92aW5nIHdvcmtlZCwgSSBmZWx0IHdlIGNvdWxk
IGp1c3QgbGVhdmUgaXQgYXQgdGhhdC4gOikKCk5vIG5lZWQgdG8gZGVmaW5lIHR3aWNlLgoKPj4g
LWk5MTVfZHJtLmgKPj4gLS0tLS0tLS0tLS0KPj4gwqAgLi4ga2VybmVsLWRvYzo6IGluY2x1ZGUv
dWFwaS9kcm0vaTkxNV9kcm0uaAo+PiAtwqDCoCA6aW50ZXJuYWw6Cj4KPiBUaGlzIG9uZSBJIGFk
ZGVkIHRvIGF2b2lkIGR1cGxpY2F0ZSBzZWN0aW9ucy4gSXQgd29uJ3QgYmUgYSBwcm9ibGVtIGlm
IHRoZXkgYXJlIG5vdCByZWZlcmVuY2VkIGZyb20gZHJpdmVyLXVhcGkucnN0IHRob3VnaC4gCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
