Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F07D530FAD2
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 19:11:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5818C6EE0E;
	Thu,  4 Feb 2021 18:10:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 671DB6EE0E
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 18:10:58 +0000 (UTC)
IronPort-SDR: /uAWwLa3TYuzHzm7incOzawkcTCIBLfvcSxe4aM/MWxEn0L+fC/yJNvRjrxXafXglicPfz1S4s
 x+b8QHMMzs2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="160460340"
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="160460340"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 10:10:57 -0800
IronPort-SDR: v8nQ4gxR9adoGQQXnxvplmt1/GmLP+94mBbEv9HNRjMSOlu/vypKfKiZXUoUEiFDG9mjh7BxNV
 mtu/sgmuCurw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="397138931"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 04 Feb 2021 10:10:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Feb 2021 20:10:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Feb 2021 20:10:36 +0200
Message-Id: <20210204181048.24202-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210204181048.24202-1-ville.syrjala@linux.intel.com>
References: <20210204181048.24202-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 02/14] drm/i915: Extract hsw_ddi_{enable,
 disable}_clock()
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCllh
bmsgb3V0IHRoZSBIU1cvQkRXIGNvZGUgZnJvbSBpbnRlbF9kZGlfY2xrX3tzZWxlY3QsZGlzYWJs
ZX0oKQphbmQgcHV0IGl0IGludG8gdGhlIG5ldyBlbmNvZGVyIC57ZW5hYmxlLGRpc2FibGV9X2Ns
b2NrKCkgdmZ1bmNzLgoKdjI6IHMvZGV2X3ByaXYvaTkxNS8gKEx1Y2FzKQoKUmV2aWV3ZWQtYnk6
IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAzMiArKysrKysrKysrKysr
KysrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IGZhMDMy
ZTM3N2ViYy4uYjhhZjdiN2RmMTJhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMKQEAgLTM0MjYsOSArMzQyNiw2IEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9jbGtf
c2VsZWN0KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCiAJCWludGVsX2RlX3dyaXRl
KGRldl9wcml2LCBEUExMX0NUUkwyLCB2YWwpOwogCi0JfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpIDwgOSkgewotCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgUE9SVF9DTEtfU0VMKHBv
cnQpLAotCQkJICAgICAgIGhzd19wbGxfdG9fZGRpX3BsbF9zZWwocGxsKSk7CiAJfQogCiAJbXV0
ZXhfdW5sb2NrKCZkZXZfcHJpdi0+ZHBsbC5sb2NrKTsKQEAgLTM0NTEsMTIgKzM0NDgsMzAgQEAg
c3RhdGljIHZvaWQgaW50ZWxfZGRpX2Nsa19kaXNhYmxlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyKQogCX0gZWxzZSBpZiAoSVNfR0VOOV9CQyhkZXZfcHJpdikpIHsKIAkJaW50ZWxfZGVf
d3JpdGUoZGV2X3ByaXYsIERQTExfQ1RSTDIsCiAJCQkgICAgICAgaW50ZWxfZGVfcmVhZChkZXZf
cHJpdiwgRFBMTF9DVFJMMikgfCBEUExMX0NUUkwyX0RESV9DTEtfT0ZGKHBvcnQpKTsKLQl9IGVs
c2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCA5KSB7Ci0JCWludGVsX2RlX3dyaXRlKGRldl9w
cml2LCBQT1JUX0NMS19TRUwocG9ydCksCi0JCQkgICAgICAgUE9SVF9DTEtfU0VMX05PTkUpOwog
CX0KIH0KIAorc3RhdGljIHZvaWQgaHN3X2RkaV9lbmFibGVfY2xvY2soc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIsCisJCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShlbmNv
ZGVyLT5iYXNlLmRldik7CisJY29uc3Qgc3RydWN0IGludGVsX3NoYXJlZF9kcGxsICpwbGwgPSBj
cnRjX3N0YXRlLT5zaGFyZWRfZHBsbDsKKwllbnVtIHBvcnQgcG9ydCA9IGVuY29kZXItPnBvcnQ7
CisKKwlpZiAoZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgIXBsbCkpCisJCXJldHVybjsKKworCWlu
dGVsX2RlX3dyaXRlKGk5MTUsIFBPUlRfQ0xLX1NFTChwb3J0KSwgaHN3X3BsbF90b19kZGlfcGxs
X3NlbChwbGwpKTsKK30KKworc3RhdGljIHZvaWQgaHN3X2RkaV9kaXNhYmxlX2Nsb2NrKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7CisJZW51bSBwb3J0IHBvcnQgPSBlbmNv
ZGVyLT5wb3J0OworCisJaW50ZWxfZGVfd3JpdGUoaTkxNSwgUE9SVF9DTEtfU0VMKHBvcnQpLCBQ
T1JUX0NMS19TRUxfTk9ORSk7Cit9CisKIHN0YXRpYyB2b2lkIGludGVsX2RkaV9lbmFibGVfY2xv
Y2soc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkJICAgY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7CkBAIC01NjAzLDYgKzU2MTgsMTEgQEAgdm9p
ZCBpbnRlbF9kZGlfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0g
cG9ydCBwb3J0KQogCWVuY29kZXItPmNsb25lYWJsZSA9IDA7CiAJZW5jb2Rlci0+cGlwZV9tYXNr
ID0gfjA7CiAKKwlpZiAoSVNfQlJPQURXRUxMKGRldl9wcml2KSB8fCBJU19IQVNXRUxMKGRldl9w
cml2KSkgeworCQllbmNvZGVyLT5lbmFibGVfY2xvY2sgPSBoc3dfZGRpX2VuYWJsZV9jbG9jazsK
KwkJZW5jb2Rlci0+ZGlzYWJsZV9jbG9jayA9IGhzd19kZGlfZGlzYWJsZV9jbG9jazsKKwl9CisK
IAlpZiAoSVNfREcxKGRldl9wcml2KSkKIAkJZW5jb2Rlci0+aHBkX3BpbiA9IGRnMV9ocGRfcGlu
KGRldl9wcml2LCBwb3J0KTsKIAllbHNlIGlmIChJU19ST0NLRVRMQUtFKGRldl9wcml2KSkKLS0g
CjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
