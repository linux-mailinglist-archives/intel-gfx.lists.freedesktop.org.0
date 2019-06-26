Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B052556C15
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 16:33:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 123EB6E450;
	Wed, 26 Jun 2019 14:33:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 368316E450
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 14:33:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 07:33:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="183182748"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2019 07:33:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jun 2019 17:36:18 +0300
Message-Id: <20190626143618.21800-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626143618.21800-1-jani.nikula@intel.com>
References: <20190626143618.21800-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: add header search path to subdir
 Makefiles
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2l0aCB0aGUgc3ViZGlyZWN0b3JpZXMgd2UgbG9zdCB0aGUgYWJpbGl0eSB0byBidWlsZCBpbmRp
dmlkdWFsIGZpbGVzIG9uCnRoZSBjb21tYW5kIGxpbmUsIGZvciBleGFtcGxlOgoKJCBtYWtlIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5vCgpUaGlzIHdhcyBkdWUg
dG8gdGhlIHRvcCBsZXZlbCBkaXJlY3RvcnkgbWlzc2luZyBmcm9tIGhlYWRlciBzZWFyY2gKcGF0
aC4gQWRkIHRoZSBoZWFkZXIgc2VhcmNoIHBhdGhzIHRvIHN1YmRpciBNYWtlZmlsZXMuCgpOb3Rl
IHRoYXQgbm9uZSBvZiB0aGUgb3RoZXIgb3B0aW9ucyBpbiB0aGUgdG9wIGxldmVsIGk5MTUgTWFr
ZWZpbGUgYXJlCnRha2VuIGludG8gYWNjb3VudCB3aGVuIGJ1aWxkaW5nIGluZGl2aWR1YWwgZmls
ZXMuIFVzdWFsbHkgdGhpcyBpcyBub3QgYQpjb25jZXJuLgoKUmVwb3J0ZWQtYnk6IEltcmUgRGVh
ayA8aW1yZS5kZWFrQGludGVsLmNvbT4KUmVwb3J0ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L01ha2VmaWxlIHwgMyAr
KysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9NYWtlZmlsZSAgICAgfCA2ICsrKysrLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvTWFrZWZpbGUgICAgICB8IDMgKysrCiAzIGZpbGVzIGNoYW5n
ZWQsIDExIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9NYWtlZmlsZQppbmRleCAxYzc1YjVjOTc5MGMuLmVlYzY5NjEwMTVhMSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9NYWtlZmlsZQorKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L01ha2VmaWxlCkBAIC0xLDIgKzEsNSBAQAorIyBGb3IgYnVpbGRp
bmcgaW5kaXZpZHVhbCBzdWJkaXIgZmlsZXMgb24gdGhlIGNvbW1hbmQgbGluZQorc3ViZGlyLWNj
ZmxhZ3MteSArPSAtSSQoc3JjdHJlZSkvJChzcmMpLy4uCisKICMgRXh0cmEgaGVhZGVyIHRlc3Rz
CiBpbmNsdWRlICQoc3JjKS9NYWtlZmlsZS5oZWFkZXItdGVzdApkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL01h
a2VmaWxlCmluZGV4IDA3ZTdiOGI4NDBlYS4uZWVjNjk2MTAxNWExIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vTWFrZWZpbGUKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL01ha2VmaWxlCkBAIC0xICsxLDUgQEAKLWluY2x1ZGUgJChzcmMpL01ha2VmaWxlLmhlYWRl
ci10ZXN0ICMgRXh0cmEgaGVhZGVyIHRlc3RzCisjIEZvciBidWlsZGluZyBpbmRpdmlkdWFsIHN1
YmRpciBmaWxlcyBvbiB0aGUgY29tbWFuZCBsaW5lCitzdWJkaXItY2NmbGFncy15ICs9IC1JJChz
cmN0cmVlKS8kKHNyYykvLi4KKworIyBFeHRyYSBoZWFkZXIgdGVzdHMKK2luY2x1ZGUgJChzcmMp
L01ha2VmaWxlLmhlYWRlci10ZXN0CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L01ha2VmaWxlCmluZGV4IDFjNzVi
NWM5NzkwYy4uZWVjNjk2MTAxNWExIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9NYWtlZmlsZQorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9NYWtlZmlsZQpAQCAtMSwy
ICsxLDUgQEAKKyMgRm9yIGJ1aWxkaW5nIGluZGl2aWR1YWwgc3ViZGlyIGZpbGVzIG9uIHRoZSBj
b21tYW5kIGxpbmUKK3N1YmRpci1jY2ZsYWdzLXkgKz0gLUkkKHNyY3RyZWUpLyQoc3JjKS8uLgor
CiAjIEV4dHJhIGhlYWRlciB0ZXN0cwogaW5jbHVkZSAkKHNyYykvTWFrZWZpbGUuaGVhZGVyLXRl
c3QKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
