Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBCDDAECD
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 15:53:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BAA06E1D7;
	Thu, 17 Oct 2019 13:53:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 799076E1D7
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 13:53:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 06:53:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,307,1566889200"; d="scan'208";a="396269919"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.66.113.28])
 ([10.66.113.28])
 by fmsmga005.fm.intel.com with ESMTP; 17 Oct 2019 06:53:43 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190821063236.19705-1-animesh.manna@intel.com>
 <20190821063236.19705-3-animesh.manna@intel.com>
 <156641109473.20466.6513229953597684165@skylake-alporthouse-com>
 <0f628a50-265b-5e4d-d7a9-fcdaa23e59eb@intel.com>
 <156647579816.20466.12274548195324928413@skylake-alporthouse-com>
 <ce725ae5-0414-deee-cf05-dd668ee4dc6e@linux.intel.com>
 <7d5a27a5-cda2-01fa-f1d7-91e7e1ffa807@intel.com>
 <dc529fe2-e3a8-6076-e8c7-a1c5bae40a63@linux.intel.com>
From: Animesh Manna <animesh.manna@intel.com>
Message-ID: <3bad55f1-d661-0f68-dab8-2879952f87e4@intel.com>
Date: Thu, 17 Oct 2019 19:23:42 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <dc529fe2-e3a8-6076-e8c7-a1c5bae40a63@linux.intel.com>
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

CgpPbiAxMC8xNy8yMDE5IDY6MzkgUE0sIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+Cj4gT24gMTcv
MTAvMjAxOSAxMzo1MiwgQW5pbWVzaCBNYW5uYSB3cm90ZToKPj4gT24gMTAvMTcvMjAxOSAyOjA1
IFBNLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPj4+IE9uIDIyLzA4LzIwMTkgMTM6MDksIENocmlz
IFdpbHNvbiB3cm90ZToKPj4+PiBRdW90aW5nIEFuaW1lc2ggTWFubmEgKDIwMTktMDgtMjIgMTM6
MDU6MDYpCj4+Pj4+IEhpLAo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBPbiA4LzIxLzIwMTkgMTE6NDEgUE0s
IENocmlzIFdpbHNvbiB3cm90ZToKPj4+Pj4+IFF1b3RpbmcgQW5pbWVzaCBNYW5uYSAoMjAxOS0w
OC0yMSAwNzozMjoyMikKPj4+Pj4+PiArICAgICAgIHZtYSA9IGk5MTVfZ2VtX29iamVjdF9nZ3R0
X3BpbihvYmosIE5VTEwsIDAsIDAsIAo+Pj4+Pj4+IFBJTl9NQVBQQUJMRSk7Cj4+Pj4+PiBPbmx5
IHRoaXMgKGN1cnJlbnRseSkgc3RpbGwgcmVxdWlyZXMgc3RydWN0X211dGV4Cj4+Pj4+Cj4+Pj4+
IFN1cmUgd2lsbCBhZGQuCj4+Pj4+Pgo+Pj4+Pj4gRG9lcyBpdCBoYXZlIHRvIG1hcHBhYmxlPyBJ
cyB0aGF0IHRoZSBIVyBjb25zdHJhaW50Pwo+Pj4+Pgo+Pj4+PiBZZXMsIGFzIHBlciBIVyBkZXNp
Z24gbmVlZCBhIGNwdSBtYXBwZWQgYnVmZmVyIHRvIHdyaXRlIAo+Pj4+PiBvcGNvZGUrZGF0YSBm
cm9tCj4+Pj4+IGRyaXZlci4KPj4+Pgo+Pj4+IFBJTl9NQVBQQUJMRSByZWZlcnMgdG8gdGhlIGlv
bWVtIGFwZXJ0dXJlIHBvcnRpb24gb2YgdGhlIEdsb2JhbCBHVFQgCj4+Pj4gKGkuZS4KPj4+PiB0
aGUgbG93IDY0LTUxMk1pQikuIFlvdSBuZXZlciB1c2UgYSBHR1RUIG1tYXAgZm9yIHlvdXIgQ1BV
IGFjY2VzcywgCj4+Pj4gc28gdGhlCj4+Pj4gcGxhY2VtZW50IHNob3VsZCBiZSBlbnRpcmVseSBk
aWN0YXRlZCBieSB0aGUgRFNCIHJlcXVpcmVtZW50cy4gSWYgeW91Cj4+Pj4gZG9uJ3QgbmVlZCB0
byBiZSBpbiB0aGUgbG93IHJlZ2lvbiwgZG9uJ3QgZm9yY2UgaXQgdG8gYmUsIHNvIHdlIGhhdmUK
Pj4+PiBsZXNzIGNvbmdlc3Rpb24gZm9yIHRoZSBvYmplY3RzIHRoYXQgaGF2ZSB0byBiZSBwbGFj
ZWQgaW4gdGhhdCByZWdpb24uCj4+Pgo+Pj4gSSB3YXMgZG9pbmcgYSBtaW5pIGF1ZGl0IG9mIHdo
YXQgdXNlcyB0aGUgYXBlcnR1cmUgdGhlc2UgZGF5cyBhbmQgCj4+PiBub3RpY2VkIHRoaXMgY29k
ZSBoYXMgYmVlbiBtZXJnZWQgaW4gdGhlIG1lYW50aW1lLCBidXQgQUZBSUNTIHRoaXMgCj4+PiBx
dWVzdGlvbiBmcm9tIENocmlzIGhhc24ndCBiZWVuIGFuc3dlcmVkPyBBdCBsZWFzdCBub3Qgb24g
dGhlIAo+Pj4gbWFpbGluZyBsaXN0LiBTbyBkb2VzIGl0IG5lZWQgdG8gYmUgaW4gdGhlIGFwZXJ0
dXJlIHJlZ2lvbiBvciBub3Q/Cj4+Cj4+IEhpLAo+Pgo+PiBCYXNlZCBvbiByZWNvbW1lbmRhdGlv
biBmcm9tIEgvdyB0ZWFtIHVzZWQgUElOX01BUFBBQkxFLCBub3QgdmVyeSAKPj4gc3VyZSBhYm91
dCBpbnRlcm5hbCBkZXRhaWxzLgo+Cj4gV2hhdCBkaWQgdGhlIHJlY29tbWVuZGF0aW9uIGV4YWN0
bHkgc2F5PyBUaGF0IGl0IGhhcyB0byBiZSBpbiBHR1RUIG9yIAo+IGFwZXJ0dXJlPwoKSXQgc2Fp
ZDoKIkdNTSB0byBhbGxvY2F0ZSBidWZmZXIgZnJvbSBnbG9iYWwgR1RULCBnZXQgQ1BVIG1hcHBl
ZCBhZGRyZXNzIGFzIHdlbGwgCihub3Qgc3RvbGVuIG1lbW9yeSkgLi4uICIuCgpSZWdhcmRzLApB
bmltZXNoCgo+Cj4gUmVnYXJkcywKPgo+IFR2cnRrbwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
