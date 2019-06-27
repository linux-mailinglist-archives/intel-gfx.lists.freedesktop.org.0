Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C401057E78
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 10:46:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C3C16E834;
	Thu, 27 Jun 2019 08:46:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB8266E834
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 08:46:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 01:46:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="188985142"
Received: from lswidere-mobl.ger.corp.intel.com (HELO [10.249.140.121])
 ([10.249.140.121])
 by fmsmga002.fm.intel.com with ESMTP; 27 Jun 2019 01:46:23 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190627080045.8814-1-lionel.g.landwerlin@intel.com>
 <20190627080045.8814-2-lionel.g.landwerlin@intel.com>
 <156162285976.20851.11525618963254901671@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <4834b257-31ef-5203-cc2e-682d5f8548ef@intel.com>
Date: Thu, 27 Jun 2019 11:46:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156162285976.20851.11525618963254901671@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v5 01/10] drm/i915/perf: add missing delay
 for OA muxes configuration
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

T24gMjcvMDYvMjAxOSAxMTowNywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDYtMjcgMDk6MDA6MzYpCj4+IFNpZ25lZC1vZmYtYnk6IExpb25l
bCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPj4gRml4ZXM6IDE5
ZjgxZGYyODU5ZWIxICgiZHJtL2k5MTUvcGVyZjogQWRkIE9BIHVuaXQgc3VwcG9ydCBmb3IgR2Vu
IDgrIikKPj4gLS0tCj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgfCAyMyAr
KysrKysrKysrKysrKysrKysrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNlcnRpb25z
KCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4+IGluZGV4IGQyOGE1YmY4MGJkNy4u
OTA5ZTIyODM1ZTg0IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bl
cmYuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+PiBAQCAtMTgz
OCw2ICsxODM4LDI5IEBAIHN0YXRpYyBpbnQgZ2VuOF9lbmFibGVfbWV0cmljX3NldChzdHJ1Y3Qg
aTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQo+PiAgIAo+PiAgICAgICAgICBjb25maWdfb2FfcmVn
cyhkZXZfcHJpdiwgb2FfY29uZmlnLT5tdXhfcmVncywgb2FfY29uZmlnLT5tdXhfcmVnc19sZW4p
Owo+PiAgIAo+PiArICAgICAgIC8qIEl0IGFwcGFyZW50bHkgdGFrZXMgYSBmYWlybHkgbG9uZyB0
aW1lIGZvciBhIG5ldyBNVVgKPj4gKyAgICAgICAgKiBjb25maWd1cmF0aW9uIHRvIGJlIGJlIGFw
cGxpZWQgYWZ0ZXIgdGhlc2UgcmVnaXN0ZXIgd3JpdGVzLgo+PiArICAgICAgICAqIFRoaXMgZGVs
YXkgZHVyYXRpb24gd2FzIGRlcml2ZWQgZW1waXJpY2FsbHkgYmFzZWQgb24gdGhlCj4+ICsgICAg
ICAgICogcmVuZGVyX2Jhc2ljIGNvbmZpZyBidXQgaG9wZWZ1bGx5IGl0IGNvdmVycyB0aGUgbWF4
aW11bQo+PiArICAgICAgICAqIGNvbmZpZ3VyYXRpb24gbGF0ZW5jeS4KPj4gKyAgICAgICAgKgo+
PiArICAgICAgICAqIEFzIGEgZmFsbGJhY2ssIHRoZSBjaGVja3MgaW4gX2FwcGVuZF9vYV9yZXBv
cnRzKCkgdG8gc2tpcAo+PiArICAgICAgICAqIGludmFsaWQgT0EgcmVwb3J0cyBkbyBhbHNvIHNl
ZW0gdG8gd29yayB0byBkaXNjYXJkIHJlcG9ydHMKPj4gKyAgICAgICAgKiBnZW5lcmF0ZWQgYmVm
b3JlIHRoaXMgY29uZmlnIGhhcyBjb21wbGV0ZWQgLSBhbGJlaXQgbm90Cj4+ICsgICAgICAgICog
c2lsZW50bHkuCj4gSWYgeW91IGtub3cgdGhlIGluaXRpYWwgYmF0Y2ggb2YgcmVwb3J0cyBpcyBp
bnZhbGlkIGFmdGVyIGNoYW5naW5nIHRoZQo+IHJlZ2lzdGVyLCB3aHkgbm90IGp1c3Qgc2lsZW50
bHkgZGlzY2FyZCB0aGVtIHVudGlsIHlvdSBzZWUgWCB2YWxpZAo+IHJlcG9ydHM/IE5vIGdyYXR1
aXRvdXMgc2xlZXBzIHJlcXVpcmVkLCBzdGlsbCBhIG1hZ2ljIG51bWJlciAoYWxiZWl0IGl0Cj4g
bWF5IGJlIGEgc21hbGwgbnVtYmVyKS4KPiAtQ2hyaXMKPgpUaGF0IHdvdWxkIGJlIG5pY2UsIGJ1
dCB1bmZvcnR1bmF0ZWx5IHdlIGRvbid0IHJlYWxseSBoYXZlIGEgY3JpdGVyaWEgdG8gCnRlbGwg
d2hldGhlciB0aGUgdmFsdWVzIHdyaXR0ZW4gaW4gdGhlIHNuYXBzaG90cyBhcmUgcmlnaHQgb3Ig
d3JvbmcuCgpUaGF0J3MgYmVjYXVzZSB0aGUgQi9DIGNvdW50ZXJzIGluIHRoZSBzbmFwc2hvdHMg
YXJlIHByb2dyYW1tYWJsZS4KCgotTGlvbmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
