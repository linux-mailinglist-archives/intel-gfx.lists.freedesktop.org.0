Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 747A5396775
	for <lists+intel-gfx@lfdr.de>; Mon, 31 May 2021 19:55:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 599EF6E1BA;
	Mon, 31 May 2021 17:55:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from srv6.fidu.org (srv6.fidu.org [159.69.62.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE6F76E1BA;
 Mon, 31 May 2021 17:55:07 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by srv6.fidu.org (Postfix) with ESMTP id 2AB30C800EC;
 Mon, 31 May 2021 19:55:06 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at srv6.fidu.org
Received: from srv6.fidu.org ([127.0.0.1])
 by localhost (srv6.fidu.org [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id 7-hu257Dcefd; Mon, 31 May 2021 19:55:05 +0200 (CEST)
Received: from [IPv6:2003:e3:7f2e:2a00:27e7:7520:b2ba:eb7b]
 (p200300e37F2E2a0027e77520B2BaeB7b.dip0.t-ipconnect.de
 [IPv6:2003:e3:7f2e:2a00:27e7:7520:b2ba:eb7b])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: wse@tuxedocomputers.com)
 by srv6.fidu.org (Postfix) with ESMTPSA id BF2BDC800E9;
 Mon, 31 May 2021 19:55:05 +0200 (CEST)
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Pekka Paalanen <ppaalanen@gmail.com>
References: <8c0d7ad8-7ade-bf8a-0414-cc795fbb6aa2@tuxedocomputers.com>
 <YJvSUCCPvWz7y/r7@intel.com> <20210519123405.4d3218a7@eldfell>
 <YKUXbwkUIwvO/OqK@intel.com>
From: Werner Sembach <wse@tuxedocomputers.com>
Message-ID: <bb22dc43-b0ce-86db-0bc0-91a8eff34b27@tuxedocomputers.com>
Date: Mon, 31 May 2021 19:55:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YKUXbwkUIwvO/OqK@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] New uAPI for color management proposal and feedback
 request
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
Cc: "Deucher, Alexander" <alexander.deucher@amd.com>,
 intel-gfx@lists.freedesktop.org, amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMTkuMDUuMjEgdW0gMTU6NDkgc2NocmllYiBWaWxsZSBTeXJqw6Rsw6Q6Cj4gT24gV2VkLCBN
YXkgMTksIDIwMjEgYXQgMTI6MzQ6MDVQTSArMDMwMCwgUGVra2EgUGFhbGFuZW4gd3JvdGU6Cj4+
IE9uIFdlZCwgMTIgTWF5IDIwMjEgMTY6MDQ6MTYgKzAzMDAKPj4gVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4+Cj4+PiBPbiBXZWQsIE1heSAx
MiwgMjAyMSBhdCAwMjowNjo1NlBNICswMjAwLCBXZXJuZXIgU2VtYmFjaCB3cm90ZToKPj4+PiBI
ZWxsbywKPj4+Pgo+Pj4+IEluIGFkZGl0aW9uIHRvIHRoZSBleGlzdGluZyAibWF4IGJwYyIsIGFu
ZCAiQnJvYWRjYXN0IFJHQi9vdXRwdXRfY3NjIiBkcm0gcHJvcGVydGllcyBJIHByb3Bvc2UgNCBu
ZXcgcHJvcGVydGllczoKPj4+PiAicHJlZmVycmVkIHBpeGVsIGVuY29kaW5nIiwgImFjdGl2ZSBj
b2xvciBkZXB0aCIsICJhY3RpdmUgY29sb3IgcmFuZ2UiLCBhbmQgImFjdGl2ZSBwaXhlbCBlbmNv
ZGluZyIKPj4+Pgo+Pj4+Cj4+Pj4gTW90aXZhdGlvbjoKPj4+Pgo+Pj4+IEN1cnJlbnQgbW9uaXRv
cnMgaGF2ZSBhIHZhcmlldHkgcGl4ZWwgZW5jb2RpbmdzIGF2YWlsYWJsZTogUkdCLCBZQ2JDciA0
OjQ6NCwgWUNiQ3IgNDoyOjIsIFlDYkNyIDQ6MjowLgo+Pj4+Cj4+Pj4gSW4gYWRkaXRpb24gdGhl
eSBtaWdodCBiZSBmdWxsIG9yIGxpbWl0ZWQgUkdCIHJhbmdlIGFuZCB0aGUgbW9uaXRvcnMgYWNj
ZXB0IGRpZmZlcmVudCBiaXQgZGVwdGhzLgo+Pj4+Cj4+Pj4gQ3VycmVudGx5IHRoZSBrZXJuZWwg
ZHJpdmVyIGZvciBBTUQgYW5kIEludGVsIEdQVXMgYXV0b21hdGljYWxseSBjb25maWd1cmUgdGhl
IGNvbG9yIHNldHRpbmdzIGF1dG9tYXRpY2FsbHkgd2l0aCBsaXR0bGUKPj4+PiB0byBubyBpbmZs
dWVuY2Ugb2YgdGhlIHVzZXIuIEhvd2V2ZXIgdGhlcmUgYXJlIHNldmVyYWwgcmVhbCB3b3JsZCBz
Y2VuYXJpb3Mgd2hlcmUgdGhlIHVzZXIgbWlnaHQgZGlzYWdyZWUgd2l0aCB0aGUKPj4+PiBkZWZh
dWx0IGNob3NlbiBieSB0aGUgZHJpdmVycyBhbmQgd2FudHMgdG8gc2V0IGhpcyBvciBoZXIgb3du
IHByZWZlcmVuY2UuCj4+Pj4KPj4+PiBTb21lIGV4YW1wbGVzOgo+Pj4+Cj4+Pj4gMS4gV2hpbGUg
UkdCIGFuZCBZQ2JDciA0OjQ6NCBpbiB0aGVvcnkgY2FycnkgdGhlIHNhbWUgYW1vdW50IG9mIGNv
bG9yIGluZm9ybWF0aW9uLCBzb21lIHNjcmVlbnMgbWlnaHQgbG9vayBiZXR0ZXIgb24gb25lCj4+
Pj4gdGhhbiB0aGUgb3RoZXIgYmVjYXVzZSBvZiBiYWQgaW50ZXJuYWwgY29udmVyc2lvbi4gVGhl
IGRyaXZlciBjdXJyZW50bHkgaG93ZXZlciBoYXMgYSBmaXhlZCBkZWZhdWx0IHRoYXQgaXMgY2hv
c2VuIGlmCj4+Pj4gYXZhaWxhYmxlIChSR0IgZm9yIEludGVsIGFuZCBZQ2JDciA0OjQ6NCBmb3Ig
QU1EKS4gVGhlIG9ubHkgd2F5IHRvIGNoYW5nZSB0aGlzIGN1cnJlbnRseSBpcyBieSBlZGl0aW5n
IGFuZCBvdmVybG9hZGluZwo+Pj4+IHRoZSBlZGlkIHJlcG9ydGVkIGJ5IHRoZSBtb25pdG9yIHRv
IHRoZSBrZXJuZWwuCj4+Pj4KPj4+PiAyLiBSR0IgYW5kIFlDYkNyIDQ6NDo0IG5lZWQgYSBoaWdo
ZXIgcG9ydCBjbG9jayB0aGVuIFlDYkNyIDQ6MjowLiBTb21lIGhhcmR3YXJlIG1pZ2h0IHJlcG9y
dCB0aGF0IGl0IHN1cHBvcnRzIHRoZSBoaWdoZXIKPj4+PiBwb3J0IGNsb2NrLCBidXQgYmVjYXVz
ZSBvZiBiYWQgc2hpZWxkaW5nIG9uIHRoZSBQQywgdGhlIGNhYmxlLCBvciB0aGUgbW9uaXRvciB0
aGUgc2NyZWVuIGN1dHMgb3V0IGV2ZXJ5IGZldyBzZWNvbmRzIHdoZW4KPj4+PiBSR0Igb3IgWUNi
Q3IgNDo0OjQgZW5jb2RpbmcgaXMgdXNlZCwgd2hpbGUgWUNiQ3IgNDoyOjAgbWlnaHQganVzdCB3
b3JrIGZpbmUgd2l0aG91dCBjaGFuZ2luZyBoYXJkd2FyZS4gVGhlIGRyaXZlcnMKPj4+PiBjdXJy
ZW50bHkgaG93ZXZlciBhbHdheXMgZGVmYXVsdCB0byB0aGUgImJlc3QgYXZhaWxhYmxlIiBvcHRp
b24gZXZlbiBpZiBpdCBtaWdodCBiZSBicm9rZW4uCj4+Pj4KPj4+PiAzLiBTb21lIHNjcmVlbnMg
bmF0aXZlbHkgb25seSBzdXBwb3J0aW5nIDgtYml0IGNvbG9yLCBzaW11bGF0ZSAxMC1CaXQgY29s
b3IgYnkgcmFwaWRseSBzd2l0Y2hpbmcgYmV0d2VlbiAyIGFkamFjZW50Cj4+Pj4gY29sb3JzLiBU
aGV5IGFkdmVydGlzZSB0aGVtc2VsdmVzIHRvIHRoZSBrZXJuZWwgYXMgMTAtYml0IG1vbml0b3Jz
IGJ1dCB0aGUgdXNlciBtaWdodCBub3QgbGlrZSB0aGUgImZha2UiIDEwLWJpdCBlZmZlY3QKPj4+
PiBhbmQgcHJlZmVyIHJ1bm5pbmcgYXQgdGhlIG5hdGl2ZSA4LWJpdCBwZXIgY29sb3IuCj4+Pj4K
Pj4+PiA0LiBTb21lIHNjcmVlbnMgYXJlIGZhbHNlbHkgY2xhc3NpZmllZCBhcyBmdWxsIFJHQiBy
YW5nZSB3aWxlIHRoZXkgYWN0dWFsbHkgdXNlIGxpbWl0ZWQgUkdCIHJhbmdlLiBUaGlzIHJlc3Vs
dHMgaW4KPj4+PiB3YXNoZWQgb3V0IGNvbG9ycyBpbiBkYXJrIGFuZCBicmlnaHQgc2NlbmVzLiBB
IHVzZXIgb3ZlcnJpZGUgY2FuIGJlIGhlbHBmdWwgdG8gbWFudWFsbHkgZml4IHRoaXMgaXNzdWUg
d2hlbiBpdCBvY2N1cnMuCj4+Pj4KPj4+PiBUaGVyZSBhbHJlYWR5IGV4aXN0IHNldmVyYWwgcmVx
dWVzdHMsIGRpc2N1c3Npb24sIGFuZCBwYXRjaGVzIHJlZ2FyZGluZyB0aGUgdGhlbWF0aWM6Cj4+
Pj4KPj4+PiAtIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vYW1kLy0vaXNzdWVz
LzQ3Ngo+Pj4+Cj4+Pj4gLSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2FtZC8t
L2lzc3Vlcy8xNTQ4Cj4+Pj4KPj4+PiAtIGh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDIxLzUvNy82
OTUKPj4+Pgo+Pj4+IC0gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMjEvNS8xMS80MTYKPj4+Pgo+
PiAuLi4KPj4KPj4+PiBBZG9wdGlvbjoKPj4+Pgo+Pj4+IEEgS0RFIGRldiB3YW50cyB0byBpbXBs
ZW1lbnQgdGhlIHNldHRpbmdzIGluIHRoZSBLREUgc2V0dGluZ3MgR1VJOgo+Pj4+IGh0dHBzOi8v
Z2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vYW1kLy0vaXNzdWVzLzQ3NiNub3RlXzkxMjM3MAo+
Pj4+Cj4+Pj4gVHV4ZWRvIENvbXB1dGVycyAobXkgZW1wbG95ZXIpIHdhbnRzIHRvIGltcGxlbWVu
dCB0aGUgc2V0dGluZ3MgZGVza3RvcCBlbnZpcm9ubWVudCBhZ25vc3RpYyBpbiBUdXhlZG8gQ29u
dHJvbCBDZW50ZXIuIEkKPj4+PiB3aWxsIHN0YXJ0IHdvcmsgb24gdGhpcyBpbiBwYXJhbGxlbCB0
byBpbXBsZW1lbnRpbmcgdGhlIG5ldyBrZXJuZWwgY29kZS4gIAo+Pj4gSSBzdXNwZWN0IGV2ZXJ5
b25lIHdvdWxkIGJlIGhhcHBpZXIgdG8gYWNjZXB0IG5ldyB1YXBpIGlmIHdlIGhhZAo+Pj4gbXVs
dGlwbGUgY29tcG9zaXRvcnMgc2lnbmVkIHVwIHRvIGltcGxlbWVudCBpdC4KPj4gSSB0aGluayBo
YXZpbmcgV2VzdG9uIHN1cHBvcnQgZm9yIHRoZXNlIHdvdWxkIGJlIGdvb2QsIGJ1dCBmb3Igbm93
IGl0Cj4+IHdvbid0IGJlIG11Y2ggb2YgYW4gVUk6IGp1c3Qgd2VzdG9uLmluaSB0byBzZXQsIGFu
ZCB0aGUgbG9nIHRvIHNlZSB3aGF0Cj4+IGhhcHBlbmVkLgo+Pgo+PiBIb3dldmVyLCBrbm93aW5n
IHdoYXQgaGFwcGVuZWQgaXMgZ29pbmcgdG8gYmUgaW1wb3J0YW50IGZvciBjb2xvcgo+PiBjYWxp
YnJhdGlvbiBhdWRpdGluZzoKPj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL3dheWxh
bmQvd2VzdG9uLy0vaXNzdWVzLzQ2Nwo+Pgo+PiBZZXMsIHBsZWFzZSwgdmVyeSBtdWNoIGZvciBy
ZWFkLW9ubHkgcHJvcGVydGllcyBmb3IgdGhlIGZlZWRiYWNrIHBhcnQuCj4+IFByb3BlcnRpZXMg
dGhhdCBib3RoIHVzZXJzcGFjZSBhbmQga2VybmVsIHdpbGwgd3JpdGUgYXJlIGhhcmQgdG8gZGVh
bAo+PiB3aXRoIGluIGdlbmVyYWwuCj4+Cj4+IEJ0dy4gIm1heCBicGMiIEkgY2FuIGtpbmQgb2Yg
Z3Vlc3MgdGhhdCBjb252ZXJzaW9uIGZyb20gZnJhbWVidWZmZXIKPj4gZm9ybWF0IHRvIHRoZSB3
aXJlIGJwYyBoYXBwZW5zIGF1dG9tYXRpY2FsbHkgYW5kIG9ubHkgYXMgdGhlIGZpbmFsCj4+IHN0
ZXAsCj4gV2VsbCwgdGhlcmUgY291bGQgYmUgZGl0aGVyaW5nIGFuZCB3aGF0bm90IGFsc28gaW52
b2x2ZWQuIFNvIGl0J3MKPiBub3Qgc3VwZXIgd2VsbCBzcGVjaWZpZWQgYXRtIGVpdGhlci4KPgo+
PiBidXQgIkJyb2FkY2FzdCBSR0IiIGlzIG1vcmUgY29tcGxpY2F0ZWQ6IGlzIHRoZSBvdXRwdXQg
ZnJvbSB0aGUKPj4gYWJzdHJhY3QgcGl4ZWwgcGlwZWxpbmUgc2VudCBhcy1pcyBhbmQgIkJyb2Fk
Y2FzdCBSR0IiIGlzIGp1c3QgYW5vdGhlcgo+PiBpbmZvcmZyYW1lIGJpdCB0byB0aGUgbW9uaXRv
ciwgb3IgZG9lcyAiQnJvYWRjYXN0IFJHQiIgc2V0dGluZyBhY3R1YWxseQo+PiBjaGFuZ2Ugd2hh
dCBoYXBwZW5zIGluIHRoZSBwaXhlbCBwaXBlbGluZSAqYW5kKiBzZXQgaW5mb2ZyYW1lIGJpdHM/
Cj4gSXQgZG9lcyBpbmRlZWQgY29tcHJlc3MgdGhlIGFjdHVhbCBwaXhlbCBkYXRhLiBUaGVyZSB3
YXMgb25jZSBhIHBhdGNoCj4gcG9ycG9zZWQgdG8gaW50cm9kdWNlIGEgbmV3IGVudW0gdmFsdWUg
dGhhdCBvbmx5IHNldHMgdGhlIGluZm9mcmFtZSBhbmQKPiB0aHVzIHdvdWxkIGFsbG93IHVzZXJz
cGFjZSB0byBwYXNzIHRocm91Z2ggYWxyZWFkeSBsaW1pdGVkIHJhbmdlIGRhdGEuCj4gU2hvdWxk
bid0IGJlIGhhcmQgdG8gcmVzdXJyZWN0IHRoYXQgaWYgbmVlZGVkLgoKRm9yIHRoZSB0aW1lIGJl
aW5nIEkgdHJ5IHRvIGtlZXAgdGhlIGZ1bmN0aW9uYWxpdHkgb2YgQnJvYWRjYXN0IFJHQiB0aGUg
c2FtZSBhbmQganVzdCBwb3J0IGl0IG92ZXIgdG8gQU1ER1BVLCBidXQgaQpoYXZlbid0IGxvb2tl
ZCBpbnRvIGl0IGluIGRldGFpbCB5ZXQuCgo+Cj4+IE15IHZhZ3VlIHJlY29sbGVjdGlvbiBpcyB0
aGF0IGZyYW1lYnVmZmVyIHdhcyBhbHdheXMgYXNzdW1lZCB0byBiZSBpbgo+PiBmdWxsIHJhbmdl
LCBhbmQgdGhlbiBpZiAiQnJvYWRjYXN0IFJHQiIgd2FzIHNldCB0byBsaW1pdGVkIHJhbmdlLCB0
aGUKPj4gZHJpdmVyIHdvdWxkIG1hbmdsZSB0aGUgcGl4ZWwgcGlwZWxpbmUgdG8gY29udmVydCBm
cm9tIGZ1bGwgdG8gbGltaXRlZAo+PiByYW5nZS4gVGhpcyBtZWFucyB0aGF0IGl0IHdvdWxkIGJl
IGltcG9zc2libGUgdG8gaGF2ZSBsaW1pdGVkIHJhbmdlCj4+IGRhdGEgaW4gYSBmcmFtZWJ1ZmZl
ciwgb3IgdGhlcmUgbWlnaHQgYmUgYSBkb3VibGUtY29udmVyc2lvbiBieQo+PiB1c2Vyc3BhY2Ug
cHJvZ3JhbW1pbmcgYSBMVVQgZm9yIGxpbWl0ZWQtPmZ1bGwgYW5kIHRoZW4gdGhlIGRyaXZlcgo+
PiBhZGRpbmcgZnVsbC0+bGltaXRlZC4gSSdtIGFsc28gY29uZnVzZWQgaG93IGZ1bGwvbGltaXRl
ZCB3b3JrcyB3aGVuCj4+IGZyYW1lYnVmZmVyIGlzIGluIFJHQi9ZQ2JDciBhbmQgdGhlIG1vbml0
b3Igd2lyZSBmb3JtYXQgaXMgaW4gUkdCL1lDYkNyCj4+IGFuZCB0aGVyZSBtYXkgYmUgUkdCLT5Z
Q2JDUiBvciBZQ2JDUi0+UkdCIGNvbnZlcnNpb25zIGdvaW5nIG9uIC0gb3IKPj4gbWF5YmUgZXZl
biBGQiBZQ2JDUiAtPiBSR0IgLT4gREVHQU1NQSAtPiBDVE0gLT4gR0FNTUEgLT4gWUNiQ1IuCj4+
Cj4+IEkgd2lzaCBzb21lb25lIGRyZXcgYSBwaWN0dXJlIG9mIHRoZSBLTVMgYWJzdHJhY3QgcGl4
ZWwgcGlwZWxpbmUgd2l0aAo+PiBhbGwgdGhlIGV4aXN0aW5nIEtNUyBwcm9wZXJ0aWVzIGluIGl0
LiA6LSkKPiBIZXJlJ3MgYW4gdWdseSBvbmUgZm9yIGk5MTU6Cj4KPiAgICAgKGlucHV0IFJHQiB2
cy4gWUNiQ3I/KQo+IFtGQl0gLT4gW1lDYkNyP10gLT4gW1lDYkNyLT5SR0IgY29udmVyc2lvbiAg
ICAgXSAtPiBbcGxhbmUgYmxlbmRpbmddIC0+IC4uLgo+ICAgICAgIHwgICAgICAgICAgICAgW1lD
YkNyIGNvbG9yIHJhbmdlL2VuY29kaW5nXSB8Cj4gICAgICAgXCBbUkdCP10gLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS8KPgo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAob3V0cHV0IFJHQiBsaW1pdGVkIHZzLiBSR0IgZnVsbCB2cy4gWUNiQ3I/
KQo+IC4uLiAtPiBbREVHQU1NQV9MVVRdIC0+IFtDVE1dIC0+IFtHQU1NQV9MVVRdIC0+IFtZQ2JD
cj9dIC0+IFtSR0ItPllDYkNyIGNvbnZlcnNpb24gICAgICBdIC0+IFt0byBwb3J0XQo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgIFth
bHdheXMgQlQuNzA5L2xpbWl0ZWQgcmFuZ2VdCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIFwgW1JHQj9dIC0+IC4uLgo+Cj4gLi4uIC0+IFtSR0IgcGFzc3Ro
cm91Z2ggICAgICAgICAgICAgXSAtPiBbdG8gcG9ydF0KPiAgICAgIHwgW0Jyb2FkY2FzdCBSR0I9
ZnVsbCBvciAgICAgICBdCj4gICAgICB8IFtCcm9hZGNhc3QgUkdCPWF1dG8gKyBJVCBtb2RlXQo+
ICAgICAgfAo+ICAgICAgXCBbUkdCIGZ1bGwtPmxpbWl0ZWQgY29udmVyc2lvbl0gLT4gW3RvIHBv
cnRdCj4gICAgICAgIFtCcm9hZGNhc3QgUkdCPWxpbWl0ZWQgb3IgICAgXQo+ICAgICAgICBbQnJv
YWRjYXN0IFJHQj1hdXRvICsgQ0UgbW9kZV0KPgo+IEkgZ3Vlc3MgaGF2aW5nIHNvbWV0aGluZyBs
aWtlIHRoYXQgaW4gdGhlIGRvY3Mgd291bGQgYmUgbmljZS4gTm90IHN1cmUKPiBpZiB0aGVyZSdz
IGEgd2F5IHRvIG1ha2Ugc29tZXRoaW5nIHRoYXQgbG9va3MgZGVjZW50IGZvciBodG1sL2V0Yy4K
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
