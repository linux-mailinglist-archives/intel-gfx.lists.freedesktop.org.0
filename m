Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E35E1A7AD6
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 14:32:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E8DD89B7D;
	Tue, 14 Apr 2020 12:32:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DB1C89B7D
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 12:32:28 +0000 (UTC)
IronPort-SDR: TPeRK5DMWDjfmNae2OjrF/elr2CFQntv6JmlAojub56delkS4gMSUrIKBCSgHMfdnceOWQAQfd
 U1R2OqUgkjNA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 05:32:27 -0700
IronPort-SDR: /LVEc3C+k+tDp1M0UAfDgof38ENssiTBpCzKcK1x7pq5thuH0TE97l89WAMb7opiJDiep9peOl
 eW7Nry9ZxDYA==
X-IronPort-AV: E=Sophos;i="5.72,382,1580803200"; d="scan'208";a="427046472"
Received: from mdoerbec-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.38.76])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 05:32:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Souza\, Jose" <jose.souza@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris\@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
In-Reply-To: <02af48873c1c1b4f5331215f5ed6ae61170cbf5c.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200410144328.15286-1-chris@chris-wilson.co.uk>
 <02af48873c1c1b4f5331215f5ed6ae61170cbf5c.camel@intel.com>
Date: Tue, 14 Apr 2020 15:32:22 +0300
Message-ID: <87a73emend.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Flush async power domains on
 probe failure
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

T24gRnJpLCAxMCBBcHIgMjAyMCwgIlNvdXphLCBKb3NlIiA8am9zZS5zb3V6YUBpbnRlbC5jb20+
IHdyb3RlOgo+IE9uIEZyaSwgMjAyMC0wNC0xMCBhdCAxNTo0MyArMDEwMCwgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+PiBGbHVzaCB0aGUgYXN5bmMgcG93ZXIgZG9tYWluIHdvcmsgYWZ0ZXIgYWJvcnRp
bmcgdGhlIG1vZHVsZSBwcm9iZToKPj4gCj4+IDwzPiBbMzA3Ljc4NTU1Ml0gT0RFQlVHOiBmcmVl
IGFjdGl2ZSAoYWN0aXZlIHN0YXRlIDApIG9iamVjdCB0eXBlOgo+PiB0aW1lcl9saXN0IGhpbnQ6
IGludGVsX2Rpc3BsYXlfcG93ZXJfcHV0X2FzeW5jX3dvcmsrMHgwLzB4ZjAgW2k5MTVdCj4+IAo+
PiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1
ZXMvMTY0Nwo+PiBGaXhlczogYjY2NDI1OWYzZmUyICgiZHJtL2k5MTU6IHNwbGl0IGk5MTVfZHJp
dmVyX21vZGVzZXRfcHJvYmUoKSB0bwo+PiBwcmUvcG9zdCBpcnEgaW5zdGFsbCIpCj4+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+PiBDYzog
SmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4gQ2M6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4+IENjOiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
YyB8IDEgKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4+IAo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+PiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmMKPj4gaW5kZXggYTdhM2I0Yjk4NTcyLi4xM2MxY2UyNDQwOTIgMTAw
NjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+PiBAQCAtOTk2LDYgKzk5Niw3IEBAIGludCBp
OTE1X2RyaXZlcl9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgY29uc3QKPj4gc3RydWN0IHBj
aV9kZXZpY2VfaWQgKmVudCkKPj4gIG91dF9jbGVhbnVwX21vZGVzZXQ6Cj4+ICAJLyogRklYTUUg
Ki8KPj4gIG91dF9jbGVhbnVwX2h3Ogo+PiArCWludGVsX3Bvd2VyX2RvbWFpbnNfZHJpdmVyX3Jl
bW92ZShpOTE1KTsKPgo+IElmIHRoZSBmYWlsdXJlIGhhcHBlbmVkIGluIHRoZSBmaXJzdCB0d28g
cmV0dXJucyBvZgo+IGk5MTVfZHJpdmVyX21vZGVzZXRfcHJvYmVfbm9pcnEoKSBubyBjYWxsIHRv
Cj4gaW50ZWxfcG93ZXJfZG9tYWluc19pbml0X2h3KCkgd291bGQgYmUgbWFkZS4KPgo+IEknbSBh
bHNvIHdvcmtpbmcgb24gdGhpcywgd2lsbCBzZW5kIHRvIE1MIGFmdGVyIGEgcm91bmQgb24gdHJ5
Ym90Ogo+IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC8zNjEwNTMvP3Nl
cmllcz03NTgxNiZyZXY9MQoKQWxzbyBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcv
c2VyaWVzLzc0MDIxLwoKQlIsCkphbmkuCgoKPgo+PiAgCWk5MTVfZHJpdmVyX2h3X3JlbW92ZShp
OTE1KTsKPj4gIAlpbnRlbF9tZW1vcnlfcmVnaW9uc19kcml2ZXJfcmVsZWFzZShpOTE1KTsKPj4g
IAlpOTE1X2dndHRfZHJpdmVyX3JlbGVhc2UoaTkxNSk7CgotLSAKSmFuaSBOaWt1bGEsIEludGVs
IE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
