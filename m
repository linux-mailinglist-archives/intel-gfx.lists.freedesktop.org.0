Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E96AD30B7E8
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 07:40:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C98C66E8C8;
	Tue,  2 Feb 2021 06:39:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 638ED6E85B;
 Tue,  2 Feb 2021 06:39:57 +0000 (UTC)
IronPort-SDR: ZEWa5P9LJYRQup60sUMI3EmTvsglcKok2RZRGzdlDOc5OgV2y3fF94PVRjGZw7ij4l6EGqJ6wa
 PqIxLFXB1oBQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="180030381"
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="180030381"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 22:39:55 -0800
IronPort-SDR: pp4bATS3TEPbt7CuE86OjNdvJegdqZkxMSEIq7JA+ttup1May4ZyEe8bGf/V1SowhWW1wD6wG+
 FoNyGcV14D6A==
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="391312420"
Received: from aknautiy-mobl.gar.corp.intel.com (HELO [10.215.121.82])
 ([10.215.121.82])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 22:39:51 -0800
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20201218103723.30844-1-ankit.k.nautiyal@intel.com>
 <20201218103723.30844-10-ankit.k.nautiyal@intel.com>
 <YBhmuiFZ4ZsQ7Y+Z@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <9bd995b9-2020-3a1c-0e82-a823cfd06806@intel.com>
