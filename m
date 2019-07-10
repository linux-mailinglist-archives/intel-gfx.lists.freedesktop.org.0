Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17930648AE
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 16:53:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F80E6E0E9;
	Wed, 10 Jul 2019 14:53:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 280B06E0E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 14:53:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 07:53:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,474,1557212400"; d="scan'208";a="173881056"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Jul 2019 07:53:23 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 6A2C95C1EC2; Wed, 10 Jul 2019 17:53:10 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156276893621.4055.4215367273715686623@skylake-alporthouse-com>
References: <20190707210024.26192-1-chris@chris-wilson.co.uk>
 <20190707210024.26192-7-chris@chris-wilson.co.uk>
 <87muhmq8g7.fsf@gaia.fi.intel.com>
 <156276893621.4055.4215367273715686623@skylake-alporthouse-com>
Date: Wed, 10 Jul 2019 17:53:10 +0300
Message-ID: <87d0iiq6uh.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 06/11] drm/i915/gtt: Convert vm->scratch
 into an array
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTEwIDE1OjE4OjMyKQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiA+IC0gICAgIGlmIChpOTE1X3ZtX2lz
XzRsdmwodm0pKSB7Cj4+ID4gLSAgICAgICAgICAgICBpZiAodW5saWtlbHkoc2V0dXBfcGFnZV9k
bWEodm0sICZ2bS0+c2NyYXRjaF9wZHApKSkgewo+PiA+IC0gICAgICAgICAgICAgICAgICAgICBy
ZXQgPSAtRU5PTUVNOwo+PiA+IC0gICAgICAgICAgICAgICAgICAgICBnb3RvIGZyZWVfcGQ7Cj4+
ID4gLSAgICAgICAgICAgICB9Cj4+ID4gLSAgICAgICAgICAgICBmaWxsX3BhZ2VfZG1hKCZ2bS0+
c2NyYXRjaF9wZHAsCj4+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgIGdlbjhfcGRlX2Vu
Y29kZSh2bS0+c2NyYXRjaF9wZHAuZGFkZHIsCj4+ID4gLSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBJOTE1X0NBQ0hFX0xMQykpOwo+PiA+ICsgICAgICAgICAgICAg
ZmlsbF9weCgmdm0tPnNjcmF0Y2hbaV0sIHZtLT5zY3JhdGNoW2kgLSAxXS5lbmNvZGUpOwo+PiA+
ICsgICAgICAgICAgICAgdm0tPnNjcmF0Y2hbaV0uZW5jb2RlID0KPj4gPiArICAgICAgICAgICAg
ICAgICAgICAgZ2VuOF9wZGVfZW5jb2RlKHB4X2RtYSgmdm0tPnNjcmF0Y2hbaV0pLAo+PiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSTkxNV9DQUNIRV9MTEMpOwo+PiAK
Pj4gT2suIFRoZSBuZXcgY29kZSBtYWtlcyBwZXJmZWN0IHNlbnNlIGhlcmUuCj4+IAo+PiBBbmQg
d2l0aCBpdCBjb25mdXNpb24gYXJpc2VzOiBob3cgZGlkIHdlIG1hbmFnZQo+PiB0byBnZXQgdGhl
IG9sZCBjb2RlIHdvcmsgd2l0aCBwZHAgZW5jb2RpbmcgcG9pbnRpbmcgdG8gaXRzZWxmPwo+Cj4g
V2hhdCB0aGUuLi4uIFlvdSdyZSByaWdodC4gVGhhdCBtdXN0IGhhdmUgY2F1c2VkIHNvbWUgZnVu
a3kgR1BVIGhhbmdzIGlmCj4gcGVvcGxlIHRyaWVkIHRvIGFjY2VzcyBzb21ldGhpbmcgZmFyIG91
dHNpZGUgb2YgdGhlaXIgc2V0Lgo+Cj4gSG1tLCB5b3Uga25vdyB0aGF0J3MgZXhhY3RseSB3aGF0
IGxpdmVfY29udGV4dHMvdm1faXNvbGF0aW9uIHRyaWVzLiBXZWxsCj4gaXQgdHJpZXMgdG8gd3Jp
dGUgaW50byByYW5kb20gaW52YWxpZCBhZGRyZXNzZXMgYW5kIHNlZSBpZiB0aGUgd3JpdGVzCj4g
YWZmZWN0IHNjcmF0Y2ggb2YgYW5vdGhlciBjb250ZXh0LiBEaWQgSSBjaG9vc2UgcmFuZG9tbHkg
Y2FyZWZ1bGx5Cj4gZW5vdWdoPyBIbW0uIG9mZnNldCAmPSAtc2l6ZW9mKHUzMik7IElzIHRoZXJl
IGEgZGFuZ2VyIHRoZXJlIHRoYXQncyBvbmx5Cj4gdTMyIGFuZCBub3QgdTY0LiBNYXliZS4gQnV0
IG90aGVyd2lzZSBpdCBsb29rcyBsaWtlIGl0IHNob3VsZCBiZSBwaWNraW5nCj4gYSBwcm5nIG92
ZXIgdGhlIHdob2xlIHZtLT50b3RhbCBhbmQgc28gc2hvdWxkIGJlIHRyaXBwaW5nIG92ZXIgdGhl
Cj4gcmVjdXJzaW9uIDp8CgpXb3J0aCBpbnZlc3RpZ2F0aW9uIHN1cmVseS4KQnV0IHRoaXMgcGF0
Y2ggbG9va3MgZ29vZCBhbmQgIG1ha2VzIGl0IHNhbmUsCgpSZXZpZXdlZC1ieTogTWlrYSBLdW9w
cGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
