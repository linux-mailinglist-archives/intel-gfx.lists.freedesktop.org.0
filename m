Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A7B240414
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Aug 2020 11:33:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 170566E3CE;
	Mon, 10 Aug 2020 09:33:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B825D6E3CE;
 Mon, 10 Aug 2020 09:33:19 +0000 (UTC)
IronPort-SDR: NTAi2FuFq/va+qv9rhmRppW3xBrH9/qZfPhCwbPJHmZqJgBuzM21/Hf7Ttu0anms91hYXjuT0+
 24vA/NcqW4jg==
X-IronPort-AV: E=McAfee;i="6000,8403,9708"; a="150937617"
X-IronPort-AV: E=Sophos;i="5.75,457,1589266800"; d="scan'208";a="150937617"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 02:33:18 -0700
IronPort-SDR: pJGgcL/Ddj5Ck0jqbQplFJJtY1Jj83fk9FHI1H5D/uNsiS6yA1Q4I+1SPPk8jLloIsuF5HTK9h
 A3hZZ3zN2qUQ==
X-IronPort-AV: E=Sophos;i="5.75,457,1589266800"; d="scan'208";a="494733542"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 02:33:15 -0700
Message-ID: <47a5070960dbcd4238e4cbf578c5166305d7632d.camel@linux.intel.com>
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 10 Aug 2020 11:33:13 +0200
In-Reply-To: <20200807092002.32350-1-janusz.krzysztofik@linux.intel.com>
References: <20200807092002.32350-1-janusz.krzysztofik@linux.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 00/16] tests/core_hotunplug: Fixes
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

