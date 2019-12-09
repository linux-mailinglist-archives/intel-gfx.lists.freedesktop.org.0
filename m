Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9794F117113
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 17:03:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8E526E4CF;
	Mon,  9 Dec 2019 16:03:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1241B6E4D0
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 16:03:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 08:02:56 -0800
X-IronPort-AV: E=Sophos;i="5.69,296,1571727600"; d="scan'208";a="295597827"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 08:02:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Dec 2019 18:02:00 +0200
Message-Id: <583761dfb63e63f7b5d5ae5fccee91c84d57a548.1575907078.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1575907078.git.jani.nikula@intel.com>
References: <cover.1575907078.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v4 07/15] drm/i915/dsc: add basic hardware state
 readout support
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIGJhc2ljIGhhcmR3YXJlIHN0YXRlIHJlYWRvdXQgZm9yIERTQywgYW5kIGNoZWNrIHRoZSBt
b3N0IHJlbGV2YW50CmRldGFpbHMgaW4gdGhlIHN0YXRlIGNoZWNrZXIuCgpBcyBhIHNpZGUgZWZm
ZWN0LCB0aGlzIHNob3VsZCBhbHNvIGdldCB0aGUgcG93ZXIgZG9tYWlucyBmb3IgdGhlIGVuYWJs
ZWQKRFNDIG9uIHRha2VvdmVyLCBhbmQgc3Vic2VxdWVudGx5IGRpc2FibGUgRFNDIGlmIGl0J3Mg
bm90IG5lZWRlZC4KCkNjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29t
PgpDYzogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgfCAgMiArKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAgNCArKysKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jICAgIHwgMzYgKysrKysrKysrKysrKysrKysr
KysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5oICAgIHwgIDIgKysK
IDQgZmlsZXMgY2hhbmdlZCwgNDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IDNjYWNiMWUyNzljMS4uOTg5NjRkMTI3Y2QxIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTQyOTEsNiArNDI5MSw4
IEBAIHZvaWQgaW50ZWxfZGRpX2dldF9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXIsCiAJaWYgKFdBUk5fT04odHJhbnNjb2Rlcl9pc19kc2koY3B1X3RyYW5zY29kZXIpKSkKIAkJ
cmV0dXJuOwogCisJaW50ZWxfZHNjX2dldF9jb25maWcoZW5jb2RlciwgcGlwZV9jb25maWcpOwor
CiAJdGVtcCA9IEk5MTVfUkVBRChUUkFOU19ERElfRlVOQ19DVEwoY3B1X3RyYW5zY29kZXIpKTsK
IAlpZiAodGVtcCAmIFRSQU5TX0RESV9QSFNZTkMpCiAJCWZsYWdzIHw9IERSTV9NT0RFX0ZMQUdf
UEhTWU5DOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpp
bmRleCAzMTkwYWEyN2ZmZGMuLjRmZDM0ZDJjYmE0ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTEzMzE2LDYgKzEzMzE2LDEwIEBAIGludGVs
X3BpcGVfY29uZmlnX2NvbXBhcmUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmN1cnJl
bnRfY29uZmlnLAogCVBJUEVfQ09ORl9DSEVDS19JKHN5bmNfbW9kZV9zbGF2ZXNfbWFzayk7CiAJ
UElQRV9DT05GX0NIRUNLX0kobWFzdGVyX3RyYW5zY29kZXIpOwogCisJUElQRV9DT05GX0NIRUNL
X0koZHNjLmNvbXByZXNzaW9uX2VuYWJsZSk7CisJUElQRV9DT05GX0NIRUNLX0koZHNjLmRzY19z
cGxpdCk7CisJUElQRV9DT05GX0NIRUNLX0koZHNjLmNvbXByZXNzZWRfYnBwKTsKKwogI3VuZGVm
IFBJUEVfQ09ORl9DSEVDS19YCiAjdW5kZWYgUElQRV9DT05GX0NIRUNLX0kKICN1bmRlZiBQSVBF
X0NPTkZfQ0hFQ0tfQk9PTApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF92ZHNjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2Mu
YwppbmRleCA3YmQ3MjcxMjlhOGYuLjRjMWIxYzVjNTVmZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMKQEAgLTg0NSw2ICs4NDUsNDIgQEAgc3RhdGljIHZvaWQg
aW50ZWxfZHNjX3Bwc19jb25maWd1cmUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJ
fQogfQogCit2b2lkIGludGVsX2RzY19nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLAorCQkJICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2Uu
ZGV2KTsKKwlzdHJ1Y3QgZHJtX2RzY19jb25maWcgKnZkc2NfY2ZnID0gJmNydGNfc3RhdGUtPmRz
Yy5jb25maWc7CisJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNf
c3RhdGUtPnVhcGkuY3J0Yyk7CisJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0gY3J0
Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXI7CisJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwor
CXUzMiBkc3NfY3RsMSwgZHNzX2N0bDIsIHZhbDsKKworCWlmIChjcnRjX3N0YXRlLT5jcHVfdHJh
bnNjb2RlciA9PSBUUkFOU0NPREVSX0VEUCkgeworCQlkc3NfY3RsMSA9IEk5MTVfUkVBRChEU1Nf
Q1RMMSk7CisJCWRzc19jdGwyID0gSTkxNV9SRUFEKERTU19DVEwyKTsKKwl9IGVsc2UgeworCQlk
c3NfY3RsMSA9IEk5MTVfUkVBRChJQ0xfUElQRV9EU1NfQ1RMMShwaXBlKSk7CisJCWRzc19jdGwy
ID0gSTkxNV9SRUFEKElDTF9QSVBFX0RTU19DVEwyKHBpcGUpKTsKKwl9CisKKwljcnRjX3N0YXRl
LT5kc2MuY29tcHJlc3Npb25fZW5hYmxlID0gZHNzX2N0bDIgJiBMRUZUX0JSQU5DSF9WRFNDX0VO
QUJMRTsKKwlpZiAoIWNydGNfc3RhdGUtPmRzYy5jb21wcmVzc2lvbl9lbmFibGUpCisJCXJldHVy
bjsKKworCWNydGNfc3RhdGUtPmRzYy5kc2Nfc3BsaXQgPSAoZHNzX2N0bDIgJiBSSUdIVF9CUkFO
Q0hfVkRTQ19FTkFCTEUpICYmCisJCShkc3NfY3RsMSAmIEpPSU5FUl9FTkFCTEUpOworCisJLyog
RklYTUU6IGFkZCBtb3JlIHN0YXRlIHJlYWRvdXQgYXMgbmVlZGVkICovCisKKwkvKiBQUFMxICov
CisJaWYgKGNwdV90cmFuc2NvZGVyID09IFRSQU5TQ09ERVJfRURQKQorCQl2YWwgPSBJOTE1X1JF
QUQoRFNDQV9QSUNUVVJFX1BBUkFNRVRFUl9TRVRfMSk7CisJZWxzZQorCQl2YWwgPSBJOTE1X1JF
QUQoSUNMX0RTQzBfUElDVFVSRV9QQVJBTUVURVJfU0VUXzEocGlwZSkpOworCXZkc2NfY2ZnLT5i
aXRzX3Blcl9waXhlbCA9IHZhbDsKKwljcnRjX3N0YXRlLT5kc2MuY29tcHJlc3NlZF9icHAgPSB2
ZHNjX2NmZy0+Yml0c19wZXJfcGl4ZWwgPj4gNDsKK30KKwogc3RhdGljIHZvaWQgaW50ZWxfZHNj
X2RzaV9wcHNfd3JpdGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkJICAgIGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuaAppbmRleCA0ZWQyMjU2NzUwYzMuLjU0MWMyOGE5
ZTE1OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNj
LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmgKQEAgLTE0
LDYgKzE0LDggQEAgdm9pZCBpbnRlbF9kc2NfZW5hYmxlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLAogdm9pZCBpbnRlbF9kc2NfZGlzYWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSk7CiBpbnQgaW50ZWxfZHNjX2NvbXB1dGVfcGFyYW1zKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
cGlwZV9jb25maWcpOwordm9pZCBpbnRlbF9kc2NfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKKwkJCSAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
OwogZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbgogaW50ZWxfZHNjX3Bvd2VyX2RvbWFp
bihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CiAKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
