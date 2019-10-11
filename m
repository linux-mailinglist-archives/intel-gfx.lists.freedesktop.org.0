Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B61E1D3AF6
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 10:23:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E80376EBE2;
	Fri, 11 Oct 2019 08:23:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5482E6E0D1;
 Fri, 11 Oct 2019 08:23:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 78CB58372E6;
 Fri, 11 Oct 2019 08:23:25 +0000 (UTC)
Received: from jason-ThinkPad-X1-Carbon-6th.redhat.com
 (ovpn-12-241.pek2.redhat.com [10.72.12.241])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 439FC1001956;
 Fri, 11 Oct 2019 08:21:16 +0000 (UTC)
From: Jason Wang <jasowang@redhat.com>
To: kvm@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 kwankhede@nvidia.com, alex.williamson@redhat.com, mst@redhat.com,
 tiwei.bie@intel.com
Date: Fri, 11 Oct 2019 16:15:57 +0800
Message-Id: <20191011081557.28302-8-jasowang@redhat.com>
In-Reply-To: <20191011081557.28302-1-jasowang@redhat.com>
References: <20191011081557.28302-1-jasowang@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Fri, 11 Oct 2019 08:23:26 +0000 (UTC)
Subject: [Intel-gfx] [PATCH V3 7/7] docs: sample driver to demonstrate how
 to implement virtio-mdev framework
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
Cc: christophe.de.dinechin@gmail.com, sebott@linux.ibm.com, airlied@linux.ie,
 Jason Wang <jasowang@redhat.com>, heiko.carstens@de.ibm.com,
 virtualization@lists.linux-foundation.org, rob.miller@broadcom.com,
 lulu@redhat.com, eperezma@redhat.com, pasic@linux.ibm.com,
 borntraeger@de.ibm.com, haotian.wang@sifive.com, farman@linux.ibm.com,
 idos@mellanox.com, gor@linux.ibm.com, cunming.liang@intel.com,
 xiao.w.wang@intel.com, freude@linux.ibm.com, parav@mellanox.com,
 zhihong.wang@intel.com, akrowiak@linux.ibm.com, netdev@vger.kernel.org,
 cohuck@redhat.com, oberpar@linux.ibm.com, maxime.coquelin@redhat.com,
 lingshan.zhu@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBzYW1wbGUgZHJpdmVyIGNyZWF0ZXMgbWRldiBkZXZpY2UgdGhhdCBzaW11bGF0ZSB2aXJ0
