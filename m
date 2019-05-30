Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB082F95C
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2019 11:25:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8596F6E145;
	Thu, 30 May 2019 09:25:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 677BD6E13A;
 Thu, 30 May 2019 09:25:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 May 2019 02:25:03 -0700
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 May 2019 02:25:01 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 May 2019 11:24:25 +0200
Message-Id: <20190530092426.23880-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 0/1] drm/i915: Split off pci_driver.remove()
 tail to drm_driver.release()
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpJIGRvIHJlYWxpemUgbW9yZSB3b3JrIG5lZWRzIHRvIGJlIGRvbmUgdG8gZ2V0IGEgY2xl
YW4gaG90dW5wbHVnCnNvbHV0aW9uLCBob3dldmVyIEkgbmVlZCB5b3VyIGNvbW1lbnRzIHRvIG1h
a2Ugc3VyZSB0aGF0IEknbSBnb2luZyBpbgp0aGUgcmlnaHQgZGlyZWN0aW9uLgoKU28gZmFyIEkg
aGF2ZSBubyBnb29kIGlkZWEgaG93IHRvIHJlc29sdmUgcG1fcnVudGltZV9nZXRfc3luYygpCmZh
aWx1cmVzIG9uIG91dHN0YW5kaW5nIGRldmljZSBmaWxlIGNsb3NlIGFmdGVyIHN1Y2Nlc3NmdWxs
IGRyaXZlcgp1bmJpbmQuCgpUaGFua3MsCkphbnVzegoKCkphbnVzeiBLcnp5c3p0b2ZpayAoMSk6
CiAgZHJtL2k5MTU6IFNwbGl0IG9mZiBwY2lfZHJpdmVyLnJlbW92ZSgpIHRhaWwgdG8gZHJtX2Ry
aXZlci5yZWxlYXNlKCkKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIHwgMTcgKysr
KysrKysrKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggfCAgMSArCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIHwgMTAgKysrKysrKysrLQogMyBmaWxlcyBj
aGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKLS0gCjIuMjEuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
