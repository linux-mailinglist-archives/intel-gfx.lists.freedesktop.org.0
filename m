Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF406FD23D
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 02:11:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AB7E6F39F;
	Fri, 15 Nov 2019 01:11:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4CD06F39F
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 01:11:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 17:11:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,306,1569308400"; d="scan'208";a="216950529"
Received: from dhiatt-desk.jf.intel.com ([10.54.81.11])
 by orsmga002.jf.intel.com with ESMTP; 14 Nov 2019 17:11:12 -0800
From: don.hiatt@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Nov 2019 17:11:12 -0800
Message-Id: <20191115011112.25249-2-don.hiatt@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191115011112.25249-1-don.hiatt@intel.com>
References: <20191115011112.25249-1-don.hiatt@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Skip suspend/resume GuC
 action on platforms w/o GuC submission
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

RnJvbTogRG9uIEhpYXR0IDxkb24uaGlhdHRAaW50ZWwuY29tPgoKT24gc29tZSBwbGF0Zm9ybXMg
KGUuZy4gS0JMKSB0aGF0IGRvIG5vdCBzdXBwb3J0IEd1QyBzdWJtaXNzaW9uLCBidXQKdGhlIHVz
ZXIgZW5hYmxlZCB0aGUgR3VDIGNvbW11bmljYXRpb24gKGUuZyBmb3IgSHVDIGF1dGhlbnRpY2F0
aW9uKQpjYWxsaW5nIHRoZSBHdUMgRVhJVF9TX1NUQVRFIGFjdGlvbiByZXN1bHRzIGluIGxvc2Ug
b2YgYWJpbGl0eSB0bwplbnRlciBSQzYuIFdlIGNhbiByZW1vdmUgdGhlIEd1QyBzdXNwZW5kL3Jl
c3VtZSBlbnRpcmVseSBhcyB3ZSBkbwpub3QgbmVlZCB0byBzYXZlIHRoZSBHdUMgc3VibWlzc2lv
biBzdGF0dXMuCgp2MjogRG8gbm90IHN1c3BlbmQvcmVzdW1lIHRoZSBHdUMgb24gcGxhdGZvcm1z
IHRoYXQgZG8gbm90IHN1cHBvcnQKICAgIEd1YyBTdWJtaXNzaW9uLgp2MzogRml4IHR5cG8sIG1v
dmUgc3VzcGVuZCBsb2dpYyB0byByZW1vdmUgZ290by4KdjQ6IFVzZSBpbnRlbF9ndWNfc3VibWlz
c2lvbl9pc19lbmFibGVkKCkgdG8gY2hlY2sgR3VDIHN1Ym1pc3Npb24KICAgIHN0YXR1cy4KClNp
Z25lZC1vZmYtYnk6IERvbiBIaWF0dCA8ZG9uLmhpYXR0QGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYyB8IDcgKysrKysrKwogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyAgfCA4ICsrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQs
IDE1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jCmlu
ZGV4IDAxOWFlNjQ4NmU4ZC4uOTJkOTMwNWMwZDczIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWMuYwpAQCAtNTUzLDYgKzU1MywxMyBAQCBpbnQgaW50ZWxfZ3VjX3N1c3BlbmQo
c3RydWN0IGludGVsX2d1YyAqZ3VjKQogCQlHVUNfUE9XRVJfRDEsIC8qIGFueSB2YWx1ZSBncmVh
dGVyIHRoYW4gR1VDX1BPV0VSX0QwICovCiAJfTsKIAorCS8qCisJICogSWYgR3VDIGNvbW11bmlj
YXRpb24gaXMgZW5hYmxlZCBidXQgc3VibWlzc2lvbiBpcyBub3Qgc3VwcG9ydGVkLAorCSAqIHdl
IGRvIG5vdCBuZWVkIHRvIHN1c3BlbmQgdGhlIEd1Qy4KKwkgKi8KKwlpZiAoIWludGVsX2d1Y19z
dWJtaXNzaW9uX2lzX2VuYWJsZWQoZ3VjKSkKKwkJcmV0dXJuIDA7CisKIAkvKgogCSAqIFRoZSBF
TlRFUl9TX1NUQVRFIGFjdGlvbiBxdWV1ZXMgdGhlIHNhdmUvcmVzdG9yZSBvcGVyYXRpb24gaW4g
R3VDIEZXCiAJICogYW5kIHRoZW4gcmV0dXJucywgc28gd2FpdGluZyBvbiB0aGUgSDJHIGlzIG5v
dCBlbm91Z2ggdG8gZ3VhcmFudGVlCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF91Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwpp
bmRleCA2MjliMTkzNzdhMjkuLjRkZDQzYjk5YTMzNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF91Yy5jCkBAIC02MDUsNiArNjA1LDE0IEBAIHN0YXRpYyBpbnQgX191Y19yZXN1bWUo
c3RydWN0IGludGVsX3VjICp1YywgYm9vbCBlbmFibGVfY29tbXVuaWNhdGlvbikKIAlpZiAoZW5h
YmxlX2NvbW11bmljYXRpb24pCiAJCWd1Y19lbmFibGVfY29tbXVuaWNhdGlvbihndWMpOwogCisJ
LyoKKwkgKiBJZiBHdUMgY29tbXVuaWNhdGlvbiBpcyBlbmFibGVkIGJ1dCBzdWJtaXNzaW9uIGlz
IG5vdCBzdXBwb3J0ZWQsCisJICogd2UgZG8gbm90IG5lZWQgdG8gcmVzdW1lIHRoZSBHdUMgYnV0
IHdlIGRvIG5lZWQgdG8gZW5hYmxlIHRoZQorCSAqIEd1QyBjb21tdW5pY2F0aW9uIG9uIHJlc3Vt
ZSAoYWJvdmUpLgorCSAqLworCWlmICghaW50ZWxfZ3VjX3N1Ym1pc3Npb25faXNfZW5hYmxlZChn
dWMpKQorCQlyZXR1cm4gMDsKKwogCWVyciA9IGludGVsX2d1Y19yZXN1bWUoZ3VjKTsKIAlpZiAo
ZXJyKSB7CiAJCURSTV9ERUJVR19EUklWRVIoIkZhaWxlZCB0byByZXN1bWUgR3VDLCBlcnI9JWQi
LCBlcnIpOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
