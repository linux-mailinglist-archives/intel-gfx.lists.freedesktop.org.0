Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F4E17D069
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Mar 2020 23:13:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C130F6E02A;
	Sat,  7 Mar 2020 22:13:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1A906E02A
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Mar 2020 22:13:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20482172-1500050 for multiple; Sat, 07 Mar 2020 22:13:10 +0000
MIME-Version: 1.0
In-Reply-To: <20191213171739.GC1208@intel.com>
References: <20191213152823.26817-1-ville.syrjala@linux.intel.com>
 <157625247338.7535.668231195608100084@skylake-alporthouse-com>
 <20191213170601.GB1208@intel.com> <20191213171739.GC1208@intel.com>
To: Ville Syrjälä <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158361919091.30296.10666589395477736863@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Sat, 07 Mar 2020 22:13:10 +0000
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

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMTktMTItMTMgMTc6MTc6MzkpCj4gT24gRnJpLCBE
ZWMgMTMsIDIwMTkgYXQgMDc6MDY6MDFQTSArMDIwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOgo+
ID4gT24gRnJpLCBEZWMgMTMsIDIwMTkgYXQgMDM6NTQ6MzNQTSArMDAwMCwgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+ID4gPiBRdW90aW5nIFZpbGxlIFN5cmphbGEgKDIwMTktMTItMTMgMTU6Mjg6MjMp
Cj4gPiA+ID4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KPiA+ID4gPiAKPiA+ID4gPiBJbmNsdWRlIGRldl9uYW1lKCkgaW4gdGhlIHRyYWNwb2lu
dHMgc28gb25lIGNhbiBmaWx0ZXIgYmFzZWQgb24KPiA+ID4gPiB0aGUgZGV2aWNlLgo+ID4gPiA+
IAo+ID4gPiA+IEV4YW1wbGU6Cj4gPiA+ID4gZWNobyAnZGV2PT0iMDAwMDowMDowMi4wIicgPiBl
dmVudHMvaTkxNS9pbnRlbF9jcHVfZmlmb191bmRlcnJ1bi9maWx0ZXIKPiA+ID4gPiAKPiA+ID4g
PiBUT0RPOiBtYXliZSBkb24ndCBib3RoIHNwZWNpZnlpbmcgdGhlIGZpZWxkIG5hbWUgYWx3YXlz
IGFuZCBqdXN0Cj4gPiA+ID4gICAgICAgbWFrZSBpdCAnZGV2JyAob3Igd2hhdGV2ZXIpIGFsd2F5
cz8KPiA+ID4gPiBUT0RPOiBhZGQgZm9yIG90aGVyIHRyYWNwb2ludHMgdG9vIGlmIHRoaXMgaXMg
ZGVlbWVkIGdvb2QgZW5vdWdoCj4gPiA+ID4gCj4gPiA+ID4gU3VnZ2VzdGVkLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gPiA+IC0t
LQo+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3RyYWNlLmggfCA5NiArKysrKysr
KysrKysrKysrKysrKystLS0tLS0tLS0tCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA2NSBpbnNl
cnRpb25zKCspLCAzMSBkZWxldGlvbnMoLSkKPiA+ID4gPiAKPiA+ID4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90cmFjZS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV90cmFjZS5oCj4gPiA+ID4gaW5kZXggN2VmN2ExZTE2NjRjLi44OTMxYjY3NTZmNDQgMTAw
NjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90cmFjZS5oCj4gPiA+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90cmFjZS5oCj4gPiA+ID4gQEAgLTIw
LDExICsyMCwxOCBAQAo+ID4gPiA+ICAKPiA+ID4gPiAgLyogd2F0ZXJtYXJrL2ZpZm8gdXBkYXRl
cyAqLwo+ID4gPiA+ICAKPiA+ID4gPiArI2RlZmluZSBfX2Rldl9uYW1lX2k5MTUoZmllbGQsIGk5
MTUpIF9fc3RyaW5nKGZpZWxkLCBkZXZfbmFtZSgoaTkxNSktPmRybS5kZXYpKQo+ID4gPiA+ICsj
ZGVmaW5lIF9fZGV2X25hbWVfY3J0YyhmaWVsZCwgY3J0YykgX19zdHJpbmcoZmllbGQsIGRldl9u
YW1lKChjcnRjKS0+YmFzZS5kZXYtPmRldikpCj4gPiA+ID4gKyNkZWZpbmUgX19hc3NpZ25fZGV2
X25hbWVfaTkxNShmaWVsZCwgaTkxNSkgX19hc3NpZ25fc3RyKGZpZWxkLCBkZXZfbmFtZSgoaTkx
NSktPmRybS5kZXYpKQo+ID4gPiA+ICsjZGVmaW5lIF9fYXNzaWduX2Rldl9uYW1lX2NydGMoZmll
bGQsIGNydGMpIF9fYXNzaWduX3N0cihmaWVsZCwgZGV2X25hbWUoKGNydGMpLT5iYXNlLmRldi0+
ZGV2KSkKPiA+ID4gPiArI2RlZmluZSBfX2dldF9kZXZfbmFtZShmaWVsZCkgX19nZXRfc3RyKGZp
ZWxkKQo+ID4gPiAKPiA+ID4gU3RvcmluZyB0aGUgc3RyaW5nIGlzIHF1aXRlIGV4cGVuc2l2ZSwg
SSB0aG91Z2h0LiBDYW4gd2Ugc3Rhc2ggdGhlIGk5MTUKPiA+ID4gYW5kIHN0cmluZ2lmeSBpbiB0
aGUgVFBfcHJpbnRrPyBPciBpcyBzdGFzaGluZyB0aGUgc3RyaW5nIHRoZSBzZWNyZXQgZm9yCj4g
PiA+IHRoZSBkZXY9PSBmaWx0ZXI/Cj4gPiAKPiA+IExhc3QgdGltZSBJIHN0YXNoZWQgYSBwb2lu
dGVyIGluIHRoZXJlIHBlb3BsZSBjb21wbGFpbmVkIHRoYXQgaXQgY2FuCj4gPiBkaXNhcHBlYXIg
YmVmb3JlIGJlaW5nIGNvbnN1bWVkIGFuZCBjYXVzZSBhIHZlcnkgdGhlb3JldGljYWwgb29wcy4K
PiA+IEJ1dCBJIGd1ZXNzIHdlIGNvdWxkIHN0YXNoIGp1c3QgdGhlIHBjaSBkZXZmbiBhbmQgd2hh
dG5vdC4KPiAKPiBJIGJlbGlldmUgJ2RvbWFpbiArIGJ1cyArIGRldmZuJyB3b3VsZCBhbW91bnQg
dG8gNCBieXRlcy4gVGhlIGRvd25zaWRlCj4gaXMgdGhhdCBpdCdkIGJlIGp1c3QgYW4gaW50ZWdl
ciBzbyB3ZSdkIGxvc2UgdGhlIGRldj1kb21haW46YnVzOmRldi5mbgo+IHN5bnRheCBmb3IgdGhl
IGZpbHRlci4gU3VwcG9zZSBJIGNvdWxkIHRyeSB0byBpbXBsZW1lbnQgYSBuZXcgZmlsdGVyCj4g
dHlwZSBmb3IgaXQsIGJ1dCBubyBndWFyYW50ZWVzIHRoYXQgd291bGQgZ2V0IGFjY2VwdGVkLiBT
ZWVtcyBhIGJpdCB0b28KPiBwY2kgc3BlY2lmaWMgZm9yIGtlcm5lbC90cmFjZS8uCgpQdXQgdGhl
IG5hbWUgc3RyaW5nIGluIHRoZXJlLCBpdCdzIHNpbXBsZXN0IGFuZCBtb3N0IGZvb2xwcm9vZi4K
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
