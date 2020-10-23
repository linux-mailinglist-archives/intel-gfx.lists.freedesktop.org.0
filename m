Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3602970A3
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 15:34:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BC056F879;
	Fri, 23 Oct 2020 13:34:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 269016F879
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 13:34:47 +0000 (UTC)
IronPort-SDR: H7xwGkRO1Qiq9lVRq+UlAfGWaseq+U/Khl9scd9Qj6Y+6Tyr1V2hDPcFp9g2DTsgJhbAHSq65b
 0GpaO4pDZkBg==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="229310568"
X-IronPort-AV: E=Sophos;i="5.77,408,1596524400"; d="scan'208";a="229310568"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 06:34:45 -0700
IronPort-SDR: KyRvJ3hyz011HGHMDOuxg7AdBkg0VRtXd0Elb3WBUJqJcM+05Cx1Z0wFZYUNURsueBLjpC1SGz
 mq+XMYRtF5VQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,408,1596524400"; d="scan'208";a="359603679"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 23 Oct 2020 06:34:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 23 Oct 2020 16:34:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Oct 2020 16:34:07 +0300
Message-Id: <20201023133420.12039-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
References: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 06/19] drm/i915: Use AUX_CH_USBCn for the RKL
 VBT AUX CH setup
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFz
IHdpdGggdGhlIFZCVCBEVk8gcG9ydCwgUktMIHVzZXMgUEhZIGJhc2VkIG1hcHBpbmcgZm9yIHRo
ZQpWQlQgQVVYIENILiBBZGp1c3QgdGhlIGNvZGUgdG8gdXNlIHRoZSBuZXcgQVVYX1VTQkNuIG5h
bWVzCmFuZCBhZGQgYSBjb21tZW50IHRvIGV4cGxhaW4gdGhlIHNpdHVhdGlvbi4KClJldmlld2Vk
LWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyB8IDggKysrKysrLS0K
IDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwppbmRleCBmZjgyNWJlMGFjODguLjRj
Yzk0OWIyMjhmMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9iaW9zLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMK
QEAgLTI2NjQsMTIgKzI2NjQsMTYgQEAgZW51bSBhdXhfY2ggaW50ZWxfYmlvc19wb3J0X2F1eF9j
aChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCWF1eF9jaCA9IEFVWF9DSF9C
OwogCQlicmVhazsKIAljYXNlIERQX0FVWF9DOgorCQkvKgorCQkgKiBSS0wvREcxIFZCVCB1c2Vz
IFBIWSBiYXNlZCBtYXBwaW5nLiBDb21ibyBQSFlzIEEsQixDLEQKKwkJICogbWFwIHRvIERESSBB
LEIsVEMxLFRDMiByZXNwZWN0aXZlbHkuCisJCSAqLwogCQlhdXhfY2ggPSAoSVNfREcxKGRldl9w
cml2KSB8fCBJU19ST0NLRVRMQUtFKGRldl9wcml2KSkgPwotCQkJQVVYX0NIX0QgOiBBVVhfQ0hf
QzsKKwkJCUFVWF9DSF9VU0JDMSA6IEFVWF9DSF9DOwogCQlicmVhazsKIAljYXNlIERQX0FVWF9E
OgogCQlhdXhfY2ggPSAoSVNfREcxKGRldl9wcml2KSB8fCBJU19ST0NLRVRMQUtFKGRldl9wcml2
KSkgPwotCQkJQVVYX0NIX0UgOiBBVVhfQ0hfRDsKKwkJCUFVWF9DSF9VU0JDMiA6IEFVWF9DSF9E
OwogCQlicmVhazsKIAljYXNlIERQX0FVWF9FOgogCQlhdXhfY2ggPSBBVVhfQ0hfRTsKLS0gCjIu
MjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
