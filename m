Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B608F1A9
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 19:12:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 405696EA01;
	Thu, 15 Aug 2019 17:12:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38E716EA01
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 17:12:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 10:12:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,389,1559545200"; d="scan'208";a="377146340"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga006.fm.intel.com with ESMTP; 15 Aug 2019 10:12:31 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.129.244])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7FHCU6j030661; Thu, 15 Aug 2019 18:12:31 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Aug 2019 17:12:24 +0000
Message-Id: <20190815171228.31920-2-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190815171228.31920-1-michal.wajdeczko@intel.com>
References: <20190815171228.31920-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/uc: Move FW size sanity check back
 to fetch
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgoKV2hp
bGUgd2UgbmVlZCB0byBrbm93IFdPUENNIHNpemUgdG8gZG8gdGhpcyBzYW5pdHkgY2hlY2ssIGl0
IGhhcyBtb3JlIHRvCmRvIHdpdGggRlcgdGhhbiB3aXRoIFdPUENNLiBMZXQncyBtb3ZlIHRoZSBj
aGVjayB0byBmZXRjaCBwaGFzZSwgaXQncwpub3QgbGlrZSBXT1BDTSBpcyBnb2luZyB0byBncm93
IGluIHRoZSBtZWFudGltZS4KCnYyOiByZWJhc2VkCnYzOiB1c2UgX19pbnRlbF91Y19md19nZXRf
dXBsb2FkX3NpemUgKERhbmllbGUpCgpTaWduZWQtb2ZmLWJ5OiBNaWNoYcWCIFdpbmlhcnNraSA8
bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6
a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogSmFja2llIExpIDx5YW9kb25nLmxpQGludGVsLmNv
bT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4K
UmV2aWV3ZWQtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJp
b0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncu
YyB8IDExICsrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19m
dy5oIHwgIDcgKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20uYyAgICAg
ICB8IDE0ICsrLS0tLS0tLS0tLS0tCiAzIGZpbGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyks
IDEzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX3VjX2Z3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5j
CmluZGV4IGQwNTZlMWY0YmQ2ZC4uZjRhMzRlYTU3OWZkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX3VjX2Z3LmMKQEAgLTI2NSw2ICsyNjUsNyBAQCBpbnQgaW50ZWxfdWNfZndf
ZmV0Y2goc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdywgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCiAJc2l6ZV90IHNpemU7CiAJaW50IGVycjsKIAorCUdFTV9CVUdfT04oIWk5MTUtPndv
cGNtLnNpemUpOwogCUdFTV9CVUdfT04oIWludGVsX3VjX2Z3X3N1cHBvcnRlZCh1Y19mdykpOwog
CiAJZXJyID0gaTkxNV9pbmplY3RfbG9hZF9lcnJvcihpOTE1LCAtRU5YSU8pOwpAQCAtMzI0LDYg
KzMyNSwxNiBAQCBpbnQgaW50ZWxfdWNfZndfZmV0Y2goc3RydWN0IGludGVsX3VjX2Z3ICp1Y19m
dywgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJCWdvdG8gZmFpbDsKIAl9CiAKKwkv
KiBTYW5pdHkgY2hlY2sgd2hldGhlciB0aGlzIGZ3IGlzIG5vdCBsYXJnZXIgdGhhbiB3aG9sZSBX
T1BDTSBtZW1vcnkgKi8KKwlzaXplID0gX19pbnRlbF91Y19md19nZXRfdXBsb2FkX3NpemUodWNf
ZncpOworCWlmICh1bmxpa2VseShzaXplID49IGk5MTUtPndvcGNtLnNpemUpKSB7CisJCWRldl93
YXJuKGRldiwgIiVzIGZpcm13YXJlICVzOiBpbnZhbGlkIHNpemU6ICV6dSA+ICV6dVxuIiwKKwkJ
CSBpbnRlbF91Y19md190eXBlX3JlcHIodWNfZnctPnR5cGUpLCB1Y19mdy0+cGF0aCwKKwkJCSBz
aXplLCAoc2l6ZV90KWk5MTUtPndvcGNtLnNpemUpOworCQllcnIgPSAtRTJCSUc7CisJCWdvdG8g
ZmFpbDsKKwl9CisKIAkvKiBHZXQgdmVyc2lvbiBudW1iZXJzIGZyb20gdGhlIENTUyBoZWFkZXIg
Ki8KIAlzd2l0Y2ggKHVjX2Z3LT50eXBlKSB7CiAJY2FzZSBJTlRFTF9VQ19GV19UWVBFX0dVQzoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5oCmluZGV4IGNlOGU4MzEyOGE5
NS4uNmZhNTAyNzNjMmNlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF91Y19mdy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3
LmgKQEAgLTE3Myw2ICsxNzMsMTEgQEAgc3RhdGljIGlubGluZSB2b2lkIGludGVsX3VjX2Z3X3Nh
bml0aXplKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncpCiAJCWludGVsX3VjX2Z3X2NoYW5nZV9z
dGF0dXModWNfZncsIElOVEVMX1VDX0ZJUk1XQVJFX0FWQUlMQUJMRSk7CiB9CiAKK3N0YXRpYyBp
bmxpbmUgdTMyIF9faW50ZWxfdWNfZndfZ2V0X3VwbG9hZF9zaXplKHN0cnVjdCBpbnRlbF91Y19m
dyAqdWNfZncpCit7CisJcmV0dXJuIHNpemVvZihzdHJ1Y3QgdWNfY3NzX2hlYWRlcikgKyB1Y19m
dy0+dWNvZGVfc2l6ZTsKK30KKwogLyoqCiAgKiBpbnRlbF91Y19md19nZXRfdXBsb2FkX3NpemUo
KSAtIEdldCBzaXplIG9mIGZpcm13YXJlIG5lZWRlZCB0byBiZSB1cGxvYWRlZC4KICAqIEB1Y19m
dzogdUMgZmlybXdhcmUuCkBAIC0xODYsNyArMTkxLDcgQEAgc3RhdGljIGlubGluZSB1MzIgaW50
ZWxfdWNfZndfZ2V0X3VwbG9hZF9zaXplKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncpCiAJaWYg
KCFpbnRlbF91Y19md19pc19hdmFpbGFibGUodWNfZncpKQogCQlyZXR1cm4gMDsKIAotCXJldHVy
biBzaXplb2Yoc3RydWN0IHVjX2Nzc19oZWFkZXIpICsgdWNfZnctPnVjb2RlX3NpemU7CisJcmV0
dXJuIF9faW50ZWxfdWNfZndfZ2V0X3VwbG9hZF9zaXplKHVjX2Z3KTsKIH0KIAogdm9pZCBpbnRl
bF91Y19md19pbml0X2Vhcmx5KHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncsCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93b3BjbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfd29wY20uYwppbmRleCAyYmRhMjQyMDA0OTguLjI5NzVlMDBmNTdmNSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20uYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF93b3BjbS5jCkBAIC0xODEsMjIgKzE4MSwxMiBAQCB2b2lkIGludGVs
X3dvcGNtX2luaXQoc3RydWN0IGludGVsX3dvcGNtICp3b3BjbSkKIAlHRU1fQlVHX09OKCF3b3Bj
bS0+c2l6ZSk7CiAJR0VNX0JVR19PTih3b3BjbS0+Z3VjLmJhc2UpOwogCUdFTV9CVUdfT04od29w
Y20tPmd1Yy5zaXplKTsKKwlHRU1fQlVHX09OKGd1Y19md19zaXplID49IHdvcGNtLT5zaXplKTsK
KwlHRU1fQlVHX09OKGh1Y19md19zaXplID49IHdvcGNtLT5zaXplKTsKIAogCWlmIChpOTE1X2lu
amVjdF9wcm9iZV9mYWlsdXJlKGk5MTUpKQogCQlyZXR1cm47CiAKLQlpZiAoZ3VjX2Z3X3NpemUg
Pj0gd29wY20tPnNpemUpIHsKLQkJRFJNX0VSUk9SKCJHdUMgRlcgKCV1S2lCKSBpcyB0b28gYmln
IHRvIGZpdCBpbiBXT1BDTS4iLAotCQkJICBndWNfZndfc2l6ZSAvIDEwMjQpOwotCQlyZXR1cm47
Ci0JfQotCi0JaWYgKGh1Y19md19zaXplID49IHdvcGNtLT5zaXplKSB7Ci0JCURSTV9FUlJPUigi
SHVDIEZXICgldUtpQikgaXMgdG9vIGJpZyB0byBmaXQgaW4gV09QQ00uIiwKLQkJCSAgaHVjX2Z3
X3NpemUgLyAxMDI0KTsKLQkJcmV0dXJuOwotCX0KLQogCWd1Y193b3BjbV9iYXNlID0gQUxJR04o
aHVjX2Z3X3NpemUgKyBXT1BDTV9SRVNFUlZFRF9TSVpFLAogCQkJICAgICAgIEdVQ19XT1BDTV9P
RkZTRVRfQUxJR05NRU5UKTsKIAlpZiAoKGd1Y193b3BjbV9iYXNlICsgY3R4X3JzdmQpID49IHdv
cGNtLT5zaXplKSB7Ci0tIAoyLjE5LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
