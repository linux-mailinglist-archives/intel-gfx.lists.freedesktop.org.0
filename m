Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2121140BD
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 13:20:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 109896E0F0;
	Thu,  5 Dec 2019 12:20:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C318D6E0F0
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 12:20:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19470163-1500050 for multiple; Thu, 05 Dec 2019 12:20:14 +0000
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>,
 Ramalingam C <ramalingam.c@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHMP37vD_sz8HMiA7T2A_J08vD4VmvkC-L7WcyBoxTsCaA@mail.gmail.com>
References: <20191202065458.9477-1-ramalingam.c@intel.com>
 <20191202065458.9477-2-ramalingam.c@intel.com>
 <CAM0jSHMP37vD_sz8HMiA7T2A_J08vD4VmvkC-L7WcyBoxTsCaA@mail.gmail.com>
Message-ID: <157554841226.22727.12524170364084626029@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 05 Dec 2019 12:20:12 +0000
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915: Create dumb buffer from
 LMEM
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTItMDUgMTI6MTI6MTkpCj4gT24gTW9uLCAyIERl
YyAyMDE5IGF0IDA2OjU1LCBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+IHdy
b3RlOgo+ID4KPiA+IFdoZW4gTE1FTSBpcyBzdXBwb3J0ZWQsIGR1bWIgYnVmZmVyIHByZWZlcnJl
ZCB0byBiZSBjcmVhdGVkIGZyb20gTE1FTS4KPiA+Cj4gPiB2MjoKPiA+ICAgUGFyYW1ldGVycyBh
cmUgcmVzaHVmZmxlZC4gW0NocmlzXQo+ID4gdjM6Cj4gPiAgIHMvcmVnaW9uX2lkL21lbV90eXBl
Cj4gPiB2NDoKPiA+ICAgdXNlIHRoZSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3JlZ2lvbiBbY2hy
aXNdCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50
ZWwuY29tPgo+ID4gY2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiA+
IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgfCAxNCArKysrKysrKysr
Ky0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygt
KQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+ID4gaW5kZXggNjEzOTViMDM0NDNlLi4z
NGU0ODBjODI5M2UgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCj4gPiBAQCAtNDQs
NiArNDQsNyBAQAo+ID4gICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fY2xmbHVzaC5oIgo+ID4gICNp
bmNsdWRlICJnZW0vaTkxNV9nZW1fY29udGV4dC5oIgo+ID4gICNpbmNsdWRlICJnZW0vaTkxNV9n
ZW1faW9jdGxzLmgiCj4gPiArI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9yZWdpb24uaCIKPiA+ICAj
aW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX3BtLmgiCj4gPiAgI2luY2x1ZGUgImd0L2ludGVsX2NvbnRl
eHQuaCIKPiA+ICAjaW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5lX3VzZXIuaCIKPiA+IEBAIC0xNzYs
NiArMTc3LDcgQEAgaTkxNV9nZW1fcGh5c19wd3JpdGUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iaiwKPiA+ICBzdGF0aWMgaW50Cj4gPiAgaTkxNV9nZW1fY3JlYXRlKHN0cnVjdCBkcm1f
ZmlsZSAqZmlsZSwKPiA+ICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsCj4gPiArICAgICAgICAgICAgICAgZW51bSBpbnRlbF9tZW1vcnlfdHlwZSBtZW1f
dHlwZSwKPiA+ICAgICAgICAgICAgICAgICB1NjQgKnNpemVfcCwKPiA+ICAgICAgICAgICAgICAg
ICB1MzIgKmhhbmRsZV9wKQo+ID4gIHsKPiA+IEBAIC0xODksNyArMTkxLDggQEAgaTkxNV9nZW1f
Y3JlYXRlKHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwKPiA+ICAgICAgICAgICAgICAgICByZXR1cm4g
LUVJTlZBTDsKPiA+Cj4gPiAgICAgICAgIC8qIEFsbG9jYXRlIHRoZSBuZXcgb2JqZWN0ICovCj4g
PiAtICAgICAgIG9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0oZGV2X3ByaXYsIHNp
emUpOwo+ID4gKyAgICAgICBvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3JlZ2lvbihpbnRl
bF9tZW1vcnlfcmVnaW9uX2xvb2t1cChkZXZfcHJpdiwKPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgbWVtX3R5cGUpLCBzaXplLCAwKTsKPiAKPiBSZXZpZXdl
ZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IAo+IEJ1dCBob3cg
c2hvdWxkIHdlIGdvIGFib3V0IHRlc3RpbmcgdGhpcz8KPiAKPiBXZSB3b3VsZCBzdGlsbCBuZWVk
IHRvIGNsZWFyIHRoZSBvYmplY3QobWF5YmUgSTkxNV9CT19BTExPQ19DTEVBUkVEPykKPiBpbiBv
cmRlciB0byBwYXNzIHRoZSBJR1RzLiBXZSBhbHNvIG5lZWQgdG8gYWRqdXN0IGR1bWJfYnVmZmVy
LmMsIHNpbmNlCj4gdGhhdCB1c2VzIGdldF9hdmFpbF9yYW1fbWIoKSBmb3IgYWx3YXlzX2NsZWFy
LCBidXQgbWF5YmUgd2UgbmVlZCB0aGUKPiBxdWVyeSByZWdpb24gdWFwaSBmb3IgdGhhdD8KCkht
bS4gUXVlc3Rpb25zIG92ZXIgdGhlIG1heGltdW0gc2l6ZSBmb3IgZHVtYiBidWZmZXIsIG1heGlt
dW0gbnVtYmVyIG9mCmR1bWIgYnVmZmVycywgZXRjLCBzaG91bGQgYmUgYWRkcmVzc2VkIHRvIHRo
ZSBkdW1iIEFQSS4gU28gc29tZSBmb3JtIG9mCmRybUdldENhcCgpID8KCk5vdGUgZm9yIG1lcmdp
bmcsIHdlIG5lZWQgdGhlIGxtZW0gdm1fZmF1bHQgaW1wbGVtZW50YXRpb24gZmlyc3QuCi1DaHJp
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
