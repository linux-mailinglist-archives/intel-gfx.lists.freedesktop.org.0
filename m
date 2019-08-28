Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA81A06F2
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 18:08:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 458D689D7F;
	Wed, 28 Aug 2019 16:08:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B45E389D5B
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 16:08:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 09:08:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,441,1559545200"; d="scan'208";a="264692209"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga001.jf.intel.com with ESMTP; 28 Aug 2019 09:08:26 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 28 Aug 2019 09:08:26 -0700
Received: from bgsmsx151.gar.corp.intel.com (10.224.48.42) by
 FMSMSX113.amr.corp.intel.com (10.18.116.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 28 Aug 2019 09:08:26 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.178]) by
 BGSMSX151.gar.corp.intel.com ([169.254.3.99]) with mapi id 14.03.0439.000;
 Wed, 28 Aug 2019 21:38:23 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v8][PATCH 06/10] drm/i91/display: Extract i965_read_luts()
Thread-Index: AQHVW9iu4ZgcZ9h+r0q0iS8lBxBdhacQu4rw
Date: Wed, 28 Aug 2019 16:08:22 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F821D39F8@BGSMSX104.gar.corp.intel.com>
References: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
 <1566800772-18412-7-git-send-email-swati2.sharma@intel.com>
In-Reply-To: <1566800772-18412-7-git-send-email-swati2.sharma@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDU2MTQ4NDItNTBlYi00NGQ2LTljYzktZmMwZTlmODE3ZDg5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoid0hcL3dCbzh4S1hkMDNTQm5iS0lcLzJxQzdZQXZDZkZvVlVCYjJBbDl6Q0NTalJiYnNKZjNXSmliNUdcL25oN1o0NSJ9
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v8][PATCH 06/10] drm/i91/display: Extract
 i965_read_luts()
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
W3Y4XVtQQVRDSCAwNi8xMF0gZHJtL2k5MS9kaXNwbGF5OiBFeHRyYWN0IGk5NjVfcmVhZF9sdXRz
KCkKClR5cG8gaW4gaTkxNS4KCj4KPkZvciBpOTY1LCBoYXZlIGh3IHJlYWQgb3V0IHRvIGNyZWF0
ZSBodyBibG9iIG9mIGdhbW1hIGx1dCB2YWx1ZXMuCkluc3RlYWQgb2YgImhhdmUiLCBJIGZlZWwg
ImFkZCIgd291bGQgc291bmQgYmV0dGVyLgoKQWxzbywgZG9uJ3QgZHJvcCB2ZXJzaW9uIGhpc3Rv
cnkuCgo+U2lnbmVkLW9mZi1ieTogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNv
bT4KPi0tLQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8IDM5
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmggICAgICAgICAgICB8ICAzICsrKwo+IDIgZmlsZXMgY2hhbmdlZCwgNDIgaW5zZXJ0
aW9ucygrKQo+Cj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jb2xvci5jCj5iL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwo+
aW5kZXggNDVlMGVlOC4uYzc3YmJlZCAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwo+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb2xvci5jCj5AQCAtMTU3MSw2ICsxNTcxLDQ0IEBAIHZvaWQgaTl4eF9yZWFkX2x1
dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gCWNydGNfc3RhdGUtPmJh
c2UuZ2FtbWFfbHV0ID0gaTl4eF9yZWFkX2x1dF84KGNydGNfc3RhdGUpOyAgfQo+Cj4rc3RhdGlj
IHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqCj4raTk2NV9yZWFkX2dhbW1hX2x1dF8xMHA2KHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSB7CgpZb3UgY2FuIHJlbmFtZSB0aGlz
IGFzICIgaTk2NV9yZWFkX2x1dF8xMHA2IiBhcyBwb2ludGVkIGJ5IFZpbGxlIGFzIHdlbGwuCldp
bGwgaGVscCBleHRlbmQgZm9yIGRlLWdhbW1hIGxhdGVyIGFuZCBjYW4gYmUgcmUtdXNlZC4KCkFs
c28gbWFrZSB0aGVzZSBjb25zdCwgYXMgcmVjb21tZW5kZWQgYnkgVmlsbGUuIAoKPisJc3RydWN0
IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPmJhc2UuY3J0Yyk7
Cj4rCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFz
ZS5kZXYpOwo+Kwl1MzIgaSwgdmFsMSwgdmFsMiwgbHV0X3NpemUgPSBJTlRFTF9JTkZPKGRldl9w
cml2KS0+Y29sb3IuZ2FtbWFfbHV0X3NpemU7CgpNb3ZlIHRvIG5leHQgbGluZSB0byBob25vdXIg
ODAgY2hhcmFjdGVyIGxpbWl0cy4KCj4rCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKPisJ
c3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpibG9iOwo+KwlzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAq
YmxvYl9kYXRhOwo+Kwo+KwlibG9iID0gZHJtX3Byb3BlcnR5X2NyZWF0ZV9ibG9iKCZkZXZfcHJp
di0+ZHJtLAo+KwkJCQkJc2l6ZW9mKHN0cnVjdCBkcm1fY29sb3JfbHV0KSAqIGx1dF9zaXplLAo+
KwkJCQkJTlVMTCk7Cj4rCWlmIChJU19FUlIoYmxvYikpCj4rCQlyZXR1cm4gTlVMTDsKPisKPisJ
YmxvYl9kYXRhID0gYmxvYi0+ZGF0YTsKPisKPisJZm9yIChpID0gMDsgaSA8IGx1dF9zaXplIC0g
MTsgaSsrKSB7Cj4rCQl2YWwxID0gSTkxNV9SRUFEKFBBTEVUVEUocGlwZSwgMiAqIGkgKyAwKSk7
Cj4rCQl2YWwyID0gSTkxNV9SRUFEKFBBTEVUVEUocGlwZSwgMiAqIGkgKyAxKSk7Cj4rCj4rCQli
bG9iX2RhdGFbaV0ucmVkID0gUkVHX0ZJRUxEX0dFVChQQUxFVFRFX1JFRF9NQVNLLCB2YWwxKSA8
PCA4IHwKPlJFR19GSUVMRF9HRVQoUEFMRVRURV9SRURfTUFTSywgdmFsMik7Cj4rCQlibG9iX2Rh
dGFbaV0uZ3JlZW4gPSBSRUdfRklFTERfR0VUKFBBTEVUVEVfR1JFRU5fTUFTSywgdmFsMSkKPjw8
IDggfCBSRUdfRklFTERfR0VUKFBBTEVUVEVfR1JFRU5fTUFTSywgdmFsMik7Cj4rCQlibG9iX2Rh
dGFbaV0uYmx1ZSA9IFJFR19GSUVMRF9HRVQoUEFMRVRURV9CTFVFX01BU0ssIHZhbDEpIDw8IDgK
PnwgUkVHX0ZJRUxEX0dFVChQQUxFVFRFX0JMVUVfTUFTSywgdmFsMikgOwo+Kwl9Cj4rCj4rCXJl
dHVybiBibG9iOwo+K30KPisKPitzdGF0aWMgdm9pZCBpOTY1X3JlYWRfbHV0cyhzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgewo+KwlpZiAoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9k
ZSA9PSBHQU1NQV9NT0RFX01PREVfOEJJVCkKPisJCWNydGNfc3RhdGUtPmJhc2UuZ2FtbWFfbHV0
ID0gaTl4eF9yZWFkX2x1dF84KGNydGNfc3RhdGUpOwo+KwllbHNlCj4rCQljcnRjX3N0YXRlLT5i
YXNlLmdhbW1hX2x1dCA9Cj5pOTY1X3JlYWRfZ2FtbWFfbHV0XzEwcDYoY3J0Y19zdGF0ZSk7Cj4r
fQo+Kwo+IHZvaWQgaW50ZWxfY29sb3JfaW5pdChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykgIHsK
PiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNl
LmRldik7IEBAIC0xNTg2LDYKPisxNjI0LDcgQEAgdm9pZCBpbnRlbF9jb2xvcl9pbml0KHN0cnVj
dCBpbnRlbF9jcnRjICpjcnRjKQo+IAkJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDQpIHsKPiAJCQlkZXZfcHJpdi0+ZGlzcGxheS5jb2xvcl9jaGVjayA9IGk5eHhfY29sb3JfY2hl
Y2s7Cj4gCQkJZGV2X3ByaXYtPmRpc3BsYXkuY29sb3JfY29tbWl0ID0gaTl4eF9jb2xvcl9jb21t
aXQ7Cj4rCQkJZGV2X3ByaXYtPmRpc3BsYXkucmVhZF9sdXRzID0gaTk2NV9yZWFkX2x1dHM7Cj4g
CQkJZGV2X3ByaXYtPmRpc3BsYXkubG9hZF9sdXRzID0gaTk2NV9sb2FkX2x1dHM7Cj4gCQl9IGVs
c2Ugewo+IAkJCWRldl9wcml2LT5kaXNwbGF5LmNvbG9yX2NoZWNrID0gaTl4eF9jb2xvcl9jaGVj
azsgZGlmZiAtLWdpdAo+YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBpbmRleAo+YjY4N2ZhYS4uYjMwYjBjNmIgMTAwNjQ0
Cj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4rKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCj5AQCAtMzU1OCw2ICszNTU4LDkgQEAgc3RhdGljIGlubGlu
ZSBib29sIGk5MTVfbW1pb19yZWdfdmFsaWQoaTkxNV9yZWdfdCByZWcpCj4gI2RlZmluZSBfUEFM
RVRURV9BCQkweGEwMDAKPiAjZGVmaW5lIF9QQUxFVFRFX0IJCTB4YTgwMAo+ICNkZWZpbmUgX0NI
Vl9QQUxFVFRFX0MJCTB4YzAwMAo+KyNkZWZpbmUgUEFMRVRURV9SRURfTUFTSyAgICAgICAgUkVH
X0dFTk1BU0soMjMsIDE2KQo+KyNkZWZpbmUgUEFMRVRURV9HUkVFTl9NQVNLICAgICAgUkVHX0dF
Tk1BU0soMTUsIDgpCj4rI2RlZmluZSBQQUxFVFRFX0JMVUVfTUFTSyAgICAgICBSRUdfR0VOTUFT
Syg3LCAwKQo+ICNkZWZpbmUgUEFMRVRURShwaXBlLCBpKQlfTU1JTyhESVNQTEFZX01NSU9fQkFT
RShkZXZfcHJpdikgKyBcCj4gCQkJCSAgICAgIF9QSUNLKChwaXBlKSwgX1BBTEVUVEVfQSwJCVwK
PiAJCQkJCSAgICBfUEFMRVRURV9CLCBfQ0hWX1BBTEVUVEVfQykgKyBcCj4tLQo+MS45LjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
