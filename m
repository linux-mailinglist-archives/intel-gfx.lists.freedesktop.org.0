Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DDE261CF
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 12:35:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E023B89913;
	Wed, 22 May 2019 10:35:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C13789913
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 10:35:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 03:35:01 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 22 May 2019 03:34:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
In-Reply-To: <20190521183850.GA9157@archlinux-epyc>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <87904259868782c1ad664d852b27a50c1597cfaa.1556540890.git.jani.nikula@intel.com>
 <20190521183850.GA9157@archlinux-epyc>
Date: Wed, 22 May 2019 13:38:18 +0300
Message-ID: <87v9y27p0l.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [18/21] drm/i915: extract intel_runtime_pm.h from
 intel_drv.h
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMSBNYXkgMjAxOSwgTmF0aGFuIENoYW5jZWxsb3IgPG5hdGVjaGFuY2VsbG9yQGdt
YWlsLmNvbT4gd3JvdGU6Cj4gSGkgSmFuaSwKPgo+IE9uIE1vbiwgQXByIDI5LCAyMDE5IGF0IDAz
OjI5OjM2UE0gKzAzMDAsIEphbmkgTmlrdWxhIHdyb3RlOgo+PiBJdCB1c2VkIHRvIGJlIGhhbmR5
IHRoYXQgd2Ugb25seSBoYWQgYSBjb3VwbGUgb2YgaGVhZGVycywgYnV0IG92ZXIgdGltZQo+PiBp
bnRlbF9kcnYuaCBoYXMgYmVjb21lIHVud2llbGR5LiBFeHRyYWN0IGRlY2xhcmF0aW9ucyB0byBh
IHNlcGFyYXRlCj4+IGhlYWRlciBmaWxlIGNvcnJlc3BvbmRpbmcgdG8gdGhlIGltcGxlbWVudGF0
aW9uIG1vZHVsZSwgY2xhcmlmeWluZyB0aGUKPj4gbW9kdWxhcml0eSBvZiB0aGUgZHJpdmVyLgo+
PiAKPj4gRW5zdXJlIHRoZSBuZXcgaGVhZGVyIGlzIHNlbGYtY29udGFpbmVkLCBhbmQgZG8gc28g
d2l0aCBtaW5pbWFsIGZ1cnRoZXIKPj4gaW5jbHVkZXMsIHVzaW5nIGZvcndhcmQgZGVjbGFyYXRp
b25zIGFzIG5lZWRlZC4gSW5jbHVkZSB0aGUgbmV3IGhlYWRlcgo+PiBvbmx5IHdoZXJlIG5lZWRl
ZCwgYW5kIHNvcnQgdGhlIG1vZGlmaWVkIGluY2x1ZGUgZGlyZWN0aXZlcyB3aGlsZSBhdCBpdAo+
PiBhbmQgYXMgbmVlZGVkLgo+PiAKPj4gTm8gZnVuY3Rpb25hbCBjaGFuZ2VzLgo+PiAKPj4gU2ln
bmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4gLS0tCj4K
PiA8c25pcD4KPgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVu
dGltZV9wbS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5oCj4+IG5l
dyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMC4uNjkyMjc3Cj4+IC0tLSAvZGV2L251
bGwKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5oCj4+IEBA
IC0wLDAgKzEsMTA1IEBACj4+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUICovCj4+
ICsvKgo+PiArICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KPj4gKyAqLwo+
PiArCj4+ICsjaWZuZGVmIF9fSU5URUxfUlVOVElNRV9QTV9IX18KPj4gKyNkZWZpbmUgX19JTlRF
TF9SVU5USU1FX1BNX0hfXwo+PiArCj4+ICsjaW5jbHVkZSA8bGludXgvc3RhY2tkZXBvdC5oPgo+
PiArI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4+ICsKPj4gK3N0cnVjdCBkcm1faTkxNV9wcml2
YXRlOwo+PiArCj4+ICt0eXBlZGVmIGRlcG90X3N0YWNrX2hhbmRsZV90IGludGVsX3dha2VyZWZf
dDsKPgo+IEp1c3QgYXMgYW4gRllJLCB0aGlzIHBhcnRpY3VsYXIgY2hhbmdlIGNhdXNlcyBhIHNs
ZXcgb2YgY2xhbmcgd2FybmluZ3M6Cj4gaHR0cHM6Ly90cmF2aXMtY2kuY29tL0NsYW5nQnVpbHRM
aW51eC9jb250aW51b3VzLWludGVncmF0aW9uL2pvYnMvMjAxNzU0NDIwI0wyNDM1Cj4KPiBJIGFt
IG5vdCBzdXJlIGhvdyBleGFjdGx5IHlvdSdkIGxpa2UgdGhpcyByZXNvbHZlZCBzbyBJIGRpZG4n
dCB3YW50IHRvCj4gcHJvdmlkZSBhIHVzZWxlc3MgcGF0Y2guIEkgZmlndXJlZCBJIHdvdWxkIGxl
dCB5b3Uga25vdyBhYm91dCBpdCBhbmQKPiBsZWF2ZSBpdCB1cCB0byB5b3UuCgpUaGFua3MgZm9y
IHRoZSByZXBvcnQsIGZpeCBpcyBbMV0uCgpJIHdvbmRlciB3aHkgZ2NjIGFsbG93cyBkdXBlIGRl
ZmluaXRpb25zLiAqc2hydWcqCgpCUiwKSmFuaS4KClsxXSBodHRwOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDE5MDUyMjEwMzUwNS4yMDgyLTEtamFuaS5uaWt1bGFA
aW50ZWwuY29tCgoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBD
ZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
