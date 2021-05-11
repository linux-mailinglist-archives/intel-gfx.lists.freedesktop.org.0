Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E97DD37AB5C
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 18:05:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D6DB6EA7C;
	Tue, 11 May 2021 16:05:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0916B6EA7C
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 16:05:54 +0000 (UTC)
IronPort-SDR: ABDWqUPLLLp8EKXDBk7SdCTWG6FH789R3BKoUKGMsSSjvzAZY/X5pwA5fnCtFHDvXvBxyIh5hg
 BME3sC8usDRA==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="284972378"
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="284972378"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 09:05:49 -0700
IronPort-SDR: Fr0VeK0W9vTuhmlNalF/Gb15pCcGjeXu3Cy+Lh+HWAQmldVPn7ynFCAW/4l14N19nZ+KQbgLKJ
 oqFyiecUQ0NQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="436727543"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 11 May 2021 09:05:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 May 2021 19:05:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 May 2021 19:05:29 +0300
Message-Id: <20210511160532.21446-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210511160532.21446-1-ville.syrjala@linux.intel.com>
References: <20210511160532.21446-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/6] drm/i915: Move platform checks into
 intel_hdmi_bpc_possible()
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
Cc: Werner Sembach <wse@tuxedocomputers.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxl
dCdzIHB1dCB0aGUgcGxhdGZvcm0gY2hlY2tzIGludG8gaW50ZWxfaGRtaV9icGNfcG9zc2libGUo
KSBzbyB0aGF0Cml0J2xsIGNvbmZpcm0gYm90aCB0aGUgc291cmNlIGFuZCBzaW5rIGNhcGFiaWxp
dGllcy4KCkNjOiBXZXJuZXIgU2VtYmFjaCA8d3NlQHR1eGVkb2NvbXB1dGVycy5jb20+ClNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgfCAxMyArKysr
KysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKaW5kZXggZTY5Njc2
NmYyYjRiLi41NmFjNTNlYWI5MGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfaGRtaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfaGRtaS5jCkBAIC0xODY1LDExICsxODY1LDE1IEBAIHN0YXRpYyBpbnQgaW50ZWxfaGRtaV9w
b3J0X2Nsb2NrKGludCBjbG9jaywgaW50IGJwYykKIHN0YXRpYyBib29sIGludGVsX2hkbWlfYnBj
X3Bvc3NpYmxlKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCiAJCQkJICAgIGludCBi
cGMsIGJvb2wgaGFzX2hkbWlfc2luaywgYm9vbCB5Y2JjcjQyMF9vdXRwdXQpCiB7CisJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNvbm5lY3Rvci0+ZGV2KTsKIAljb25z
dCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfaW5mbyAqaW5mbyA9ICZjb25uZWN0b3ItPmRpc3BsYXlfaW5m
bzsKIAljb25zdCBzdHJ1Y3QgZHJtX2hkbWlfaW5mbyAqaGRtaSA9ICZpbmZvLT5oZG1pOwogCiAJ
c3dpdGNoIChicGMpIHsKIAljYXNlIDEyOgorCQlpZiAoSEFTX0dNQ0goaTkxNSkpCisJCQlyZXR1
cm4gZmFsc2U7CisKIAkJaWYgKCFoYXNfaGRtaV9zaW5rKQogCQkJcmV0dXJuIGZhbHNlOwogCkBA
IC0xODc4LDYgKzE4ODIsOSBAQCBzdGF0aWMgYm9vbCBpbnRlbF9oZG1pX2JwY19wb3NzaWJsZShz
dHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAogCQllbHNlCiAJCQlyZXR1cm4gaW5mby0+
ZWRpZF9oZG1pX2RjX21vZGVzICYgRFJNX0VESURfSERNSV9EQ18zNjsKIAljYXNlIDEwOgorCQlp
ZiAoRElTUExBWV9WRVIoaTkxNSkgPCAxMSkKKwkJCXJldHVybiBmYWxzZTsKKwogCQlpZiAoIWhh
c19oZG1pX3NpbmspCiAJCQlyZXR1cm4gZmFsc2U7CiAKQEAgLTE5OTcsMTIgKzIwMDQsNiBAQCBz
dGF0aWMgYm9vbCBoZG1pX2RlZXBfY29sb3JfcG9zc2libGUoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFk
anVzdGVkX21vZGUgPQogCQkmY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZTsKIAotCWlmIChI
QVNfR01DSChkZXZfcHJpdikpCi0JCXJldHVybiBmYWxzZTsKLQotCWlmIChicGMgPT0gMTAgJiYg
RElTUExBWV9WRVIoZGV2X3ByaXYpIDwgMTEpCi0JCXJldHVybiBmYWxzZTsKLQogCS8qCiAJICog
SERNSSBkZWVwIGNvbG9yIGFmZmVjdHMgdGhlIGNsb2Nrcywgc28gaXQncyBvbmx5IHBvc3NpYmxl
CiAJICogd2hlbiBub3QgY2xvbmluZyB3aXRoIG90aGVyIGVuY29kZXIgdHlwZXMuCi0tIAoyLjI2
LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
