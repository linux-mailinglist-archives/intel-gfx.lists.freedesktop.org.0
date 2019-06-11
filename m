Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFF33C7E5
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 11:58:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B969890BD;
	Tue, 11 Jun 2019 09:58:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69130890BD
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 09:58:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 02:58:48 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 11 Jun 2019 02:58:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.de.marchi@gmail.com>
In-Reply-To: <20190610225719.GA12225@ldmartin-desk.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190604145826.16424-1-imre.deak@intel.com>
 <20190604145826.16424-4-imre.deak@intel.com> <87sgsn14vt.fsf@intel.com>
 <20190610225719.GA12225@ldmartin-desk.amr.corp.intel.com>
Date: Tue, 11 Jun 2019 13:01:33 +0300
Message-ID: <87k1dsxwxu.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/23] drm/i915: Move the TypeC port
 handling code to a separate file
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
Cc: intel-gfx@lists.freedesktop.org, Paulo Zanoni <paulo.r.zanoni@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAxMCBKdW4gMjAxOSwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZS5tYXJjaGlAZ21h
aWwuY29tPiB3cm90ZToKPiBPbiBUaHUsIEp1biAwNiwgMjAxOSBhdCAxMTo0Mjo0NkFNICswMzAw
LCBKYW5pIE5pa3VsYSB3cm90ZToKPj5PbiBUdWUsIDA0IEp1biAyMDE5LCBJbXJlIERlYWsgPGlt
cmUuZGVha0BpbnRlbC5jb20+IHdyb3RlOgo+PkZyb20gdGhlIE5pdHBpY2tzIERlcGFydG1lbnQs
IHBsZWFzZSBhZGQgYSBibGFuayBsaW5lIGhlcmUuCj4+Cj4+PiArI2luY2x1ZGUgImludGVsX2Rp
c3BsYXkuaCIKPj4+ICsjaW5jbHVkZSAiaTkxNV9kcnYuaCIKPj4+ICsjaW5jbHVkZSAiaW50ZWxf
dGMuaCIKPj4KPj5BbmQgc29ydCB0aGUgaW5jbHVkZXMuCj4KPiBodW1uLi4uIEluIHNvbWUgb3Ro
ZXIgcHJvamVjdHMgSSB1c2UgdGhlIGNvbnZlbnRpb24gb2YgYWx3YXlzIGhhdmluZyB0aGUKPiBj
b3JyZXNwb25kZW50IGhlYWRlciB0byBiZSBpbmNsdWRlZCBmaXJzdCBhbmQgdGhlIHJlc3Qgc29y
dGVkLiBIZXJlIGl0Cj4gd291bGQgYmUgbGlrZToKPgo+ICNpbmNsdWRlICJpbnRlbF90Yy5oIgo+
Cj4gI2luY2x1ZGUgImludGVsX2Rpc3BsYXkuaCIKPiAjaW5jbHVkZSAiaW50ZWxfZHJ2LmgiCj4K
PiBUaGlzIHdheSB3ZSBndWFyYW50ZWUgdGhhdCBpbnRlbF90Yy5oIGhlYWRlciBpcyBzZWxmLWNv
bnRhaW5lZDogYW55dGhpbmcKPiBpdCBuZWVkcywgaXQgaW5jbHVkZXMgb3IgZGVjbGFyZXMuICBJ
ZiB3ZSBhZG9wdGVkIHN1Y2ggY29udmVudGlvbiBJIGRvbid0Cj4gc2VlIHdoeSB3ZSB3b3VsZCBz
dGlsbCBuZWVkIE1ha2VmaWxlLmhlYWRlci10ZXN0IGZvciBleGFtcGxlLgoKSSB0aGluayB0aGUg
bG9uZyBzdGFuZGluZyBjb252ZW50aW9uIGlzIHRvIGhhdmUgPGFzbT4sIDxsaW51eD4sIGFuZAo8
ZHJtPiBoZWFkZXJzIGluY2x1ZGVkIGJlZm9yZSAibG9jYWwiIGhlYWRlcnMuCgpFdmVudHVhbGx5
IHRoZSB2ZXJzaW9uIG9mIGhlYWRlciB0ZXN0cyB0aGF0IEkndmUgc3VibWl0dGVkIHRvIGtidWls
ZAp1cHN0cmVhbSB3aWxsIG9ic29sZXRlIHRoZSBNYWtlZmlsZS5oZWFkZXItdGVzdCBmaWxlcywg
YW5kIEkgZXhwZWN0IHVzCnRvIGhhdmUgc2ltcGx5CgpoZWFkZXItdGVzdC15IDo9ICQobm90ZGly
ICQod2lsZGNhcmQgJChzcmMpLyouaCkpCgppbiB0aGVyZSwgdGVzdGluZyBldmVyeXRoaW5nLgoK
QlIsCkphbmkuCgoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBD
ZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
