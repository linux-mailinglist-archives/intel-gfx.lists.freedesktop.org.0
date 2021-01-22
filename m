Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25208300E4F
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 21:56:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88FAF6EA50;
	Fri, 22 Jan 2021 20:56:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86B0C6EA50
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 20:56:39 +0000 (UTC)
IronPort-SDR: ufaWxWLdBn525xpyrQE62Lq1ifEI04igCGXLk9llj/EhPAbW7Y9OLJqbpnSy4rLO4ycVQU/HRJ
 6aU4stYm2g0g==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="179587684"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="179587684"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 12:56:37 -0800
IronPort-SDR: 0doxfk+rWJFyz0P/TUyP4OOwHnRqfHl/h3OHAurZTVF22iCccauNpEUN+93byaow0HOQnwQqYN
 agfiZecEwFLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="408018824"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 22 Jan 2021 12:56:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 22 Jan 2021 22:56:33 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 22:56:25 +0200
Message-Id: <20210122205633.18492-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/8] drm/i915: Remainder of dbuf state stuff
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkdM
SyBibGV3IHVwIGluIGNpIGluIHRoZSBnbGtfZm9yY2VfYXVkaW9fY2RjbGsoKSBwYXRoLiBUaGUK
cmVhc29uIGJlaW5nIHNvbWUgcmVvcmRlcmluZyBpbiBpbnRlbF9hdG9taWNfY2hlY2soKSBzbyB3
ZSdyZQpubyBsb25nZXIgZ3VhcmFudGVlZCB0byBoYXZlIGEgZGJ1Zl9zdGF0ZSB3aGVuIHdlIGNv
bW1pdCBjcnRjcy4KU28gSSBjaGFuZ2VkIHRoZSBhcHByb2FjaCBzbGlnaHRseSB0byBrZWVwIGR1
cGxpY2F0ZSBwaXBlIGRkYgphbGxvY2F0aW9ucyBpbiB0aGUgY3J0YyBzdGF0ZSBhcyB3ZWxsLiBB
IGJpdCBhbm5veWluZywgZXNwZWNpYWxseQpmb3IganVzdCBzYW5pdHkgY2hlY2tpbmcgYWdhaW5z
dCBkZGIgb3ZlcmxhcHMsIGJ1dCBjb3VsZG4ndCB0aGluawpvZiBhbnl0aGluZyBuaWNlciBpbnN0
ZWFkLgoKVGhlIGNoYW5nZSB0cmlja2xlZCBvdmVyIHRvIHNldmVyYWwgcGF0Y2hlcyBzbyByZXNl
bmRpbmcgdGhlCmxvdC4KClZpbGxlIFN5cmrDpGzDpCAoOCk6CiAgZHJtL2k5MTU6IEV4dHJhY3Qg
aW50ZWxfY3J0Y19kZGJfd2VpZ2h0KCkKICBkcm0vaTkxNTogUGFzcyB0aGUgY3J0YyB0byBza2xf
Y29tcHV0ZV9kYnVmX3NsaWNlcygpCiAgZHJtL2k5MTU6IEludHJvZHVjZSBpbnRlbF9kYnVmX3Ns
aWNlX3NpemUoKQogIGRybS9pOTE1OiBJbnRyb2R1Y2Ugc2tsX2RkYl9lbnRyeV9mb3Jfc2xpY2Vz
KCkKICBkcm0vaTkxNTogQWRkIHBpcGUgZGRiIGVudHJpZXMgaW50byB0aGUgZGJ1ZiBzdGF0ZQog
IGRybS9pOTE1OiBFeHRyYWN0IGludGVsX2NydGNfZGJ1Zl93ZWlnaHRzKCkKICBkcm0vaTkxNTog
RW5jYXBzdWxhdGUgZGJ1ZiBzdGF0ZSBoYW5kbGluZyBoYXJkZXIKICBkcm0vaTkxNTogRG8gYSBi
aXQgbW9yZSBpbml0aWFsIHJlYWRvdXQgZm9yIGRidWYKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgMTkgLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMgIHwgICAxIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmggICAgICAgICAgICAgICB8ICAgOSAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5jICAgICAgICAgICAgICAgfCA1NDIgKysrKysrKystLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9wbS5oICAgICAgICAgICAgICAgfCAgIDcgKy0KIDUgZmlsZXMgY2hhbmdl
ZCwgMjU4IGluc2VydGlvbnMoKyksIDMyMCBkZWxldGlvbnMoLSkKCi0tIAoyLjI2LjIKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