aW8gbmV0IGRldmljZQpvdmVyIHZpcnRpbyBtZGV2IHRyYW5zcG9ydC4gVGhlIGRldmljZSBpcyBp
bXBsZW1lbnRlZCB0aHJvdWdoIHZyaW5naAphbmQgd29ya3F1ZXVlLiBBIGRldmljZSBzcGVjaWZp
YyBkbWEgb3BzIGlzIHRvIG1ha2Ugc3VyZSBIVkEgaXMgdXNlZApkaXJlY3RseSBhcyB0aGUgSU9W
QS4gVGhpcyBzaG91bGQgYmUgc3VmZmljaWVudCBmb3Iga2VybmVsIHZpcnRpbwpkcml2ZXIgdG8g
d29yay4KCk9ubHkgJ3ZpcnRpbycgdHlwZSBpcyBzdXBwb3J0ZWQgcmlnaHQgbm93LiBJIHBsYW4g
dG8gYWRkICd2aG9zdCcgdHlwZQpvbiB0b3Agd2hpY2ggcmVxdWlyZXMgc29tZSB2aXJ0dWFsIElP
TU1VIGltcGxlbWVudGVkIGluIHRoaXMgc2FtcGxlCmRyaXZlci4KClNpZ25lZC1vZmYtYnk6IEph
c29uIFdhbmcgPGphc293YW5nQHJlZGhhdC5jb20+Ci0tLQogTUFJTlRBSU5FUlMgICAgICAgICAg
ICAgICAgfCAgIDEgKwogc2FtcGxlcy9LY29uZmlnICAgICAgICAgICAgfCAgIDcgKwogc2FtcGxl
cy92ZmlvLW1kZXYvTWFrZWZpbGUgfCAgIDEgKwogc2FtcGxlcy92ZmlvLW1kZXYvbXZuZXQuYyAg
fCA2OTEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogNCBmaWxlcyBjaGFu
Z2VkLCA3MDAgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IHNhbXBsZXMvdmZpby1t
ZGV2L212bmV0LmMKCmRpZmYgLS1naXQgYS9NQUlOVEFJTkVSUyBiL01BSU5UQUlORVJTCmluZGV4
IDNkMTk2YTAyM2I1ZS4uY2I1MTM1MWNkNWM5IDEwMDY0NAotLS0gYS9NQUlOVEFJTkVSUworKysg
Yi9NQUlOVEFJTkVSUwpAQCAtMTcyNTQsNiArMTcyNTQsNyBAQCBGOglpbmNsdWRlL2xpbnV4L3Zp
cnRpbyouaAogRjoJaW5jbHVkZS91YXBpL2xpbnV4L3ZpcnRpb18qLmgKIEY6CWRyaXZlcnMvY3J5
cHRvL3ZpcnRpby8KIEY6CW1tL2JhbGxvb25fY29tcGFjdGlvbi5jCitGOglzYW1wbGVzL3ZmaW8t
bWRldi9tdm5ldC5jCiAKIFZJUlRJTyBCTE9DSyBBTkQgU0NTSSBEUklWRVJTCiBNOgkiTWljaGFl
bCBTLiBUc2lya2luIiA8bXN0QHJlZGhhdC5jb20+CmRpZmYgLS1naXQgYS9zYW1wbGVzL0tjb25m
aWcgYi9zYW1wbGVzL0tjb25maWcKaW5kZXggYzhkYWNiNGRkYTgwLi5hMWExY2EyYzAwYjcgMTAw
NjQ0Ci0tLSBhL3NhbXBsZXMvS2NvbmZpZworKysgYi9zYW1wbGVzL0tjb25maWcKQEAgLTEzMSw2
ICsxMzEsMTMgQEAgY29uZmlnIFNBTVBMRV9WRklPX01ERVZfTURQWQogCSAgbWVkaWF0ZWQgZGV2
aWNlLiAgSXQgaXMgYSBzaW1wbGUgZnJhbWVidWZmZXIgYW5kIHN1cHBvcnRzCiAJICB0aGUgcmVn
aW9uIGRpc3BsYXkgaW50ZXJmYWNlIChWRklPX0dGWF9QTEFORV9UWVBFX1JFR0lPTikuCiAKK2Nv
bmZpZyBTQU1QTEVfVklSVElPX01ERVZfTkVUCisgICAgICAgIHRyaXN0YXRlICJCdWlsZCB2aXJ0
aW8gbWRldiBuZXQgZXhhbXBsZSBtZWRpYXRlZCBkZXZpY2Ugc2FtcGxlIGNvZGUgLS0gbG9hZGFi
bGUgbW9kdWxlcyBvbmx5IgorCWRlcGVuZHMgb24gVklSVElPX01ERVZfREVWSUNFICYmIFZIT1NU
X1JJTkcgJiYgbQorCWhlbHAKKwkgIEJ1aWxkIGEgbmV0d29ya2luZyBzYW1wbGUgZGV2aWNlIGZv
ciB1c2UgYXMgYSB2aXJ0aW8KKwkgIG1lZGlhdGVkIGRldmljZS4KKwogY29uZmlnIFNBTVBMRV9W
RklPX01ERVZfTURQWV9GQgogCXRyaXN0YXRlICJCdWlsZCBWRklPIG1kcHkgZXhhbXBsZSBndWVz
dCBmYmRldiBkcml2ZXIgLS0gbG9hZGFibGUgbW9kdWxlIG9ubHkiCiAJZGVwZW5kcyBvbiBGQiAm
JiBtCmRpZmYgLS1naXQgYS9zYW1wbGVzL3ZmaW8tbWRldi9NYWtlZmlsZSBiL3NhbXBsZXMvdmZp
by1tZGV2L01ha2VmaWxlCmluZGV4IDEwZDE3OWM0ZmRlYi4uZjM0YWY5MGVkMGEwIDEwMDY0NAot
LS0gYS9zYW1wbGVzL3ZmaW8tbWRldi9NYWtlZmlsZQorKysgYi9zYW1wbGVzL3ZmaW8tbWRldi9N
YWtlZmlsZQpAQCAtMywzICszLDQgQEAgb2JqLSQoQ09ORklHX1NBTVBMRV9WRklPX01ERVZfTVRU
WSkgKz0gbXR0eS5vCiBvYmotJChDT05GSUdfU0FNUExFX1ZGSU9fTURFVl9NRFBZKSArPSBtZHB5
Lm8KIG9iai0kKENPTkZJR19TQU1QTEVfVkZJT19NREVWX01EUFlfRkIpICs9IG1kcHktZmIubwog
b2JqLSQoQ09ORklHX1NBTVBMRV9WRklPX01ERVZfTUJPQ0hTKSArPSBtYm9jaHMubworb2JqLSQo
Q09ORklHX1NBTVBMRV9WSVJUSU9fTURFVl9ORVQpICs9IG12bmV0Lm8KZGlmZiAtLWdpdCBhL3Nh
bXBsZXMvdmZpby1tZGV2L212bmV0LmMgYi9zYW1wbGVzL3ZmaW8tbWRldi9tdm5ldC5jCm5ldyBm
aWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uYjIxOGU3MDc1NjExCi0tLSAvZGV2
L251bGwKKysrIGIvc2FtcGxlcy92ZmlvLW1kZXYvbXZuZXQuYwpAQCAtMCwwICsxLDY5MSBAQAor
Ly8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQorLyoKKyAqIE1lZGlhdGVk
IHZpcnR1YWwgdmlydGlvLW5ldCBkZXZpY2UgZHJpdmVyLgorICoKKyAqIENvcHlyaWdodCAoYykg
MjAxOSwgUmVkIEhhdCBJbmMuIEFsbCByaWdodHMgcmVzZXJ2ZWQuCisgKiAgICAgQXV0aG9yOiBK
YXNvbiBXYW5nIDxqYXNvd2FuZ0ByZWRoYXQuY29tPgorICoKKyAqIFNhbXBsZSBkcml2ZXIgdGhh
dCBjcmVhdGVzIG1kZXYgZGV2aWNlIHRoYXQgc2ltdWxhdGVzIGV0aGVybmV0IGxvb3BiYWNrCisg
KiBkZXZpY2UuCisgKgorICogVXNhZ2U6CisgKgorICogIyBtb2Rwcm9iZSB2aXJ0aW9fbWRldgor
ICogIyBtb2Rwcm9iZSBtdm5ldAorICogIyBjZCAvc3lzL2RldmljZXMvdmlydHVhbC9tdm5ldC9t
dm5ldC9tZGV2X3N1cHBvcnRlZF90eXBlcy9tdm5ldC12aXJ0aW8KKyAqICMgZWNobyAiODNiOGY0
ZjItNTA5Zi0zODJmLTNjMWUtZTZiZmUwZmExMDAxIiA+IC4vY3JlYXRlCisgKiAjIGNkIGRldmlj
ZXMvODNiOGY0ZjItNTA5Zi0zODJmLTNjMWUtZTZiZmUwZmExMDAxCisgKiAjIGxzIC1kIHZpcnRp
bzAKKyAqIHZpcnRpbzAKKyAqLworCisjaW5jbHVkZSA8bGludXgvaW5pdC5oPgorI2luY2x1ZGUg
PGxpbnV4L21vZHVsZS5oPgorI2luY2x1ZGUgPGxpbnV4L2RldmljZS5oPgorI2luY2x1ZGUgPGxp
bnV4L2tlcm5lbC5oPgorI2luY2x1ZGUgPGxpbnV4L2ZzLmg+CisjaW5jbHVkZSA8bGludXgvcG9s
bC5oPgorI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KKyNpbmNsdWRlIDxsaW51eC9zY2hlZC5oPgor
I2luY2x1ZGUgPGxpbnV4L3dhaXQuaD4KKyNpbmNsdWRlIDxsaW51eC91dWlkLmg+CisjaW5jbHVk
ZSA8bGludXgvaW9tbXUuaD4KKyNpbmNsdWRlIDxsaW51eC9zeXNmcy5oPgorI2luY2x1ZGUgPGxp
bnV4L2ZpbGUuaD4KKyNpbmNsdWRlIDxsaW51eC9ldGhlcmRldmljZS5oPgorI2luY2x1ZGUgPGxp
bnV4L21kZXYuaD4KKyNpbmNsdWRlIDxsaW51eC92cmluZ2guaD4KKyNpbmNsdWRlIDxsaW51eC92
aXJ0aW9fbWRldi5oPgorI2luY2x1ZGUgPHVhcGkvbGludXgvdmlydGlvX2NvbmZpZy5oPgorI2lu
Y2x1ZGUgPHVhcGkvbGludXgvdmlydGlvX25ldC5oPgorCisjZGVmaW5lIFZFUlNJT05fU1RSSU5H
ICAiMC4xIgorI2RlZmluZSBEUklWRVJfQVVUSE9SICAgIlJlZCBIYXQgQ29ycG9yYXRpb24iCisK
KyNkZWZpbmUgTVZORVRfQ0xBU1NfTkFNRSAibXZuZXQiCisjZGVmaW5lIE1WTkVUX05BTUUgICAg
ICAgIm12bmV0IgorCisvKgorICogR2xvYmFsIFN0cnVjdHVyZXMKKyAqLworCitzdGF0aWMgc3Ry
dWN0IG12bmV0X2RldiB7CisJc3RydWN0IGNsYXNzCSp2ZF9jbGFzczsKKwlzdHJ1Y3QgaWRyCXZk
X2lkcjsKKwlzdHJ1Y3QgZGV2aWNlCWRldjsKK30gbXZuZXRfZGV2OworCitzdHJ1Y3QgbXZuZXRf
dmlydHF1ZXVlIHsKKwlzdHJ1Y3QgdnJpbmdoIHZyaW5nOworCXN0cnVjdCB2cmluZ2hfa2lvdiBp
b3Y7CisJdW5zaWduZWQgc2hvcnQgaGVhZDsKKwlib29sIHJlYWR5OworCXU2NCBkZXNjX2FkZHI7
CisJdTY0IGRldmljZV9hZGRyOworCXU2NCBkcml2ZXJfYWRkcjsKKwl1MzIgbnVtOworCXZvaWQg
KnByaXZhdGU7CisJaXJxcmV0dXJuX3QgKCpjYikodm9pZCAqZGF0YSk7Cit9OworCisjZGVmaW5l
IE1WTkVUX1FVRVVFX0FMSUdOIFBBR0VfU0laRQorI2RlZmluZSBNVk5FVF9RVUVVRV9NQVggMjU2
CisjZGVmaW5lIE1WTkVUX0RFVklDRV9JRCAweDEKKyNkZWZpbmUgTVZORVRfVkVORE9SX0lEIDAK
KwordTY0IG12bmV0X2ZlYXR1cmVzID0gKDFVTEwgPDwgVklSVElPX0ZfQU5ZX0xBWU9VVCkgfAor
CQkgICAgICgxVUxMIDw8IFZJUlRJT19GX1ZFUlNJT05fMSkgfAorCQkgICAgICgxVUxMIDw8IFZJ
UlRJT19GX0lPTU1VX1BMQVRGT1JNKTsKKworLyogU3RhdGUgb2YgZWFjaCBtZGV2IGRldmljZSAq
Lworc3RydWN0IG12bmV0X3N0YXRlIHsKKwlzdHJ1Y3QgbXZuZXRfdmlydHF1ZXVlIHZxc1syXTsK
KwlzdHJ1Y3Qgd29ya19zdHJ1Y3Qgd29yazsKKwlzcGlubG9ja190IGxvY2s7CisJc3RydWN0IG1k
ZXZfZGV2aWNlICptZGV2OworCXN0cnVjdCB2aXJ0aW9fbmV0X2NvbmZpZyBjb25maWc7CisJdm9p
ZCAqYnVmZmVyOworCXUzMiBzdGF0dXM7CisJdTMyIGdlbmVyYXRpb247CisJdTY0IGZlYXR1cmVz
OworCXN0cnVjdCBsaXN0X2hlYWQgbmV4dDsKK307CisKK3N0YXRpYyBzdHJ1Y3QgbXV0ZXggbWRl
dl9saXN0X2xvY2s7CitzdGF0aWMgc3RydWN0IGxpc3RfaGVhZCBtZGV2X2RldmljZXNfbGlzdDsK
Kworc3RhdGljIHZvaWQgbXZuZXRfcXVldWVfcmVhZHkoc3RydWN0IG12bmV0X3N0YXRlICptdm5l
dCwgdW5zaWduZWQgaW50IGlkeCkKK3sKKwlzdHJ1Y3QgbXZuZXRfdmlydHF1ZXVlICp2cSA9ICZt
dm5ldC0+dnFzW2lkeF07CisJaW50IHJldDsKKworCXJldCA9IHZyaW5naF9pbml0X2tlcm4oJnZx
LT52cmluZywgbXZuZXRfZmVhdHVyZXMsIE1WTkVUX1FVRVVFX01BWCwKKwkJCSAgICAgICBmYWxz
ZSwgKHN0cnVjdCB2cmluZ19kZXNjICopdnEtPmRlc2NfYWRkciwKKwkJCSAgICAgICAoc3RydWN0
IHZyaW5nX2F2YWlsICopdnEtPmRyaXZlcl9hZGRyLAorCQkJICAgICAgIChzdHJ1Y3QgdnJpbmdf
dXNlZCAqKXZxLT5kZXZpY2VfYWRkcik7Cit9CisKK3N0YXRpYyB2b2lkIG12bmV0X3ZxX3Jlc2V0
KHN0cnVjdCBtdm5ldF92aXJ0cXVldWUgKnZxKQoreworCXZxLT5yZWFkeSA9IDA7CisJdnEtPmRl
c2NfYWRkciA9IDA7CisJdnEtPmRyaXZlcl9hZGRyID0gMDsKKwl2cS0+ZGV2aWNlX2FkZHIgPSAw
OworCXZxLT5jYiA9IE5VTEw7CisJdnEtPnByaXZhdGUgPSBOVUxMOworCXZyaW5naF9pbml0X2tl
cm4oJnZxLT52cmluZywgbXZuZXRfZmVhdHVyZXMsIE1WTkVUX1FVRVVFX01BWCwKKwkJCWZhbHNl
LCAwLCAwLCAwKTsKK30KKworc3RhdGljIHZvaWQgbXZuZXRfcmVzZXQoc3RydWN0IG12bmV0X3N0
YXRlICptdm5ldCkKK3sKKwlpbnQgaTsKKworCWZvciAoaSA9IDA7IGkgPCAyOyBpKyspCisJCW12
bmV0X3ZxX3Jlc2V0KCZtdm5ldC0+dnFzW2ldKTsKKworCW12bmV0LT5mZWF0dXJlcyA9IDA7CisJ
bXZuZXQtPnN0YXR1cyA9IDA7CisJKyttdm5ldC0+Z2VuZXJhdGlvbjsKK30KKworc3RhdGljIHZv
aWQgbXZuZXRfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCit7CisJc3RydWN0IG12bmV0
X3N0YXRlICptdm5ldCA9IGNvbnRhaW5lcl9vZih3b3JrLCBzdHJ1Y3QKKwkJCQkJCSBtdm5ldF9z
dGF0ZSwgd29yayk7CisJc3RydWN0IG12bmV0X3ZpcnRxdWV1ZSAqdHhxID0gJm12bmV0LT52cXNb
MV07CisJc3RydWN0IG12bmV0X3ZpcnRxdWV1ZSAqcnhxID0gJm12bmV0LT52cXNbMF07CisJc2l6
ZV90IHJlYWQsIHdyaXRlLCB0b3RhbF93cml0ZTsKKwlpbnQgZXJyOworCWludCBwa3RzID0gMDsK
KworCXNwaW5fbG9jaygmbXZuZXQtPmxvY2spOworCisJaWYgKCF0eHEtPnJlYWR5IHx8ICFyeHEt
PnJlYWR5KQorCQlnb3RvIG91dDsKKworCXdoaWxlICh0cnVlKSB7CisJCXRvdGFsX3dyaXRlID0g
MDsKKwkJZXJyID0gdnJpbmdoX2dldGRlc2Nfa2VybigmdHhxLT52cmluZywgJnR4cS0+aW92LCBO
VUxMLAorCQkJCQkgICZ0eHEtPmhlYWQsIEdGUF9BVE9NSUMpOworCQlpZiAoZXJyIDw9IDApCisJ
CQlicmVhazsKKworCQllcnIgPSB2cmluZ2hfZ2V0ZGVzY19rZXJuKCZyeHEtPnZyaW5nLCBOVUxM
LCAmcnhxLT5pb3YsCisJCQkJCSAgJnJ4cS0+aGVhZCwgR0ZQX0FUT01JQyk7CisJCWlmIChlcnIg
PD0gMCkgeworCQkJdnJpbmdoX2NvbXBsZXRlX2tlcm4oJnR4cS0+dnJpbmcsIHR4cS0+aGVhZCwg
MCk7CisJCQlicmVhazsKKwkJfQorCisJCXdoaWxlICh0cnVlKSB7CisJCQlyZWFkID0gdnJpbmdo
X2lvdl9wdWxsX2tlcm4oJnR4cS0+aW92LCBtdm5ldC0+YnVmZmVyLAorCQkJCQkJICAgIFBBR0Vf
U0laRSk7CisJCQlpZiAocmVhZCA8PSAwKQorCQkJCWJyZWFrOworCisJCQl3cml0ZSA9IHZyaW5n
aF9pb3ZfcHVzaF9rZXJuKCZyeHEtPmlvdiwgbXZuZXQtPmJ1ZmZlciwKKwkJCQkJCSAgICAgcmVh
ZCk7CisJCQlpZiAod3JpdGUgPD0gMCkKKwkJCQlicmVhazsKKworCQkJdG90YWxfd3JpdGUgKz0g
d3JpdGU7CisJCX0KKworCQkvKiBNYWtlIHN1cmUgZGF0YSBpcyB3cm90ZSBiZWZvcmUgYWR2YW5j
aW5nIGluZGV4ICovCisJCXNtcF93bWIoKTsKKworCQl2cmluZ2hfY29tcGxldGVfa2VybigmdHhx
LT52cmluZywgdHhxLT5oZWFkLCAwKTsKKwkJdnJpbmdoX2NvbXBsZXRlX2tlcm4oJnJ4cS0+dnJp
bmcsIHJ4cS0+aGVhZCwgdG90YWxfd3JpdGUpOworCisJCS8qIE1ha2Ugc3VyZSB1c2VkIGlzIHZp
c2libGUgYmVmb3JlIHJhc2luZyB0aGUgaW50ZXJydXB0LiAqLworCQlzbXBfd21iKCk7CisKKwkJ
bG9jYWxfYmhfZGlzYWJsZSgpOworCQlpZiAodHhxLT5jYikKKwkJCXR4cS0+Y2IodHhxLT5wcml2
YXRlKTsKKwkJaWYgKHJ4cS0+Y2IpCisJCQlyeHEtPmNiKHJ4cS0+cHJpdmF0ZSk7CisJCWxvY2Fs
X2JoX2VuYWJsZSgpOworCisJCWlmICgrK3BrdHMgPiA0KSB7CisJCQlzY2hlZHVsZV93b3JrKCZt
dm5ldC0+d29yayk7CisJCQlnb3RvIG91dDsKKwkJfQorCX0KKworb3V0OgorCXNwaW5fdW5sb2Nr
KCZtdm5ldC0+bG9jayk7Cit9CisKK3N0YXRpYyBkbWFfYWRkcl90IG12bmV0X21hcF9wYWdlKHN0
cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IHBhZ2UgKnBhZ2UsCisJCQkJIHVuc2lnbmVkIGxvbmcg
b2Zmc2V0LCBzaXplX3Qgc2l6ZSwKKwkJCQkgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyLAor
CQkJCSB1bnNpZ25lZCBsb25nIGF0dHJzKQoreworCS8qIFZyaW5naCBjYW4gb25seSB1c2UgSFZB
ICovCisJcmV0dXJuIChkbWFfYWRkcl90KShwYWdlX2FkZHJlc3MocGFnZSkgKyBvZmZzZXQpOwor
fQorCitzdGF0aWMgdm9pZCBtdm5ldF91bm1hcF9wYWdlKHN0cnVjdCBkZXZpY2UgKmRldiwgZG1h
X2FkZHJfdCBkbWFfYWRkciwKKwkJCSAgICAgc2l6ZV90IHNpemUsIGVudW0gZG1hX2RhdGFfZGly
ZWN0aW9uIGRpciwKKwkJCSAgICAgdW5zaWduZWQgbG9uZyBhdHRycykKK3sKK30KKworc3RhdGlj
IHZvaWQgKm12bmV0X2FsbG9jX2NvaGVyZW50KHN0cnVjdCBkZXZpY2UgKmRldiwgc2l6ZV90IHNp
emUsCisJCQkJICBkbWFfYWRkcl90ICpkbWFfYWRkciwgZ2ZwX3QgZmxhZywKKwkJCQkgIHVuc2ln
bmVkIGxvbmcgYXR0cnMpCit7CisJdm9pZCAqYWRkciA9IGttYWxsb2Moc2l6ZSwgZmxhZyk7CisK
KwlpZiAoYWRkciA9PSBOVUxMKQorCQkqZG1hX2FkZHIgPSBETUFfTUFQUElOR19FUlJPUjsKKwll
bHNlCisJCSpkbWFfYWRkciA9IChkbWFfYWRkcl90KSBhZGRyOworCisJcmV0dXJuIGFkZHI7Cit9
CisKK3N0YXRpYyB2b2lkIG12bmV0X2ZyZWVfY29oZXJlbnQoc3RydWN0IGRldmljZSAqZGV2LCBz
aXplX3Qgc2l6ZSwKKwkJCQl2b2lkICp2YWRkciwgZG1hX2FkZHJfdCBkbWFfYWRkciwKKwkJCQl1
bnNpZ25lZCBsb25nIGF0dHJzKQoreworCWtmcmVlKCh2b2lkICopZG1hX2FkZHIpOworfQorCitz
dGF0aWMgY29uc3Qgc3RydWN0IGRtYV9tYXBfb3BzIG12bmV0X2RtYV9vcHMgPSB7CisJLm1hcF9w
YWdlID0gbXZuZXRfbWFwX3BhZ2UsCisJLnVubWFwX3BhZ2UgPSBtdm5ldF91bm1hcF9wYWdlLAor
CS5hbGxvYyA9IG12bmV0X2FsbG9jX2NvaGVyZW50LAorCS5mcmVlID0gbXZuZXRfZnJlZV9jb2hl
cmVudCwKK307CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgdmlydGlvX21kZXZfZGV2aWNlX29wcyB2
aXJ0aW9fbWRldl9vcHM7CisKK3N0YXRpYyBpbnQgbXZuZXRfY3JlYXRlKHN0cnVjdCBrb2JqZWN0
ICprb2JqLCBzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpCit7CisJc3RydWN0IG12bmV0X3N0YXRl
ICptdm5ldDsKKwlzdHJ1Y3QgdmlydGlvX25ldF9jb25maWcgKmNvbmZpZzsKKwlzdHJ1Y3QgZGV2
aWNlICpkZXYgPSBtZGV2X2RldihtZGV2KTsKKworCWlmICghbWRldikKKwkJcmV0dXJuIC1FSU5W
QUw7CisKKwltdm5ldCA9IGt6YWxsb2Moc2l6ZW9mKHN0cnVjdCBtdm5ldF9zdGF0ZSksIEdGUF9L
RVJORUwpOworCWlmIChtdm5ldCA9PSBOVUxMKQorCQlyZXR1cm4gLUVOT01FTTsKKworCW12bmV0
LT5idWZmZXIgPSBrbWFsbG9jKFBBR0VfU0laRSwgR0ZQX0tFUk5FTCk7CisJaWYgKCFtdm5ldC0+
YnVmZmVyKSB7CisJCWtmcmVlKG12bmV0KTsKKwkJcmV0dXJuIC1FTk9NRU07CisJfQorCisJY29u
ZmlnID0gJm12bmV0LT5jb25maWc7CisJY29uZmlnLT5tdHUgPSAxNTAwOworCWNvbmZpZy0+c3Rh
dHVzID0gVklSVElPX05FVF9TX0xJTktfVVA7CisJZXRoX3JhbmRvbV9hZGRyKGNvbmZpZy0+bWFj
KTsKKworCUlOSVRfV09SSygmbXZuZXQtPndvcmssIG12bmV0X3dvcmspOworCisJc3Bpbl9sb2Nr
X2luaXQoJm12bmV0LT5sb2NrKTsKKwltdm5ldC0+bWRldiA9IG1kZXY7CisJbWRldl9zZXRfZHJ2
ZGF0YShtZGV2LCBtdm5ldCk7CisKKwltdXRleF9sb2NrKCZtZGV2X2xpc3RfbG9jayk7CisJbGlz
dF9hZGQoJm12bmV0LT5uZXh0LCAmbWRldl9kZXZpY2VzX2xpc3QpOworCW11dGV4X3VubG9jaygm
bWRldl9saXN0X2xvY2spOworCisJZGV2LT5jb2hlcmVudF9kbWFfbWFzayA9IERNQV9CSVRfTUFT
Syg2NCk7CisJc2V0X2RtYV9vcHMoZGV2LCAmbXZuZXRfZG1hX29wcyk7CisKKwltZGV2X3NldF9j
bGFzcyhtZGV2LCBNREVWX0lEX1ZJUlRJTywgJnZpcnRpb19tZGV2X29wcyk7CisKKwlyZXR1cm4g
MDsKK30KKworc3RhdGljIGludCBtdm5ldF9yZW1vdmUoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2
KQoreworCXN0cnVjdCBtdm5ldF9zdGF0ZSAqbWRzLCAqdG1wX21kczsKKwlzdHJ1Y3QgbXZuZXRf
c3RhdGUgKm12bmV0ID0gbWRldl9nZXRfZHJ2ZGF0YShtZGV2KTsKKwlpbnQgcmV0ID0gLUVJTlZB
TDsKKworCW11dGV4X2xvY2soJm1kZXZfbGlzdF9sb2NrKTsKKwlsaXN0X2Zvcl9lYWNoX2VudHJ5
X3NhZmUobWRzLCB0bXBfbWRzLCAmbWRldl9kZXZpY2VzX2xpc3QsIG5leHQpIHsKKwkJaWYgKG12
bmV0ID09IG1kcykgeworCQkJbGlzdF9kZWwoJm12bmV0LT5uZXh0KTsKKwkJCW1kZXZfc2V0X2Ry
dmRhdGEobWRldiwgTlVMTCk7CisJCQlrZnJlZShtdm5ldC0+YnVmZmVyKTsKKwkJCWtmcmVlKG12
bmV0KTsKKwkJCXJldCA9IDA7CisJCQlicmVhazsKKwkJfQorCX0KKwltdXRleF91bmxvY2soJm1k
ZXZfbGlzdF9sb2NrKTsKKworCXJldHVybiByZXQ7Cit9CisKK3N0YXRpYyBzc2l6ZV90CitzYW1w
bGVfbXZuZXRfZGV2X3Nob3coc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlX2F0dHJp
YnV0ZSAqYXR0ciwKKwkJICAgICBjaGFyICpidWYpCit7CisJaWYgKG1kZXZfZnJvbV9kZXYoZGV2
KSkKKwkJcmV0dXJuIHNwcmludGYoYnVmLCAiVGhpcyBpcyBNREVWICVzXG4iLCBkZXZfbmFtZShk
ZXYpKTsKKworCXJldHVybiBzcHJpbnRmKGJ1ZiwgIlxuIik7Cit9CisKK3N0YXRpYyBERVZJQ0Vf
QVRUUl9STyhzYW1wbGVfbXZuZXRfZGV2KTsKKworc3RhdGljIHN0cnVjdCBhdHRyaWJ1dGUgKm12
bmV0X2Rldl9hdHRyc1tdID0geworCSZkZXZfYXR0cl9zYW1wbGVfbXZuZXRfZGV2LmF0dHIsCisJ
TlVMTCwKK307CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgYXR0cmlidXRlX2dyb3VwIG12bmV0X2Rl
dl9ncm91cCA9IHsKKwkubmFtZSAgPSAibXZuZXRfZGV2IiwKKwkuYXR0cnMgPSBtdm5ldF9kZXZf
YXR0cnMsCit9OworCitzdGF0aWMgY29uc3Qgc3RydWN0IGF0dHJpYnV0ZV9ncm91cCAqbXZuZXRf
ZGV2X2dyb3Vwc1tdID0geworCSZtdm5ldF9kZXZfZ3JvdXAsCisJTlVMTCwKK307CisKK3N0YXRp
YyBzc2l6ZV90CitzYW1wbGVfbWRldl9kZXZfc2hvdyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVj
dCBkZXZpY2VfYXR0cmlidXRlICphdHRyLAorCQkgICAgIGNoYXIgKmJ1ZikKK3sKKwlpZiAobWRl
dl9mcm9tX2RldihkZXYpKQorCQlyZXR1cm4gc3ByaW50ZihidWYsICJUaGlzIGlzIE1ERVYgJXNc
biIsIGRldl9uYW1lKGRldikpOworCisJcmV0dXJuIHNwcmludGYoYnVmLCAiXG4iKTsKK30KKwor
c3RhdGljIERFVklDRV9BVFRSX1JPKHNhbXBsZV9tZGV2X2Rldik7CisKK3N0YXRpYyBzdHJ1Y3Qg
YXR0cmlidXRlICptZGV2X2Rldl9hdHRyc1tdID0geworCSZkZXZfYXR0cl9zYW1wbGVfbWRldl9k
ZXYuYXR0ciwKKwlOVUxMLAorfTsKKworc3RhdGljIGNvbnN0IHN0cnVjdCBhdHRyaWJ1dGVfZ3Jv
dXAgbWRldl9kZXZfZ3JvdXAgPSB7CisJLm5hbWUgID0gInZlbmRvciIsCisJLmF0dHJzID0gbWRl
dl9kZXZfYXR0cnMsCit9OworCitzdGF0aWMgY29uc3Qgc3RydWN0IGF0dHJpYnV0ZV9ncm91cCAq
bWRldl9kZXZfZ3JvdXBzW10gPSB7CisJJm1kZXZfZGV2X2dyb3VwLAorCU5VTEwsCit9OworCisj
ZGVmaW5lIE1WTkVUX1NUUklOR19MRU4gMTYKKworc3RhdGljIHNzaXplX3QKK25hbWVfc2hvdyhz
dHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0IGRldmljZSAqZGV2LCBjaGFyICpidWYpCit7CisJ
Y2hhciBuYW1lW01WTkVUX1NUUklOR19MRU5dOworCWNvbnN0IGNoYXIgKm5hbWVfc3RyID0gInZp
cnRpby1uZXQiOworCisJc25wcmludGYobmFtZSwgTVZORVRfU1RSSU5HX0xFTiwgIiVzIiwgZGV2
X2RyaXZlcl9zdHJpbmcoZGV2KSk7CisJaWYgKCFzdHJjbXAoa29iai0+bmFtZSwgbmFtZSkpCisJ
CXJldHVybiBzcHJpbnRmKGJ1ZiwgIiVzXG4iLCBuYW1lX3N0cik7CisKKwlyZXR1cm4gLUVJTlZB
TDsKK30KKworc3RhdGljIE1ERVZfVFlQRV9BVFRSX1JPKG5hbWUpOworCitzdGF0aWMgc3NpemVf
dAorYXZhaWxhYmxlX2luc3RhbmNlc19zaG93KHN0cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3Qg
ZGV2aWNlICpkZXYsIGNoYXIgKmJ1ZikKK3sKKwlyZXR1cm4gc3ByaW50ZihidWYsICIlZFxuIiwg
SU5UX01BWCk7Cit9CisKK3N0YXRpYyBNREVWX1RZUEVfQVRUUl9STyhhdmFpbGFibGVfaW5zdGFu
Y2VzKTsKKworc3RhdGljIHNzaXplX3QgZGV2aWNlX2FwaV9zaG93KHN0cnVjdCBrb2JqZWN0ICpr
b2JqLCBzdHJ1Y3QgZGV2aWNlICpkZXYsCisJCQkgICAgICAgY2hhciAqYnVmKQoreworCXJldHVy
biBzcHJpbnRmKGJ1ZiwgIiVzXG4iLCBWSVJUSU9fTURFVl9ERVZJQ0VfQVBJX1NUUklORyk7Cit9
CisKK3N0YXRpYyBNREVWX1RZUEVfQVRUUl9STyhkZXZpY2VfYXBpKTsKKworc3RhdGljIHN0cnVj
dCBhdHRyaWJ1dGUgKm1kZXZfdHlwZXNfYXR0cnNbXSA9IHsKKwkmbWRldl90eXBlX2F0dHJfbmFt
ZS5hdHRyLAorCSZtZGV2X3R5cGVfYXR0cl9kZXZpY2VfYXBpLmF0dHIsCisJJm1kZXZfdHlwZV9h
dHRyX2F2YWlsYWJsZV9pbnN0YW5jZXMuYXR0ciwKKwlOVUxMLAorfTsKKworc3RhdGljIHN0cnVj
dCBhdHRyaWJ1dGVfZ3JvdXAgbWRldl90eXBlX2dyb3VwID0geworCS5uYW1lICA9ICJ2aXJ0aW8i
LAorCS5hdHRycyA9IG1kZXZfdHlwZXNfYXR0cnMsCit9OworCisvKiBUQkQ6ICJ2aG9zdCIgdHlw
ZSAqLworCitzdGF0aWMgc3RydWN0IGF0dHJpYnV0ZV9ncm91cCAqbWRldl90eXBlX2dyb3Vwc1td
ID0geworCSZtZGV2X3R5cGVfZ3JvdXAsCisJTlVMTCwKK307CisKK3N0YXRpYyBpbnQgbXZuZXRf
c2V0X3ZxX2FkZHJlc3Moc3RydWN0IG1kZXZfZGV2aWNlICptZGV2LCB1MTYgaWR4LAorCQkJCXU2
NCBkZXNjX2FyZWEsIHU2NCBkcml2ZXJfYXJlYSwgdTY0IGRldmljZV9hcmVhKQoreworCXN0cnVj
dCBtdm5ldF9zdGF0ZSAqbXZuZXQgPSBtZGV2X2dldF9kcnZkYXRhKG1kZXYpOworCXN0cnVjdCBt
dm5ldF92aXJ0cXVldWUgKnZxID0gJm12bmV0LT52cXNbaWR4XTsKKworCXZxLT5kZXNjX2FkZHIg
PSBkZXNjX2FyZWE7CisJdnEtPmRyaXZlcl9hZGRyID0gZHJpdmVyX2FyZWE7CisJdnEtPmRldmlj
ZV9hZGRyID0gZGV2aWNlX2FyZWE7CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIHZvaWQgbXZu
ZXRfc2V0X3ZxX251bShzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYsIHUxNiBpZHgsIHUzMiBudW0p
Cit7CisJc3RydWN0IG12bmV0X3N0YXRlICptdm5ldCA9IG1kZXZfZ2V0X2RydmRhdGEobWRldik7
CisJc3RydWN0IG12bmV0X3ZpcnRxdWV1ZSAqdnEgPSAmbXZuZXQtPnZxc1tpZHhdOworCisJdnEt
Pm51bSA9IG51bTsKK30KKworc3RhdGljIHZvaWQgbXZuZXRfa2lja192cShzdHJ1Y3QgbWRldl9k
ZXZpY2UgKm1kZXYsIHUxNiBpZHgpCit7CisJc3RydWN0IG12bmV0X3N0YXRlICptdm5ldCA9IG1k
ZXZfZ2V0X2RydmRhdGEobWRldik7CisJc3RydWN0IG12bmV0X3ZpcnRxdWV1ZSAqdnEgPSAmbXZu
ZXQtPnZxc1tpZHhdOworCisJaWYgKHZxLT5yZWFkeSkKKwkJc2NoZWR1bGVfd29yaygmbXZuZXQt
PndvcmspOworfQorCitzdGF0aWMgdm9pZCBtdm5ldF9zZXRfdnFfY2Ioc3RydWN0IG1kZXZfZGV2
aWNlICptZGV2LCB1MTYgaWR4LAorCQkJICAgIHN0cnVjdCB2aXJ0aW9fbWRldl9jYWxsYmFjayAq
Y2IpCit7CisJc3RydWN0IG12bmV0X3N0YXRlICptdm5ldCA9IG1kZXZfZ2V0X2RydmRhdGEobWRl
dik7CisJc3RydWN0IG12bmV0X3ZpcnRxdWV1ZSAqdnEgPSAmbXZuZXQtPnZxc1tpZHhdOworCisJ
dnEtPmNiID0gY2ItPmNhbGxiYWNrOworCXZxLT5wcml2YXRlID0gY2ItPnByaXZhdGU7Cit9CisK
K3N0YXRpYyB2b2lkIG12bmV0X3NldF92cV9yZWFkeShzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYs
IHUxNiBpZHgsIGJvb2wgcmVhZHkpCit7CisJc3RydWN0IG12bmV0X3N0YXRlICptdm5ldCA9IG1k
ZXZfZ2V0X2RydmRhdGEobWRldik7CisJc3RydWN0IG12bmV0X3ZpcnRxdWV1ZSAqdnEgPSAmbXZu
ZXQtPnZxc1tpZHhdOworCisJc3Bpbl9sb2NrKCZtdm5ldC0+bG9jayk7CisJdnEtPnJlYWR5ID0g
cmVhZHk7CisJaWYgKHZxLT5yZWFkeSkKKwkJbXZuZXRfcXVldWVfcmVhZHkobXZuZXQsIGlkeCk7
CisJc3Bpbl91bmxvY2soJm12bmV0LT5sb2NrKTsKK30KKworc3RhdGljIGJvb2wgbXZuZXRfZ2V0
X3ZxX3JlYWR5KHN0cnVjdCBtZGV2X2RldmljZSAqbWRldiwgdTE2IGlkeCkKK3sKKwlzdHJ1Y3Qg
bXZuZXRfc3RhdGUgKm12bmV0ID0gbWRldl9nZXRfZHJ2ZGF0YShtZGV2KTsKKwlzdHJ1Y3QgbXZu
ZXRfdmlydHF1ZXVlICp2cSA9ICZtdm5ldC0+dnFzW2lkeF07CisKKwlyZXR1cm4gdnEtPnJlYWR5
OworfQorCitzdGF0aWMgaW50IG12bmV0X3NldF92cV9zdGF0ZShzdHJ1Y3QgbWRldl9kZXZpY2Ug
Km1kZXYsIHUxNiBpZHgsIHU2NCBzdGF0ZSkKK3sKKwlzdHJ1Y3QgbXZuZXRfc3RhdGUgKm12bmV0
ID0gbWRldl9nZXRfZHJ2ZGF0YShtZGV2KTsKKwlzdHJ1Y3QgbXZuZXRfdmlydHF1ZXVlICp2cSA9
ICZtdm5ldC0+dnFzW2lkeF07CisJc3RydWN0IHZyaW5naCAqdnJoID0gJnZxLT52cmluZzsKKwor
CXNwaW5fbG9jaygmbXZuZXQtPmxvY2spOworCXZyaC0+bGFzdF9hdmFpbF9pZHggPSBzdGF0ZTsK
KwlzcGluX3VubG9jaygmbXZuZXQtPmxvY2spOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyB1
NjQgbXZuZXRfZ2V0X3ZxX3N0YXRlKHN0cnVjdCBtZGV2X2RldmljZSAqbWRldiwgdTE2IGlkeCkK
K3sKKwlzdHJ1Y3QgbXZuZXRfc3RhdGUgKm12bmV0ID0gbWRldl9nZXRfZHJ2ZGF0YShtZGV2KTsK
KwlzdHJ1Y3QgbXZuZXRfdmlydHF1ZXVlICp2cSA9ICZtdm5ldC0+dnFzW2lkeF07CisJc3RydWN0
IHZyaW5naCAqdnJoID0gJnZxLT52cmluZzsKKworCXJldHVybiB2cmgtPmxhc3RfYXZhaWxfaWR4
OworfQorCitzdGF0aWMgdTE2IG12bmV0X2dldF92cV9hbGlnbihzdHJ1Y3QgbWRldl9kZXZpY2Ug
Km1kZXYpCit7CisJcmV0dXJuIE1WTkVUX1FVRVVFX0FMSUdOOworfQorCitzdGF0aWMgdTY0IG12
bmV0X2dldF9mZWF0dXJlcyhzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpCit7CisJcmV0dXJuIG12
bmV0X2ZlYXR1cmVzOworfQorCitzdGF0aWMgaW50IG12bmV0X3NldF9mZWF0dXJlcyhzdHJ1Y3Qg
bWRldl9kZXZpY2UgKm1kZXYsIHU2NCBmZWF0dXJlcykKK3sKKwlzdHJ1Y3QgbXZuZXRfc3RhdGUg
Km12bmV0ID0gbWRldl9nZXRfZHJ2ZGF0YShtZGV2KTsKKworCS8qIERNQSBtYXBwaW5nIG11c3Qg
YmUgZG9uZSBieSBkcml2ZXIgKi8KKwlpZiAoIShmZWF0dXJlcyAmICgxVUxMIDw8IFZJUlRJT19G
X0lPTU1VX1BMQVRGT1JNKSkpCisJCXJldHVybiAtRUlOVkFMOworCisJbXZuZXQtPmZlYXR1cmVz
ID0gZmVhdHVyZXMgJiBtdm5ldF9mZWF0dXJlczsKKworCXJldHVybiAwOworfQorCitzdGF0aWMg
dm9pZCBtdm5ldF9zZXRfY29uZmlnX2NiKHN0cnVjdCBtZGV2X2RldmljZSAqbWRldiwKKwkJCQlz
dHJ1Y3QgdmlydGlvX21kZXZfY2FsbGJhY2sgKmNiKQoreworCS8qIFdlIGRvbid0IHN1cHBvcnQg
Y29uZmlnIGludGVycnVwdCAqLworfQorCitzdGF0aWMgdTE2IG12bmV0X2dldF92cV9udW1fbWF4
KHN0cnVjdCBtZGV2X2RldmljZSAqbWRldikKK3sKKwlyZXR1cm4gTVZORVRfUVVFVUVfTUFYOwor
fQorCitzdGF0aWMgdTMyIG12bmV0X2dldF9kZXZpY2VfaWQoc3RydWN0IG1kZXZfZGV2aWNlICpt
ZGV2KQoreworCXJldHVybiBNVk5FVF9ERVZJQ0VfSUQ7Cit9CisKK3N0YXRpYyB1MzIgbXZuZXRf
Z2V0X3ZlbmRvcl9pZChzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpCit7CisJcmV0dXJuIE1WTkVU
X1ZFTkRPUl9JRDsKK30KKworc3RhdGljIHU4IG12bmV0X2dldF9zdGF0dXMoc3RydWN0IG1kZXZf
ZGV2aWNlICptZGV2KQoreworCXN0cnVjdCBtdm5ldF9zdGF0ZSAqbXZuZXQgPSBtZGV2X2dldF9k
cnZkYXRhKG1kZXYpOworCisJcmV0dXJuIG12bmV0LT5zdGF0dXM7Cit9CisKK3N0YXRpYyB2b2lk
IG12bmV0X3NldF9zdGF0dXMoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2LCB1OCBzdGF0dXMpCit7
CisJc3RydWN0IG12bmV0X3N0YXRlICptdm5ldCA9IG1kZXZfZ2V0X2RydmRhdGEobWRldik7CisK
Kwltdm5ldC0+c3RhdHVzID0gc3RhdHVzOworCisJaWYgKHN0YXR1cyA9PSAwKSB7CisJCXNwaW5f
bG9jaygmbXZuZXQtPmxvY2spOworCQltdm5ldF9yZXNldChtdm5ldCk7CisJCXNwaW5fdW5sb2Nr
KCZtdm5ldC0+bG9jayk7CisJfQorfQorCitzdGF0aWMgdm9pZCBtdm5ldF9nZXRfY29uZmlnKHN0
cnVjdCBtZGV2X2RldmljZSAqbWRldiwgdW5zaWduZWQgaW50IG9mZnNldCwKKwkJCSAgICAgdm9p
ZCAqYnVmLCB1bnNpZ25lZCBpbnQgbGVuKQoreworCXN0cnVjdCBtdm5ldF9zdGF0ZSAqbXZuZXQg
PSBtZGV2X2dldF9kcnZkYXRhKG1kZXYpOworCisJaWYgKG9mZnNldCArIGxlbiA8IHNpemVvZihz
dHJ1Y3QgdmlydGlvX25ldF9jb25maWcpKQorCQltZW1jcHkoYnVmLCAmbXZuZXQtPmNvbmZpZyAr
IG9mZnNldCwgbGVuKTsKK30KKworc3RhdGljIHZvaWQgbXZuZXRfc2V0X2NvbmZpZyhzdHJ1Y3Qg
bWRldl9kZXZpY2UgKm1kZXYsIHVuc2lnbmVkIGludCBvZmZzZXQsCisJCQkgICAgIGNvbnN0IHZv
aWQgKmJ1ZiwgdW5zaWduZWQgaW50IGxlbikKK3sKKwkvKiBObyB3cml0YWJsZSBjb25maWcgc3Vw
cG9ydHRlZCBieSBtdm5ldCAqLworfQorCitzdGF0aWMgdTY0IG12bmV0X2dldF9tZGV2X2ZlYXR1
cmVzKHN0cnVjdCBtZGV2X2RldmljZSAqbWRldikKK3sKKwlyZXR1cm4gVklSVElPX01ERVZfRl9W
RVJTSU9OXzE7Cit9CisKK3N0YXRpYyB1MzIgbXZuZXRfZ2V0X2dlbmVyYXRpb24oc3RydWN0IG1k
ZXZfZGV2aWNlICptZGV2KQoreworCXN0cnVjdCBtdm5ldF9zdGF0ZSAqbXZuZXQgPSBtZGV2X2dl
dF9kcnZkYXRhKG1kZXYpOworCisJcmV0dXJuIG12bmV0LT5nZW5lcmF0aW9uOworfQorCitzdGF0
aWMgY29uc3Qgc3RydWN0IHZpcnRpb19tZGV2X2RldmljZV9vcHMgdmlydGlvX21kZXZfb3BzID0g
eworCS5zZXRfdnFfYWRkcmVzcyAgICAgICAgID0gbXZuZXRfc2V0X3ZxX2FkZHJlc3MsCisJLnNl
dF92cV9udW0gICAgICAgICAgICAgPSBtdm5ldF9zZXRfdnFfbnVtLAorCS5raWNrX3ZxICAgICAg
ICAgICAgICAgID0gbXZuZXRfa2lja192cSwKKwkuc2V0X3ZxX2NiICAgICAgICAgICAgICA9IG12
bmV0X3NldF92cV9jYiwKKwkuc2V0X3ZxX3JlYWR5ICAgICAgICAgICA9IG12bmV0X3NldF92cV9y
ZWFkeSwKKwkuZ2V0X3ZxX3JlYWR5ICAgICAgICAgICA9IG12bmV0X2dldF92cV9yZWFkeSwKKwku
c2V0X3ZxX3N0YXRlICAgICAgICAgICA9IG12bmV0X3NldF92cV9zdGF0ZSwKKwkuZ2V0X3ZxX3N0
YXRlICAgICAgICAgICA9IG12bmV0X2dldF92cV9zdGF0ZSwKKwkuZ2V0X3ZxX2FsaWduICAgICAg
ICAgICA9IG12bmV0X2dldF92cV9hbGlnbiwKKwkuZ2V0X2ZlYXR1cmVzICAgICAgICAgICA9IG12
bmV0X2dldF9mZWF0dXJlcywKKwkuc2V0X2ZlYXR1cmVzICAgICAgICAgICA9IG12bmV0X3NldF9m
ZWF0dXJlcywKKwkuc2V0X2NvbmZpZ19jYiAgICAgICAgICA9IG12bmV0X3NldF9jb25maWdfY2Is
CisJLmdldF92cV9udW1fbWF4ICAgICAgICAgPSBtdm5ldF9nZXRfdnFfbnVtX21heCwKKwkuZ2V0
X2RldmljZV9pZCAgICAgICAgICA9IG12bmV0X2dldF9kZXZpY2VfaWQsCisJLmdldF92ZW5kb3Jf
aWQgICAgICAgICAgPSBtdm5ldF9nZXRfdmVuZG9yX2lkLAorCS5nZXRfc3RhdHVzICAgICAgICAg
ICAgID0gbXZuZXRfZ2V0X3N0YXR1cywKKwkuc2V0X3N0YXR1cyAgICAgICAgICAgICA9IG12bmV0
X3NldF9zdGF0dXMsCisJLmdldF9jb25maWcgICAgICAgICAgICAgPSBtdm5ldF9nZXRfY29uZmln
LAorCS5zZXRfY29uZmlnICAgICAgICAgICAgID0gbXZuZXRfc2V0X2NvbmZpZywKKwkuZ2V0X21k
ZXZfZmVhdHVyZXMgICAgICA9IG12bmV0X2dldF9tZGV2X2ZlYXR1cmVzLAorCS5nZXRfZ2VuZXJh
dGlvbiAgICAgICAgID0gbXZuZXRfZ2V0X2dlbmVyYXRpb24sCit9OworCitzdGF0aWMgY29uc3Qg
c3RydWN0IG1kZXZfcGFyZW50X29wcyBtZGV2X2ZvcHMgPSB7CisJLm93bmVyICAgICAgICAgICAg
ICAgICAgPSBUSElTX01PRFVMRSwKKwkuZGV2X2F0dHJfZ3JvdXBzICAgICAgICA9IG12bmV0X2Rl
dl9ncm91cHMsCisJLm1kZXZfYXR0cl9ncm91cHMgICAgICAgPSBtZGV2X2Rldl9ncm91cHMsCisJ
LnN1cHBvcnRlZF90eXBlX2dyb3VwcyAgPSBtZGV2X3R5cGVfZ3JvdXBzLAorCS5jcmVhdGUgICAg
ICAgICAgICAgICAgID0gbXZuZXRfY3JlYXRlLAorCS5yZW1vdmUJCQk9IG12bmV0X3JlbW92ZSwK
K307CisKK3N0YXRpYyB2b2lkIG12bmV0X2RldmljZV9yZWxlYXNlKHN0cnVjdCBkZXZpY2UgKmRl
dikKK3sKKwlkZXZfZGJnKGRldiwgIm12bmV0OiByZWxlYXNlZFxuIik7Cit9CisKK3N0YXRpYyBp
bnQgX19pbml0IG12bmV0X2Rldl9pbml0KHZvaWQpCit7CisJaW50IHJldCA9IDA7CisKKwlwcl9p
bmZvKCJtdm5ldF9kZXY6ICVzXG4iLCBfX2Z1bmNfXyk7CisKKwltZW1zZXQoJm12bmV0X2Rldiwg
MCwgc2l6ZW9mKG12bmV0X2RldikpOworCisJaWRyX2luaXQoJm12bmV0X2Rldi52ZF9pZHIpOwor
CisJbXZuZXRfZGV2LnZkX2NsYXNzID0gY2xhc3NfY3JlYXRlKFRISVNfTU9EVUxFLCBNVk5FVF9D
TEFTU19OQU1FKTsKKworCWlmIChJU19FUlIobXZuZXRfZGV2LnZkX2NsYXNzKSkgeworCQlwcl9l
cnIoIkVycm9yOiBmYWlsZWQgdG8gcmVnaXN0ZXIgbXZuZXRfZGV2IGNsYXNzXG4iKTsKKwkJcmV0
ID0gUFRSX0VSUihtdm5ldF9kZXYudmRfY2xhc3MpOworCQlnb3RvIGZhaWxlZDE7CisJfQorCisJ
bXZuZXRfZGV2LmRldi5jbGFzcyA9IG12bmV0X2Rldi52ZF9jbGFzczsKKwltdm5ldF9kZXYuZGV2
LnJlbGVhc2UgPSBtdm5ldF9kZXZpY2VfcmVsZWFzZTsKKwlkZXZfc2V0X25hbWUoJm12bmV0X2Rl
di5kZXYsICIlcyIsIE1WTkVUX05BTUUpOworCisJcmV0ID0gZGV2aWNlX3JlZ2lzdGVyKCZtdm5l
dF9kZXYuZGV2KTsKKwlpZiAocmV0KQorCQlnb3RvIGZhaWxlZDI7CisKKwlyZXQgPSBtZGV2X3Jl
Z2lzdGVyX2RldmljZSgmbXZuZXRfZGV2LmRldiwgJm1kZXZfZm9wcyk7CisJaWYgKHJldCkKKwkJ
Z290byBmYWlsZWQzOworCisJbXV0ZXhfaW5pdCgmbWRldl9saXN0X2xvY2spOworCUlOSVRfTElT
VF9IRUFEKCZtZGV2X2RldmljZXNfbGlzdCk7CisKKwlnb3RvIGFsbF9kb25lOworCitmYWlsZWQz
OgorCisJZGV2aWNlX3VucmVnaXN0ZXIoJm12bmV0X2Rldi5kZXYpOworZmFpbGVkMjoKKwljbGFz
c19kZXN0cm95KG12bmV0X2Rldi52ZF9jbGFzcyk7CisKK2ZhaWxlZDE6CithbGxfZG9uZToKKwly
ZXR1cm4gcmV0OworfQorCitzdGF0aWMgdm9pZCBfX2V4aXQgbXZuZXRfZGV2X2V4aXQodm9pZCkK
K3sKKwltdm5ldF9kZXYuZGV2LmJ1cyA9IE5VTEw7CisJbWRldl91bnJlZ2lzdGVyX2RldmljZSgm
bXZuZXRfZGV2LmRldik7CisKKwlkZXZpY2VfdW5yZWdpc3RlcigmbXZuZXRfZGV2LmRldik7CisJ
aWRyX2Rlc3Ryb3koJm12bmV0X2Rldi52ZF9pZHIpOworCWNsYXNzX2Rlc3Ryb3kobXZuZXRfZGV2
LnZkX2NsYXNzKTsKKwltdm5ldF9kZXYudmRfY2xhc3MgPSBOVUxMOworCXByX2luZm8oIm12bmV0
X2RldjogVW5sb2FkZWQhXG4iKTsKK30KKworbW9kdWxlX2luaXQobXZuZXRfZGV2X2luaXQpCitt
b2R1bGVfZXhpdChtdm5ldF9kZXZfZXhpdCkKKworTU9EVUxFX0xJQ0VOU0UoIkdQTCB2MiIpOwor
TU9EVUxFX0lORk8oc3VwcG9ydGVkLCAiU2ltdWxhdGUgbG9vcGJhY2sgZXRoZXJuZXQgZGV2aWNl
IG92ZXIgbWRldiIpOworTU9EVUxFX1ZFUlNJT04oVkVSU0lPTl9TVFJJTkcpOworTU9EVUxFX0FV
VEhPUihEUklWRVJfQVVUSE9SKTsKLS0gCjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
