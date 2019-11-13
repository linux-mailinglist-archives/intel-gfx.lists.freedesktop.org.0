Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E70FBB6A
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 23:13:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 495846E072;
	Wed, 13 Nov 2019 22:13:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15FD36E072
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 22:12:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19193429-1500050 for multiple; Wed, 13 Nov 2019 22:12:56 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191113191840.23620-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20191113191840.23620-1-radhakrishna.sripada@intel.com>
Message-ID: <157368317503.25132.18120825827050472904@skylake-alporthouse-com>
Date: Wed, 13 Nov 2019 22:12:55 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Wa_1606679103
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

UXVvdGluZyBSYWRoYWtyaXNobmEgU3JpcGFkYSAoMjAxOS0xMS0xMyAxOToxODozOSkKPiBFeHRl
bmQgZGlzYWJsaW5nIFNBTVBMRVJfU1RBVEUgcHJlZmV0Y2ggd29ya2Fyb3VuZCB0byBnZW4xMi4K
PiAKPiBCU3BlYzogNTI4OTAKPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51
eC5pbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhh
a3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDEyICsrKysrKystLS0tLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgNyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+IGluZGV4IGU0YmNjYzE0NjAyZi4uNjgxOGQ2
YjNjYzkwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmth
cm91bmRzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jCj4gQEAgLTEzNzAsMTEgKzEzNzAsNiBAQCByY3NfZW5naW5lX3dhX2luaXQoc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgR0VON19TQVJDSEtNRCwKPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBHRU43X0RJU0FCTEVfREVNQU5EX1BSRUZFVENIKTsK
PiAgCj4gLSAgICAgICAgICAgICAgIC8qIFdhXzE2MDY2ODIxNjY6aWNsICovCj4gLSAgICAgICAg
ICAgICAgIHdhX3dyaXRlX29yKHdhbCwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgR0VO
N19TQVJDSEtNRCwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgR0VON19ESVNBQkxFX1NB
TVBMRVJfUFJFRkVUQ0gpOwo+IC0KPiAgICAgICAgICAgICAgICAgLyogV2FfMTQwOTE3ODA5Mjpp
Y2wgKi8KPiAgICAgICAgICAgICAgICAgd2Ffd3JpdGVfbWFza2VkX29yKHdhbCwKPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIEdFTjExX1NDUkFUQ0gyLAo+IEBAIC0xMzgyLDYg
KzEzNzcsMTMgQEAgcmNzX2VuZ2luZV93YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgMCk7Cj4gICAgICAgICB9Cj4gIAo+ICsgICAgICAgaWYgKElTX0dFTl9SQU5H
RShpOTE1LCAxMSwgMTIpKSB7Cj4gKyAgICAgICAgICAgICAgIC8qIFdhXzE2MDY2ODIxNjY6aWNs
LHRnbCAqLwoKV2FfMTYwNjY3OTEwMzp0Z2wKCmFzIHRoZXkgaW5zaXN0IG9uIGdpdmluZyBpdCBh
IG5ldyBpZC4KCkJ1dCB0aGlzIGlzIGV4cGxpY2l0bHkgQTAgb25seSwgc28gSVNfVEdMX1JFVklE
KEEwLCBBMCkuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
