Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3330A14D7
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 11:26:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E262D6E045;
	Thu, 29 Aug 2019 09:26:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44D326E049
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 09:26:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 02:26:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="175211188"
Received: from tbthomps-mobl.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.254.111.220])
 by orsmga008.jf.intel.com with ESMTP; 29 Aug 2019 02:26:02 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Aug 2019 02:25:50 -0700
Message-Id: <20190829092554.32198-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190829092554.32198-1-lucas.demarchi@intel.com>
References: <20190829092554.32198-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 3/7] drm/i915: protect access to DP_TP_* on
 non-dp
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

RFBfVFBfe0NUTCxTVEFUVVN9IHNob3VsZCBvbmx5IGJlIHByb2dyYW1tZWQgd2hlbiB0aGUgZW5j
b2RlciBpcyBpbnRlbF9kcC4KQ2hlY2tpbmcgaXRzIGN1cnJlbnQgdXNhZ2VzIGludGVsX2Rpc2Fi
bGVfZGRpX2J1ZigpIGlzIHRoZSBvbmx5Cm9mZmVuZGVyLCB3aXRoIG90aGVyIHBsYWNlcyBiZWlu
ZyBwcm90ZWN0ZWQgYnkgY2hlY2tzIGxpa2UKcGlwZV9jb25maWctPmZlY19lbmFibGUgdGhhdCBp
cyBvbmx5IHNldCBieSBpbnRlbF9kcC4KCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2Fz
LmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jIHwgMTAgKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygr
KSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YwppbmRleCAzMTgwZGFjYjViZTQuLmRmM2U0ZmU3ZTNlOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0zNDYyLDEwICszNDYyLDEyIEBAIHN0YXRpYyB2b2lk
IGludGVsX2Rpc2FibGVfZGRpX2J1ZihzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJ
d2FpdCA9IHRydWU7CiAJfQogCi0JdmFsID0gSTkxNV9SRUFEKERQX1RQX0NUTChwb3J0KSk7Ci0J
dmFsICY9IH4oRFBfVFBfQ1RMX0VOQUJMRSB8IERQX1RQX0NUTF9MSU5LX1RSQUlOX01BU0spOwot
CXZhbCB8PSBEUF9UUF9DVExfTElOS19UUkFJTl9QQVQxOwotCUk5MTVfV1JJVEUoRFBfVFBfQ1RM
KHBvcnQpLCB2YWwpOworCWlmIChpbnRlbF9lbmNvZGVyX2lzX2RwKGVuY29kZXIpKSB7CisJCXZh
bCA9IEk5MTVfUkVBRChEUF9UUF9DVEwocG9ydCkpOworCQl2YWwgJj0gfihEUF9UUF9DVExfRU5B
QkxFIHwgRFBfVFBfQ1RMX0xJTktfVFJBSU5fTUFTSyk7CisJCXZhbCB8PSBEUF9UUF9DVExfTElO
S19UUkFJTl9QQVQxOworCQlJOTE1X1dSSVRFKERQX1RQX0NUTChwb3J0KSwgdmFsKTsKKwl9CiAK
IAkvKiBEaXNhYmxlIEZFQyBpbiBEUCBTaW5rICovCiAJaW50ZWxfZGRpX2Rpc2FibGVfZmVjX3N0
YXRlKGVuY29kZXIsIGNydGNfc3RhdGUpOwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
