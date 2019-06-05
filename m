Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAC735A6D
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 12:29:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EFE989804;
	Wed,  5 Jun 2019 10:29:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F199389804
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2019 10:29:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jun 2019 03:29:04 -0700
X-ExtLoop1: 1
Received: from gaia.fi.intel.com ([10.237.72.169])
 by fmsmga005.fm.intel.com with ESMTP; 05 Jun 2019 03:29:04 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 253875C1F3A; Wed,  5 Jun 2019 13:29:03 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190605095657.23601-1-jani.nikula@intel.com>
References: <20190605095657.23601-1-jani.nikula@intel.com>
Date: Wed, 05 Jun 2019 13:29:03 +0300
Message-ID: <87d0jss4uo.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] Documentation/i915: Fix kernel-doc
 references to moved gem files
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
Cc: jani.nikula@intel.com, linux-doc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4gd3JpdGVzOgoKPiBUaGUgZXJyb3Ig
bWVzc2FnZXMgY291bGQgYmUgbW9yZSBkZXNjcmlwdGl2ZSwgYnV0IGZpeCB0aGVzZSBjYXVzZWQg
YnkKPiBmaWxlIG1vdmVzOgo+Cj4gV0FSTklORzoga2VybmVsLWRvYyAnLi9zY3JpcHRzL2tlcm5l
bC1kb2MgLXJzdCAtZW5hYmxlLWxpbmVubyAtaW50ZXJuYWwKPiAgICAgLi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9zaHJpbmtlci5jJyBmYWlsZWQgd2l0aCByZXR1cm4gY29kZSAyCj4g
V0FSTklORzoga2VybmVsLWRvYyAnLi9zY3JpcHRzL2tlcm5lbC1kb2MgLXJzdCAtZW5hYmxlLWxp
bmVubyAtZnVuY3Rpb24KPiAgICAgVXNlciBjb21tYW5kIGV4ZWN1dGlvbiAuL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYycKPiAgICAgZmFpbGVkIHdpdGggcmV0dXJu
IGNvZGUgMQo+IFdBUk5JTkc6IGtlcm5lbC1kb2MgJy4vc2NyaXB0cy9rZXJuZWwtZG9jIC1yc3Qg
LWVuYWJsZS1saW5lbm8gLWludGVybmFsCj4gICAgIC4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW1fdGlsaW5nLmMnIGZhaWxlZCB3aXRoIHJldHVybiBjb2RlIDIKPiBXQVJOSU5HOiBrZXJu
ZWwtZG9jICcuL3NjcmlwdHMva2VybmVsLWRvYyAtcnN0IC1lbmFibGUtbGluZW5vIC1mdW5jdGlv
bgo+ICAgICBidWZmZXIgb2JqZWN0IHRpbGluZyAuL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX3RpbGluZy5jJwo+ICAgICBmYWlsZWQgd2l0aCByZXR1cm4gY29kZSAxCj4KPiBGaXhlczog
MTBiZTk4YTc3YzU1ICgiZHJtL2k5MTU6IE1vdmUgbW9yZSBHRU0gb2JqZWN0cyB1bmRlciBnZW0v
IikKPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1p
a2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cgovb1wKClJldmlld2VkLWJ5
OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gLS0tCj4g
IERvY3VtZW50YXRpb24vZ3B1L2k5MTUucnN0IHwgMTEgKysrKy0tLS0tLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9E
b2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdCBiL0RvY3VtZW50YXRpb24vZ3B1L2k5MTUucnN0Cj4g
aW5kZXggNmM3NTM4MGIyOTI4Li5mOThlZTk1ZGE5MGYgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRh
dGlvbi9ncHUvaTkxNS5yc3QKPiArKysgYi9Eb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdAo+IEBA
IC0zNDksNyArMzQ5LDcgQEAgb2YgYnVmZmVyIG9iamVjdCBjYWNoZXMuIFNocmlua2luZyBpcyB1
c2VkIHRvIG1ha2UgbWFpbiBtZW1vcnkKPiAgYXZhaWxhYmxlLiBOb3RlIHRoYXQgdGhpcyBpcyBt
b3N0bHkgb3J0aG9nb25hbCB0byBldmljdGluZyBidWZmZXIKPiAgb2JqZWN0cywgd2hpY2ggaGFz
IHRoZSBnb2FsIHRvIG1ha2Ugc3BhY2UgaW4gZ3B1IHZpcnR1YWwgYWRkcmVzcyBzcGFjZXMuCj4g
IAo+IC0uLiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fc2hyaW5r
ZXIuYwo+ICsuLiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3Nocmlua2VyLmMKPiAgICAgOmludGVybmFsOgo+ICAKPiAgQmF0Y2hidWZmZXIgUGFyc2luZwo+
IEBAIC0zNzMsNyArMzczLDcgQEAgQmF0Y2hidWZmZXIgUG9vbHMKPiAgVXNlciBCYXRjaGJ1ZmZl
ciBFeGVjdXRpb24KPiAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgCj4gLS4uIGtlcm5l
bC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPiArLi4g
a2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVy
LmMKPiAgICAgOmRvYzogVXNlciBjb21tYW5kIGV4ZWN1dGlvbgo+ICAKPiAgTG9naWNhbCBSaW5n
cywgTG9naWNhbCBSaW5nIENvbnRleHRzIGFuZCBFeGVjbGlzdHMKPiBAQCAtMzgyLDkgKzM4Miw2
IEBAIExvZ2ljYWwgUmluZ3MsIExvZ2ljYWwgUmluZyBDb250ZXh0cyBhbmQgRXhlY2xpc3RzCj4g
IC4uIGtlcm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ICAg
ICA6ZG9jOiBMb2dpY2FsIFJpbmdzLCBMb2dpY2FsIFJpbmcgQ29udGV4dHMgYW5kIEV4ZWNsaXN0
cwo+ICAKPiAtLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jCj4gLSAgIDppbnRlcm5hbDoKPiAtCj4gIEdsb2JhbCBHVFQgdmlld3MKPiAgLS0tLS0tLS0t
LS0tLS0tLQo+ICAKPiBAQCAtNDE1LDEwICs0MTIsMTAgQEAgSGFyZHdhcmUgVGlsaW5nIGFuZCBT
d2l6emxpbmcgRGV0YWlscwo+ICBPYmplY3QgVGlsaW5nIElPQ1RMcwo+ICAtLS0tLS0tLS0tLS0t
LS0tLS0tLQo+ICAKPiAtLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX3RpbGluZy5jCj4gKy4uIGtlcm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fdGlsaW5nLmMKPiAgICAgOmludGVybmFsOgo+ICAKPiAtLi4ga2VybmVsLWRvYzo6
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3RpbGluZy5jCj4gKy4uIGtlcm5lbC1kb2M6
OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdGlsaW5nLmMKPiAgICAgOmRvYzog
YnVmZmVyIG9iamVjdCB0aWxpbmcKPiAgCj4gIFdPUENNCj4gLS0gCj4gMi4yMC4xCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
