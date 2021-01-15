Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6B62F768E
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 11:23:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 099366E18F;
	Fri, 15 Jan 2021 10:23:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CD236E18F
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 10:23:17 +0000 (UTC)
IronPort-SDR: YGcF420mFhlx4rAHZF2f9qYVXT4c/nNRGiwFLD2aJpyM8iDc5SOLy2KTS62N85+VSGRugisiJB
 GcWjWTgtNWKg==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="177751210"
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="177751210"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 02:23:16 -0800
IronPort-SDR: oIf9Ncu/N7w79AgXBJJwyCciXsBzWrzyr0UNpemUZy3yoyOTXqYDb0Dxx3CTG/Jqx3GZ+pEzer
 vSDelb9UOSjw==
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="364539665"
Received: from kbs1-mobl1.gar.corp.intel.com (HELO [10.213.120.203])
 ([10.213.120.203])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 02:23:14 -0800
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210111163711.12913-1-ville.syrjala@linux.intel.com>
 <20210111163711.12913-5-ville.syrjala@linux.intel.com>
From: Karthik B S <karthik.b.s@intel.com>
Message-ID: <798b1ce7-31a4-b59a-8ff2-8e11ca784ba5@intel.com>
Date: Fri, 15 Jan 2021 15:53:12 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210111163711.12913-5-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 04/11] drm/i915: Generalize the async
 flip capability check
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

T24gMS8xMS8yMDIxIDEwOjA3IFBNLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4KPiBPbmx5IGFzc2ln
biB0aGUgcGxhbmUtPmFzeW5jX2ZsaXAoKSB2ZnVuYyB3aGVuIHRoZSBwbGFuZSBzdXBwb3J0cwo+
IGFzeW5jIGZsaXBzLiBGb3Igbm93IHdlIGtlZXAgdGhpcyBhcnRpZmljaWFsbHkgbGltaXRlZCB0
byB0aGUgcHJpbWFyeQo+IHBsYW5lIHNpbmNlIHRoYXRzIHRoZSBvbmx5IHRoaW5nIHRoZSBsZWdh
Y3kgcGFnZSBmbGlwIHVhcGkgY2FuIHRhcmdldAo+IGFuZCB0aGVyZSBpcyBubyBhc3luYyBmbGlw
IHN1cHBvcnQgaW4gdGhlIGF0b21pYyB1YXBpIHlldC4KPgo+IENjOiBLYXJ0aGlrIEIgUyA8a2Fy
dGhpay5iLnNAaW50ZWwuY29tPgo+IENjOiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGth
cm5pQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPgoKTG9va3MgZ29vZCB0byBtZS4KClJldmlld2VkLWJ5OiBL
YXJ0aGlrIEIgUyA8a2FydGhpay5iLnNAaW50ZWwuY29tPgoKPiAtLS0KPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMiArLQo+ICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyAgfCA0ICsrKy0KPiAgIDIgZmlsZXMgY2hh
bmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCA3NzM1YzI4YjI0NjcuLjFh
ZDkyZmNhZWU3YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCj4gQEAgLTE0Mzc3LDcgKzE0Mzc3LDcgQEAgc3RhdGljIGludCBpbnRlbF9hdG9t
aWNfY2hlY2tfYXN5bmMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCj4gICAJCSAq
IHRoaXModmx2L2NodiBhbmQgaWNsKykgc2hvdWxkIGJlIGFkZGVkIHdoZW4gYXN5bmMgZmxpcCBp
cwo+ICAgCQkgKiBlbmFibGVkIGluIHRoZSBhdG9taWMgSU9DVEwgcGF0aC4KPiAgIAkJICovCj4g
LQkJaWYgKHBsYW5lLT5pZCAhPSBQTEFORV9QUklNQVJZKQo+ICsJCWlmICghcGxhbmUtPmFzeW5j
X2ZsaXApCj4gICAJCQlyZXR1cm4gLUVJTlZBTDsKPiAgIAo+ICAgCQkvKgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwo+IGluZGV4IGIyNGM4ZmM4ZTgzZS4u
MGE1NjQ4ZDVkY2Y4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfc3ByaXRlLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Nwcml0ZS5jCj4gQEAgLTMzMDksNyArMzMwOSw5IEBAIHNrbF91bml2ZXJzYWxfcGxhbmVfY3Jl
YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgIAlwbGFuZS0+Z2V0X2h3
X3N0YXRlID0gc2tsX3BsYW5lX2dldF9od19zdGF0ZTsKPiAgIAlwbGFuZS0+Y2hlY2tfcGxhbmUg
PSBza2xfcGxhbmVfY2hlY2s7Cj4gICAJcGxhbmUtPm1pbl9jZGNsayA9IHNrbF9wbGFuZV9taW5f
Y2RjbGs7Cj4gLQlwbGFuZS0+YXN5bmNfZmxpcCA9IHNrbF9wbGFuZV9hc3luY19mbGlwOwo+ICsK
PiArCWlmIChwbGFuZV9pZCA9PSBQTEFORV9QUklNQVJZKQo+ICsJCXBsYW5lLT5hc3luY19mbGlw
ID0gc2tsX3BsYW5lX2FzeW5jX2ZsaXA7Cj4gICAKPiAgIAlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSAxMSkKPiAgIAkJZm9ybWF0cyA9IGljbF9nZXRfcGxhbmVfZm9ybWF0cyhkZXZfcHJpdiwg
cGlwZSwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
