Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B23830507E
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 05:12:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45F5A6E4F8;
	Wed, 27 Jan 2021 04:12:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 057AC6E4F1
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 04:12:27 +0000 (UTC)
IronPort-SDR: 7msT6H1nWfNM2CLOarg4rgCatgXkVyxtyrWq3g6KLlcqgKCw5Qaqe7azYdyeyGV/tpvzCIYXUi
 MEQO9wTohqnw==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="167110807"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="167110807"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 20:12:26 -0800
IronPort-SDR: EZTjh2p4r6IEqmtVPSi6nyYbHCcInxbXmOEAH0wF4IVvs8Ui3SxTmky3la53baUEXwv9H6b8Kj
 pk+kV1rGN/RQ==
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="473006350"
Received: from njcaminx-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.9.202])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 20:12:26 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 20:11:51 -0800
Message-Id: <20210127041159.136409-2-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210127041159.136409-1-aditya.swarup@intel.com>
References: <20210127041159.136409-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/9] drm/i915/adl_s: Update PHY_MISC programming
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KCkFETC1TIHN3aXRj
aGVzIHVwIHdoaWNoIFBIWXMgYXJlIGNvbnNpZGVyZWQgYSBtYXN0ZXIgdG8gb3RoZXIgUEhZczsK
UEhZLUMgaXMgbm8gbG9uZ2VyIGEgbWFzdGVyLCBidXQgUEhZLUQgaXMgbm93LgoKQnNwZWM6IDQ5
MjkxCkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEltcmUgRGVhayA8aW1y
ZS5kZWFrQGludGVsLmNvbT4KQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBBZGl0eWEgU3dhcnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbWJvX3BoeS5jIHwg
MTIgKysrKysrKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAzIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y29tYm9fcGh5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbWJvX3Bo
eS5jCmluZGV4IGRkNDVjYmFmY2Y0Mi4uYzU1ODEzYzYxOTRhIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbWJvX3BoeS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5LmMKQEAgLTE4NywxMCArMTg3LDE2IEBA
IHN0YXRpYyBib29sIGhhc19waHlfbWlzYyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwg
ZW51bSBwaHkgcGh5KQogCSAqIFNvbWUgcGxhdGZvcm1zIG9ubHkgZXhwZWN0IFBIWV9NSVNDIHRv
IGJlIHByb2dyYW1tZWQgZm9yIFBIWS1BIGFuZAogCSAqIFBIWS1CIGFuZCBtYXkgbm90IGV2ZW4g
aGF2ZSBpbnN0YW5jZXMgb2YgdGhlIHJlZ2lzdGVyIGZvciB0aGUKIAkgKiBvdGhlciBjb21ibyBQ
SFkncy4KKwkgKgorCSAqIEFETC1TIHRlY2huaWNhbGx5IGhhcyB0aHJlZSBpbnN0YW5jZXMgb2Yg
UEhZX01JU0MsIGJ1dCBvbmx5IHJlcXVpcmVzCisJICogdGhhdCB3ZSBwcm9ncmFtIGl0IGZvciBQ
SFkgQS4KIAkgKi8KLQlpZiAoSVNfSlNMX0VITChpOTE1KSB8fAotCSAgICBJU19ST0NLRVRMQUtF
KGk5MTUpIHx8Ci0JICAgIElTX0RHMShpOTE1KSkKKworCWlmIChJU19BTERFUkxBS0VfUyhpOTE1
KSkKKwkJcmV0dXJuIHBoeSA9PSBQSFlfQTsKKwllbHNlIGlmIChJU19KU0xfRUhMKGk5MTUpIHx8
CisJCSBJU19ST0NLRVRMQUtFKGk5MTUpIHx8CisJCSBJU19ERzEoaTkxNSkpCiAJCXJldHVybiBw
aHkgPCBQSFlfQzsKIAogCXJldHVybiB0cnVlOwotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
