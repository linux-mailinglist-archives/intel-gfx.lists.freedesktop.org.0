Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCC7211180
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 19:03:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEE0C6E14A;
	Wed,  1 Jul 2020 17:03:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6E8B6E14A
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 17:03:37 +0000 (UTC)
IronPort-SDR: 0R/gpnkTlQxPJA/XVziZn4xiM9fuopohs10v5z3IUgthzFKjeAufKdOIfMZrC/oNbu+0pGFP3F
 /uhSfO6Wygpg==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="148193981"
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="148193981"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 10:03:37 -0700
IronPort-SDR: kf1mVnl+HhINSrnFIJev9dX35XogzVt0VghDO8Cda7xKHdcxOhpntz/BhsgCibMBi/bp21w6ey
 j7BklJ1mAxcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="265461845"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga007.fm.intel.com with ESMTP; 01 Jul 2020 10:03:35 -0700
Received: from [10.249.153.138] (mwajdecz-mobl.ger.corp.intel.com
 [10.249.153.138])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 061H3ZbU002508
 for <intel-gfx@lists.freedesktop.org>; Wed, 1 Jul 2020 18:03:35 +0100
To: intel-gfx@lists.freedesktop.org
References: <20200701150721.423630-1-michal@hardline.pl>
 <159361667722.23379.11112968827469591639@build.alporthouse.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <2e496c70-bb81-aad5-1d7d-8a56fc71f72e@intel.com>
Date: Wed, 1 Jul 2020 19:03:34 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <159361667722.23379.11112968827469591639@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reboot CI if we get wedged during
 driver init
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAwMS4wNy4yMDIwIDE3OjE3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gUXVvdGluZyBNaWNo
YcWCIFdpbmlhcnNraSAoMjAyMC0wNy0wMSAxNjowNzoyMSkKPj4gRnJvbTogTWljaGHFgiBXaW5p
YXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgo+Pgo+PiBHZXR0aW5nIHdlZGdlZCBk
ZXZpY2Ugb24gZHJpdmVyIGluaXQgaXMgcHJldHR5IG11Y2ggdW5yZWNvdmVyYWJsZS4KPj4gU2lu
Y2Ugd2UncmUgcnVubmluZyB2ZXJpb3VzIHNjZW5hcmlvcyB0aGF0IG1heSBwb3RlbnRpYWxseSBo
aXQgdGhpcyBpbgoKdHlwbwoKPj4gQ0kgKG1vZHVsZSByZWxvYWQgLyBzZWxmdGVzdHMgLyBob3R1
bnBsdWcpLCBhbmQgaWYgaXQgaGFwcGVucywgaXQgbWVhbnMKPj4gdGhhdCB3ZSBjYW4ndCB0cnVz
dCBhbnkgc3Vic2VxdWVudCBDSSByZXN1bHRzLCB3ZSBzaG91bGQganVzdCBhcHBseSB0aGUKPj4g
dGFpbnQgdG8gbGV0IHRoZSBDSSBrbm93IHRoYXQgaXQgc2hvdWxkIHJlYm9vdCAoQ0kgY2hlY2tz
IHRhaW50IGJldHdlZW4KPj4gdGVzdCBydW5zKS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTWljaGHF
giBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgo+PiBDYzogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+IENjOiBQZXRyaSBMYXR2YWxhIDxwZXRy
aS5sYXR2YWxhQGludGVsLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yZXNldC5jIHwgMiArKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+
Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKPj4gaW5kZXggMDE1NmYxZjVj
NzM2Li5kMjdlOGJiN2Q1NTAgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3Jlc2V0LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVz
ZXQuYwo+PiBAQCAtMTM2MCw2ICsxMzYwLDggQEAgdm9pZCBpbnRlbF9ndF9zZXRfd2VkZ2VkX29u
X2luaXQoc3RydWN0IGludGVsX2d0ICpndCkKPj4gICAgICAgICAgICAgICAgICAgICAgSTkxNV9X
RURHRURfT05fSU5JVCk7Cj4+ICAgICAgICAgaW50ZWxfZ3Rfc2V0X3dlZGdlZChndCk7Cj4+ICAg
ICAgICAgc2V0X2JpdChJOTE1X1dFREdFRF9PTl9JTklULCAmZ3QtPnJlc2V0LmZsYWdzKTsKPj4g
Kwo+IAo+IEFoLCB3ZSBkb24ndCBzYXkgYXJvdW5kIGhlcmUgdGhhdCB0aGlzIFdFREdFRF9PTl9J
TklUIGlzIG5vbi1yZWNvdmVyYWJsZSwKPiBjb3VsZCB5b3UgcGxlYXNlIGFkZCBhIGNvbW1lbnQg
dG8gdGhhdCBlZmZlY3Q/Cj4gCgpTdWNoIGNvbW1lbnQgaXMgYWxyZWFkeSBpbiBXRURHRURfT05f
SU5JVCBkZXNjcmlwdGlvbiwgYnV0IHJlcGVhdGluZyBpdAp3aWxsIGRlZmluaXRlbHkgaGVscAoK
Pj4gKyAgICAgICBhZGRfdGFpbnRfZm9yX0NJKFRBSU5UX1dBUk4pOwoKYnR3LCB0b2RheSB3ZSBh
cmUgdGFpbnRpbmcga2VybmVsIGZvciBDSSBzaWxlbnRseSBhbmQgZnJvbSBkaWZmZXJlbnQKcGxh
Y2VzLCBzbyBtYXliZSBpdCBpcyB3b3J0aCB0byBhZGQgdGhlcmUgc29tZSBkZWJ1ZyBsb2cgd2l0
aApfX2J1aWx0aW5fcmV0dXJuX2FkZHJlc3MoKSBmb3IgYmV0dGVyIGRpYWdub3NlIHdoeSB3ZSBz
dG9wcGVkIENJPwoKd2l0aCB0eXBvL2NvbW1lbnQgZml4ZWQsClJldmlld2VkLWJ5OiBNaWNoYWwg
V2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KCj4+ICB9Cj4+ICAKPj4gIHZv
aWQgaW50ZWxfZ3RfaW5pdF9yZXNldChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+PiAtLSAKPj4gMi4y
Ny4wCj4+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
