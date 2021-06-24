Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2743B3706
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 21:31:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 171CD6E084;
	Thu, 24 Jun 2021 19:31:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BF766E084;
 Thu, 24 Jun 2021 19:31:07 +0000 (UTC)
IronPort-SDR: Xxtebtluka9fv3XGaelHGvaKM8d/zvXkzo7rT/RvBagjOTTzzLspiRlA6fDBTRsC8S0lVsJcI9
 4vCzbHEBxmEA==
X-IronPort-AV: E=McAfee;i="6200,9189,10025"; a="293179994"
X-IronPort-AV: E=Sophos;i="5.83,297,1616482800"; d="scan'208";a="293179994"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 12:31:07 -0700
IronPort-SDR: RVyp65AthLR1dGqWyLp1qVrpfRCl4+CP714Kh9BkMvyCWSt3/ESX7pbPBYl8IahV40e7Q8IBHZ
 MWZATn31g7QA==
X-IronPort-AV: E=Sophos;i="5.83,297,1616482800"; d="scan'208";a="487889506"
Received: from mkayyal-mobl.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.243])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 12:31:04 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 24 Jun 2021 21:30:43 +0200
Message-Id: <20210624193045.5087-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] drm/i915,
 drm/ttm: Update the ttm_move_memcpy() interface
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHR0bV9tb3ZlX21lbWNweSgpIGZ1bmN0aW9uIHdhcyBpbnRlbmRlZCB0byBiZSBhYmxlIHRv
IGJlIHVzZWQgYXN5bmMKdW5kZXIgYSBmZW5jZS4KV2UgYXJlIGdvaW5nIHRvIHV0aWxpemUgdGhh
dCBhcyBhIGZhbGxiYWNrIGlmIHRoZSBncHUgY2xlYXJpbmcgYmxpdCBmYWlscwpiZWZvcmUgd2Ug
c2V0IHVwIENQVS0gb3IgR1BVIHB0ZXMgdG8gdGhlIG1lbW9yeSByZWdpb24uCkJ1dCB0byBhY2Nv
bXBsaXNoIHRoYXQgdGhlIGJvIGFyZ3VtZW50IHRvIHR0bV9tb3ZlX21lbWNweSgpIG5lZWRzIHRv
IGJlCnJlcGxhY2VkLgoKUGF0Y2ggMSByZW9yZ2FuaXplcyB0aGUgaTkxNSB0dG0gbW92ZSBjb2Rl
IGEgYml0IHRvIG1ha2UgdGhlIGNoYW5nZQppbiBwYXRjaCAyIHNtYWxsZXIuClBhdGNoIDIgdXBk
YXRlcyB0aGUgdHRtX21vdmVfbWVtY3B5KCkgaW50ZXJmYWNlLgoKVGhvbWFzIEhlbGxzdHLDtm0g
KDIpOgogIGRybS9pOTE1L3R0bTogUmVvcmdhbml6ZSB0aGUgdHRtIG1vdmUgY29kZSBzb21ld2hh
dAogIGRybS90dG0sIGRybS9pOTE1OiBVcGRhdGUgdHRtX21vdmVfbWVtY3B5IGZvciBhc3luYyB1
c2UKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgfCA3MCArKysrKysr
KysrKysrKy0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib191dGlsLmMgICAg
ICAgfCAyMCArKystLS0tCiBpbmNsdWRlL2RybS90dG0vdHRtX2JvX2RyaXZlci5oICAgICAgICAg
fCAgMiArLQogMyBmaWxlcyBjaGFuZ2VkLCA1MSBpbnNlcnRpb25zKCspLCA0MSBkZWxldGlvbnMo
LSkKCi0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
