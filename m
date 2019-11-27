Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0C610B355
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 17:32:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C54C89951;
	Wed, 27 Nov 2019 16:32:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1E0989951;
 Wed, 27 Nov 2019 16:32:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 08:32:55 -0800
X-IronPort-AV: E=Sophos;i="5.69,250,1571727600"; d="scan'208";a="383550458"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 08:32:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: linux-fbdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 27 Nov 2019 18:31:59 +0200
Message-Id: <5c25b31242a3ae2326ccf163e5be5ae401b04b49.1574871797.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1574871797.git.jani.nikula@intel.com>
References: <cover.1574871797.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 03/13] video: smscufx: don't restore fb_mmap
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
Cc: jani.nikula@intel.com, Steve Glendinning <steve.glendinning@shawell.net>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RGVmZXJyZWQgSU8gbm93IHByZXNlcnZlcyB0aGUgZmJfb3BzLgoKQ2M6IFN0ZXZlIEdsZW5kaW5u
aW5nIDxzdGV2ZS5nbGVuZGlubmluZ0BzaGF3ZWxsLm5ldD4KQ2M6IGxpbnV4LWZiZGV2QHZnZXIu
a2VybmVsLm9yZwpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvdmlkZW8vZmJkZXYvc21zY3VmeC5jIHwgMSAtCiAxIGZpbGUgY2hh
bmdlZCwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvc21z
Y3VmeC5jIGIvZHJpdmVycy92aWRlby9mYmRldi9zbXNjdWZ4LmMKaW5kZXggMGUwZjViYmZjNWVm
Li5lMzYyZDdkYTg3ZmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvc21zY3VmeC5j
CisrKyBiL2RyaXZlcnMvdmlkZW8vZmJkZXYvc21zY3VmeC5jCkBAIC0xMTcwLDcgKzExNzAsNiBA
QCBzdGF0aWMgaW50IHVmeF9vcHNfcmVsZWFzZShzdHJ1Y3QgZmJfaW5mbyAqaW5mbywgaW50IHVz
ZXIpCiAJCWZiX2RlZmVycmVkX2lvX2NsZWFudXAoaW5mbyk7CiAJCWtmcmVlKGluZm8tPmZiZGVm
aW8pOwogCQlpbmZvLT5mYmRlZmlvID0gTlVMTDsKLQkJaW5mby0+ZmJvcHMtPmZiX21tYXAgPSB1
Znhfb3BzX21tYXA7CiAJfQogCiAJcHJfZGVidWcoInJlbGVhc2VkIC9kZXYvZmIlZCB1c2VyPSVk
IGNvdW50PSVkIiwKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
