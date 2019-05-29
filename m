Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 772582DF80
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 16:20:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 240206E32B;
	Wed, 29 May 2019 14:20:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66E406E32C
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 14:20:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 07:20:07 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 29 May 2019 07:20:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <87d0k1oed8.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190528200655.11605-1-chris@chris-wilson.co.uk>
 <87d0k1oed8.fsf@intel.com>
Date: Wed, 29 May 2019 17:23:20 +0300
Message-ID: <87zhn549wn.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix off-by-one in looking up icl
 sseu slice
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

T24gV2VkLCAyOSBNYXkgMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVs
LmNvbT4gd3JvdGU6Cj4gT24gVHVlLCAyOCBNYXkgMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+IHdyb3RlOgo+PiBXZSB3YW50IHRoZSBpbmRleCBjb3JyZXNwb25k
aW5nIHRvIHRoZSBzZXQgYml0IGJ1dCBmbHMoKSByZXR1cm5zIHRoZQo+PiAxLWluZGV4IHZhbHVl
Lgo+Pgo+PiBPdGhlcndpc2UsIHdlIHRyaWdnZXIgdGhlIHNhbml0eWNoZWNrCj4+IAlpbnRlbF9z
c2V1X2dldF9zdWJzbGljZXM6NDYgR0VNX0JVR19PTihzbGljZSA+PSBzc2V1LT5tYXhfc2xpY2Vz
KQo+PiB3aGVuIHdlIGxvb2sgdXAgdGhlIGludmFsaWQgc2xpY2UuCj4+Cj4+IFRoZSBvbmx5IHJl
bWFpbmluZyBxdWVzdGlvbiB0aGVuIGlzIGp1c3QgaG93IHJlbGlhYmxlIHRoZSByZXN0IG9mCj4+
IGludGVsX2NhbGN1bGF0ZV9tY3Jfc19zc19zZWxlY3QoKSBpcyAtLSBob3cgbWFueSBtb3JlIG9m
IHRob3NlIGZscygpIGFyZQo+PiBhbHNvIG9mZi1ieS1vbmUuCj4+Cj4+IEZpeGVzOiAxYWMxNTll
MjNjMmMgKCJkcm0vaTkxNTogRXhwYW5kIHN1YnNsaWNlIG1hc2siKQo+Cj4gSSBzZW50IGEgcmV2
ZXJ0IG9mIHRoaXMgY29tbWl0IFsxXSBmb3IgcmVhc29ucyBleHBsYWluZWQgaW4gdGhlIGNvbW1p
dAo+IG1lc3NhZ2UuCgpJJ3ZlIGdvbmUgYWhlYWQgYW5kIHB1c2hlZCB0aGUgcmV2ZXJ0LgoKV2Ug
Y2FuIG5vdyBjYWxtbHkgZ2V0IGJhY2sgdG8gdGhlIGRyYXdpbmcgYm9hcmQsIGFuZCBnZXQgdGhp
cyBzb3J0ZWQKb3V0LgoKQlIsCkphbmkuCgoKPgo+IEJSLAo+IEphbmkuCj4KPgo+IFsxXSBodHRw
Oi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDE5MDUyOTA4MjE1MC4z
MTUyNi0xLWphbmkubmlrdWxhQGludGVsLmNvbQo+Cj4KPj4gRml4ZXM6IDFlNDBkNGFlYTU3YiAo
ImRybS9pOTE1L2NubDogSW1wbGVtZW50IFdhUHJvZ3JhbU1nc3JGb3JDb3JyZWN0U2xpY2VTcGVj
aWZpY01taW9SZWFkcyIpCj4+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgo+PiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5j
ZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPj4gQ2M6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwu
Zy5sYW5kd2VybGluQGludGVsLmNvbT4KPj4gQ2M6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3Vt
bWVyc0BpbnRlbC5jb20+Cj4+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50
ZWwuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91
bmRzLmMgfCAyICstCj4+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dv
cmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
Cj4+IGluZGV4IGZiYzg1MzA4NTgwOS4uNDg1Y2QxYzhlY2M0IDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPj4gQEAgLTc4MSw3ICs3ODEsNyBA
QCB3YV9pbml0X21jcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGk5MTVf
d2FfbGlzdCAqd2FsKQo+PiAgCQkgKiByZWFkIEZVU0UzIGZvciBlbmFibGVkIEwzIEJhbmsgSURz
LCBpZiBMMyBCYW5rIG1hdGNoZXMKPj4gIAkJICogZW5hYmxlZCBzdWJzbGljZSwgbm8gbmVlZCB0
byByZWRpcmVjdCBNQ1IgcGFja2V0Cj4+ICAJCSAqLwo+PiAtCQl1MzIgc2xpY2UgPSBmbHMoc3Nl
dS0+c2xpY2VfbWFzayk7Cj4+ICsJCXUzMiBzbGljZSA9IF9fZmxzKHNzZXUtPnNsaWNlX21hc2sp
Owo+PiAgCQl1MzIgZnVzZTMgPQo+PiAgCQkJaW50ZWxfdW5jb3JlX3JlYWQoJmk5MTUtPnVuY29y
ZSwgR0VOMTBfTUlSUk9SX0ZVU0UzKTsKPj4gIAkJdTMyIHNzX21hc2sgPSBpbnRlbF9zc2V1X2dl
dF9zdWJzbGljZXMoc3NldSwgc2xpY2UpOwoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNv
dXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
