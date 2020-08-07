Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5A323EE26
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 15:26:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C386F6E12B;
	Fri,  7 Aug 2020 13:26:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03B846E12B
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 13:26:15 +0000 (UTC)
IronPort-SDR: N9GD1L8zuQAmKUsm8ZEW64/G2Hp5XxrU519yakVhzI7I3JCe9hspERnDuZPvrO++CHzqvB5lFA
 xwSNC0SoM3DA==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="150523198"
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="150523198"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 06:26:15 -0700
IronPort-SDR: vd/bHGllwxJVBGGqT78UbMQJQ484mMBuN9m2RyVof7Q6x39EZTKKZzv7uwkv7sMb84vo2jHu5k
 RKaa5Zbz0M/Q==
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="468227777"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 06:26:13 -0700
Date: Fri, 7 Aug 2020 18:44:24 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200807131424.GD30770@intel.com>
References: <20200724213918.27424-1-lucas.demarchi@intel.com>
 <20200724213918.27424-23-lucas.demarchi@intel.com>
 <b74c416a220331321552464c33bb06080dd99baa.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b74c416a220331321552464c33bb06080dd99baa.camel@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v5 22/22] drm/i915/dg1: Change DMC_DEBUG{1,
 2} registers
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAyMC0wOC0wNCBhdCAwNTowMTozNyArMDUzMCwgU291emEsIEpvc2Ugd3JvdGU6Cj4gT24g
RnJpLCAyMDIwLTA3LTI0IGF0IDE0OjM5IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6Cj4g
PiBGcm9tOiBBbnNodW1hbiBHdXB0YSA8Cj4gPiBhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20KPiA+
ID4KPiA+IAo+ID4gREdGWCBkZXZpY2VzIGhhdmUgZGlmZmVyZW50IERNQ19ERUJVRyogY291bnRl
ciBNTUlPIGFkZHJlc3MKPiA+IG9mZnNldC4gSW5jb3Jwb3JhdGUgdGhlc2UgY2hhbmdlcyBpbiBp
OTE1X3JlZy5oIGZvciBERzEgREM1L0RDNgo+ID4gY291bnRlciBhbmQgaGFuZGxlIGk5MTVfZG1j
X2luZm8gYWNjb3JkaW5nbHkuCj4gPiAKPiA+IENjOiBVbWEgU2hhbmthciA8Cj4gPiB1bWEuc2hh
bmthckBpbnRlbC5jb20KPiA+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDwK
PiA+IGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbQo+ID4gPgo+ID4gU2lnbmVkLW9mZi1ieTogTHVj
YXMgRGUgTWFyY2hpIDwKPiA+IGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbQo+ID4gPgo+ID4gLS0t
Cj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMu
YyB8IDkgKysrKysrKy0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAg
ICAgICAgICAgICAgICAgICB8IDIgKysKPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jCj4gPiBpbmRleCAzNjQ0NzUyY2M1
ZWMuLmUzNTM2ZWRjYjM5NCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMKPiA+IEBAIC01MTUsOCArNTE1LDEz
IEBAIHN0YXRpYyBpbnQgaTkxNV9kbWNfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKnVu
dXNlZCkKPiA+ICAJCSAgIENTUl9WRVJTSU9OX01JTk9SKGNzci0+dmVyc2lvbikpOwo+ID4gIAo+
ID4gIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgewo+ID4gLQkJZGM1X3JlZyA9IFRH
TF9ETUNfREVCVUdfREM1X0NPVU5UOwo+ID4gLQkJZGM2X3JlZyA9IFRHTF9ETUNfREVCVUdfREM2
X0NPVU5UOwo+ID4gKwkJaWYgKElTX0RHMShkZXZfcHJpdikpIHsKPiA+ICsJCQlkYzVfcmVnID0g
REcxX0RNQ19ERUJVR19EQzVfQ09VTlQ7Cj4gPiArCQl9IGVsc2Ugewo+ID4gKwkJCWRjNV9yZWcg
PSBUR0xfRE1DX0RFQlVHX0RDNV9DT1VOVDsKPiA+ICsJCQlkYzZfcmVnID0gVEdMX0RNQ19ERUJV
R19EQzZfQ09VTlQ7Cj4gPiArCQl9Cj4gPiArCj4gPiAgCQkvKgo+ID4gIAkJICogTk9URTogRE1D
X0RFQlVHMyBpcyBhIGdlbmVyYWwgcHVycG9zZSByZWcuCj4gPiAgCQkgKiBBY2NvcmRpbmcgdG8g
Qi5TcGVjczo0OTE5NiBETUMgZi93IHJldXNlcyBEQzUvNiBjb3VudGVyCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgKPiA+IGluZGV4IDRlOTUzMTJlYmEyNC4uNzhiZGNlNjdkYTA4IDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ID4gQEAgLTc1NDksNiArNzU0OSw4IEBAIGVudW0g
ewo+ID4gICNkZWZpbmUgQlhUX0NTUl9EQzNfREM1X0NPVU5UCV9NTUlPKDB4ODAwMzgpCj4gPiAg
I2RlZmluZSBUR0xfRE1DX0RFQlVHX0RDNV9DT1VOVAlfTU1JTygweDEwMTA4NCkKPiA+ICAjZGVm
aW5lIFRHTF9ETUNfREVCVUdfREM2X0NPVU5UCV9NTUlPKDB4MTAxMDg4KQo+ID4gKyNkZWZpbmUg
REcxX0RNQ19ERUJVR19EQzVfQ09VTlQJX01NSU8oMHgxMzQxNTQpCj4gPiArI2RlZmluZSBERzFf
RE1DX0RFQlVHX0RDNl9DT1VOVAlfTU1JTygweDEzNDE1OCkKPiAKPiBERzFfRE1DX0RFQlVHX0RD
Nl9DT1VOVCBpcyBub3QgdXNlZCBhcyBERzEgZG8gbm90IHN1cHBvcnQgREM2Lgo+IFJlbW92aW5n
IGl0OgpERzFfRE1DX0RFQlVHX0RDNl9DT1VOVCBpcyBzdGlsbCB2YWxpZCBETUNfREVCVUcgY291
bnRlciBmb3IgZnV0dXJlCmlnZnggcGxhdGZvcm1zLCBjb25zaWRlcmluZyBuYW1lIGNvbnNpc3Rl
bmN5IGl0IGhhcyBiZWVuIGtlcHQgd2l0aCBuYW1lIERHMV8qCmlubGluZSB0byBCLlNwZWMgSW5k
ZXg6NDk3ODcuCgpUaGFua3MsCkFuc2h1bWFuIEd1cHRhLgo+IAo+IFJldmlld2VkLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiAKPiAKPiA+ICAKPiA+
ICAjZGVmaW5lIERNQ19ERUJVRzMJCV9NTUlPKDB4MTAxMDkwKQo+ID4gIAo+ID4gCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFp
bGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
