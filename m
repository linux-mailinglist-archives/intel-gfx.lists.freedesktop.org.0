Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2093DA77A
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 10:35:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A1F36E455;
	Thu, 17 Oct 2019 08:35:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60D0C6E455
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 08:35:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 01:35:29 -0700
X-IronPort-AV: E=Sophos;i="5.67,307,1566889200"; d="scan'208";a="186423945"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 17 Oct 2019 01:35:28 -0700
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190821063236.19705-1-animesh.manna@intel.com>
 <20190821063236.19705-3-animesh.manna@intel.com>
 <156641109473.20466.6513229953597684165@skylake-alporthouse-com>
 <0f628a50-265b-5e4d-d7a9-fcdaa23e59eb@intel.com>
 <156647579816.20466.12274548195324928413@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ce725ae5-0414-deee-cf05-dd668ee4dc6e@linux.intel.com>
Date: Thu, 17 Oct 2019 09:35:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156647579816.20466.12274548195324928413@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 02/15] drm/i915/dsb: DSB context creation.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIyLzA4LzIwMTkgMTM6MDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIEFuaW1l
c2ggTWFubmEgKDIwMTktMDgtMjIgMTM6MDU6MDYpCj4+IEhpLAo+Pgo+Pgo+PiBPbiA4LzIxLzIw
MTkgMTE6NDEgUE0sIENocmlzIFdpbHNvbiB3cm90ZToKPj4+IFF1b3RpbmcgQW5pbWVzaCBNYW5u
YSAoMjAxOS0wOC0yMSAwNzozMjoyMikKPj4+PiArICAgICAgIHZtYSA9IGk5MTVfZ2VtX29iamVj
dF9nZ3R0X3BpbihvYmosIE5VTEwsIDAsIDAsIFBJTl9NQVBQQUJMRSk7Cj4+PiBPbmx5IHRoaXMg
KGN1cnJlbnRseSkgc3RpbGwgcmVxdWlyZXMgc3RydWN0X211dGV4Cj4+Cj4+IFN1cmUgd2lsbCBh
ZGQuCj4+Pgo+Pj4gRG9lcyBpdCBoYXZlIHRvIG1hcHBhYmxlPyBJcyB0aGF0IHRoZSBIVyBjb25z
dHJhaW50Pwo+Pgo+PiBZZXMsIGFzIHBlciBIVyBkZXNpZ24gbmVlZCBhIGNwdSBtYXBwZWQgYnVm
ZmVyIHRvIHdyaXRlIG9wY29kZStkYXRhIGZyb20KPj4gZHJpdmVyLgo+IAo+IFBJTl9NQVBQQUJM
RSByZWZlcnMgdG8gdGhlIGlvbWVtIGFwZXJ0dXJlIHBvcnRpb24gb2YgdGhlIEdsb2JhbCBHVFQg
KGkuZS4KPiB0aGUgbG93IDY0LTUxMk1pQikuIFlvdSBuZXZlciB1c2UgYSBHR1RUIG1tYXAgZm9y
IHlvdXIgQ1BVIGFjY2Vzcywgc28gdGhlCj4gcGxhY2VtZW50IHNob3VsZCBiZSBlbnRpcmVseSBk
aWN0YXRlZCBieSB0aGUgRFNCIHJlcXVpcmVtZW50cy4gSWYgeW91Cj4gZG9uJ3QgbmVlZCB0byBi
ZSBpbiB0aGUgbG93IHJlZ2lvbiwgZG9uJ3QgZm9yY2UgaXQgdG8gYmUsIHNvIHdlIGhhdmUKPiBs
ZXNzIGNvbmdlc3Rpb24gZm9yIHRoZSBvYmplY3RzIHRoYXQgaGF2ZSB0byBiZSBwbGFjZWQgaW4g
dGhhdCByZWdpb24uCgpJIHdhcyBkb2luZyBhIG1pbmkgYXVkaXQgb2Ygd2hhdCB1c2VzIHRoZSBh
cGVydHVyZSB0aGVzZSBkYXlzIGFuZCAKbm90aWNlZCB0aGlzIGNvZGUgaGFzIGJlZW4gbWVyZ2Vk
IGluIHRoZSBtZWFudGltZSwgYnV0IEFGQUlDUyB0aGlzIApxdWVzdGlvbiBmcm9tIENocmlzIGhh
c24ndCBiZWVuIGFuc3dlcmVkPyBBdCBsZWFzdCBub3Qgb24gdGhlIG1haWxpbmcgCmxpc3QuIFNv
IGRvZXMgaXQgbmVlZCB0byBiZSBpbiB0aGUgYXBlcnR1cmUgcmVnaW9uIG9yIG5vdD8KClJlZ2Fy
ZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
