Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA0439BABC
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 16:11:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B05856EC2D;
	Fri,  4 Jun 2021 14:11:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 883BC6EC2D;
 Fri,  4 Jun 2021 14:11:12 +0000 (UTC)
IronPort-SDR: 1gVnu7UidOsOz525Dao8aR/nRl22u4F+9VIxwpMeHFQkK3GgFBRScQliVzr1tMVCtlIh0l1N+T
 /TtoxR+HZ6ng==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="289925685"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="289925685"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 07:11:12 -0700
IronPort-SDR: SFPPB8N0UxOOxCjnkzDw7MEJBYLP1XkwVV8YTg0hdceiun8g3Y5Tg+1MRhA6ESypKi0zGWGO0i
 7HBeILtCY8+w==
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="446698283"
Received: from janlundk-mobl1.ger.corp.intel.com (HELO [10.249.254.183])
 ([10.249.254.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 07:11:09 -0700
Message-ID: <9aef1767b510737556fb573897f77cfbd6a1cc20.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Dave Airlie <airlied@gmail.com>
Date: Fri, 04 Jun 2021 16:11:06 +0200
In-Reply-To: <fd0fa98b-876d-d3e6-0b67-9537d944d33f@gmail.com>
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
 <4e465ada6f8b1a8b76fea782adcf3043630efa5e.camel@linux.intel.com>
 <fd0fa98b-876d-d3e6-0b67-9537d944d33f@gmail.com>
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

T24gRnJpLCAyMDIxLTA2LTA0IGF0IDE2OjA2ICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Ogo+IEFtIDA0LjA2LjIxIHVtIDE2OjAzIHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06Cj4gPiBP
biBGcmksIDIwMjEtMDYtMDQgYXQgMTU6MzggKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
Cj4gPiA+IEFtIDA0LjA2LjIxIHVtIDExOjEyIHNjaHJpZWIgRGFuaWVsIFZldHRlcjoKPiA+ID4g
PiBPbiBGcmksIEp1biAwNCwgMjAyMSBhdCAxMTowMTo0MEFNICswMjAwLCBUaG9tYXMgSGVsbHN0
csO2bQo+ID4gPiA+IHdyb3RlOgo+ID4gPiA+ID4gT24gNi80LzIxIDk6NTEgQU0sIENocmlzdGlh
biBLw7ZuaWcgd3JvdGU6Cj4gPiA+ID4gPiA+IEFtIDAzLjA2LjIxIHVtIDA5OjM2IHNjaHJpZWIg
RGFuaWVsIFZldHRlcjoKPiA+ID4gPiA+ID4gPiBPbiBUaHUsIEp1biAzLCAyMDIxIGF0IDg6NTAg
QU0gVGhvbWFzIEhlbGxzdHLDtm0KPiA+ID4gPiA+ID4gPiA8dGhvbWFzLmhlbGxzdHJvbUBsaW51
eC5pbnRlbC5jb20+IHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gT24gNi8yLzIxIDg6NDAgUE0sIERh
bmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+IE9uIFdlZCwgSnVuIDAyLCAyMDIx
IGF0IDExOjQ4OjQxQU0gKzAyMDAsIENocmlzdGlhbgo+ID4gPiA+ID4gPiA+ID4gPiBLw7ZuaWcK
PiA+ID4gPiA+ID4gPiA+ID4gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+ID4gQW0gMDIuMDYuMjEg
dW0gMTE6MTYgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bQo+ID4gPiA+ID4gPiA+ID4gPiA+IChJ
bnRlbCk6Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBPbiA2LzIvMjEgMTA6MzIgQU0sIENocmlzdGlh
biBLw7ZuaWcgd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IFVmZiBJJ20ganVzdCB3YWl0
aW5nIGZvciBmZWVkYmFjayBmcm9tIFBoaWxpcAo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiB0bwo+
ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBtZXJnZSBhIGxhcmdlIHBhdGNoCj4gPiA+ID4gPiA+ID4g
PiA+ID4gPiA+IHNldCBmb3IgVFRNIHRocm91Z2ggZHJtLW1pc2MtbmV4dC4KPiA+ID4gPiA+ID4g
PiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IEknbSBwcmV0dHkgc3VyZSB3ZSB3
aWxsIHJ1biBpbnRvIG1lcmdlCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IGNvbmZsaWN0cyBpZgo+
ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiB5b3UgdHJ5IHRvIHB1c2gKPiA+ID4gPiA+ID4gPiA+ID4g
PiA+ID4geW91ciBjaGFuZ2VzIHRocm91Z2ggdGhlIEludGVsIHRyZWUuCj4gPiA+ID4gPiA+ID4g
PiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBDaHJpc3RpYW4uCj4gPiA+ID4gPiA+
ID4gPiA+ID4gPiBPSywgc28gd2hhdCB3b3VsZCBiZSB0aGUgYmVzdCBhcHByb2FjaCBoZXJlPywK
PiA+ID4gPiA+ID4gPiA+ID4gPiA+IEFkZGluZwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gdGhlIFRU
TSBwYXRjaGVzIHRvCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBkcm0tbWlzYy1uZXh0IHdoZW4geW91
ciBzZXQgaGFzIGxhbmRlZD8KPiA+ID4gPiA+ID4gPiA+ID4gPiBJIHRoaW5rIEkgd2lsbCBzZW5k
IG91dCBvdXQgbXkgc2V0IHRvIE1hdHRoZXcgb25jZQo+ID4gPiA+ID4gPiA+ID4gPiA+IG1vcmUK
PiA+ID4gPiA+ID4gPiA+ID4gPiBmb3IgcmV2aWV3LCB0aGVuCj4gPiA+ID4gPiA+ID4gPiA+ID4g
cHVzaCB0aGUgY29tbW9uIFRUTSBzdHVmZiB0byBkcm0tbWlzYy1uZXh0IGFzIG11Y2gKPiA+ID4g
PiA+ID4gPiA+ID4gPiBhcwo+ID4gPiA+ID4gPiA+ID4gPiA+IHBvc3NpYmxlLgo+ID4gPiA+ID4g
PiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiA+IFRoZW4geW91IHNob3VsZCBiZSBhYmxlIHRv
IGxhbmQgeW91ciBzdHVmZiB0bwo+ID4gPiA+ID4gPiA+ID4gPiA+IGRybS1taXNjLW5leHQgYW5k
IHJlYmFzZSBvbgo+ID4gPiA+ID4gPiA+ID4gPiA+IHRoZSBlbmQgcmVzdWx0Lgo+ID4gPiA+ID4g
PiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiA+IEp1c3QgbmVlZCB0byBub3RlIHRvIERhdmlk
IHRoYXQgZHJtLW1pc2MtbmV4dAo+ID4gPiA+ID4gPiA+ID4gPiA+IHNob3VsZCBiZQo+ID4gPiA+
ID4gPiA+ID4gPiA+IG1lcmdlZCB0byBkcm0tbmV4dAo+ID4gPiA+ID4gPiA+ID4gPiA+IGJlZm9y
ZSB0aGUgSW50ZWwgcGF0Y2hlcyBkZXBlbmRpbmcgb24gdGhhdCBzdHVmZgo+ID4gPiA+ID4gPiA+
ID4gPiA+IGxhbmQKPiA+ID4gPiA+ID4gPiA+ID4gPiBhcyB3ZWxsLgo+ID4gPiA+ID4gPiA+ID4g
PiBPdGhlciBvcHRpb24gKGJlY2F1c2UgdGhlIGJhY2ttZXJnZXMgdGVuZCB0byBiZSBzbG93KQo+
ID4gPiA+ID4gPiA+ID4gPiBpcwo+ID4gPiA+ID4gPiA+ID4gPiBhCj4gPiA+ID4gPiA+ID4gPiA+
IHRvcGljIGJyYW5jaCwKPiA+ID4gPiA+ID4gPiA+ID4gYW5kIHdlIGp1c3QgZWF0L3Jlc29sdmUg
dGhlIGNvbmZsaWN0cyBpbiBib3RoIGRybS0KPiA+ID4gPiA+ID4gPiA+ID4gbWlzYy0KPiA+ID4g
PiA+ID4gPiA+ID4gbmV4dCBhbmQKPiA+ID4gPiA+ID4gPiA+ID4gZHJtLWludGVsLWd0LW5leHQg
aW4gdGhlIG1lcmdlIGNvbW1pdC4gSWYgaXQncyBub3QKPiA+ID4gPiA+ID4gPiA+ID4gdG9vCj4g
PiA+ID4gPiA+ID4gPiA+IGJhZCAoSSBoYXZlbid0Cj4gPiA+ID4gPiA+ID4gPiA+IGxvb2tlZCBh
dCB3aGF0IGV4YWN0bHkgd2UgbmVlZCBmb3IgdGhlIGk5MTUgc2lkZSBmcm9tCj4gPiA+ID4gPiA+
ID4gPiA+IHR0bQo+ID4gPiA+ID4gPiA+ID4gPiBpbiBkZXRhaWwpLgo+ID4gPiA+ID4gPiA+ID4g
PiAKPiA+ID4gPiA+ID4gPiA+ID4gQnV0IGFsc28gb2Z0ZW4gZmlndXJpbmcgb3V0IHRoZSB0b3Bp
YyBicmFuY2gKPiA+ID4gPiA+ID4gPiA+ID4gbG9naXN0aWNzCj4gPiA+ID4gPiA+ID4gPiA+IHRh
a2VzCj4gPiA+ID4gPiA+ID4gPiA+IGxvbmdlciB0aGFuCj4gPiA+ID4gPiA+ID4gPiA+IGp1c3Qg
bWVyZ2luZyB0byBkcm0tbWlzYy1uZXh0IGFzIHRoZSBwYXRjaGVzIGdldAo+ID4gPiA+ID4gPiA+
ID4gPiByZWFkeS4KPiA+ID4gPiA+ID4gPiA+ID4gLURhbmllbAo+ID4gPiA+ID4gPiA+ID4gRGFu
aWVsOiBTbyB0aGUgdGhpbmcgd2UgbmVlZCB0byBnZXQgaW50byBUVE0gaXMgdGhlCj4gPiA+ID4g
PiA+ID4gPiBpdGVyYXRvci1iYXNlZAo+ID4gPiA+ID4gPiA+ID4gbW92ZV9tZW1jcHkgd2hpY2gg
aXMgbW9yZSBhZGFwdGFibGUgdGhhbiB0aGUgY3VycmVudAo+ID4gPiA+ID4gPiA+ID4gb25lCj4g
PiA+ID4gPiA+ID4gPiBhbmQgbmVlZGVkIHRvCj4gPiA+ID4gPiA+ID4gPiBzdXBwb3J0IG5vbi1s
aW5lYXIgbG1lbSBidWZmZXJzLCBzb21lIGJ1Zy1maXhlcyBhbmQKPiA+ID4gPiA+ID4gPiA+IG1p
bm9yCj4gPiA+ID4gPiA+ID4gPiBjaGFuZ2VzIHRvIGJlCj4gPiA+ID4gPiA+ID4gPiBhYmxlIHRv
IGtlZXAgb3VyIHNob3J0LXRlcm0tcGlubmluZyB3aGlsZSBvbiB0aGUgTFJVLiBBCj4gPiA+ID4g
PiA+ID4gPiBuZWNlc3NhcnkgZXZpbC4KPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4g
Q2hyaXN0aWFuOiBpdCBsb29rcyBsaWtlIHlvdSBoYXZlIGxhbmRlZCBzb21lIFRUTQo+ID4gPiA+
ID4gPiA+ID4gY2hhbmdlcwo+ID4gPiA+ID4gPiA+ID4gYWxyZWFkeSwgaW4KPiA+ID4gPiA+ID4g
PiA+IHBhcnRpY3VsYXIgdGhlICZiby0+bWVtIC0+IGJvLT5yZXNvdXJjZSBjaGFuZ2Ugd2hpY2gg
aXMKPiA+ID4gPiA+ID4gPiA+IHRoZQo+ID4gPiA+ID4gPiA+ID4gbWFpbgo+ID4gPiA+ID4gPiA+
ID4gY29uZmxpY3QgSSB0aGluay4KPiA+ID4gPiA+ID4gWWVzLCBJIHRob3VnaHQgdGhhdCBwdXNo
aW5nIHRoaXMgd2l0aCBNYXR0aGV3IHJiIHNob3VsZAo+ID4gPiA+ID4gPiBzb2x2ZQo+ID4gPiA+
ID4gPiBhdCBsZWFzdCBhCj4gPiA+ID4gPiA+IGJpdCBvZiB0aGUgY29uZmxpY3QuCj4gPiA+ID4g
PiA+IAo+ID4gPiA+ID4gPiA+ID4gSXMgdGhlIDEwIHBhdGNoZXMgc2VsZi1hbGxvY2F0aW9uIHNl
cmllcyB0aGUgbWFpbgo+ID4gPiA+ID4gPiA+ID4gcmVtYWluaW5nIHBhcnQ/Cj4gPiA+ID4gPiA+
IFllcywgZXhhY3RseS4gSSBvbmx5IG5lZWQgTWF0dGhldydzLCBEYW5pZWwncyBvciB5b3VyIG9r
Cj4gPiA+ID4gPiA+IGFuZAo+ID4gPiA+ID4gPiBJJ20gZ29vZCB0bwo+ID4gPiA+ID4gPiBnbyBh
cyB3ZWxsCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gVGhhdCB3aWxsIHByb2JhYmx5IGNh
dXNlIHNvbWUgY29uZmxpY3RzIHdpdGggYWxyZWFkeQo+ID4gPiA+ID4gPiA+ID4gcHVzaGVkIGk5
MTUgVFRNIHNldHVwIGNvZGUsIGJ1dCBvdGhlcndpc2Ugd2lsbCBub3QKPiA+ID4gPiA+ID4gPiA+
IGNvbmZsaWN0Cj4gPiA+ID4gPiA+ID4gPiB3aXRoIHRoZQo+ID4gPiA+ID4gPiA+ID4gcmVzdCBv
ZiB0aGUgVFRNIGNvZGUgSSB0aGluaywgd2hpY2ggc2hvdWxkIG1ha2UgaXQKPiA+ID4gPiA+ID4g
PiA+IHBvc3NpYmxlCj4gPiA+ID4gPiA+ID4gPiB0byBicmluZyBpbgo+ID4gPiA+ID4gPiA+ID4g
b3VyIFRUTSBjaGFuZ2VzIGFmdGVyIGNvbmZsaWN0IHJlc29sdXRpb24gd2l0aCB3aGF0Cj4gPiA+
ID4gPiA+ID4gPiB5b3UndmUKPiA+ID4gPiA+ID4gPiA+IGFscmVhZHkKPiA+ID4gPiA+ID4gPiA+
IHB1c2hlZC4gVGhlIG1lbWNweSBjb2RlIGlzIHByZXR0eSBzZWxmLWNvbnRhaW5lZC4KPiA+ID4g
PiA+ID4gPiBJIHRoaW5rIGluIHRoYXQgY2FzZSB0b3BpYyBicmFuY2ggb24gdG9wIG9mIGRybS1u
ZXh0Cj4gPiA+ID4gPiA+ID4gKG9uY2UKPiA+ID4gPiA+ID4gPiB0aGUgdHRtCj4gPiA+ID4gPiA+
ID4gYml0cyB3ZSBjb25mbGljdCB3aXRoIGFyZSB0aGVyZSkgaXMgcHJvYmFibHkgYmVzdCwgYW5k
Cj4gPiA+ID4gPiA+ID4gdGhlbgo+ID4gPiA+ID4gPiA+IHB1bGwgdGhhdAo+ID4gPiA+ID4gPiA+
IGludG8gZHJtLW1pc2MtbmV4dCBhbmQgZHJtLWludGVsLWd0LW5leHQuIE1lcmdlIHdpbmRvdwo+
ID4gPiA+ID4gPiA+IGZyZWV6ZQo+ID4gPiA+ID4gPiA+IGlzIGFsc28KPiA+ID4gPiA+ID4gPiBh
cHByb2FjaCwgc28gd2l0aG91dCB0b3BpYyBicmFuY2ggd2UnZCBiZSBzdHVjayB1bnRpbAo+ID4g
PiA+ID4gPiA+IGxpa2UgLQo+ID4gPiA+ID4gPiA+IHJjMiB3aGVuCj4gPiA+ID4gPiA+ID4gZHJt
LW5leHQgcmVvcGVucy4gSSBndWVzcyBNYWFydGVuIGNhbiBkbyB0aGUgdG9waWMgYnJhbmNoCj4g
PiA+ID4gPiA+ID4gbG9naXN0aWNzIGluCj4gPiA+ID4gPiA+ID4gZHJtLW1pc2MuZ2l0IGZvciB0
aGlzLgo+ID4gPiA+ID4gPiBUaGF0IGFwcHJvYWNoIHNvdW5kcyBnb29kIHRvIG1lIGFzIHdlbGwu
Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBUaGUgYW1kZ3B1IGJyYW5jaCBoYWQgc29tZSBtZXJn
ZSBjb25mbGljdHMgYXMgd2VsbCwgYnV0Cj4gPiA+ID4gPiA+IG5vdGhpbmcKPiA+ID4gPiA+ID4g
d2UKPiA+ID4gPiA+ID4gY291bGRuJ3QgZml4Lgo+ID4gPiA+ID4gT0ssIHNvIHRoaXMgaXMgZ29p
bmcgdG8gYmUgYSBsaXR0bGUgdHJpY2t5LCBJIGd1ZXNzLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiDC
oMKgRnJvbSB3aGF0IEkgY2FuIHRlbGwsIHRoZSBtZW1jcHkgVFRNIHN0dWZmIGlzIHJlc29sdmVk
Cj4gPiA+ID4gPiBsb2NhbGx5Cj4gPiA+ID4gPiBhbmQgY2FuIGJlCj4gPiA+ID4gPiBtZXJnZWQg
dG8gZHJtLW1pc2MtbmV4dCBpbW1lZGlhdGVseS4gSXQgbWlnaHQgaGF2ZSBhIHZlcnkKPiA+ID4g
PiA+IG1pbm9yCj4gPiA+ID4gPiBjb25mbGljdAo+ID4gPiA+ID4gd2l0aCB5b3VyIDEwIHBhdGNo
ZXMgSSB0aGluaywgaWYgYW55Lgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBZb3VyIDEwIHBhdGNoZXMg
d2lsbCBjb25mbGljdCBzbGlnaHRseSB3aXRoIGN1cnJlbnQgZHJtLQo+ID4gPiA+ID4gaW50ZWwt
Z3QtCj4gPiA+ID4gPiBuZXh0IEkKPiA+ID4gPiA+IHRoaW5rLgo+ID4gPiA+ID4gCj4gPiA+ID4g
PiBSZW1haW5pbmcgaW50ZWwgcGF0Y2hlcyB3aWxsIGNvbmZsaWN0IG9ubHkgd2l0aCBjdXJyZW50
IGRybS0KPiA+ID4gPiA+IG1pc2MtCj4gPiA+ID4gPiBuZXh0Lgo+ID4gPiA+ID4gCj4gPiA+ID4g
PiBTbyBXZSBjb3VsZCBoYXZlIHB1bGwgb3JkZXIKPiA+ID4gPiA+IAo+ID4gPiA+ID4gLSBkcm0t
bWlzYy1uZXh0IHVwIHRvIGJvdCBub3QgaW5jbHVkaW5nIHlvdXIgMTAgcGF0Y2hlcywKPiA+ID4g
PiA+IC0gZHJtLWludGVsLWd0LW5leHQKPiA+ID4gPiA+IC0gZHJtLW1pc2MtbmV4dCBmcm9tIHlv
dXIgMTAgcGFjaGVzIGFuZCBvbndhcmRzLAo+ID4gPiA+ID4gLSBJbnRlbCdzIHR0bSBlbmFibGVt
ZW50IHRvcGljIGJyYW5jaC4KPiA+ID4gPiBJZiBpdCdzIGp1c3Qgc2xpZ2h0IGNvbmZsaWN0cyB0
aGVuIEkgd291bGRuJ3QgYm90aGVyIHdpdGgKPiA+ID4gPiBjYXJlZnVsCj4gPiA+ID4gbWVyZ2UK
PiA+ID4gPiBvcmRlci4gQmVjYXVzZSBpZiB3ZSBkbyB0aGlzIHdlIGNhbiBnZXQgYXJvdW5kIHRv
IHRoZSBpOTE1IHR0bQo+ID4gPiA+IHRvcGljCj4gPiA+ID4gYnJhbmNoIG9ubHkgd2hlbiB3ZSdy
ZSBiYWNrIHRvIC1yYzIuCj4gPiA+IEkndmUganVzdCBwdXNoZWQgdGhlIHJlbWFpbmluZyAxMCBw
YXRjaGVzIHRvIGRybS1taXNjLW5leHQgYW5kCj4gPiA+IHJhbgo+ID4gPiBpbnRvCj4gPiA+IG1p
bm9yIG1lcmdlIGNvbmZsaWN0cyBpbiBkcm0tdGlwLgo+ID4gPiAKPiA+ID4gSSdtIHdvcmtpbmcg
b24gdGhpcywgYnV0IEknbSBub3QgdmVyeSBmYW1pbGlhciB3aXRoIGRybS10aXAKPiA+ID4gaGFu
ZGxpbmcuCj4gPiA+IAo+ID4gPiBDaHJpc3RpYW4uCj4gPiBOcCwgSSdsbCBob2xkIG9mZiB1bnRp
bCBNb25kYXkuCj4gCj4gT2sgSSd2ZSBmaXhlZCB1cCBkcm0tdGlwIGZvciBhbWRncHUsIGJ1dCB0
aGVyZSBhcmUgYWxzbyBtZXJnZQo+IGNvbmZsaWN0cyAKPiBmb3IgaTkxNS4KPiAKPiBDYW4geW91
IGhhbmRsZSB0aG9zZT8gRG9lc24ndCBsb29rcyB0byBoYXJkLCBidXQgSSB3b3VsZCBwcmVmZXIg
bm90Cj4gdG8gCj4gdG91Y2ggY29kZSBJIGNhbid0IHRlc3QuCj4gCj4gQ2hyaXN0aWFuLgoKSGks
IENocmlzdGlhbiwKVW5mb3J0dW5hdGVseSBJIGNhbid0IChub3QgdW50aWwgbW9uZGF5IGF0IGxl
YXN0IGFzIEknbSBvZmYgZm9yIHRoZQp3ZWVrZW5kKS4gQnV0IEkgZGlkIHdhcm4geW91IHR3aWNl
IGFib3V0IHRob3NlLgoKL1Rob21hcwoKCj4gCj4gPiAKPiA+IC9UaG9tYXMKPiA+IAo+ID4gCj4g
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
