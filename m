Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC67FAECB
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 11:47:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C5136ECCB;
	Wed, 13 Nov 2019 10:47:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15FE089BBD
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 10:47:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 02:47:26 -0800
X-IronPort-AV: E=Sophos;i="5.68,300,1569308400"; d="scan'208";a="198405914"
Received: from mpotanix-mobl2.ccr.corp.intel.com (HELO [10.252.20.183])
 ([10.252.20.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 13 Nov 2019 02:47:25 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191108142250.22709-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <80b86e53-f059-7975-55d9-c4d1316fae33@linux.intel.com>
Date: Wed, 13 Nov 2019 10:47:23 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191108142250.22709-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/3] i915/gem_exec_fence: KMS master
 is not required
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA4LzExLzIwMTkgMTQ6MjIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXaXRoaW4gdGhpcyBz
ZXQgb2YgZmVuY2UgZXhlY3V0aW9uIHRlc3RzLCB3ZSBuZXZlciBvbmNlIHRyeSB0byBtb2Rlc2V0
Owo+IGJlaW5nIEtNUyBtYXN0ZXIgaXMgbm90IHJlcXVpcmVkLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICAgdGVzdHMv
aTkxNS9nZW1fZXhlY19mZW5jZS5jIHwgMiArLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2V4
ZWNfZmVuY2UuYyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfZmVuY2UuYwo+IGluZGV4IDM2NTdjNGIy
Ny4uZDJkMjZhMjhiIDEwMDY0NAo+IC0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfZmVuY2UuYwo+
ICsrKyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfZmVuY2UuYwo+IEBAIC0xNTEzLDcgKzE1MTMsNyBA
QCBpZ3RfbWFpbgo+ICAgCWludCBpOTE1ID0gLTE7Cj4gICAKPiAgIAlpZ3RfZml4dHVyZSB7Cj4g
LQkJaTkxNSA9IGRybV9vcGVuX2RyaXZlcl9tYXN0ZXIoRFJJVkVSX0lOVEVMKTsKPiArCQlpOTE1
ID0gZHJtX29wZW5fZHJpdmVyKERSSVZFUl9JTlRFTCk7Cj4gICAJCWlndF9yZXF1aXJlX2dlbShp
OTE1KTsKPiAgIAkJaWd0X3JlcXVpcmUoZ2VtX2hhc19leGVjX2ZlbmNlKGk5MTUpKTsKPiAgIAkJ
Z2VtX3JlcXVpcmVfbW1hcF93YyhpOTE1KTsKPiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxp
biA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
