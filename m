Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F30C737BD9B
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 15:02:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA9E16EB9A;
	Wed, 12 May 2021 13:02:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A77D36EB98;
 Wed, 12 May 2021 13:02:09 +0000 (UTC)
IronPort-SDR: mz37/KCvRAK/+6Bwc5enMohDDAmTitMRX2JhERlCtotZPLms+Uog84RYMXc32VGOdFeIUHvlTG
 P1DYajJlPlxA==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="179963349"
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="179963349"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 06:02:06 -0700
IronPort-SDR: cfTayY3noWvjLgRlrcBfD+8S9sVW2vG5X0AHxR/ciDX6w4SCFEv/bw6BHISIOpnHtWhzHQ4LtB
 g91OWBZt57/A==
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="609921226"
Received: from kjeldbeg-mobl2.ger.corp.intel.com ([10.249.254.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 06:02:05 -0700
Message-ID: <6e317ee2b22546a2333d3098f5cda1a59da62a1a.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Thomas
 =?ISO-8859-1?Q?Hellstr=F6m?= "(Intel)"
 <thomas_os@shipmail.org>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
Date: Wed, 12 May 2021 15:02:02 +0200
In-Reply-To: <d0f0c55d-1784-922b-e9bd-0248cd7fb6af@amd.com>
References: <20210511132525.377190-1-thomas.hellstrom@linux.intel.com>
 <20210511132525.377190-7-thomas.hellstrom@linux.intel.com>
 <8ac6bc5c-17c0-2ffd-7f8c-823ab3c8a858@amd.com>
 <88ea8e22-3314-60a4-8f4b-0b37de444b1d@shipmail.org>
 <8551810c-a095-3906-d982-7bc409140c48@amd.com>
 <0b7f32d8-bfb9-84dd-fea7-556dddded1cc@linux.intel.com>
 <a0277869-7244-aee0-3359-21dac8f5a724@amd.com>
 <e85e9bd7a28c8570c6429683d6d68ee0855afacb.camel@linux.intel.com>
 <d0f0c55d-1784-922b-e9bd-0248cd7fb6af@amd.com>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915/ttm,
 drm/ttm: Introduce a TTM i915 gem object backend
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIxLTA1LTEyIGF0IDA5OjA5ICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Ogo+IEFtIDEyLjA1LjIxIHVtIDA5OjA1IHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06Cj4gPiBP
biBXZWQsIDIwMjEtMDUtMTIgYXQgMDg6NTcgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
Cj4gPiA+IEFtIDExLjA1LjIxIHVtIDE2OjI4IHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06Cj4g
PiA+ID4gT24gNS8xMS8yMSA0OjA5IFBNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+ID4gPiA+
ID4gCj4gPiA+ID4gPiBBbSAxMS4wNS4yMSB1bSAxNjowNiBzY2hyaWViIFRob21hcyBIZWxsc3Ry
w7ZtIChJbnRlbCk6Cj4gPiA+ID4gPiA+IE9uIDUvMTEvMjEgMzo1OCBQTSwgQ2hyaXN0aWFuIEvD
tm5pZyB3cm90ZToKPiA+ID4gPiA+ID4gPiBBbSAxMS4wNS4yMSB1bSAxNToyNSBzY2hyaWViIFRo
b21hcyBIZWxsc3Ryw7ZtOgo+ID4gPiA+ID4gPiA+ID4gTW9zdCBsb2dpY2FsIHBsYWNlIHRvIGlu
dHJvZHVjZSBUVE0gYnVmZmVyIG9iamVjdHMgaXMKPiA+ID4gPiA+ID4gPiA+IGFzIGFuCj4gPiA+
ID4gPiA+ID4gPiBpOTE1Cj4gPiA+ID4gPiA+ID4gPiBnZW0gb2JqZWN0IGJhY2tlbmQuIFdlIG5l
ZWQgdG8gYWRkIHNvbWUgb3BzIHRvIGFjY291bnQKPiA+ID4gPiA+ID4gPiA+IGZvcgo+ID4gPiA+
ID4gPiA+ID4gYWRkZWQKPiA+ID4gPiA+ID4gPiA+IGZ1bmN0aW9uYWxpdHkgbGlrZSBkZWxheWVk
IGRlbGV0ZSBhbmQgTFJVIGxpc3QKPiA+ID4gPiA+ID4gPiA+IG1hbmlwdWxhdGlvbi4KPiA+ID4g
PiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gSW5pdGlhbGx5IHdlIHN1cHBvcnQgb25seSBMTUVN
IGFuZCBTWVNURU0gbWVtb3J5LCBidXQKPiA+ID4gPiA+ID4gPiA+IFNZU1RFTQo+ID4gPiA+ID4g
PiA+ID4gKHdoaWNoIGluIHRoaXMgY2FzZSBtZWFucyBldmljdGVkIExNRU0gb2JqZWN0cykgaXMg
bm90Cj4gPiA+ID4gPiA+ID4gPiB2aXNpYmxlIHRvIGk5MTUgR0VNIHlldC4gVGhlIHBsYW4gaXMg
dG8gbW92ZSB0aGUgaTkxNQo+ID4gPiA+ID4gPiA+ID4gZ2VtCj4gPiA+ID4gPiA+ID4gPiBzeXN0
ZW0KPiA+ID4gPiA+ID4gPiA+IHJlZ2lvbgo+ID4gPiA+ID4gPiA+ID4gb3ZlciB0byB0aGUgVFRN
IHN5c3RlbSBtZW1vcnkgdHlwZSBpbiB1cGNvbWluZyBwYXRjaGVzLgo+ID4gPiA+ID4gPiA+ID4g
Cj4gPiA+ID4gPiA+ID4gPiBXZSBzZXQgdXAgR1BVIGJpbmRpbmdzIGRpcmVjdGx5IGJvdGggZnJv
bSBMTUVNIGFuZCBmcm9tCj4gPiA+ID4gPiA+ID4gPiB0aGUKPiA+ID4gPiA+ID4gPiA+IHN5c3Rl
bQo+ID4gPiA+ID4gPiA+ID4gcmVnaW9uLAo+ID4gPiA+ID4gPiA+ID4gYXMgdGhlcmUgaXMgbm8g
bmVlZCB0byB1c2UgdGhlIGxlZ2FjeSBUVE1fVFQgbWVtb3J5Cj4gPiA+ID4gPiA+ID4gPiB0eXBl
Lgo+ID4gPiA+ID4gPiA+ID4gV2UgcmVzZXJ2ZQo+ID4gPiA+ID4gPiA+ID4gdGhhdCBmb3IgZnV0
dXJlIHBvcnRpbmcgb2YgR0dUVCBiaW5kaW5ncyB0byBUVE0uCj4gPiA+ID4gPiA+ID4gPiAKPiA+
ID4gPiA+ID4gPiA+IFRoZXJlIGFyZSBzb21lIGNoYW5nZXMgdG8gVFRNIHRvIGFsbG93IGZvciBw
dXJnaW5nCj4gPiA+ID4gPiA+ID4gPiBzeXN0ZW0KPiA+ID4gPiA+ID4gPiA+IG1lbW9yeQo+ID4g
PiA+ID4gPiA+ID4gYnVmZmVyCj4gPiA+ID4gPiA+ID4gPiBvYmplY3RzIGFuZCB0byByZWZ1c2Ug
c3dhcHBpbmcgb2Ygc29tZSBvYmplY3RzOgo+ID4gPiA+ID4gPiA+ID4gVW5mb3J0dW5hdGVseSBp
OTE1Cj4gPiA+ID4gPiA+ID4gPiBnZW0KPiA+ID4gPiA+ID4gPiA+IHN0aWxsIHJlbGllcyBoZWF2
aWx5IG9uIHNob3J0LXRlcm0gb2JqZWN0IHBpbm5pbmcsIGFuZAo+ID4gPiA+ID4gPiA+ID4gd2Un
dmUKPiA+ID4gPiA+ID4gPiA+IGNob3NlbiB0bwo+ID4gPiA+ID4gPiA+ID4ga2VlcCBzaG9ydC10
ZXJtLXBpbm5lZCBidWZmZXIgb2JqZWN0cyBvbiB0aGUgVFRNIExSVQo+ID4gPiA+ID4gPiA+ID4g
bGlzdHMKPiA+ID4gPiA+ID4gPiA+IGZvciBub3csCj4gPiA+ID4gPiA+ID4gPiBtZWFuaW5nIHRo
YXQgd2UgbmVlZCBzb21lIHNvcnQgb2YgbWVjaGFuaXNtIHRvIHRlbGwgVFRNCj4gPiA+ID4gPiA+
ID4gPiB0aGV5IGFyZSBub3QKPiA+ID4gPiA+ID4gPiA+IHN3YXBwYWJsZS4gQSBsb25nZXIgdGVy
bSBnb2FsIGlzIHRvIGdldCByaWQgb2YgdGhlCj4gPiA+ID4gPiA+ID4gPiBzaG9ydC0KPiA+ID4g
PiA+ID4gPiA+IHRlcm0KPiA+ID4gPiA+ID4gPiA+IHBpbm5pbmcuCj4gPiA+ID4gPiA+ID4gV2Vs
bCBqdXN0IHVzZSB0aGUgZXZpY3Rpb25fdmFsdWFibGUgaW50ZXJmYWNlIGZvciB0aGlzLgo+ID4g
PiA+ID4gPiBZZXMsIHdlIGRvIHRoYXQgZm9yIHZyYW0vbG1lbSBldmljdGlvbiwgYnV0IHdlIGhh
dmUgbm90aGluZwo+ID4gPiA+ID4gPiBzaW1pbGFyCj4gPiA+ID4gPiA+IGZvciBzeXN0ZW0gc3dh
cHBpbmcuIERvIEkgdW5kZXJzdGFuZCB5b3UgY29ycmVjdGx5IHRoYXQgeW91Cj4gPiA+ID4gPiA+
IHdhbnQgbWUKPiA+ID4gPiA+ID4gdG8gYWRkIGEgY2FsbCB0byBldmljdGlvbl92YWx1YWJsZSgp
IGFsc28gZm9yIHRoYXQgaW5zdGVhZAo+ID4gPiA+ID4gPiBvZgo+ID4gPiA+ID4gPiBzd2FwX3Bv
c3NpYmxlKCk/Cj4gPiA+ID4gPiBZb3Ugc2hvdWxkIGFscmVhZHkgaGF2ZSB0aGF0LiBldmljdGlv
bl92YWx1YWJsZSBpcyBjYWxsZWQgaW4KPiA+ID4gPiA+IGJvdGgKPiA+ID4gPiA+IGNhc2VzLgo+
ID4gPiA+ID4gCj4gPiA+ID4gSG1tLiBJIGNhbiBvbmx5IHNlZSBpdCBjYWxsZWQgZnJvbSB0dG1f
bWVtX2V2aWN0X2ZpcnN0KCkgd2hpY2gKPiA+ID4gPiBpcwo+ID4gPiA+IG5vdAo+ID4gPiA+IGlu
IHRoZSBzd2FwcGluZyBwYXRoPyBPciBkbyBJIG1pc3Mgc29tZXRoaW5nPwo+ID4gPiBNaG0sIGxv
b2tzIGxpa2UgbXkgcmVjb2xsZWN0aW9uIHdhcyB3cm9uZy4gV2Ugc2hvdWxkIHByb2JhYmx5Cj4g
PiA+IG1vdmUKPiA+ID4gdGhlCj4gPiA+IGNhbGwgaW50byB0aGUgdHRtX2JvX2V2aWN0X3N3YXBv
dXRfYWxsb3dhYmxlKCkgZnVuY3Rpb24uCj4gPiBZZXMsIEkgdGhpbmsgd2UgYWxzbyBuZWVkIGEg
Y29udmVudGlvbiB3aGV0aGVyIGl0J3MgY2FsbGVkIGRtYV9yZXN2Cj4gPiBsb2NrZWQgb3Igbm90
LCBzaW5jZSB0aGUgaGVscGVyIGFjY2Vzc2VzIGJvLT5tZW0sIHdoaWNoIHNob3VsZAo+ID4gcmVh
bGx5Cj4gPiBvbmx5IGJlIGRvbmUgdW5kZXIgcmVzZXJ2YXRpb24uIEF0IHRoZSBzYW1lIHBvaW50
LCB0aGVyZSBpcyB2YWx1ZQo+ID4gaW4KPiA+IGNhbGxpbmcgdGhpcyBmdW5jdGlvbiB3aGlsZSBo
b2xkaW5nIHRoZSBMUlUgbG9jay4KPiAKPiBZb3UgYWN0dWFsbHkgbmVlZCB0byBjYWxsIGl0IHdo
aWxlIGhvbGRpbmcgdGhlIGxvY2sgYmVjYXVzZSBldmljdGlvbiAKPiBvdGhlcndpc2UgZW5kcyB1
cCBpbiBhbiBlbmRsZXNzIGxvb3AuCj4gCj4gVHJ5aW5nIHRvIGZpeCB0aGF0IGZvciB5ZWFycywg
YnV0IHNvIGZhciBubyBsdWNrIHdpdGggdGhhdC4KPiAKPiA+IEFsc28sIEkgd29uZGVyIHdoZXRo
ZXIgaW1wbGVtZW50YXRpb25zIG9mIHRoaXMgY2FsbGJhY2sgbWlnaHQKPiA+IGVuY291bnRlcgo+
ID4gdW5leHBlY3RlZCBkYXRhIHdoZW4gY2FsbGVkIGZyb20gdGhlIHN3YXBvdXQgcGF0aCwgYmVj
YXVzZSBhdCBsZWFzdAo+ID4gdGhlCj4gPiBoZWxwZXIgYXNzdW1lcyBpdCBub3QgaW4gc3lzdGVt
IG1lbW9yeSwgc2luY2UgaXQgaXMgYWNjZXNzaW5nIGJvLQo+ID4gPiBtZW0uc3RhcnQuCj4gPiBT
byB1bmxlc3Mgd2UgdXNlIGEgc2VwYXJhdGUgY2FsbGJhY2sgZm9yIHN3YXBvdXQsIHRoZXJlJ3Mg
c29tZQo+ID4gYXVkaXRpbmcKPiA+IHRvIGJlIGRvbmUuCj4gCj4gUGxlYXNlIGF1ZGl0IHRoZSBl
eGlzdGluZyBjYWxsYmFja3MgYW5kIG1vdmUgdGhlIGNhbGxiYWNrIGludG8gdGhlIAo+IGZ1bmN0
aW9uIGFmdGVyIGRvaW5nIHRoYXQuCj4gCj4gVGhhbmtzLAo+IENocmlzdGlhbi4KCldvdWxkIGl0
IGJlIE9LIGlmIEkgYWxzbyBtb3ZlIHRoZSBrcmVmX2dldF91bmxlc3NfemVybygpIHRvIGJlZm9y
ZSAKdHRtX2JvX2V2aWN0X3N3YXBvdXRfYWxsb3dhYmxlKCkgdG8gbWFrZSB0aGUgY29kZSBsZXNz
IHNlbnNpdGl2ZSB0bwpzdXJwcmlzZXM/CgovVGhvbWFzCgoKPiAKPiA+IAo+ID4gUGxzIGxldCBt
ZSBrbm93IHdoYXQgeW91IHRoaW5rLgo+ID4gVGhhbmtzLAo+ID4gVGhvbWFzCj4gPiAKPiA+IAo+
ID4gCj4gPiA+IENocmlzdGlhbi4KPiA+ID4gCj4gPiA+ID4gVGhhbmtzLAo+ID4gPiA+IAo+ID4g
PiA+IFRob21hcwo+ID4gPiA+IAo+ID4gPiA+IAo+ID4gPiA+IAo+ID4gCj4gCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
