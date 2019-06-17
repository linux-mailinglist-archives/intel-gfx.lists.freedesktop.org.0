Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA3647ECA
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 11:48:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC52D891A0;
	Mon, 17 Jun 2019 09:48:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5334D891A3
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 09:48:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 02:48:42 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 17 Jun 2019 02:48:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2019 12:51:08 +0300
Message-Id: <20190617095108.22118-12-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190617095108.22118-1-jani.nikula@intel.com>
References: <20190617095108.22118-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 11/11] drm/i915: use wildcard to ensure all
 headers stay self-contained
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

U2tpcCB0aGUgZ2VuZXJhdGVkIGk5MTVfb2FfKi5oIGZpbGVzLgoKU2lnbmVkLW9mZi1ieTogSmFu
aSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9NYWtlZmlsZS5oZWFkZXItdGVzdCB8IDI5ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDI4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QKaW5kZXggOTE5ZDNhODQ4YjBiLi5mNjY0MWVj
YTBkMmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10
ZXN0CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0CkBAIC0y
LDM0ICsyLDcgQEAKICMgQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KIAogIyBU
ZXN0IHRoZSBoZWFkZXJzIGFyZSBjb21waWxhYmxlIGFzIHN0YW5kYWxvbmUgdW5pdHMKLWhlYWRl
cl90ZXN0IDo9IFwKLQlpOTE1X2FjdGl2ZV90eXBlcy5oIFwKLQlpOTE1X2RlYnVnZnMuaCBcCi0J
aTkxNV9kcnYuaCBcCi0JaTkxNV9maXhlZC5oIFwKLQlpOTE1X2dlbV9ndHQuaCBcCi0JaTkxNV9n
bG9iYWxzLmggXAotCWk5MTVfaXJxLmggXAotCWk5MTVfcGFyYW1zLmggXAotCWk5MTVfcHJpb2xp
c3RfdHlwZXMuaCBcCi0JaTkxNV9wdmluZm8uaCBcCi0JaTkxNV9yZWcuaCBcCi0JaTkxNV9zY2hl
ZHVsZXJfdHlwZXMuaCBcCi0JaTkxNV90aW1lbGluZV90eXBlcy5oIFwKLQlpOTE1X3V0aWxzLmgg
XAotCWk5MTVfdmdwdS5oIFwKLQlpbnRlbF9jc3IuaCBcCi0JaW50ZWxfZHJ2LmggXAotCWludGVs
X2d1Y19jdC5oIFwKLQlpbnRlbF9ndWNfZndpZi5oIFwKLQlpbnRlbF9ndWNfcmVnLmggXAotCWlu
dGVsX2d2dC5oIFwKLQlpbnRlbF9wbS5oIFwKLQlpbnRlbF9ydW50aW1lX3BtLmggXAotCWludGVs
X3NpZGViYW5kLmggXAotCWludGVsX3VjX2Z3LmggXAotCWludGVsX3VuY29yZS5oIFwKLQlpbnRl
bF93YWtlcmVmLmgKK2hlYWRlcl90ZXN0IDo9ICQobm90ZGlyICQoZmlsdGVyLW91dCAkKHNyYykv
aTkxNV9vYV8lLmgsJCh3aWxkY2FyZCAkKHNyYykvKi5oKSkpCiAKIHF1aWV0X2NtZF9oZWFkZXJf
dGVzdCA9IEhEUlRFU1QgJEAKICAgICAgIGNtZF9oZWFkZXJfdGVzdCA9IGVjaG8gIlwjaW5jbHVk
ZSBcIiQoPEYpXCIiID4gJEAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
