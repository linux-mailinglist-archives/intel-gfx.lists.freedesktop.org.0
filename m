Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A67E3B9621
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 20:27:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DD4C6EB86;
	Thu,  1 Jul 2021 18:27:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp5-g21.free.fr (smtp5-g21.free.fr [212.27.42.5])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F09C06EB86;
 Thu,  1 Jul 2021 18:27:15 +0000 (UTC)
Received: from [192.168.1.190] (unknown [91.155.165.229])
 (Authenticated sender: martin.peres@free.fr)
 by smtp5-g21.free.fr (Postfix) with ESMTPSA id 5189D5FFAE;
 Thu,  1 Jul 2021 20:27:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
 s=smtp-20201208; t=1625164034;
 bh=YGtGS4B9Y6gQBti1Fw+y+26r4dZ92psofhW4HWZuCOA=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=pPZPjCsw1QpbBr4gCJrctM6uuG4+1sgokRWFPqbMLTDmeLdAONJbrfyIqBQiUPghg
 T+sibhElMoi0tTaTZ1SUzuBamdT95J+fmLfwBWam9xo7ALmcuHHK1ZywC54CaqWaW0
 JRfs5jgI9qggWAeBGAxk+wR0vM8yx6fTnqC14J7rHrikOr8Autt+YV/GDhY+OWR/VE
 5NxoB8uIxQcARBDgSZaPYl7kq3mEbYSLVMYS/di9yV9jcFvqpB3DUtZi7Cr7CPinkR
 sG9u/IlOkwiWtjgOs+5UKr7xzUESDhWwl6Y1uX/mVY+Ot2un1ntNExPNQGNtsKAfTF
 7RnihEW/ESt/A==
To: Pekka Paalanen <ppaalanen@gmail.com>,
 John Harrison <john.c.harrison@intel.com>
References: <20210624070516.21893-1-matthew.brost@intel.com>
 <20210624070516.21893-48-matthew.brost@intel.com>
 <88cbe963-7188-f4ae-5acf-01a80bd2fe25@free.fr>
 <05e1d462-57ae-888a-888c-3ad486150821@intel.com>
 <20210701111410.3fc6551e@eldfell>
