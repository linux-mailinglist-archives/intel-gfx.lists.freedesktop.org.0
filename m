Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FE72B6DBD
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 19:50:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDA0989F31;
	Tue, 17 Nov 2020 18:50:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A282F89F0A
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 18:50:45 +0000 (UTC)
IronPort-SDR: zeGDL4cqsg2Kacc7W6RXwZNk31gDTT/sFqRXUrD3MlyehZff0kRvpHEQapJ0lTsppc6bPvau2p
 JociwkIjE+qA==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="150833836"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="150833836"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 10:50:45 -0800
IronPort-SDR: bAGEdNeveHEBtAljGGJQiDkxdOZWvD62elNAM/ylE5uQ1EQ3Ymv92y46TJCQjf25JCHDEUU5Pd
 c357ykeOtzSA==
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="340996822"
Received: from ankithac-mobl1.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.254.101.215])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 10:50:44 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 10:50:10 -0800
Message-Id: <20201117185029.22078-3-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201117185029.22078-1-aditya.swarup@intel.com>
References: <20201117185029.22078-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/21] drm/i915/tgl: Fix macros for TGL SOC
 based WA
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

Rml4IG1hY3JvcyBmb3IgYXBwbHlpbmcgVEdMIFNPQyBXQXMgYnkgdXNpbmcgSU5URUxfUkVWSUQo
KQphcyBpbmRleCB0byBmZXRjaCBjb3JyZWN0IHJldmlzaW9uIG9mZnNldCBpbiBUR0wgR1QvRElT
UCBzdGVwcGluZwp0YWJsZS4KCkFsc28sIHJlbW92ZSByZWR1bmRhbnQgbWFjcm9zIGFuZCBzaW1w
bGlmeSBpdCB0byB1c2UgR1QgYW5kIERJU1AKbWFjcm9zIGZvciBnZXR0aW5nIGFwcGxpY2FibGUg
c3RlcHBpbmcgZm9yIFRHTC4KCkZpeGVzOiAoImRybS9pOTE1L3RnbDogRml4IHN0ZXBwaW5nIFdB
IG1hdGNoaW5nIikKQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KQ2M6IEx1Y2Fz
IERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFkaXR5YSBTd2FydXAgPGFkaXR5YS5zd2Fy
dXBAaW50ZWwuY29tPgotLS0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93
ZXIuYyAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
ICAgICAgfCAgNCArKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0
ZS5jICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMu
YyAgIHwgMjAgKysrKysrKystLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aCAgICAgICAgICAgICAgIHwgMjQgKysrKysrKy0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAgICAgIHwgIDIgKy0KIDYgZmlsZXMgY2hhbmdlZCwg
MjQgaW5zZXJ0aW9ucygrKSwgMzAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwppbmRleCBmZTJkOTBiYmE1MzYu
LjA2YzAzNmUyMDkyYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3Bvd2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3Bvd2VyLmMKQEAgLTUyODMsNyArNTI4Myw3IEBAIHN0YXRpYyB2b2lkIHRn
bF9id19idWRkeV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlpbnQg
Y29uZmlnLCBpOwogCiAJaWYgKElTX0RHMV9SRVZJRChkZXZfcHJpdiwgREcxX1JFVklEX0EwLCBE
RzFfUkVWSURfQTApIHx8Ci0JICAgIElTX1RHTF9ESVNQX1JFVklEKGRldl9wcml2LCBUR0xfUkVW
SURfQTAsIFRHTF9SRVZJRF9CMCkpCisJICAgIElTX1RHTF9ESVNQX1JFVklEKGRldl9wcml2LCBS
RVZJRF9BMCwgUkVWSURfQjApKQogCQkvKiBXYV8xNDA5NzY3MTA4OnRnbCxkZzEgKi8KIAkJdGFi
bGUgPSB3YV8xNDA5NzY3MTA4X2J1ZGR5X3BhZ2VfbWFza3M7CiAJZWxzZQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKaW5kZXggYjM2MzFiNzIyZGUzLi5jMDU3YTAzYjJl
ZDQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwpAQCAtNTUwLDcg
KzU1MCw3IEBAIHN0YXRpYyB2b2lkIGhzd19hY3RpdmF0ZV9wc3IyKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHApCiAKIAlpZiAoZGV2X3ByaXYtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkKSB7
CiAJCS8qIFdBIDE0MDgzMzA4NDcgKi8KLQkJaWYgKElTX1RHTF9ESVNQX1JFVklEKGRldl9wcml2
LCBUR0xfUkVWSURfQTAsIFRHTF9SRVZJRF9BMCkgfHwKKwkJaWYgKElTX1RHTF9ESVNQX1JFVklE
KGRldl9wcml2LCBSRVZJRF9BMCwgUkVWSURfQTApIHx8CiAJCSAgICBJU19SS0xfUkVWSUQoZGV2
X3ByaXYsIFJLTF9SRVZJRF9BMCwgUktMX1JFVklEX0EwKSkKIAkJCWludGVsX2RlX3JtdyhkZXZf
cHJpdiwgQ0hJQ0tFTl9QQVIxXzEsCiAJCQkJICAgICBESVNfUkFNX0JZUEFTU19QU1IyX01BTl9U
UkFDSywKQEAgLTExMDIsNyArMTEwMiw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9kaXNhYmxl
X2xvY2tlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCiAJLyogV0EgMTQwODMzMDg0NyAq
LwogCWlmIChkZXZfcHJpdi0+cHNyLnBzcjJfc2VsX2ZldGNoX2VuYWJsZWQgJiYKLQkgICAgKElT
X1RHTF9ESVNQX1JFVklEKGRldl9wcml2LCBUR0xfUkVWSURfQTAsIFRHTF9SRVZJRF9BMCkgfHwK
KwkgICAgKElTX1RHTF9ESVNQX1JFVklEKGRldl9wcml2LCBSRVZJRF9BMCwgUkVWSURfQTApIHx8
CiAJICAgICBJU19SS0xfUkVWSUQoZGV2X3ByaXYsIFJLTF9SRVZJRF9BMCwgUktMX1JFVklEX0Ew
KSkpCiAJCWludGVsX2RlX3JtdyhkZXZfcHJpdiwgQ0hJQ0tFTl9QQVIxXzEsCiAJCQkgICAgIERJ
U19SQU1fQllQQVNTX1BTUjJfTUFOX1RSQUNLLCAwKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Nwcml0ZS5jCmluZGV4IGEzYWI0NDY5NDExOC4uZjdkYTRhNTYwNTRlIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKQEAgLTMwMjIs
NyArMzAyMiw3IEBAIHN0YXRpYyBib29sIGdlbjEyX3BsYW5lX3N1cHBvcnRzX21jX2NjcyhzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiB7CiAJLyogV2FfMTQwMTA0NzcwMDg6dGds
W2EwLi5jMF0scmtsW2FsbF0sZGcxW2FsbF0gKi8KIAlpZiAoSVNfREcxKGRldl9wcml2KSB8fCBJ
U19ST0NLRVRMQUtFKGRldl9wcml2KSB8fAotCSAgICBJU19UR0xfRElTUF9SRVZJRChkZXZfcHJp
diwgVEdMX1JFVklEX0EwLCBUR0xfUkVWSURfQzApKQorCSAgICBJU19UR0xfRElTUF9SRVZJRChk
ZXZfcHJpdiwgUkVWSURfQTAsIFJFVklEX0MwKSkKIAkJcmV0dXJuIGZhbHNlOwogCiAJcmV0dXJu
IHBsYW5lX2lkIDwgUExBTkVfU1BSSVRFNDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jCmluZGV4IGE4MjU1NGJhYTZhYy4uZDc1NjE1NWQ4MmVhIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKQEAgLTcxLDE2ICs3MSwx
NiBAQCBjb25zdCBzdHJ1Y3QgaTkxNV9yZXZfc3RlcHBpbmdzIGtibF9yZXZpZHNbXSA9IHsKIH07
CiAKIGNvbnN0IHN0cnVjdCBpOTE1X3Jldl9zdGVwcGluZ3MgdGdsX3V5X3Jldmlkc1tdID0gewot
CVswXSA9IHsgLmd0X3N0ZXBwaW5nID0gVEdMX1JFVklEX0EwLCAuZGlzcF9zdGVwcGluZyA9IFRH
TF9SRVZJRF9BMCB9LAotCVsxXSA9IHsgLmd0X3N0ZXBwaW5nID0gVEdMX1JFVklEX0IwLCAuZGlz
cF9zdGVwcGluZyA9IFRHTF9SRVZJRF9DMCB9LAotCVsyXSA9IHsgLmd0X3N0ZXBwaW5nID0gVEdM
X1JFVklEX0IxLCAuZGlzcF9zdGVwcGluZyA9IFRHTF9SRVZJRF9DMCB9LAotCVszXSA9IHsgLmd0
X3N0ZXBwaW5nID0gVEdMX1JFVklEX0MwLCAuZGlzcF9zdGVwcGluZyA9IFRHTF9SRVZJRF9EMCB9
LAorCVswXSA9IHsgLmd0X3N0ZXBwaW5nID0gUkVWSURfQTAsIC5kaXNwX3N0ZXBwaW5nID0gUkVW
SURfQTAgfSwKKwlbMV0gPSB7IC5ndF9zdGVwcGluZyA9IFJFVklEX0IwLCAuZGlzcF9zdGVwcGlu
ZyA9IFJFVklEX0MwIH0sCisJWzJdID0geyAuZ3Rfc3RlcHBpbmcgPSBSRVZJRF9CMSwgLmRpc3Bf
c3RlcHBpbmcgPSBSRVZJRF9DMCB9LAorCVszXSA9IHsgLmd0X3N0ZXBwaW5nID0gUkVWSURfQzAs
IC5kaXNwX3N0ZXBwaW5nID0gUkVWSURfRDAgfSwKIH07CiAKIC8qIFNhbWUgR1Qgc3RlcHBpbmcg
YmV0d2VlbiB0Z2xfdXlfcmV2aWRzIGFuZCB0Z2xfcmV2aWRzIGRvbid0IG1lYW4gdGhlIHNhbWUg
SFcgKi8KIGNvbnN0IHN0cnVjdCBpOTE1X3Jldl9zdGVwcGluZ3MgdGdsX3Jldmlkc1tdID0gewot
CVswXSA9IHsgLmd0X3N0ZXBwaW5nID0gVEdMX1JFVklEX0EwLCAuZGlzcF9zdGVwcGluZyA9IFRH
TF9SRVZJRF9CMCB9LAotCVsxXSA9IHsgLmd0X3N0ZXBwaW5nID0gVEdMX1JFVklEX0IwLCAuZGlz
cF9zdGVwcGluZyA9IFRHTF9SRVZJRF9EMCB9LAorCVswXSA9IHsgLmd0X3N0ZXBwaW5nID0gUkVW
SURfQTAsIC5kaXNwX3N0ZXBwaW5nID0gUkVWSURfQjAgfSwKKwlbMV0gPSB7IC5ndF9zdGVwcGlu
ZyA9IFJFVklEX0IwLCAuZGlzcF9zdGVwcGluZyA9IFJFVklEX0QwIH0sCiB9OwogCiBzdGF0aWMg
dm9pZCB3YV9pbml0X3N0YXJ0KHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwgY29uc3QgY2hhciAq
bmFtZSwgY29uc3QgY2hhciAqZW5naW5lX25hbWUpCkBAIC0xMjUwLDEzICsxMjUwLDEzIEBAIHRn
bF9ndF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBzdHJ1
Y3QgaTkxNV93YV9saXN0ICp3YWwpCiAJZ2VuMTJfZ3Rfd29ya2Fyb3VuZHNfaW5pdChpOTE1LCB3
YWwpOwogCiAJLyogV2FfMTQwOTQyMDYwNDp0Z2wgKi8KLQlpZiAoSVNfVEdMX1VZX0dUX1JFVklE
KGk5MTUsIFRHTF9SRVZJRF9BMCwgVEdMX1JFVklEX0EwKSkKKwlpZiAoSVNfVEdMX0dUX1JFVklE
KGk5MTUsIFJFVklEX0EwLCBSRVZJRF9BMCkpCiAJCXdhX3dyaXRlX29yKHdhbCwKIAkJCSAgICBT
VUJTTElDRV9VTklUX0xFVkVMX0NMS0dBVEUyLAogCQkJICAgIENQU1NVTklUX0NMS0dBVEVfRElT
KTsKIAogCS8qIFdhXzE2MDcwODcwNTY6dGdsIGFsc28ga25vdyBhcyBCVUc6MTQwOTE4MDMzOCAq
LwotCWlmIChJU19UR0xfVVlfR1RfUkVWSUQoaTkxNSwgVEdMX1JFVklEX0EwLCBUR0xfUkVWSURf
QTApKQorCWlmIChJU19UR0xfR1RfUkVWSUQoaTkxNSwgUkVWSURfQTAsIFJFVklEX0EwKSkKIAkJ
d2Ffd3JpdGVfb3Iod2FsLAogCQkJICAgIFNMSUNFX1VOSVRfTEVWRUxfQ0xLR0FURSwKIAkJCSAg
ICBMM19DTEtHQVRFX0RJUyB8IEwzX0NSMlhfQ0xLR0FURV9ESVMpOwpAQCAtMTczNCw3ICsxNzM0
LDcgQEAgcmNzX2VuZ2luZV93YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwg
c3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gZW5naW5lLT5pOTE1OwogCiAJaWYgKElTX0RHMV9SRVZJRChpOTE1LCBERzFfUkVWSURfQTAs
IERHMV9SRVZJRF9BMCkgfHwKLQkgICAgSVNfVEdMX1VZX0dUX1JFVklEKGk5MTUsIFRHTF9SRVZJ
RF9BMCwgVEdMX1JFVklEX0EwKSkgeworCSAgICBJU19UR0xfR1RfUkVWSUQoaTkxNSwgUkVWSURf
QTAsIFJFVklEX0EwKSkgewogCQkvKgogCQkgKiBXYV8xNjA3MTM4MzM2OnRnbFthMF0sZGcxW2Ew
XQogCQkgKiBXYV8xNjA3MDYzOTg4OnRnbFthMF0sZGcxW2EwXQpAQCAtMTc0NCw3ICsxNzQ0LDcg
QEAgcmNzX2VuZ2luZV93YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgc3Ry
dWN0IGk5MTVfd2FfbGlzdCAqd2FsKQogCQkJICAgIEdFTjEyX0RJU0FCTEVfUE9TSF9CVVNZX0ZG
X0RPUF9DRyk7CiAJfQogCi0JaWYgKElTX1RHTF9VWV9HVF9SRVZJRChpOTE1LCBUR0xfUkVWSURf
QTAsIFRHTF9SRVZJRF9BMCkpIHsKKwlpZiAoSVNfVEdMX0dUX1JFVklEKGk5MTUsIFJFVklEX0Ew
LCBSRVZJRF9BMCkpIHsKIAkJLyoKIAkJICogV2FfMTYwNjY3OTEwMzp0Z2wKIAkJICogKHNlZSBh
bHNvIFdhXzE2MDY2ODIxNjY6aWNsKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggMTViZThk
ZWJhZTU0Li40Mzc5MTZhYWNhYTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtMTU2NSwx
MSArMTU2NSwxMSBAQCBleHRlcm4gY29uc3Qgc3RydWN0IGk5MTVfcmV2X3N0ZXBwaW5ncyBrYmxf
cmV2aWRzW107CiAJKElTX0pTTF9FSEwocCkgJiYgSVNfUkVWSUQocCwgc2luY2UsIHVudGlsKSkK
IAogZW51bSB7Ci0JVEdMX1JFVklEX0EwLAotCVRHTF9SRVZJRF9CMCwKLQlUR0xfUkVWSURfQjEs
Ci0JVEdMX1JFVklEX0MwLAotCVRHTF9SRVZJRF9EMCwKKwlSRVZJRF9BMCwKKwlSRVZJRF9CMCwK
KwlSRVZJRF9CMSwKKwlSRVZJRF9DMCwKKwlSRVZJRF9EMCwKIH07CiAKIGV4dGVybiBjb25zdCBz
dHJ1Y3QgaTkxNV9yZXZfc3RlcHBpbmdzIHRnbF91eV9yZXZpZHNbXTsKQEAgLTE1NzksOSArMTU3
OSw5IEBAIHN0YXRpYyBpbmxpbmUgY29uc3Qgc3RydWN0IGk5MTVfcmV2X3N0ZXBwaW5ncyAqCiB0
Z2xfcmV2aWRzX2dldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJaWYg
KElTX1RHTF9VKGRldl9wcml2KSB8fCBJU19UR0xfWShkZXZfcHJpdikpCi0JCXJldHVybiB0Z2xf
dXlfcmV2aWRzOworCQlyZXR1cm4gdGdsX3V5X3JldmlkcyArIElOVEVMX1JFVklEKGRldl9wcml2
KTsKIAllbHNlCi0JCXJldHVybiB0Z2xfcmV2aWRzOworCQlyZXR1cm4gdGdsX3JldmlkcyArIElO
VEVMX1JFVklEKGRldl9wcml2KTsKIH0KIAogI2RlZmluZSBJU19UR0xfRElTUF9SRVZJRChwLCBz
aW5jZSwgdW50aWwpIFwKQEAgLTE1ODksMTYgKzE1ODksMTAgQEAgdGdsX3Jldmlkc19nZXQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCSB0Z2xfcmV2aWRzX2dldChwKS0+ZGlz
cF9zdGVwcGluZyA+PSAoc2luY2UpICYmIFwKIAkgdGdsX3Jldmlkc19nZXQocCktPmRpc3Bfc3Rl
cHBpbmcgPD0gKHVudGlsKSkKIAotI2RlZmluZSBJU19UR0xfVVlfR1RfUkVWSUQocCwgc2luY2Us
IHVudGlsKSBcCi0JKChJU19UR0xfVShwKSB8fCBJU19UR0xfWShwKSkgJiYgXAotCSB0Z2xfdXlf
cmV2aWRzLT5ndF9zdGVwcGluZyA+PSAoc2luY2UpICYmIFwKLQkgdGdsX3V5X3Jldmlkcy0+Z3Rf
c3RlcHBpbmcgPD0gKHVudGlsKSkKLQogI2RlZmluZSBJU19UR0xfR1RfUkVWSUQocCwgc2luY2Us
IHVudGlsKSBcCiAJKElTX1RJR0VSTEFLRShwKSAmJiBcCi0JICEoSVNfVEdMX1UocCkgfHwgSVNf
VEdMX1kocCkpICYmIFwKLQkgdGdsX3Jldmlkcy0+Z3Rfc3RlcHBpbmcgPj0gKHNpbmNlKSAmJiBc
Ci0JIHRnbF9yZXZpZHMtPmd0X3N0ZXBwaW5nIDw9ICh1bnRpbCkpCisJIHRnbF9yZXZpZHNfZ2V0
KHApLT5ndF9zdGVwcGluZyA+PSAoc2luY2UpICYmIFwKKwkgdGdsX3Jldmlkc19nZXQocCktPmd0
X3N0ZXBwaW5nIDw9ICh1bnRpbCkpCiAKICNkZWZpbmUgUktMX1JFVklEX0EwCQkweDAKICNkZWZp
bmUgUktMX1JFVklEX0IwCQkweDEKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IGEyMGI1MDUx
ZjE4Yy4uNjk4NDBhYTBkNGRiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTcxMTAsNyAr
NzExMCw3IEBAIHN0YXRpYyB2b2lkIHRnbF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCSAgIElMS19EUEZDX0NISUNLRU5fQ09NUF9EVU1NWV9Q
SVhFTCk7CiAKIAkvKiBXYV8xNDA5ODI1Mzc2OnRnbCAocHJlLXByb2QpKi8KLQlpZiAoSVNfVEdM
X0RJU1BfUkVWSUQoZGV2X3ByaXYsIFRHTF9SRVZJRF9BMCwgVEdMX1JFVklEX0IxKSkKKwlpZiAo
SVNfVEdMX0RJU1BfUkVWSUQoZGV2X3ByaXYsIFJFVklEX0EwLCBSRVZJRF9CMSkpCiAJCUk5MTVf
V1JJVEUoR0VOOV9DTEtHQVRFX0RJU18zLCBJOTE1X1JFQUQoR0VOOV9DTEtHQVRFX0RJU18zKSB8
CiAJCQkgICBUR0xfVlJIX0dBVElOR19ESVMpOwogCi0tIAoyLjI3LjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
