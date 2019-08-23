Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE539B500
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 19:01:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E37C6ECFA;
	Fri, 23 Aug 2019 17:01:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A1A96ECFA
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 17:00:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 10:00:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,422,1559545200"; d="scan'208";a="203823322"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2019 10:00:59 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190823020909.6029-1-daniele.ceraolospurio@intel.com>
 <156654524525.27716.6405573408447860616@skylake-alporthouse-com>
 <156657036871.27716.10415431163024851672@skylake-alporthouse-com>
 <d34b64fd-4ece-ffea-6ab3-0ef1dbaf5ce1@intel.com>
 <156657304893.4019.6114530226750288695@skylake-alporthouse-com>
 <156657412207.4019.2312887558171300172@skylake-alporthouse-com>
 <f8bd967c-de26-730b-9871-ec918279e06b@intel.com>
 <156657556096.4019.5895875072663620308@skylake-alporthouse-com>
 <db509eba-c142-1cc1-9e84-e5af15df4212@intel.com>
 <156657789715.4019.2928233627730037459@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <fb592c6b-6541-bb95-d1af-77f84afad191@intel.com>
Date: Fri, 23 Aug 2019 10:01:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156657789715.4019.2928233627730037459@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC] drm/i915/tgl: Advanced preparser support for
 GPU relocs
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

