Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FE02A0BAF
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 17:50:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EF386E9D2;
	Fri, 30 Oct 2020 16:50:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB21C6E9D2
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 16:50:48 +0000 (UTC)
IronPort-SDR: 80JaOajCWcXl22nXlIMMnvOMKRGAoXS21emSCLs6gtz2UMXqltObx+Wvqu0lZjd3w8hBQ87rjK
 wL2ZK+w31LMQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="167851600"
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="167851600"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 09:50:48 -0700
IronPort-SDR: 8T+JD+s25dYUGwbV2z0GSf0Y443jBhCFl04mXF6sgmm7uecSQoSssQboKniuZQuFMrufTHruiu
 EwJLnrgTgbFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="361900316"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 30 Oct 2020 09:50:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Oct 2020 18:50:45 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Oct 2020 18:50:35 +0200
Message-Id: <20201030165045.5000-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/10] drm/i915: ilk+ wm cleanups
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmlu
dGVsX2F0b21pY19jcnRjX3N0YXRlX2Zvcl9lYWNoX3BsYW5lX3N0YXRlKCkgaXMgY2F1c2luZyBz
b21lIGdyaWVmCmZvciB0aGUgYmlnam9pbmVyIHN0dWZmLiBUbyByZW1lZHkgdGhhdCBJIHdhbnQg
dG8gZWxpbWluYXRlCmludGVsX2F0b21pY19jcnRjX3N0YXRlX2Zvcl9lYWNoX3BsYW5lX3N0YXRl
KCkgZW50aXJlbHkgc28gcGVvcGxlCmRvbid0IGdldCBhbnkgYnJpZ2h0IGlkZWFzIGFib3V0IHVz
aW5nIGl0IGZvciBhbnl0aGluZyBuZXcuIFRvIHRoYXQKZW5kIGxldCdzIHN0YXJ0IG1vdmluZyB0
aGUgaWxrKyB3bSBjb2RlIHRvd2FyZHMgdGhlIG1vZGVsIHVzZWQgYnkKZzR4L3ZsdiB3aGljaCBk
byBub3QgdXNlIHRoaXMgc3R1ZmYgYXQgYWxsLgoKQWxzbyBpbmNsdWRlZCBhIGJ1bmNoIG9mIG9s
ZCBzdHVmZiBmcm9tIHRoZSB3bSBjb2RlIGJhY2tsb2cuCgpWaWxsZSBTeXJqw6Rsw6QgKDEwKToK
ICBkcm0vaTkxNTogcy9VU0hSVF9NQVgvVTE2X01BWC8KICBkcm0vaTkxNTogU2hyaW5rIGlsay1i
ZHcgd20gc3RvcmFnZSBieSB1c2luZyB1MTYKICBkcm0vaTkxNTogUmVuYW1lIGlsayB3YXRlcm1h
cmsgc3RydWN0cy9lbnVtcwogIGRybS9pOTE1OiBzL2Rldl9wcml2LT53bS5ody8mZGV2X3ByaXYt
PndtLmlsay8KICBkcm0vaTkxNTogcy9pbGtfcGlwZV93bS9pbGtfd21fc3RhdGUvCiAgZHJtL2k5
MTU6IFN0YXNoIGF3YXkgdGhlIG9yaWdpbmFsIFNTS1BEIGxhdGVuY3kgdmFsdWVzCiAgZHJtL2k5
MTU6IFJlbW92ZSBnZW42X2NoZWNrX21jaF9zZXR1cCgpCiAgZHJtL2k5MTU6IEFkZCBSRUdfR0VO
TUFTSzY0KCkgYW5kIFJFR19GSUVMRF9HRVQ2NCgpCiAgZHJtL2k5MTU6IENsZWFuIHVwIFNTS1BE
L01MVFIgZGVmaW5lcwogIGRybS9pOTE1OiBQb2xpc2ggaWxrKyB3bSByZWdpZHN0ZXIgYml0cwoK
IC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jICB8ICAgMiArLQog
Li4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgIDIwICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgMTYgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8IDEyNSArKystLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgICAgICAgICAgICAgICB8IDM1NyArKysr
KysrKystLS0tLS0tLS0KIDUgZmlsZXMgY2hhbmdlZCwgMjczIGluc2VydGlvbnMoKyksIDI0NyBk
ZWxldGlvbnMoLSkKCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
