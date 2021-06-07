Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4918239DBB1
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jun 2021 13:45:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F0776E10A;
	Mon,  7 Jun 2021 11:45:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 587256E10A
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Jun 2021 11:44:58 +0000 (UTC)
IronPort-SDR: h080nqmUjWpnXGkHIhcJQdk+W2LkL4AsJeDrHpbD2JsRHtJ00zszNFc599rwsHhm5fYnpjO9d5
 4gDtq9EfW/9A==
X-IronPort-AV: E=McAfee;i="6200,9189,10007"; a="184975715"
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="184975715"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 04:44:57 -0700
IronPort-SDR: V9Fmmu24+XnmHTWA5lMfM90r0DsqvPhOWIaedriKG2tXghfBWCBxLc2L6525m4bewzU9p3wP/X
 HEj1bQlzFabw==
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="401652980"
Received: from unknown (HELO [10.237.72.166]) ([10.237.72.166])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 04:44:55 -0700
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210514232247.144542-1-jose.souza@intel.com>
 <20210514232247.144542-2-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <6b4571a3-f17b-43b8-cd43-d1920f08df48@intel.com>
Date: Mon, 7 Jun 2021 14:44:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210514232247.144542-2-jose.souza@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915/display: Allow fastsets
 when DP_SDP_VSC infoframe do not match with PSR enabled
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TG9va3MgZ29vZCB0byBtZS4KUmV2aWV3ZWQtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVv
bmcubXVuQGludGVsLmNvbT4KCk9uIDUvMTUvMjEgMjoyMiBBTSwgSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSB3cm90ZToKPiBXaGVuIFBTUiBpcyBlbmFibGVkIGl0IGhhbmRsZXMgRFBfU0RQX1ZTQywg
Y2hhbmdpbmcgcmV2aXNpb24gYW5kIGFsbAo+IHRoZSBvdGhlciBmaWVsZHMgYXMgbmVjZXNzYXJ5
Lgo+IEl0IGNhbiBhbHNvIGVuYWJsZWQgYW5kIGRpc2FibGUgdGhpcyBTRFAgYXMgbmVlZGVkIHdp
dGhvdXQgYSBmdWxsCj4gbW9kZXNldC4KPiAKPiBTbyBoZXJlIG1hc2tpbmcgRFBfU0RQX1ZTQyBi
aXQgd2hlbiBwcmV2aW91cyBhbmQgZnV0dXJlIHN0YXRlIFBTUgo+IGVuYWJsZWQsIGl0IHdpbGwg
c3RpbGwgYmUgY2hlY2tlZCB3aGVuIGNvbXBhcmluZyB0aGUgYXNrZWQgc3RhdGUKPiB0byB3aGF0
IHdhcyBwcm9ncmFtbWVkIHRvIGhhcmR3YXJlLgo+IAo+IENjOiBHd2FuLWd5ZW9uZyBNdW4gPGd3
YW4tZ3llb25nLm11bkBpbnRlbC5jb20+Cj4gQ2M6IFJhZGhha3Jpc2huYSBTcmlwYWRhIDxyYWRo
YWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+Cj4gUmVwb3J0ZWQtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gRml4ZXM6IDc4Yjc3MmUxYTAxZiAo
ImRybS9pOTE1L2Rpc3BsYXk6IEZpbGwgUFNSIHN0YXRlIGR1cmluZyBoYXJkd2FyZSBjb25maWd1
cmF0aW9uIHJlYWQgb3V0Igo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxNyArKysrKysrKysrKysrKysrLQo+ICAgMSBmaWxlIGNo
YW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4IDUxZjQ5OTI3MWNjOC4u
ZWJhYzFiZDVjZmU1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKPiBAQCAtODI2MCw2ICs4MjYwLDE2IEBAIGludGVsX3BpcGVfY29uZmlnX2Nv
bXBhcmUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmN1cnJlbnRfY29uZmlnLAo+ICAg
CX0gXAo+ICAgfSB3aGlsZSAoMCkKPiAgIAo+ICsjZGVmaW5lIFBJUEVfQ09ORl9DSEVDS19YX1dJ
VEhfTUFTSyhuYW1lLCBtYXNrKSBkbyB7IFwKPiArCWlmICgoY3VycmVudF9jb25maWctPm5hbWUg
JiAobWFzaykpICE9IChwaXBlX2NvbmZpZy0+bmFtZSAmIChtYXNrKSkpIHsgXAo+ICsJCXBpcGVf
Y29uZmlnX21pc21hdGNoKGZhc3RzZXQsIGNydGMsIF9fc3RyaW5naWZ5KG5hbWUpLCBcCj4gKwkJ
CQkgICAgICIoZXhwZWN0ZWQgMHglMDh4LCBmb3VuZCAweCUwOHgpIiwgXAo+ICsJCQkJICAgICBj
dXJyZW50X2NvbmZpZy0+bmFtZSAmIChtYXNrKSwgXAo+ICsJCQkJICAgICBwaXBlX2NvbmZpZy0+
bmFtZSAmIChtYXNrKSk7IFwKPiArCQlyZXQgPSBmYWxzZTsgXAo+ICsJfSBcCj4gK30gd2hpbGUg
KDApCj4gKwo+ICAgI2RlZmluZSBQSVBFX0NPTkZfQ0hFQ0tfSShuYW1lKSBkbyB7IFwKPiAgIAlp
ZiAoY3VycmVudF9jb25maWctPm5hbWUgIT0gcGlwZV9jb25maWctPm5hbWUpIHsgXAo+ICAgCQlw
aXBlX2NvbmZpZ19taXNtYXRjaChmYXN0c2V0LCBjcnRjLCBfX3N0cmluZ2lmeShuYW1lKSwgXAo+
IEBAIC04NjA2LDcgKzg2MTYsMTIgQEAgaW50ZWxfcGlwZV9jb25maWdfY29tcGFyZShjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3VycmVudF9jb25maWcsCj4gICAJCVBJUEVfQ09ORl9D
SEVDS19JKG1pbl92b2x0YWdlX2xldmVsKTsKPiAgIAl9Cj4gICAKPiAtCVBJUEVfQ09ORl9DSEVD
S19YKGluZm9mcmFtZXMuZW5hYmxlKTsKPiArCWlmIChmYXN0c2V0ICYmIChjdXJyZW50X2NvbmZp
Zy0+aGFzX3BzciB8fCBwaXBlX2NvbmZpZy0+aGFzX3BzcikpCj4gKwkJUElQRV9DT05GX0NIRUNL
X1hfV0lUSF9NQVNLKGluZm9mcmFtZXMuZW5hYmxlLAo+ICsJCQkJCSAgICB+aW50ZWxfaGRtaV9p
bmZvZnJhbWVfZW5hYmxlKERQX1NEUF9WU0MpKTsKPiArCWVsc2UKPiArCQlQSVBFX0NPTkZfQ0hF
Q0tfWChpbmZvZnJhbWVzLmVuYWJsZSk7Cj4gKwo+ICAgCVBJUEVfQ09ORl9DSEVDS19YKGluZm9m
cmFtZXMuZ2NwKTsKPiAgIAlQSVBFX0NPTkZfQ0hFQ0tfSU5GT0ZSQU1FKGF2aSk7Cj4gICAJUElQ
RV9DT05GX0NIRUNLX0lORk9GUkFNRShzcGQpOwo+IApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