CgpPbiA4LzIzLzE5IDk6MzEgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIERhbmll
bGUgQ2VyYW9sbyBTcHVyaW8gKDIwMTktMDgtMjMgMTY6NTY6NTQpCj4+Cj4+Cj4+IE9uIDgvMjMv
MTkgODo1MiBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+Pj4gUXVvdGluZyBEYW5pZWxlIENlcmFv
bG8gU3B1cmlvICgyMDE5LTA4LTIzIDE2OjM5OjE0KQo+Pj4+Cj4+Pj4KPj4+PiBPbiA4LzIzLzE5
IDg6MjggQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPj4+Pj4gUXVvdGluZyBDaHJpcyBXaWxzb24g
KDIwMTktMDgtMjMgMTY6MTA6NDgpCj4+Pj4+PiBRdW90aW5nIERhbmllbGUgQ2VyYW9sbyBTcHVy
aW8gKDIwMTktMDgtMjMgMTY6MDU6NDUpCj4+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+IE9uIDgvMjMv
MTkgNzoyNiBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+Pj4+Pj4+PiBRdW90aW5nIENocmlzIFdp
bHNvbiAoMjAxOS0wOC0yMyAwODoyNzoyNSkKPj4+Pj4+Pj4+IFF1b3RpbmcgRGFuaWVsZSBDZXJh
b2xvIFNwdXJpbyAoMjAxOS0wOC0yMyAwMzowOTowOSkKPj4+Pj4+Pj4+PiBUR0wgaGFzIGFuIGlt
cHJvdmVkIENTIHByZS1wYXJzZXIgdGhhdCBjYW4gbm93IHByZS1mZXRjaCBjb21tYW5kcyBhY3Jv
c3MKPj4+Pj4+Pj4+PiBiYXRjaCBib3VuZGFyaWVzLiBUaGlzIGltcHJvdmVzIHBlcmZvcm1hbmNl
cyB3aGVuIGxvdHMgb2Ygc21hbGwgYmF0Y2hlcwo+Pj4+Pj4+Pj4+IGFyZSB1c2VkLCBidXQgaGFz
IGFuIGltcGFjdCBvbiBzZWxmLW1vZGlmeWluZyBjb2RlLiBJZiB3ZSB3YW50IHRvIG1vZGlmeQo+
Pj4+Pj4+Pj4+IHRoZSBjb250ZW50IG9mIGEgYmF0Y2ggZnJvbSBhbm90aGVyIHJpbmcvYmF0Y2gs
IHdlIG5lZWQgdG8gZWl0aGVyCj4+Pj4+Pj4+Pj4gZ3VhcmFudGVlIHRoYXQgdGhlIG1lbW9yeSBs
b2NhdGlvbiBpcyB1cGRhdGVkIGJlZm9yZSB0aGUgcHJlLXBhcnNlciBnZXRzCj4+Pj4+Pj4+Pj4g
dG8gaXQgb3Igd2UgbmVlZCB0byB0dXJuIHRoZSBwcmUtcGFyc2VyIG9mZiBhcm91bmQgdGhlIG1v
ZGlmaWNhdGlvbi4KPj4+Pj4+Pj4+PiBJbiBpOTE1LCB3ZSB1c2Ugc2VsZi1tb2RpZnlpbmcgY29k
ZSBvbmx5IGZvciBHUFUgcmVsb2NhdGlvbnMuCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBUaGUgcHJl
LXBhcnNlciBmZXRjaGVzIGFjcm9zcyBtZW1vcnkgc3luY2hyb25pemF0aW9uIGNvbW1hbmRzIGFz
IHdlbGwsCj4+Pj4+Pj4+Pj4gc28gdGhlIG9ubHkgd2F5IHRvIGd1YXJhbnRlZSB0aGF0IHRoZSB3
cml0ZXMgbGFuZCBiZWZvcmUgdGhlIHBhcnNlciBnZXRzCj4+Pj4+Pj4+Pj4gdG8gaXQgaXMgdG8g
aGF2ZSBtb3JlIGluc3RydWN0aW9ucyBiZXR3ZWVuIHRoZSBzeW5jIGFuZCB0aGUgZGVzdGluYXRp
b24KPj4+Pj4+Pj4+PiB0aGFuIHRoZSBwYXJzZXIgRklGTyBkZXB0aCwgd2hpY2ggaXMgbm90IGFu
IG9wdGltYWwgc29sdXRpb24uCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gV2VsbCwgb3VyIEFCSSBpcyB0
aGF0IG1lbW9yeSBpcyBjb2hlcmVudCBiZWZvcmUgdGhlIGJyZWFkY3J1bWIgb2YgKmVhY2gqCj4+
Pj4+Pj4+PiBiYXRjaC4gVGhhdCBpcyBhIGZ1bmRhbWVudGFsIHJlcXVpcmVtZW50IGZvciBvdXIg
c2lnbmFsaW5nIHRvIHVzZXJzcGFjZS4KPj4+Pj4+Pj4+IFBsZWFzZSB0ZWxsIG1lIHRoYXQgdGhl
cmUgaXMgYSBjb250ZXh0IGZsYWcgdG8gdHVybiB0aGlzIG9mZiwgb3Igd2UgZWxzZQo+Pj4+Pj4+
Pj4gd2UgbmVlZCB0byBlbWl0IDMyeCBmbHVzaGVzIG9yIHdoYXRldmVyIGl0IHRha2VzLgo+Pj4+
Pj4+Pgo+Pj4+Pj4+IEFyZSB5b3UgcmVmZXJyaW5nIHRvIHRoZSBzcGVjaWZpYyBjYXNlIHdoZXJl
IHdlIGhhdmUgYSByZXF1ZXN0IG1vZGlmeWluZwo+Pj4+Pj4+IGFuIG9iamVjdCB0aGF0IGlzIHRo
ZW4gdXNlZCBhcyBhIGJhdGNoIGluIHRoZSBuZXh0IHJlcXVlc3Q/IEJlY2F1c2UKPj4+Pj4+PiBj
b2hlcmVuY3kgb2Ygb2JqZWN0cyB0aGF0IGFyZSBub3QgZXhlY3V0ZWQgYXMgYmF0Y2hlcyBpcyBu
b3QgaW1wYWN0ZWQuCj4+Pj4+Pgo+Pj4+Pj4gIkZldGNoZXMgYWNyb3NzIG1lbW9yeSBzeW5jIiBz
b3VuZHMgbGlrZSBhIG1ham9yIEFCSSBicmVhay4gVGhlIGJhdGNoZXMKPj4+Pj4+IGFyZSBhIGhh
cmQgc2VyaWFsaXNhdGlvbiBiYXJyaWVyLCB3aXRoIG1lbW9yeSBjb2hlcmVuY3kgZ3VhcmFudGVl
ZCBwcmlvcgo+Pj4+Pj4gdG8gdGhlIHNpZ25hbGluZyBhdCB0aGUgZW5kIG9mIG9uZSBiYXRjaCBh
bmQgY2xlYXIgY2FjaGVzIGd1YXJhbnRlZWQgYXQKPj4+Pj4+IHRoZSBzdGFydCBvZiB0aGUgbmV4
dC4KPj4+Pj4KPj4+Pj4gV2UgaGF2ZSByZWxvY3MsIG9hIGFuZCBzc2V1IGFsbCB1c2luZyBzZWxm
LW1vZGlmeWluZyBjb2RlLiBJIGV4cGVjdCB3ZQo+Pj4+PiB3aWxsIGhhdmUgUFRFIG1vZGlmaWNh
dGlvbnMgYW5kIG11Y2ggbW9yZSBkb25lIHZpYSB0aGUgR1BVIGluIHRoZSBuZWFyCj4+Pj4+IGZ1
dHVyZS4gQWxsIHJlbHkgb24gdGhlIENTX1NUQUxMIGRvaW5nIGV4YWN0bHkgd2hhdCBpdCBzYXlz
IG9uIHRoZSB0aW4uCj4+Pj4+IC1DaHJpcwo+Pj4+Pgo+Pj4+Cj4+Pj4gSSBndWVzcyB0aGUgZWFz
aWVzdCBzb2x1dGlvbiBpcyB0aGVuIHRvIGtlZXAgdGhlIHBhcnNlciBvZmYgb3V0c2lkZSBvZgo+
Pj4+IHVzZXIgYmF0Y2hlcy4gV2UgY2FuIGRlZmF1bHQgdG8gb2ZmIGFuZCB0aGVuIHJlc3RvcmUg
d2hhdCB0aGUgdXNlciBoYXMKPj4+PiBwcm9ncmFtbWVkIGJlZm9yZSB0aGUgQkJTVEFSVC4gSXQn
cyBub3QgYSBicmVhY2ggb2YgY29udHJhY3QgaWYgd2Ugc2F5Cj4+Pj4gdGhhdCBpZiB5b3Ugb3B0
LWluIHRvIHRoZSBwYXJzZXIgdGhlbiB5b3UgbmVlZCB0byBtYWtlIHN1cmUgeW91ciBiYXRjaGVz
Cj4+Pj4gYXJlIG5vdCBzZWxmLW1vZGlmeWluZywgcmlnaHQ/Cj4+Pgo+Pj4gSXMgaXQganVzdCB0
aGUgTUlfQVJCX09OT0ZGIGJpdHMsIGFuZCBpcyB0aGF0IHN0aWxsIGEgcHJpdmlsZWdlZAo+Pj4g
Y29tbWFuZD8gaS5lLiBjYW4gdXNlcnNwYWNlIGNoYW5nZSBtb2RlIGJ5IGl0c2VsZiwgb3IgaXQg
aXMgYQo+Pj4gY29udGV4dC1wYXJhbT8KPj4KPj4gSXQncyB0aGUgQVJCX0NIRUNLLCBub3QgdGhl
IEFSQl9PTk9GRiwgc28geWVzLCBpdCBpcyBub3QgcHJpdmlsZWdlZCBhbmQKPj4gdXNlcnNwYWNl
IGNhbiBtb2RpZnkgaXQgaXRzZWxmLiBJdCB3b3VsZCd2ZSBiZWVuIGVhc2llciBpZiBpdCB3YXMg
YQo+PiBjb250ZXh0IHBhcmFtIDopCj4gCj4gRG9lcyBpdCBnbyBhY3Jvc3MgYSBjb250ZXh0IHN3
aXRjaD8gVGhhdCBtaWdodCBiZSBhbiBlYXN5IHNvbHV0aW9uIGZvcgo+IG91ciBpbnRlcm5hbCBy
ZXF1ZXN0cyAoYWxyZWFkeSB0cnVlIGZvciBvYS9zc2V1IHdoZXJlIHdlIHVzZSBvbmUgY29udGV4
dAo+IHRvIG1vZGlmeSBhbm90aGVyKS4gSSBkbyB3b3JyeSB0aG91Z2ggaWYgdGhlcmUgbWlnaHQg
YmUgbGVha2FnZQo+IGFjcm9zcyBvdXIgZmx1c2gtaW52YWxpZGF0ZSBiYXJyaWVycyBiZXR3ZWVu
IHVzZXJzcGFjZSBiYXRjaGVzLgoKVGhlIHByZS1mZXRjaGluZz8gbm8sIEFGQUlLIHRoYXQncyBj
b25maW5lZCB0byB0aGUgY29udGV4dCwgc28gbW92aW5nIAp0aGUgcmVsb2NzIHRvIGFub3RoZXIg
Y29udGV4dCB3b3VsZCB3b3JrOyB0aGUgc3RhdHVzIG9mIHRoZSBwYXJzZXIgaXMgCmFsc28gY3R4
IHNhdmUvcmVzdG9yZWQuIFdoYXQgbGVha2FnZSBjYXNlIGFyZSB5b3Ugd29ycmllZCBhYm91dD8g
VGhlIAptZW1vcnkgc3luY2hyb25pemF0aW9uIGJldHdlZW4gY29udGV4dHMgaXMgdW5jaGFuZ2Vk
LCBhIGNvbnRleHQgY2FuIG9ubHkgCm1lc3MgdXAgaXRzIG93biBpbnN0cnVjdGlvbnMuIEFGQUlV
IHRoZSBvbmx5IHRoaW5nIHRoYXQncyBwb3NzaWJsZSBpcyAKdGhhdCBpZiBhIGJhdGNoIG1vZGlm
aWVzIHRoZSBuZXh0IGJhdGNoIGluIHRoZSBzYW1lIGNvbnRleHQgdGhlbiB0aGUgQ1MgCndvbid0
IHNlZSB0aGUgdXBkYXRlLgoKRGFuaWVsZQoKPiAtQ2hyaXMKPiAKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
