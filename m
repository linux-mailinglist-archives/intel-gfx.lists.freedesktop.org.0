Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D72A934990F
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 19:07:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABA4F6EE18;
	Thu, 25 Mar 2021 18:07:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B3F86EE13
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 18:07:33 +0000 (UTC)
IronPort-SDR: TOLHAdZaAf4TbeGN5hLxkKji+Zmoc6DYI+4X2Gjggc43joZuIGRVgX6z91ltO3C9WzNnUEHbxS
 +9xEXQvjgLxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="178112552"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="178112552"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:33 -0700
IronPort-SDR: vBsJBBRsSx5xv4kg930NFGzjk8CNOUb+sj/2brv9yBu/2vWatcKZtFVGH+2BAI9FBNPe/kgwrS
 T3bLrr6oOtvg==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="453176667"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:32 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 11:07:00 -0700
Message-Id: <20210325180720.401410-31-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210325180720.401410-1-matthew.d.roper@intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 30/50] drm/i915/adl_p: Don't config MBUS and
 DBUF during display initialization
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
Cc: me@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpBbGRl
cmxha2UtUCBkb24ndCBoYXZlIHByb2dyYW1pbmcgc2VxdWVuY2VzIGZvciBNQlVTIG9yIERCVUYg
ZHVyaW5nCmRpc3BsYXkgaW5pdGlhbGl6YWl0b24sIGluc3RlYWQgaXQgcmVxdWlyZXMgcHJvZ3Jh
bWluZyB0byB0aG9zZQpyZWdpc3RlcnMgZHVyaW5nIG1vZGVzZXQgYmVjYXVzZSBpdCB0byBkZXBl
bmQgb24gdGhlIHBpcGVzIGxlZnQKZW5hYmxlZC4KCkJzcGVjOiA0OTIxMwpDYzogTWF0dCBSb3Bl
ciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IENsaW50b24g
VGF5bG9yIDxDbGludG9uLkEuVGF5bG9yQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBS
b3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDYgKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwppbmRleCAzZTQwN2QwYmYzNjMuLjk2OWNkZTgyMmUxZSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmMKQEAgLTUyNDksNiArNTI0OSw5IEBAIHN0YXRpYyB2b2lkIGdlbjEyX2RidWZfc2xpY2Vz
X2NvbmZpZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJY29uc3QgaW50IG51
bV9zbGljZXMgPSBJTlRFTF9JTkZPKGRldl9wcml2KS0+bnVtX3N1cHBvcnRlZF9kYnVmX3NsaWNl
czsKIAllbnVtIGRidWZfc2xpY2Ugc2xpY2U7CiAKKwlpZiAoSVNfQUxERVJMQUtFX1AoZGV2X3By
aXYpKQorCQlyZXR1cm47CisKIAlmb3IgKHNsaWNlID0gREJVRl9TMTsgc2xpY2UgPCAoREJVRl9T
MSArIG51bV9zbGljZXMpOyBzbGljZSsrKQogCQlpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIERCVUZf
Q1RMX1Moc2xpY2UpLAogCQkJICAgICBEQlVGX1RSQUNLRVJfU1RBVEVfU0VSVklDRV9NQVNLLApA
QCAtNTI2MCw2ICs1MjYzLDkgQEAgc3RhdGljIHZvaWQgaWNsX21idXNfaW5pdChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJdW5zaWduZWQgbG9uZyBhYm94X3JlZ3MgPSBJTlRF
TF9JTkZPKGRldl9wcml2KS0+YWJveF9tYXNrOwogCXUzMiBtYXNrLCB2YWwsIGk7CiAKKwlpZiAo
SVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpKQorCQlyZXR1cm47CisKIAltYXNrID0gTUJVU19BQk9Y
X0JUX0NSRURJVF9QT09MMV9NQVNLIHwKIAkJTUJVU19BQk9YX0JUX0NSRURJVF9QT09MMl9NQVNL
IHwKIAkJTUJVU19BQk9YX0JfQ1JFRElUX01BU0sgfAotLSAKMi4yNS40CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
