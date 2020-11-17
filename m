Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 615332B6DD0
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 19:51:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4B196E049;
	Tue, 17 Nov 2020 18:51:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5127C89FD4
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 18:50:53 +0000 (UTC)
IronPort-SDR: LRBulascceZ/YCkb+rVQAa0CYn0qZKifpW9KhQBQaOyHfxFVFvFdfvUpom8ASA7d8Oq/RWJkZI
 dUjEJ+9CnEfg==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="168412294"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="168412294"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 10:50:51 -0800
IronPort-SDR: 0bcEKVHxQUgk0v2kwIi1MROCAVEy32EDefnP05sNEyoPvZZWQYshI/Q+QkCmxsHOufHMdG9PF4
 13rmqBXx5XKA==
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="340996896"
Received: from ankithac-mobl1.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.254.101.215])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 10:50:51 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 10:50:22 -0800
Message-Id: <20201117185029.22078-15-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201117185029.22078-1-aditya.swarup@intel.com>
References: <20201117185029.22078-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/21] drm/i915/adl_s: Update PHY_MISC
 programming
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
eS5jCmluZGV4IDU1ZDJkMmQ5ZWZiYi4uNWE3MWFkYmQ3YTRkIDEwMDY0NAotLS0gYS9kcml2ZXJz
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
