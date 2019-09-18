Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0847BB5F97
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 10:52:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 122A4898F0;
	Wed, 18 Sep 2019 08:51:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E0D7898F0
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 08:51:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 01:51:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,520,1559545200"; d="scan'208";a="202019196"
Received: from mmoller-mobl2.ger.corp.intel.com (HELO [10.249.39.68])
 ([10.249.39.68])
 by fmsmga001.fm.intel.com with ESMTP; 18 Sep 2019 01:51:55 -0700
To: Manasi Navare <manasi.d.navare@intel.com>
References: <20190909034325.20006-1-manasi.d.navare@intel.com>
 <20190909034325.20006-6-manasi.d.navare@intel.com>
 <156576de-c2a0-bbdc-7434-209df041e97c@linux.intel.com>
 <20190917163707.GA29180@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <33373f28-9e14-6753-55f6-47bf73bc1fec@linux.intel.com>
Date: Wed, 18 Sep 2019 10:51:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190917163707.GA29180@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/display/icl: Disable
 transcoder port sync as part of crtc_disable() sequence
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMTctMDktMjAxOSBvbSAxODozNyBzY2hyZWVmIE1hbmFzaSBOYXZhcmU6Cj4gT24gVHVlLCBT
ZXAgMTcsIDIwMTkgYXQgMDU6MDQ6MjhQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6
Cj4+IE9wIDA5LTA5LTIwMTkgb20gMDU6NDMgc2NocmVlZiBNYW5hc2kgTmF2YXJlOgo+Pj4gVGhp
cyBjbGVhcnMgdGhlIHRyYW5zY29kZXIgcG9ydCBzeW5jIGJpdHMgb2YgdGhlIFRSQU5TX0RESV9G
VU5DX0NUTDIKPj4+IHJlZ2lzdGVyIGR1cmluZyBjcnRjX2Rpc2FibGUoKS4KPj4+Cj4+PiBDYzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4+IENjOiBN
YWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+Pj4g
Q2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4+PiBDYzogSmFuaSBO
aWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IE1hbmFzaSBO
YXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Cj4+PiAtLS0KPj4+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDIzICsrKysrKysrKysrKysrKysr
KysrCj4+PiAgMSBmaWxlIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+Pj4gaW5kZXggMzUxYzkw
YWQ3MDU5Li4wN2RlYjBiOTNmNWMgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPj4+IEBAIC00NDM4LDYgKzQ0MzgsMjYgQEAgc3RhdGlj
IHZvaWQgaWNsX2VuYWJsZV90cmFuc19wb3J0X3N5bmMoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUKPj4+ICAJCSAgIHRyYW5zX2RkaV9mdW5jX2N0bDJfdmFsKTsKPj4+
ICB9Cj4+PiAgCj4+PiArc3RhdGljIHZvaWQgaWNsX2Rpc2FibGVfdHJhbnNjb2Rlcl9wb3J0X3N5
bmMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlKQo+Pj4gK3sK
Pj4+ICsJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKG9sZF9jcnRjX3N0
YXRlLT5iYXNlLmNydGMpOwo+Pj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKPj4+ICsJaTkxNV9yZWdfdCByZWc7Cj4+PiArCXUz
MiB0cmFuc19kZGlfZnVuY19jdGwyX3ZhbDsKPj4+ICsKPj4+ICsJaWYgKG9sZF9jcnRjX3N0YXRl
LT5tYXN0ZXJfdHJhbnNjb2RlciA9PSBJTlZBTElEX1RSQU5TQ09ERVIpCj4+PiArCQlyZXR1cm47
Cj4+PiArCj4+PiArCURSTV9ERUJVR19LTVMoIkRpc2FibGluZyBUcmFuc2NvZGVyIFBvcnQgU3lu
YyBvbiBTbGF2ZSBUcmFuc2NvZGVyICVzXG4iLAo+Pj4gKwkJICAgICAgdHJhbnNjb2Rlcl9uYW1l
KG9sZF9jcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcikpOwo+Pj4gKwo+Pj4gKwlyZWcgPSBUUkFO
U19ERElfRlVOQ19DVEwyKG9sZF9jcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2Rlcik7Cj4+PiArCXRy
YW5zX2RkaV9mdW5jX2N0bDJfdmFsID0gSTkxNV9SRUFEKHJlZyk7Cj4+PiArCXRyYW5zX2RkaV9m
dW5jX2N0bDJfdmFsICY9IH4oUE9SVF9TWU5DX01PREVfRU5BQkxFIHwKPj4+ICsJCQkJICAgICBQ
T1JUX1NZTkNfTU9ERV9NQVNURVJfU0VMRUNUX01BU0spOwo+Pj4gKwlJOTE1X1dSSVRFKHJlZywg
dHJhbnNfZGRpX2Z1bmNfY3RsMl92YWwpOwo+Pj4gK30KPj4+ICsKPj4gV291bGQgYW55dGhpbmcg
YnJlYWsgaWYgd2UganVzdCB3cm90ZSAwIGhlcmU/Cj4gV2UgZG9udCB3YW50IHRvIGFjY2lkZW50
bHkgcmVzZXQgb3RoZXIgYml0cyBpbiB0aGUgcmVnaXN0ZXIgd2hpY2ggYXJlIGZvciBEU0kgYW5k
IG5vdCB1c2VkIGN1cnJlbnRseSBidXQKPiB0byBtYWtlIHRoaXMgZnVuY3Rpb24gbW9yZSBmdXR1
cmUgcHJvb2YsIEkgaGF2ZSBhdm9pZGVkIHdyaXRpbmcgYSAwCj4KPiBCdXQgaWYgeW91IHN0cm9u
Z2x5IGZlZWwgYWdhaW5zdCB0aGlzLCBJIGNhbiBzd2l0Y2ggdGhpcyB0byB3cml0aW5nIDAgZGly
ZWN0bHkuCgpXZSBvdmVyd3JpdGUgZnVuY19jdGwyIGluIGVuYWJsZV9wb3J0X3N5bmMgc28gaXQg
bWFrZXMgc2Vuc2UgdG8gZG8gdGhlIHNhbWUgaW4gZGlzYWJsZS4gOikKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
