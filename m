Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBB8396E20
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 09:47:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F79A6E8A4;
	Tue,  1 Jun 2021 07:47:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35A926E8A7;
 Tue,  1 Jun 2021 07:47:20 +0000 (UTC)
IronPort-SDR: kv26dvnIraOpun68myaWrA99KW9lN39pQSslwSei+xfJyHqE4unIESb0ov4tfFuywNX2rc1F7T
 v5R048invx0g==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="224768868"
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="224768868"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 00:47:19 -0700
IronPort-SDR: M0MtPlweMMNMXTqfv+duRmovUJmWnivPAW40teo4ySOOmeescWk52wLsUGs2HtD+x80ur0Jxme
 IPPvgEU2mNSw==
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="549648722"
Received: from clillies-mobl.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.18])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 00:47:18 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue,  1 Jun 2021 09:46:48 +0200
Message-Id: <20210601074654.3103-10-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210601074654.3103-1-thomas.hellstrom@linux.intel.com>
References: <20210601074654.3103-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 09/15] drm/ttm: Document and optimize
 ttm_bo_pipeline_gutting()
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgdGhlIGJvIGlzIGlkbGUgd2hlbiBjYWxsaW5nIHR0bV9ib19waXBlbGluZV9ndXR0aW5nKCks
IHdlIHVubmVjZXNzYXJpbHkKY3JlYXRlIGEgZ2hvc3Qgb2JqZWN0IGFuZCBwdXNoIGl0IG91dCB0
byBkZWxheWVkIGRlc3Ryb3kuCkZpeCB0aGlzIGJ5IGFkZGluZyBhIHBhdGggZm9yIGlkbGUsIGFu
ZCBkb2N1bWVudCB0aGUgZnVuY3Rpb24uCgpBbHNvIGF2b2lkIGhhdmluZyB0aGUgYm8gZW5kIHVw
IGluIGEgYmFkIHN0YXRlIHZ1bG5lcmFibGUgdG8gdXNlci1zcGFjZQp0cmlnZ2VyZWQga2VybmVs
IEJVR3MgaWYgdGhlIGNhbGwgdG8gdHRtX3R0X2NyZWF0ZSgpIGZhaWxzLgoKRmluYWxseSByZXVz
ZSB0dG1fYm9fcGlwZWxpbmVfZ3V0dGluZygpIGluIHR0bV9ib19ldmljdCgpLgoKQ2M6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KU2lnbmVkLW9mZi1ieTogVGhv
bWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgpSZXZpZXdl
ZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KdjQ6
Ci0gQ2xhcmlmeSB3aHkgd2UgbWFyayBibyBmb3IgY2xlYXJpbmcgYWZ0ZXIgdHRtX2JvX3BpcGVs
aW5lX2d1dHRpbmcoKQogIChSZXBvcnRlZCBieSBNYXR0aGV3IEF1bGQpCnY1OgotIE1ha2UgdHRt
X3R0X21hcmtfZm9yX2NsZWFyKCkgaW5saW5lIChTdWdnZXN0ZWQgYnkgQ2hyaXN0aWFuIEvDtm5p
ZykKLS0tCiBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jICAgICAgfCAyMCArKysrKy0tLS0t
LQogZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jIHwgNTUgKysrKysrKysrKysrKysr
KysrKysrKysrKysrKy0tLQogaW5jbHVkZS9kcm0vdHRtL3R0bV90dC5oICAgICAgICAgIHwgMTMg
KysrKysrKysKIDMgZmlsZXMgY2hhbmdlZCwgNzQgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYyBiL2RyaXZlcnMv
Z3B1L2RybS90dG0vdHRtX2JvLmMKaW5kZXggNTFhOTRmZDYzYmQ3Li5iZTA0MDY0NjY0NjAgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3R0bS90dG1fYm8uYwpAQCAtNTAxLDEwICs1MDEsMTUgQEAgc3RhdGljIGludCB0dG1fYm9f
ZXZpY3Qoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywKIAliZGV2LT5mdW5jcy0+ZXZpY3Rf
ZmxhZ3MoYm8sICZwbGFjZW1lbnQpOwogCiAJaWYgKCFwbGFjZW1lbnQubnVtX3BsYWNlbWVudCAm
JiAhcGxhY2VtZW50Lm51bV9idXN5X3BsYWNlbWVudCkgewotCQl0dG1fYm9fd2FpdChibywgZmFs
c2UsIGZhbHNlKTsKKwkJcmV0ID0gdHRtX2JvX3dhaXQoYm8sIHRydWUsIGZhbHNlKTsKKwkJaWYg
KHJldCkKKwkJCXJldHVybiByZXQ7CiAKLQkJdHRtX2JvX2NsZWFudXBfbWVtdHlwZV91c2UoYm8p
OwotCQlyZXR1cm4gdHRtX3R0X2NyZWF0ZShibywgZmFsc2UpOworCQkvKgorCQkgKiBTaW5jZSB3
ZSd2ZSBhbHJlYWR5IHN5bmNlZCwgdGhpcyBmcmVlcyBiYWNraW5nIHN0b3JlCisJCSAqIGltbWVk
aWF0ZWx5LgorCQkgKi8KKwkJcmV0dXJuIHR0bV9ib19waXBlbGluZV9ndXR0aW5nKGJvKTsKIAl9
CiAKIAlyZXQgPSB0dG1fYm9fbWVtX3NwYWNlKGJvLCAmcGxhY2VtZW50LCAmZXZpY3RfbWVtLCBj
dHgpOwpAQCAtOTc2LDEzICs5ODEsOCBAQCBpbnQgdHRtX2JvX3ZhbGlkYXRlKHN0cnVjdCB0dG1f
YnVmZmVyX29iamVjdCAqYm8sCiAJLyoKIAkgKiBSZW1vdmUgdGhlIGJhY2tpbmcgc3RvcmUgaWYg
bm8gcGxhY2VtZW50IGlzIGdpdmVuLgogCSAqLwotCWlmICghcGxhY2VtZW50LT5udW1fcGxhY2Vt
ZW50ICYmICFwbGFjZW1lbnQtPm51bV9idXN5X3BsYWNlbWVudCkgewotCQlyZXQgPSB0dG1fYm9f
cGlwZWxpbmVfZ3V0dGluZyhibyk7Ci0JCWlmIChyZXQpCi0JCQlyZXR1cm4gcmV0OwotCi0JCXJl
dHVybiB0dG1fdHRfY3JlYXRlKGJvLCBmYWxzZSk7Ci0JfQorCWlmICghcGxhY2VtZW50LT5udW1f
cGxhY2VtZW50ICYmICFwbGFjZW1lbnQtPm51bV9idXN5X3BsYWNlbWVudCkKKwkJcmV0dXJuIHR0
bV9ib19waXBlbGluZV9ndXR0aW5nKGJvKTsKIAogCS8qCiAJICogQ2hlY2sgd2hldGhlciB3ZSBu
ZWVkIHRvIG1vdmUgYnVmZmVyLgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1f
Ym9fdXRpbC5jIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jCmluZGV4IDMwYmFm
YWM0MTZhNS4uZDBkYjYzYTdmMDBjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0
bV9ib191dGlsLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jCkBAIC01
NjUsMjYgKzU2NSw3MyBAQCBpbnQgdHRtX2JvX21vdmVfYWNjZWxfY2xlYW51cChzdHJ1Y3QgdHRt
X2J1ZmZlcl9vYmplY3QgKmJvLAogfQogRVhQT1JUX1NZTUJPTCh0dG1fYm9fbW92ZV9hY2NlbF9j
bGVhbnVwKTsKIAorLyoqCisgKiB0dG1fYm9fcGlwZWxpbmVfZ3V0dGluZyAtIHB1cmdlIHRoZSBj
b250ZW50cyBvZiBhIGJvCisgKiBAYm86IFRoZSBidWZmZXIgb2JqZWN0CisgKgorICogUHVyZ2Ug
dGhlIGNvbnRlbnRzIG9mIGEgYm8sIGFzeW5jIGlmIHRoZSBibyBpcyBub3QgaWRsZS4KKyAqIEFm
dGVyIGEgc3VjY2Vzc2Z1bCBjYWxsLCB0aGUgYm8gaXMgbGVmdCB1bnBvcHVsYXRlZCBpbgorICog
c3lzdGVtIHBsYWNlbWVudC4gVGhlIGZ1bmN0aW9uIG1heSB3YWl0IHVuaW50ZXJydXB0aWJsZQor
ICogZm9yIGlkbGUgb24gT09NLgorICoKKyAqIFJldHVybjogMCBpZiBzdWNjZXNzZnVsLCBuZWdh
dGl2ZSBlcnJvciBjb2RlIG9uIGZhaWx1cmUuCisgKi8KIGludCB0dG1fYm9fcGlwZWxpbmVfZ3V0
dGluZyhzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvKQogewogCXN0YXRpYyBjb25zdCBzdHJ1
Y3QgdHRtX3BsYWNlIHN5c19tZW0gPSB7IC5tZW1fdHlwZSA9IFRUTV9QTF9TWVNURU0gfTsKIAlz
dHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmdob3N0OworCXN0cnVjdCB0dG1fdHQgKnR0bTsKIAlp
bnQgcmV0OwogCi0JcmV0ID0gdHRtX2J1ZmZlcl9vYmplY3RfdHJhbnNmZXIoYm8sICZnaG9zdCk7
CisJLyogSWYgYWxyZWFkeSBpZGxlLCBubyBuZWVkIGZvciBnaG9zdCBvYmplY3QgZGFuY2UuICov
CisJcmV0ID0gdHRtX2JvX3dhaXQoYm8sIGZhbHNlLCB0cnVlKTsKKwlpZiAocmV0ICE9IC1FQlVT
WSkgeworCQlpZiAoIWJvLT50dG0pIHsKKwkJCS8qIFNlZSBjb21tZW50IGJlbG93IGFib3V0IGNs
ZWFyaW5nLiAqLworCQkJcmV0ID0gdHRtX3R0X2NyZWF0ZShibywgdHJ1ZSk7CisJCQlpZiAocmV0
KQorCQkJCXJldHVybiByZXQ7CisJCX0gZWxzZSB7CisJCQl0dG1fdHRfdW5wb3B1bGF0ZShiby0+
YmRldiwgYm8tPnR0bSk7CisJCQlpZiAoYm8tPnR5cGUgPT0gdHRtX2JvX3R5cGVfZGV2aWNlKQor
CQkJCXR0bV90dF9tYXJrX2Zvcl9jbGVhcihiby0+dHRtKTsKKwkJfQorCQl0dG1fcmVzb3VyY2Vf
ZnJlZShibywgJmJvLT5tZW0pOworCQl0dG1fcmVzb3VyY2VfYWxsb2MoYm8sICZzeXNfbWVtLCAm
Ym8tPm1lbSk7CisKKwkJcmV0dXJuIDA7CisJfQorCisJLyoKKwkgKiBXZSBuZWVkIGFuIHVucG9w
dWxhdGVkIHR0bV90dCBhZnRlciBnaXZpbmcgb3VyIGN1cnJlbnQgb25lLAorCSAqIGlmIGFueSwg
dG8gdGhlIGdob3N0IG9iamVjdC4gQW5kIHdlIGNhbid0IGFmZm9yZCB0byBmYWlsCisJICogY3Jl
YXRpbmcgb25lICphZnRlciogdGhlIG9wZXJhdGlvbi4gSWYgdGhlIGJvIHN1YnNlcXVlbnRseSBn
ZXRzCisJICogcmVzdXJyZWN0ZWQsIG1ha2Ugc3VyZSBpdCdzIGNsZWFyZWQgKGlmIHR0bV9ib190
eXBlX2RldmljZSkKKwkgKiB0byBhdm9pZCBsZWFraW5nIHNlbnNpdGl2ZSBpbmZvcm1hdGlvbiB0
byB1c2VyLXNwYWNlLgorCSAqLworCisJdHRtID0gYm8tPnR0bTsKKwliby0+dHRtID0gTlVMTDsK
KwlyZXQgPSB0dG1fdHRfY3JlYXRlKGJvLCB0cnVlKTsKKwlzd2FwKGJvLT50dG0sIHR0bSk7CiAJ
aWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIAorCXJldCA9IHR0bV9idWZmZXJfb2JqZWN0X3RyYW5z
ZmVyKGJvLCAmZ2hvc3QpOworCWlmIChyZXQpIHsKKwkJdHRtX3R0X2Rlc3Ryb3koYm8tPmJkZXYs
IHR0bSk7CisJCXJldHVybiByZXQ7CisJfQorCiAJcmV0ID0gZG1hX3Jlc3ZfY29weV9mZW5jZXMo
Jmdob3N0LT5iYXNlLl9yZXN2LCBiby0+YmFzZS5yZXN2KTsKIAkvKiBMYXN0IHJlc29ydCwgd2Fp
dCBmb3IgdGhlIEJPIHRvIGJlIGlkbGUgd2hlbiB3ZSBhcmUgT09NICovCiAJaWYgKHJldCkKIAkJ
dHRtX2JvX3dhaXQoYm8sIGZhbHNlLCBmYWxzZSk7CiAKLQl0dG1fcmVzb3VyY2VfYWxsb2MoYm8s
ICZzeXNfbWVtLCAmYm8tPm1lbSk7Ci0JYm8tPnR0bSA9IE5VTEw7Ci0KIAlkbWFfcmVzdl91bmxv
Y2soJmdob3N0LT5iYXNlLl9yZXN2KTsKIAl0dG1fYm9fcHV0KGdob3N0KTsKKwliby0+dHRtID0g
dHRtOworCXR0bV9yZXNvdXJjZV9hbGxvYyhibywgJnN5c19tZW0sICZiby0+bWVtKTsKIAogCXJl
dHVybiAwOwogfQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vdHRtL3R0bV90dC5oIGIvaW5jbHVk
ZS9kcm0vdHRtL3R0bV90dC5oCmluZGV4IDMxMDIwNTlkYjcyNi4uODE4NjgwYzZhOGVkIDEwMDY0
NAotLS0gYS9pbmNsdWRlL2RybS90dG0vdHRtX3R0LmgKKysrIGIvaW5jbHVkZS9kcm0vdHRtL3R0
bV90dC5oCkBAIC0xNzAsNiArMTcwLDE5IEBAIGludCB0dG1fdHRfcG9wdWxhdGUoc3RydWN0IHR0
bV9kZXZpY2UgKmJkZXYsIHN0cnVjdCB0dG1fdHQgKnR0bSwgc3RydWN0IHR0bV9vcGVyCiAgKi8K
IHZvaWQgdHRtX3R0X3VucG9wdWxhdGUoc3RydWN0IHR0bV9kZXZpY2UgKmJkZXYsIHN0cnVjdCB0
dG1fdHQgKnR0bSk7CiAKKy8qKgorICogdHRtX3R0X21hcmtfZm9yX2NsZWFyIC0gTWFyayBwYWdl
cyBmb3IgY2xlYXJpbmcgb24gcG9wdWxhdGUuCisgKgorICogQHR0bTogUG9pbnRlciB0byB0aGUg
dHRtX3R0IHN0cnVjdHVyZQorICoKKyAqIE1hcmtzIHBhZ2VzIGZvciBjbGVhcmluZyBzbyB0aGF0
IHRoZSBuZXh0IHRpbWUgdGhlIHBhZ2UgdmVjdG9yIGlzCisgKiBwb3B1bGF0ZWQsIHRoZSBwYWdl
cyB3aWxsIGJlIGNsZWFyZWQuCisgKi8KK3N0YXRpYyBpbmxpbmUgdm9pZCB0dG1fdHRfbWFya19m
b3JfY2xlYXIoc3RydWN0IHR0bV90dCAqdHRtKQoreworCXR0bS0+cGFnZV9mbGFncyB8PSBUVE1f
UEFHRV9GTEFHX1pFUk9fQUxMT0M7Cit9CisKIHZvaWQgdHRtX3R0X21ncl9pbml0KHVuc2lnbmVk
IGxvbmcgbnVtX3BhZ2VzLCB1bnNpZ25lZCBsb25nIG51bV9kbWEzMl9wYWdlcyk7CiAKIHN0cnVj
dCB0dG1fa21hcF9pdGVyICp0dG1fa21hcF9pdGVyX3R0X2luaXQoc3RydWN0IHR0bV9rbWFwX2l0
ZXJfdHQgKml0ZXJfdHQsCi0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
