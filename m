Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C601C7199
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 15:24:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96A6989E26;
	Wed,  6 May 2020 13:23:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B1CE89E26
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 13:23:56 +0000 (UTC)
IronPort-SDR: pr7aol0JVDYzFurqAnh0XpiksCNIYCpqhoMzhxYDy5rFFId5T8I1dxDjexi5f/ya19ViP4I6vu
 tMlP/Qb+9EEw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 06:23:56 -0700
IronPort-SDR: lIl9p0fXwHxEGbGyH7ROqKqR9q88x1xlGBJu04QTvXqNtg2hRm42zjtnC5kr1DG8TlqoRxXlZD
 tZJAQSCh9GDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,359,1583222400"; d="scan'208";a="461436209"
Received: from unknown (HELO amanna.iind.intel.com) ([10.223.74.53])
 by fmsmga005.fm.intel.com with ESMTP; 06 May 2020 06:23:53 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 May 2020 18:41:12 +0530
Message-Id: <20200506131112.19581-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5] drm/i915/dsb: Pre allocate and late cleanup
 of cmd buffer
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
Cc: Jani Nikula <jani.nikula@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHJlLWFsbG9jYXRlIGNvbW1hbmQgYnVmZmVyIGluIGF0b21pY19jb21taXQgdXNpbmcgaW50ZWxf
ZHNiX3ByZXBhcmUKZnVuY3Rpb24gd2hpY2ggYWxzbyBpbmNsdWRlcyBwaW5uaW5nIGFuZCBtYXAg
aW4gY3B1IGRvbWFpbi4KCk5vIGNoYW5nZSBpcyBkc2Igd3JpdGUvY29tbWl0IGZ1bmN0aW9ucy4K
Ck5vdyBkc2IgZ2V0L3B1dCBmdW5jdGlvbiBpcyByZWZhY3RvcmVkIGFuZCBjdXJyZW50bHkgdXNl
ZCBvbmx5IGZvcgpyZWZlcmVuY2UgY291bnRpbmcuIEJlbG93IGRzYiBhcGkgYWRkZWQgdG8gZG8g
cmVzcGVjdGl2ZSBqb2IKbWVudGlvbmVkIGJlbG93LgoKaW50ZWxfZHNiX3ByZXBhcmUgLSBBbGxv
Y2F0ZSwgcGluIGFuZCBtYXAgdGhlIGJ1ZmZlci4KaW50ZWxfZHNiX2NsZWFudXAgLSBVbnBpbiBh
bmQgcmVsZWFzZSB0aGUgZ2VtIG9iamVjdC4KClJGQzogSW5pdGlhbCBwYXRjaCBmb3IgZGVzaWdu
IHJldmlldy4KdjI6IGluY2x1ZGVkIF9pbml0KCkgcGFydCBpbiBfcHJlcGFyZSgpLiBbRGFuaWVs
LCBWaWxsZV0KdjM6IGRzYl9jbGVhbnVwIGNhbGxlZCBhZnRlciBjbGVhbnVwX3BsYW5lcy4gW0Rh
bmllbF0KdjQ6IGRzYiBzdHJ1Y3R1cmUgaXMgbW92ZWQgdG8gaW50ZWxfY3J0Y19zdGF0ZSBmcm9t
IGludGVsX2NydGMuIFtNYWFydGVuXQp2NTogZHNiIGdldC9wdXQvcmVmLWNvdW50IG1lY2hhbmlz
bSByZW1vdmVkLiBbTWFhcnRlbl0KCkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5r
aG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpBY2tlZC1ieTogRGFu
aWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KU2lnbmVkLW9mZi1ieTogQW5pbWVz
aCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jICAgIHwgIDI3ICsrLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgIDYwICsrKystCiAuLi4vZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgIDYgKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgICAgICB8IDIwNyArKysrKysrKystLS0tLS0tLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmggICAgICB8ICAgOCArLQogNSBm
aWxlcyBjaGFuZ2VkLCAxNzggaW5zZXJ0aW9ucygrKSwgMTMwIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwppbmRleCA5OGVjZTljZDdjZGQu
LmRiYTgyMDEzNjEwNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jb2xvci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29s
b3IuYwpAQCAtNzE3LDcgKzcxNyw4IEBAIHN0YXRpYyB2b2lkIGJkd19sb2FkX2x1dF8xMChzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YywKIHN0YXRpYyB2b2lkIGl2Yl9sb2FkX2x1dF9leHRfbWF4KHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwotCXN0cnVjdCBpbnRlbF9kc2IgKmRzYiA9
IGludGVsX2RzYl9nZXQoY3J0Yyk7CisJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUgPSB0b19pbnRlbF9jcnRjX3N0YXRlKGNydGMtPmJhc2Uuc3RhdGUpOworCXN0cnVjdCBpbnRl
bF9kc2IgKmRzYiA9IChzdHJ1Y3QgaW50ZWxfZHNiICopJmNydGNfc3RhdGUtPmRzYjsKIAllbnVt
IHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7CiAKIAkvKiBQcm9ncmFtIHRoZSBtYXggcmVnaXN0ZXIg
dG8gY2xhbXAgdmFsdWVzID4gMS4wLiAqLwpAQCAtNzM4LDggKzczOSw2IEBAIHN0YXRpYyB2b2lk
IGl2Yl9sb2FkX2x1dF9leHRfbWF4KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogCQlpbnRlbF9k
c2JfcmVnX3dyaXRlKGRzYiwgUFJFQ19QQUxfRVhUMl9HQ19NQVgocGlwZSwgMiksCiAJCQkJICAg
IDEgPDwgMTYpOwogCX0KLQotCWludGVsX2RzYl9wdXQoZHNiKTsKIH0KIAogc3RhdGljIHZvaWQg
aXZiX2xvYWRfbHV0cyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkK
QEAgLTkwMCwxNCArODk5LDEzIEBAIGljbF9sb2FkX2djbWF4KGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCSAgICAgICBjb25zdCBzdHJ1Y3QgZHJtX2NvbG9yX2x1
dCAqY29sb3IpCiB7CiAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNy
dGNfc3RhdGUtPnVhcGkuY3J0Yyk7Ci0Jc3RydWN0IGludGVsX2RzYiAqZHNiID0gaW50ZWxfZHNi
X2dldChjcnRjKTsKKwlzdHJ1Y3QgaW50ZWxfZHNiICpkc2IgPSAoc3RydWN0IGludGVsX2RzYiAq
KSZjcnRjX3N0YXRlLT5kc2I7CiAJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwogCiAJLyog
RklYTUUgTFVUIGVudHJpZXMgYXJlIDE2IGJpdCBvbmx5LCBzbyB3ZSBjYW4gcHJvZyAweEZGRkYg
bWF4ICovCiAJaW50ZWxfZHNiX3JlZ193cml0ZShkc2IsIFBSRUNfUEFMX0dDX01BWChwaXBlLCAw
KSwgY29sb3ItPnJlZCk7CiAJaW50ZWxfZHNiX3JlZ193cml0ZShkc2IsIFBSRUNfUEFMX0dDX01B
WChwaXBlLCAxKSwgY29sb3ItPmdyZWVuKTsKIAlpbnRlbF9kc2JfcmVnX3dyaXRlKGRzYiwgUFJF
Q19QQUxfR0NfTUFYKHBpcGUsIDIpLCBjb2xvci0+Ymx1ZSk7Ci0JaW50ZWxfZHNiX3B1dChkc2Ip
OwogfQogCiBzdGF0aWMgdm9pZApAQCAtOTE2LDcgKzkxNCw3IEBAIGljbF9wcm9ncmFtX2dhbW1h
X3N1cGVyZmluZV9zZWdtZW50KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQogCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRl
LT51YXBpLmNydGMpOwogCWNvbnN0IHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYiA9IGNy
dGNfc3RhdGUtPmh3LmdhbW1hX2x1dDsKIAljb25zdCBzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqbHV0
ID0gYmxvYi0+ZGF0YTsKLQlzdHJ1Y3QgaW50ZWxfZHNiICpkc2IgPSBpbnRlbF9kc2JfZ2V0KGNy
dGMpOworCXN0cnVjdCBpbnRlbF9kc2IgKmRzYiA9IChzdHJ1Y3QgaW50ZWxfZHNiICopJmNydGNf
c3RhdGUtPmRzYjsKIAllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7CiAJaW50IGk7CiAKQEAg
LTkzOCw4ICs5MzYsNiBAQCBpY2xfcHJvZ3JhbV9nYW1tYV9zdXBlcmZpbmVfc2VnbWVudChjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAkJaW50ZWxfZHNiX2luZGV4
ZWRfcmVnX3dyaXRlKGRzYiwgUFJFQ19QQUxfTVVMVElfU0VHX0RBVEEocGlwZSksCiAJCQkJCSAg
ICBpbGtfbHV0XzEycDRfdWR3KGVudHJ5KSk7CiAJfQotCi0JaW50ZWxfZHNiX3B1dChkc2IpOwog
fQogCiBzdGF0aWMgdm9pZApAQCAtOTQ5LDcgKzk0NSw3IEBAIGljbF9wcm9ncmFtX2dhbW1hX211
bHRpX3NlZ21lbnQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJ
Y29uc3Qgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpibG9iID0gY3J0Y19zdGF0ZS0+aHcuZ2Ft
bWFfbHV0OwogCWNvbnN0IHN0cnVjdCBkcm1fY29sb3JfbHV0ICpsdXQgPSBibG9iLT5kYXRhOwog
CWNvbnN0IHN0cnVjdCBkcm1fY29sb3JfbHV0ICplbnRyeTsKLQlzdHJ1Y3QgaW50ZWxfZHNiICpk
c2IgPSBpbnRlbF9kc2JfZ2V0KGNydGMpOworCXN0cnVjdCBpbnRlbF9kc2IgKmRzYiA9IChzdHJ1
Y3QgaW50ZWxfZHNiICopJmNydGNfc3RhdGUtPmRzYjsKIAllbnVtIHBpcGUgcGlwZSA9IGNydGMt
PnBpcGU7CiAJaW50IGk7CiAKQEAgLTk5NiwxNCArOTkyLDIyIEBAIGljbF9wcm9ncmFtX2dhbW1h
X211bHRpX3NlZ21lbnQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
CiAJZW50cnkgPSAmbHV0WzI1NiAqIDggKiAxMjhdOwogCWljbF9sb2FkX2djbWF4KGNydGNfc3Rh
dGUsIGVudHJ5KTsKIAlpdmJfbG9hZF9sdXRfZXh0X21heChjcnRjKTsKLQlpbnRlbF9kc2JfcHV0
KGRzYik7CiB9CiAKIHN0YXRpYyB2b2lkIGljbF9sb2FkX2x1dHMoY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7CiAJY29uc3Qgc3RydWN0IGRybV9wcm9wZXJ0eV9i
bG9iICpnYW1tYV9sdXQgPSBjcnRjX3N0YXRlLT5ody5nYW1tYV9sdXQ7CiAJc3RydWN0IGludGVs
X2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7Ci0Jc3Ry
dWN0IGludGVsX2RzYiAqZHNiID0gaW50ZWxfZHNiX2dldChjcnRjKTsKKwlzdHJ1Y3QgaW50ZWxf
ZHNiICpkc2IgPSAoc3RydWN0IGludGVsX2RzYiAqKSZjcnRjX3N0YXRlLT5kc2I7CisKKwkvKgor
CSAqIFRPRE86IEN1cnJlbnRseSBkc2IgYnVmZmVyIGZpbGxpbmcgaXMgZG9uZSBpbiBsb2FkX2x1
dCgpIHdoaWNoCisJICogY2FuIGJlIGRvbmUgbXVjaCBlYXJsaWVyLCBsaWtlIGluaXRpYWwgc3Rh
Z2Ugb2YgYXRvbWljX2NvbW1pdCgpLgorCSAqIEFzIGN1cnJlbnRseSByZXBsYWNpbmcgdGhlIG1t
aW8td3JpdGUgd2l0aCBkc2Itd3JpdGUgc28gdGhlIHNhbWUKKwkgKiBsb2FkX2x1dCgpIGFwaSBp
cyB1c2VkIGZvciBkc2IgYnVmZmVyIGNyZWF0aW9uIHdoaWNoIG1heSBub3QKKwkgKiBmaXQgaW4g
aW5pdGlhbCBzdGFnZS4gTmVlZCB0byBjcmVhdGUgYSBzZXBhcmF0ZSBpbnRlcmZhY2UgYW5kCisJ
ICogYSBkaWZmZXJlbnQgcGF0aCBpbiBjb2xvciBmcmFtZXdvcmsgd2hpbGUgZGVhbGluZyB3aXRo
IGRzYi4KKwkgKi8KIAogCWlmIChjcnRjX3N0YXRlLT5ody5kZWdhbW1hX2x1dCkKIAkJZ2xrX2xv
YWRfZGVnYW1tYV9sdXQoY3J0Y19zdGF0ZSk7CkBAIC0xMDIyLDcgKzEwMjYsNiBAQCBzdGF0aWMg
dm9pZCBpY2xfbG9hZF9sdXRzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQogCX0KIAogCWludGVsX2RzYl9jb21taXQoZHNiKTsKLQlpbnRlbF9kc2JfcHV0KGRzYik7
CiB9CiAKIHN0YXRpYyB1MzIgY2h2X2NnbV9kZWdhbW1hX2xkdyhjb25zdCBzdHJ1Y3QgZHJtX2Nv
bG9yX2x1dCAqY29sb3IpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCmluZGV4IGZkNmQ2M2IwMzQ4OS4uMDc2NzA4OTNjMWFlIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTQ4NzMsOCArMTQ4NzMsMjgg
QEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2soc3RydWN0IGRybV9kZXZpY2UgKmRldiwK
IAogc3RhdGljIGludCBpbnRlbF9hdG9taWNfcHJlcGFyZV9jb21taXQoc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUpCiB7Ci0JcmV0dXJuIGRybV9hdG9taWNfaGVscGVyX3ByZXBhcmVf
cGxhbmVzKHN0YXRlLT5iYXNlLmRldiwKLQkJCQkJCSZzdGF0ZS0+YmFzZSk7CisJc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7CisJc3RydWN0IGludGVsX2NydGMgKmNydGM7CisJ
aW50IGksIHJldDsKKworCXJldCA9IGRybV9hdG9taWNfaGVscGVyX3ByZXBhcmVfcGxhbmVzKHN0
YXRlLT5iYXNlLmRldiwgJnN0YXRlLT5iYXNlKTsKKwlpZiAocmV0IDwgMCkKKwkJcmV0dXJuIHJl
dDsKKworCS8qCisJICogSW4gY2FzZSBvZiBEU0IgYnVmZmVyIGNyZWF0aW9uIGZhaWx1cmUgcmVn
aXN0ZXIgcHJvZ3JhbW1pbmcgd2lsbCBiZQorCSAqIGRvbmUgYnkgbW1pbyBhbmQgZXJyb25lb3Vz
IHBhdGggd2lsbCBiZSBoYW5kbGVkIGJ5IGRzcC13cml0ZSBhcGkuCisJICovCisJZm9yX2VhY2hf
bmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIGNydGNfc3RhdGUsIGkpIHsKKwkJ
Ym9vbCBtb2RlX2NoYW5nZWQgPSBuZWVkc19tb2Rlc2V0KGNydGNfc3RhdGUpOworCisJCWlmICht
b2RlX2NoYW5nZWQgfHwgY3J0Y19zdGF0ZS0+dXBkYXRlX3BpcGUgfHwKKwkJICAgIGNydGNfc3Rh
dGUtPnVhcGkuY29sb3JfbWdtdF9jaGFuZ2VkKSB7CisJCQlpbnRlbF9kc2JfcHJlcGFyZShjcnRj
X3N0YXRlKTsKKwkJfQorCX0KKworCXJldHVybiAwOwogfQogCiB1MzIgaW50ZWxfY3J0Y19nZXRf
dmJsYW5rX2NvdW50ZXIoc3RydWN0IGludGVsX2NydGMgKmNydGMpCkBAIC0xNTMyNywxNSArMTUz
NDcsMzkgQEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2NvbW1pdF9mZW5jZV93YWl0KHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKmludGVsX3N0YXQKIAkJICAgICZ3YWl0X3Jlc2V0KTsKIH0K
IAorc3RhdGljIHZvaWQgaW50ZWxfY2xlYW51cF9kc2JzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlKQoreworCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLCAqb2xk
X2NydGNfc3RhdGUsICpuZXdfY3J0Y19zdGF0ZTsKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsK
KwlpbnQgaTsKKworCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBj
cnRjLCBvbGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUsIGkpIHsKKwkJYm9vbCBtb2RlX2No
YW5nZWQ7CisKKwkJaWYgKG9sZF9jcnRjX3N0YXRlID09IGNydGMtPmNvbmZpZykKKwkJCWNydGNf
c3RhdGUgPSBuZXdfY3J0Y19zdGF0ZTsKKwkJZWxzZQorCQkJY3J0Y19zdGF0ZSA9IG9sZF9jcnRj
X3N0YXRlOworCisJCW1vZGVfY2hhbmdlZCA9IG5lZWRzX21vZGVzZXQoY3J0Y19zdGF0ZSk7CisJ
CWlmIChtb2RlX2NoYW5nZWQgfHwgY3J0Y19zdGF0ZS0+dXBkYXRlX3BpcGUgfHwKKwkJICAgIGNy
dGNfc3RhdGUtPnVhcGkuY29sb3JfbWdtdF9jaGFuZ2VkKSB7CisJCQlpbnRlbF9kc2JfY2xlYW51
cChjcnRjX3N0YXRlKTsKKwkJfQorCX0KK30KKwogc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2Ns
ZWFudXBfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCiB7Ci0Jc3RydWN0IGRybV9hdG9t
aWNfc3RhdGUgKnN0YXRlID0KLQkJY29udGFpbmVyX29mKHdvcmssIHN0cnVjdCBkcm1fYXRvbWlj
X3N0YXRlLCBjb21taXRfd29yayk7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0
b19pOTE1KHN0YXRlLT5kZXYpOworCXN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlID0K
KwkJY29udGFpbmVyX29mKHdvcmssIHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUsIGJhc2UuY29t
bWl0X3dvcmspOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShzdGF0
ZS0+YmFzZS5kZXYpOwogCi0JZHJtX2F0b21pY19oZWxwZXJfY2xlYW51cF9wbGFuZXMoJmk5MTUt
PmRybSwgc3RhdGUpOwotCWRybV9hdG9taWNfaGVscGVyX2NvbW1pdF9jbGVhbnVwX2RvbmUoc3Rh
dGUpOwotCWRybV9hdG9taWNfc3RhdGVfcHV0KHN0YXRlKTsKKwlpZiAoSEFTX0RTQihpOTE1KSkK
KwkJaW50ZWxfY2xlYW51cF9kc2JzKHN0YXRlKTsKKwlkcm1fYXRvbWljX2hlbHBlcl9jbGVhbnVw
X3BsYW5lcygmaTkxNS0+ZHJtLCAmc3RhdGUtPmJhc2UpOworCWRybV9hdG9taWNfaGVscGVyX2Nv
bW1pdF9jbGVhbnVwX2RvbmUoJnN0YXRlLT5iYXNlKTsKKwlkcm1fYXRvbWljX3N0YXRlX3B1dCgm
c3RhdGUtPmJhc2UpOwogCiAJaW50ZWxfYXRvbWljX2hlbHBlcl9mcmVlX3N0YXRlKGk5MTUpOwog
fQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaAppbmRleCA5NDg4NDQ5ZTRiOTQuLjgwNWNhNzc0ZTE0NiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKQEAgLTEwNzgsNiAr
MTA3OCw5IEBAIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlIHsKIAogCS8qIE9ubHkgdmFsaWQgb24g
VEdMKyAqLwogCWVudW0gdHJhbnNjb2RlciBtc3RfbWFzdGVyX3RyYW5zY29kZXI7CisKKwkvKiBG
b3IgRFNCIHJlbGF0ZWQgaW5mbyAqLworCXN0cnVjdCBpbnRlbF9kc2IgZHNiOwogfTsKIAogZW51
bSBpbnRlbF9waXBlX2NyY19zb3VyY2UgewpAQCAtMTE0Nyw5ICsxMTUwLDYgQEAgc3RydWN0IGlu
dGVsX2NydGMgewogCS8qIHNjYWxlcnMgYXZhaWxhYmxlIG9uIHRoaXMgY3J0YyAqLwogCWludCBu
dW1fc2NhbGVyczsKIAotCS8qIHBlciBwaXBlIERTQiByZWxhdGVkIGluZm8gKi8KLQlzdHJ1Y3Qg
aW50ZWxfZHNiIGRzYjsKLQogI2lmZGVmIENPTkZJR19ERUJVR19GUwogCXN0cnVjdCBpbnRlbF9w
aXBlX2NyYyBwaXBlX2NyYzsKICNlbmRpZgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kc2IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmMKaW5kZXggMjlmZWM2YTkyZDE3Li4yNDdmZDU2NGQzOTQgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwpAQCAtMzQsMTggKzM0LDIyIEBACiAjZGVmaW5l
IERTQl9CWVRFX0VOX1NISUZUCQkyMAogI2RlZmluZSBEU0JfUkVHX1ZBTFVFX01BU0sJCTB4ZmZm
ZmYKIAotc3RhdGljIGJvb2wgaXNfZHNiX2J1c3koc3RydWN0IGludGVsX2RzYiAqZHNiKQorc3Rh
dGljIGlubGluZSBib29sIGlzX2RzYl9idXN5KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikKIHsKLQlz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IGNvbnRhaW5lcl9vZihkc2IsIHR5cGVvZigqY3J0Yyks
IGRzYik7CisJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQorCQljb250YWlu
ZXJfb2YoZHNiLCB0eXBlb2YoKmNydGNfc3RhdGUpLCBkc2IpOworCXN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOwogCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwogCWVu
dW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKIAogCXJldHVybiBEU0JfU1RBVFVTICYgaW50ZWxf
ZGVfcmVhZChkZXZfcHJpdiwgRFNCX0NUUkwocGlwZSwgZHNiLT5pZCkpOwogfQogCi1zdGF0aWMg
Ym9vbCBpbnRlbF9kc2JfZW5hYmxlX2VuZ2luZShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpCitzdGF0
aWMgaW5saW5lIGJvb2wgaW50ZWxfZHNiX2VuYWJsZV9lbmdpbmUoc3RydWN0IGludGVsX2RzYiAq
ZHNiKQogewotCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gY29udGFpbmVyX29mKGRzYiwgdHlw
ZW9mKCpjcnRjKSwgZHNiKTsKKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9
CisJCWNvbnRhaW5lcl9vZihkc2IsIHR5cGVvZigqY3J0Y19zdGF0ZSksIGRzYik7CisJc3RydWN0
IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7
CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNl
LmRldik7CiAJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwogCXUzMiBkc2JfY3RybDsKQEAg
LTYzLDkgKzY3LDExIEBAIHN0YXRpYyBib29sIGludGVsX2RzYl9lbmFibGVfZW5naW5lKHN0cnVj
dCBpbnRlbF9kc2IgKmRzYikKIAlyZXR1cm4gdHJ1ZTsKIH0KIAotc3RhdGljIGJvb2wgaW50ZWxf
ZHNiX2Rpc2FibGVfZW5naW5lKHN0cnVjdCBpbnRlbF9kc2IgKmRzYikKK3N0YXRpYyBpbmxpbmUg
Ym9vbCBpbnRlbF9kc2JfZGlzYWJsZV9lbmdpbmUoc3RydWN0IGludGVsX2RzYiAqZHNiKQogewot
CXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gY29udGFpbmVyX29mKGRzYiwgdHlwZW9mKCpjcnRj
KSwgZHNiKTsKKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9CisJCWNvbnRh
aW5lcl9vZihkc2IsIHR5cGVvZigqY3J0Y19zdGF0ZSksIGRzYik7CisJc3RydWN0IGludGVsX2Ny
dGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7CiAJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CiAJ
ZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwogCXUzMiBkc2JfY3RybDsKQEAgLTgzLDk5ICs4
OSw2IEBAIHN0YXRpYyBib29sIGludGVsX2RzYl9kaXNhYmxlX2VuZ2luZShzdHJ1Y3QgaW50ZWxf
ZHNiICpkc2IpCiAJcmV0dXJuIHRydWU7CiB9CiAKLS8qKgotICogaW50ZWxfZHNiX2dldCgpIC0g
QWxsb2NhdGUgRFNCIGNvbnRleHQgYW5kIHJldHVybiBhIERTQiBpbnN0YW5jZS4KLSAqIEBjcnRj
OiBpbnRlbF9jcnRjIHN0cnVjdHVyZSB0byBnZXQgcGlwZSBpbmZvLgotICoKLSAqIFRoaXMgZnVu
Y3Rpb24gcHJvdmlkZXMgaGFuZGxlIG9mIGEgRFNCIGluc3RhbmNlLCBmb3IgdGhlIGZ1cnRoZXIg
RFNCCi0gKiBvcGVyYXRpb25zLgotICoKLSAqIFJldHVybnM6IGFkZHJlc3Mgb2YgSW50ZWxfZHNi
IGluc3RhbmNlIHJlcXVlc3RlZCBmb3IuCi0gKiBGYWlsdXJlOiBSZXR1cm5zIHRoZSBzYW1lIERT
QiBpbnN0YW5jZSwgYnV0IHdpdGhvdXQgYSBjb21tYW5kIGJ1ZmZlci4KLSAqLwotCi1zdHJ1Y3Qg
aW50ZWxfZHNiICoKLWludGVsX2RzYl9nZXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpCi17Ci0J
c3RydWN0IGRybV9kZXZpY2UgKmRldiA9IGNydGMtPmJhc2UuZGV2OwotCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkZXYpOwotCXN0cnVjdCBpbnRlbF9kc2IgKmRzYiA9
ICZjcnRjLT5kc2I7Ci0Jc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKLQlzdHJ1Y3Qg
aTkxNV92bWEgKnZtYTsKLQl1MzIgKmJ1ZjsKLQlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKLQot
CWlmICghSEFTX0RTQihpOTE1KSkKLQkJcmV0dXJuIGRzYjsKLQotCWlmIChkc2ItPnJlZmNvdW50
KysgIT0gMCkKLQkJcmV0dXJuIGRzYjsKLQotCXdha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dl
dCgmaTkxNS0+cnVudGltZV9wbSk7Ci0KLQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2lu
dGVybmFsKGk5MTUsIERTQl9CVUZfU0laRSk7Ci0JaWYgKElTX0VSUihvYmopKSB7Ci0JCWRybV9l
cnIoJmk5MTUtPmRybSwgIkdlbSBvYmplY3QgY3JlYXRpb24gZmFpbGVkXG4iKTsKLQkJZ290byBv
dXQ7Ci0JfQotCi0Jdm1hID0gaTkxNV9nZW1fb2JqZWN0X2dndHRfcGluKG9iaiwgTlVMTCwgMCwg
MCwgMCk7Ci0JaWYgKElTX0VSUih2bWEpKSB7Ci0JCWRybV9lcnIoJmk5MTUtPmRybSwgIlZtYSBj
cmVhdGlvbiBmYWlsZWRcbiIpOwotCQlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7Ci0JCWdvdG8g
b3V0OwotCX0KLQotCWJ1ZiA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKHZtYS0+b2JqLCBJOTE1
X01BUF9XQyk7Ci0JaWYgKElTX0VSUihidWYpKSB7Ci0JCWRybV9lcnIoJmk5MTUtPmRybSwgIkNv
bW1hbmQgYnVmZmVyIGNyZWF0aW9uIGZhaWxlZFxuIik7Ci0JCWdvdG8gb3V0OwotCX0KLQotCWRz
Yi0+aWQgPSBEU0IxOwotCWRzYi0+dm1hID0gdm1hOwotCWRzYi0+Y21kX2J1ZiA9IGJ1ZjsKLQot
b3V0OgotCS8qCi0JICogT24gZXJyb3IgZHNiLT5jbWRfYnVmIHdpbGwgY29udGludWUgdG8gYmUg
TlVMTCwgbWFraW5nIHRoZSB3cml0ZXMKLQkgKiBwYXNzLXRocm91Z2guIExlYXZlIHRoZSBkYW5n
bGluZyByZWYgdG8gYmUgcmVtb3ZlZCBsYXRlciBieSB0aGUKLQkgKiBjb3JyZXNwb25kaW5nIGlu
dGVsX2RzYl9wdXQoKTogdGhlIGltcG9ydGFudCBlcnJvciBtZXNzYWdlIHdpbGwKLQkgKiBhbHJl
YWR5IGJlIGxvZ2dlZCBhYm92ZS4KLQkgKi8KLQotCWludGVsX3J1bnRpbWVfcG1fcHV0KCZpOTE1
LT5ydW50aW1lX3BtLCB3YWtlcmVmKTsKLQotCXJldHVybiBkc2I7Ci19Ci0KLS8qKgotICogaW50
ZWxfZHNiX3B1dCgpIC0gVG8gZGVzdHJveSBEU0IgY29udGV4dC4KLSAqIEBkc2I6IGludGVsX2Rz
YiBzdHJ1Y3R1cmUuCi0gKgotICogVGhpcyBmdW5jdGlvbiBkZXN0cm95cyB0aGUgRFNCIGNvbnRl
eHQgYWxsb2NhdGVkIGJ5IGEgZHNiX2dldCgpLCBieQotICogdW5waW5uaW5nIGFuZCByZWxlYXNp
bmcgdGhlIFZNQSBvYmplY3QgYXNzb2NpYXRlZCB3aXRoIGl0LgotICovCi0KLXZvaWQgaW50ZWxf
ZHNiX3B1dChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpCi17Ci0Jc3RydWN0IGludGVsX2NydGMgKmNy
dGMgPSBjb250YWluZXJfb2YoZHNiLCB0eXBlb2YoKmNydGMpLCBkc2IpOwotCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7Ci0KLQlpZiAoIUhB
U19EU0IoaTkxNSkpCi0JCXJldHVybjsKLQotCWlmIChkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCBk
c2ItPnJlZmNvdW50ID09IDApKQotCQlyZXR1cm47Ci0KLQlpZiAoLS1kc2ItPnJlZmNvdW50ID09
IDApIHsKLQkJaTkxNV92bWFfdW5waW5fYW5kX3JlbGVhc2UoJmRzYi0+dm1hLCBJOTE1X1ZNQV9S
RUxFQVNFX01BUCk7Ci0JCWRzYi0+Y21kX2J1ZiA9IE5VTEw7Ci0JCWRzYi0+ZnJlZV9wb3MgPSAw
OwotCQlkc2ItPmluc19zdGFydF9vZmZzZXQgPSAwOwotCX0KLX0KLQogLyoqCiAgKiBpbnRlbF9k
c2JfaW5kZXhlZF9yZWdfd3JpdGUoKSAtV3JpdGUgdG8gdGhlIERTQiBjb250ZXh0IGZvciBhdXRv
CiAgKiBpbmNyZW1lbnQgcmVnaXN0ZXIuCkBAIC0xOTIsNyArMTA1LDkgQEAgdm9pZCBpbnRlbF9k
c2JfcHV0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikKIHZvaWQgaW50ZWxfZHNiX2luZGV4ZWRfcmVn
X3dyaXRlKHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwgaTkxNV9yZWdfdCByZWcsCiAJCQkJIHUzMiB2
YWwpCiB7Ci0Jc3RydWN0IGludGVsX2NydGMgKmNydGMgPSBjb250YWluZXJfb2YoZHNiLCB0eXBl
b2YoKmNydGMpLCBkc2IpOworCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0K
KwkJY29udGFpbmVyX29mKGRzYiwgdHlwZW9mKCpjcnRjX3N0YXRlKSwgZHNiKTsKKwlzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsK
IAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2Uu
ZGV2KTsKIAl1MzIgKmJ1ZiA9IGRzYi0+Y21kX2J1ZjsKIAl1MzIgcmVnX3ZhbDsKQEAgLTI2Nyw3
ICsxODIsOSBAQCB2b2lkIGludGVsX2RzYl9pbmRleGVkX3JlZ193cml0ZShzdHJ1Y3QgaW50ZWxf
ZHNiICpkc2IsIGk5MTVfcmVnX3QgcmVnLAogICovCiB2b2lkIGludGVsX2RzYl9yZWdfd3JpdGUo
c3RydWN0IGludGVsX2RzYiAqZHNiLCBpOTE1X3JlZ190IHJlZywgdTMyIHZhbCkKIHsKLQlzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IGNvbnRhaW5lcl9vZihkc2IsIHR5cGVvZigqY3J0YyksIGRz
Yik7CisJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQorCQljb250YWluZXJf
b2YoZHNiLCB0eXBlb2YoKmNydGNfc3RhdGUpLCBkc2IpOworCXN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOwogCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwogCXUzMiAq
YnVmID0gZHNiLT5jbWRfYnVmOwogCkBAIC0yOTcsNyArMjE0LDkgQEAgdm9pZCBpbnRlbF9kc2Jf
cmVnX3dyaXRlKHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwgaTkxNV9yZWdfdCByZWcsIHUzMiB2YWwp
CiAgKi8KIHZvaWQgaW50ZWxfZHNiX2NvbW1pdChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpCiB7Ci0J
c3RydWN0IGludGVsX2NydGMgKmNydGMgPSBjb250YWluZXJfb2YoZHNiLCB0eXBlb2YoKmNydGMp
LCBkc2IpOworCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0KKwkJY29udGFp
bmVyX29mKGRzYiwgdHlwZW9mKCpjcnRjX3N0YXRlKSwgZHNiKTsKKwlzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKIAlzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2ID0gY3J0Yy0+YmFzZS5kZXY7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2ID0gdG9faTkxNShkZXYpOwogCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlw
ZTsKQEAgLTM0MywzICsyNjIsODcgQEAgdm9pZCBpbnRlbF9kc2JfY29tbWl0KHN0cnVjdCBpbnRl
bF9kc2IgKmRzYikKIAlkc2ItPmluc19zdGFydF9vZmZzZXQgPSAwOwogCWludGVsX2RzYl9kaXNh
YmxlX2VuZ2luZShkc2IpOwogfQorCisvKioKKyAqIGludGVsX2RzYl9wcmVwYXJlKCkgLSBBbGxv
Y2F0ZSwgcGluIGFuZCBtYXAgdGhlIERTQiBjb21tYW5kIGJ1ZmZlci4KKyAqIEBjcnRjX3N0YXRl
OiBpbnRlbF9jcnRjX3N0YXRlIHN0cnVjdHVyZSB0byBwcmVwYXJlIGFzc29jaWF0ZWQgZHNiIGlu
c3RhbmNlLgorICoKKyAqIFRoaXMgZnVuY3Rpb24gcHJlcGFyZSB0aGUgY29tbWFuZCBidWZmZXIg
d2hpY2ggaXMgdXNlZCB0byBzdG9yZSBkc2IKKyAqIGluc3RydWN0aW9ucyB3aXRoIGRhdGEuCisg
Ki8KKwordm9pZCBpbnRlbF9kc2JfcHJlcGFyZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkKK3sKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0
Y19zdGF0ZS0+dWFwaS5jcnRjKTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRv
X2k5MTUoY3J0Yy0+YmFzZS5kZXYpOworCXN0cnVjdCBpbnRlbF9kc2IgKmRzYiA9ICZjcnRjX3N0
YXRlLT5kc2I7CisJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKKwlzdHJ1Y3QgaTkx
NV92bWEgKnZtYTsKKwl1MzIgKmJ1ZjsKKwlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKKworCWlm
ICghSEFTX0RTQihpOTE1KSB8fCBkc2ItPmNtZF9idWYpCisJCXJldHVybjsKKworCXdha2VyZWYg
PSBpbnRlbF9ydW50aW1lX3BtX2dldCgmaTkxNS0+cnVudGltZV9wbSk7CisKKwlvYmogPSBpOTE1
X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGk5MTUsIERTQl9CVUZfU0laRSk7CisJaWYgKElT
X0VSUihvYmopKSB7CisJCWRybV9lcnIoJmk5MTUtPmRybSwgIkdlbSBvYmplY3QgY3JlYXRpb24g
ZmFpbGVkXG4iKTsKKwkJZ290byBvdXQ7CisJfQorCisJdm1hID0gaTkxNV9nZW1fb2JqZWN0X2dn
dHRfcGluKG9iaiwgTlVMTCwgMCwgMCwgMCk7CisJaWYgKElTX0VSUih2bWEpKSB7CisJCWRybV9l
cnIoJmk5MTUtPmRybSwgIlZtYSBjcmVhdGlvbiBmYWlsZWRcbiIpOworCQlpOTE1X2dlbV9vYmpl
Y3RfcHV0KG9iaik7CisJCWdvdG8gb3V0OworCX0KKworCWJ1ZiA9IGk5MTVfZ2VtX29iamVjdF9w
aW5fbWFwKHZtYS0+b2JqLCBJOTE1X01BUF9XQyk7CisJaWYgKElTX0VSUihidWYpKSB7CisJCWRy
bV9lcnIoJmk5MTUtPmRybSwgIkNvbW1hbmQgYnVmZmVyIGNyZWF0aW9uIGZhaWxlZFxuIik7CisJ
CWdvdG8gb3V0OworCX0KKworCWRzYi0+aWQgPSBEU0IxOworCWRzYi0+dm1hID0gdm1hOworCWRz
Yi0+Y21kX2J1ZiA9IGJ1ZjsKKworb3V0OgorCS8qCisJICogT24gZXJyb3IgZHNiLT5jbWRfYnVm
IHdpbGwgY29udGludWUgdG8gYmUgTlVMTCwgbWFraW5nIHRoZSB3cml0ZXMKKwkgKiBwYXNzLXRo
cm91Z2guIExlYXZlIHRoZSBkYW5nbGluZyByZWYgdG8gYmUgcmVtb3ZlZCBsYXRlciBieSB0aGUK
KwkgKiBjb3JyZXNwb25kaW5nIGludGVsX2RzYl9wdXQoKTogdGhlIGltcG9ydGFudCBlcnJvciBt
ZXNzYWdlIHdpbGwKKwkgKiBhbHJlYWR5IGJlIGxvZ2dlZCBhYm92ZS4KKwkgKi8KKworCWludGVs
X3J1bnRpbWVfcG1fcHV0KCZpOTE1LT5ydW50aW1lX3BtLCB3YWtlcmVmKTsKK30KKworLyoqCisg
KiBpbnRlbF9kc2JfY2xlYW51cCgpIC0gVG8gY2xlYW51cCBEU0IgY29udGV4dC4KKyAqIEBjcnRj
X3N0YXRlOiBpbnRlbF9jcnRjX3N0YXRlIHN0cnVjdHVyZSB0byBjbGVhbnVwIGFzc29jaWF0ZWQg
ZHNiIGluc3RhbmNlLgorICoKKyAqIFRoaXMgZnVuY3Rpb24gY2xlYW51cCB0aGUgRFNCIGNvbnRl
eHQgYnkgdW5waW5uaW5nIGFuZCByZWxlYXNpbmcKKyAqIHRoZSBWTUEgb2JqZWN0IGFzc29jaWF0
ZWQgd2l0aCBpdC4KKyAqLworCit2b2lkIGludGVsX2RzYl9jbGVhbnVwKHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKQoreworCXN0cnVjdCBpbnRlbF9kc2IgKmRzYiA9ICZjcnRj
X3N0YXRlLT5kc2I7CisJc3RydWN0IGk5MTVfdm1hICpwX3ZtYTsKKworCWlmIChkc2ItPnZtYSkg
eworCQlwX3ZtYSA9IGZldGNoX2FuZF96ZXJvKCZkc2ItPnZtYSk7CisJCWlmIChwX3ZtYSkgewor
CQkJaTkxNV92bWFfdW5waW4ocF92bWEpOworCQkJaTkxNV9nZW1fb2JqZWN0X3VucGluX21hcChw
X3ZtYS0+b2JqKTsKKwkJCWk5MTVfZ2VtX29iamVjdF9wdXQocF92bWEtPm9iaik7CisJCX0KKwkJ
ZHNiLT52bWEgPSBOVUxMOworCQlkc2ItPmNtZF9idWYgPSBOVUxMOworCQlkc2ItPmZyZWVfcG9z
ID0gMDsKKwkJZHNiLT5pbnNfc3RhcnRfb2Zmc2V0ID0gMDsKKwl9Cit9CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaAppbmRleCAzOTVlZjljZTU1OGUuLjNhMjBhNDM4OGI5
YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oCkBAIC0xMCw3ICsx
MCw3IEBACiAKICNpbmNsdWRlICJpOTE1X3JlZy5oIgogCi1zdHJ1Y3QgaW50ZWxfY3J0YzsKK3N0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlOwogc3RydWN0IGk5MTVfdm1hOwogCiBlbnVtIGRzYl9pZCB7
CkBAIC0yMiw3ICsyMiw2IEBAIGVudW0gZHNiX2lkIHsKIH07CiAKIHN0cnVjdCBpbnRlbF9kc2Ig
ewotCWxvbmcgcmVmY291bnQ7CiAJZW51bSBkc2JfaWQgaWQ7CiAJdTMyICpjbWRfYnVmOwogCXN0
cnVjdCBpOTE1X3ZtYSAqdm1hOwpAQCAtNDEsOSArNDAsOCBAQCBzdHJ1Y3QgaW50ZWxfZHNiIHsK
IAl1MzIgaW5zX3N0YXJ0X29mZnNldDsKIH07CiAKLXN0cnVjdCBpbnRlbF9kc2IgKgotaW50ZWxf
ZHNiX2dldChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7Ci12b2lkIGludGVsX2RzYl9wdXQoc3Ry
dWN0IGludGVsX2RzYiAqZHNiKTsKK3ZvaWQgaW50ZWxfZHNiX3ByZXBhcmUoc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwordm9pZCBpbnRlbF9kc2JfY2xlYW51cChzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CiB2b2lkIGludGVsX2RzYl9yZWdfd3JpdGUo
c3RydWN0IGludGVsX2RzYiAqZHNiLCBpOTE1X3JlZ190IHJlZywgdTMyIHZhbCk7CiB2b2lkIGlu
dGVsX2RzYl9pbmRleGVkX3JlZ193cml0ZShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsIGk5MTVfcmVn
X3QgcmVnLAogCQkJCSB1MzIgdmFsKTsKLS0gCjIuMjYuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
