Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4D79A9CC
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:12:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84C366EBF8;
	Fri, 23 Aug 2019 08:12:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E080D6EBF1
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:12:27 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 14:16:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,418,1559545200"; d="scan'208";a="169916296"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga007.jf.intel.com with ESMTP; 22 Aug 2019 14:16:23 -0700
Date: Thu, 22 Aug 2019 14:17:58 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20190822211757.GB701@intel.com>
References: <20190821215950.24223-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821215950.24223-1-manasi.d.navare@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Fix DSC enable code to use
 cpu_transcoder instead of encoder->type
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhhbmtzIGZvciB0aGUgcGF0Y2ggYW5kIHJldmlldywgcHVzaGVkIHRvIGRpbnEKCk1hbmFzaQoK
T24gV2VkLCBBdWcgMjEsIDIwMTkgYXQgMDI6NTk6NTBQTSAtMDcwMCwgTWFuYXNpIE5hdmFyZSB3
cm90ZToKPiBUaGlzIHBhdGNoIGZpeGVzIHRoZSBpbnRlbF9jb25maWd1cmVfcHBzX2Zvcl9kc2Nf
ZW5jb2RlcigpIGZ1bmN0aW9uIHRvIHVzZQo+IGNwdV90cmFuc2NvZGVyIGluc3RlYWQgb2YgZW5j
b2Rlci0+dHlwZSB0byBzZWxlY3QgdGhlIGNvcnJlY3QgRFNDIHJlZ2lzdGVycwo+IHRoYXQgd2Fz
IHdyb25nbHkgdXNlZCBpbiB0aGUgb3JpZ2luYWwgcGF0Y2ggZm9yIG9uZSBEU0MgcmVnaXN0ZXIg
aXNudGFuY2UuCj4gCj4gRml4ZXM6IDcxODI0MTRlMjUzMCAoImRybS9pOTE1L2RwOiBDb25maWd1
cmUgaTkxNSBQaWN0dXJlIHBhcmFtZXRlciBTZXQKPiByZWdpc3RlcnMgZHVyaW5nIERTQyBlbmFi
bGluZyIpCj4gQ2M6IFZpbGxlIFN5cmphbGEgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pgo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwu
Y29tPgo+IFNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRl
bC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5j
IHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNj
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYwo+IGluZGV4IDU5
OGRkYjYwZjlmYi4uZDRmYjdmMTZmOWY2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92ZHNjLmMKPiBAQCAtNTQ3LDcgKzU0Nyw3IEBAIHN0YXRpYyB2b2lkIGludGVs
X2NvbmZpZ3VyZV9wcHNfZm9yX2RzY19lbmNvZGVyKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyLAo+ICAJcHBzX3ZhbCB8PSBEU0NfUElDX0hFSUdIVCh2ZHNjX2NmZy0+cGljX2hlaWdodCkg
fAo+ICAJCURTQ19QSUNfV0lEVEgodmRzY19jZmctPnBpY193aWR0aCAvIG51bV92ZHNjX2luc3Rh
bmNlcyk7Cj4gIAlEUk1fSU5GTygiUFBTMiA9IDB4JTA4eFxuIiwgcHBzX3ZhbCk7Cj4gLQlpZiAo
ZW5jb2Rlci0+dHlwZSA9PSBJTlRFTF9PVVRQVVRfRURQKSB7Cj4gKwlpZiAoY3B1X3RyYW5zY29k
ZXIgPT0gVFJBTlNDT0RFUl9FRFApIHsKPiAgCQlJOTE1X1dSSVRFKERTQ0FfUElDVFVSRV9QQVJB
TUVURVJfU0VUXzIsIHBwc192YWwpOwo+ICAJCS8qCj4gIAkJICogSWYgMiBWRFNDIGluc3RhbmNl
cyBhcmUgbmVlZGVkLCBjb25maWd1cmUgUFBTIGZvciBzZWNvbmQKPiAtLSAKPiAyLjE5LjEKPiAK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
