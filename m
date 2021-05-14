Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C553809FA
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 14:58:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 799396EE6C;
	Fri, 14 May 2021 12:58:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49AE76EE6B
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 12:58:17 +0000 (UTC)
IronPort-SDR: j2AG4UexQgNbySZb5F/MlMws8YAS6fKMom+iHQfrCgKmOJ0VwnH4OZ71vOLcFb7E1bdBV7snsN
 YS656BaC0VgQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="261409813"
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="261409813"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 05:58:06 -0700
IronPort-SDR: iEy9w7RTOIOWe2rSIz2VCvVMMOYhh6NIxupsKtuywYqbAWfbm124Dqn9ADN0RedOU5eG8rFYKe
 O+tOxevtAr2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="393626105"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 14 May 2021 05:58:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 14 May 2021 15:58:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 15:57:41 +0300
Message-Id: <20210514125751.17075-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
References: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/14] drm/i915: Apply WaUse32BppForSRWM to elk
 as well as ctg
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSB3L2EgZGF0YWJhc2UgbGlzdHMgdGhpcyBmb3IgYm90aCBjdGcgYW5kIGVsay4gU28gbGV0J3Mg
YXBwbHkgaXQgdG8KZWxrIGFzIHdlbGwuIEFuZCBhZGQgdGhlIHcvYSBuYW1lLgoKU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgMTIgKysrKy0tLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wbS5jCmluZGV4IDhhMDhhN2MwZTcxZi4uNjYxYmM2ZmRmMzhjIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmMKQEAgLTExNTIsMTcgKzExNTIsMTMgQEAgc3RhdGljIHUxNiBnNHhfY29tcHV0
ZV93bShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAljcHAgPSBw
bGFuZV9zdGF0ZS0+aHcuZmItPmZvcm1hdC0+Y3BwWzBdOwogCiAJLyoKLQkgKiBOb3QgMTAwJSBz
dXJlIHdoaWNoIHdheSBFTEsgc2hvdWxkIGdvIGhlcmUgYXMgdGhlCi0JICogc3BlYyBvbmx5IHNh
eXMgQ0wvQ1RHIHNob3VsZCBhc3N1bWUgMzJicHAgYW5kIEJXCi0JICogZG9lc24ndCBuZWVkIHRv
LiBCdXQgYXMgdGhlc2UgdGhpbmdzIGZvbGxvd2VkIHRoZQotCSAqIG1vYmlsZSB2cy4gZGVza3Rv
cCBsaW5lcyBvbiBnZW4zIGFzIHdlbGwsIGxldCdzCi0JICogYXNzdW1lIEVMSyBkb2Vzbid0IG5l
ZWQgdGhpcy4KKwkgKiBXYVVzZTMyQnBwRm9yU1JXTTpjdGcsZWxrCiAJICoKLQkgKiBUaGUgc3Bl
YyBhbHNvIGZhaWxzIHRvIGxpc3Qgc3VjaCBhIHJlc3RyaWN0aW9uIGZvcgotCSAqIHRoZSBIUExM
IHdhdGVybWFyaywgd2hpY2ggc2VlbXMgYSBsaXR0bGUgc3RyYW5nZS4KKwkgKiBUaGUgc3BlYyBm
YWlscyB0byBsaXN0IHRoaXMgcmVzdHJpY3Rpb24gZm9yIHRoZQorCSAqIEhQTEwgd2F0ZXJtYXJr
LCB3aGljaCBzZWVtcyBhIGxpdHRsZSBzdHJhbmdlLgogCSAqIExldCdzIHVzZSAzMmJwcCBmb3Ig
dGhlIEhQTEwgd2F0ZXJtYXJrIGFzIHdlbGwuCiAJICovCi0JaWYgKElTX0dNNDUoZGV2X3ByaXYp
ICYmIHBsYW5lLT5pZCA9PSBQTEFORV9QUklNQVJZICYmCisJaWYgKHBsYW5lLT5pZCA9PSBQTEFO
RV9QUklNQVJZICYmCiAJICAgIGxldmVsICE9IEc0WF9XTV9MRVZFTF9OT1JNQUwpCiAJCWNwcCA9
IG1heChjcHAsIDR1KTsKIAotLSAKMi4yNi4zCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
