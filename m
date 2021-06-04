Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A0539B570
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 11:01:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B24296F5DF;
	Fri,  4 Jun 2021 09:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05BCB6F5DA;
 Fri,  4 Jun 2021 09:01:46 +0000 (UTC)
IronPort-SDR: n9KeJr1ysiayJUKszTnxtM3F9Aoe74JvBnyhis3e0+e14Bs3voyDyQ4xDhE0d4yxEvEwiheZaq
 HnRJHgIqv+VA==
X-IronPort-AV: E=McAfee;i="6200,9189,10004"; a="191362613"
X-IronPort-AV: E=Sophos;i="5.83,247,1616482800"; d="scan'208";a="191362613"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 02:01:44 -0700
IronPort-SDR: 9G3b3ztjFYHK+ovsfibgfE3FQUGBWpuV8Qn4Nq+ppjbmCm0m2C5xR5Lpr+v6kzd1MlcovVl3b/
 8yXJdgDKIVyQ==
X-IronPort-AV: E=Sophos;i="5.83,247,1616482800"; d="scan'208";a="618201600"
Received: from janlundk-mobl1.ger.corp.intel.com (HELO [10.249.254.183])
 ([10.249.254.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 02:01:42 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
References: <a29eaef9-2457-1393-6757-40956811daf8@linux.intel.com>
 <a6965639-acf6-b5f5-482c-2715e7fa69d4@amd.com>
 <b4c18e45-98c9-ce7f-b22c-c00c795844c2@shipmail.org>
 <baf4f828-76c8-6b47-5bba-9b9c8e7b307b@amd.com>
 <YLfQplT8H6PdCCLX@phenom.ffwll.local>
 <c50fa98f-3735-fe04-d3f9-8a7a08a7562e@linux.intel.com>
 <CAKMK7uE+fB_+UG668O=QMXwQ9_Xb--KhzehT77HLfBoWve-zLg@mail.gmail.com>
 <68e6057c-df17-64ce-3116-cd5e79578795@amd.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <a3f789a0-9e75-280a-7602-4728738024eb@linux.intel.com>
Date: Fri, 4 Jun 2021 11:01:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <68e6057c-df17-64ce-3116-cd5e79578795@amd.com>
Content-Language: en-US
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvNC8yMSA5OjUxIEFNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+IEFtIDAzLjA2LjIx
IHVtIDA5OjM2IHNjaHJpZWIgRGFuaWVsIFZldHRlcjoKPj4gT24gVGh1LCBKdW4gMywgMjAyMSBh
dCA4OjUwIEFNIFRob21hcyBIZWxsc3Ryw7ZtCj4+IDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4Lmlu
dGVsLmNvbT4gd3JvdGU6Cj4+Pgo+Pj4gT24gNi8yLzIxIDg6NDAgUE0sIERhbmllbCBWZXR0ZXIg
d3JvdGU6Cj4+Pj4gT24gV2VkLCBKdW4gMDIsIDIwMjEgYXQgMTE6NDg6NDFBTSArMDIwMCwgQ2hy
aXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+Pj4gQW0gMDIuMDYuMjEgdW0gMTE6MTYgc2NocmllYiBU
aG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpOgo+Pj4+Pj4gT24gNi8yLzIxIDEwOjMyIEFNLCBDaHJp
c3RpYW4gS8O2bmlnIHdyb3RlOgo+Pj4+Pj4+IFVmZiBJJ20ganVzdCB3YWl0aW5nIGZvciBmZWVk
YmFjayBmcm9tIFBoaWxpcCB0byBtZXJnZSBhIGxhcmdlIAo+Pj4+Pj4+IHBhdGNoCj4+Pj4+Pj4g
c2V0IGZvciBUVE0gdGhyb3VnaCBkcm0tbWlzYy1uZXh0Lgo+Pj4+Pj4+Cj4+Pj4+Pj4gSSdtIHBy
ZXR0eSBzdXJlIHdlIHdpbGwgcnVuIGludG8gbWVyZ2UgY29uZmxpY3RzIGlmIHlvdSB0cnkgdG8g
cHVzaAo+Pj4+Pj4+IHlvdXIgY2hhbmdlcyB0aHJvdWdoIHRoZSBJbnRlbCB0cmVlLgo+Pj4+Pj4+
Cj4+Pj4+Pj4gQ2hyaXN0aWFuLgo+Pj4+Pj4gT0ssIHNvIHdoYXQgd291bGQgYmUgdGhlIGJlc3Qg
YXBwcm9hY2ggaGVyZT8sIEFkZGluZyB0aGUgVFRNIAo+Pj4+Pj4gcGF0Y2hlcyB0bwo+Pj4+Pj4g
ZHJtLW1pc2MtbmV4dCB3aGVuIHlvdXIgc2V0IGhhcyBsYW5kZWQ/Cj4+Pj4+IEkgdGhpbmsgSSB3
aWxsIHNlbmQgb3V0IG91dCBteSBzZXQgdG8gTWF0dGhldyBvbmNlIG1vcmUgZm9yIAo+Pj4+PiBy
ZXZpZXcsIHRoZW4KPj4+Pj4gcHVzaCB0aGUgY29tbW9uIFRUTSBzdHVmZiB0byBkcm0tbWlzYy1u
ZXh0IGFzIG11Y2ggYXMgcG9zc2libGUuCj4+Pj4+Cj4+Pj4+IFRoZW4geW91IHNob3VsZCBiZSBh
YmxlIHRvIGxhbmQgeW91ciBzdHVmZiB0byBkcm0tbWlzYy1uZXh0IGFuZCAKPj4+Pj4gcmViYXNl
IG9uCj4+Pj4+IHRoZSBlbmQgcmVzdWx0Lgo+Pj4+Pgo+Pj4+PiBKdXN0IG5lZWQgdG8gbm90ZSB0
byBEYXZpZCB0aGF0IGRybS1taXNjLW5leHQgc2hvdWxkIGJlIG1lcmdlZCB0byAKPj4+Pj4gZHJt
LW5leHQKPj4+Pj4gYmVmb3JlIHRoZSBJbnRlbCBwYXRjaGVzIGRlcGVuZGluZyBvbiB0aGF0IHN0
dWZmIGxhbmQgYXMgd2VsbC4KPj4+PiBPdGhlciBvcHRpb24gKGJlY2F1c2UgdGhlIGJhY2ttZXJn
ZXMgdGVuZCB0byBiZSBzbG93KSBpcyBhIHRvcGljIAo+Pj4+IGJyYW5jaCwKPj4+PiBhbmQgd2Ug
anVzdCBlYXQvcmVzb2x2ZSB0aGUgY29uZmxpY3RzIGluIGJvdGggZHJtLW1pc2MtbmV4dCBhbmQK
Pj4+PiBkcm0taW50ZWwtZ3QtbmV4dCBpbiB0aGUgbWVyZ2UgY29tbWl0LiBJZiBpdCdzIG5vdCB0
b28gYmFkIChJIGhhdmVuJ3QKPj4+PiBsb29rZWQgYXQgd2hhdCBleGFjdGx5IHdlIG5lZWQgZm9y
IHRoZSBpOTE1IHNpZGUgZnJvbSB0dG0gaW4gZGV0YWlsKS4KPj4+Pgo+Pj4+IEJ1dCBhbHNvIG9m
dGVuIGZpZ3VyaW5nIG91dCB0aGUgdG9waWMgYnJhbmNoIGxvZ2lzdGljcyB0YWtlcyBsb25nZXIg
Cj4+Pj4gdGhhbgo+Pj4+IGp1c3QgbWVyZ2luZyB0byBkcm0tbWlzYy1uZXh0IGFzIHRoZSBwYXRj
aGVzIGdldCByZWFkeS4KPj4+PiAtRGFuaWVsCj4+PiBEYW5pZWw6IFNvIHRoZSB0aGluZyB3ZSBu
ZWVkIHRvIGdldCBpbnRvIFRUTSBpcyB0aGUgaXRlcmF0b3ItYmFzZWQKPj4+IG1vdmVfbWVtY3B5
IHdoaWNoIGlzIG1vcmUgYWRhcHRhYmxlIHRoYW4gdGhlIGN1cnJlbnQgb25lIGFuZCBuZWVkZWQg
dG8KPj4+IHN1cHBvcnQgbm9uLWxpbmVhciBsbWVtIGJ1ZmZlcnMsIHNvbWUgYnVnLWZpeGVzIGFu
ZCBtaW5vciBjaGFuZ2VzIHRvIGJlCj4+PiBhYmxlIHRvIGtlZXAgb3VyIHNob3J0LXRlcm0tcGlu
bmluZyB3aGlsZSBvbiB0aGUgTFJVLiBBIG5lY2Vzc2FyeSBldmlsLgo+Pj4KPj4+IENocmlzdGlh
bjogaXQgbG9va3MgbGlrZSB5b3UgaGF2ZSBsYW5kZWQgc29tZSBUVE0gY2hhbmdlcyBhbHJlYWR5
LCBpbgo+Pj4gcGFydGljdWxhciB0aGUgJmJvLT5tZW0gLT4gYm8tPnJlc291cmNlIGNoYW5nZSB3
aGljaCBpcyB0aGUgbWFpbgo+Pj4gY29uZmxpY3QgSSB0aGluay4KPgo+IFllcywgSSB0aG91Z2h0
IHRoYXQgcHVzaGluZyB0aGlzIHdpdGggTWF0dGhldyByYiBzaG91bGQgc29sdmUgYXQgbGVhc3Qg
Cj4gYSBiaXQgb2YgdGhlIGNvbmZsaWN0Lgo+Cj4+PiBJcyB0aGUgMTAgcGF0Y2hlcyBzZWxmLWFs
bG9jYXRpb24gc2VyaWVzIHRoZSBtYWluCj4+PiByZW1haW5pbmcgcGFydD8KPgo+IFllcywgZXhh
Y3RseS4gSSBvbmx5IG5lZWQgTWF0dGhldydzLCBEYW5pZWwncyBvciB5b3VyIG9rIGFuZCBJJ20g
Z29vZCAKPiB0byBnbyBhcyB3ZWxsCj4KPj4+IFRoYXQgd2lsbCBwcm9iYWJseSBjYXVzZSBzb21l
IGNvbmZsaWN0cyB3aXRoIGFscmVhZHkKPj4+IHB1c2hlZCBpOTE1IFRUTSBzZXR1cCBjb2RlLCBi
dXQgb3RoZXJ3aXNlIHdpbGwgbm90IGNvbmZsaWN0IHdpdGggdGhlCj4+PiByZXN0IG9mIHRoZSBU
VE0gY29kZSBJIHRoaW5rLCB3aGljaCBzaG91bGQgbWFrZSBpdCBwb3NzaWJsZSB0byBicmluZyBp
bgo+Pj4gb3VyIFRUTSBjaGFuZ2VzIGFmdGVyIGNvbmZsaWN0IHJlc29sdXRpb24gd2l0aCB3aGF0
IHlvdSd2ZSBhbHJlYWR5Cj4+PiBwdXNoZWQuIFRoZSBtZW1jcHkgY29kZSBpcyBwcmV0dHkgc2Vs
Zi1jb250YWluZWQuCj4+IEkgdGhpbmsgaW4gdGhhdCBjYXNlIHRvcGljIGJyYW5jaCBvbiB0b3Ag
b2YgZHJtLW5leHQgKG9uY2UgdGhlIHR0bQo+PiBiaXRzIHdlIGNvbmZsaWN0IHdpdGggYXJlIHRo
ZXJlKSBpcyBwcm9iYWJseSBiZXN0LCBhbmQgdGhlbiBwdWxsIHRoYXQKPj4gaW50byBkcm0tbWlz
Yy1uZXh0IGFuZCBkcm0taW50ZWwtZ3QtbmV4dC4gTWVyZ2Ugd2luZG93IGZyZWV6ZSBpcyBhbHNv
Cj4+IGFwcHJvYWNoLCBzbyB3aXRob3V0IHRvcGljIGJyYW5jaCB3ZSdkIGJlIHN0dWNrIHVudGls
IGxpa2UgLXJjMiB3aGVuCj4+IGRybS1uZXh0IHJlb3BlbnMuIEkgZ3Vlc3MgTWFhcnRlbiBjYW4g
ZG8gdGhlIHRvcGljIGJyYW5jaCBsb2dpc3RpY3MgaW4KPj4gZHJtLW1pc2MuZ2l0IGZvciB0aGlz
Lgo+Cj4gVGhhdCBhcHByb2FjaCBzb3VuZHMgZ29vZCB0byBtZSBhcyB3ZWxsLgo+Cj4gVGhlIGFt
ZGdwdSBicmFuY2ggaGFkIHNvbWUgbWVyZ2UgY29uZmxpY3RzIGFzIHdlbGwsIGJ1dCBub3RoaW5n
IHdlIAo+IGNvdWxkbid0IGZpeC4KCk9LLCBzbyB0aGlzIGlzIGdvaW5nIHRvIGJlIGEgbGl0dGxl
IHRyaWNreSwgSSBndWVzcy4KCiBGcm9tIHdoYXQgSSBjYW4gdGVsbCwgdGhlIG1lbWNweSBUVE0g
c3R1ZmYgaXMgcmVzb2x2ZWQgbG9jYWxseSBhbmQgY2FuIApiZSBtZXJnZWQgdG8gZHJtLW1pc2Mt
bmV4dCBpbW1lZGlhdGVseS4gSXQgbWlnaHQgaGF2ZSBhIHZlcnkgbWlub3IgCmNvbmZsaWN0IHdp
dGggeW91ciAxMCBwYXRjaGVzIEkgdGhpbmssIGlmIGFueS4KCllvdXIgMTAgcGF0Y2hlcyB3aWxs
IGNvbmZsaWN0IHNsaWdodGx5IHdpdGggY3VycmVudCBkcm0taW50ZWwtZ3QtbmV4dCBJIAp0aGlu
ay4KClJlbWFpbmluZyBpbnRlbCBwYXRjaGVzIHdpbGwgY29uZmxpY3Qgb25seSB3aXRoIGN1cnJl
bnQgZHJtLW1pc2MtbmV4dC4KClNvIFdlIGNvdWxkIGhhdmUgcHVsbCBvcmRlcgoKLSBkcm0tbWlz
Yy1uZXh0IHVwIHRvIGJvdCBub3QgaW5jbHVkaW5nIHlvdXIgMTAgcGF0Y2hlcywKLSBkcm0taW50
ZWwtZ3QtbmV4dAotIGRybS1taXNjLW5leHQgZnJvbSB5b3VyIDEwIHBhY2hlcyBhbmQgb253YXJk
cywKLSBJbnRlbCdzIHR0bSBlbmFibGVtZW50IHRvcGljIGJyYW5jaC4KCldoZXRoZXIgSSBwdXNo
IHRoZSB0dG0gbWVtY3B5IHN0dWZmIGJlZm9yZSB5b3VyIDEwIHBhdGNoZXMgb3IgYWZ0ZXIgCnNo
b3VsZG4ndCByZWFsbHkgbWF0dGVyIGV4Y2VwdCBpdCBtaWdodCB0YWtlIHNvbWUgdGltZSB0byBy
ZXNvbHZlIHRoZSAxMCAKcGF0Y2hlcyAtIGRybS1pbnRlbC1ndC1uZXh0IGNvbmZsaWN0IGluIGRy
bS10aXAuCgpTbyBPSyB0byBtZXJnZSB0aGUgbWVtY3B5IHN0dWZmIHRvIGRybS1taXNjLW5leHQg
bm93IG9yIGRvIHlvdSB3YW50IG1lIAp0byBob2xkIG9uPwoKSSdsbCB0YWtlIGEgbG9vayBhdCB3
aGF0J3MgcmVtYWluaW5nIHRvIHJldmlldyBpbiB5b3VyIHNlcmllcy4gSSBndWVzcyAKaXQncyBp
biBvdXIgaW50ZXJlc3QgdGhhdCBib3RoIHRoZXNlIHNlcmllcyBnZXQgbWVyZ2VkIGFzYXAuCgov
VGhvbWFzCgoKCj4KPiBDaHJpc3RpYW4uCj4KPj4gLURhbmllbAo+Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
