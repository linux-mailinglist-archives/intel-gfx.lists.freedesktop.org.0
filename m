Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 966A99B2FA
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 17:05:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 002EA6ECBF;
	Fri, 23 Aug 2019 15:05:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C3276ECBF
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 15:05:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 08:05:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,421,1559545200"; d="scan'208";a="203791814"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2019 08:05:41 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190823020909.6029-1-daniele.ceraolospurio@intel.com>
 <156654524525.27716.6405573408447860616@skylake-alporthouse-com>
 <156657036871.27716.10415431163024851672@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <d34b64fd-4ece-ffea-6ab3-0ef1dbaf5ce1@intel.com>
Date: Fri, 23 Aug 2019 08:05:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156657036871.27716.10415431163024851672@skylake-alporthouse-com>
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

CgpPbiA4LzIzLzE5IDc6MjYgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIENocmlz
IFdpbHNvbiAoMjAxOS0wOC0yMyAwODoyNzoyNSkKPj4gUXVvdGluZyBEYW5pZWxlIENlcmFvbG8g
U3B1cmlvICgyMDE5LTA4LTIzIDAzOjA5OjA5KQo+Pj4gVEdMIGhhcyBhbiBpbXByb3ZlZCBDUyBw
cmUtcGFyc2VyIHRoYXQgY2FuIG5vdyBwcmUtZmV0Y2ggY29tbWFuZHMgYWNyb3NzCj4+PiBiYXRj
aCBib3VuZGFyaWVzLiBUaGlzIGltcHJvdmVzIHBlcmZvcm1hbmNlcyB3aGVuIGxvdHMgb2Ygc21h
bGwgYmF0Y2hlcwo+Pj4gYXJlIHVzZWQsIGJ1dCBoYXMgYW4gaW1wYWN0IG9uIHNlbGYtbW9kaWZ5
aW5nIGNvZGUuIElmIHdlIHdhbnQgdG8gbW9kaWZ5Cj4+PiB0aGUgY29udGVudCBvZiBhIGJhdGNo
IGZyb20gYW5vdGhlciByaW5nL2JhdGNoLCB3ZSBuZWVkIHRvIGVpdGhlcgo+Pj4gZ3VhcmFudGVl
IHRoYXQgdGhlIG1lbW9yeSBsb2NhdGlvbiBpcyB1cGRhdGVkIGJlZm9yZSB0aGUgcHJlLXBhcnNl
ciBnZXRzCj4+PiB0byBpdCBvciB3ZSBuZWVkIHRvIHR1cm4gdGhlIHByZS1wYXJzZXIgb2ZmIGFy
b3VuZCB0aGUgbW9kaWZpY2F0aW9uLgo+Pj4gSW4gaTkxNSwgd2UgdXNlIHNlbGYtbW9kaWZ5aW5n
IGNvZGUgb25seSBmb3IgR1BVIHJlbG9jYXRpb25zLgo+Pj4KPj4+IFRoZSBwcmUtcGFyc2VyIGZl
dGNoZXMgYWNyb3NzIG1lbW9yeSBzeW5jaHJvbml6YXRpb24gY29tbWFuZHMgYXMgd2VsbCwKPj4+
IHNvIHRoZSBvbmx5IHdheSB0byBndWFyYW50ZWUgdGhhdCB0aGUgd3JpdGVzIGxhbmQgYmVmb3Jl
IHRoZSBwYXJzZXIgZ2V0cwo+Pj4gdG8gaXQgaXMgdG8gaGF2ZSBtb3JlIGluc3RydWN0aW9ucyBi
ZXR3ZWVuIHRoZSBzeW5jIGFuZCB0aGUgZGVzdGluYXRpb24KPj4+IHRoYW4gdGhlIHBhcnNlciBG
SUZPIGRlcHRoLCB3aGljaCBpcyBub3QgYW4gb3B0aW1hbCBzb2x1dGlvbi4KPj4KPj4gV2VsbCwg
b3VyIEFCSSBpcyB0aGF0IG1lbW9yeSBpcyBjb2hlcmVudCBiZWZvcmUgdGhlIGJyZWFkY3J1bWIg
b2YgKmVhY2gqCj4+IGJhdGNoLiBUaGF0IGlzIGEgZnVuZGFtZW50YWwgcmVxdWlyZW1lbnQgZm9y
IG91ciBzaWduYWxpbmcgdG8gdXNlcnNwYWNlLgo+PiBQbGVhc2UgdGVsbCBtZSB0aGF0IHRoZXJl
IGlzIGEgY29udGV4dCBmbGFnIHRvIHR1cm4gdGhpcyBvZmYsIG9yIHdlIGVsc2UKPj4gd2UgbmVl
ZCB0byBlbWl0IDMyeCBmbHVzaGVzIG9yIHdoYXRldmVyIGl0IHRha2VzLgo+IApBcmUgeW91IHJl
ZmVycmluZyB0byB0aGUgc3BlY2lmaWMgY2FzZSB3aGVyZSB3ZSBoYXZlIGEgcmVxdWVzdCBtb2Rp
ZnlpbmcgCmFuIG9iamVjdCB0aGF0IGlzIHRoZW4gdXNlZCBhcyBhIGJhdGNoIGluIHRoZSBuZXh0
IHJlcXVlc3Q/IEJlY2F1c2UgCmNvaGVyZW5jeSBvZiBvYmplY3RzIHRoYXQgYXJlIG5vdCBleGVj
dXRlZCBhcyBiYXRjaGVzIGlzIG5vdCBpbXBhY3RlZC4KCj4gU28gbG9va2luZyBhdCB3aGF0IHlv
dSBhcmUgZG9pbmcsIGl0IHNlZW1zIGVudGlyZWx5IHBvc3NpYmxlIHRoYXQgd2UgY2FuCj4gc3dp
dGNoIG9mZiB0aGUgcHJlcGFyc2VyIGZvciB0aGUgYnJlYWRjcnVtYiAtLSBpcyB0aGF0IGVub3Vn
aCB0byBtYWtlCj4gdGhhdCBmaW5hbCBzaWduYWwgY29oZXJlbnQgYW5kIHByb3ZpZGUgdGhlIGJh
cnJpZXIgcmVxdWlyZWQgZm9yIHRoZQo+IGludmFsaWRhdGlvbiBhdCB0aGUgc3RhcnQgb2YgdGhl
IG5leHQ/IChZb3UgbWlnaHQgZXZlbiBvbmx5IGVuYWJsZSB0aGUKPiBwcmVwYXJzZXIgYXJvdW5k
IHVzZXJzcGFjZSBiYXRjaGVzLikgT3IgSSBob3BlIHRoZXkgaGF2ZSBhbiBleHRyYSBmbHVzaAo+
IGJpdCBmb3IgY29ycmVjdCBzZXJpYWxpc2F0aW9uLgoKVGhlIGluc3RydWN0aW9ucyBJIGdvdCBm
cm9tIHRoZSBIVyB0ZWFtIG9uIGhvdyB0byBoYW5kbGUgdGhlIApzZWxmLW1vZGlmeWluZyBjb2Rl
IHNheSB0aGF0IHRoZSBwcmUtcGFyc2VyIG11c3QgYmUgZGlzYWJsZWQgYmVmb3JlIHRoZSAKd3Jp
dGUgaXMgZW1pdHRlZCBhbmQgcmUtZW5hYmxlZCBhZnRlcndhcmQsIHNvIEknbSBub3Qgc3VyZSBp
ZiBoYXZpbmcgaXQgCm9mZiBqdXN0IGFyb3VuZCB0aGUgYnJlYWRjcnVtYiBpcyBlbm91Z2gsIHdl
IG1pZ2h0IG5lZWQgYW5kIGV4dHJhIApCQlNUQVJUIGluIHRoZSBicmVhZGNydW1iIHRvIGZsdXNo
IHRoZSBwYXJzZXIgc3RhdHVzLiBTaG91bGQgd2UganVzdCAKa2VlcCB0aGUgcGFyc2VyIG9mZiBi
eSBkZWZhdWx0IGFuZCBoYXZlIHRoZSB1c2Vyc3BhY2UgYXBwIG9wdC1pbiAodmlhIAphbmQgQVJC
X0NIRUNLIGluIHRoZSBiYXRjaCkgaWYgdGhleSBrbm93IHRoZXkgY2FuIGhhbmRsZSBpdD8KCkRh
bmllbGUKCj4gLUNocmlzCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
