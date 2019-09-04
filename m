Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74288A8255
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 14:26:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D58CD8930A;
	Wed,  4 Sep 2019 12:26:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DFA08930A
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 12:26:38 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 05:26:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,465,1559545200"; d="scan'208";a="190157550"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 04 Sep 2019 05:26:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Sep 2019 15:26:34 +0300
Date: Wed, 4 Sep 2019 15:26:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Sharma, Shashank" <shashank.sharma@intel.com>
Message-ID: <20190904122634.GA7482@intel.com>
References: <20190903165227.6056-1-shashank.sharma@intel.com>
 <20190903172057.GZ7482@intel.com>
 <599fbdf3-e1b9-92e5-3303-58a1a8a83a55@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <599fbdf3-e1b9-92e5-3303-58a1a8a83a55@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [RFC 0/2] Enable Nearest-neighbor for Integer mode
 scaling
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMDQsIDIwMTkgYXQgMDg6MzI6MDlBTSArMDUzMCwgU2hhcm1hLCBTaGFzaGFu
ayB3cm90ZToKPiBIZWxsbyBWaWxsZSwKPiAKPiBPbiA5LzMvMjAxOSAxMDo1MCBQTSwgVmlsbGUg
U3lyasOkbMOkIHdyb3RlOgo+ID4gT24gVHVlLCBTZXAgMDMsIDIwMTkgYXQgMTA6MjI6MjVQTSAr
MDUzMCwgU2hhc2hhbmsgU2hhcm1hIHdyb3RlOgo+ID4+IEJsdXJyeSBvdXRwdXRzIGR1cmluZyB1
cHNjYWxpbmcgdGhlIGJ1ZmZlciwgaXMgYSBnZW5lcmljIHByb2JsZW0gb2YgZ2Z4Cj4gPj4gaW5k
dXN0cnkuIE9uZSBvZiB0aGUgbWFqb3IgcmVhc29uIGJlaGluZCB0aGlzIGJsdXJyaW5lc3MgaXMg
dGhlCj4gPj4gaW50ZXJwb2xhdGlvbiBvZiBwaXhlbCB2YWx1ZXMgdXNlZCBieSBtb3N0IG9mIHRo
ZSB1cHNjYWxpbmcgaGFyZHdhcmVzLgo+ID4+Cj4gPj4gTmVhcmVzdC1uZWlnaGJvciBpcyBhIHNj
YWxpbmcgbW9kZSwgd2hpY2ggd29ya3MgYnkgZmlsbGluZyBpbiB0aGUgbWlzc2luZwo+ID4+IGNv
bG9yIHZhbHVlcyBpbiB0aGUgdXBzY2FsZWQgaW1hZ2Ugd2l0aCB0aGF0IG9mIHRoZSBjb29yZGlu
YXRlLW1hcHBlZAo+ID4+IG5lYXJlc3Qgc291cmNlIHBpeGVsIHZhbHVlLgo+ID4+Cj4gPj4gTmVh
cmVzdC1uZWlnaGJvciBjYW4gcHJvZHVjZSAoYWxtb3N0KSBub24tYmx1cnJ5IHNjYWxpbmcgb3V0
cHV0cyB3aGVuCj4gPj4gdGhlIHNjYWxpbmcgcmF0aW8gaXMgY29tcGxldGUgaW50ZWdlci4gRm9y
IGV4YW1wbGU6Cj4gPj4gLSBpbnB1dCBidWZmZXIgcmVzb2x1dGlvbjogMTI4MHg3MjAoSEQpCj4g
Pj4gLSBvdXRwdXQgYnVmZmVyIHJlc29sdXRpb246IDM4NDB4MjE2MChVSEQvNEspCj4gPj4gLSBz
Y2FsaW5nIHJhdGlvIChoKSA9IDM4NDAvMTI4MCA9IDMKPiA+PiAgICBzY2FsaW5nIHJhdGlvICh2
KSA9IDIxNjAvNzIwID0gMwo+ID4+IEluIHN1Y2ggc2NlbmFyaW9zLCB3ZSBzaG91bGQgdHJ5IHRv
IHBpY2sgTmVhcmVzdC1uZWlnaGJvciBhcyBzY2FsaW5nCj4gPj4gbWV0aG9kIHdoZW4gcG9zc2li
bGUuCj4gPj4KPiA+PiBNYW55IGdhbWluZyBjb21tdW5pdGllcyBoYXZlIGJlZW4gYXNraW5nIGZv
ciBpbnRlZ2VyLW1vZGUgc2NhbGluZwo+ID4+IHN1cHBvcnQsIHNvbWUgbGlua3MgYW5kIGJhY2tn
cm91bmQ6Cj4gPj4gaHR0cHM6Ly9zb2Z0d2FyZS5pbnRlbC5jb20vZW4tdXMvYXJ0aWNsZXMvaW50
ZWdlci1zY2FsaW5nLXN1cHBvcnQtb24taW50ZWwtZ3JhcGhpY3MKPiA+PiBodHRwOi8vdGFuYWxp
bi5jb20vZW4vYXJ0aWNsZXMvbG9zc2xlc3Mtc2NhbGluZy8KPiA+PiBodHRwczovL2NvbW11bml0
eS5hbWQuY29tL3RocmVhZC8yMDkxMDcKPiA+PiBodHRwczovL3d3dy5udmlkaWEuY29tL2VuLXVz
L2dlZm9yY2UvZm9ydW1zL2dhbWUtcmVhZHktZHJpdmVycy8xMy8xMDAyL2ZlYXR1cmUtcmVxdWVz
dC1ub25ibHVycnktdXBzY2FsaW5nLWF0LWludGVnZXItcmF0Lwo+ID4+Cj4gPj4gVGhpcyBwYXRj
aCBzZXJpZXMgZW5hYmxlcyBOTiBzY2FsaW5nIG9uIEludGVsIGRpc3BsYXkgKElDTCksIHdoZW4g
dGhlIHVwc2NhbGluZwo+ID4+IHJhdGlvIGlzIGludGVnZXIuCj4gPiBJIHRoaW5rIHdlJ2QgcHJv
YmFibHkgd2FudCBhIHByb3BlcnR5IGZvciB0aGlzIHNvcnQgb2Ygc3R1ZmYuIGlndAo+ID4gY291
bGQgcGVyaGFwcyBhbHNvIHVzZSBpdCB0byBlbmFibGUgY3JjIGJhc2VkIHNjYWxpbmcgdGVzdHMu
Cj4gSSB3YXMgaW5pdGlhbGx5IHBsYW5uaW5nIHRvIGF0dGFjaCB0aGlzIHRvIHNjYWxpbmcgbW9k
ZSBwcm9wZXJ0eSwgCj4gcHJvYmFibHkgY3JlYXRlIGEgbmV3IG9wdGlvbiBpbiB0aGVyZSBjYWxs
ZWQgIkludGVnZXIgbW9kZSBzY2FsaW5nIiBvciAKPiB3ZSBjYW4gdXNlIHRoZSAibWFpbnRhaW4g
YXNwZWN0IHJhdGlvIiBzdWItb3B0aW9uIHRvby4gRG8geW91IHRoaW5rIGl0IAo+IHdvdWxkIG1h
a2Ugc2Vuc2UgPyBPciBzaG91bGQgd2UgY3JlYXRlIGEgbmV3IHByb3BlcnR5IGFsdG9nZXRoZXIg
PwoKSSB3YXMgdGhpbmtpbmcgYSBuZXcgcHJvcC4gSXQgd291bGQgYWxzbyBleHBvc2UgdGhlIHBv
c3NpYmlsaXR5IG9mCmFkZGluZyBldmVuIG1vcmUgZmlsdGVyL3dpbmRvdyBmdW5jdGlvbnMuIE1h
eWJlIHNvbWVvbmUgd2FudHMgYQpsaW5lYXIgZmlsdGVyIGZvciBpbnN0YW5jZS4KCj4gPiBBbm90
aGVyIHByb2JsZW0gaXMgdGhhdCB3ZSBjdXJyZW50bHkgZG9uJ3QgZXhwb3NlIHRoZSBwYW5lbCBm
aXR0ZXIKPiA+IGZvciBleHRlcm5hbCBkaXNwbGF5cyBzbyB0aGlzIHdvdWxkIGJlIGxpbWl0ZWQg
dG8gZURQL0RTSSBvbmx5Lgo+ID4gSSBoYXZlIGEgYnJhbmNoIHRoYXQgaW1wbGVtZW50cyBib3Jk
ZXJzIChmb3IgdW5kZXJzY2FuKSBmb3IgRFAvSERNSQo+ID4gd2hpY2ggaXMgYXQgbGVhc3QgbW92
aW5nIHRoZSBjb2RlIGEgbGl0dGxlIGJpdCBpbnRvIGEgZGlyZWN0aW9uIHdoZXJlCj4gPiB3ZSBj
b3VsZCBjb25zaWRlciBleHBvc2luZyB0aGUgcGFuZWwgZml0dGVyIGZvciBleHRlcm5hbCBkaXNw
bGF5cy4KPiAKPiBUaGlzIHdvdWxkIGJlIHZlcnkgaW50ZXJlc3RpbmcsIGRvIHlvdSBoYXZlIGFu
eSBwbGFucyB0byBwdWJsaXNoIHRoaXMgc29vbiA/CgpJIGNhbiBzZW5kIGl0IG91dC4gQmVlbiBo
YW5naW5nIG9uIHRvIGl0IGJlY2F1c2UgdGhlcmUncyBvdGhlciBwZW5kaW5nCnN0dWZmIG9uIHRo
ZSBsaXN0IGFzIHdlbGwsIGJ1dCBhIGZldyBtb3JlIHBhdGNoZXMgcHJvYmFibHkgd29uJ3QgaHVy
dCA6KQoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
