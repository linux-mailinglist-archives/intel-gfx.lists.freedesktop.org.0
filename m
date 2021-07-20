Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E303CF704
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 11:39:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7947189C3F;
	Tue, 20 Jul 2021 09:39:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A1E489C3F
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 09:39:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="210927282"
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="210927282"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 02:39:04 -0700
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="657448790"
Received: from ekearns1-mobl.amr.corp.intel.com (HELO [10.213.195.253])
 ([10.213.195.253])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 02:39:03 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210715120842.806605-1-maarten.lankhorst@linux.intel.com>
 <da8d2b40-bceb-f32e-28bc-8652575835ba@linux.intel.com>
 <9513568f-f635-205d-1970-b65edda7dd6a@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <fb664649-68b7-6daa-9ef8-364e4056b113@linux.intel.com>
Date: Tue, 20 Jul 2021 10:39:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <9513568f-f635-205d-1970-b65edda7dd6a@linux.intel.com>
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIwLzA3LzIwMjEgMTA6MDYsIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+IE9wIDE2LTA3
LTIwMjEgb20gMTU6MDcgc2NocmVlZiBUdnJ0a28gVXJzdWxpbjoKPj4KPj4gT24gMTUvMDcvMjAy
MSAxMzowOCwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+PiBJIG5vdGljZWQgd2hlbiBncmVw
cGluZyBmb3IgRE9DOiB0aGF0IHRob3NlIHdlcmUgZGVmaW5lZAo+Pj4gaW4gdGhlIGhlYWRlciwg
YnV0IG5vdCBhY3R1YWxseSB1c2VkLiBGaXggaXQgYnkgcmVtb3ZpbmcKPj4+IGFsbCBjaGFwdGVy
cyBhbmQgdGhlIGludGVybmFsIGFubm90YXRpb24sIHNvIHRoZSBkb2Nib29rCj4+PiBnZW5lcmF0
ZWQgY2hhcHRlcnMgYXJlIHVzZWQuCj4+Pgo+Pj4gQ2hhbmdlcyBzaW5jZSB2MToKPj4+IC0gSnVz
dCByZW1vdmUgdGhlIGNoYXB0ZXJzLCBubyBuZWVkIGZvciB0aG9zZS4KPj4+Cj4+PiBTaWduZWQt
b2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwu
Y29tPgo+Pj4gTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21z
Z2lkLzIwMjEwNzA5MTEzODQyLjY1MTE0MC0xLW1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVs
LmNvbQo+Pj4gLS0tCj4+PiAgwqAgRG9jdW1lbnRhdGlvbi9ncHUvZHJpdmVyLXVhcGkucnN0IHwg
MjEgLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+PiAgwqAgMSBmaWxlIGNoYW5nZWQsIDIxIGRlbGV0
aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2dwdS9kcml2ZXItdWFw
aS5yc3QgYi9Eb2N1bWVudGF0aW9uL2dwdS9kcml2ZXItdWFwaS5yc3QKPj4+IGluZGV4IDI3ZDBm
YmUzM2U4Ny4uNDQxMWU2OTE5YTNkIDEwMDY0NAo+Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9ncHUv
ZHJpdmVyLXVhcGkucnN0Cj4+PiArKysgYi9Eb2N1bWVudGF0aW9uL2dwdS9kcml2ZXItdWFwaS5y
c3QKPj4+IEBAIC01LDI1ICs1LDQgQEAgRFJNIERyaXZlciB1QVBJCj4+PiAgwqAgZHJtL2k5MTUg
dUFQSQo+Pj4gIMKgID09PT09PT09PT09PT0KPj4+ICDCoCAtRW5naW5lIERpc2NvdmVyeSB1QVBJ
Cj4+PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+PiAtCj4+PiAtLi4ga2VybmVsLWRvYzo6IGlu
Y2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAo+Pj4gLcKgwqAgOmRvYzogRW5naW5lIERpc2NvdmVy
eSB1QVBJCj4+PiAtCj4+PiAtQ29udGV4dCBFbmdpbmUgTWFwIHVBUEkKPj4+IC0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQo+Pj4gLQo+Pj4gLS4uIGtlcm5lbC1kb2M6OiBpbmNsdWRlL3VhcGkvZHJt
L2k5MTVfZHJtLmgKPj4+IC3CoMKgIDpkb2M6IENvbnRleHQgRW5naW5lIE1hcCB1QVBJCj4+PiAt
Cj4+PiAtVmlydHVhbCBFbmdpbmUgdUFQSQo+Pj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4+IC0K
Pj4+IC0uLiBrZXJuZWwtZG9jOjogaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oCj4+PiAtwqDC
oCA6ZG9jOiBWaXJ0dWFsIEVuZ2luZSB1QVBJCj4+PiAtCj4+Cj4+IEhtbSBteSBpZGVhIHdhcyB0
byBoYXZlIHRoZSBhYm92ZSB0aHJlZSBsYWlkIG91dCBzZXF1ZW50aWFsbHkgaW4gdGhlIGRvYyBz
byB0aGUgbmFycmF0aXZlIG1ha2VzIHNlbnNlLiBPdGhlcndpc2UgdGhleSBhcmUgYXQgcmFuZG9t
IGxvY2F0aW9ucyBpbiBpOTE1X2RybS5oIHNvIHJlYWRlciBjYW5ub3QgZ2V0IHRoZSBuaWNlIHN0
b3J5IGFyb3VuZCBoaWdoIGxldmVsIG9wZXJhdGlvbiBhbmQgaW50ZXJhY3Rpb25zIGJldHdlZW4g
dGhlbi4gSW5pdGlhbGx5IEkgaGFkIHRoaXMgbmFycmF0aXZlIHJpZ2h0IGluIHRoaXMgZmlsZSBi
dXQgRGFuaWVsIHdhbnRlZCBpdCBtb3ZlZCBpbnRvIGk5MTVfZHJtLmguCj4+Cj4+IEkgZGlkbid0
IHJlYWxseSB1bmRlcnN0YW5kIHRoZSBjb21taXQgbWVzc2FnZSB0byB1bmRlcnN0YW5kIHdoYXQg
d2Fzbid0IHJpZ2h0Pwo+IAo+IFNvbWUgY2hhcHRlcnMgd2VudCBtaXNzaW5nLCBhbmQgaW5zdGVh
ZCBvZiBkZWZpbmluZyB0aGUgc2FtZSBjaGFwdGVycyBpbiBtdWx0aXBsZSBwbGFjZXMsIEkgZmVs
dCB3ZSBjb3VsZCBqdXN0IHJldmVydCB0aGUgY2hhbmdlIGFuZCBnZXQgaXQgcmlnaHQuCj4gCj4g
aW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oOiAqIERPQzogdWV2ZW50cyBnZW5lcmF0ZWQgYnkg
aTkxNSBvbiBpdCdzIGRldmljZSBub2RlCj4gaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oOiAq
IERPQzogcGVyZl9ldmVudHMgZXhwb3NlZCBieSBpOTE1IHRocm91Z2ggL3N5cy9idXMvZXZlbnRf
c291cmNlcy9kcml2ZXJzL2k5MTUKPiBpbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmg6ICogRE9D
OiBWaXJ0dWFsIEVuZ2luZSB1QVBJCj4gaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oOiAqIERP
QzogQ29udGV4dCBFbmdpbmUgTWFwIHVBUEkKPiBpbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmg6
ICogRE9DOiBFbmdpbmUgRGlzY292ZXJ5IHVBUEkKPiAKPiBZb3UgYWRkZWQgdGhlIGxhc3QgMywg
YnV0IGZvcmdvdCB0aGUgZmlyc3QgMi4gU2luY2UgcmVtb3Zpbmcgd29ya2VkLCBJIGZlbHQgd2Ug
Y291bGQganVzdCBsZWF2ZSBpdCBhdCB0aGF0LiA6KQoKSG1tLi4gSSB0aG91Z2h0IHRoZSAiOmlu
dGVybmFsOiIga2V5d29yZCB3aWxsIGF2b2lkIGR1cGxpY2F0aW5nIGNoYXB0ZXJzIAp3aGljaCB3
ZXJlIGV4dGVybmFsbHkgcmVmZXJlbmNlZCBidXQgaXQgc2VlbXMgaXQncyBub3Qgd2hhdCBpdCBk
b2VzLgoKTm8gaWRlYSB0aGVuIGhvdyB0byBkbyB3aGF0IEkgd2FudC4gRG9jcyBhcmUgYSBiaXQg
aGFyZCB0byBmaW5kIGZvciBzb21lIApvZiB0aGlzLiBPaCB3ZWxsLi4KCkkgY291bGQgcHVsbCBt
eSBjaGFwdGVycyBiYWNrIG91dCBidXQgRGFuaWVsIGV4cGxpY2l0bHkgd2FudGVkIHRoZW0gaW4g
Cmk5MTVfZHJtLmggc28gSSBkb24ndCBzZWUgYSB3YXkgdG8gcmVjb25jaWxlIGJvdGggbWluZSBh
bmQgaGlzIHdpc2hlcyAKaGVyZS4gU28gaXQgY2FuIHN0YXkgYSBiaXQgb2YgYSBtZXNzLgoKUmVn
YXJkcywKClR2cnRrbwoKPiBObyBuZWVkIHRvIGRlZmluZSB0d2ljZS4KPiAKPj4+IC1pOTE1X2Ry
bS5oCj4+PiAtLS0tLS0tLS0tLQo+Pj4gIMKgIC4uIGtlcm5lbC1kb2M6OiBpbmNsdWRlL3VhcGkv
ZHJtL2k5MTVfZHJtLmgKPj4+IC3CoMKgIDppbnRlcm5hbDoKPj4KPj4gVGhpcyBvbmUgSSBhZGRl
ZCB0byBhdm9pZCBkdXBsaWNhdGUgc2VjdGlvbnMuIEl0IHdvbid0IGJlIGEgcHJvYmxlbSBpZiB0
aGV5IGFyZSBub3QgcmVmZXJlbmNlZCBmcm9tIGRyaXZlci11YXBpLnJzdCB0aG91Z2guCj4gCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
