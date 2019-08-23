Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C6B9B389
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 17:39:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8828A6ECCE;
	Fri, 23 Aug 2019 15:39:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACA006ECCE
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 15:39:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 08:39:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,421,1559545200"; d="scan'208";a="203800940"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2019 08:39:10 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190823020909.6029-1-daniele.ceraolospurio@intel.com>
 <156654524525.27716.6405573408447860616@skylake-alporthouse-com>
 <156657036871.27716.10415431163024851672@skylake-alporthouse-com>
 <d34b64fd-4ece-ffea-6ab3-0ef1dbaf5ce1@intel.com>
 <156657304893.4019.6114530226750288695@skylake-alporthouse-com>
 <156657412207.4019.2312887558171300172@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <f8bd967c-de26-730b-9871-ec918279e06b@intel.com>
Date: Fri, 23 Aug 2019 08:39:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156657412207.4019.2312887558171300172@skylake-alporthouse-com>
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

CgpPbiA4LzIzLzE5IDg6MjggQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIENocmlz
IFdpbHNvbiAoMjAxOS0wOC0yMyAxNjoxMDo0OCkKPj4gUXVvdGluZyBEYW5pZWxlIENlcmFvbG8g
U3B1cmlvICgyMDE5LTA4LTIzIDE2OjA1OjQ1KQo+Pj4KPj4+Cj4+PiBPbiA4LzIzLzE5IDc6MjYg
QU0sIENocmlzIFdpbHNvbiB3cm90ZToKPj4+PiBRdW90aW5nIENocmlzIFdpbHNvbiAoMjAxOS0w
OC0yMyAwODoyNzoyNSkKPj4+Pj4gUXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5
LTA4LTIzIDAzOjA5OjA5KQo+Pj4+Pj4gVEdMIGhhcyBhbiBpbXByb3ZlZCBDUyBwcmUtcGFyc2Vy
IHRoYXQgY2FuIG5vdyBwcmUtZmV0Y2ggY29tbWFuZHMgYWNyb3NzCj4+Pj4+PiBiYXRjaCBib3Vu
ZGFyaWVzLiBUaGlzIGltcHJvdmVzIHBlcmZvcm1hbmNlcyB3aGVuIGxvdHMgb2Ygc21hbGwgYmF0
Y2hlcwo+Pj4+Pj4gYXJlIHVzZWQsIGJ1dCBoYXMgYW4gaW1wYWN0IG9uIHNlbGYtbW9kaWZ5aW5n
IGNvZGUuIElmIHdlIHdhbnQgdG8gbW9kaWZ5Cj4+Pj4+PiB0aGUgY29udGVudCBvZiBhIGJhdGNo
IGZyb20gYW5vdGhlciByaW5nL2JhdGNoLCB3ZSBuZWVkIHRvIGVpdGhlcgo+Pj4+Pj4gZ3VhcmFu
dGVlIHRoYXQgdGhlIG1lbW9yeSBsb2NhdGlvbiBpcyB1cGRhdGVkIGJlZm9yZSB0aGUgcHJlLXBh
cnNlciBnZXRzCj4+Pj4+PiB0byBpdCBvciB3ZSBuZWVkIHRvIHR1cm4gdGhlIHByZS1wYXJzZXIg
b2ZmIGFyb3VuZCB0aGUgbW9kaWZpY2F0aW9uLgo+Pj4+Pj4gSW4gaTkxNSwgd2UgdXNlIHNlbGYt
bW9kaWZ5aW5nIGNvZGUgb25seSBmb3IgR1BVIHJlbG9jYXRpb25zLgo+Pj4+Pj4KPj4+Pj4+IFRo
ZSBwcmUtcGFyc2VyIGZldGNoZXMgYWNyb3NzIG1lbW9yeSBzeW5jaHJvbml6YXRpb24gY29tbWFu
ZHMgYXMgd2VsbCwKPj4+Pj4+IHNvIHRoZSBvbmx5IHdheSB0byBndWFyYW50ZWUgdGhhdCB0aGUg
d3JpdGVzIGxhbmQgYmVmb3JlIHRoZSBwYXJzZXIgZ2V0cwo+Pj4+Pj4gdG8gaXQgaXMgdG8gaGF2
ZSBtb3JlIGluc3RydWN0aW9ucyBiZXR3ZWVuIHRoZSBzeW5jIGFuZCB0aGUgZGVzdGluYXRpb24K
Pj4+Pj4+IHRoYW4gdGhlIHBhcnNlciBGSUZPIGRlcHRoLCB3aGljaCBpcyBub3QgYW4gb3B0aW1h
bCBzb2x1dGlvbi4KPj4+Pj4KPj4+Pj4gV2VsbCwgb3VyIEFCSSBpcyB0aGF0IG1lbW9yeSBpcyBj
b2hlcmVudCBiZWZvcmUgdGhlIGJyZWFkY3J1bWIgb2YgKmVhY2gqCj4+Pj4+IGJhdGNoLiBUaGF0
IGlzIGEgZnVuZGFtZW50YWwgcmVxdWlyZW1lbnQgZm9yIG91ciBzaWduYWxpbmcgdG8gdXNlcnNw
YWNlLgo+Pj4+PiBQbGVhc2UgdGVsbCBtZSB0aGF0IHRoZXJlIGlzIGEgY29udGV4dCBmbGFnIHRv
IHR1cm4gdGhpcyBvZmYsIG9yIHdlIGVsc2UKPj4+Pj4gd2UgbmVlZCB0byBlbWl0IDMyeCBmbHVz
aGVzIG9yIHdoYXRldmVyIGl0IHRha2VzLgo+Pj4+Cj4+PiBBcmUgeW91IHJlZmVycmluZyB0byB0
aGUgc3BlY2lmaWMgY2FzZSB3aGVyZSB3ZSBoYXZlIGEgcmVxdWVzdCBtb2RpZnlpbmcKPj4+IGFu
IG9iamVjdCB0aGF0IGlzIHRoZW4gdXNlZCBhcyBhIGJhdGNoIGluIHRoZSBuZXh0IHJlcXVlc3Q/
IEJlY2F1c2UKPj4+IGNvaGVyZW5jeSBvZiBvYmplY3RzIHRoYXQgYXJlIG5vdCBleGVjdXRlZCBh
cyBiYXRjaGVzIGlzIG5vdCBpbXBhY3RlZC4KPj4KPj4gIkZldGNoZXMgYWNyb3NzIG1lbW9yeSBz
eW5jIiBzb3VuZHMgbGlrZSBhIG1ham9yIEFCSSBicmVhay4gVGhlIGJhdGNoZXMKPj4gYXJlIGEg
aGFyZCBzZXJpYWxpc2F0aW9uIGJhcnJpZXIsIHdpdGggbWVtb3J5IGNvaGVyZW5jeSBndWFyYW50
ZWVkIHByaW9yCj4+IHRvIHRoZSBzaWduYWxpbmcgYXQgdGhlIGVuZCBvZiBvbmUgYmF0Y2ggYW5k
IGNsZWFyIGNhY2hlcyBndWFyYW50ZWVkIGF0Cj4+IHRoZSBzdGFydCBvZiB0aGUgbmV4dC4KPiAK
PiBXZSBoYXZlIHJlbG9jcywgb2EgYW5kIHNzZXUgYWxsIHVzaW5nIHNlbGYtbW9kaWZ5aW5nIGNv
ZGUuIEkgZXhwZWN0IHdlCj4gd2lsbCBoYXZlIFBURSBtb2RpZmljYXRpb25zIGFuZCBtdWNoIG1v
cmUgZG9uZSB2aWEgdGhlIEdQVSBpbiB0aGUgbmVhcgo+IGZ1dHVyZS4gQWxsIHJlbHkgb24gdGhl
IENTX1NUQUxMIGRvaW5nIGV4YWN0bHkgd2hhdCBpdCBzYXlzIG9uIHRoZSB0aW4uCj4gLUNocmlz
Cj4gCgpJIGd1ZXNzIHRoZSBlYXNpZXN0IHNvbHV0aW9uIGlzIHRoZW4gdG8ga2VlcCB0aGUgcGFy
c2VyIG9mZiBvdXRzaWRlIG9mIAp1c2VyIGJhdGNoZXMuIFdlIGNhbiBkZWZhdWx0IHRvIG9mZiBh
bmQgdGhlbiByZXN0b3JlIHdoYXQgdGhlIHVzZXIgaGFzIApwcm9ncmFtbWVkIGJlZm9yZSB0aGUg
QkJTVEFSVC4gSXQncyBub3QgYSBicmVhY2ggb2YgY29udHJhY3QgaWYgd2Ugc2F5IAp0aGF0IGlm
IHlvdSBvcHQtaW4gdG8gdGhlIHBhcnNlciB0aGVuIHlvdSBuZWVkIHRvIG1ha2Ugc3VyZSB5b3Vy
IGJhdGNoZXMgCmFyZSBub3Qgc2VsZi1tb2RpZnlpbmcsIHJpZ2h0PwoKQlRXIHRoZSBDU19TVEFM
TCBkb2VzIG5vdCBndWFyYW50ZWUgb24gcHJlLWdlbjEyIGdlbnMgdGhhdCAKc2VsZi1tb2RpZnlp
bmcgY29kZSB3b3JrcyB3aXRoaW4gdGhlIHNhbWUgYmF0Y2gvcmluZyBiZWNhdXNlIHRoZSAKcHJl
LXBhcnNlciBpcyBhbHJlYWR5IHByZS1mZXRjaGluZyBhY3Jvc3MgbWVtb3J5IHN5bmMgcG9pbnRz
LCBpdCBqdXN0IApzdG9wcyBhdCB0aGUgbmV4dCBhcmIgcG9pbnQuCgpEYW5pZWxlCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
