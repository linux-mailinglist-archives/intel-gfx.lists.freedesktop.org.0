Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17028650F3
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 06:24:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F1228954A;
	Thu, 11 Jul 2019 04:24:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 057488954A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 04:24:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 21:24:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="189381812"
Received: from zye4-mobl2.ccr.corp.intel.com (HELO [10.239.205.41])
 ([10.239.205.41])
 by fmsmga004.fm.intel.com with ESMTP; 10 Jul 2019 21:24:42 -0700
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Anusha Srivatsa <anusha.srivatsa@intel.com>
References: <20190703113640.31100-1-michal.wajdeczko@intel.com>
 <20190703113640.31100-2-michal.wajdeczko@intel.com>
 <156268182280.22347.16782215518232414464@jlahtine-desk.ger.corp.intel.com>
 <op.z4ptu00mxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: "Ye, Tony" <tony.ye@intel.com>
Message-ID: <a264fa8f-28a2-128f-bdc2-8803868d870e@intel.com>
Date: Thu, 11 Jul 2019 12:24:41 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <op.z4ptu00mxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Turn on GuC/HuC auto mode
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

Ck9uIDcvMTAvMjAxOSAxMDoyNyBQTSwgTWljaGFsIFdhamRlY3prbyB3cm90ZToKPiBPbiBUdWUs
IDA5IEp1bCAyMDE5IDE2OjE3OjAyICswMjAwLCBKb29uYXMgTGFodGluZW4KPiA8am9vbmFzLmxh
aHRpbmVuQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4KPj4gQmV0dGVyIHN1YmplY3Qgd291bGQg
YmU6ICJFbmFibGUgSHVDICh0aHJvdWdoIEd1Qykgb24gc3VwcG9ydGVkIAo+PiBwbGF0Zm9ybXMi
Cj4KPiBTdWNoIHN1YmplY3Qgc291bmRzIGJldHRlciwgYnV0IG9uIG9uZSBoYW5kIGl0IGRvZXMg
bm90IHJlZmxlY3QgcmVhbAo+IGNvZGUgY2hhbmdlIChzaW5jZSB3ZSBhcmUgbm90IGV4cGxpY2l0
bHkgZW5hYmxpbmcgSHVDLCBidXQgaW5zdGVhZCB3ZQo+IGFyZSBqdXN0IGxldHRpbmcgdGhlIGRy
aXZlciBlbmFibGUgR3VDL0h1QyB0byB3aGF0ZXZlciBtb2RlIGl0IGRlY2lkZXMpLAo+IGJ1dCBv
biBvdGhlciBoYW5kIHRoaXMgaXMgd2hhdCBhY3R1YWwgb3V0Y29tZSBvZiB0aGUgY2hhbmdlIGlz
IChhcyBpOTE1Cj4gY3VycmVudGx5IGVuYWJsZXMgR3VDIGxvYWRpbmcgd2l0aCBIdUMgYXV0aGVu
dGljYXRpb24gb24gZXZlcnkgcGxhdGZvcm0KPiB3aGVyZSBjb3JyZXNwb25kaW5nIGZpcm13YXJl
cyBhcmUgZGVmaW5lZC9hdmFpbGFibGUsIGFuZCBub3RoaW5nIG1vcmUpLgo+Cj4gUGxlYXNlIGNv
bmZpcm0gaWYgeW91IHN0aWxsIG9wdC1pbiB0byB1c2UgeW91ciBzdWJqZWN0Lgo+Cj4+Cj4+IFF1
b3RpbmcgTWljaGFsIFdhamRlY3prbyAoMjAxOS0wNy0wMyAxNDozNjo0MCkKPj4+IEd1QyBmaXJt
d2FyZSBpcyBub3cgbWF0dXJlLCBzbyBsZXQgaXQgcnVuIGJ5IGRlZmF1bHQuCj4+Cj4+IFRoYXQn
cyBiaXQgb2YgYSBtaXNsZWFkaW5nIHN0YXRlbWVudCAoaW4gbW9yZSB0aGFuIG9uZSB3YXkpLgo+
Cj4gSXQncyBtYXR1cmUgZW5vdWdoIHRvIHBlcmZvcm0gSHVDIGF1dGhlbnRpY2F0aW9uLCBhbmQg
d2UKPiBkb24ndCBleHBlY3QgbW9yZSBmcm9tIGl0IDspCj4KPj4KPj4gIkVuYWJsZSBsb2FkaW5n
IEh1QyBmaXJtd2FyZSAodGhyb3VnaCBHdUMpIHRvIHVubG9jawo+PiBhZHZhbmNlZCB2aWRlbyBj
b2RlY3Mgb24gc3VwcG9ydGVkIHBsYXRmb3Jtcy4KPj4KPj4gR3VDIGZpcm13YXJlIGlzIHJlcXVp
cmVkIHRvIGF1dGhlbnRpY2F0ZSB0aGUgSHVDIGZpcm13YXJlLAo+PiB3aGljaCBpcyBhIHJlcXVp
cmVtZW50IGZvciBpdCB0byBvcGVyYXRlLiIKPgo+IFRvIHNvbWUgZXh0ZW5kIHRoaXMgZHVwbGlj
YXRlcyBleGlzdGluZyAiRE9DOiBIdUMgRmlybXdhcmUiCj4gRG8gd2UgbmVlZCB0byByZXBlYXQg
dGhhdCBhZ2FpbiBoZXJlPwo+Cj4+Cj4+IEhhcyB0aGUgbW9zdCByZWNlbnQgZmlybXdhcmUgYmVl
biBtZXJnZWQgdG8gbGludXgtZmlybXdhcmUgYW5kCj4+IGlzIGl0IHByZXNlbnQgaW4gb3VyIENJ
IHN5c3RlbXM/Cj4KPiBNeSB1bmRlcnN0YW5kaW5nIGlzOiBObyBhbmQgWWVzLgo+IE1heWJlIEFu
dXNoYSBjYW4gcHJvdmlkZSBtb3JlIGRldGFpbHMgaGVyZS4KPgo+Pgo+PiBJdCB3b3VsZCBhbHNv
IGJlIGdvb2QgdG8gbGlzdCB3aGF0IGtpbmQgb2YgdGVzdHMgaGF2ZSBiZWVuIHJ1bgo+PiB0byBl
bnN1cmUgdGhhdCB0aGVyZSBhcmUgbm8gcmVncmVzc2lvbnMsCj4KPiBJJ20gYWZyYWlkIG9uIElH
VCBsZXZlbCB3ZSBkb24ndCBoYXZlIEh1QyB0ZXN0cy4KPiBCdXQgbWVkaWEgdGVhbSB3YXMgdXNp
bmcgbW9kcGFyYW0gb3ZlcnJpZGUgdG8gZm9yY2UgR3VDL0h1QyBmb3IKPiBhIHdoaWxlLCBUb255
IGRvIHlvdSBoYXZlIHN1Y2ggdGVzdCBsaXN0L3Jlc3VsdHMgaGFuZHk/CgpIdUMgZnVuY3Rpb25h
bGl0eSBoYXMgYmVlbiB0ZXN0ZWQgd2l0aCBBVkMgVkRFTkMvSEVWQyBWREVOQy9WUDlWREVOQyAK
ZW5jb2RpbmcgdGVzdCBjYXNlcyBpbiByZWd1bGFyIENJLgoKVGhhbmtzLCAtVG9ueQoKPgo+PiBh
bmQgd2hpY2ggcGxhdGZvcm1zCj4+IHRoaXMgY2hhbmdlIGFmZmVjdHMuCj4KPiBUaGlzIGNoYW5n
ZSBhZmZlY3RzIGFsbCBwbGF0Zm9ybXMgd2hlcmUgd2UgaGF2ZSBHdUMvSHVDIGZpcm13YXJlcwo+
IGRlZmluZWQsIHNvOiBTS0wsIEJYVCwgS0JMLCBDRkwsIElDTC4KPgo+IE5vdGUgdGhhdCB3ZSds
bCBzdGlsbCBoYXZlIHBvc3NpYmlsaXR5IHRvIHR3ZWFrIHRoYXQgaW5zaWRlCj4gZHJpdmVyLCBh
cyBhdXRvIG1vZGUgaXMganVzdCBtb3ZpbmcgcmVzcG9uc2liaWxpdHkgd2hhdCBjYW4KPiBiZSBl
bmFibGVkIGZyb20gdGhlIHVzZXIgdG8gdGhlIGk5MTUuCj4KPj4KPj4gUmVnYXJkcywgSm9vbmFz
Cj4+Cj4+PiBOb3RlIHRoYXQgdG9kYXkgR3VDIGlzIG9ubHkgdXNlZCBmb3IgSHVDIGF1dGhlbnRp
Y2F0aW9uLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53
YWpkZWN6a29AaW50ZWwuY29tPgo+Pj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmll
bGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4+PiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29u
YXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+Pj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+Pj4gLS0tCj4+PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGFyYW1zLmggfCAyICstCj4+PiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BhcmFtcy5oIAo+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oCj4+
PiBpbmRleCBkMjlhZGUzYjdkZTYuLjU3MzZjNTU2OTRmZSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcGFyYW1zLmgKPj4+IEBAIC01NCw3ICs1NCw3IEBAIHN0cnVjdCBkcm1fcHJpbnRl
cjsKPj4+IMKgwqDCoMKgwqDCoMKgIHBhcmFtKGludCwgZGlzYWJsZV9wb3dlcl93ZWxsLCAtMSkg
XAo+Pj4gwqDCoMKgwqDCoMKgwqAgcGFyYW0oaW50LCBlbmFibGVfaXBzLCAxKSBcCj4+PiDCoMKg
wqDCoMKgwqDCoCBwYXJhbShpbnQsIGludmVydF9icmlnaHRuZXNzLCAwKSBcCj4+PiAtwqDCoMKg
wqDCoMKgIHBhcmFtKGludCwgZW5hYmxlX2d1YywgMCkgXAo+Pj4gK8KgwqDCoMKgwqDCoCBwYXJh
bShpbnQsIGVuYWJsZV9ndWMsIC0xKSBcCj4+PiDCoMKgwqDCoMKgwqDCoCBwYXJhbShpbnQsIGd1
Y19sb2dfbGV2ZWwsIC0xKSBcCj4+PiDCoMKgwqDCoMKgwqDCoCBwYXJhbShjaGFyICosIGd1Y19m
aXJtd2FyZV9wYXRoLCBOVUxMKSBcCj4+PiDCoMKgwqDCoMKgwqDCoCBwYXJhbShjaGFyICosIGh1
Y19maXJtd2FyZV9wYXRoLCBOVUxMKSBcCj4+PiAtLSAKPj4+IDIuMTkuMgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
