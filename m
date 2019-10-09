Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9BDD0D02
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 12:43:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E351689CD7;
	Wed,  9 Oct 2019 10:43:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9629D89CD7
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 10:43:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 03:43:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,273,1566889200"; d="scan'208";a="197975609"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 09 Oct 2019 03:43:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Oct 2019 13:43:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Oct 2019 13:43:52 +0300
Message-Id: <20191009104352.15619-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191008161441.12721-5-ville.syrjala@linux.intel.com>
References: <20191008161441.12721-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 5/9] drm/i915: Add 10bpc formats with alpha
 for icl+
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCklD
TCsgYWdhaW4gc3VwcG9ydHMgYWxwaGEgYmxlbmRpbmcgd2l0aCAxMGJwYyBwaXhlbCBmb3JtYXRz
LgpFeHBvc2UgdGhlbS4KCnYyOiBBZGQgYWxsIHRoZSBzdHVmZiBJIG1pc3NlZCBlYXJsaWVyIQoK
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8
IDE5ICsrKysrKysrKysrKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfc3ByaXRlLmMgIHwgMTAgKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAyNSBpbnNlcnRp
b25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKaW5kZXggMWNkY2QwZWEwNTY0Li4xOWEwYzhjZmIxNTEgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0zMDMxLDEwICsz
MDMxLDE3IEBAIGludCBza2xfZm9ybWF0X3RvX2ZvdXJjYyhpbnQgZm9ybWF0LCBib29sIHJnYl9v
cmRlciwgYm9vbCBhbHBoYSkKIAkJCQlyZXR1cm4gRFJNX0ZPUk1BVF9YUkdCODg4ODsKIAkJfQog
CWNhc2UgUExBTkVfQ1RMX0ZPUk1BVF9YUkdCXzIxMDEwMTA6Ci0JCWlmIChyZ2Jfb3JkZXIpCi0J
CQlyZXR1cm4gRFJNX0ZPUk1BVF9YQkdSMjEwMTAxMDsKLQkJZWxzZQotCQkJcmV0dXJuIERSTV9G
T1JNQVRfWFJHQjIxMDEwMTA7CisJCWlmIChyZ2Jfb3JkZXIpIHsKKwkJCWlmIChhbHBoYSkKKwkJ
CQlyZXR1cm4gRFJNX0ZPUk1BVF9BQkdSMjEwMTAxMDsKKwkJCWVsc2UKKwkJCQlyZXR1cm4gRFJN
X0ZPUk1BVF9YQkdSMjEwMTAxMDsKKwkJfSBlbHNlIHsKKwkJCWlmIChhbHBoYSkKKwkJCQlyZXR1
cm4gRFJNX0ZPUk1BVF9BUkdCMjEwMTAxMDsKKwkJCWVsc2UKKwkJCQlyZXR1cm4gRFJNX0ZPUk1B
VF9YUkdCMjEwMTAxMDsKKwkJfQogCWNhc2UgUExBTkVfQ1RMX0ZPUk1BVF9YUkdCXzE2MTYxNjE2
RjoKIAkJaWYgKHJnYl9vcmRlcikgewogCQkJaWYgKGFscGhhKQpAQCAtNDAyNCw4ICs0MDMxLDEw
IEBAIHN0YXRpYyB1MzIgc2tsX3BsYW5lX2N0bF9mb3JtYXQodTMyIHBpeGVsX2Zvcm1hdCkKIAlj
YXNlIERSTV9GT1JNQVRfQVJHQjg4ODg6CiAJCXJldHVybiBQTEFORV9DVExfRk9STUFUX1hSR0Jf
ODg4ODsKIAljYXNlIERSTV9GT1JNQVRfWEJHUjIxMDEwMTA6CisJY2FzZSBEUk1fRk9STUFUX0FC
R1IyMTAxMDEwOgogCQlyZXR1cm4gUExBTkVfQ1RMX0ZPUk1BVF9YUkdCXzIxMDEwMTAgfCBQTEFO
RV9DVExfT1JERVJfUkdCWDsKIAljYXNlIERSTV9GT1JNQVRfWFJHQjIxMDEwMTA6CisJY2FzZSBE
Uk1fRk9STUFUX0FSR0IyMTAxMDEwOgogCQlyZXR1cm4gUExBTkVfQ1RMX0ZPUk1BVF9YUkdCXzIx
MDEwMTA7CiAJY2FzZSBEUk1fRk9STUFUX1hCR1IxNjE2MTYxNkY6CiAJY2FzZSBEUk1fRk9STUFU
X0FCR1IxNjE2MTYxNkY6CkBAIC01NjE3LDYgKzU2MjYsOCBAQCBzdGF0aWMgaW50IHNrbF91cGRh
dGVfc2NhbGVyX3BsYW5lKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCWNh
c2UgRFJNX0ZPUk1BVF9BUkdCODg4ODoKIAljYXNlIERSTV9GT1JNQVRfWFJHQjIxMDEwMTA6CiAJ
Y2FzZSBEUk1fRk9STUFUX1hCR1IyMTAxMDEwOgorCWNhc2UgRFJNX0ZPUk1BVF9BUkdCMjEwMTAx
MDoKKwljYXNlIERSTV9GT1JNQVRfQUJHUjIxMDEwMTA6CiAJY2FzZSBEUk1fRk9STUFUX1hCR1Ix
NjE2MTYxNkY6CiAJY2FzZSBEUk1fRk9STUFUX0FCR1IxNjE2MTYxNkY6CiAJY2FzZSBEUk1fRk9S
TUFUX1hSR0IxNjE2MTYxNkY6CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Nwcml0ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9z
cHJpdGUuYwppbmRleCA0Y2QwOTgyZGM4YTIuLmRmM2NhNzU1ODBkNyAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCkBAIC0yMTAzLDYgKzIxMDMsOCBAQCBz
dGF0aWMgY29uc3QgdTMyIGljbF9zZHJfeV9wbGFuZV9mb3JtYXRzW10gPSB7CiAJRFJNX0ZPUk1B
VF9BQkdSODg4OCwKIAlEUk1fRk9STUFUX1hSR0IyMTAxMDEwLAogCURSTV9GT1JNQVRfWEJHUjIx
MDEwMTAsCisJRFJNX0ZPUk1BVF9BUkdCMjEwMTAxMCwKKwlEUk1fRk9STUFUX0FCR1IyMTAxMDEw
LAogCURSTV9GT1JNQVRfWVVZViwKIAlEUk1fRk9STUFUX1lWWVUsCiAJRFJNX0ZPUk1BVF9VWVZZ
LApAQCAtMjEyNCw2ICsyMTI2LDggQEAgc3RhdGljIGNvbnN0IHUzMiBpY2xfc2RyX3V2X3BsYW5l
X2Zvcm1hdHNbXSA9IHsKIAlEUk1fRk9STUFUX0FCR1I4ODg4LAogCURSTV9GT1JNQVRfWFJHQjIx
MDEwMTAsCiAJRFJNX0ZPUk1BVF9YQkdSMjEwMTAxMCwKKwlEUk1fRk9STUFUX0FSR0IyMTAxMDEw
LAorCURSTV9GT1JNQVRfQUJHUjIxMDEwMTAsCiAJRFJNX0ZPUk1BVF9ZVVlWLAogCURSTV9GT1JN
QVRfWVZZVSwKIAlEUk1fRk9STUFUX1VZVlksCkBAIC0yMTQ5LDYgKzIxNTMsOCBAQCBzdGF0aWMg
Y29uc3QgdTMyIGljbF9oZHJfcGxhbmVfZm9ybWF0c1tdID0gewogCURSTV9GT1JNQVRfQUJHUjg4
ODgsCiAJRFJNX0ZPUk1BVF9YUkdCMjEwMTAxMCwKIAlEUk1fRk9STUFUX1hCR1IyMTAxMDEwLAor
CURSTV9GT1JNQVRfQVJHQjIxMDEwMTAsCisJRFJNX0ZPUk1BVF9BQkdSMjEwMTAxMCwKIAlEUk1f
Rk9STUFUX1hSR0IxNjE2MTYxNkYsCiAJRFJNX0ZPUk1BVF9YQkdSMTYxNjE2MTZGLAogCURSTV9G
T1JNQVRfQVJHQjE2MTYxNjE2RiwKQEAgLTIzMTUsNiArMjMyMSw4IEBAIHN0YXRpYyBib29sIHNr
bF9wbGFuZV9mb3JtYXRfbW9kX3N1cHBvcnRlZChzdHJ1Y3QgZHJtX3BsYW5lICpfcGxhbmUsCiAJ
Y2FzZSBEUk1fRk9STUFUX1JHQjU2NToKIAljYXNlIERSTV9GT1JNQVRfWFJHQjIxMDEwMTA6CiAJ
Y2FzZSBEUk1fRk9STUFUX1hCR1IyMTAxMDEwOgorCWNhc2UgRFJNX0ZPUk1BVF9BUkdCMjEwMTAx
MDoKKwljYXNlIERSTV9GT1JNQVRfQUJHUjIxMDEwMTA6CiAJY2FzZSBEUk1fRk9STUFUX1lVWVY6
CiAJY2FzZSBEUk1fRk9STUFUX1lWWVU6CiAJY2FzZSBEUk1fRk9STUFUX1VZVlk6CkBAIC0yMzY3
LDYgKzIzNzUsOCBAQCBzdGF0aWMgYm9vbCBnZW4xMl9wbGFuZV9mb3JtYXRfbW9kX3N1cHBvcnRl
ZChzdHJ1Y3QgZHJtX3BsYW5lICpfcGxhbmUsCiAJY2FzZSBEUk1fRk9STUFUX1JHQjU2NToKIAlj
YXNlIERSTV9GT1JNQVRfWFJHQjIxMDEwMTA6CiAJY2FzZSBEUk1fRk9STUFUX1hCR1IyMTAxMDEw
OgorCWNhc2UgRFJNX0ZPUk1BVF9BUkdCMjEwMTAxMDoKKwljYXNlIERSTV9GT1JNQVRfQUJHUjIx
MDEwMTA6CiAJY2FzZSBEUk1fRk9STUFUX1lVWVY6CiAJY2FzZSBEUk1fRk9STUFUX1lWWVU6CiAJ
Y2FzZSBEUk1fRk9STUFUX1VZVlk6Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
