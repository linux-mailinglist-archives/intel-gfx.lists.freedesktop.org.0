Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D915C206E2E
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 09:49:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A48F6E02B;
	Wed, 24 Jun 2020 07:49:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40FC86E02B
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 07:49:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 667EA41458;
 Wed, 24 Jun 2020 09:49:24 +0200 (CEST)
Authentication-Results: ste-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=b/OnlQl5; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zvDmNRlO7ugV; Wed, 24 Jun 2020 09:49:23 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id A34603FA54;
 Wed, 24 Jun 2020 09:49:22 +0200 (CEST)
Received: from localhost.localdomain (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 26CB8360168;
 Wed, 24 Jun 2020 09:49:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1592984962; bh=R2BvdFLbPVx1jdd0FY96VyTVAr6VOG4w7HrQ9of65pw=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=b/OnlQl5kuI61CGc6e0bU4OsZAoYGu2owVbIr40XioRZAsPle7em5GTk2YJQuG8o5
 LxneOBfP43zuwpUL+HePE/Hp1bdfn6TaIpn2bSuTKRTSW9JVu95ddpCQAdHQp+POvj
 /rNeKns8RlgYmm5+cmq+gpEBIDDmwAhofCPbfQoM=
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
 <20200623142843.423594-4-maarten.lankhorst@linux.intel.com>
 <a6c4e18e-7ba3-8ce7-caaf-78b3946441e6@shipmail.org>
 <159298460349.26399.12393580334647962128@build.alporthouse.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <05d07ef7-819a-95d1-7881-b1840a38516b@shipmail.org>
Date: Wed, 24 Jun 2020 09:49:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <159298460349.26399.12393580334647962128@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 04/26] drm/i915: Add an implementation for
 i915_gem_ww_ctx locking, v2.
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

