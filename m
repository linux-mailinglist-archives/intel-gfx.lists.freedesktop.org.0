Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 091DA58505
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 17:00:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D5556E4F5;
	Thu, 27 Jun 2019 15:00:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CDEC6E03D
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 15:00:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 08:00:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,424,1557212400"; d="scan'208";a="156265337"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga008.jf.intel.com with ESMTP; 27 Jun 2019 08:00:23 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id E4BE15C1EBD; Thu, 27 Jun 2019 18:00:21 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156164720964.18552.13645135786549877106@skylake-alporthouse-com>
References: <20190627144438.32458-1-mika.kuoppala@linux.intel.com>
 <156164720964.18552.13645135786549877106@skylake-alporthouse-com>
Date: Thu, 27 Jun 2019 18:00:21 +0300
Message-ID: <87h88b3wfu.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Fix memleak in runtime
 wakeref tracking
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
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTI3IDE1OjQ0OjM4KQo+PiBJZiB3ZSB1bnRyYWNrIHdh
a2VyZWZzLCB0aGUgYWN0dWFsIGNvdW50IG1heSByZWFjaCB6ZXJvLgo+PiBIb3dldmVyIHRoZSBr
cmVhbGxvY2VkIG93bmVycyBhcnJheSBpcyBzdGlsbCB0aGVyZSBhbmQKPj4gbmVlZHMgdG8gYmUg
dGFrZW4gY2FyZSBvZi4gRnJlZSB0aGUgb3duZXJzIHVuY29uZGl0aW9uYWxseQo+PiB0byBmaXgg
dGhlIGxlYWsuCj4KPiBUaGF0IGlzIHRydWUuCj4KPj4gRml4ZXM6IGRiZjk5YzFmOGM3ZSAoImRy
bS9pOTE1OiBGb3JjZSBwcmludGluZyB3YWtlcmVmIHRhY2tpbmcgZHVyaW5nIHBtX2NsZWFudXAi
KQo+Cj4gSG93ZXZlciwgdGhlIGJ1ZyBpcyBtaW5lCj4gRml4ZXM6IGJkNzgwZjM3YTM2MSAoImRy
bS9pOTE1OiBUcmFjayBhbGwgaGVsZCBycG0gd2FrZXJlZnMiKQoKSW5kZWVkLiBBcG9sb2dpZXMg
SW1yZSEKCkkgcGVyc29uYWxseSBrbm93IHRoZSByZXZpZXdlciBvZiB0aGUgb3JpZ2luYWwgcGF0
Y2gKYW5kIHdpbGwgaGF2ZSBhIGRpc2N1c3Npb24uCi1NaWthCgo+Cj4+IFJlcG9ydGVkLWJ5OiBK
dWhhLVBla2thIEhlaWtraWxhIDxqdWhhcGVra2EuaGVpa2tpbGFAZ21haWwuY29tPgo+PiBDYzog
SnVoYS1QZWtrYSBIZWlra2lsYSA8anVoYXBla2thLmhlaWtraWxhQGdtYWlsLmNvbT4KPj4gQ2M6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+PiBDYzogSW1yZSBEZWFr
IDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxt
aWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
