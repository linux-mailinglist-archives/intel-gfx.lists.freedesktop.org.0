Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F235EC3113
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 12:17:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E5C56E5E6;
	Tue,  1 Oct 2019 10:17:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C33B36E5E6
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 10:17:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 03:17:43 -0700
X-IronPort-AV: E=Sophos;i="5.64,570,1559545200"; d="scan'208";a="366286885"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 03:17:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
In-Reply-To: <20191001095911.GA2945944@kroah.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <8e697984-03b5-44f3-304e-42d303724eaa@rasmusvillemoes.dk>
 <20191001080739.18513-1-jani.nikula@intel.com>
 <20191001093849.GA2945163@kroah.com> <87blv0dcol.fsf@intel.com>
 <20191001095911.GA2945944@kroah.com>
Date: Tue, 01 Oct 2019 13:17:36 +0300
Message-ID: <878sq4db27.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] string-choice: add yesno(), onoff(),
 enableddisabled(), plural() helpers
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
Cc: netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-usb@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Julia Lawall <julia.lawall@lip6.fr>,
 Vishal Kulkarni <vishal@chelsio.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAwMSBPY3QgMjAxOSwgR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3Vu
ZGF0aW9uLm9yZz4gd3JvdGU6Cj4gT24gVHVlLCBPY3QgMDEsIDIwMTkgYXQgMTI6NDI6MzRQTSAr
MDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IE9uIFR1ZSwgMDEgT2N0IDIwMTksIEdyZWcgS3Jv
YWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+IHdyb3RlOgo+PiA+IE9uIFR1
ZSwgT2N0IDAxLCAyMDE5IGF0IDExOjA3OjM5QU0gKzAzMDAsIEphbmkgTmlrdWxhIHdyb3RlOgo+
PiA+PiBUaGUga2VybmVsIGhhcyBwbGVudHkgb2YgdGVybmFyeSBvcGVyYXRvcnMgdG8gY2hvb3Nl
IGJldHdlZW4gY29uc3RhbnQKPj4gPj4gc3RyaW5ncywgc3VjaCBhcyBjb25kaXRpb24gPyAieWVz
IiA6ICJubyIsIGFzIHdlbGwgYXMgdmFsdWUgPT0gMSA/ICIiIDoKPj4gPj4gInMiOgo+PiA+PiAK
Pj4gPj4gJCBnaXQgZ3JlcCAnPyAieWVzIiA6ICJubyInIHwgd2MgLWwKPj4gPj4gMjU4Cj4+ID4+
ICQgZ2l0IGdyZXAgJz8gIm9uIiA6ICJvZmYiJyB8IHdjIC1sCj4+ID4+IDIwNAo+PiA+PiAkIGdp
dCBncmVwICc/ICJlbmFibGVkIiA6ICJkaXNhYmxlZCInIHwgd2MgLWwKPj4gPj4gMTk2Cj4+ID4+
ICQgZ2l0IGdyZXAgJz8gIiIgOiAicyInIHwgd2MgLWwKPj4gPj4gMjUKPj4gPj4gCj4+ID4+IEFk
ZGl0aW9uYWxseSwgdGhlcmUgYXJlIHNvbWUgb2NjdXJlbmNlcyBvZiB0aGUgc2FtZSBpbiByZXZl
cnNlIG9yZGVyLAo+PiA+PiBzcGxpdCB0byBtdWx0aXBsZSBsaW5lcywgb3Igb3RoZXJ3aXNlIG5v
dCBjYXVnaHQgYnkgdGhlIHNpbXBsZSBncmVwLgo+PiA+PiAKPj4gPj4gQWRkIGhlbHBlcnMgdG8g
cmV0dXJuIHRoZSBjb25zdGFudCBzdHJpbmdzLiBSZW1vdmUgZXhpc3RpbmcgZXF1aXZhbGVudAo+
PiA+PiBhbmQgY29uZmxpY3RpbmcgZnVuY3Rpb25zIGluIGk5MTUsIGN4Z2I0LCBhbmQgVVNCIGNv
cmUuIEZ1cnRoZXIKPj4gPj4gY29udmVyc2lvbiBjYW4gYmUgZG9uZSBpbmNyZW1lbnRhbGx5Lgo+
PiA+PiAKPj4gPj4gV2hpbGUgdGhlIG1haW4gZ29hbCBoZXJlIGlzIHRvIGFic3RyYWN0IHJlY3Vy
cmluZyBwYXR0ZXJucywgYW5kIHNsaWdodGx5Cj4+ID4+IGNsZWFuIHVwIHRoZSBjb2RlIGJhc2Ug
Ynkgbm90IG9wZW4gY29kaW5nIHRoZSB0ZXJuYXJ5IG9wZXJhdG9ycywgdGhlcmUKPj4gPj4gYXJl
IGFsc28gc29tZSBzcGFjZSBzYXZpbmdzIHRvIGJlIGhhZCB2aWEgYmV0dGVyIHN0cmluZyBjb25z
dGFudAo+PiA+PiBwb29saW5nLgo+PiA+PiAKPj4gPj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9v
bmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPj4gPj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9k
cmlnby52aXZpQGludGVsLmNvbT4KPj4gPj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKPj4gPj4gQ2M6IFZpc2hhbCBLdWxrYXJuaSA8dmlzaGFsQGNoZWxzaW8uY29tPgo+PiA+
PiBDYzogbmV0ZGV2QHZnZXIua2VybmVsLm9yZwo+PiA+PiBDYzogR3JlZyBLcm9haC1IYXJ0bWFu
IDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KPj4gPj4gQ2M6IGxpbnV4LXVzYkB2Z2VyLmtl
cm5lbC5vcmcKPj4gPj4gQ2M6IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgtZm91bmRhdGlvbi5v
cmc+Cj4+ID4+IENjOiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCj4+ID4+IENjOiBKdWxp
YSBMYXdhbGwgPGp1bGlhLmxhd2FsbEBsaXA2LmZyPgo+PiA+PiBDYzogUmFzbXVzIFZpbGxlbW9l
cyA8bGludXhAcmFzbXVzdmlsbGVtb2VzLmRrPgo+PiA+PiBSZXZpZXdlZC1ieTogR3JlZyBLcm9h
aC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4gIyB2MQo+PiA+Cj4+ID4gQXMg
dGhpcyBpcyBhIHRvdGFsbHkgZGlmZmVyZW50IHZlcnNpb24sIHBsZWFzZSBkcm9wIG15IHJldmll
d2VkLWJ5IGFzCj4+ID4gdGhhdCdzIHJlYWxseSBub3QgdHJ1ZSBoZXJlIDooCj4+IAo+PiBJIGRp
ZCBpbmRpY2F0ZSBpdCB3YXMgZm9yIHYxLiBJbmRlZWQgdjIgd2FzIGRpZmZlcmVudCwgYnV0IGNh
cmUgdG8KPj4gZWxhYm9yYXRlIHdoYXQncyB3cm9uZyB3aXRoIHYzPwo+Cj4gTm8gaWRlYSwgYnV0
IEkgaGF2ZW4ndCByZXZpZXdlZCBpdCB5ZXQsIHNvIHRvIHB1dCBteSB0YWcgb24gdGhlcmUgaXNu
J3QKPiB0aGUgbmljZXN0Li4uCgpBcG9sb2dpZXMsIG5vIGhhcm0gaW50ZW5kZWQuCgpBdCB0aW1l
cywgSSd2ZSBzZWVuIHRoZSAiIyB2TiIgbm90YXRpb24gdXNlZCwgSSBzdXBwb3NlIGJvdGggdG8g
aW5kaWNhdGUKdGhhdCB0aGUgKmlkZWFzKiBwcmVzZW50ZWQgaW4gdGhlIGVhcmxpZXIgdmVyc2lv
biB3YXJyYW50ZWQgUmV2aWV3ZWQtYnkKZnJvbSBzby1hbmQtc28sIHRob3VnaCB0aGlzIHBhcnRp
Y3VsYXIgdmVyc2lvbiBzdGlsbCBuZWVkcyBkZXRhaWxlZApyZXZpZXcsIGFuZCB0aGF0IHRoZSBh
cHByb3ZhbCBvZiB0aGUgcmV2aWV3ZXIgb2YgdGhlIGVhcmxpZXIgdmVyc2lvbgpzaG91bGQgYmUg
c291Z2h0IG91dCBiZWZvcmUgbWVyZ2luZyBhIHN1YnNlcXVlbnQgdmVyc2lvbi4KCkJSLApKYW5p
LgoKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
