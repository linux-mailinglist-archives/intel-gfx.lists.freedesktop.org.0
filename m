Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 743C1388379
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 02:07:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85CD96E895;
	Wed, 19 May 2021 00:07:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 180176E14B
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 00:06:55 +0000 (UTC)
IronPort-SDR: EcO5q2VNAK9yk5fn58MZZvkvwA2ywKhVdTqSxGt5vCAami7eXraYKi1lo391dUaGRogSvm0JUz
 uAC5AZAaocrA==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="264768415"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="264768415"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 17:06:52 -0700
IronPort-SDR: zCUFQeUX84yh00z8Atd5Nnlrz3hA6drjBhhgqPyi60UKd0GrH09JGEB7h8cTNFly3TaKWFZQAZ
 fx1sYeNZDRfA==
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="473214786"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 17:06:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 May 2021 17:06:22 -0700
Message-Id: <20210519000625.3184321-15-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210519000625.3184321-1-lucas.demarchi@intel.com>
References: <20210519000625.3184321-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 14/17] drm/i915/adl_p: Add PLL Support
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

RnJvbTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgoKVGhlIGNs
b2NrcyBpbiBBTERfUCBpcyBzaW1pbGFyIHRvIHRoYXQgb2YgVEdMLgpUaGUgY29tYm8gUExMcyAg
dXNlIHRoZSBzYW1lIERQTEwwLCBEUExMMSBhbmQgVEJUX1BMTC4KClRoaXMgcGF0Y2ggYWRkcyB0
aGUgaGVscGVyIGZ1bmN0aW9uIGludGVsX21nX3BsbF9lbmFibGVfcmVnKCkKd2hpY2ggaXMgc2lt
aWxhciB0byBpbnRlbF9jb21ib19wbGxfZW5hYmxlX3JlZygpIGZvciBiZWluZyBsb29rdXAKcGxh
Y2UgZm9yIFBMTF9FTkFCTEUgcmVnaXN0ZXIgaW4gY29tYm8gcGh5IGNhc2VzLgoKQnNwZWM6IDU1
NDA5LDU1MzE2CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpDYzog
Q2xpbnRvbiBUYXlsb3IgPGNsaW50b24uYS50YXlsb3JAaW50ZWwuY29tPgpDYzogTHVjYXMgRGUg
TWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNv
dXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW51c2hhIFNyaXZhdHNh
IDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBDbGludG9uIFRheWxv
ciA8Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIg
PG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDbGludCBUYXlsb3IgPENs
aW50b24uQS5UYXlsb3JAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkg
PGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwbGxfbWdyLmMgfCA2OSArKysrKysrKysrKysrKy0tLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAgOCArKysKIDIgZmlsZXMgY2hh
bmdlZCwgNjAgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCmluZGV4IDE4YmZlOGQwOTI3Ny4uNzFh
YzU3NjcwMDQzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwbGxfbWdyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxs
X21nci5jCkBAIC0xNDksNiArMTQ5LDE2IEBAIHZvaWQgYXNzZXJ0X3NoYXJlZF9kcGxsKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCXBsbC0+aW5mby0+bmFtZSwgb25vZmYo
c3RhdGUpLCBvbm9mZihjdXJfc3RhdGUpKTsKIH0KIAorc3RhdGljIGVudW0gdGNfcG9ydCBpY2xf
cGxsX2lkX3RvX3RjX3BvcnQoZW51bSBpbnRlbF9kcGxsX2lkIGlkKQoreworCXJldHVybiBUQ19Q
T1JUXzEgKyBpZCAtIERQTExfSURfSUNMX01HUExMMTsKK30KKworZW51bSBpbnRlbF9kcGxsX2lk
IGljbF90Y19wb3J0X3RvX3BsbF9pZChlbnVtIHRjX3BvcnQgdGNfcG9ydCkKK3sKKwlyZXR1cm4g
dGNfcG9ydCAtIFRDX1BPUlRfMSArIERQTExfSURfSUNMX01HUExMMTsKK30KKwogc3RhdGljIGk5
MTVfcmVnX3QKIGludGVsX2NvbWJvX3BsbF9lbmFibGVfcmVnKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LAogCQkJICAgc3RydWN0IGludGVsX3NoYXJlZF9kcGxsICpwbGwpCkBAIC0xNjEs
NiArMTcxLDE5IEBAIGludGVsX2NvbWJvX3BsbF9lbmFibGVfcmVnKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1LAogCXJldHVybiBDTkxfRFBMTF9FTkFCTEUocGxsLT5pbmZvLT5pZCk7CiB9
CiAKK3N0YXRpYyBpOTE1X3JlZ190CitpbnRlbF90Y19wbGxfZW5hYmxlX3JlZyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwKKwkJCXN0cnVjdCBpbnRlbF9zaGFyZWRfZHBsbCAqcGxsKQor
eworCWNvbnN0IGVudW0gaW50ZWxfZHBsbF9pZCBpZCA9IHBsbC0+aW5mby0+aWQ7CisJZW51bSB0
Y19wb3J0IHRjX3BvcnQgPSBpY2xfcGxsX2lkX3RvX3RjX3BvcnQoaWQpOworCisJaWYgKElTX0FM
REVSTEFLRV9QKGk5MTUpKQorCQlyZXR1cm4gQURMUF9QT1JUVENfUExMX0VOQUJMRSh0Y19wb3J0
KTsKKworCXJldHVybiBNR19QTExfRU5BQkxFKHRjX3BvcnQpOworfQorCiAvKioKICAqIGludGVs
X3ByZXBhcmVfc2hhcmVkX2RwbGwgLSBjYWxsIGEgZHBsbCdzIHByZXBhcmUgaG9vawogICogQGNy
dGNfc3RhdGU6IENSVEMsIGFuZCBpdHMgc3RhdGUsIHdoaWNoIGhhcyBhIHNoYXJlZCBkcGxsCkBA
IC0zMTIwLDE2ICszMTQzLDYgQEAgc3RhdGljIHZvaWQgaWNsX2NhbGNfZHBsbF9zdGF0ZShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAkJcGxsX3N0YXRlLT5jZmdjcjEgfD0gRFBMTF9D
RkdDUjFfQ0VOVFJBTF9GUkVRXzg0MDA7CiB9CiAKLXN0YXRpYyBlbnVtIHRjX3BvcnQgaWNsX3Bs
bF9pZF90b190Y19wb3J0KGVudW0gaW50ZWxfZHBsbF9pZCBpZCkKLXsKLQlyZXR1cm4gaWQgLSBE
UExMX0lEX0lDTF9NR1BMTDE7Ci19Ci0KLWVudW0gaW50ZWxfZHBsbF9pZCBpY2xfdGNfcG9ydF90
b19wbGxfaWQoZW51bSB0Y19wb3J0IHRjX3BvcnQpCi17Ci0JcmV0dXJuIHRjX3BvcnQgKyBEUExM
X0lEX0lDTF9NR1BMTDE7Ci19Ci0KIHN0YXRpYyBib29sIGljbF9tZ19wbGxfZmluZF9kaXZpc29y
cyhpbnQgY2xvY2tfa2h6LCBib29sIGlzX2RwLCBib29sIHVzZV9zc2MsCiAJCQkJICAgICB1MzIg
KnRhcmdldF9kY29fa2h6LAogCQkJCSAgICAgc3RydWN0IGludGVsX2RwbGxfaHdfc3RhdGUgKnN0
YXRlLApAQCAtMzcyOCwxMiArMzc0MSwxNCBAQCBzdGF0aWMgYm9vbCBtZ19wbGxfZ2V0X2h3X3N0
YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlib29sIHJldCA9IGZhbHNl
OwogCXUzMiB2YWw7CiAKKwlpOTE1X3JlZ190IGVuYWJsZV9yZWcgPSBpbnRlbF90Y19wbGxfZW5h
YmxlX3JlZyhkZXZfcHJpdiwgcGxsKTsKKwogCXdha2VyZWYgPSBpbnRlbF9kaXNwbGF5X3Bvd2Vy
X2dldF9pZl9lbmFibGVkKGRldl9wcml2LAogCQkJCQkJICAgICBQT1dFUl9ET01BSU5fRElTUExB
WV9DT1JFKTsKIAlpZiAoIXdha2VyZWYpCiAJCXJldHVybiBmYWxzZTsKIAotCXZhbCA9IGludGVs
X2RlX3JlYWQoZGV2X3ByaXYsIE1HX1BMTF9FTkFCTEUodGNfcG9ydCkpOworCXZhbCA9IGludGVs
X2RlX3JlYWQoZGV2X3ByaXYsIGVuYWJsZV9yZWcpOwogCWlmICghKHZhbCAmIFBMTF9FTkFCTEUp
KQogCQlnb3RvIG91dDsKIApAQCAtMzc5Nyw3ICszODEyLDcgQEAgc3RhdGljIGJvb2wgZGtsX3Bs
bF9nZXRfaHdfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCWlmICgh
d2FrZXJlZikKIAkJcmV0dXJuIGZhbHNlOwogCi0JdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJp
diwgTUdfUExMX0VOQUJMRSh0Y19wb3J0KSk7CisJdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJp
diwgaW50ZWxfdGNfcGxsX2VuYWJsZV9yZWcoZGV2X3ByaXYsIHBsbCkpOwogCWlmICghKHZhbCAm
IFBMTF9FTkFCTEUpKQogCQlnb3RvIG91dDsKIApAQCAtNDE2OSw4ICs0MTg0LDcgQEAgc3RhdGlj
IHZvaWQgdGJ0X3BsbF9lbmFibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAog
c3RhdGljIHZvaWQgbWdfcGxsX2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsCiAJCQkgIHN0cnVjdCBpbnRlbF9zaGFyZWRfZHBsbCAqcGxsKQogewotCWk5MTVfcmVnX3Qg
ZW5hYmxlX3JlZyA9Ci0JCU1HX1BMTF9FTkFCTEUoaWNsX3BsbF9pZF90b190Y19wb3J0KHBsbC0+
aW5mby0+aWQpKTsKKwlpOTE1X3JlZ190IGVuYWJsZV9yZWcgPSBpbnRlbF90Y19wbGxfZW5hYmxl
X3JlZyhkZXZfcHJpdiwgcGxsKTsKIAogCWljbF9wbGxfcG93ZXJfZW5hYmxlKGRldl9wcml2LCBw
bGwsIGVuYWJsZV9yZWcpOwogCkBAIC00MjQ5LDggKzQyNjMsNyBAQCBzdGF0aWMgdm9pZCB0YnRf
cGxsX2Rpc2FibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogc3RhdGljIHZv
aWQgbWdfcGxsX2Rpc2FibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJ
ICAgc3RydWN0IGludGVsX3NoYXJlZF9kcGxsICpwbGwpCiB7Ci0JaTkxNV9yZWdfdCBlbmFibGVf
cmVnID0KLQkJTUdfUExMX0VOQUJMRShpY2xfcGxsX2lkX3RvX3RjX3BvcnQocGxsLT5pbmZvLT5p
ZCkpOworCWk5MTVfcmVnX3QgZW5hYmxlX3JlZyA9IGludGVsX3RjX3BsbF9lbmFibGVfcmVnKGRl
dl9wcml2LCBwbGwpOwogCiAJaWNsX3BsbF9kaXNhYmxlKGRldl9wcml2LCBwbGwsIGVuYWJsZV9y
ZWcpOwogfQpAQCAtNDQxNiw2ICs0NDI5LDI2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxf
ZHBsbF9tZ3IgYWRsc19wbGxfbWdyID0gewogCS5kdW1wX2h3X3N0YXRlID0gaWNsX2R1bXBfaHdf
c3RhdGUsCiB9OwogCitzdGF0aWMgY29uc3Qgc3RydWN0IGRwbGxfaW5mbyBhZGxwX3BsbHNbXSA9
IHsKKwl7ICJEUExMIDAiLCAmY29tYm9fcGxsX2Z1bmNzLCBEUExMX0lEX0lDTF9EUExMMCwgIDAg
fSwKKwl7ICJEUExMIDEiLCAmY29tYm9fcGxsX2Z1bmNzLCBEUExMX0lEX0lDTF9EUExMMSwgIDAg
fSwKKwl7ICJUQlQgUExMIiwgICZ0YnRfcGxsX2Z1bmNzLCBEUExMX0lEX0lDTF9UQlRQTEwsIDAg
fSwKKwl7ICJUQyBQTEwgMSIsICZka2xfcGxsX2Z1bmNzLCBEUExMX0lEX0lDTF9NR1BMTDEsIDAg
fSwKKwl7ICJUQyBQTEwgMiIsICZka2xfcGxsX2Z1bmNzLCBEUExMX0lEX0lDTF9NR1BMTDIsIDAg
fSwKKwl7ICJUQyBQTEwgMyIsICZka2xfcGxsX2Z1bmNzLCBEUExMX0lEX0lDTF9NR1BMTDMsIDAg
fSwKKwl7ICJUQyBQTEwgNCIsICZka2xfcGxsX2Z1bmNzLCBEUExMX0lEX0lDTF9NR1BMTDQsIDAg
fSwKKwl7IH0sCit9OworCitzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RwbGxfbWdyIGFkbHBf
cGxsX21nciA9IHsKKwkuZHBsbF9pbmZvID0gYWRscF9wbGxzLAorCS5nZXRfZHBsbHMgPSBpY2xf
Z2V0X2RwbGxzLAorCS5wdXRfZHBsbHMgPSBpY2xfcHV0X2RwbGxzLAorCS51cGRhdGVfYWN0aXZl
X2RwbGwgPSBpY2xfdXBkYXRlX2FjdGl2ZV9kcGxsLAorCS51cGRhdGVfcmVmX2Nsa3MgPSBpY2xf
dXBkYXRlX2RwbGxfcmVmX2Nsa3MsCisJLmR1bXBfaHdfc3RhdGUgPSBpY2xfZHVtcF9od19zdGF0
ZSwKK307CisKIC8qKgogICogaW50ZWxfc2hhcmVkX2RwbGxfaW5pdCAtIEluaXRpYWxpemUgc2hh
cmVkIERQTExzCiAgKiBAZGV2OiBkcm0gZGV2aWNlCkBAIC00NDI5LDcgKzQ0NjIsOSBAQCB2b2lk
IGludGVsX3NoYXJlZF9kcGxsX2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIAljb25zdCBz
dHJ1Y3QgZHBsbF9pbmZvICpkcGxsX2luZm87CiAJaW50IGk7CiAKLQlpZiAoSVNfQUxERVJMQUtF
X1MoZGV2X3ByaXYpKQorCWlmIChJU19BTERFUkxBS0VfUChkZXZfcHJpdikpCisJCWRwbGxfbWdy
ID0gJmFkbHBfcGxsX21ncjsKKwllbHNlIGlmIChJU19BTERFUkxBS0VfUyhkZXZfcHJpdikpCiAJ
CWRwbGxfbWdyID0gJmFkbHNfcGxsX21ncjsKIAllbHNlIGlmIChJU19ERzEoZGV2X3ByaXYpKQog
CQlkcGxsX21nciA9ICZkZzFfcGxsX21ncjsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDI0
MmMzYTNjMTE2Yy4uNWUzZTE3MjViOTVjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTEw
NTM3LDYgKzEwNTM3LDE0IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewogI2RlZmluZSBERzFfRFBM
TF9FTkFCTEUocGxsKSAgICBfTU1JT19QTEwzKHBsbCwgRFBMTDBfRU5BQkxFLCBEUExMMV9FTkFC
TEUsIFwKIAkJCQkJICAgX01HX1BMTDFfRU5BQkxFLCBfTUdfUExMMl9FTkFCTEUpCiAKKy8qIEFE
TC1QIFR5cGUgQyBQTEwgKi8KKyNkZWZpbmUgUE9SVFRDMV9QTExfRU5BQkxFCTB4NDYwMzgKKyNk
ZWZpbmUgUE9SVFRDMl9QTExfRU5BQkxFCTB4NDYwNDAKKworI2RlZmluZSBBRExQX1BPUlRUQ19Q
TExfRU5BQkxFKHRjX3BvcnQpCQlfTU1JT19QT1JUKCh0Y19wb3J0KSwgXAorCQkJCQkJCSAgICBQ
T1JUVEMxX1BMTF9FTkFCTEUsIFwKKwkJCQkJCQkgICAgUE9SVFRDMl9QTExfRU5BQkxFKQorCiAj
ZGVmaW5lIF9NR19SRUZDTEtJTl9DVExfUE9SVDEJCQkJMHgxNjg5MkMKICNkZWZpbmUgX01HX1JF
RkNMS0lOX0NUTF9QT1JUMgkJCQkweDE2OTkyQwogI2RlZmluZSBfTUdfUkVGQ0xLSU5fQ1RMX1BP
UlQzCQkJCTB4MTZBOTJDCi0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
