Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D01DC17ED0B
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 01:04:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C756A89824;
	Tue, 10 Mar 2020 00:04:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4631F89824
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 00:04:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 17:04:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,535,1574150400"; d="scan'208";a="242132779"
Received: from przanoni-mobl.jf.intel.com ([10.24.15.100])
 by orsmga003.jf.intel.com with ESMTP; 09 Mar 2020 17:04:37 -0700
Message-ID: <359b05b24d5258a6bec9832060668c1e3cc27f49.camel@intel.com>
From: Paulo Zanoni <paulo.r.zanoni@intel.com>
To: Karthik B S <karthik.b.s@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 09 Mar 2020 17:04:36 -0700
In-Reply-To: <20200306113927.16904-1-karthik.b.s@intel.com>
References: <20200306113927.16904-1-karthik.b.s@intel.com>
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 0/7] Asynchronous flip implementation for i915
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RW0gc2V4LCAyMDIwLTAzLTA2IMOgcyAxNzowOSArMDUzMCwgS2FydGhpayBCIFMgZXNjcmV2ZXU6
Cj4gV2l0aG91dCBhc3luYyBmbGlwIHN1cHBvcnQgaW4gdGhlIGtlcm5lbCwgZnVsbHNjcmVlbiBh
cHBzIHdoZXJlIGdhbWUKPiByZXNvbHV0aW9uIGlzIGVxdWFsIHRvIHRoZSBzY3JlZW4gcmVzb2x1
dGlvbiwgbXVzdCBwZXJmb3JtIGFuIGV4dHJhIGJsaXQKPiBwZXIgZnJhbWUgcHJpb3IgdG8gZmxp
cHBpbmcuCj4gCj4gQXN5bmNocm9ub3VzIHBhZ2UgZmxpcHMgd2lsbCBhbHNvIGJvb3N0IHRoZSBG
UFMgb2YgTWVzYSBiZW5jaG1hcmtzLgoKClRoYW5rcyBhIGxvdCBmb3IgZG9pbmcgdGhpcyB3b3Jr
IQoKSSBkaWQgc29tZSBxdWljayBzbW9rZSB0ZXN0cyBvbiBhIEdlbWluaSBMYWtlIGFuZCB3aGls
ZSB0aGlzIGFwcGVhcnMgdG8KYmUgd29ya2luZyBmaW5lIHdpdGggeGY4Ni12aWRlby1tb2Rlc2V0
dGluZywgdGhlICJwYWdlZmxpcC5jIiBwcm9ncmFtIEkKc2hhcmVkIHByZXZpb3VzbHkgYnJlYWtz
IHdoZW4geW91IGxhdW5jaCBpdCBhcyAiLi9wYWdlZmxpcCAtbiI6IHRoaXMKYXJndW1lbnQgbWFr
ZXMgdGhlIHByb2dyYW0gKm5vdCogcmVxdWVzdCBmb3IgcGFnZSBmbGlwIGV2ZW50cyAoYnkgbm90
CnNldHRpbmcgRFJNX01PREVfUEFHRV9GTElQX0VWRU5UKSBhbmQganVzdCB0cnkgdG8gZmxpcCBh
cyBmYXN0IGFzIGl0CmNhbi4gSSBkaWRuJ3QgaW52ZXN0aWdhdGUgd2h5IHRoaXMgYnJlYWtzLCBi
dXQgaXQncyBwcm9iYWJseSBzb21lCmNvcm5lciBjYXNlIHRoZSBzZXJpZXMgaXMgZm9yZ2V0dGlu
Zy4KCkFsc28sIGRvZXNuJ3QgYXN5bmMgcGFnZWZsaXAgaW50ZXJhY3Qgd2l0aCBzb21lIG90aGVy
IGRpc3BsYXkgZmVhdHVyZXM/CkRvbid0IHdlIG5lZWQgdG8gZGlzYWJsZSBhdCBsZWFzdCBvbmUg
b2YgRkJDLCBQU1IgYW5kL29yIHJlbmRlcgpjb21wcmVzc2lvbiB3aGVuIHVzaW5nIGFzeW5jIHBh
Z2UgZmxpcHM/CgpWaWxsZSBtZW50aW9uZWQgc29tZSBwb3NzaWJsZSBpbnRlcmFjdGlvbnMgd2l0
aCBTVVJGL09GRlNFVCB0cmFja2luZwp0b28gKGZyYW1lYnVmZmVycyBub3QgYmVpbmcgYXQgdGhl
IHN0YXJ0IG9mIHRoZSBibyksIHdoaWNoIGRvZXNuJ3Qgc2VlbQp0byBiZSBjb3ZlcmVkIGJ5IHRo
ZSBzZXJpZXMuCgpUaGFua3MsClBhdWxvCgo+IAo+IEthcnRoaWsgQiBTICg3KToKPiAgIGRybS9p
OTE1OiBEZWZpbmUgZmxpcCBkb25lIGZ1bmN0aW9ucyBhbmQgZW5hYmxlIElFUgo+ICAgZHJtL2k5
MTU6IEFkZCBzdXBwb3J0IGZvciBhc3luYyBmbGlwcyBpbiBJOTE1Cj4gICBkcm0vaTkxNTogTWFr
ZSBjb21taXQgY2FsbCBibG9ja2luZyBpbiBjYXNlIG9mIGFzeW5jIGZsaXBzCj4gICBkcm0vaTkx
NTogQWRkIGNoZWNrcyBzcGVjaWZpYyB0byBhc3luYyBmbGlwcwo+ICAgZHJtL2k5MTU6IEFkZCBm
bGlwX2RvbmVfaGFuZGxlciBkZWZpbml0aW9uCj4gICBkcm0vaTkxNTogRW5hYmxlIGFuZCBoYW5k
bGUgZmxpcCBkb25lIGludGVycnVwdAo+ICAgZHJtL2k5MTU6IERvIG5vdCBjYWxsIGRybV9jcnRj
X2FybV92YmxhbmtfZXZlbnQgaW4gYXN5bmMgZmxpcHMKPiAKPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA1NSArKysrKysrKysrKysrKysrKy0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgIHwgMTIgKystLQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jICAgICAgICAgICAgICB8IDU4ICsrKysrKysr
KysrKysrKysrKystCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmggICAgICAgICAg
ICAgIHwgIDIgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAg
ICB8ICAxICsKPiAgNSBmaWxlcyBjaGFuZ2VkLCAxMTcgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRp
b25zKC0pCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
