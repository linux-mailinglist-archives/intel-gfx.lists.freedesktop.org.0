Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E18252D3BE6
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 08:03:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4B3F6E11C;
	Wed,  9 Dec 2020 07:03:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 235B06E10F
 for <Intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 07:03:43 +0000 (UTC)
IronPort-SDR: 3lXAniml2/+yDsaJpNAK8RzTwoB6mdgXFqbE9jbpHCYQp7IqBhw2bIwujabQP04sslYOp0h1ja
 +ImDrzbPycWQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9829"; a="238134540"
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; d="scan'208";a="238134540"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 23:03:41 -0800
IronPort-SDR: FHseBMJe1WdmXmQOotMIl60q8ps8LkIAxv2yyMzbEQ9z12i4jsyHTK6G3bb0WqVa2clgRKbtu1
 RgJKR0Vn8kVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; d="scan'208";a="368074111"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga004.fm.intel.com with ESMTP; 08 Dec 2020 23:03:40 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  8 Dec 2020 23:03:04 -0800
Message-Id: <20201209070307.2304-11-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201209070307.2304-1-sean.z.huang@intel.com>
References: <20201209070307.2304-1-sean.z.huang@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC-v3 10/13] mei: pxp: export pavp client to me
 client bus
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
Cc: Vitaly Lubart <vitaly.lubart@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVml0YWx5IEx1YmFydCA8dml0YWx5Lmx1YmFydEBpbnRlbC5jb20+CgpFeHBvcnQgUEFW
UCBjbGllbnQgdG8gd29yayB3aXRoIGk5MTVfY3AgZHJpdmVyLApmb3IgYmluZGluZyBpdCB1c2Vz
IGtlcm5lbCBjb21wb25lbnQgZnJhbWV3b3JrLgoKU2lnbmVkLW9mZi1ieTogVml0YWx5IEx1YmFy
dCA8dml0YWx5Lmx1YmFydEBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFRvbWFzIFdpbmtsZXIg
PHRvbWFzLndpbmtsZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvbWlzYy9tZWkvS2NvbmZpZyAg
ICAgICB8ICAgMiArCiBkcml2ZXJzL21pc2MvbWVpL01ha2VmaWxlICAgICAgfCAgIDEgKwogZHJp
dmVycy9taXNjL21laS9weHAvS2NvbmZpZyAgIHwgIDEzICsrCiBkcml2ZXJzL21pc2MvbWVpL3B4
cC9NYWtlZmlsZSAgfCAgIDcgKwogZHJpdmVycy9taXNjL21laS9weHAvbWVpX3B4cC5jIHwgMjMw
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogZHJpdmVycy9taXNjL21laS9weHAv
bWVpX3B4cC5oIHwgIDE4ICsrKwogNiBmaWxlcyBjaGFuZ2VkLCAyNzEgaW5zZXJ0aW9ucygrKQog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWlzYy9tZWkvcHhwL0tjb25maWcKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL21pc2MvbWVpL3B4cC9NYWtlZmlsZQogY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvbWlzYy9tZWkvcHhwL21laV9weHAuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvbWlzYy9tZWkvcHhwL21laV9weHAuaAoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWlzYy9t
ZWkvS2NvbmZpZyBiL2RyaXZlcnMvbWlzYy9tZWkvS2NvbmZpZwppbmRleCBmNWZkNWI3ODY2MDcu
LjBlMGJjZDBkYTg1MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9taXNjL21laS9LY29uZmlnCisrKyBi
L2RyaXZlcnMvbWlzYy9tZWkvS2NvbmZpZwpAQCAtNDcsMyArNDcsNSBAQCBjb25maWcgSU5URUxf
TUVJX1RYRQogCSAgSW50ZWwgQmF5IFRyYWlsCiAKIHNvdXJjZSAiZHJpdmVycy9taXNjL21laS9o
ZGNwL0tjb25maWciCitzb3VyY2UgImRyaXZlcnMvbWlzYy9tZWkvcHhwL0tjb25maWciCisKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbWlzYy9tZWkvTWFrZWZpbGUgYi9kcml2ZXJzL21pc2MvbWVpL01h
a2VmaWxlCmluZGV4IGYxYzc2ZjdlZTgwNC4uZDhlNTE2NTkxN2YyIDEwMDY0NAotLS0gYS9kcml2
ZXJzL21pc2MvbWVpL01ha2VmaWxlCisrKyBiL2RyaXZlcnMvbWlzYy9tZWkvTWFrZWZpbGUKQEAg
LTI2LDMgKzI2LDQgQEAgbWVpLSQoQ09ORklHX0VWRU5UX1RSQUNJTkcpICs9IG1laS10cmFjZS5v
CiBDRkxBR1NfbWVpLXRyYWNlLm8gPSAtSSQoc3JjKQogCiBvYmotJChDT05GSUdfSU5URUxfTUVJ
X0hEQ1ApICs9IGhkY3AvCitvYmotJChDT05GSUdfSU5URUxfTUVJX1BYUCkgKz0gcHhwLwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9taXNjL21laS9weHAvS2NvbmZpZyBiL2RyaXZlcnMvbWlzYy9tZWkv
cHhwL0tjb25maWcKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi40MDI5
Yjk2YWZjMDQKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL21pc2MvbWVpL3B4cC9LY29uZmln
CkBAIC0wLDAgKzEsMTMgQEAKKworIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAor
IyBDb3B5cmlnaHQgKGMpIDIwMjAsIEludGVsIENvcnBvcmF0aW9uLiBBbGwgcmlnaHRzIHJlc2Vy
dmVkLgorIworY29uZmlnIElOVEVMX01FSV9QWFAKKwl0cmlzdGF0ZSAiSW50ZWwgUFhQIHNlcnZp
Y2VzIG9mIE1FIEludGVyZmFjZSIKKwlzZWxlY3QgSU5URUxfTUVJX01FCisJZGVwZW5kcyBvbiBE
Uk1fSTkxNQorCWhlbHAKKwkgIE1FSSBTdXBwb3J0IGZvciBQWFAgU2VydmljZXMgb24gSW50ZWwg
cGxhdGZvcm1zLgorCisJICBFbmFibGVzIHRoZSBNRSBGVyBzZXJ2aWNlcyByZXF1aXJlZCBmb3Ig
UFhQIHN1cHBvcnQgdGhyb3VnaAorCSAgSTkxNSBkaXNwbGF5IGRyaXZlciBvZiBJbnRlbC4KZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbWlzYy9tZWkvcHhwL01ha2VmaWxlIGIvZHJpdmVycy9taXNjL21l
aS9weHAvTWFrZWZpbGUKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4w
MzI5OTUwZDU3OTQKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL21pc2MvbWVpL3B4cC9NYWtl
ZmlsZQpAQCAtMCwwICsxLDcgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAK
KyMKKyMgQ29weXJpZ2h0IChjKSAyMDIwLCBJbnRlbCBDb3Jwb3JhdGlvbi4gQWxsIHJpZ2h0cyBy
ZXNlcnZlZC4KKyMKKyMgTWFrZWZpbGUgLSBQWFAgY2xpZW50IGRyaXZlciBmb3IgSW50ZWwgTUVJ
IEJ1cyBEcml2ZXIuCisKK29iai0kKENPTkZJR19JTlRFTF9NRUlfUFhQKSArPSBtZWlfcHhwLm8K
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWlzYy9tZWkvcHhwL21laV9weHAuYyBiL2RyaXZlcnMvbWlz
Yy9tZWkvcHhwL21laV9weHAuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAw
MDAuLjViZDYxZmU0NDVlMwotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvbWlzYy9tZWkvcHhw
L21laV9weHAuYwpAQCAtMCwwICsxLDIzMCBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IEdQTC0yLjAKKy8qCisgKiBDb3B5cmlnaHQgwqkgMjAyMCBJbnRlbCBDb3Jwb3JhdGlvbgorICov
CisKKy8qKgorICogRE9DOiBNRUlfUFhQIENsaWVudCBEcml2ZXIKKyAqCisgKiBUaGUgbWVpX3B4
cCBkcml2ZXIgYWN0cyBhcyBhIHRyYW5zbGF0aW9uIGxheWVyIGJldHdlZW4gUFhQCisgKiBwcm90
b2NvbCAgaW1wbGVtZW50ZXIgKEk5MTUpIGFuZCBNRSBGVyBieSB0cmFuc2xhdGluZyBQWFAKKyAq
IG5lZ290aWF0aW9uIG1lc3NhZ2VzIHRvIE1FIEZXIGNvbW1hbmQgcGF5bG9hZHMgYW5kIHZpY2Ug
dmVyc2EuCisgKi8KKworI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgorI2luY2x1ZGUgPGxpbnV4
L3NsYWIuaD4KKyNpbmNsdWRlIDxsaW51eC91dWlkLmg+CisjaW5jbHVkZSA8bGludXgvbWVpX2Ns
X2J1cy5oPgorI2luY2x1ZGUgPGxpbnV4L2NvbXBvbmVudC5oPgorI2luY2x1ZGUgPGRybS9kcm1f
Y29ubmVjdG9yLmg+CisjaW5jbHVkZSA8ZHJtL2k5MTVfY29tcG9uZW50Lmg+CisjaW5jbHVkZSA8
ZHJtL2k5MTVfcHhwX3RlZV9pbnRlcmZhY2UuaD4KKworI2luY2x1ZGUgIm1laV9weHAuaCIKKwor
LyoqCisgKiBtZWlfcHhwX3NlbmRfbWVzc2FnZSgpIC0gU2VuZHMgYSBQWFAgbWVzc2FnZSB0byBN
RSBGVy4KKyAqIEBkZXY6IGRldmljZSBjb3JyZXNwb25kaW5nIHRvIHRoZSBtZWlfY2xfZGV2aWNl
CisgKiBAbWVzc2FnZTogYSBtZXNzYWdlIGJ1ZmZlciB0byBzZW5kCisgKiBAc2l6ZTogc2l6ZSBv
ZiB0aGUgbWVzc2FnZQorICogUmV0dXJuOiAwIG9uIFN1Y2Nlc3MsIDwwIG9uIEZhaWx1cmUKKyAq
Lworc3RhdGljIGludAorbWVpX3B4cF9zZW5kX21lc3NhZ2Uoc3RydWN0IGRldmljZSAqZGV2LCBj
b25zdCB2b2lkICptZXNzYWdlLCBzaXplX3Qgc2l6ZSkKK3sKKwlzdHJ1Y3QgbWVpX2NsX2Rldmlj
ZSAqY2xkZXY7CisJc3NpemVfdCBieXRlOworCisJaWYgKCFkZXYgfHwgIW1lc3NhZ2UpCisJCXJl
dHVybiAtRUlOVkFMOworCisJY2xkZXYgPSB0b19tZWlfY2xfZGV2aWNlKGRldik7CisKKwkvKiB0
ZW1wb3JhcnkgZHJvcCBjb25zdCBxdWFsaWZpZXIgdGlsbCB0aGUgQVBJIGlzIGZpeGVkICovCisJ
Ynl0ZSA9IG1laV9jbGRldl9zZW5kKGNsZGV2LCAodTggKiltZXNzYWdlLCBzaXplKTsKKwlpZiAo
Ynl0ZSA8IDApIHsKKwkJZGV2X2RiZyhkZXYsICJtZWlfY2xkZXZfc2VuZCBmYWlsZWQuICV6ZFxu
IiwgYnl0ZSk7CisJCXJldHVybiBieXRlOworCX0KKworCXJldHVybiAwOworfQorCisvKioKKyAq
IG1laV9weHBfcmVjZWl2ZV9tZXNzYWdlKCkgLSBSZWNlaXZlcyBhIFBYUCBtZXNzYWdlIGZyb20g
TUUgRlcuCisgKiBAZGV2OiBkZXZpY2UgY29ycmVzcG9uZGluZyB0byB0aGUgbWVpX2NsX2Rldmlj
ZQorICogQGJ1ZmZlcjogYSBtZXNzYWdlIGJ1ZmZlciB0byBjb250YWluIHRoZSByZWNlaXZlZCBt
ZXNzYWdlCisgKiBAc2l6ZTogc2l6ZSBvZiB0aGUgYnVmZmVyCisgKiBSZXR1cm46IGJ5dGVzIHNl
bnQgb24gU3VjY2VzcywgPDAgb24gRmFpbHVyZQorICovCitzdGF0aWMgaW50CittZWlfcHhwX3Jl
Y2VpdmVfbWVzc2FnZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHZvaWQgKmJ1ZmZlciwgc2l6ZV90IHNp
emUpCit7CisJc3RydWN0IG1laV9jbF9kZXZpY2UgKmNsZGV2OworCXNzaXplX3QgYnl0ZTsKKwor
CWlmICghZGV2IHx8ICFidWZmZXIpCisJCXJldHVybiAtRUlOVkFMOworCisJY2xkZXYgPSB0b19t
ZWlfY2xfZGV2aWNlKGRldik7CisKKwlieXRlID0gbWVpX2NsZGV2X3JlY3YoY2xkZXYsIGJ1ZmZl
ciwgc2l6ZSk7CisJaWYgKGJ5dGUgPCAwKSB7CisJCWRldl9kYmcoZGV2LCAibWVpX2NsZGV2X3Jl
Y3YgZmFpbGVkLiAlemRcbiIsIGJ5dGUpOworCQlyZXR1cm4gYnl0ZTsKKwl9CisKKwlyZXR1cm4g
Ynl0ZTsKK30KKworc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3B4cF9jb21wb25lbnRfb3BzIG1l
aV9weHBfb3BzID0geworCS5vd25lciA9IFRISVNfTU9EVUxFLAorCS5zZW5kID0gbWVpX3B4cF9z
ZW5kX21lc3NhZ2UsCisJLnJlY2VpdmUgPSBtZWlfcHhwX3JlY2VpdmVfbWVzc2FnZSwKK307CisK
K3N0YXRpYyBpbnQgbWVpX2NvbXBvbmVudF9tYXN0ZXJfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYp
Cit7CisJc3RydWN0IG1laV9jbF9kZXZpY2UgKmNsZGV2ID0gdG9fbWVpX2NsX2RldmljZShkZXYp
OworCXN0cnVjdCBpOTE1X3B4cF9jb21wX21hc3RlciAqY29tcF9tYXN0ZXIgPSBtZWlfY2xkZXZf
Z2V0X2RydmRhdGEoY2xkZXYpOworCWludCByZXQ7CisKKwlkZXZfZGJnKGRldiwgIiVzXG4iLCBf
X2Z1bmNfXyk7CisJY29tcF9tYXN0ZXItPm9wcyA9ICZtZWlfcHhwX29wczsKKwljb21wX21hc3Rl
ci0+dGVlX2RldiA9IGRldjsKKwlyZXQgPSBjb21wb25lbnRfYmluZF9hbGwoZGV2LCBjb21wX21h
c3Rlcik7CisJaWYgKHJldCA8IDApCisJCXJldHVybiByZXQ7CisKKwlyZXR1cm4gMDsKK30KKwor
c3RhdGljIHZvaWQgbWVpX2NvbXBvbmVudF9tYXN0ZXJfdW5iaW5kKHN0cnVjdCBkZXZpY2UgKmRl
dikKK3sKKwlzdHJ1Y3QgbWVpX2NsX2RldmljZSAqY2xkZXYgPSB0b19tZWlfY2xfZGV2aWNlKGRl
dik7CisJc3RydWN0IGk5MTVfcHhwX2NvbXBfbWFzdGVyICpjb21wX21hc3RlciA9IG1laV9jbGRl
dl9nZXRfZHJ2ZGF0YShjbGRldik7CisKKwlkZXZfZGJnKGRldiwgIiVzXG4iLCBfX2Z1bmNfXyk7
CisJY29tcG9uZW50X3VuYmluZF9hbGwoZGV2LCBjb21wX21hc3Rlcik7Cit9CisKK3N0YXRpYyBj
b25zdCBzdHJ1Y3QgY29tcG9uZW50X21hc3Rlcl9vcHMgbWVpX2NvbXBvbmVudF9tYXN0ZXJfb3Bz
ID0geworCS5iaW5kID0gbWVpX2NvbXBvbmVudF9tYXN0ZXJfYmluZCwKKwkudW5iaW5kID0gbWVp
X2NvbXBvbmVudF9tYXN0ZXJfdW5iaW5kLAorfTsKKworLyoqCisgKiBtZWlfcHhwX2NvbXBvbmVu
dF9tYXRjaCAtIGNvbXBhcmUgZnVuY3Rpb24gZm9yIG1hdGNoaW5nIG1laSBweHAuCisgKgorICog
ICAgVGhlIGZ1bmN0aW9uIGNoZWNrcyBpZiB0aGUgZHJpdmVyIGlzIGk5MTUsIHRoZSBzdWJjb21w
b25lbnQgaXMgUFhQCisgKiAgICBhbmQgdGhlIGdyYW5kIHBhcmVudCBvZiBweHAgYW5kIHRoZSBw
YXJlbnQgb2YgaTkxNSBhcmUgdGhlIHNhbWUKKyAqICAgIFBDSCBkZXZpY2UuCisgKgorICogQGRl
djogbWFzdGVyIGRldmljZQorICogQHN1YmNvbXBvbmVudDogc3ViY29tcG9uZW50IHRvIG1hdGNo
IChJOTE1X0NPTVBPTkVOVF9QWFApCisgKiBAZGF0YTogY29tcGFyZSBkYXRhIChtZWkgcHhwIGRl
dmljZSkKKyAqCisgKiBSZXR1cm46CisgKiAqIDEgLSBpZiBjb21wb25lbnRzIG1hdGNoCisgKiAq
IDAgLSBvdGhlcndpc2UKKyAqLworc3RhdGljIGludCBtZWlfcHhwX2NvbXBvbmVudF9tYXRjaChz
dHJ1Y3QgZGV2aWNlICpkZXYsIGludCBzdWJjb21wb25lbnQsCisJCQkJICAgdm9pZCAqZGF0YSkK
K3sKKwlzdHJ1Y3QgZGV2aWNlICpiYXNlID0gZGF0YTsKKworCWlmIChzdWJjb21wb25lbnQgIT0g
STkxNV9DT01QT05FTlRfUFhQKQorCQlyZXR1cm4gMDsKKworCWlmIChzdHJjbXAoZGV2LT5kcml2
ZXItPm5hbWUsICJpOTE1IikgPT0gMCkgeworCQliYXNlID0gYmFzZS0+cGFyZW50OworCQlpZiAo
IWJhc2UpCisJCQlyZXR1cm4gMDsKKworCQliYXNlID0gYmFzZS0+cGFyZW50OworCQlkZXYgPSBk
ZXYtPnBhcmVudDsKKwkJcmV0dXJuIChiYXNlICYmIGRldiAmJiBkZXYgPT0gYmFzZSk7CisJfQor
CisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgbWVpX3B4cF9wcm9iZShzdHJ1Y3QgbWVpX2Ns
X2RldmljZSAqY2xkZXYsCisJCQkgY29uc3Qgc3RydWN0IG1laV9jbF9kZXZpY2VfaWQgKmlkKQor
eworCXN0cnVjdCBpOTE1X3B4cF9jb21wX21hc3RlciAqY29tcF9tYXN0ZXI7CisJc3RydWN0IGNv
bXBvbmVudF9tYXRjaCAqbWFzdGVyX21hdGNoOworCWludCByZXQ7CisKKwlyZXQgPSBtZWlfY2xk
ZXZfZW5hYmxlKGNsZGV2KTsKKwlpZiAocmV0IDwgMCkgeworCQlkZXZfZXJyKCZjbGRldi0+ZGV2
LCAibWVpX2NsZGV2X2VuYWJsZSBGYWlsZWQuICVkXG4iLCByZXQpOworCQlnb3RvIGVuYWJsZV9l
cnJfZXhpdDsKKwl9CisKKwljb21wX21hc3RlciA9IGt6YWxsb2Moc2l6ZW9mKCpjb21wX21hc3Rl
ciksIEdGUF9LRVJORUwpOworCWlmICghY29tcF9tYXN0ZXIpIHsKKwkJcmV0ID0gLUVOT01FTTsK
KwkJZ290byBlcnJfZXhpdDsKKwl9CisKKwltYXN0ZXJfbWF0Y2ggPSBOVUxMOworCWNvbXBvbmVu
dF9tYXRjaF9hZGRfdHlwZWQoJmNsZGV2LT5kZXYsICZtYXN0ZXJfbWF0Y2gsCisJCQkJICBtZWlf
cHhwX2NvbXBvbmVudF9tYXRjaCwgJmNsZGV2LT5kZXYpOworCWlmIChJU19FUlJfT1JfTlVMTCht
YXN0ZXJfbWF0Y2gpKSB7CisJCXJldCA9IC1FTk9NRU07CisJCWdvdG8gZXJyX2V4aXQ7CisJfQor
CisJbWVpX2NsZGV2X3NldF9kcnZkYXRhKGNsZGV2LCBjb21wX21hc3Rlcik7CisJcmV0ID0gY29t
cG9uZW50X21hc3Rlcl9hZGRfd2l0aF9tYXRjaCgmY2xkZXYtPmRldiwKKwkJCQkJICAgICAgJm1l
aV9jb21wb25lbnRfbWFzdGVyX29wcywKKwkJCQkJICAgICAgbWFzdGVyX21hdGNoKTsKKwlpZiAo
cmV0IDwgMCkgeworCQlkZXZfZXJyKCZjbGRldi0+ZGV2LCAiTWFzdGVyIGNvbXAgYWRkIGZhaWxl
ZCAlZFxuIiwgcmV0KTsKKwkJZ290byBlcnJfZXhpdDsKKwl9CisKKwlyZXR1cm4gMDsKKworZXJy
X2V4aXQ6CisJbWVpX2NsZGV2X3NldF9kcnZkYXRhKGNsZGV2LCBOVUxMKTsKKwlrZnJlZShjb21w
X21hc3Rlcik7CisJbWVpX2NsZGV2X2Rpc2FibGUoY2xkZXYpOworZW5hYmxlX2Vycl9leGl0Ogor
CXJldHVybiByZXQ7Cit9CisKK3N0YXRpYyBpbnQgbWVpX3B4cF9yZW1vdmUoc3RydWN0IG1laV9j
bF9kZXZpY2UgKmNsZGV2KQoreworCXN0cnVjdCBpOTE1X3B4cF9jb21wX21hc3RlciAqY29tcF9t
YXN0ZXIgPSBtZWlfY2xkZXZfZ2V0X2RydmRhdGEoY2xkZXYpOworCisJY29tcG9uZW50X21hc3Rl
cl9kZWwoJmNsZGV2LT5kZXYsICZtZWlfY29tcG9uZW50X21hc3Rlcl9vcHMpOworCWtmcmVlKGNv
bXBfbWFzdGVyKTsKKwltZWlfY2xkZXZfc2V0X2RydmRhdGEoY2xkZXYsIE5VTEwpOworCisJcmV0
dXJuIG1laV9jbGRldl9kaXNhYmxlKGNsZGV2KTsKK30KKworLyogZmJmNmZjZjEtOTZjZi00ZTJl
LWE2YTYtMWJhYjhjYmUzNmIxIDogUEFWUCBHVUlEKi8KKyNkZWZpbmUgTUVJX0dVSURfUFhQIEdV
SURfSU5JVCgweGZiZjZmY2YxLCAweDk2Y2YsIDB4NGUyZSwgMHhBNiwgXAorCQkJICAgICAgIDB4
YTYsIDB4MWIsIDB4YWIsIDB4OGMsIDB4YmUsIDB4MzYsIDB4YjEpCisKK3N0YXRpYyBzdHJ1Y3Qg
bWVpX2NsX2RldmljZV9pZCBtZWlfcHhwX3RibFtdID0geworCXsgLnV1aWQgPSBNRUlfR1VJRF9Q
WFAsIC52ZXJzaW9uID0gTUVJX0NMX1ZFUlNJT05fQU5ZIH0sCisJeyB9Cit9OworTU9EVUxFX0RF
VklDRV9UQUJMRShtZWksIG1laV9weHBfdGJsKTsKKworc3RhdGljIHN0cnVjdCBtZWlfY2xfZHJp
dmVyIG1laV9weHBfZHJpdmVyID0geworCS5pZF90YWJsZSA9IG1laV9weHBfdGJsLAorCS5uYW1l
ID0gS0JVSUxEX01PRE5BTUUsCisJLnByb2JlID0gbWVpX3B4cF9wcm9iZSwKKwkucmVtb3ZlCT0g
bWVpX3B4cF9yZW1vdmUsCit9OworCittb2R1bGVfbWVpX2NsX2RyaXZlcihtZWlfcHhwX2RyaXZl
cik7CisKK01PRFVMRV9BVVRIT1IoIkludGVsIENvcnBvcmF0aW9uIik7CitNT0RVTEVfTElDRU5T
RSgiR1BMIik7CitNT0RVTEVfREVTQ1JJUFRJT04oIk1FSSBQWFAiKTsKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbWlzYy9tZWkvcHhwL21laV9weHAuaCBiL2RyaXZlcnMvbWlzYy9tZWkvcHhwL21laV9w
eHAuaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmU3YjE1MzczZmVm
ZAotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvbWlzYy9tZWkvcHhwL21laV9weHAuaApAQCAt
MCwwICsxLDE4IEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCAqLworLyoK
KyAqIENvcHlyaWdodCDCqSAyMDIwIEludGVsIENvcnBvcmF0aW9uCisgKgorICogQXV0aG9yczoK
KyAqIFZpdGFseSBMdWJhcnQgPHZpdGFseS5sdWJhcnRAaW50ZWwuY29tPgorICovCisKKyNpZm5k
ZWYgX19NRUlfUFhQX0hfXworI2RlZmluZSBfX01FSV9QWFBfSF9fCisKKy8qIG1lX3B4cF9zdGF0
dXM6IEVudW1lcmF0aW9uIG9mIGFsbCBQWFAgU3RhdHVzIENvZGVzICovCitlbnVtIG1lX3B4cF9z
dGF0dXMgeworCU1FX1BYUF9TVEFUVVNfU1VDQ0VTUwkJCT0gMHgwMDAwLAorCit9OworCisjZW5k
aWYgLyogX19NRUlfUFhQX0hfXyAqLwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
