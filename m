Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA967A066B
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 17:35:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC00789D43;
	Wed, 28 Aug 2019 15:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9A0589D43
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 15:35:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 08:35:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,441,1559545200"; d="scan'208";a="380438272"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by fmsmga005.fm.intel.com with ESMTP; 28 Aug 2019 08:35:10 -0700
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 28 Aug 2019 08:35:10 -0700
Received: from bgsmsx103.gar.corp.intel.com (10.223.4.130) by
 FMSMSX125.amr.corp.intel.com (10.18.125.40) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 28 Aug 2019 08:35:10 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.178]) by
 BGSMSX103.gar.corp.intel.com ([169.254.4.129]) with mapi id 14.03.0439.000;
 Wed, 28 Aug 2019 21:05:07 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v8][PATCH 04/10] drm/i915/display: Add macro to compare gamma
 hw/sw lut
Thread-Index: AQHVW9i4obgMOyv8TkyrM6vTfhCVX6cQtDxA
Date: Wed, 28 Aug 2019 15:35:06 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F821D3931@BGSMSX104.gar.corp.intel.com>
References: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
 <1566800772-18412-5-git-send-email-swati2.sharma@intel.com>
In-Reply-To: <1566800772-18412-5-git-send-email-swati2.sharma@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYWU5ZDIyYmYtNTc5MC00OTZkLWE4OGEtNTEyZmVhZWYzYWQ3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoicGd6OHRHc3I0ZTR2ZmdQdndUREZmY2dPbDJKcm1QdDNSUERFaUROUEdQU2R0TDd1YkdYZkZkWlZFejRKZDZDbyJ9
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v8][PATCH 04/10] drm/i915/display: Add macro to
 compare gamma hw/sw lut
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IFNoYXJtYSwgU3dhdGkyCj5TZW50
OiBNb25kYXksIEF1Z3VzdCAyNiwgMjAxOSAxMTo1NiBBTQo+VG86IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPkNjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47
IFNoYXJtYSwgU2hhc2hhbmsKPjxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPjsgTWFubmEsIEFu
aW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsKPk5hdXRpeWFsLCBBbmtpdCBLIDxhbmtp
dC5rLm5hdXRpeWFsQGludGVsLmNvbT47IGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g7Cj52aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbTsgU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5j
b20+OyBTaGFybWEsCj5Td2F0aTIgPHN3YXRpMi5zaGFybWFAaW50ZWwuY29tPgo+U3ViamVjdDog
W3Y4XVtQQVRDSCAwNC8xMF0gZHJtL2k5MTUvZGlzcGxheTogQWRkIG1hY3JvIHRvIGNvbXBhcmUg
Z2FtbWEgaHcvc3cKPmx1dAo+Cj5BZGQgbWFjcm8gdG8gY29tcGFyZSBody9zdyBnYW1tYSBsdXQg
dmFsdWVzLiBGaXJzdCBuZWVkIHRvIGNoZWNrIHdoZXRoZXIgaHcvc3cKPmdhbW1hIG1vZGUgbWF0
Y2hlcyBvciBub3QuIElmIG5vdCBubyBuZWVkIHRvIGNvbXBhcmUgbHV0IHZhbHVlcywgaWYgbWF0
Y2hlcyB0aGVuCj5vbmx5IGNvbXBhcmUgbHV0IGVudHJpZXMuCgpMb29rcyBnb29kIHRvIG1lLgpS
ZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KCj5TaWduZWQt
b2ZmLWJ5OiBTd2F0aSBTaGFybWEgPHN3YXRpMi5zaGFybWFAaW50ZWwuY29tPgo+LS0tCj4gZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAyNSArKysrKysrKysr
KysrKysrKysrKysrKysrCj4gMSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKykKPgo+ZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj5i
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj5pbmRleCBjYTg4
YzcwLi42M2I3YWQ3IDEwMDY0NAo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCj5AQCAtMTI1MjksNiArMTI1MjksNyBAQCBzdGF0aWMgYm9vbCBmYXN0Ym9vdF9l
bmFibGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlCj4qZGV2X3ByaXYpICB7Cj4gCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3VycmVudF9jb25maWctPmJhc2Uu
Y3J0Yy0KPj5kZXYpOwo+IAlib29sIHJldCA9IHRydWU7Cj4rCXUzMiBicF9nYW1tYSA9IDA7Cj4g
CWJvb2wgZml4dXBfaW5oZXJpdGVkID0gZmFzdHNldCAmJgo+IAkJKGN1cnJlbnRfY29uZmlnLT5i
YXNlLm1vZGUucHJpdmF0ZV9mbGFncyAmCj5JOTE1X01PREVfRkxBR19JTkhFUklURUQpICYmCj4g
CQkhKHBpcGVfY29uZmlnLT5iYXNlLm1vZGUucHJpdmF0ZV9mbGFncyAmCj5JOTE1X01PREVfRkxB
R19JTkhFUklURUQpOyBAQCAtMTI2ODAsNiArMTI2ODEsMjQgQEAgc3RhdGljIGJvb2wKPmZhc3Ri
b290X2VuYWJsZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+IAl9IFwKPiB9
IHdoaWxlICgwKQo+Cj4rI2RlZmluZSBQSVBFX0NPTkZfQ0hFQ0tfQ09MT1JfTFVUKG5hbWUxLCBu
YW1lMiwgYml0X3ByZWNpc2lvbikgZG8geyBcCj4rCWlmIChjdXJyZW50X2NvbmZpZy0+bmFtZTEg
IT0gcGlwZV9jb25maWctPm5hbWUxKSB7IFwKPisJCXBpcGVfY29uZmlnX21pc21hdGNoKGZhc3Rz
ZXQsIF9fc3RyaW5naWZ5KG5hbWUxKSwgXAo+KwkJCQkiKGV4cGVjdGVkICVpLCBmb3VuZCAlaSwg
d29uJ3QgY29tcGFyZSBsdXQKPnZhbHVlcylcbiIsIFwKPisJCQkJY3VycmVudF9jb25maWctPm5h
bWUxLCBcCj4rCQkJCXBpcGVfY29uZmlnLT5uYW1lMSk7IFwKPisJCXJldCA9IGZhbHNlO1wKPisJ
fSBlbHNlIHsgXAo+KwkJaWYgKCFpbnRlbF9jb2xvcl9sdXRfZXF1YWwoY3VycmVudF9jb25maWct
Pm5hbWUyLCBcCj4rCQkJCQlwaXBlX2NvbmZpZy0+bmFtZTIsIHBpcGVfY29uZmlnLT5uYW1lMSwg
XAo+KwkJCQkJYml0X3ByZWNpc2lvbikpIHsgXAo+KwkJCXBpcGVfY29uZmlnX21pc21hdGNoKGZh
c3RzZXQsIF9fc3RyaW5naWZ5KG5hbWUyKSwgXAo+KwkJCQkJImh3X3N0YXRlIGRvZXNuJ3QgbWF0
Y2ggc3dfc3RhdGVcbiIpOyBcCj4rCQkJcmV0ID0gZmFsc2U7IFwKPisJCX0gXAo+Kwl9IFwKPit9
IHdoaWxlICgwKQo+Kwo+ICNkZWZpbmUgUElQRV9DT05GX1FVSVJLKHF1aXJrKSBcCj4gCSgoY3Vy
cmVudF9jb25maWctPnF1aXJrcyB8IHBpcGVfY29uZmlnLT5xdWlya3MpICYgKHF1aXJrKSkKPgo+
QEAgLTEyNzc1LDYgKzEyNzk0LDExIEBAIHN0YXRpYyBib29sIGZhc3Rib290X2VuYWJsZWQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUKPipkZXZfcHJpdikKPiAJCQlQSVBFX0NPTkZfQ0hFQ0tfWChj
c2NfbW9kZSk7Cj4gCQlQSVBFX0NPTkZfQ0hFQ0tfQk9PTChnYW1tYV9lbmFibGUpOwo+IAkJUElQ
RV9DT05GX0NIRUNLX0JPT0woY3NjX2VuYWJsZSk7Cj4rCj4rCQlicF9nYW1tYSA9IGludGVsX2Nv
bG9yX2dldF9nYW1tYV9iaXRfcHJlY2lzaW9uKHBpcGVfY29uZmlnKTsKPisJCWlmIChicF9nYW1t
YSkKPisJCQlQSVBFX0NPTkZfQ0hFQ0tfQ09MT1JfTFVUKGdhbW1hX21vZGUsCj5iYXNlLmdhbW1h
X2x1dCwgYnBfZ2FtbWEpOwo+Kwo+IAl9Cj4KPiAJUElQRV9DT05GX0NIRUNLX0JPT0woZG91Ymxl
X3dpZGUpOwo+QEAgLTEyODM3LDYgKzEyODYxLDcgQEAgc3RhdGljIGJvb2wgZmFzdGJvb3RfZW5h
YmxlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQo+KmRldl9wcml2KSAgI3VuZGVmIFBJUEVfQ09O
Rl9DSEVDS19QICAjdW5kZWYgUElQRV9DT05GX0NIRUNLX0ZMQUdTICAjdW5kZWYKPlBJUEVfQ09O
Rl9DSEVDS19DTE9DS19GVVpaWQo+KyN1bmRlZiBQSVBFX0NPTkZfQ0hFQ0tfQ09MT1JfTFVUCj4g
I3VuZGVmIFBJUEVfQ09ORl9RVUlSSwo+Cj4gCXJldHVybiByZXQ7Cj4tLQo+MS45LjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
