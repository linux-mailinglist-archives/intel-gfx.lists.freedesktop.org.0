Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE2BCAE13
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 20:21:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0F736EA40;
	Thu,  3 Oct 2019 18:21:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D71F6EA3F
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 18:21:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 11:21:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,253,1566889200"; d="scan'208";a="367126797"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by orsmga005.jf.intel.com with ESMTP; 03 Oct 2019 11:21:28 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Oct 2019 11:23:06 -0700
Message-Id: <20191003182310.1155-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20191003182310.1155-1-manasi.d.navare@intel.com>
References: <20191003182310.1155-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v6 2/6] drm/i915/display/icl: Enable TRANSCODER
 PORT SYNC for tiled displays across separate ports
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gY2FzZSBvZiB0aWxlZCBkaXNwbGF5cyB3aGVyZSBkaWZmZXJlbnQgdGlsZXMgYXJlIGRpc3Bs
YXllZCBhY3Jvc3MKZGlmZmVyZW50IHBvcnRzLCB3ZSBuZWVkIHRvIHN5bmNocm9uaXplIHRoZSB0
cmFuc2NvZGVycyBpbnZvbHZlZC4KVGhpcyBwYXRjaCBpbXBsZW1lbnRzIHRoZSB0cmFuc2NvZGVy
IHBvcnQgc3luYyBmZWF0dXJlIGZvcgpzeW5jaHJvbml6aW5nIG9uZSBtYXN0ZXIgdHJhbnNjb2Rl
ciB3aXRoIG9uZSBvciBtb3JlIHNsYXZlCnRyYW5zY29kZXJzLiBUaGlzIGlzIG9ubHkgZW5iYWxl
ZCBpbiBzbGF2ZSB0cmFuc2NvZGVyCmFuZCB0aGUgbWFzdGVyIHRyYW5zY29kZXIgaXMgdW5hd2Fy
ZSB0aGF0IGl0IGlzIG9wZXJhdGluZwppbiB0aGlzIG1vZGUuClRoaXMgaGFzIGJlZW4gdGVzdGVk
IHdpdGggdGlsZWQgZGlzcGxheSBjb25uZWN0ZWQgdG8gSUNMLgoKdjU6CiogQWRkIFRSQU5TQ09E
RVJfRCBjYXNlIGFuZCBNSVNTSU5HX0NBU0UgKE1hYXJ0ZW4pCnY0OgpSZWJhc2UKdjM6CiogQ2hl
Y2sgb2YgRFBfTVNUIG1vdmVkIHRvIGF0b21pY19jaGVjayAoTWFhcnRlbikKdjI6CiogRG8gbm90
IHVzZSBSTVcsIGp1c3Qgd3JpdGUgdG8gdGhlIHJlZ2lzdGVyIGluIGNvbW1pdCAoSmFuaSBOKQoK
Q2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1hYXJ0ZW4gTGFua2hv
cnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxt
YXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGlu
dGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3Jz
dEBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgfCA0NiArKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDQ2
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCmluZGV4IDU2N2ViMjU3NDI5NS4uOGFlNjE3ZDNmMDMwIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtNDQyNiw2ICs0NDI2LDQ5IEBA
IHN0YXRpYyB2b2lkIGljbF9zZXRfcGlwZV9jaGlja2VuKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
KQogCUk5MTVfV1JJVEUoUElQRV9DSElDS0VOKHBpcGUpLCB0bXApOwogfQogCitzdGF0aWMgdm9p
ZCBpY2xfZW5hYmxlX3RyYW5zX3BvcnRfc3luYyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKK3sKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2Ny
dGMoY3J0Y19zdGF0ZS0+YmFzZS5jcnRjKTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKKwl1MzIgdHJhbnNfZGRpX2Z1bmNfY3Rs
Ml92YWw7CisJdTggbWFzdGVyX3NlbGVjdDsKKworCS8qCisJICogQ29uZmlndXJlIHRoZSBtYXN0
ZXIgc2VsZWN0IGFuZCBlbmFibGUgVHJhbnNjb2RlciBQb3J0IFN5bmMgZm9yCisJICogU2xhdmUg
Q1JUQ3MgdHJhbnNjb2Rlci4KKwkgKi8KKwlpZiAoY3J0Y19zdGF0ZS0+bWFzdGVyX3RyYW5zY29k
ZXIgPT0gSU5WQUxJRF9UUkFOU0NPREVSKQorCQlyZXR1cm47CisKKwlzd2l0Y2ggKGNydGNfc3Rh
dGUtPm1hc3Rlcl90cmFuc2NvZGVyKSB7CisJY2FzZSBUUkFOU0NPREVSX0E6CisJCW1hc3Rlcl9z
ZWxlY3QgPSAxOworCQlicmVhazsKKwljYXNlIFRSQU5TQ09ERVJfQjoKKwkJbWFzdGVyX3NlbGVj
dCA9IDI7CisJCWJyZWFrOworCWNhc2UgVFJBTlNDT0RFUl9DOgorCQltYXN0ZXJfc2VsZWN0ID0g
MzsKKwkJYnJlYWs7CisJY2FzZSBUUkFOU0NPREVSX0Q6CisJCW1hc3Rlcl9zZWxlY3QgPSA0Owor
CQlicmVhazsKKwljYXNlIFRSQU5TQ09ERVJfRURQOgorCWRlZmF1bHQ6CisJCU1JU1NJTkdfQ0FT
RShjcnRjX3N0YXRlLT5tYXN0ZXJfdHJhbnNjb2Rlcik7CisJCW1hc3Rlcl9zZWxlY3QgPSAwOwor
CX0KKwkvKiBTZXQgdGhlIG1hc3RlciBzZWxlY3QgYml0cyBmb3IgVHJhbmFzY29kZXIgUG9ydCBT
eW5jICovCisJdHJhbnNfZGRpX2Z1bmNfY3RsMl92YWwgPSAoUE9SVF9TWU5DX01PREVfTUFTVEVS
X1NFTEVDVChtYXN0ZXJfc2VsZWN0KSAmCisJCQkJICAgUE9SVF9TWU5DX01PREVfTUFTVEVSX1NF
TEVDVF9NQVNLKSA8PAorCQlQT1JUX1NZTkNfTU9ERV9NQVNURVJfU0VMRUNUX1NISUZUOworCS8q
IEVuYWJsZSBUcmFuc2NvZGVyIFBvcnQgU3luYyAqLworCXRyYW5zX2RkaV9mdW5jX2N0bDJfdmFs
IHw9IFBPUlRfU1lOQ19NT0RFX0VOQUJMRTsKKworCUk5MTVfV1JJVEUoVFJBTlNfRERJX0ZVTkNf
Q1RMMihjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlciksCisJCSAgIHRyYW5zX2RkaV9mdW5jX2N0
bDJfdmFsKTsKK30KKwogc3RhdGljIHZvaWQgaW50ZWxfdXBkYXRlX3BpcGVfY29uZmlnKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwKIAkJCQkgICAgIGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkKIHsKQEAgLTY0OTQsNiAr
NjUzNyw5IEBAIHN0YXRpYyB2b2lkIGhhc3dlbGxfY3J0Y19lbmFibGUoc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKnBpcGVfY29uZmlnLAogCWlmICghdHJhbnNjb2Rlcl9pc19kc2koY3B1X3RyYW5z
Y29kZXIpKQogCQlpbnRlbF9zZXRfcGlwZV90aW1pbmdzKHBpcGVfY29uZmlnKTsKIAorCWlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQorCQlpY2xfZW5hYmxlX3RyYW5zX3BvcnRfc3luYyhw
aXBlX2NvbmZpZyk7CisKIAlpbnRlbF9zZXRfcGlwZV9zcmNfc2l6ZShwaXBlX2NvbmZpZyk7CiAK
IAlpZiAoY3B1X3RyYW5zY29kZXIgIT0gVFJBTlNDT0RFUl9FRFAgJiYKLS0gCjIuMTkuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