Date: Tue, 2 Feb 2021 12:09:47 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <YBhmuiFZ4ZsQ7Y+Z@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v7 09/15] drm/i915: Add support for starting
 FRL training for HDMI2.1 via PCON
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
Cc: airlied@linux.ie, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgVmlsbGUsCgpQbGVhc2UgZmluZCBteSByZXNwb25zZXMgaW5saW5lLgoKT24gMi8yLzIwMjEg
MjowOCBBTSwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOgo+IE9uIEZyaSwgRGVjIDE4LCAyMDIwIGF0
IDA0OjA3OjE3UE0gKzA1MzAsIEFua2l0IE5hdXRpeWFsIHdyb3RlOgo+PiBUaGlzIHBhdGNoIGFk
ZHMgZnVuY3Rpb25zIHRvIHN0YXJ0IEZSTCB0cmFpbmluZyBmb3IgYW4gSERNSTIuMSBzaW5rLAo+
PiBjb25uZWN0ZWQgdmlhIGEgUENPTiBhcyBhIERQIGJyYW5jaCBkZXZpY2UuCj4+IFRoaXMgcGF0
Y2ggYWxzbyBhZGRzIGEgbmV3IHN0cnVjdHVyZSBmb3Igc3RvcmluZyBmcmwgdHJhaW5pbmcgcmVs
YXRlZAo+PiBkYXRhLCB3aGVuIEZSTCB0cmFpbmluZyBpcyBjb21wbGV0ZWQuCj4+Cj4+IHYyOiBB
cyBzdWdnZXN0ZWQgYnkgVW1hIFNoYW5rYXI6Cj4+IC1yZW5hbWVkIGNvdXBsZSBvZiB2YXJpYWJs
ZXMgZm9yIGJldHRlciBjbGFyaXR5Cj4+IC10d2Vha2VkIHRoZSBtYWNyb3MgdXNlZCBmb3IgY29y
cmVjdCBzZW1hbnRpY3MgZm9yIHRydWUvZmFsc2UKPj4gLWZpeGVkIG90aGVyIHN0eWxpbmcgaXNz
dWVzLgo+Pgo+PiB2MzogQ29tcGxldGVkIHRoZSBUT0RPIGZvciBjb25kaXRpb24gZm9yIGdvaW5n
IHRvIEZSTCBtb2RlLgo+PiBNb2RpZmllZCB0aGUgY29uZGl0aW9uIHRvIGRldGVybWluZSB0aGUg
cmVxdWlyZWQgRlJMIGIvdwo+PiBiYXNlZCBvbmx5IG9uIHRoZSBQY29uIGFuZCBTaW5rJ3MgbWF4
IEZSTCB2YWx1ZXMuCj4+IE1vdmVkIHRoZSBmcmwgc3RydWN0dXJlIGluaXRpYWxpemF0aW9uIHRv
IGludGVsX2RwX2luaXRfY29ubmVjdG9yKCkuCj4+Cj4+IHY0OiBGaXhlZCB0eXBvIGluIGluaXRp
YWxpemF0aW9uIG9mIGZybCBzdHJ1Y3R1cmUuCj4+Cj4+IHY1OiBBbHdheXMgdXNlIEZSTCBpZiBp
dHMgcG9zc2libGUsIGluc3RlYWQgb2YgZW5hYmxpbmcgb25seSBmb3IKPj4gaGlnaGVyIG1vZGVz
IGFzIGRvbmUgaW4gdjMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEFua2l0IE5hdXRpeWFsIDxhbmtp
dC5rLm5hdXRpeWFsQGludGVsLmNvbT4KPj4gUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEu
c2hhbmthckBpbnRlbC5jb20+ICh2MikKPj4gLS0tCj4+ICAgLi4uL2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgICA3ICsKPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAgfCAxNTEgKysrKysrKysrKysrKysrKysrCj4+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oICAgICAgIHwgICAyICsKPj4g
ICAzIGZpbGVzIGNoYW5nZWQsIDE2MCBpbnNlcnRpb25zKCspCj4gPHNuaXA+Cj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPj4gaW5kZXggMDU5NmQ2YzI0ZTczLi40MzAy
N2E2ZDVlNWUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMK
Pj4gQEAgLTM4OTEsNiArMzg5MSw4IEBAIHN0YXRpYyB2b2lkIGludGVsX2Rpc2FibGVfZHAoc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4+ICAgCWludGVsX2VkcF9iYWNrbGlnaHRf
b2ZmKG9sZF9jb25uX3N0YXRlKTsKPj4gICAJaW50ZWxfZHBfc2V0X3Bvd2VyKGludGVsX2RwLCBE
UF9TRVRfUE9XRVJfRDMpOwo+PiAgIAlpbnRlbF9lZHBfcGFuZWxfb2ZmKGludGVsX2RwKTsKPj4g
KwlpbnRlbF9kcC0+ZnJsLmlzX3RyYWluZWQgPSBmYWxzZTsKPj4gKwlpbnRlbF9kcC0+ZnJsLnRy
YWluZWRfcmF0ZV9nYnBzID0gMDsKPiBUaGlzIHN0dWZmIGxvb2tzIHJhdGhlciBtaXNwbGFjZWQg
KG9yIG1pc3NpbmcgZnJvbSBlbHNld2hlcmUpLiBUaGlzIGNvZGUKPiBkb2Vzbid0IGV2ZW4gZ2V0
IGV4ZWN1dGVkIG9uIG1vZGVybiBwbGF0Zm9ybXMuCgpJIHRoaW5rIHRoZXNlIHR3byBsaW5lcyBz
aG91bGQgaGF2ZSBiZWVuIGFkZGVkIHRvIAppbnRlbF9kZGlfcG9zdF9kaXNhYmxlX2RwKCkgZm9y
IFRHTCsKCk15IGludGVudGlvbiB3YXMgdG8gcmVzZXQgdGhlc2UgYmVmb3JlIGRpc2FibGluZyBE
UC4gSW4gaGluZHNpZ2h0LCBzaW5jZSAKd2UgYXJlIGluaXRpYWxpemluZyAocmVzZXR0aW5nKSB0
aGVzZSBpbiBkcF9pbml0X2Nvbm5lY3RvciwgdGhpcyBkb2VzbnQgCnNlZW0gdG8gYmUgcmVxdWly
ZWQuCgpJIHdpbGwgc2VuZCBhIHBhdGNoIHRvIHJlbW92ZSB0aGVzZSB0d28gbGluZXMgZnJvbSBo
ZXJlLgoKCj4KPiA8c25pcD4KPj4gK3N0YXRpYyBpbnQgaW50ZWxfZHBfcGNvbl9zdGFydF9mcmxf
dHJhaW5pbmcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKPj4gK3sKPj4gKyNkZWZpbmUgUENP
Tl9FWFRFTkRFRF9UUkFJTl9NT0RFICgxID4gMCkKPj4gKyNkZWZpbmUgUENPTl9DT05DVVJSRU5U
X01PREUgKDEgPiAwKQo+PiArI2RlZmluZSBQQ09OX1NFUVVFTlRJQUxfTU9ERSAhUENPTl9DT05D
VVJSRU5UX01PREUKPj4gKyNkZWZpbmUgUENPTl9OT1JNQUxfVFJBSU5fTU9ERSAhUENPTl9FWFRF
TkRFRF9UUkFJTl9NT0RFCj4gQWxsIG9mIHRoYXQgbG9va3MgbGlrZSBub25zZW5zZS4gV2hhdCBp
cyBpdCBzdXBwb3NlZCB0byBkbz8KCldoZW4gYXNraW5nIGFuIEhETUkyLjEgUENPTiB0byBpbml0
aWF0ZSBGUkwgdHJhaW5pbmcgdGhlcmUgYXJlIDIgb3B0aW9uczoKClNlcXVlbnRpYWwvQ29uY3Vy
cmVudCBtb2RlOiBTZXF1ZW50aWFsIG1vZGUgYXR0ZW1wdHMgdGhlIEZSTCB0cmFpbmluZyAKYWZ0
ZXIgRFAgTGluayB0cmFpbmluZyBpcyBjb21wbGV0ZWQuIENvbmN1cnJlbnQgbW9kZSB0cmllcyB0
byBkbyB0aGUgRlJMIAp0cmFpbmluZywgZHVyaW5nIERQIGxpbmsgdHJhaW5pbmcuCgpOb3JtYWwg
dHJhaW4gTW9kZS8gRXh0ZW5kZWQgbW9kZTogTm9ybWFsIHRyYWluIG1vZGUsIFBDT04gRlcgdHJh
aW5zIEZSTCAKZnJvbSBNYXggdG8gbWluIEJXLCBzZXQgYnkgc291cmNlIGluIEJXIE1hc2suIEl0
IGFib3J0cyBvbiBmaXJzdCAKc3VjY2Vzc2Z1bCB0cmFpbmluZy4gSW4gRXh0ZW5kZWQgbW9kZSwg
UENPTiBGVyB0cmFpbnMgZm9yIGFsbCBCVyBzZXQgYnkgCnNvdXJjZSBpbiBCVyBtYXNrLgoKRm9y
IENvbmN1cnJlbnQgYW5kIEV4dGVuZGVkIG1vZGUgd2UgbmVlZCB0byBzZXQgc29tZSBleHRyYSBi
aXRzIGluIFBDT04gCkZSTCBjb25maWcgRFBDRHMKClRoZSBpbnRlbnRpb24gd2FzIHRvIGdvIHdp
dGggc2VxdWVudGlhbCBhbmQgTm9ybWFsIHRyYWluaW5nIG1vZGUsIHNvIG5vIApuZWVkIHRvIHNl
dCBhYm92ZSBiaXRzLgoKRG8geW91IHRoaW5rLCBzb21lIGRvY3VtZW50YXRpb24gd2lsbCBtYWtl
IHRoaXMgY2xlYXI/CgpUaGFua3MgJiBSZWdhcmRzLAoKQW5raXQKCj4KPj4gKyNkZWZpbmUgVElN
RU9VVF9GUkxfUkVBRFlfTVMgNTAwCj4+ICsjZGVmaW5lIFRJTUVPVVRfSERNSV9MSU5LX0FDVElW
RV9NUyAxMDAwCj4+ICsKPj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRwX3Rv
X2k5MTUoaW50ZWxfZHApOwo+PiArCWludCBtYXhfZnJsX2J3LCBtYXhfcGNvbl9mcmxfYncsIG1h
eF9lZGlkX2ZybF9idywgcmV0Owo+PiArCXU4IG1heF9mcmxfYndfbWFzayA9IDAsIGZybF90cmFp
bmVkX21hc2s7Cj4+ICsJYm9vbCBpc19hY3RpdmU7Cj4+ICsKPj4gKwlyZXQgPSBkcm1fZHBfcGNv
bl9yZXNldF9mcmxfY29uZmlnKCZpbnRlbF9kcC0+YXV4KTsKPj4gKwlpZiAocmV0IDwgMCkKPj4g
KwkJcmV0dXJuIHJldDsKPj4gKwo+PiArCW1heF9wY29uX2ZybF9idyA9IGludGVsX2RwLT5kZnAu
cGNvbl9tYXhfZnJsX2J3Owo+PiArCWRybV9kYmcoJmk5MTUtPmRybSwgIlBDT04gbWF4IHJhdGUg
PSAlZCBHYnBzXG4iLCBtYXhfcGNvbl9mcmxfYncpOwo+PiArCj4+ICsJbWF4X2VkaWRfZnJsX2J3
ID0gaW50ZWxfZHBfaGRtaV9zaW5rX21heF9mcmwoaW50ZWxfZHApOwo+PiArCWRybV9kYmcoJmk5
MTUtPmRybSwgIlNpbmsgbWF4IHJhdGUgZnJvbSBFRElEID0gJWQgR2Jwc1xuIiwgbWF4X2VkaWRf
ZnJsX2J3KTsKPj4gKwo+PiArCW1heF9mcmxfYncgPSBtaW4obWF4X2VkaWRfZnJsX2J3LCBtYXhf
cGNvbl9mcmxfYncpOwo+PiArCj4+ICsJaWYgKG1heF9mcmxfYncgPD0gMCkKPj4gKwkJcmV0dXJu
IC1FSU5WQUw7Cj4+ICsKPj4gKwlyZXQgPSBkcm1fZHBfcGNvbl9mcmxfcHJlcGFyZSgmaW50ZWxf
ZHAtPmF1eCwgZmFsc2UpOwo+PiArCWlmIChyZXQgPCAwKQo+PiArCQlyZXR1cm4gcmV0Owo+PiAr
CS8qIFdhaXQgZm9yIFBDT04gdG8gYmUgRlJMIFJlYWR5ICovCj4+ICsJd2FpdF9mb3IoaXNfYWN0
aXZlID0gZHJtX2RwX3Bjb25faXNfZnJsX3JlYWR5KCZpbnRlbF9kcC0+YXV4KSA9PSB0cnVlLCBU
SU1FT1VUX0ZSTF9SRUFEWV9NUyk7Cj4+ICsKPj4gKwlpZiAoIWlzX2FjdGl2ZSkKPj4gKwkJcmV0
dXJuIC1FVElNRURPVVQ7Cj4+ICsKPj4gKwltYXhfZnJsX2J3X21hc2sgPSBpbnRlbF9kcF9wY29u
X3NldF9mcmxfbWFzayhtYXhfZnJsX2J3KTsKPj4gKwlyZXQgPSBkcm1fZHBfcGNvbl9mcmxfY29u
ZmlndXJlXzEoJmludGVsX2RwLT5hdXgsIG1heF9mcmxfYncsIFBDT05fU0VRVUVOVElBTF9NT0RF
KTsKPj4gKwlpZiAocmV0IDwgMCkKPj4gKwkJcmV0dXJuIHJldDsKPj4gKwlyZXQgPSBkcm1fZHBf
cGNvbl9mcmxfY29uZmlndXJlXzIoJmludGVsX2RwLT5hdXgsIG1heF9mcmxfYndfbWFzaywgUENP
Tl9OT1JNQUxfVFJBSU5fTU9ERSk7Cj4+ICsJaWYgKHJldCA8IDApCj4+ICsJCXJldHVybiByZXQ7
Cj4+ICsJcmV0ID0gZHJtX2RwX3Bjb25fZnJsX2VuYWJsZSgmaW50ZWxfZHAtPmF1eCk7Cj4+ICsJ
aWYgKHJldCA8IDApCj4+ICsJCXJldHVybiByZXQ7Cj4+ICsJLyoKPj4gKwkgKiBXYWl0IGZvciBG
UkwgdG8gYmUgY29tcGxldGVkCj4+ICsJICogQ2hlY2sgaWYgdGhlIEhETUkgTGluayBpcyB1cCBh
bmQgYWN0aXZlLgo+PiArCSAqLwo+PiArCXdhaXRfZm9yKGlzX2FjdGl2ZSA9IGRybV9kcF9wY29u
X2hkbWlfbGlua19hY3RpdmUoJmludGVsX2RwLT5hdXgpID09IHRydWUsIFRJTUVPVVRfSERNSV9M
SU5LX0FDVElWRV9NUyk7Cj4+ICsKPj4gKwlpZiAoIWlzX2FjdGl2ZSkKPj4gKwkJcmV0dXJuIC1F
VElNRURPVVQ7Cj4+ICsKPj4gKwkvKiBWZXJpZnkgSERNSSBMaW5rIGNvbmZpZ3VyYXRpb24gc2hv
d3MgRlJMIE1vZGUgKi8KPj4gKwlpZiAoRFBfUENPTl9IRE1JX01PREVfRlJMICE9IGRybV9kcF9w
Y29uX2hkbWlfbGlua19tb2RlKCZpbnRlbF9kcC0+YXV4LCAmZnJsX3RyYWluZWRfbWFzaykpIHsK
Pj4gKwkJZHJtX2RiZygmaTkxNS0+ZHJtLCAiSERNSSBjb3VsZG4ndCBiZSB0cmFpbmVkIGluIEZS
TCBNb2RlXG4iKTsKPj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4+ICsJfQo+PiArCWRybV9kYmcoJmk5
MTUtPmRybSwgIk1BWF9GUkxfTUFTSyA9ICV1LCBGUkxfVFJBSU5FRF9NQVNLID0gJXVcbiIsIG1h
eF9mcmxfYndfbWFzaywgZnJsX3RyYWluZWRfbWFzayk7Cj4+ICsKPj4gKwlpbnRlbF9kcC0+ZnJs
LnRyYWluZWRfcmF0ZV9nYnBzID0gaW50ZWxfZHBfcGNvbl9nZXRfZnJsX21hc2soZnJsX3RyYWlu
ZWRfbWFzayk7Cj4+ICsJaW50ZWxfZHAtPmZybC5pc190cmFpbmVkID0gdHJ1ZTsKPj4gKwlkcm1f
ZGJnKCZpOTE1LT5kcm0sICJGUkwgdHJhaW5lZCB3aXRoIDogJWQgR2Jwc1xuIiwgaW50ZWxfZHAt
PmZybC50cmFpbmVkX3JhdGVfZ2Jwcyk7Cj4+ICsKPj4gKwlyZXR1cm4gMDsKPj4gK30KPj4gKwo+
PiArc3RhdGljIGJvb2wgaW50ZWxfZHBfaXNfaGRtaV8yXzFfc2luayhzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwKQo+PiArewo+PiArCWlmIChkcm1fZHBfaXNfYnJhbmNoKGludGVsX2RwLT5kcGNk
KSAmJgo+PiArCSAgICBpbnRlbF9kcC0+aGFzX2hkbWlfc2luayAmJgo+PiArCSAgICBpbnRlbF9k
cF9oZG1pX3NpbmtfbWF4X2ZybChpbnRlbF9kcCkgPiAwKQo+PiArCQlyZXR1cm4gdHJ1ZTsKPj4g
Kwo+PiArCXJldHVybiBmYWxzZTsKPj4gK30KPj4gKwo+PiArdm9pZCBpbnRlbF9kcF9jaGVja19m
cmxfdHJhaW5pbmcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKPj4gK3sKPj4gKwlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsKPj4gKwo+
PiArCS8qIEFsd2F5cyBnbyBmb3IgRlJMIHRyYWluaW5nIGlmIHN1cHBvcnRlZCAqLwo+PiArCWlm
ICghaW50ZWxfZHBfaXNfaGRtaV8yXzFfc2luayhpbnRlbF9kcCkgfHwKPj4gKwkgICAgaW50ZWxf
ZHAtPmZybC5pc190cmFpbmVkKQo+PiArCQlyZXR1cm47Cj4+ICsKPj4gKwlpZiAoaW50ZWxfZHBf
cGNvbl9zdGFydF9mcmxfdHJhaW5pbmcoaW50ZWxfZHApIDwgMCkgewo+PiArCQlpbnQgcmV0LCBt
b2RlOwo+PiArCj4+ICsJCWRybV9kYmcoJmRldl9wcml2LT5kcm0sICJDb3VsZG50IHNldCBGUkwg
bW9kZSwgY29udGludWluZyB3aXRoIFRNRFMgbW9kZVxuIik7Cj4+ICsJCXJldCA9IGRybV9kcF9w
Y29uX3Jlc2V0X2ZybF9jb25maWcoJmludGVsX2RwLT5hdXgpOwo+PiArCQltb2RlID0gZHJtX2Rw
X3Bjb25faGRtaV9saW5rX21vZGUoJmludGVsX2RwLT5hdXgsIE5VTEwpOwo+PiArCj4+ICsJCWlm
IChyZXQgPCAwIHx8IG1vZGUgIT0gRFBfUENPTl9IRE1JX01PREVfVE1EUykKPj4gKwkJCWRybV9k
YmcoJmRldl9wcml2LT5kcm0sICJJc3N1ZSB3aXRoIFBDT04sIGNhbm5vdCBzZXQgVE1EUyBtb2Rl
XG4iKTsKPj4gKwl9IGVsc2Ugewo+PiArCQlkcm1fZGJnKCZkZXZfcHJpdi0+ZHJtLCAiRlJMIHRy
YWluaW5nIENvbXBsZXRlZFxuIik7Cj4+ICsJfQo+PiArfQo+PiArCj4+ICAgc3RhdGljIHZvaWQK
Pj4gICBnNHhfc2V0X2xpbmtfdHJhaW4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPj4gICAJ
CSAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+PiBAQCAtODIx
MCw2ICs4MzU4LDkgQEAgaW50ZWxfZHBfaW5pdF9jb25uZWN0b3Ioc3RydWN0IGludGVsX2RpZ2l0
YWxfcG9ydCAqZGlnX3BvcnQsCj4+ICAgCQkJICAgICAgICh0ZW1wICYgfjB4ZikgfCAweGQpOwo+
PiAgIAl9Cj4+ICAgCj4+ICsJaW50ZWxfZHAtPmZybC5pc190cmFpbmVkID0gZmFsc2U7Cj4+ICsJ
aW50ZWxfZHAtPmZybC50cmFpbmVkX3JhdGVfZ2JwcyA9IDA7Cj4+ICsKPj4gICAJcmV0dXJuIHRy
dWU7Cj4+ICAgCj4+ICAgZmFpbDoKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuaAo+PiBpbmRleCBiODcxYTA5YjY5MDEuLjU4Yjc2YTIwNDU5YyAxMDA2NDQKPj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oCj4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaAo+PiBAQCAtMTQ0LDQgKzE0NCw2IEBAIGJv
b2wgaW50ZWxfZHBfaW5pdGlhbF9mYXN0c2V0X2NoZWNrKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLAo+PiAgIHZvaWQgaW50ZWxfZHBfc3luY19zdGF0ZShzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwKPj4gICAJCQkgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpOwo+PiAgIAo+PiArdm9pZCBpbnRlbF9kcF9jaGVja19mcmxfdHJhaW5pbmcoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCk7Cj4+ICsKPj4gICAjZW5kaWYgLyogX19JTlRFTF9EUF9IX18g
Ki8KPj4gLS0gCj4+IDIuMTcuMQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
