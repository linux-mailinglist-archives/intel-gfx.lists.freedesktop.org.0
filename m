Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A743C17E276
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 15:25:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 196496E172;
	Mon,  9 Mar 2020 14:25:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21ED96E178
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 14:24:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20496159-1500050 for multiple; Mon, 09 Mar 2020 14:24:55 +0000
MIME-Version: 1.0
In-Reply-To: <20200309142120.GX13686@intel.com>
References: <20191213152823.26817-1-ville.syrjala@linux.intel.com>
 <157625247338.7535.668231195608100084@skylake-alporthouse-com>
 <20191213170601.GB1208@intel.com> <20191213171739.GC1208@intel.com>
 <158361919091.30296.10666589395477736863@build.alporthouse.com>
 <20200309142120.GX13686@intel.com>
To: Ville Syrjälä <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158376389413.4769.17505078888954050912@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 09 Mar 2020 14:24:54 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add device name to display
 tracepoints
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMDMtMDkgMTQ6MjE6MjApCj4gT24gU2F0LCBN
YXIgMDcsIDIwMjAgYXQgMTA6MTM6MTBQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMTktMTItMTMgMTc6MTc6MzkpCj4gPiA+IE9uIEZy
aSwgRGVjIDEzLCAyMDE5IGF0IDA3OjA2OjAxUE0gKzAyMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90
ZToKPiA+ID4gPiBPbiBGcmksIERlYyAxMywgMjAxOSBhdCAwMzo1NDozM1BNICswMDAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gPiA+ID4gPiBRdW90aW5nIFZpbGxlIFN5cmphbGEgKDIwMTktMTIt
MTMgMTU6Mjg6MjMpCj4gPiA+ID4gPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBJbmNsdWRlIGRl
dl9uYW1lKCkgaW4gdGhlIHRyYWNwb2ludHMgc28gb25lIGNhbiBmaWx0ZXIgYmFzZWQgb24KPiA+
ID4gPiA+ID4gdGhlIGRldmljZS4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IEV4YW1wbGU6Cj4g
PiA+ID4gPiA+IGVjaG8gJ2Rldj09IjAwMDA6MDA6MDIuMCInID4gZXZlbnRzL2k5MTUvaW50ZWxf
Y3B1X2ZpZm9fdW5kZXJydW4vZmlsdGVyCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBUT0RPOiBt
YXliZSBkb24ndCBib3RoIHNwZWNpZnlpbmcgdGhlIGZpZWxkIG5hbWUgYWx3YXlzIGFuZCBqdXN0
Cj4gPiA+ID4gPiA+ICAgICAgIG1ha2UgaXQgJ2RldicgKG9yIHdoYXRldmVyKSBhbHdheXM/Cj4g
PiA+ID4gPiA+IFRPRE86IGFkZCBmb3Igb3RoZXIgdHJhY3BvaW50cyB0b28gaWYgdGhpcyBpcyBk
ZWVtZWQgZ29vZCBlbm91Z2gKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IFN1Z2dlc3RlZC1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiA+ID4gPiA+IFNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Cj4gPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90
cmFjZS5oIHwgOTYgKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLQo+ID4gPiA+ID4gPiAg
MSBmaWxlIGNoYW5nZWQsIDY1IGluc2VydGlvbnMoKyksIDMxIGRlbGV0aW9ucygtKQo+ID4gPiA+
ID4gPiAKPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
dHJhY2UuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdHJhY2UuaAo+ID4gPiA+ID4gPiBp
bmRleCA3ZWY3YTFlMTY2NGMuLjg5MzFiNjc1NmY0NCAxMDA2NDQKPiA+ID4gPiA+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90cmFjZS5oCj4gPiA+ID4gPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfdHJhY2UuaAo+ID4gPiA+ID4gPiBAQCAtMjAsMTEgKzIwLDE4
IEBACj4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+ID4gIC8qIHdhdGVybWFyay9maWZvIHVwZGF0ZXMg
Ki8KPiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiArI2RlZmluZSBfX2Rldl9uYW1lX2k5MTUoZmll
bGQsIGk5MTUpIF9fc3RyaW5nKGZpZWxkLCBkZXZfbmFtZSgoaTkxNSktPmRybS5kZXYpKQo+ID4g
PiA+ID4gPiArI2RlZmluZSBfX2Rldl9uYW1lX2NydGMoZmllbGQsIGNydGMpIF9fc3RyaW5nKGZp
ZWxkLCBkZXZfbmFtZSgoY3J0YyktPmJhc2UuZGV2LT5kZXYpKQo+ID4gPiA+ID4gPiArI2RlZmlu
ZSBfX2Fzc2lnbl9kZXZfbmFtZV9pOTE1KGZpZWxkLCBpOTE1KSBfX2Fzc2lnbl9zdHIoZmllbGQs
IGRldl9uYW1lKChpOTE1KS0+ZHJtLmRldikpCj4gPiA+ID4gPiA+ICsjZGVmaW5lIF9fYXNzaWdu
X2Rldl9uYW1lX2NydGMoZmllbGQsIGNydGMpIF9fYXNzaWduX3N0cihmaWVsZCwgZGV2X25hbWUo
KGNydGMpLT5iYXNlLmRldi0+ZGV2KSkKPiA+ID4gPiA+ID4gKyNkZWZpbmUgX19nZXRfZGV2X25h
bWUoZmllbGQpIF9fZ2V0X3N0cihmaWVsZCkKPiA+ID4gPiA+IAo+ID4gPiA+ID4gU3RvcmluZyB0
aGUgc3RyaW5nIGlzIHF1aXRlIGV4cGVuc2l2ZSwgSSB0aG91Z2h0LiBDYW4gd2Ugc3Rhc2ggdGhl
IGk5MTUKPiA+ID4gPiA+IGFuZCBzdHJpbmdpZnkgaW4gdGhlIFRQX3ByaW50az8gT3IgaXMgc3Rh
c2hpbmcgdGhlIHN0cmluZyB0aGUgc2VjcmV0IGZvcgo+ID4gPiA+ID4gdGhlIGRldj09IGZpbHRl
cj8KPiA+ID4gPiAKPiA+ID4gPiBMYXN0IHRpbWUgSSBzdGFzaGVkIGEgcG9pbnRlciBpbiB0aGVy
ZSBwZW9wbGUgY29tcGxhaW5lZCB0aGF0IGl0IGNhbgo+ID4gPiA+IGRpc2FwcGVhciBiZWZvcmUg
YmVpbmcgY29uc3VtZWQgYW5kIGNhdXNlIGEgdmVyeSB0aGVvcmV0aWNhbCBvb3BzLgo+ID4gPiA+
IEJ1dCBJIGd1ZXNzIHdlIGNvdWxkIHN0YXNoIGp1c3QgdGhlIHBjaSBkZXZmbiBhbmQgd2hhdG5v
dC4KPiA+ID4gCj4gPiA+IEkgYmVsaWV2ZSAnZG9tYWluICsgYnVzICsgZGV2Zm4nIHdvdWxkIGFt
b3VudCB0byA0IGJ5dGVzLiBUaGUgZG93bnNpZGUKPiA+ID4gaXMgdGhhdCBpdCdkIGJlIGp1c3Qg
YW4gaW50ZWdlciBzbyB3ZSdkIGxvc2UgdGhlIGRldj1kb21haW46YnVzOmRldi5mbgo+ID4gPiBz
eW50YXggZm9yIHRoZSBmaWx0ZXIuIFN1cHBvc2UgSSBjb3VsZCB0cnkgdG8gaW1wbGVtZW50IGEg
bmV3IGZpbHRlcgo+ID4gPiB0eXBlIGZvciBpdCwgYnV0IG5vIGd1YXJhbnRlZXMgdGhhdCB3b3Vs
ZCBnZXQgYWNjZXB0ZWQuIFNlZW1zIGEgYml0IHRvbwo+ID4gPiBwY2kgc3BlY2lmaWMgZm9yIGtl
cm5lbC90cmFjZS8uCj4gPiAKPiA+IFB1dCB0aGUgbmFtZSBzdHJpbmcgaW4gdGhlcmUsIGl0J3Mg
c2ltcGxlc3QgYW5kIG1vc3QgZm9vbHByb29mLgo+IAo+IFlvdSBtZWFuIGp1c3QgZ28gd2l0aCB0
aGUgb3JpZ2luYWwgcGF0Y2g/CgpZZXMuIFRoZXJlIGRvZXNuJ3Qgc2VlbSB0byBiZSBhIGNsZWFy
IHdpbm5lciwgc28gZ28gd2l0aCB3aGF0IHdvcmtzCmFscmVhZHkuIEZvciB0aGUgcmVjb3JkLCB3
ZSBoYXZlIGRldj0lZCAlIGk5MTUtPmRybS5wcmltYXJ5LT5pbmRleAplbHNld2hlcmUuCi1DaHJp
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
