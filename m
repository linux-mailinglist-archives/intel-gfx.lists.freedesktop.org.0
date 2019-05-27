Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BC62B3C4
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 13:59:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8FC289991;
	Mon, 27 May 2019 11:59:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC78689991
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 11:59:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 May 2019 04:59:09 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga001.fm.intel.com with ESMTP; 27 May 2019 04:59:06 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4RBx5pQ007866; Mon, 27 May 2019 12:59:05 +0100
To: intel-gfx@lists.freedesktop.org, "Joonas Lahtinen"
 <joonas.lahtinen@linux.intel.com>
References: <20190523233049.28020-1-michal.wajdeczko@intel.com>
 <20190523233049.28020-3-michal.wajdeczko@intel.com>
 <155895722528.4287.7165428447449557799@jlahtine-desk.ger.corp.intel.com>
Date: Mon, 27 May 2019 13:59:05 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z2f58ra4xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <155895722528.4287.7165428447449557799@jlahtine-desk.ger.corp.intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH v4 02/22] drm/i915/guc: Don't allow GuC
 submission
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyNyBNYXkgMjAxOSAxMzo0MDoyNSArMDIwMCwgSm9vbmFzIExhaHRpbmVuICAKPGpv
b25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgoKPiBRdW90aW5nIE1pY2hhbCBX
YWpkZWN6a28gKDIwMTktMDUtMjQgMDI6MzA6MjkpCj4+IER1ZSB0byB0aGUgdXBjb21pbmcgY2hh
bmdlcyB0byB0aGUgR3VDIEFCSSBpbnRlcmZhY2UsIHdlIG11c3QKPj4gZGlzYWJsZSBHdUMgc3Vi
bWlzc2lvbiBtb2RlIHVudGlsIGZpbmFsIEFCSSB3aWxsIGJlIGF2YWlsYWJsZQo+PiBvbiBhbGwg
R3VDIGZpcm13YXJlcy4KPj4KPj4gVG8gYXZvaWQgcmVncmVzc2lvbnMgb24gc3lzdGVtcyBjb25m
aWd1cmVkIHRvIHJ1biB3aXRoIG5vIGxvbmdlcgo+PiBzdXBwb3J0ZWQgY29uZmlndXJhdGlvbiAi
ZW5hYmxlX2d1Yz0zIiBvciAiZW5hYmxlX2d1Yz0xIiBjbGVhcgo+PiBHdUMgc3VibWlzc2lvbiBi
aXQuCj4+Cj4+IHYyOiBmb3JjZSBzd2l0Y2ggdG8gbm9uLUd1QyBzdWJtaXNzaW9uIG1vZGUKPj4K
Pj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRl
bC5jb20+Cj4+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRl
bC5jb20+Cj4+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4g
Q2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPj4gQ2M6IERhbmllbGUg
Q2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4+IENjOiBK
b2huIFNwb3Rzd29vZCA8am9obi5hLnNwb3Rzd29vZEBpbnRlbC5jb20+Cj4+IENjOiBWaW5heSBC
ZWxnYXVta2FyIDx2aW5heS5iZWxnYXVta2FyQGludGVsLmNvbT4KPj4gQ2M6IFRvbnkgWWUgPHRv
bnkueWVAaW50ZWwuY29tPgo+PiBDYzogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FA
aW50ZWwuY29tPgo+PiBDYzogSmVmZiBNY2dlZSA8amVmZi5tY2dlZUBpbnRlbC5jb20+Cj4+IENj
OiBBbnRvbmlvIEFyZ2Vuemlhbm8gPGFudG9uaW8uYXJnZW56aWFub0BpbnRlbC5jb20+Cj4+IENj
OiBTdWphcml0aGEgU3VuZGFyZXNhbiA8c3VqYXJpdGhhLnN1bmRhcmVzYW5AaW50ZWwuY29tPgo+
PiBDYzogTWFydGluIFBlcmVzIDxtYXJ0aW4ucGVyZXNAbGludXguaW50ZWwuY29tPgo+PiBBY2tl
ZC1ieTogTWFydGluIFBlcmVzIDxtYXJ0aW4ucGVyZXNAbGludXguaW50ZWwuY29tPgo+Cj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jICAKPj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jCj4+IGluZGV4IDFhMjY1ZmJkOTVjNy4uZjY2MTA1ZDc1
NmRmIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jCj4+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMKPj4gQEAgLTI5OCw2ICszMDcsMTAg
QEAgaW50IGludGVsX3VjX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4+ICAg
ICAgICAgaWYgKCFIQVNfR1VDKGk5MTUpKQo+PiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9E
RVY7Cj4+Cj4+ICsgICAgICAgLyogWFhYOiBHdUMgc3VibWlzc2lvbiBpcyB1bmF2YWlsYWJsZSBm
b3Igbm93ICovCj4+ICsgICAgICAgaWYgKFVTRVNfR1VDX1NVQk1JU1NJT04oaTkxNSkpCj4+ICsg
ICAgICAgICAgICAgICByZXR1cm4gLUVJTzsKPj4gKwo+Cj4gVGhpcyB3b3VsZCBiZSBhIGRyaXZl
ciBwcm9ncmFtbWVyIGVycm9yLCB3b3VsZG4ndCBpdD8KPgo+IE1heWJlIGFkZCBHRU1fQlVHX09O
KCkgdG8gdGhlIGxhdGVyIGJyYW5jaCB0aGF0IGRvZXMgdGhlIGNoZWNrPwoKWWVzIGFzIHRoaXMg
c2hvdWxkIG5ldmVyIGhhcHBlbiBub3cgYXMgaW4gdjIgd2UgZm9yY2VkIG5vbi1HdUMgc3VibWlz
c2lvbgptb2RlIChpdCB3YXMgbmVlZGVkIG9ubHkgaW4gdjEgd2hlcmUgd2Ugd2VyZSBqdXN0IHBy
aW50aW5nIG1lc3NhZ2UpCgpUaGFua3MgZm9yIGNhdGNoaW5nIHRoYXQhCgo+Cj4gUmVnYXJkcywg
Sm9vbmFzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
