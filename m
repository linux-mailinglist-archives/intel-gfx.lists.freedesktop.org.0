Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F15439FE1F
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 19:48:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 582F56E588;
	Tue,  8 Jun 2021 17:48:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 281A66E588
 for <Intel-gfx@lists.freedesktop.org>; Tue,  8 Jun 2021 17:48:15 +0000 (UTC)
IronPort-SDR: akDOkKi97/PcbjO9hbtXnEHBHfO20k/BW8PPitKmjF4G6I1ar09/WXsnsZ/dYNsjBYcdews6N+
 U2cfbx1o/cTw==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="290527864"
X-IronPort-AV: E=Sophos;i="5.83,258,1616482800"; d="scan'208";a="290527864"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 10:48:14 -0700
IronPort-SDR: ClTWjdOAtTjltX/YUYK+unHjtfReCtNtSzoLExQfUEHp+0THhRZcSX43oyYxBOdOQqsqObDp3z
 6MbQLVUOiLRg==
X-IronPort-AV: E=Sophos;i="5.83,258,1616482800"; d="scan'208";a="482047943"
Received: from akolasan-mobl.amr.corp.intel.com (HELO
 cataylo2-mobl1.intel.com) ([10.212.132.80])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 10:47:53 -0700
From: clinton.a.taylor@intel.com
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  8 Jun 2021 10:47:21 -0700
Message-Id: <20210608174721.17593-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210608002056.23723-1-clinton.a.taylor@intel.com>
References: <20210608002056.23723-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/adl_p: Add initial ADL_P Workarounds
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

RnJvbTogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KCk1vc3Qgb2Yg
dGhlIGNvbnRleHQgV0EgYXJlIGFscmVhZHkgaW1wbGVtZW50ZWQuCkFkZGluZyBhZGxfcCBwbGF0
Zm9ybSB0YWcgdG8gcmVmbGVjdCBzby4KCnYyOiBhZGp1c3QgY29tbWVudHMgZm9yIGNsYXJpdHkg
KE1hdHRSKQoKQlNwZWM6IDU0MzY5CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50
ZWwuY29tPgpDYzogQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+ClJldmll
d2VkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5j
b20+ClNpZ25lZC1vZmYtYnk6IE1hZGh1bWl0aGEgVG9sYWthbmFoYWxsaSBQcmFkZWVwIDxtYWRo
dW1pdGhhLnRvbGFrYW5haGFsbGkucHJhZGVlcEBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBTd2F0aGkgRGhhbmF2YW50aHJpIDxzd2F0aGkuZGhhbmF2YW50aHJpQGludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgfCAgNCArLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuOF9lbmdpbmVfY3MuYyAgICAgIHwgIDIgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgICB8IDM5ICsrKysrKysr
KystLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgICAgICAgICAgICAg
ICB8ICA4ICsrLS0KIDQgZmlsZXMgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cGxsX21nci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5j
CmluZGV4IDcxYWM1NzY3MDA0My4uODgyYmZkNDk5ZTU1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCkBAIC0yNjY3LDcgKzI2NjcsNyBAQCBzdGF0
aWMgYm9vbCBjbmxfZGRpX2hkbWlfcGxsX2RpdmlkZXJzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKQogfQogCiAvKgotICogRGlzcGxheSBXQSAjMjIwMTA0OTI0MzI6IGVobCwg
dGdsCisgKiBEaXNwbGF5IFdBICMyMjAxMDQ5MjQzMjogZWhsLCB0Z2wsIGFkbC1wCiAgKiBQcm9n
cmFtIGhhbGYgb2YgdGhlIG5vbWluYWwgRENPIGRpdmlkZXIgZnJhY3Rpb24gdmFsdWUuCiAgKi8K
IHN0YXRpYyBib29sCkBAIC0yNjc1LDcgKzI2NzUsNyBAQCBlaGxfY29tYm9fcGxsX2Rpdl9mcmFj
X3dhX25lZWRlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKIAlyZXR1cm4gKChJ
U19QTEFURk9STShpOTE1LCBJTlRFTF9FTEtIQVJUTEFLRSkgJiYKIAkJIElTX0pTTF9FSExfUkVW
SUQoaTkxNSwgRUhMX1JFVklEX0IwLCBSRVZJRF9GT1JFVkVSKSkgfHwKLQkJIElTX1RJR0VSTEFL
RShpOTE1KSkgJiYKKwkJIElTX1RJR0VSTEFLRShpOTE1KSB8fCBJU19BTERFUkxBS0VfUChpOTE1
KSkgJiYKIAkJIGk5MTUtPmRwbGwucmVmX2Nsa3MubnNzYyA9PSAzODQwMDsKIH0KIApkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuOF9lbmdpbmVfY3MuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2dlbjhfZW5naW5lX2NzLmMKaW5kZXggOTRlMGE1NjY5ZjkwLi44N2Iw
NjU3MmZkMmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2dlbjhfZW5naW5l
X2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuOF9lbmdpbmVfY3MuYwpAQCAt
MjA4LDcgKzIwOCw3IEBAIGludCBnZW4xMl9lbWl0X2ZsdXNoX3JjcyhzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpycSwgdTMyIG1vZGUpCiAJCWZsYWdzIHw9IFBJUEVfQ09OVFJPTF9GTFVTSF9MMzsKIAkJ
ZmxhZ3MgfD0gUElQRV9DT05UUk9MX1JFTkRFUl9UQVJHRVRfQ0FDSEVfRkxVU0g7CiAJCWZsYWdz
IHw9IFBJUEVfQ09OVFJPTF9ERVBUSF9DQUNIRV9GTFVTSDsKLQkJLyogV2FfMTQwOTYwMDkwNzp0
Z2wgKi8KKwkJLyogV2FfMTQwOTYwMDkwNzp0Z2wsYWRsLXAgKi8KIAkJZmxhZ3MgfD0gUElQRV9D
T05UUk9MX0RFUFRIX1NUQUxMOwogCQlmbGFncyB8PSBQSVBFX0NPTlRST0xfRENfRkxVU0hfRU5B
QkxFOwogCQlmbGFncyB8PSBQSVBFX0NPTlRST0xfRkxVU0hfRU5BQkxFOwpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggYjYyZDFlMzFhNjQ1Li45Nzdh
NzZlNjQ4ZTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmth
cm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMu
YwpAQCAtNjQwLDE1ICs2NDAsMTYgQEAgc3RhdGljIHZvaWQgZ2VuMTJfY3R4X3dvcmthcm91bmRz
X2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAogCWdlbjEyX2N0eF9ndF90dW5p
bmdfaW5pdChlbmdpbmUsIHdhbCk7CiAKIAkvKgotCSAqIFdhXzE0MDkxNDIyNTk6dGdsCi0JICog
V2FfMTQwOTM0NzkyMjp0Z2wKLQkgKiBXYV8xNDA5MjUyNjg0OnRnbAotCSAqIFdhXzE0MDkyMTc2
MzM6dGdsCi0JICogV2FfMTQwOTIwNzc5Mzp0Z2wKLQkgKiBXYV8xNDA5MTc4MDc2OnRnbAotCSAq
IFdhXzE0MDg5Nzk3MjQ6dGdsCi0JICogV2FfMTQwMTA0NDMxOTk6cmtsCi0JICogV2FfMTQwMTA2
OTg3NzA6cmtsCisJICogV2FfMTQwOTE0MjI1OTp0Z2wsZGcxLGFkbC1wCisJICogV2FfMTQwOTM0
NzkyMjp0Z2wsZGcxLGFkbC1wCisJICogV2FfMTQwOTI1MjY4NDp0Z2wsZGcxLGFkbC1wCisJICog
V2FfMTQwOTIxNzYzMzp0Z2wsZGcxLGFkbC1wCisJICogV2FfMTQwOTIwNzc5Mzp0Z2wsZGcxLGFk
bC1wCisJICogV2FfMTQwOTE3ODA3Njp0Z2wsZGcxLGFkbC1wCisJICogV2FfMTQwODk3OTcyNDp0
Z2wsZGcxLGFkbC1wCisJICogV2FfMTQwMTA0NDMxOTk6dGdsLHJrbCxkZzEsYWRsLXAKKwkgKiBX
YV8xNDAxMDY5ODc3MDp0Z2wscmtsLGRnMSxhZGwtcyxhZGwtcAorCSAqIFdhXzE0MDkzNDI5MTA6
dGdsLHJrbCxkZzEsYWRsLXMsYWRsLXAKIAkgKi8KIAl3YV9tYXNrZWRfZW4od2FsLCBHRU4xMV9D
T01NT05fU0xJQ0VfQ0hJQ0tFTjMsCiAJCSAgICAgR0VOMTJfRElTQUJMRV9DUFNfQVdBUkVfQ09M
T1JfUElQRSk7CkBAIC0xMTEzLDcgKzExMTQsNyBAQCBnZW4xMl9ndF93b3JrYXJvdW5kc19pbml0
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogewogCXdhX2luaXRfbWNyKGk5MTUsIHdh
bCk7CiAKLQkvKiBXYV8xNDAxMTA2MDY0OTp0Z2wscmtsLGRnMSxhZGxzICovCisJLyogV2FfMTQw
MTEwNjA2NDk6dGdsLHJrbCxkZzEsYWRscyxhZGwtcCAqLwogCXdhXzE0MDExMDYwNjQ5KGk5MTUs
IHdhbCk7CiB9CiAKQEAgLTE2MzMsMzggKzE2MzQsNDAgQEAgcmNzX2VuZ2luZV93YV9pbml0KHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQog
CQkJICAgIEdFTjdfRElTQUJMRV9TQU1QTEVSX1BSRUZFVENIKTsKIAl9CiAKLQlpZiAoSVNfQUxE
RVJMQUtFX1MoaTkxNSkgfHwgSVNfREcxKGk5MTUpIHx8CisJaWYgKElTX0FMREVSTEFLRV9QKGk5
MTUpIHx8IElTX0FMREVSTEFLRV9TKGk5MTUpIHx8IElTX0RHMShpOTE1KSB8fAogCSAgICBJU19S
T0NLRVRMQUtFKGk5MTUpIHx8IElTX1RJR0VSTEFLRShpOTE1KSkgewotCQkvKiBXYV8xNjA2OTMx
NjAxOnRnbCxya2wsZGcxLGFkbC1zICovCisJCS8qIFdhXzE2MDY5MzE2MDE6dGdsLHJrbCxkZzEs
YWRsLXMsYWRsLXAgKi8KIAkJd2FfbWFza2VkX2VuKHdhbCwgR0VON19ST1dfQ0hJQ0tFTjIsIEdF
TjEyX0RJU0FCTEVfRUFSTFlfUkVBRCk7CiAKIAkJLyoKIAkJICogV2FfMTQwNzkyODk3OTp0Z2wg
QSoKIAkJICogV2FfMTgwMTE0NjQxNjQ6dGdsW0IwK10sZGcxW0IwK10KIAkJICogV2FfMjIwMTA5
MzEyOTY6dGdsW0IwK10sZGcxW0IwK10KLQkJICogV2FfMTQwMTA5MTkxMzg6cmtsLGRnMSxhZGwt
cworCQkgKiBXYV8xNDAxMDkxOTEzODpya2wsZGcxLGFkbC1zLGFkbC1wCiAJCSAqLwogCQl3YV93
cml0ZV9vcih3YWwsIEdFTjdfRkZfVEhSRUFEX01PREUsCiAJCQkgICAgR0VOMTJfRkZfVEVTU0VM
QVRJT05fRE9QX0dBVEVfRElTQUJMRSk7CiAKIAkJLyoKLQkJICogV2FfMTYwNjcwMDYxNzp0Z2ws
ZGcxCi0JCSAqIFdhXzIyMDEwMjcxMDIxOnRnbCxya2wsZGcxLCBhZGwtcworCQkgKiBXYV8xNjA2
NzAwNjE3OnRnbCxkZzEsYWRsLXAKKwkJICogV2FfMjIwMTAyNzEwMjE6dGdsLHJrbCxkZzEsYWRs
LXMsYWRsLXAKKwkJICogV2FfMTQwMTA4MjY2ODE6dGdsLGRnMSxya2wsYWRsLXAKIAkJICovCiAJ
CXdhX21hc2tlZF9lbih3YWwsCiAJCQkgICAgIEdFTjlfQ1NfREVCVUdfTU9ERTEsCiAJCQkgICAg
IEZGX0RPUF9DTE9DS19HQVRFX0RJU0FCTEUpOwogCX0KIAotCWlmIChJU19BTERFUkxBS0VfUyhp
OTE1KSB8fCBJU19ERzFfUkVWSUQoaTkxNSwgREcxX1JFVklEX0EwLCBERzFfUkVWSURfQTApIHx8
CisJaWYgKElTX0FMREVSTEFLRV9QKGk5MTUpIHx8IElTX0FMREVSTEFLRV9TKGk5MTUpIHx8CisJ
ICAgIElTX0RHMV9SRVZJRChpOTE1LCBERzFfUkVWSURfQTAsIERHMV9SRVZJRF9BMCkgfHwKIAkg
ICAgSVNfUk9DS0VUTEFLRShpOTE1KSB8fCBJU19USUdFUkxBS0UoaTkxNSkpIHsKLQkJLyogV2Ff
MTQwOTgwNDgwODp0Z2wscmtsLGRnMVthMF0sYWRsLXMgKi8KKwkJLyogV2FfMTQwOTgwNDgwODp0
Z2wscmtsLGRnMVthMF0sYWRsLXMsYWRsLXAgKi8KIAkJd2FfbWFza2VkX2VuKHdhbCwgR0VON19S
T1dfQ0hJQ0tFTjIsCiAJCQkgICAgIEdFTjEyX1BVU0hfQ09OU1RfREVSRUZfSE9MRF9ESVMpOwog
CiAJCS8qCiAJCSAqIFdhXzE0MDkwODUyMjU6dGdsCi0JCSAqIFdhXzE0MDEwMjI5MjA2OnRnbCxy
a2wsZGcxW2EwXSxhZGwtcworCQkgKiBXYV8xNDAxMDIyOTIwNjp0Z2wscmtsLGRnMVthMF0sYWRs
LXMsYWRsLXAKIAkJICovCiAJCXdhX21hc2tlZF9lbih3YWwsIEdFTjlfUk9XX0NISUNLRU40LCBH
RU4xMl9ESVNBQkxFX1RETF9QVVNIKTsKIAl9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCA3
Y2U5NTM3ZmEyYzcuLjdiMzg5MzgwODcyMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC03
MzUyLDE1ICs3MzUyLDE3IEBAIHN0YXRpYyB2b2lkIGljbF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiBzdGF0aWMgdm9pZCBnZW4xMmxwX2luaXRf
Y2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKIAkvKiBX
YV8xNDA5MTIwMDEzOnRnbCxya2wsYWRsX3MsZGcxICovCi0JaW50ZWxfdW5jb3JlX3dyaXRlKCZk
ZXZfcHJpdi0+dW5jb3JlLCBJTEtfRFBGQ19DSElDS0VOLAotCQkJICAgSUxLX0RQRkNfQ0hJQ0tF
Tl9DT01QX0RVTU1ZX1BJWEVMKTsKKwlpZiAoSVNfVElHRVJMQUtFKGRldl9wcml2KSB8fCBJU19S
T0NLRVRMQUtFKGRldl9wcml2KSB8fAorCSAgICBJU19BTERFUkxBS0VfUyhkZXZfcHJpdikgfHwg
SVNfREcxKGRldl9wcml2KSkKKwkJaW50ZWxfdW5jb3JlX3dyaXRlKCZkZXZfcHJpdi0+dW5jb3Jl
LCBJTEtfRFBGQ19DSElDS0VOLAorCQkJCSAgIElMS19EUEZDX0NISUNLRU5fQ09NUF9EVU1NWV9Q
SVhFTCk7CiAKIAkvKiBXYV8xNDA5ODI1Mzc2OnRnbCAocHJlLXByb2QpKi8KIAlpZiAoSVNfVEdM
X0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9CMSkpCiAJCWludGVsX3VuY29y
ZV93cml0ZSgmZGV2X3ByaXYtPnVuY29yZSwgR0VOOV9DTEtHQVRFX0RJU18zLCBpbnRlbF91bmNv
cmVfcmVhZCgmZGV2X3ByaXYtPnVuY29yZSwgR0VOOV9DTEtHQVRFX0RJU18zKSB8CiAJCQkgICBU
R0xfVlJIX0dBVElOR19ESVMpOwogCi0JLyogV2FfMTQwMTEwNTk3ODg6dGdsLHJrbCxhZGxfcyxk
ZzEgKi8KKwkvKiBXYV8xNDAxMTA1OTc4ODp0Z2wscmtsLGFkbF9zLGRnMSxhZGwtcCAqLwogCWlu
dGVsX3VuY29yZV9ybXcoJmRldl9wcml2LT51bmNvcmUsIEdFTjEwX0RGUl9SQVRJT19FTl9BTkRf
Q0hJQ0tFTiwKIAkJCSAwLCBERlJfRElTQUJMRSk7CiAKLS0gCjIuMzEuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
