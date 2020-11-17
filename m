Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 289342B6DC6
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 19:51:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB8F86E03A;
	Tue, 17 Nov 2020 18:50:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB06F89FD4
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 18:50:52 +0000 (UTC)
IronPort-SDR: VH97hM8FL3fjcAIcewIyIsHsEmdXbDT1X4SwmvnMaF+OtpDHadMP5G0AvfsHLM6i+y5xlUxRdy
 J2SkCrBPM3Fg==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="168412293"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="168412293"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 10:50:51 -0800
IronPort-SDR: nNZeD//WI3U2JVfk7Lj5fnU4O0ouO2TWumCzAu/6PcT3QdB6sJYvtzHzWQiDhFI+UgESPXwOEQ
 2COiioBkKtLQ==
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="340996887"
Received: from ankithac-mobl1.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.254.101.215])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 10:50:50 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 10:50:21 -0800
Message-Id: <20201117185029.22078-14-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201117185029.22078-1-aditya.swarup@intel.com>
References: <20201117185029.22078-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/21] drm/i915/adl_s: Update combo PHY
 master/slave relationships
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
MTEgKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
b21ib19waHkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5
LmMKaW5kZXggZDVhZDYxZTQwODNlLi41NWQyZDJkOWVmYmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5LmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb21ib19waHkuYwpAQCAtMjQ2LDE0ICsyNDYsMjEgQEAg
c3RhdGljIGJvb2wgcGh5X2lzX21hc3RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsIGVudW0gcGh5IHBoeSkKIAkgKiBSS0wsREcxOgogCSAqICAgQShtYXN0ZXIpIC0+IEIoc2xh
dmUpCiAJICogICBDKG1hc3RlcikgLT4gRChzbGF2ZSkKKwkgKiBBREwtUzoKKwkgKiAgIEEobWFz
dGVyKSAtPiBCKHNsYXZlKSwgQyhzbGF2ZSkKKwkgKiAgIEQobWFzdGVyKSAtPiBFKHNsYXZlKQog
CSAqCiAJICogV2UgbXVzdCBzZXQgdGhlIElSRUZHRU4gYml0IGZvciBhbnkgUEhZIGFjdGluZyBh
cyBhIG1hc3RlcgogCSAqIHRvIGFub3RoZXIgUEhZLgogCSAqLwotCWlmICgoSVNfREcxKGRldl9w
cml2KSB8fCBJU19ST0NLRVRMQUtFKGRldl9wcml2KSkgJiYgcGh5ID09IFBIWV9DKQorCWlmIChw
aHkgPT0gUEhZX0EpCiAJCXJldHVybiB0cnVlOworCWVsc2UgaWYgKElTX0FMREVSTEFLRV9TKGRl
dl9wcml2KSkKKwkJcmV0dXJuIHBoeSA9PSBQSFlfRDsKKwllbHNlIGlmIChJU19ERzEoZGV2X3By
aXYpIHx8IElTX1JPQ0tFVExBS0UoZGV2X3ByaXYpKQorCQlyZXR1cm4gcGh5ID09IFBIWV9DOwog
Ci0JcmV0dXJuIHBoeSA9PSBQSFlfQTsKKwlyZXR1cm4gZmFsc2U7CiB9CiAKIHN0YXRpYyBib29s
IGljbF9jb21ib19waHlfdmVyaWZ5X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
