Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C7C39BA7F
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 16:03:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F7C56F5FE;
	Fri,  4 Jun 2021 14:03:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 781B26E059;
 Fri,  4 Jun 2021 14:03:45 +0000 (UTC)
IronPort-SDR: MZQoROx07G/ozK6RDY2EDGU7yOSRmb4HLel9C1Ar1vbP6BCgDIVI14NN3Cl+jL0U0sQhd2BO7A
 XdwPZz/Opqng==
X-IronPort-AV: E=McAfee;i="6200,9189,10004"; a="201275100"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="201275100"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 07:03:43 -0700
IronPort-SDR: Ew1FqcoGE5c/5qbm81e3w61N3YXCw/Qdul+CFkFcX0k+Rg0eVVbJy5cBbrSsMLabb5kAbN7ypf
 zgML+WDK8Dkg==
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="468330568"
Received: from janlundk-mobl1.ger.corp.intel.com (HELO [10.249.254.183])
 ([10.249.254.183])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 07:03:41 -0700
Message-ID: <4e465ada6f8b1a8b76fea782adcf3043630efa5e.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Dave Airlie <airlied@gmail.com>
Date: Fri, 04 Jun 2021 16:03:39 +0200
In-Reply-To: <b81637c8-fd97-0927-f356-51fa98604bd1@gmail.com>
References: <a29eaef9-2457-1393-6757-40956811daf8@linux.intel.com>
 <a6965639-acf6-b5f5-482c-2715e7fa69d4@amd.com>
 <b4c18e45-98c9-ce7f-b22c-c00c795844c2@shipmail.org>
 <baf4f828-76c8-6b47-5bba-9b9c8e7b307b@amd.com>
 <YLfQplT8H6PdCCLX@phenom.ffwll.local>
 <c50fa98f-3735-fe04-d3f9-8a7a08a7562e@linux.intel.com>
 <CAKMK7uE+fB_+UG668O=QMXwQ9_Xb--KhzehT77HLfBoWve-zLg@mail.gmail.com>
 <68e6057c-df17-64ce-3116-cd5e79578795@amd.com>
 <a3f789a0-9e75-280a-7602-4728738024eb@linux.intel.com>
 <YLnuj0jmF8q05pta@phenom.ffwll.local>
 <b81637c8-fd97-0927-f356-51fa98604bd1@gmail.com>
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] Merging TTM branches through the Intel tree?
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIxLTA2LTA0IGF0IDE1OjM4ICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Ogo+IEFtIDA0LjA2LjIxIHVtIDExOjEyIHNjaHJpZWIgRGFuaWVsIFZldHRlcjoKPiA+IE9uIEZy
aSwgSnVuIDA0LCAyMDIxIGF0IDExOjAxOjQwQU0gKzAyMDAsIFRob21hcyBIZWxsc3Ryw7ZtIHdy
b3RlOgo+ID4gPiBPbiA2LzQvMjEgOTo1MSBBTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPiA+
ID4gPiBBbSAwMy4wNi4yMSB1bSAwOTozNiBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4gPiA+ID4g
PiBPbiBUaHUsIEp1biAzLCAyMDIxIGF0IDg6NTAgQU0gVGhvbWFzIEhlbGxzdHLDtm0KPiA+ID4g
PiA+IDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+
IE9uIDYvMi8yMSA4OjQwIFBNLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gPiA+ID4gPiA+IE9u
IFdlZCwgSnVuIDAyLCAyMDIxIGF0IDExOjQ4OjQxQU0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcK
PiA+ID4gPiA+ID4gPiB3cm90ZToKPiA+ID4gPiA+ID4gPiA+IEFtIDAyLjA2LjIxIHVtIDExOjE2
IHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm0gKEludGVsKToKPiA+ID4gPiA+ID4gPiA+ID4gT24g
Ni8yLzIxIDEwOjMyIEFNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4g
PiA+IFVmZiBJJ20ganVzdCB3YWl0aW5nIGZvciBmZWVkYmFjayBmcm9tIFBoaWxpcCB0bwo+ID4g
PiA+ID4gPiA+ID4gPiA+IG1lcmdlIGEgbGFyZ2UgcGF0Y2gKPiA+ID4gPiA+ID4gPiA+ID4gPiBz
ZXQgZm9yIFRUTSB0aHJvdWdoIGRybS1taXNjLW5leHQuCj4gPiA+ID4gPiA+ID4gPiA+ID4gCj4g
PiA+ID4gPiA+ID4gPiA+ID4gSSdtIHByZXR0eSBzdXJlIHdlIHdpbGwgcnVuIGludG8gbWVyZ2Ug
Y29uZmxpY3RzIGlmCj4gPiA+ID4gPiA+ID4gPiA+ID4geW91IHRyeSB0byBwdXNoCj4gPiA+ID4g
PiA+ID4gPiA+ID4geW91ciBjaGFuZ2VzIHRocm91Z2ggdGhlIEludGVsIHRyZWUuCj4gPiA+ID4g
PiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ID4gQ2hyaXN0aWFuLgo+ID4gPiA+ID4gPiA+
ID4gPiBPSywgc28gd2hhdCB3b3VsZCBiZSB0aGUgYmVzdCBhcHByb2FjaCBoZXJlPywgQWRkaW5n
Cj4gPiA+ID4gPiA+ID4gPiA+IHRoZSBUVE0gcGF0Y2hlcyB0bwo+ID4gPiA+ID4gPiA+ID4gPiBk
cm0tbWlzYy1uZXh0IHdoZW4geW91ciBzZXQgaGFzIGxhbmRlZD8KPiA+ID4gPiA+ID4gPiA+IEkg
dGhpbmsgSSB3aWxsIHNlbmQgb3V0IG91dCBteSBzZXQgdG8gTWF0dGhldyBvbmNlIG1vcmUKPiA+
ID4gPiA+ID4gPiA+IGZvciByZXZpZXcsIHRoZW4KPiA+ID4gPiA+ID4gPiA+IHB1c2ggdGhlIGNv
bW1vbiBUVE0gc3R1ZmYgdG8gZHJtLW1pc2MtbmV4dCBhcyBtdWNoIGFzCj4gPiA+ID4gPiA+ID4g
PiBwb3NzaWJsZS4KPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gVGhlbiB5b3Ugc2hv
dWxkIGJlIGFibGUgdG8gbGFuZCB5b3VyIHN0dWZmIHRvCj4gPiA+ID4gPiA+ID4gPiBkcm0tbWlz
Yy1uZXh0IGFuZCByZWJhc2Ugb24KPiA+ID4gPiA+ID4gPiA+IHRoZSBlbmQgcmVzdWx0Lgo+ID4g
PiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiBKdXN0IG5lZWQgdG8gbm90ZSB0byBEYXZpZCB0
aGF0IGRybS1taXNjLW5leHQgc2hvdWxkIGJlCj4gPiA+ID4gPiA+ID4gPiBtZXJnZWQgdG8gZHJt
LW5leHQKPiA+ID4gPiA+ID4gPiA+IGJlZm9yZSB0aGUgSW50ZWwgcGF0Y2hlcyBkZXBlbmRpbmcg
b24gdGhhdCBzdHVmZiBsYW5kCj4gPiA+ID4gPiA+ID4gPiBhcyB3ZWxsLgo+ID4gPiA+ID4gPiA+
IE90aGVyIG9wdGlvbiAoYmVjYXVzZSB0aGUgYmFja21lcmdlcyB0ZW5kIHRvIGJlIHNsb3cpIGlz
Cj4gPiA+ID4gPiA+ID4gYQo+ID4gPiA+ID4gPiA+IHRvcGljIGJyYW5jaCwKPiA+ID4gPiA+ID4g
PiBhbmQgd2UganVzdCBlYXQvcmVzb2x2ZSB0aGUgY29uZmxpY3RzIGluIGJvdGggZHJtLW1pc2Mt
Cj4gPiA+ID4gPiA+ID4gbmV4dCBhbmQKPiA+ID4gPiA+ID4gPiBkcm0taW50ZWwtZ3QtbmV4dCBp
biB0aGUgbWVyZ2UgY29tbWl0LiBJZiBpdCdzIG5vdCB0b28KPiA+ID4gPiA+ID4gPiBiYWQgKEkg
aGF2ZW4ndAo+ID4gPiA+ID4gPiA+IGxvb2tlZCBhdCB3aGF0IGV4YWN0bHkgd2UgbmVlZCBmb3Ig
dGhlIGk5MTUgc2lkZSBmcm9tIHR0bQo+ID4gPiA+ID4gPiA+IGluIGRldGFpbCkuCj4gPiA+ID4g
PiA+ID4gCj4gPiA+ID4gPiA+ID4gQnV0IGFsc28gb2Z0ZW4gZmlndXJpbmcgb3V0IHRoZSB0b3Bp
YyBicmFuY2ggbG9naXN0aWNzCj4gPiA+ID4gPiA+ID4gdGFrZXMKPiA+ID4gPiA+ID4gPiBsb25n
ZXIgdGhhbgo+ID4gPiA+ID4gPiA+IGp1c3QgbWVyZ2luZyB0byBkcm0tbWlzYy1uZXh0IGFzIHRo
ZSBwYXRjaGVzIGdldCByZWFkeS4KPiA+ID4gPiA+ID4gPiAtRGFuaWVsCj4gPiA+ID4gPiA+IERh
bmllbDogU28gdGhlIHRoaW5nIHdlIG5lZWQgdG8gZ2V0IGludG8gVFRNIGlzIHRoZQo+ID4gPiA+
ID4gPiBpdGVyYXRvci1iYXNlZAo+ID4gPiA+ID4gPiBtb3ZlX21lbWNweSB3aGljaCBpcyBtb3Jl
IGFkYXB0YWJsZSB0aGFuIHRoZSBjdXJyZW50IG9uZQo+ID4gPiA+ID4gPiBhbmQgbmVlZGVkIHRv
Cj4gPiA+ID4gPiA+IHN1cHBvcnQgbm9uLWxpbmVhciBsbWVtIGJ1ZmZlcnMsIHNvbWUgYnVnLWZp
eGVzIGFuZCBtaW5vcgo+ID4gPiA+ID4gPiBjaGFuZ2VzIHRvIGJlCj4gPiA+ID4gPiA+IGFibGUg
dG8ga2VlcCBvdXIgc2hvcnQtdGVybS1waW5uaW5nIHdoaWxlIG9uIHRoZSBMUlUuIEEKPiA+ID4g
PiA+ID4gbmVjZXNzYXJ5IGV2aWwuCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBDaHJpc3RpYW46
IGl0IGxvb2tzIGxpa2UgeW91IGhhdmUgbGFuZGVkIHNvbWUgVFRNIGNoYW5nZXMKPiA+ID4gPiA+
ID4gYWxyZWFkeSwgaW4KPiA+ID4gPiA+ID4gcGFydGljdWxhciB0aGUgJmJvLT5tZW0gLT4gYm8t
PnJlc291cmNlIGNoYW5nZSB3aGljaCBpcyB0aGUKPiA+ID4gPiA+ID4gbWFpbgo+ID4gPiA+ID4g
PiBjb25mbGljdCBJIHRoaW5rLgo+ID4gPiA+IFllcywgSSB0aG91Z2h0IHRoYXQgcHVzaGluZyB0
aGlzIHdpdGggTWF0dGhldyByYiBzaG91bGQgc29sdmUKPiA+ID4gPiBhdCBsZWFzdCBhCj4gPiA+
ID4gYml0IG9mIHRoZSBjb25mbGljdC4KPiA+ID4gPiAKPiA+ID4gPiA+ID4gSXMgdGhlIDEwIHBh
dGNoZXMgc2VsZi1hbGxvY2F0aW9uIHNlcmllcyB0aGUgbWFpbgo+ID4gPiA+ID4gPiByZW1haW5p
bmcgcGFydD8KPiA+ID4gPiBZZXMsIGV4YWN0bHkuIEkgb25seSBuZWVkIE1hdHRoZXcncywgRGFu
aWVsJ3Mgb3IgeW91ciBvayBhbmQKPiA+ID4gPiBJJ20gZ29vZCB0bwo+ID4gPiA+IGdvIGFzIHdl
bGwKPiA+ID4gPiAKPiA+ID4gPiA+ID4gVGhhdCB3aWxsIHByb2JhYmx5IGNhdXNlIHNvbWUgY29u
ZmxpY3RzIHdpdGggYWxyZWFkeQo+ID4gPiA+ID4gPiBwdXNoZWQgaTkxNSBUVE0gc2V0dXAgY29k
ZSwgYnV0IG90aGVyd2lzZSB3aWxsIG5vdCBjb25mbGljdAo+ID4gPiA+ID4gPiB3aXRoIHRoZQo+
ID4gPiA+ID4gPiByZXN0IG9mIHRoZSBUVE0gY29kZSBJIHRoaW5rLCB3aGljaCBzaG91bGQgbWFr
ZSBpdCBwb3NzaWJsZQo+ID4gPiA+ID4gPiB0byBicmluZyBpbgo+ID4gPiA+ID4gPiBvdXIgVFRN
IGNoYW5nZXMgYWZ0ZXIgY29uZmxpY3QgcmVzb2x1dGlvbiB3aXRoIHdoYXQgeW91J3ZlCj4gPiA+
ID4gPiA+IGFscmVhZHkKPiA+ID4gPiA+ID4gcHVzaGVkLiBUaGUgbWVtY3B5IGNvZGUgaXMgcHJl
dHR5IHNlbGYtY29udGFpbmVkLgo+ID4gPiA+ID4gSSB0aGluayBpbiB0aGF0IGNhc2UgdG9waWMg
YnJhbmNoIG9uIHRvcCBvZiBkcm0tbmV4dCAob25jZQo+ID4gPiA+ID4gdGhlIHR0bQo+ID4gPiA+
ID4gYml0cyB3ZSBjb25mbGljdCB3aXRoIGFyZSB0aGVyZSkgaXMgcHJvYmFibHkgYmVzdCwgYW5k
IHRoZW4KPiA+ID4gPiA+IHB1bGwgdGhhdAo+ID4gPiA+ID4gaW50byBkcm0tbWlzYy1uZXh0IGFu
ZCBkcm0taW50ZWwtZ3QtbmV4dC4gTWVyZ2Ugd2luZG93IGZyZWV6ZQo+ID4gPiA+ID4gaXMgYWxz
bwo+ID4gPiA+ID4gYXBwcm9hY2gsIHNvIHdpdGhvdXQgdG9waWMgYnJhbmNoIHdlJ2QgYmUgc3R1
Y2sgdW50aWwgbGlrZSAtCj4gPiA+ID4gPiByYzIgd2hlbgo+ID4gPiA+ID4gZHJtLW5leHQgcmVv
cGVucy4gSSBndWVzcyBNYWFydGVuIGNhbiBkbyB0aGUgdG9waWMgYnJhbmNoCj4gPiA+ID4gPiBs
b2dpc3RpY3MgaW4KPiA+ID4gPiA+IGRybS1taXNjLmdpdCBmb3IgdGhpcy4KPiA+ID4gPiBUaGF0
IGFwcHJvYWNoIHNvdW5kcyBnb29kIHRvIG1lIGFzIHdlbGwuCj4gPiA+ID4gCj4gPiA+ID4gVGhl
IGFtZGdwdSBicmFuY2ggaGFkIHNvbWUgbWVyZ2UgY29uZmxpY3RzIGFzIHdlbGwsIGJ1dCBub3Ro
aW5nCj4gPiA+ID4gd2UKPiA+ID4gPiBjb3VsZG4ndCBmaXguCj4gPiA+IE9LLCBzbyB0aGlzIGlz
IGdvaW5nIHRvIGJlIGEgbGl0dGxlIHRyaWNreSwgSSBndWVzcy4KPiA+ID4gCj4gPiA+IMKgRnJv
bSB3aGF0IEkgY2FuIHRlbGwsIHRoZSBtZW1jcHkgVFRNIHN0dWZmIGlzIHJlc29sdmVkIGxvY2Fs
bHkKPiA+ID4gYW5kIGNhbiBiZQo+ID4gPiBtZXJnZWQgdG8gZHJtLW1pc2MtbmV4dCBpbW1lZGlh
dGVseS4gSXQgbWlnaHQgaGF2ZSBhIHZlcnkgbWlub3IKPiA+ID4gY29uZmxpY3QKPiA+ID4gd2l0
aCB5b3VyIDEwIHBhdGNoZXMgSSB0aGluaywgaWYgYW55Lgo+ID4gPiAKPiA+ID4gWW91ciAxMCBw
YXRjaGVzIHdpbGwgY29uZmxpY3Qgc2xpZ2h0bHkgd2l0aCBjdXJyZW50IGRybS1pbnRlbC1ndC0K
PiA+ID4gbmV4dCBJCj4gPiA+IHRoaW5rLgo+ID4gPiAKPiA+ID4gUmVtYWluaW5nIGludGVsIHBh
dGNoZXMgd2lsbCBjb25mbGljdCBvbmx5IHdpdGggY3VycmVudCBkcm0tbWlzYy0KPiA+ID4gbmV4
dC4KPiA+ID4gCj4gPiA+IFNvIFdlIGNvdWxkIGhhdmUgcHVsbCBvcmRlcgo+ID4gPiAKPiA+ID4g
LSBkcm0tbWlzYy1uZXh0IHVwIHRvIGJvdCBub3QgaW5jbHVkaW5nIHlvdXIgMTAgcGF0Y2hlcywK
PiA+ID4gLSBkcm0taW50ZWwtZ3QtbmV4dAo+ID4gPiAtIGRybS1taXNjLW5leHQgZnJvbSB5b3Vy
IDEwIHBhY2hlcyBhbmQgb253YXJkcywKPiA+ID4gLSBJbnRlbCdzIHR0bSBlbmFibGVtZW50IHRv
cGljIGJyYW5jaC4KPiA+IElmIGl0J3MganVzdCBzbGlnaHQgY29uZmxpY3RzIHRoZW4gSSB3b3Vs
ZG4ndCBib3RoZXIgd2l0aCBjYXJlZnVsCj4gPiBtZXJnZQo+ID4gb3JkZXIuIEJlY2F1c2UgaWYg
d2UgZG8gdGhpcyB3ZSBjYW4gZ2V0IGFyb3VuZCB0byB0aGUgaTkxNSB0dG0KPiA+IHRvcGljCj4g
PiBicmFuY2ggb25seSB3aGVuIHdlJ3JlIGJhY2sgdG8gLXJjMi4KPiAKPiBJJ3ZlIGp1c3QgcHVz
aGVkIHRoZSByZW1haW5pbmcgMTAgcGF0Y2hlcyB0byBkcm0tbWlzYy1uZXh0IGFuZCByYW4KPiBp
bnRvIAo+IG1pbm9yIG1lcmdlIGNvbmZsaWN0cyBpbiBkcm0tdGlwLgo+IAo+IEknbSB3b3JraW5n
IG9uIHRoaXMsIGJ1dCBJJ20gbm90IHZlcnkgZmFtaWxpYXIgd2l0aCBkcm0tdGlwIGhhbmRsaW5n
Lgo+IAo+IENocmlzdGlhbi4KCk5wLCBJJ2xsIGhvbGQgb2ZmIHVudGlsIE1vbmRheS4KCi9UaG9t
YXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
