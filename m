Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D2224D202
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 12:11:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C76D6EABD;
	Fri, 21 Aug 2020 10:11:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D54886EABD;
 Fri, 21 Aug 2020 10:11:54 +0000 (UTC)
IronPort-SDR: ITlvnju7D86R3kvf/pvPRqIri4MxUByiluhkD7I7AYk/KymMJC38uBEYPIPi1UaH0Vi+cvVntp
 NZFNJXzjhDqA==
X-IronPort-AV: E=McAfee;i="6000,8403,9719"; a="154771166"
X-IronPort-AV: E=Sophos;i="5.76,335,1592895600"; d="scan'208";a="154771166"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2020 03:11:54 -0700
IronPort-SDR: r3ulUXAh+zQab6O3LrV8c0uGvllAqJj4pZe2OwO6bq4CLjdcT6nVDfBITIpe0LmUdo4YBNAcQc
 Y/bMYLOtTQhA==
X-IronPort-AV: E=Sophos;i="5.76,335,1592895600"; d="scan'208";a="472998374"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2020 03:11:52 -0700
Message-ID: <94bbee2d0e673ed4848c2839638acade90b73761.camel@linux.intel.com>
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 21 Aug 2020 12:11:50 +0200
In-Reply-To: <20200820145215.13238-1-janusz.krzysztofik@linux.intel.com>
References: <20200820145215.13238-1-janusz.krzysztofik@linux.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t v3 00/19] tests/core_hotunplug: Fixes
 and enhancements
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Micha=C5=82?= Winiarski <michal.winiarski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIwLTA4LTIwIGF0IDE2OjUxICswMjAwLCBKYW51c3ogS3J6eXN6dG9maWsgd3Jv
dGU6Cj4gQ2xlYW4gdXAgdGhlIHRlc3QgY29kZSwgYWRkIHNvbWUgbmV3IGJhc2ljIHN1YnRlc3Rz
LCB0aGVuIHVuYmxvY2sKPiB1bmJpbmQgdGVzdCB2YXJpYW50cy4KCkhpLAoKQ0kgcmVzdWx0cyBz
aG93IHRoYXQgaTkxNSByZWNvdmVyeSBhZnRlciBhIGZhaWxlZCBoZWFsdGhjaGVjayBzdGlsbApu
ZWVkcyBzb21lIHdvcmssIHNvIHBsZWFzZSBob2xkIG9uIHdpdGggeW91ciByZXZpZXdzLiAgSSdt
IGdvaW5nIHRvCnN1Ym1pdCB2NCBzb29uLgoKVGhhbmtzLApKYW51c3oKCj4gCj4gT25lIHBhdGNo
IGhhcyBiZWVuIHJlbmFtZWQsIHRocmVlIG5ldyBwYXRjaGVzIGFkZGVkIHRvIHRoZSBzZXJpZXMs
IGFuZAo+IG9uZSBtb3JlIHBhdGNoIGZvcm0gYSBmb3JtZXJseSBzdWJtaXR0ZWQgc2VyaWVzIHdp
dGggbmV3IHN1YnRlc3RzCj4gaW5jbHVkZWQuCj4gCj4gQE1pY2hhxYI6IFNpbmNlIG1vc3QgdjIv
djMgdXBkYXRlcyBhcmUgdHJpdmlhbCwgSSd2ZSBwcmVzZXJ2ZWQgeW91cgo+IHYxL3YyIFJldmll
d2QtYnk6IGV4Y2VwdCBmb3IgYSBmZXcgcGF0Y2hlcyB3aXRoIG5vbi10cml2aWFsIGNoYW5nZXMs
Cj4gd2hlcmUgSSBtYXJrZWQgeW91ciBSLWIgYXMgdjEvdjIgYXBwbGljYWJsZS4gIFBsZWFzZSBo
YXZlIGEgbG9vayBhbmQKPiBjb25maXJtIGlmIHlvdSBhcmUgc3RpbGwgT0sgd2l0aCB0aGVtLgo+
IAo+IEBUdnJ0a286IFBsZWFzZSBzdXBwb3J0IG15IGF0dGVtcHQgdG8gcmVtb3ZlIHRoZSB1bmJp
bmQgdGVzdCB2YXJpYW50cwo+IGZyb20gdGhlIGJsb2NrbGlzdC4KPiAKPiBAUGV0cmksIEBNYXJ0
aW46IFBsZWFzZSBnaXZlIG1lIHlvdXIgZ3JlZW4gbGl0ZSBmb3IgbWVyZ2luZyB0aGlzCj4gc2Vy
aWVzIGlmIHlvdSBoYXZlIG5vIG9iamVjdGlvbnMuCj4gCj4gVGhhbmtzLAo+IEphbnVzego+IAo+
IEphbnVzeiBLcnp5c3p0b2ZpayAoMTkpOgo+ICAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IFVzZSBp
Z3RfYXNzZXJ0X2ZkKCkKPiAgIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBDb25zdGlmeSBkZXZfYnVz
X2FkZHIgc3RyaW5nCj4gICB0ZXN0cy9jb3JlX2hvdHVucGx1ZzogQ2xlYW4gdXAgZGV2aWNlIG9w
ZW4gZXJyb3IgaGFuZGxpbmcKPiAgIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBDb25zb2xpZGF0ZSBk
dXBsaWNhdGVkIGRlYnVnIG1lc3NhZ2VzICMgbmV3Cj4gICB0ZXN0cy9jb3JlX2hvdHVucGx1Zzog
QXNzZXJ0IHN1Y2Nlc3NmdWwgZGV2aWNlIGZpbHRlciBhcHBsaWNhdGlvbgo+ICAgdGVzdHMvY29y
ZV9ob3R1bnBsdWc6IE1haW50YWluIGEgc2luZ2xlIGRhdGEgc3RydWN0dXJlIGluc3RhbmNlCj4g
ICB0ZXN0cy9jb3JlX2hvdHVucGx1ZzogUGFzcyBlcnJvcnMgdmlhIGEgZGF0YSBzdHJ1Y3R1cmUg
ZmllbGQKPiAgIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBIYW5kbGUgZGV2aWNlIGNsb3NlIGVycm9y
cwo+ICAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IFByZXBhcmUgaW52YXJpYW50IGRhdGEgb25jZSBw
ZXIgdGVzdCBydW4KPiAgIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBTa2lwIHNlbGVjdGl2ZWx5IG9u
IHN5c2ZzIGNsb3NlIGVycm9ycwo+ICAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IFJlY292ZXIgZnJv
bSBzdWJ0ZXN0IGZhaWx1cmVzICMgcmVuYW1lZAo+ICAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IEZh
aWwgc3VidGVzdHMgb24gZGV2aWNlIGNsb3NlIGVycm9ycwo+ICAgdGVzdHMvY29yZV9ob3R1bnBs
dWc6IExldCB0aGUgZHJpdmVyIHRpbWUgb3V0IGVzc2VudGlhbCBzeXNmcyBvcGVyYXRpb25zICMg
bmV3Cj4gICB0ZXN0cy9jb3JlX2hvdHVucGx1ZzogUHJvY2VzcyByZXR1cm4gdmFsdWVzIG9mIHN5
c2ZzIG9wZXJhdGlvbnMKPiAgIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBBc3NlcnQgZXhwZWN0ZWQg
ZGV2aWNlIHByZXNlbmNlL2Fic2VuY2UKPiAgIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBFeHBsaWNp
dGx5IGlnbm9yZSB1bnVzZWQgcmV0dXJuIHZhbHVlcwo+ICAgdGVzdHMvY29yZV9ob3R1bnBsdWc6
IE1vcmUgdGhvcm91Z2ggaTkxNSBoZWFsdGhjaGVjayBhbmQgcmVjb3ZlcnkgIyBuZXcKPiAgIHRl
c3RzL2NvcmVfaG90dW5wbHVnOiBBZGQgJ2xhdGVjbG9zZSBiZWZvcmUgcmVzdG9yZScgdmFyaWFu
dHMgIyBpbmNsdWRlZAo+ICAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IFVuLWJsb2NrbGlzdCAqYmlu
ZCogc3VidGVzdHMKPiAKPiAgdGVzdHMvY29yZV9ob3R1bnBsdWcuYyAgICAgICB8IDUyNSArKysr
KysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLQo+ICB0ZXN0cy9pbnRlbC1jaS9ibGFja2xp
c3QudHh0IHwgICAyICstCj4gIDIgZmlsZXMgY2hhbmdlZCwgMzk2IGluc2VydGlvbnMoKyksIDEz
MSBkZWxldGlvbnMoLSkKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