From: Martin Peres <martin.peres@free.fr>
Message-ID: <050296b9-8958-353a-9f76-699bfbafa1c1@free.fr>
Date: Thu, 1 Jul 2021 21:27:03 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210701111410.3fc6551e@eldfell>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 47/47] drm/i915/guc: Unblock GuC submission
 on Gen11+
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDEvMDcvMjAyMSAxMToxNCwgUGVra2EgUGFhbGFuZW4gd3JvdGU6Cj4gT24gV2VkLCAzMCBK
dW4gMjAyMSAxMTo1ODoyNSAtMDcwMAo+IEpvaG4gSGFycmlzb24gPGpvaG4uYy5oYXJyaXNvbkBp
bnRlbC5jb20+IHdyb3RlOgo+IAo+PiBPbiA2LzMwLzIwMjEgMDE6MjIsIE1hcnRpbiBQZXJlcyB3
cm90ZToKPj4+IE9uIDI0LzA2LzIwMjEgMTA6MDUsIE1hdHRoZXcgQnJvc3Qgd3JvdGU6Cj4+Pj4g
RnJvbTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KPj4+Pgo+Pj4+IFVuYmxvY2sgR3VDIHN1Ym1pc3Npb24gb24gR2VuMTErIHBsYXRmb3Jt
cy4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpk
ZWN6a29AaW50ZWwuY29tPgo+Pj4+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVy
aW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4+Pj4gU2lnbmVkLW9mZi1ieTog
TWF0dGhldyBCcm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5jb20+Cj4+Pj4gLS0tCj4+Pj4gIMKg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5owqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB8wqAgMSArCj4+Pj4gIMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1
Y19zdWJtaXNzaW9uLmMgfMKgIDggKysrKysrKysKPj4+PiAgwqAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uaCB8wqAgMyArLS0KPj4+PiAgwqAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
IDE0ICsrKysrKysrKy0tLS0tCj4+Pj4gIMKgIDQgZmlsZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9u
cygrKSwgNyBkZWxldGlvbnMoLSkKPj4+Pgo+IAo+IC4uLgo+IAo+Pj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCj4+Pj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCj4+Pj4gaW5kZXggN2E2OWMzYzAyN2U5Li42MWJlMGFh
ODE0OTIgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
dWMuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKPj4+
PiBAQCAtMzQsOCArMzQsMTUgQEAgc3RhdGljIHZvaWQgdWNfZXhwYW5kX2RlZmF1bHRfb3B0aW9u
cyhzdHJ1Y3QKPj4+PiBpbnRlbF91YyAqdWMpCj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1
cm47Cj4+Pj4gIMKgwqDCoMKgwqAgfQo+Pj4+ICDCoCAtwqDCoMKgIC8qIERlZmF1bHQ6IGVuYWJs
ZSBIdUMgYXV0aGVudGljYXRpb24gb25seSAqLwo+Pj4+IC3CoMKgwqAgaTkxNS0+cGFyYW1zLmVu
YWJsZV9ndWMgPSBFTkFCTEVfR1VDX0xPQURfSFVDOwo+Pj4+ICvCoMKgwqAgLyogSW50ZXJtZWRp
YXRlIHBsYXRmb3JtcyBhcmUgSHVDIGF1dGhlbnRpY2F0aW9uIG9ubHkgKi8KPj4+PiArwqDCoMKg
IGlmIChJU19ERzEoaTkxNSkgfHwgSVNfQUxERVJMQUtFX1MoaTkxNSkpIHsKPj4+PiArwqDCoMKg
wqDCoMKgwqAgZHJtX2RiZygmaTkxNS0+ZHJtLCAiRGlzYWJsaW5nIEd1QyBvbmx5IGR1ZSB0byBv
bGQKPj4+PiBwbGF0Zm9ybVxuIik7Cj4+Pgo+Pj4gVGhpcyBjb21tZW50IGRvZXMgbm90IHNlZW0g
YWNjdXJhdGUsIGdpdmVuIHRoYXQgREcxIGlzIGJhcmVseSBvdXQsIGFuZAo+Pj4gQURMIGlzIG5v
dCBvdXQgeWV0LiBIb3cgYWJvdXQ6Cj4+Pgo+Pj4gIkRpc2FibGluZyBHdUMgb24gdW50ZXN0ZWQg
cGxhdGZvcm1zIj8KPj4+ICAgCj4+IEp1c3QgYmVjYXVzZSBzb21ldGhpbmcgaXMgbm90IGluIHRo
ZSBzaG9wcyB5ZXQgZG9lcyBub3QgbWVhbiBpdCBpcyBuZXcuCj4+IFRlY2hub2xvZ3kgaXMgYWx3
YXlzIG9ic29sZXRlIGJ5IHRoZSB0aW1lIGl0IGdvZXMgb24gc2FsZS4KPiAKPiBUaGF0IGlzIGEg
dmVyeSBnb29kIHJlYXNvbiB0byBub3QgdXNlIHRlcm1pbm9sb2d5IGxpa2UgIm5ldyIsICJvbGQi
LAo+ICJjdXJyZW50IiwgIm1vZGVybiIgZXRjLiBhdCBhbGwuCj4gCj4gRW5kIHVzZXJzIGxpa2Ug
bWUgZGVmaW5pdGVseSBkbyBub3Qgc2hhcmUgeW91ciBpbnRlcnByZXRhdGlvbiBvZiAib2xkIi4K
ClllcCwgb2xkIGFuZCBuZXcgaXMgcmVsYXRpdmUuIEluIHRoZSBlbmQsIHdoYXQgbWF0dGVycyBp
cyB0aGUgdmFsaWRhdGlvbiAKZWZmb3J0LCB3aGljaCBpcyB3aHkgSSB3YXMgcHJvcG9zaW5nICJ1
bnRlc3RlZCBwbGF0Zm9ybXMiLgoKQWxzbywgcmVtZW1iZXIgdGhhdCB5b3UgYXJlIG5vdCB3cml0
aW5nIHRoZXNlIG1lc3NhZ2VzIGZvciBJbnRlbCAKZW5naW5lZXJzLCBidXQgaW5zdGVhZCBhcmUg
d3JpdGluZyBmb3IgTGludXggKnVzZXJzKi4KCkNoZWVycywKTWFydGluCgo+IAo+IAo+IFRoYW5r
cywKPiBwcQo+IAo+IAo+PiBBbmQgdGhlIGlzc3VlIGlzIG5vdCBhIGxhY2sgb2YgdGVzdGluZywg
aXQgaXMgYSBxdWVzdGlvbiBvZiB3aGV0aGVyIHdlCj4+IGFyZSBhbGxvd2VkIHRvIGNoYW5nZSB0
aGUgZGVmYXVsdCBvbiBzb21ldGhpbmcgdGhhdCBoYXMgYWxyZWFkeSBzdGFydGVkCj4+IGJlaW5n
IHVzZWQgYnkgY3VzdG9tZXJzIG9yIG5vdCAoaW5jbHVkaW5nIHByZS1yZWxlYXNlIGJldGEgY3Vz
dG9tZXJzKS4KPj4gSS5lLiBpdCBpcyBiYXNpY2FsbHkgYSBwb2xpdGljYWwgZGVjaXNpb24gbm90
IGFuIGVuZ2luZWVyaW5nIGRlY2lzaW9uLgo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
