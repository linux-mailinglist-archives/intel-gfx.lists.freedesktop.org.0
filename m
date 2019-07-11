Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CC56529F
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 09:47:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ED4A6E152;
	Thu, 11 Jul 2019 07:47:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 762B96E152
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 07:47:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 00:47:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="168555164"
Received: from schalak-mobl.amr.corp.intel.com (HELO [10.252.49.116])
 ([10.252.49.116])
 by orsmga003.jf.intel.com with ESMTP; 11 Jul 2019 00:47:21 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20190709123351.5645-1-lionel.g.landwerlin@intel.com>
 <20190709123351.5645-7-lionel.g.landwerlin@intel.com>
 <20190710234321.GA3443@unerlige-desk.amr.corp.intel.com>
 <156282659660.12280.4199368775706498585@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <81e170bc-dd7c-194d-0211-ef312ac1ea46@intel.com>
Date: Thu, 11 Jul 2019 10:47:19 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156282659660.12280.4199368775706498585@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v8 06/13] drm/i915/perf: implement active
 wait for noa configurations
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTEvMDcvMjAxOSAwOToyOSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgVW1lc2gg
TmVybGlnZSBSYW1hcHBhICgyMDE5LTA3LTExIDAwOjQzOjIxKQo+PiBPbiBUdWUsIEp1bCAwOSwg
MjAxOSBhdCAwMzozMzo0NFBNICswMzAwLCBMaW9uZWwgTGFuZHdlcmxpbiB3cm90ZToKPj4+ICtz
dGF0aWMgdTMyICpzYXZlX3JlZ2lzdGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1
MzIgKmNzLAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgIGk5MTVfcmVnX3QgcmVnLCB1MzIg
b2Zmc2V0LCB1MzIgZHdvcmRfY291bnQpCj4+PiArewo+Pj4gKyAgICAgIHVpbnQzMl90IGQ7Cj4+
PiArCj4+PiArICAgICAgZm9yIChkID0gMDsgZCA8IGR3b3JkX2NvdW50OyBkKyspIHsKPj4+ICsg
ICAgICAgICAgICAgICpjcysrID0gSU5URUxfR0VOKGk5MTUpID49IDggPwo+Pj4gKyAgICAgICAg
ICAgICAgICAgICAgICBNSV9TVE9SRV9SRUdJU1RFUl9NRU1fR0VOOCA6IE1JX1NUT1JFX1JFR0lT
VEVSX01FTTsKPj4+ICsgICAgICAgICAgICAgICpjcysrID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQo
cmVnKSArIDQgKiBkOwo+Pj4gKyAgICAgICAgICAgICAgKmNzKysgPSBpbnRlbF9ndF9zY3JhdGNo
X29mZnNldCgmaTkxNS0+Z3QsIG9mZnNldCkgKyA0ICogZDsKPj4+ICsgICAgICAgICAgICAgICpj
cysrID0gMDsKPj4+ICsgICAgICB9Cj4+PiArCj4+PiArICAgICAgcmV0dXJuIGNzOwo+Pj4gK30K
Pj4+ICsKPj4+ICtzdGF0aWMgdTMyICpyZXN0b3JlX3JlZ2lzdGVyKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1LCB1MzIgKmNzLAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIGk5
MTVfcmVnX3QgcmVnLCB1MzIgb2Zmc2V0LCB1MzIgZHdvcmRfY291bnQpCj4+PiArewo+Pj4gKyAg
ICAgIHVpbnQzMl90IGQ7Cj4+PiArCj4+PiArICAgICAgZm9yIChkID0gMDsgZCA8IGR3b3JkX2Nv
dW50OyBkKyspIHsKPj4+ICsgICAgICAgICAgICAgICpjcysrID0gSU5URUxfR0VOKGk5MTUpID49
IDggPwo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICBNSV9MT0FEX1JFR0lTVEVSX01FTV9HRU44
IDogTUlfTE9BRF9SRUdJU1RFUl9NRU07Cj4+PiArICAgICAgICAgICAgICAqY3MrKyA9IGk5MTVf
bW1pb19yZWdfb2Zmc2V0KHJlZyk7Cj4+PiArICAgICAgICAgICAgICAqY3MrKyA9IGludGVsX2d0
X3NjcmF0Y2hfb2Zmc2V0KCZpOTE1LT5ndCwgb2Zmc2V0KTsKPj4gYXJlIHlvdSBtaXNzaW5nICsg
NCAqIGQgaW4gdGhlIGFib3ZlIDIgbGluZXM/Cj4gV2hvb3BzIGJhZCByZXZpZXdlci4gU2luY2Ug
dGhlc2UgYXJlIHRoZSBzYW1lIHR3byBsb29wcyBqdXN0IHdpdGggYQo+IGRpZmZlcmVudCBjbWQu
Li4KPiAtQ2hyaXMKPgpUaGFua3MgVW1lc2ghCgpJJ3ZlIG1lcmdlZCB0aGVzZSAyIGZ1bmN0aW9u
IGxvY2FsbHkuIEknbSBhYm91dCB0byByZXNlbmQuCgoKLUxpb25lbAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
