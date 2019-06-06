Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBDC373FE
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 14:19:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89BCC89722;
	Thu,  6 Jun 2019 12:19:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08FA28972B
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 12:19:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 05:19:10 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 06 Jun 2019 05:19:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Jun 2019 15:22:03 +0300
Message-Id: <20190606122203.13416-4-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190606122203.13416-1-jani.nikula@intel.com>
References: <20190606122203.13416-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915/frontbuffer: remove obsolete
 comment about mark busy/idle
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

VGhpcyBubyBsb25nZXIgZXhpc3RzLgoKU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9mcm9udGJ1
ZmZlci5jIHwgNiAtLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Zyb250YnVmZmVyLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9mcm9udGJ1ZmZlci5jCmluZGV4IGFhMzRlMzNiNjA4Ny4uZDYw
MzZiOWFkMTZhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9mcm9udGJ1
ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Zyb250YnVmZmVyLmMKQEAg
LTUzLDE0ICs1Myw4IEBACiAgKiBidXN5bmVzcy4gVGhlcmUgaXMgbm8gZGlyZWN0IHdheSB0byBk
ZXRlY3QgaWRsZW5lc3MuIEluc3RlYWQgYW4gaWRsZSB0aW1lcgogICogd29yayBkZWxheWVkIHdv
cmsgc2hvdWxkIGJlIHN0YXJ0ZWQgZnJvbSB0aGUgZmx1c2ggYW5kIGZsaXAgZnVuY3Rpb25zIGFu
ZAogICogY2FuY2VsbGVkIGFzIHNvb24gYXMgYnVzeW5lc3MgaXMgZGV0ZWN0ZWQuCi0gKgotICog
Tm90ZSB0aGF0IHRoZXJlJ3MgYWxzbyBhbiBvbGRlciBmcm9udGJ1ZmZlciBhY3Rpdml0eSB0cmFj
a2luZyBzY2hlbWUgd2hpY2gKLSAqIGp1c3QgdHJhY2tzIGdlbmVyYWwgYWN0aXZpdHkuIFRoaXMg
aXMgZG9uZSBieSB0aGUgdmFyaW91cyBtYXJrX2J1c3kgYW5kCi0gKiBtYXJrX2lkbGUgZnVuY3Rp
b25zLiBGb3IgZGlzcGxheSBwb3dlciBtYW5hZ2VtZW50IGZlYXR1cmVzIHVzaW5nIHRoZXNlCi0g
KiBmdW5jdGlvbnMgaXMgZGVwcmVjYXRlZCBhbmQgc2hvdWxkIGJlIGF2b2lkZWQuCiAgKi8KIAot
CiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRlICJpbnRlbF9kcC5oIgogI2luY2x1ZGUg
ImludGVsX2Rydi5oIgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