T24gRnJpLCAyMDIwLTA4LTA3IGF0IDExOjE5ICswMjAwLCBKYW51c3ogS3J6eXN6dG9maWsgd3Jv
dGU6Cj4gQ2xlYW4gdXAgdGhlIHRlc3QgY29kZSBhbmQgdW5ibG9jayB1bmJpbmQgdmFyaWFudHMu
CgpGcm9tIHRoZSBDSSByZXBvcnQgaXQgbG9va3MgZm9yIG1lIGxpa2UgZHJpdmVyIChob3QpdW5i
aW5kLXJlYmluZApvcGVyYXRpb25zIGFmZmVjdCBoYXJkd2FyZSBhbmQgdGhlIGRyaXZlciBkb2Vz
bid0IGhhbmRsZSB0aGlzCmNvcnJlY3RseS4gIE1vcmVvdmVyLCB0aGUgdGVzdCBkb2Vzbid0IGN1
cnJlbnRseSBkZXRlY3QgdGhpcyBmYXVsdHkKY29uZGl0aW9uIGFuZCBoYXBwaWx5IHJldHVybnMg
c3VjY2Vzcy4KCk9uIHRoZSBvdGhlciBoYW5kLCB0aGUgaGFyZHdhcmUgc2VlbXMgbm90IHN0dWNr
IHBlcm1hbmVudGx5LCBpdCBsb29rcwpsaWtlIGl0IGp1c3QgcmVxdWlyZXMgZW5naW5lcyB0byBi
ZSByZXNldC4KClRoZW4sIEknbSBnb2luZyB0byBleHRlbmQgdGhlIHNlcmllcyB3aXRoIGEgbW9y
ZSB0aG9yb3VnaCBoZWFsdGggY2hlY2sKYW5kIGEgbW9yZSBjYXJlZnVsIHJlY292ZXJ5LiAgVGhl
IHVuYmluZC1yZWJpbmQgc3VidGVzdCBzaGFsbCByZXBvcnQgYQpmYWlsdXJlIGFzIHNvb24gYXMg
aXQgZGV0ZWN0cyB0aGF0IGVuZ2luZXMgcmVxdWlyZSBhIHJlc2V0LCBJIGJlbGlldmUsCmJ1dCBp
Z3RfYWJvcnQgc2hhbGwgbm90IGJlIGNhbGxlZCB1bmxlc3MgdGhlIHJlY292ZXJ5IHBoYXNlIGZh
aWxzLgoKVGhhbmtzLApKYW51c3oKCj4gCj4gQE1pY2hhxYI6IFNpbmNlIG1vc3QgdjIgdXBkYXRl
cyBhcmUgdHJpdmlhbCwgSSd2ZSBwcmVzZXJ2ZWQgeW91cgo+IFJldmlld2QtYnk6IGV4Y2VwdCBm
b3IgcGF0Y2ggMTEvMTYgIkZvbGxvdyBmYWlsZWQgc3VidGVzdHMgd2l0aCBoZWFsdGgKPiBjaGVj
a3MiIC0gcGxlYXNlIGhhdmUgYSBsb29rIGFuZCBjb25maXJtIGlmIHlvdSBhcmUgc3RpbGwgT0sg
d2l0aCBpdC4KPiAKPiBUaGFua3MsCj4gSmFudXN6Cj4gCj4gSmFudXN6IEtyenlzenRvZmlrICgx
Nik6Cj4gICB0ZXN0cy9jb3JlX2hvdHVucGx1ZzogVXNlIGlndF9hc3NlcnRfZmQoKQo+ICAgdGVz
dHMvY29yZV9ob3R1bnBsdWc6IENvbnN0aWZ5IGRldl9idXNfYWRkciBzdHJpbmcKPiAgIHRlc3Rz
L2NvcmVfaG90dW5wbHVnOiBDb25zb2xpZGF0ZSBkdXBsaWNhdGVkIGRlYnVnIG1lc3NhZ2VzCj4g
ICB0ZXN0cy9jb3JlX2hvdHVucGx1ZzogQXNzZXJ0IHN1Y2Nlc3NmdWwgZGV2aWNlIGZpbHRlciBh
cHBsaWNhdGlvbgo+ICAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IEZpeCBtaXNzaW5nIG5ld2xpbmUK
PiAgIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBNYWludGFpbiBhIHNpbmdsZSBkYXRhIHN0cnVjdHVy
ZSBpbnN0YW5jZQo+ICAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IFBhc3MgZXJyb3JzIHZpYSBhIGRh
dGEgc3RydWN0dXJlIGZpZWxkCj4gICB0ZXN0cy9jb3JlX2hvdHVucGx1ZzogSGFuZGxlIGRldmlj
ZSBjbG9zZSBlcnJvcnMKPiAgIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBQcmVwYXJlIGludmFyaWFu
dCBkYXRhIG9uY2UgcGVyIHRlc3QgcnVuCj4gICB0ZXN0cy9jb3JlX2hvdHVucGx1ZzogU2tpcCBz
ZWxlY3RpdmVseSBvbiBzeXNmcyBjbG9zZSBlcnJvcnMKPiAgIHRlc3RzL2NvcmVfaG90dW5wbHVn
OiBGb2xsb3cgZmFpbGVkIHN1YnRlc3RzIHdpdGggaGVhbHRoIGNoZWNrcwo+ICAgdGVzdHMvY29y
ZV9ob3R1bnBsdWc6IEZhaWwgc3VidGVzdHMgb24gZGV2aWNlIGNsb3NlIGVycm9ycwo+ICAgdGVz
dHMvY29yZV9ob3R1bnBsdWc6IFByb2Nlc3MgcmV0dXJuIHZhbHVlcyBvZiBzeXNmcyBvcGVyYXRp
b25zCj4gICB0ZXN0cy9jb3JlX2hvdHVucGx1ZzogQXNzZXJ0IGV4cGVjdGVkIGRldmljZSBwcmVz
ZW5jZS9hYnNlbmNlCj4gICB0ZXN0cy9jb3JlX2hvdHVucGx1ZzogRXhwbGljaXRseSBpZ25vcmUg
dW51c2VkIHJldHVybiB2YWx1ZXMKPiAgIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBVbi1ibG9ja2xp
c3QgKnVuYmluZCogc3VidGVzdHMKPiAKPiAgdGVzdHMvY29yZV9ob3R1bnBsdWcuYyAgICAgICB8
IDMzNCArKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQo+ICB0ZXN0cy9pbnRlbC1j
aS9ibGFja2xpc3QudHh0IHwgICAyICstCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjA0IGluc2VydGlv
bnMoKyksIDEzMiBkZWxldGlvbnMoLSkKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
