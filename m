Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAD96347F
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 12:46:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76C8D89D84;
	Tue,  9 Jul 2019 10:45:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33B1C89D84
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 10:45:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 03:45:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="170558993"
Received: from unknown (HELO [10.252.37.9]) ([10.252.37.9])
 by orsmga006.jf.intel.com with ESMTP; 09 Jul 2019 03:45:51 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190709093208.20470-1-lionel.g.landwerlin@intel.com>
 <20190709093208.20470-11-lionel.g.landwerlin@intel.com>
 <156266644341.9375.1105653276634114123@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <92b3616f-7c5c-11a5-f73e-098dbc85241e@intel.com>
Date: Tue, 9 Jul 2019 13:45:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156266644341.9375.1105653276634114123@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v7 10/12] drm/i915/perf: allow holding
 preemption on filtered ctx
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

T24gMDkvMDcvMjAxOSAxMzowMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDctMDkgMTA6MzI6MDYpCj4+IFdlIHdvdWxkIGxpa2UgdG8gbWFr
ZSB1c2Ugb2YgcGVyZiBpbiBWdWxrYW4uIFRoZSBWdWxrYW4gQVBJIGlzIG11Y2gKPj4gbG93ZXIg
bGV2ZWwgdGhhbiBPcGVuR0wsIHdpdGggYXBwbGljYXRpb25zIGRpcmVjdGx5IGV4cG9zZWQgdG8g
dGhlCj4+IGNvbmNlcHQgb2YgY29tbWFuZCBidWZmZXJzIChwcmV0dHkgbXVjaCBlcXVpdmFsZW50
IHRvIG91ciBiYXRjaAo+PiBidWZmZXJzKS4gSW4gVnVsa2FuLCBxdWVyaWVzIGFyZSBhbHdheXMg
bGltaXRlZCBpbiBzY29wZSB0byBhIGNvbW1hbmQKPj4gYnVmZmVyLiBJbiBPcGVuR0wsIHRoZSBs
YWNrIG9mIGNvbW1hbmQgYnVmZmVyIGNvbmNlcHQgbWVhbnQgdGhhdAo+PiBxdWVyaWVzJyBkdXJh
dGlvbiBjb3VsZCBzcGFuIG11bHRpcGxlIGNvbW1hbmQgYnVmZmVycy4KPj4KPj4gV2l0aCB0aGF0
IHJlc3RyaWN0aW9uIGdvbmUgaW4gVnVsa2FuLCB3ZSB3b3VsZCBsaWtlIHRvIHNpbXBsaWZ5Cj4+
IG1lYXN1cmluZyBwZXJmb3JtYW5jZSBqdXN0IGJ5IG1lYXN1cmluZyB0aGUgZGVsdGFzIGJldHdl
ZW4gdGhlIGNvdW50ZXIKPj4gc25hcHNob3RzIHdyaXR0ZW4gYnkgMiBNSV9SRUNPUkRfUEVSRl9D
T1VOVCBjb21tYW5kcywgcmF0aGVyIHRoYW4gdGhlCj4+IG1vcmUgY29tcGxleCBzY2hlbWUgd2Ug
Y3VycmVudGx5IGhhdmUgaW4gdGhlIEdMIGRyaXZlciwgdXNpbmcgMgo+PiBNSV9SRUNPUkRfUEVS
Rl9DT1VOVCBjb21tYW5kcyBhbmQgZG9pbmcgc29tZSBwb3N0IHByb2Nlc3Npbmcgb24gdGhlCj4+
IHN0cmVhbSBvZiBPQSByZXBvcnRzLCBjb21pbmcgZnJvbSB0aGUgZ2xvYmFsIE9BIGJ1ZmZlciwg
dG8gcmVtb3ZlIGFueQo+PiB1bnJlbGF0ZWQgZGVsdGFzIGluIGJldHdlZW4gdGhlIDIgTUlfUkVD
T1JEX1BFUkZfQ09VTlQuCj4+Cj4+IERpc2FibGluZyBwcmVlbXB0aW9uIG9ubHkgYXBwbHkgdG8g
YSBzaW5nbGUgY29udGV4dCB3aXRoIHdoaWNoIHdhbnQgdG8KPj4gcXVlcnkgcGVyZm9ybWFuY2Ug
Y291bnRlcnMgZm9yIGFuZCBpcyBjb25zaWRlcmVkIGEgcHJpdmlsZWdlZAo+PiBvcGVyYXRpb24s
IGJ5IGRlZmF1bHQgcHJvdGVjdGVkIGJ5IENBUF9TWVNfQURNSU4uIEl0IGlzIHBvc3NpYmxlIHRv
Cj4+IGVuYWJsZSBpdCBmb3IgYSBub3JtYWwgdXNlciBieSBkaXNhYmxpbmcgdGhlIHBhcmFub2lk
IHN0cmVhbSBzZXR0aW5nLgo+Pgo+PiB2MjogU3RvcmUgcHJlZW1wdGlvbiBzZXR0aW5nIGluIGlu
dGVsX2NvbnRleHQgKENocmlzKQo+Pgo+PiB2MzogVXNlIHByaW9yaXRpZXMgdG8gYXZvaWQgcHJl
ZW1wdGlvbiByYXRoZXIgdGhhbiB0aGUgSFcgbWVjaGFuaXNtCj4+Cj4+IHY0OiBKdXN0IG1vZGlm
eSB0aGUgcG9ydCBwcmlvcml0eSByZXBvcnRpbmcgZnVuY3Rpb24KPj4KPj4gU2lnbmVkLW9mZi1i
eTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+PiBS
ZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ291
bGQgeW91IHNwbGl0IHRoaXMgaW50byB0d28gLS0gc2VwYXJhdGUgdGhlIGJhY2tlbmQgbWVjaGFu
aXNtIGZyb20KPiBwZXJmIHNldHRpbmcgdGhlIGZsYWc/IEkgd2FudCB0byBhZGQgYSBzZWxmdGVz
dCBhbmQgYXBwbHkuCj4gLUNocmlzCj4KU3VyZS4KCgotTGlvbmVsCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