SGksIENocmlzLAoKT24gNi8yNC8yMCA5OjQzIEFNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gUXVv
dGluZyBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpICgyMDIwLTA2LTI0IDA4OjEwOjQzKQo+PiBI
aSwgTWFhcnRlbiwKPj4KPj4KPj4gT24gNi8yMy8yMCA0OjI4IFBNLCBNYWFydGVuIExhbmtob3Jz
dCB3cm90ZToKPj4+IGk5MTVfZ2VtX3d3X2N0eCBpcyB1c2VkIHRvIGxvY2sgYWxsIGdlbSBibydz
IGZvciBwaW5uaW5nIGFuZCBtZW1vcnkKPj4+IGV2aWN0aW9uLiBXZSBkb24ndCB1c2UgaXQgeWV0
LCBidXQgbGV0cyBzdGFydCBhZGRpbmcgdGhlIGRlZmluaXRpb24KPj4+IGZpcnN0Lgo+Pj4KPj4+
IFRvIHVzZSBpdCwgd2UgaGF2ZSB0byBwYXNzIGEgbm9uLU5VTEwgd3cgdG8gZ2VtX29iamVjdF9s
b2NrLCBhbmQgZG9uJ3QKPj4+IHVubG9jayBkaXJlY3RseS4gSXQgaXMgZG9uZSBpbiBpOTE1X2dl
bV93d19jdHhfZmluaS4KPj4+Cj4+PiBDaGFuZ2VzIHNpbmNlIHYxOgo+Pj4gLSBDaGFuZ2Ugd3df
Y3R4IGFuZCBvYmogb3JkZXIgaW4gbG9ja2luZyBmdW5jdGlvbnMgKEpvbmFzIExhaHRpbmVuKQo+
Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3Jz
dEBsaW51eC5pbnRlbC5jb20+Cj4+PiAtLS0KPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICA0ICstCj4+PiAgICAuLi4vZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9jbGllbnRfYmx0LmMgICAgfCAgMiArLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyAgIHwgIDIgKy0KPj4+ICAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYyAgICB8ICA0ICstCj4+PiAgICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMgICAgfCAxMCArKy0tCj4+PiAgICAu
Li4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgICAgfCAgNCArLQo+Pj4g
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jICAgIHwgIDIgKy0K
Pj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaCAgICB8IDM4
ICsrKysrKysrKysrLS0tCj4+PiAgICAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmpl
Y3RfdHlwZXMuaCAgfCAgOSArKysrCj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fcG0uYyAgICAgICAgfCAgMiArLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX3RpbGluZy5jICAgIHwgIDIgKy0KPj4+ICAgIC4uLi9ncHUvZHJtL2k5MTUvZ2Vt
L3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMgICB8ICAyICstCj4+PiAgICAuLi4vaTkxNS9nZW0vc2Vs
ZnRlc3RzL2k5MTVfZ2VtX2NsaWVudF9ibHQuYyAgfCAgMiArLQo+Pj4gICAgLi4uL2k5MTUvZ2Vt
L3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb2hlcmVuY3kuYyAgIHwgMTAgKystLQo+Pj4gICAgLi4uL2Ry
bS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jIHwgIDQgKy0KPj4+ICAgIC4u
Li9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYyAgICB8ICA0ICstCj4+PiAg
ICAuLi4vZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9waHlzLmMgICAgfCAgMiArLQo+
Pj4gICAgLi4uL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jICAgIHwgIDIg
Ky0KPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9jbWRfcGFyc2VyLmMgICAgICAgICB8
ICAyICstCj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAgICAgICAgICAg
ICAgfCA1MiArKysrKysrKysrKysrKysrKy0tCj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbS5oICAgICAgICAgICAgICAgfCAxMSArKysrCj4+PiAgICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9zZWxmdGVzdHMvaTkxNV9nZW0uYyAgICAgfCA0MSArKysrKysrKysrKysrKysKPj4+ICAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3ZtYS5jICAgICB8ICAyICstCj4+
PiAgICAuLi4vZHJtL2k5MTUvc2VsZnRlc3RzL2ludGVsX21lbW9yeV9yZWdpb24uYyAgfCAgMiAr
LQo+Pj4gICAgMjQgZmlsZXMgY2hhbmdlZCwgMTczIGluc2VydGlvbnMoKyksIDQyIGRlbGV0aW9u
cygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0X3R5cGVzLmgKPj4+IGluZGV4IGIxZjgyYTExYWVmMi4uMzc0MGMwMDgwZTM4IDEwMDY0NAo+
Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5o
Cj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVz
LmgKPj4+IEBAIC0xMjIsNiArMTIyLDE1IEBAIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0IHsK
Pj4+ICAgICAgICAgKi8KPj4+ICAgICAgICBzdHJ1Y3QgbGlzdF9oZWFkIGx1dF9saXN0Owo+Pj4g
ICAgCj4+PiArICAgICAvKioKPj4+ICsgICAgICAqIEBvYmpfbGluazogTGluayBpbnRvIEBpOTE1
X2dlbV93d19jdHgub2JqX2xpc3QKPj4+ICsgICAgICAqCj4+PiArICAgICAgKiBXaGVuIHdlIGxv
Y2sgdGhpcyBvYmplY3QgdGhyb3VnaCBpOTE1X2dlbV9vYmplY3RfbG9jaygpIHdpdGggYQo+Pj4g
KyAgICAgICogY29udGV4dCwgd2UgYWRkIGl0IHRvIHRoZSBsaXN0IHRvIGVuc3VyZSB3ZSBjYW4g
dW5sb2NrIGV2ZXJ5dGhpbmcKPj4+ICsgICAgICAqIHdoZW4gaTkxNV9nZW1fd3dfY3R4X2JhY2tv
ZmYoKSBvciBpOTE1X2dlbV93d19jdHhfZmluaSgpIGFyZSBjYWxsZWQuCj4+PiArICAgICAgKi8K
Pj4+ICsgICAgIHN0cnVjdCBsaXN0X2hlYWQgb2JqX2xpbms7Cj4+PiArCj4+IFNpbmNlIHdlIGRv
bid0IHJlZmNvdW50IG9iamVjdHMgb24gdGhlIGxpc3QsIChhbmQgd2Ugc2hvdWxkbid0IG5lZWQg
dG8pLAo+PiBwZXJoYXBzIGEgZGVidWcgd2FybmluZyBpZiBkdXJpbmcgb2JqZWN0IGRlc3RydWN0
aW9uLCB0aGlzIGlzbid0IGFuCj4+IGVtcHR5IGxpc3QgaGVhZD8KPj4KPj4gT3RoZXIgdGhhbiB0
aGF0LCB0aGlzIHBhdGNoIGxvb2tzIGdvb2QgdG8gbWUuCj4gQXNpZGUgaXQgZnJvbSBiZWluZyBp
biB0aGUgd3JvbmcgbGF5ZXIsIGFzIHdhcyBhbHNvIG1lbnRpb25lZCBzZXZlcmFsCj4gbW9udGhz
IGFnby4KPiAtQ2hyaXMKCkNvdWxkIHlvdSBzZW5kIGEgcG9pbnRlciwgb3IgcGVyaGFwcyBlbGFi
b3JhdGUgYSBiaXQ/CgovVGhvbWFzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
