Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD08331DFE3
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 20:57:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7AE36E9D2;
	Wed, 17 Feb 2021 19:57:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDC916E9D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 19:57:49 +0000 (UTC)
IronPort-SDR: nDCSmSoFzx5/XTBs4f9W9RakW6LMAEphIIIhD0zdjzMU0Fqv3yuO33C0jVnu23+siepS48zVi2
 OjQMr5Gqsoqw==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="202532203"
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="202532203"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 11:57:49 -0800
IronPort-SDR: WB4LJR0cyzO6EsOWslPkgB8uFBT4n5XAjNNmXM99ahqHXDLT1+v9ONj+RddEzzKLFD+PkLDSjC
 cguASSaoR6Jw==
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="385315295"
Received: from mvalka-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.39.140])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 11:57:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20210217175440.vo7lunoy5sy74tmq@ldmartin-desk1>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1613580193.git.jani.nikula@intel.com>
 <20210217175440.vo7lunoy5sy74tmq@ldmartin-desk1>
Date: Wed, 17 Feb 2021 21:57:44 +0200
Message-ID: <87r1lea2mf.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 00/12] drm/i915/bios: vbt child device rework
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxNyBGZWIgMjAyMSwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+IHdyb3RlOgo+IE9uIFdlZCwgRmViIDE3LCAyMDIxIGF0IDA3OjAzOjMwUE0gKzAyMDAs
IEphbmkgTmlrdWxhIHdyb3RlOgo+Pkkgc2VlIHRoZSBwYXJzaW5nIGFuZCBjYWNoaW5nIG9mIGNo
aWxkIGRldmljZSBkYXRhIGludG8KPj5pOTE1LT52YnQuZGRpX3BvcnRfaW5mb1tdIHNsaWdodGx5
IHByb2JsZW1hdGljLiBXZSBrZWVwIGFkZGluZyBkYXRhIHRvCj4+aXQsIGFuZCBpdCBqdXN0IGR1
cGxpY2F0ZXMgaW5mb3JtYXRpb24uIFN0YXJ0IG1vdmluZyB0b3dhcmRzIGEgc2luZ2xlCj4+cG9p
bnQgb2YgdHJ1dGgsIGFuZCBnZXR0aW5nIHRoZSBpbmZvcm1hdGlvbiBkaXJlY3RseSBmcm9tIHRo
ZSBjaGlsZAo+PmRldmljZSBkYXRhLgo+Pgo+Pk9uZSBvYnN0YWNsZSBoYXMgYmVlbiB0aGF0IGlu
aXRfdmJ0X21pc3NpbmdfZGVmYXVsdHMoKSBvbmx5IGluaXRpYWxpemVzCj4+ZGRpX3BvcnRfaW5m
bywgd2l0aG91dCBjaGlsZCBkZXZpY2VzLiBBcyB0aGUgc2FtZSBwcm9ibGVtIGFyb3NlIGluIGEK
Pj5wYXRjaCBmcm9tIEx1Y2FzLCBJIHRob3VnaHQgaXQgd2FzIHRpbWUgdG8gc3RhcnQgY3JlYXRp
bmcgZmFrZSBjaGlsZAo+PmRldmljZXMgdG8gdW5pZnkgdGhlIGNvZGUuCj4+Cj4+VGhlcmUgYXJl
IGEgYnVuY2ggb2YgY2xlYW51cHMgYW5kIHJlZmFjdG9yaW5nIGhlcmUuIFBhdGNoZXMgMS01IGFy
ZQo+PmVub3VnaCB0byBmaXggTHVjYXMnIHBhdGNoIEkgdGhpbmsuIFBhdGNoIDEwIGRvZXMgd2hh
dCBMdWNhcyB3YXMgYWZ0ZXIsCj4+anVzdCBpbiBhIGRpZmZlcmVudCB3YXkgYW5kIGFzIGEgYnlw
cm9kdWN0IG9mIHNvbWV0aGluZyBlbHNlLiBUaGUgbGF0ZXIKPgo+IGh1bW4uLi4gYnV0IHdlJ2Qg
c3RpbGwgbmVlZCB0aGUgcGF0Y2hlcyBpbiB0aGF0IHNlcmllcyB0byBjbGVhbnVwCj4gdGhlIGNh
bGxzIHRvIGludGVsX2RkaV9pbml0KCkgZnJvbSBpbnRlbF9kaXNwbGF5LmMuIE9yIGRpZCBJIG1p
c3MKPiBhbnl0aGluZz8KCk5haCwgbXkgYmFkLiBUaGlzIG1ha2VzIGl0IHBvc3NpYmxlIHRvIGRv
IHdoYXQgeW91IGRvIHRoZXJlLgoKQlIsCkphbmkuCgo+Cj4gSSBkaWQgYSBxdWljayBzY2FuIHRo
cm91Z2ggdGhlIHBhdGNoZXMgYW5kIGxlZnQgYSBmZXcgY29tbWVudHMuIE92ZXJhbGwKPiBpdCBs
b29rcyBnb29kIHRvIG1lLCBidXQgSSBuZWVkIHRvIGRlZGljYXRlIGEgbGl0dGxlIG1vcmUgdGlt
ZSB0byBnaXZlIGEKPiBwcm9wZXIgci1iLiBJIHdpbGwgZG8gc29vbiBpZiBubyBvbmUgYmVhdHMg
bWUgdG8gaXQuCj4KPgo+IHRoYW5rcwo+IEx1Y2FzIERlIE1hcmNoaQo+Cj4+cGF0Y2hlcyBpbiB0
aGUgc2VyaWVzIGFyZSBtb3JlIHRvIHNob3cgdGhlIGRpcmVjdGlvbiwgYW5kIHNlZWsKPj52YWxp
ZGF0aW9uIGZvciB0aGF0IGRpcmVjdGlvbi4KPj4KPj5OYW1pbmcgaXMgYWxzbyBhIHF1ZXN0aW9u
IG1hcmsuIEFsbCBvZiB0aGVzZSBhcmUgYSBiaXQgcXVlc3Rpb25hYmxlOgo+PmludGVsX2Jpb3Nf
ZW5jb2Rlcl9kYXRhLCBkZXZkYXRhLCBpbnRlbF9iaW9zX2VuY29kZXJfc3VwcG9ydHNfKiwgZXRj
Lgo+Pgo+PkJSLAo+PkphbmkuCj4+Cj4+Cj4+WzFdIGh0dHA6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3BhdGNoL21zZ2lkLzIwMjEwMjEzMTkwNTExLjEwMTcwODgtMi1sdWNhcy5kZW1hcmNo
aUBpbnRlbC5jb20KPj4KPj4KPj4KPj5DYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNo
aUBpbnRlbC5jb20+Cj4+Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Cj4+Cj4+Cj4+SmFuaSBOaWt1bGEgKDEyKToKPj4gIGRybS9pOTE1L2Jpb3M6IG1h
c3MgY29udmVydCBkZXZfcHJpdiB0byBpOTE1Cj4+ICBkcm0vaTkxNS9iaW9zOiBzdG9yZSBiZGIg
dmVyc2lvbiBpbiBpOTE1Cj4+ICBkcm0vaTkxNS9iaW9zOiBsaW1pdCBkZWZhdWx0IG91dHB1dHMg
YnkgcGxhdGZvcm0gb24gbWlzc2luZyBWQlQKPj4gIGRybS9pOTE1L2Jpb3M6IGxpbWl0IGRlZmF1
bHQgb3V0cHV0cyB0byBwb3J0cyBBIHRocm91Z2ggRgo+PiAgZHJtL2k5MTUvYmlvczogY3JlYXRl
IGZha2UgY2hpbGQgZGV2aWNlcyBvbiBtaXNzaW5nIFZCVAo+PiAgZHJtL2k5MTUvYmlvczogcmVu
YW1lIGRpc3BsYXlfZGV2aWNlX2RhdGEgdG8gaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEKPj4gIGRy
bS9pOTE1L2Jpb3M6IGFkZCBpOTE1IGJhY2twb2ludGVyIHRvIGludGVsX2Jpb3NfZW5jb2Rlcl9k
YXRhCj4+ICBkcm0vaTkxNS92YnQ6IGFkZCBoZWxwZXIgZnVuY3Rpb25zIHRvIGNoZWNrIG91dHB1
dCBzdXBwb3J0Cj4+ICBkcm0vaTkxNS9iaW9zOiBzYXZlIGEgaGlnaGVyIGxldmVsIHBvaW50ZXIg
aW4gZGRpX3ZidF9wb3J0X2luZm9bXQo+PiAgZHJtL2k5MTUvYmlvczogc3RhcnQgdXNpbmcgdGhl
IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhIGRpcmVjdGx5Cj4+ICBkcm0vaTkxNS9iaW9zOiBzdGFy
dCB1c2luZyBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSBmb3IgVHlwZS1DIFVTQiBhbmQKPj4gICAg
VEJUCj4+ICBkcm0vaTkxNS9iaW9zOiBhZGQgaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgdG8gZW5j
b2RlciwgdXNlIGZvciBpYm9vc3QKPj4KPj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9iaW9zLmMgICAgIHwgMTAyMSArKysrKysrKystLS0tLS0tLQo+PiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaCAgICAgfCAgIDE3ICstCj4+IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgICB8ICAgMjggKy0KPj4gLi4uL2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgICAgMyArCj4+IGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAgIDkgKy0KPj4gNSBmaWxl
cyBjaGFuZ2VkLCA1ODQgaW5zZXJ0aW9ucygrKSwgNDk0IGRlbGV0aW9ucygtKQo+Pgo+Pi0tIAo+
PjIuMjAuMQo+PgoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBD
ZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
