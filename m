Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C803367B51
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 18:51:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B626189BFB;
	Sat, 13 Jul 2019 16:51:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8840789BFB
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 16:51:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jul 2019 09:51:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,487,1557212400"; d="scan'208";a="171830653"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.255.231.197])
 ([10.255.231.197])
 by orsmga006.jf.intel.com with ESMTP; 13 Jul 2019 09:51:02 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org, 
 "Wajdeczko, Michal" <Michal.Wajdeczko@intel.com>
References: <20190713100016.8026-1-chris@chris-wilson.co.uk>
 <20190713100016.8026-3-chris@chris-wilson.co.uk>
 <156301317852.9436.7496367591184040413@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <82dacd5f-1da6-e174-5d4c-78fe049efd92@intel.com>
Date: Sat, 13 Jul 2019 09:51:02 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156301317852.9436.7496367591184040413@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915/uc: introduce
 intel_uc_fw_supported
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

CgpPbiA3LzEzLzIwMTkgMzoxOSBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgQ2hy
aXMgV2lsc29uICgyMDE5LTA3LTEzIDExOjAwOjA4KQo+PiBGcm9tOiBEYW5pZWxlIENlcmFvbG8g
U3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+Pgo+PiBJbnN0ZWFkIG9m
IGFsd2F5cyBjaGVja2luZyBpbiB0aGUgZGV2aWNlIGNvbmZpZyBpcyBHdUMgYW5kIEh1QyBhcmUK
Pj4gc3VwcG9ydGVkIG9yIG5vdCwgd2UgY2FuIHNhdmUgdGhlIHN0YXRlIGluIHRoZSB1Y19mdyBz
dHJ1Y3R1cmUgYW5kCj4+IGF2b2lkIGdvaW5nIHRocm91Z2ggaTkxNSBldmVyeSB0aW1lIGZyb20g
dGhlIGxvdy1sZXZlbCB1YyBtYW5hZ2VtZW50Cj4+IGNvZGUuIHdoaWxlIGF0IGl0IEZJUk1XQVJF
X05PTkUgaGFzIGJlZW4gcmVuYW1lZCB0byBiZXR0ZXIgaW5kaWNhdGUgdGhhdAo+PiB3ZSBoYXZl
bid0IHN0YXJ0ZWQgdGhlIGZldGNoL2xvYWQgeWV0LCBidXQgd2UgbWlnaHQgaGF2ZSBhbHJlYWR5
IHNlbGVjdGVkCj4+IGEgYmxvYi4KPj4KPj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xv
IFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPj4gQ2M6IE1pY2hhbCBX
YWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IE9rLCBidXQgSSdtIG5vdCBx
dWl0ZSBnZXR0aW5nIHRoZSBmZWVsaW5nIG9mIGEgbmljZSBmbG93IHRocm91Z2ggYSBzdGF0ZQo+
IG1hY2hpbmUuCj4gUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+IC1DaHJpcwoKV2UgaGFkIGRpc2N1c3NlZCBhIGNvdXBsZSBvZiBwb3NzaWJsZSBk
aWZmZXJlbnQgYXBwcm9hY2hlcyB3aXRoIE1pY2hhbCAKb24gdGhlIG90aGVyIHRocmVhZCwgaW5j
bHVkaW5nIGEgYmV0dGVyIHN0YXRlIG1hY2hpbmUgdGhhdCB1bmlmaWVzIHRoZSAKZmV0Y2gvbG9h
ZCBjYXNlcywgSSBqdXN0IGRpZG4ndCBoYXZlIHRpbWUgdG8gdHJ5IHRoZW0geWV0LiBTaW5jZSB0
aGUgCnNlcmllcyBpcyBmdWxseSByZXZpZXdlZCwgaWYgeW91IHdhbnQgdG8gZ2V0IGl0IGluIHdo
aWxlIGl0IHN0aWxsIAphcHBsaWVzIEkgd2lsbCBmb2xsb3cgdXAgd2l0aCB0aGF0IHJld29yayBv
biB0b3AuCgpEYW5pZWxlCgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
