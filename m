Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC10A5811E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 13:05:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42B816E0C5;
	Thu, 27 Jun 2019 11:05:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC3506E0C5
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 11:05:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 04:05:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="189022825"
Received: from lswidere-mobl.ger.corp.intel.com (HELO [10.249.140.121])
 ([10.249.140.121])
 by fmsmga002.fm.intel.com with ESMTP; 27 Jun 2019 04:05:41 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190627080339.9178-1-lionel.g.landwerlin@intel.com>
 <156163086213.20851.13729658057147323012@skylake-alporthouse-com>
 <d37bf1f5-7634-1040-1dc6-ae7a96d3245d@intel.com>
 <156163219995.20851.15235239865952527572@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <4ef2cb38-ad53-eb00-a535-9456e72bf453@intel.com>
Date: Thu, 27 Jun 2019 14:05:39 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156163219995.20851.15235239865952527572@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 0/2] drm/i915: timeline semaphore support
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

T24gMjcvMDYvMjAxOSAxMzo0MywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDYtMjcgMTE6Mzk6MjQpCj4+IE9uIDI3LzA2LzIwMTkgMTM6MjEs
IENocmlzIFdpbHNvbiB3cm90ZToKPj4+IFF1b3RpbmcgTGlvbmVsIExhbmR3ZXJsaW4gKDIwMTkt
MDYtMjcgMDk6MDM6MzcpCj4+Pj4gSGksCj4+Pj4KPj4+PiBUaGlzIHJldmlzaW9uIGdldHMgcmlk
IG9mIHRoZSBzeW5jaHJvbm91cyB3YWl0LiBXZSBub3cgaW1wbGVtZW50IHRoZQo+Pj4+IHN5bmNo
cm9ub3VzIHdhaXQgYXMgcGFydCBvZiB0aGUgdXNlcnNwYWNlIGRyaXZlci4gQSB0aHJlYWQgaXMg
c3Bhd25lZAo+Pj4+IGZvciBlYWNoIGVuZ2luZSBhbmQgd2FpdHMgZm9yIGF2YWlsYWJpbGl0eSBv
ZiB0aGUgc3luY29ianMgYmVmb3JlCj4+Pj4gY2FsbGluZyBpbnRvIGV4ZWNidWZmZXIuCj4+PiBX
aHkgd291bGQgeW91IGRvIHRoYXQ/IEl0J3Mgbm90IGxpa2UgdGhlIGtlcm5lbCBhbHJlYWR5IGhh
cyB0aGUgYWJpbGl0eQo+Pj4gdG8gc2VyaWFsaXNlcyBleGVjdXRpb24gYXN5bmNocm9ub3VzbHku
Li4KPj4+IC1DaHJpcwo+Pj4KPj4gTWF5YmUgSSBkaWRuJ3QgZXhwcmVzcyBteXNlbGYgd2VsbC4K
Pj4KPj4gVGhlcmUgaXMgYSByZXF1aXJlbWVudCBmcm9tIHRoZSBWdWxrYW4gc3BlYyB0aGF0IHdl
IHNob3VsZCBiZSBhYmxlIHRvCj4+IHF1ZXVlIGEgd29ya2xvYWQgZGVwZW5kaW5nIG9uIGZlbmNl
cyB0aGF0IGhhdmVuJ3QgbWF0ZXJpYWxpemVkIHlldC4KPj4KPj4KPj4gVGhlIGxhc3QgcmV2aXNp
b24gaW1wbGVtZW50ZWQgdGhhdCBpbiB0aGUgaTkxNSBieSBibG9ja2luZyBpbiB0aGUKPj4gZXhl
Y2J1ZmZlciB1bnRpbCB0aGUgaW5wdXQgZmVuY2VzIGhhZCBhbGwgbWF0ZXJpYWxpemVkLgo+IE15
IHBvaW50IHdhcyB0aGF0IHRoZSBzeW5jb2JqIHNlcW5vIGl0c2VsZiBjb3VsZCBiZSBleHByZXNz
ZWQgYXMgYSBwcm94eQo+IGZlbmNlIHRoYXQgd2FzIHJlcGxhY2VkIHdpdGggdGhlIHJlYWwgZmVu
Y2UgbGF0ZXIuIChBbmQgdGhhdCB3ZQo+IHByZXZpb3VzbHkgaGFkIGNvZGUgdG8gZG8gZXhhY3Rs
eSB0aGF0IDooIGk5MTUgd291bGQgbGlzdGVuIHRvIHRoZQo+IHByb3h5IGZlbmNlIGZvciBpdHMg
c2NoZWR1bGluZyBhbmQgc28gYmUgc2lnbmFsZWQgYnkgdGhlIHJpZ2h0IGZlbmNlCj4gd2hlbiBp
dCB3YXMga25vd24uIFRoYXQgd2lsbCBiZSBhIGZldyBvcmRlcnMgb2YgbWFnbml0dWRlIGxvd2Vy
IGxhdGVuY3ksCj4gbW9yZSBpZiB3ZSBjYW4gb3B0aW1pc2UgYXdheSB0aGUgaXJxIGJ5IGtub3dp
bmcgdGhlIHByb3h5IGZlbmNlIGFoZWFkIG9mCj4gdGltZS4KPiAtQ2hyaXMKPgoKQWdyZWVkLCBi
dXQgdGhlcmUgaXMgYSBwcm9ibGVtIGhlcmUgd2l0aCB0aGUgZG1hX2ZlbmNlX2NoYWluIGltcGxl
bWVudGF0aW9uLgoKCldpdGggdGltZWxpbmUgc2VtYXBob3JlcywgeW91IGNvdWxkIGJlIHdhaXRp
bmcgb24gZm9yIHBvaW50IDYgYW5kIG5vYm9keSAKaXMgZXZlciBnb2luZyB0byBzaWduYWwgdGhh
dCBwb2ludC4KCkluc3RlYWQgcG9pbnQgOCBpcyBnb2luZyB0byBiZSBzaWduYWxlZCBhbmQgd2Ug
bmVlZCB0byBzaWduYWwgcG9pbnQgNiAKd2hlbiB0aGF0IGhhcHBlbnMuCgoKSSBkb24ndCB0aGlu
ayB0aGUgY3VycmVudCBkbWFfZmVuY2VfY2hhaW4gaW1wbGVtZW50YXRpb24gYWxsb3dzIHRvIGRv
IAp0aGF0IGF0IHRoZSBtb21lbnQuCgpJdCB3b3VsZCBuZWVkIHRvIGJlIG1vcmUgY29tcGxleCB3
aXRoIGxpa2VseSBtb3JlIGxvY2tpbmcuCgpJIGhhdmUgdGhvdWdodCBhIGxpdHRsZSBiaXQgYWJv
dXQgd2hhdCB5b3UncmUgcHJvcG9zaW5nIGFuZCBmb3VuZCBzb21lIAppc3N1ZXMgd2l0aCBvdGhl
ciBmZWF0dXJlcyB3ZSBuZWVkIHRvIHN1cHBvcnQgKGxpa2UgaW1wb3J0L2V4cG9ydCkuCgpZb3Ug
Y291bGQgZW5kIHVwIGJ1aWxkaW5nIGEgYXJiaXRyYXJ5IGxvbmcgY2hhaW4gb2YgcHJveHkgZmVu
Y2VzIGZpcmluZyAKb25lIGFub3RoZXIgaW4gY2FzY2FkZSBhbmQgYmxvd2luZyB1cCB0aGUgc3Rh
Y2sgaW4gYSBrZXJuZWwgdGFzayAKc2lnbmFsaW5nIG9uZSBvZiB0aGVtLgoKCi1MaW9uZWwKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
