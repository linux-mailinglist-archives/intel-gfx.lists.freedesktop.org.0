Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5246E10D407
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 11:30:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A907D6E8B5;
	Fri, 29 Nov 2019 10:30:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 645406E8B6;
 Fri, 29 Nov 2019 10:30:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 02:30:25 -0800
X-IronPort-AV: E=Sophos;i="5.69,257,1571727600"; d="scan'208";a="360034665"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 02:30:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org
Date: Fri, 29 Nov 2019 12:29:34 +0200
Message-Id: <0f12bb51a6f2a656571cd21230b7e9d5be320db4.1575022735.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1575022735.git.jani.nikula@intel.com>
References: <cover.1575022735.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 04/14] video: udlfb: don't restore fb_mmap
 after deferred IO cleanup
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
Cc: jani.nikula@intel.com, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, Bernie Thompson <bernie@plugable.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RGVmZXJyZWQgSU8gbm93IHByZXNlcnZlcyB0aGUgZmJfb3BzLgoKQ2M6IEJlcm5pZSBUaG9tcHNv
biA8YmVybmllQHBsdWdhYmxlLmNvbT4KQ2M6IGxpbnV4LWZiZGV2QHZnZXIua2VybmVsLm9yZwpS
ZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KU2lnbmVk
LW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L3ZpZGVvL2ZiZGV2L3VkbGZiLmMgfCAxIC0KIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy92aWRlby9mYmRldi91ZGxmYi5jIGIvZHJpdmVycy92aWRl
by9mYmRldi91ZGxmYi5jCmluZGV4IGZlMzczYjYzZGRkNi4uMDc5MDVkMzg1OTQ5IDEwMDY0NAot
LS0gYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L3VkbGZiLmMKKysrIGIvZHJpdmVycy92aWRlby9mYmRl
di91ZGxmYi5jCkBAIC0xMDM3LDcgKzEwMzcsNiBAQCBzdGF0aWMgaW50IGRsZmJfb3BzX3JlbGVh
c2Uoc3RydWN0IGZiX2luZm8gKmluZm8sIGludCB1c2VyKQogCQlmYl9kZWZlcnJlZF9pb19jbGVh
bnVwKGluZm8pOwogCQlrZnJlZShpbmZvLT5mYmRlZmlvKTsKIAkJaW5mby0+ZmJkZWZpbyA9IE5V
TEw7Ci0JCWluZm8tPmZib3BzLT5mYl9tbWFwID0gZGxmYl9vcHNfbW1hcDsKIAl9CiAKIAlkZXZf
ZGJnKGluZm8tPmRldiwgInJlbGVhc2UsIHVzZXI9JWQgY291bnQ9JWRcbiIsIHVzZXIsIGRsZmIt
PmZiX2NvdW50KTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
