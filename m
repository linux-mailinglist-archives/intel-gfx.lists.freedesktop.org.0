Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB89118591
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 11:52:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 374146E8B0;
	Tue, 10 Dec 2019 10:52:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1273C6E8B0
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 10:52:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 02:52:04 -0800
X-IronPort-AV: E=Sophos;i="5.69,299,1571727600"; d="scan'208";a="387555817"
Received: from rmoran-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.35.46])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 02:52:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 12:50:54 +0200
Message-Id: <0341fdc13260625150315b0b57a4227eb766c50f.1575974743.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1575974743.git.jani.nikula@intel.com>
References: <cover.1575974743.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [v4.1 10/16] drm/i915/dsi: abstract afe_clk calculation
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UnbGwgbWFrZSBtb3JlIHVzZSBvZiBpdCBpbiB0aGUgZnV0dXJlLgoKQ2M6IFZhbmRpdGEgS3Vs
a2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFZhbmRpdGEgS3Vsa2Fy
bmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaWNsX2RzaS5jIHwgMTggKysrKysrKysrKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTMg
aW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aWNsX2RzaS5jCmluZGV4IGVmNTNlZDZkM2VjZi4uZGUzNzQzMjMzZGNiIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwpAQCAtMzAxLDE4ICszMDEsMjYgQEAgc3RhdGljIHZv
aWQgY29uZmlndXJlX2R1YWxfbGlua19tb2RlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LAogCUk5MTVfV1JJVEUoRFNTX0NUTDEsIGRzc19jdGwxKTsKIH0KIAorLyogYWthIERTSSA4WCBj
bG9jayAqLworc3RhdGljIGludCBhZmVfY2xrKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
KQoreworCXN0cnVjdCBpbnRlbF9kc2kgKmludGVsX2RzaSA9IGVuY190b19pbnRlbF9kc2koJmVu
Y29kZXItPmJhc2UpOworCWludCBicHA7CisKKwlicHAgPSBtaXBpX2RzaV9waXhlbF9mb3JtYXRf
dG9fYnBwKGludGVsX2RzaS0+cGl4ZWxfZm9ybWF0KTsKKworCXJldHVybiBESVZfUk9VTkRfQ0xP
U0VTVChpbnRlbF9kc2ktPnBjbGsgKiBicHAsIGludGVsX2RzaS0+bGFuZV9jb3VudCk7Cit9CisK
IHN0YXRpYyB2b2lkIGdlbjExX2RzaV9wcm9ncmFtX2VzY19jbGtfZGl2KHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwogCXN0cnVjdCBpbnRlbF9kc2kgKmludGVsX2Rz
aSA9IGVuY190b19pbnRlbF9kc2koJmVuY29kZXItPmJhc2UpOwogCWVudW0gcG9ydCBwb3J0Owot
CXUzMiBicHAgPSBtaXBpX2RzaV9waXhlbF9mb3JtYXRfdG9fYnBwKGludGVsX2RzaS0+cGl4ZWxf
Zm9ybWF0KTsKLQl1MzIgYWZlX2Nsa19raHo7IC8qIDhYIENsb2NrICovCisJaW50IGFmZV9jbGtf
a2h6OwogCXUzMiBlc2NfY2xrX2Rpdl9tOwogCi0JYWZlX2Nsa19raHogPSBESVZfUk9VTkRfQ0xP
U0VTVChpbnRlbF9kc2ktPnBjbGsgKiBicHAsCi0JCQkJCWludGVsX2RzaS0+bGFuZV9jb3VudCk7
Ci0KKwlhZmVfY2xrX2toeiA9IGFmZV9jbGsoZW5jb2Rlcik7CiAJZXNjX2Nsa19kaXZfbSA9IERJ
Vl9ST1VORF9VUChhZmVfY2xrX2toeiwgRFNJX01BWF9FU0NfQ0xLKTsKIAogCWZvcl9lYWNoX2Rz
aV9wb3J0KHBvcnQsIGludGVsX2RzaS0+cG9ydHMpIHsKLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
