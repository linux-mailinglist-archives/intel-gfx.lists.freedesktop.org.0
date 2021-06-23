Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6015E3B20AC
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 20:56:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDD3E6E979;
	Wed, 23 Jun 2021 18:56:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFBE46E979
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 18:56:06 +0000 (UTC)
IronPort-SDR: jy6sSNXc4eI+L/pvIfiToDcSmqKD3ybbz++LXGccfyIjqblifvWtD8V9B+6k+tcmA8DUV2MM6A
 P4LLDNqXdnOg==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="207369064"
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="207369064"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 11:56:05 -0700
IronPort-SDR: CzabV6MDHmG7vjSKruUIv8vt0AeOOhIRy4H2dB+7hq8qjLHlPA8vwSsOvMSpDvT0Sd99Y/lI0m
 ytTtWKhrKtJg==
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="453138155"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 23 Jun 2021 11:56:05 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Jun 2021 12:04:55 -0700
Message-Id: <20210623190455.29340-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Fix shared dpll mismatch for
 bigjoiner slave
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

Q3VycmVudGx5IHdoZW4gd2UgZG8gdGhlIEhXIHN0YXRlIHJlYWRvdXQsIHdlIGRvbnQgc2V0IHRo
ZSBzaGFyZWQgZHBsbCB0byBOVUxMCmZvciB0aGUgYmlnam9pbmVyIHNsYXZlIHdoaWNoIHNob3Vs
ZCBub3QgaGF2ZSBhIERQTEwgYXNzaWduZWQuIFNvIGl0IGhhcwpzb21lIGdhcmJhZ2Ugd2hpbGUg
dGhlIEhXIHN0YXRlIHJlYWRvdXQgaXMgTlVMTC4gU28gZXhwbGljaXRseSByZXNldAp0aGUgc2hh
cmVkIGRwbGwgZm9yIGJpZ2pvaW5lciBzbGF2ZSBwaXBlLgoKQnVnOiBodHRwczovL2dpdGxhYi5m
cmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzM0NjUKQ2M6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBBbmtpdCBOYXV0aXlhbCA8YW5r
aXQuay5uYXV0aXlhbEBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1h
bmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCmluZGV4IDZiZTFiMzFhZjA3Yi4uNjA2YjkxMDdkMWNmIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtODk3MSw4ICs4OTcxLDEw
IEBAIHZlcmlmeV9jcnRjX3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCQkJIihleHBl
Y3RlZCAlaSwgZm91bmQgJWkpXG4iLAogCQkJbmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZSwgY3J0
Yy0+YWN0aXZlKTsKIAotCWlmIChuZXdfY3J0Y19zdGF0ZS0+Ymlnam9pbmVyX3NsYXZlKQorCWlm
IChuZXdfY3J0Y19zdGF0ZS0+Ymlnam9pbmVyX3NsYXZlKSB7CisJCXBpcGVfY29uZmlnLT5zaGFy
ZWRfZHBsbCA9IE5VTEw7CiAJCW1hc3RlciA9IG5ld19jcnRjX3N0YXRlLT5iaWdqb2luZXJfbGlu
a2VkX2NydGM7CisJfQogCiAJZm9yX2VhY2hfZW5jb2Rlcl9vbl9jcnRjKGRldiwgJm1hc3Rlci0+
YmFzZSwgZW5jb2RlcikgewogCQllbnVtIHBpcGUgcGlwZTsKLS0gCjIuMTkuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
