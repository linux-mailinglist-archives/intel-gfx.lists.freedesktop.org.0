Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8493EC16D
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 11:56:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EF8F6E1E0;
	Fri,  1 Nov 2019 10:56:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04D006E1E0;
 Fri,  1 Nov 2019 10:56:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19045034-1500050 for multiple; Fri, 01 Nov 2019 10:56:39 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191101105106.12297-1-chris@chris-wilson.co.uk>
References: <20191101105106.12297-1-chris@chris-wilson.co.uk>
Message-ID: <157260579755.17607.16001529023424116781@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 01 Nov 2019 10:56:37 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t] intel-ci: Relegate gem_exec_reloc to
 the shards
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
Cc: igt-dev@lists.freedesktop.org, Tomi Sarvela <tomi.p.sarvela@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMDEgMTA6NTE6MDYpCj4gVGhlIGdlbV9leGVj
X3JlbG9jIGJhc2ljIHN1YnRlc3RzIGNvdmVyIGEgY291cGxlIGRvemVuIGJhc2ljIEFCSQo+IHNh
bml0eWNoZWNrcywgYWltaW5nIHRvIHByb3ZlIHRoZSBBQkkgd29ya3MuIFdoaWxlIHJlbG9jYXRp
b25zIHVzZWQgdG8KPiBiZSBlc3NlbnRpYWwsIHRoZXkgYXJlIG5vIGxvbmdlciB0aGUgYmFzaXMg
b2YgY3VycmVudCBjbGllbnRzIHdobyBhbGwKPiBzb2Z0cGluLiBJdCBpcyBhIHN0YWduYW50IHBv
cnRpb24gb2YgdGhlIEFCSSB0aGF0IGRvZXMgbm90IGNvbnRyaWJ1dGUKPiBtdWNoIHRvIG92ZXJh
bGwgZHJpdmVyIGhlYWx0aCAodGhlIGNvbXBsaWNhdGVkIHBvcnRpb25zIG9mIHJlbG9jcyBhcmUK
PiBjb3ZlcmVkIGluIHRoZSBzbW9rZXRlc3RzIGxpa2UgZ2VtX2V4ZWNfcGFyYWxsZWwgYW5kIGdl
bV9leGVjX2d0dGZpbGwpLgo+IEhvd2V2ZXIsIGV2ZW4gdGhvdWdoIGVhY2ggb2YgdGhlIGJhc2lj
IHN1YnRlc3QgaXMgdHJpdmlhbCBhbmQgcnVucyBpbgo+IHZlcnkgbGl0dGxlIHRpbWUsIHNpbmNl
IENJIGlzIHJ1bm5pbmcgZWFjaCBpbmRpdmlkdWFsbHkgdGhlIHRpbWUgYmV0d2Vlbgo+IHRlc3Rz
IG1vdW50cyB1cCAoZXNwZWNpYWxseSBvbiBlTU1DIGRldmljZXMgbGlrZSBmaS1rYmwtc29yYWth
KS4KPiAKPiBCeSBtb3ZpbmcgdGhlc2UgdGVzdHMgdG8gdGhlIHNoYXJkcyB3ZSBzaG91bGQgc3Bl
ZWQgdXAgQkFUIG9uIHRoZQo+IHJhdGVsaW1pdGluZyBmaS1rYmwtc29yYWthLCB3aGlsZSBsb3Np
bmcgbm8gY292ZXJhZ2Ugb3ZlcmFsbCAtLSBhbmQKPiBob3BlZnVsbHkgd2l0aG91dCBsb3Npbmcg
YW55IG9mIHRoZSBwcmVkaWN0aXZlIGZhaWx1cmUgY292ZXJhZ2UgaW4gQkFULgo+IFRoaXMgc3Rh
Z25hbnQgYml0IG9mIHVBUEkvdUFCSSB3aWxsIHJlbWFpbiBjaGVja2VkIGJ5IHRoZSBpcnJlZ3Vs
YXIgaWRsZQo+IHJ1bnMuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVu
QGxpbnV4LmludGVsLmNvbT4KPiBDYzogVG9taSBTYXJ2ZWxhIDx0b21pLnAuc2FydmVsYUBpbnRl
bC5jb20+Cj4gQ2M6IFBldHJpIExhdHZhbGEgPHBldHJpLmxhdHZhbGFAaW50ZWwuY29tPgo+IENj
OiBNYXJ0aW4gUGVyZXMgPG1hcnRpbi5wZXJlc0BsaW51eC5pbnRlbC5jb20+CgpCZWZvcmUgSm9v
bmFzIHdlbnQgZmlzaGluZywgaGUgZ2F2ZSArMS4gU28sCkFja2VkLWJ5OiBKb29uYXMgTGFodGlu
ZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CgpUb21pLCBQZXRyaSwgTWFydGlu
IGFueSBvYmplY3Rpb25zPwotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
