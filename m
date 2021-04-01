Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81902351646
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 17:40:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 889E56E112;
	Thu,  1 Apr 2021 15:40:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B7806E112
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Apr 2021 15:40:49 +0000 (UTC)
IronPort-SDR: PzGTTe1uEYmbZWWvR0/u5yp60IBdFe3zABga8xMCKuFKwuvFgUueibnM7Eu/L74QlvszG8OrRM
 jkaQhdOG6gkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9941"; a="192375198"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="192375198"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 08:40:46 -0700
IronPort-SDR: IGzxhJE7/n4KmVyLgVPwF6UdS3lH/bG1UubmwMIS75CE5u+YQ5ugBn9P7VOMbcosUHgQcN0TXF
 5dnM3xhgLzRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="419251520"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 01 Apr 2021 08:40:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 01 Apr 2021 18:40:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Apr 2021 18:40:43 +0300
Message-Id: <20210401154043.19466-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210330184254.6290-1-ville.syrjala@linux.intel.com>
References: <20210330184254.6290-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915: Extract intel_adjusted_rate()
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkV4
dHJhY3QgYSBzbWFsbCBoZWxwZXIgdG8gY2FsY3VsYXRlIHRoZSBkb3duc2NhbGluZwphZGp1c3Rl
ZCBwaXhlbCByYXRlL2RhdGEgcmF0ZS9ldGMuCgp2MjogRHJvcCB0aGUgcGxhbmUgdmlzaWJpbGl0
eSBjaGVjayBhbmQgYWRkIGEgY29tbWVudCBleHBsYWluaW5nIHdoeQoKUmV2aWV3ZWQtYnk6IEph
bmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogLi4uL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jIHwgMzYgKysrKysrKysrKysrKystLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKaW5k
ZXggYzNmMjk2MmFhMWViLi4wN2ZjZmVjNThjNDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYwpAQCAtMTMzLDI1ICsxMzMsNDUgQEAg
aW50ZWxfcGxhbmVfZGVzdHJveV9zdGF0ZShzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKIAlrZnJl
ZShwbGFuZV9zdGF0ZSk7CiB9CiAKLXVuc2lnbmVkIGludCBpbnRlbF9wbGFuZV9waXhlbF9yYXRl
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAotCQkJCSAgICBjb25z
dCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQorc3RhdGljIHVuc2lnbmVk
IGludCBpbnRlbF9hZGp1c3RlZF9yYXRlKGNvbnN0IHN0cnVjdCBkcm1fcmVjdCAqc3JjLAorCQkJ
CQljb25zdCBzdHJ1Y3QgZHJtX3JlY3QgKmRzdCwKKwkJCQkJdW5zaWduZWQgaW50IHJhdGUpCiB7
CiAJdW5zaWduZWQgaW50IHNyY193LCBzcmNfaCwgZHN0X3csIGRzdF9oOwotCXVuc2lnbmVkIGlu
dCBwaXhlbF9yYXRlID0gY3J0Y19zdGF0ZS0+cGl4ZWxfcmF0ZTsKIAotCXNyY193ID0gZHJtX3Jl
Y3Rfd2lkdGgoJnBsYW5lX3N0YXRlLT51YXBpLnNyYykgPj4gMTY7Ci0Jc3JjX2ggPSBkcm1fcmVj
dF9oZWlnaHQoJnBsYW5lX3N0YXRlLT51YXBpLnNyYykgPj4gMTY7Ci0JZHN0X3cgPSBkcm1fcmVj
dF93aWR0aCgmcGxhbmVfc3RhdGUtPnVhcGkuZHN0KTsKLQlkc3RfaCA9IGRybV9yZWN0X2hlaWdo
dCgmcGxhbmVfc3RhdGUtPnVhcGkuZHN0KTsKKwlzcmNfdyA9IGRybV9yZWN0X3dpZHRoKHNyYykg
Pj4gMTY7CisJc3JjX2ggPSBkcm1fcmVjdF9oZWlnaHQoc3JjKSA+PiAxNjsKKwlkc3RfdyA9IGRy
bV9yZWN0X3dpZHRoKGRzdCk7CisJZHN0X2ggPSBkcm1fcmVjdF9oZWlnaHQoZHN0KTsKIAogCS8q
IERvd25zY2FsaW5nIGxpbWl0cyB0aGUgbWF4aW11bSBwaXhlbCByYXRlICovCiAJZHN0X3cgPSBt
aW4oc3JjX3csIGRzdF93KTsKIAlkc3RfaCA9IG1pbihzcmNfaCwgZHN0X2gpOwogCi0JcmV0dXJu
IERJVl9ST1VORF9VUF9VTEwobXVsX3UzMl91MzIocGl4ZWxfcmF0ZSwgc3JjX3cgKiBzcmNfaCks
CisJcmV0dXJuIERJVl9ST1VORF9VUF9VTEwobXVsX3UzMl91MzIocmF0ZSwgc3JjX3cgKiBzcmNf
aCksCiAJCQkJZHN0X3cgKiBkc3RfaCk7CiB9CiAKK3Vuc2lnbmVkIGludCBpbnRlbF9wbGFuZV9w
aXhlbF9yYXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAorCQkJ
CSAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQoreworCS8q
CisJICogTm90ZSB3ZSBkb24ndCBjaGVjayBmb3IgcGxhbmUgdmlzaWJpbGl0eSBoZXJlIGFzCisJ
ICogd2Ugd2FudCB0byB1c2UgdGhpcyB3aGVuIGNhbGN1bGF0aW5nIHRoZSBjdXJzb3IKKwkgKiB3
YXRlcm1hcmtzIGV2ZW4gaWYgdGhlIGN1cnNvciBpcyBmdWxseSBvZmZzY3JlZW4uCisJICogVGhh
dCBkZXBlbmRzIG9uIHRoZSBzcmMvZHN0IHJlY3RhbmdsZXMgYmVpbmcKKwkgKiBjb3JyZWN0bHkg
cG9wdWxhdGVkIHdoZW5ldmVyIHRoZSB3YXRlcm1hcmsgY29kZQorCSAqIGNvbnNpZGVycyB0aGUg
Y3Vyc29yIHRvIGJlIHZpc2libGUsIHdoZXRoZXIgb3Igbm90CisJICogaXQgaXMgYWN0dWFsbHkg
dmlzaWJsZS4KKwkgKgorCSAqIFNlZTogaW50ZWxfd21fcGxhbmVfdmlzaWJsZSgpIGFuZCBpbnRl
bF9jaGVja19jdXJzb3IoKQorCSAqLworCisJcmV0dXJuIGludGVsX2FkanVzdGVkX3JhdGUoJnBs
YW5lX3N0YXRlLT51YXBpLnNyYywKKwkJCQkgICAmcGxhbmVfc3RhdGUtPnVhcGkuZHN0LAorCQkJ
CSAgIGNydGNfc3RhdGUtPnBpeGVsX3JhdGUpOworfQorCiB1bnNpZ25lZCBpbnQgaW50ZWxfcGxh
bmVfZGF0YV9yYXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAog
CQkJCSAgIGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCiB7Ci0t
IAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
