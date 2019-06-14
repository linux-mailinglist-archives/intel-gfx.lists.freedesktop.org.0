Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1D446473
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 18:38:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF38B89A5E;
	Fri, 14 Jun 2019 16:38:50 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 712C989A5E
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 16:38:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 09:38:48 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by orsmga003.jf.intel.com with ESMTP; 14 Jun 2019 09:38:46 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
 <20190614151731.17608-26-tvrtko.ursulin@linux.intel.com>
 <156052993763.7796.3552935312189324070@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c1071c84-822b-f921-fa7a-f8c15a5fee8e@linux.intel.com>
Date: Fri, 14 Jun 2019 17:38:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156052993763.7796.3552935312189324070@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 25/31] drm/i915: Compartmentalize
 i915_gem_init_ggtt
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

Ck9uIDE0LzA2LzIwMTkgMTc6MzIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTE0IDE2OjE3OjI1KQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBDb250aW51aW5nIG9uIHRoZSB0aGVtZSBv
ZiBiZXR0ZXIgbG9naWNhbCBvcmdhbml6YXRpb24gb2Ygb3VyIGNvZGUsIG1ha2UKPj4gdGhlIGZp
cnN0IHN0ZXAgdG93YXJkcyBtYWtpbmcgdGhlIGdndHQgY29kZSBiZXR0ZXIgaXNvbGF0ZWQgZnJv
bSB3aWRlcgo+PiBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZS4KPj4KPj4gdjI6Cj4+ICAgKiBCcmlu
ZyB0aGUgaWNrbGUgb25pb24gdW53aW5kIGJhY2suIChDaHJpcykKPj4gICAqIFJlbmFtZSB0byBp
OTE1X2luaXRfZ2d0dC4gKENocmlzKQo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxp
biA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEJ1dCBub3QgcGFzc2luZyBndD8gT3Ig
aXMgdGhhdCBzdGlsbCB3YWl0aW5nIG9uIG1vdmluZyBnZ3R0IGFuZAo+IGFsaWFzaW5nX3BwZ3R0
PwoKWWVzLCBpbml0X2FsaWFzaW5nX3BwZ3R0IHN0b3JlcyB0byBpOTE1LT5tbS5hbGlhc2luZ19w
cGd0dC4gQnV0IGF0IGxlYXN0IAp0aGlzIGV4dHJhY3RzIG91dCBpbml0X2dndHQgd2hpY2ggb3Bl
cmF0ZXMgb24gZ2d0dCBvbmx5LgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
