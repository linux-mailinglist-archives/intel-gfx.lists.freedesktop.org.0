Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC6751CC4
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 23:07:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A45389DAB;
	Mon, 24 Jun 2019 21:07:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ADDA89D6C
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 21:07:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jun 2019 14:07:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,413,1557212400"; d="scan'208";a="163740794"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by orsmga003.jf.intel.com with ESMTP; 24 Jun 2019 14:07:08 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jun 2019 14:08:42 -0700
Message-Id: <20190624210850.17223-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/8] Enable Transcoder Port Sync feature for
 tiled displays
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

Rmlyc3QgdHdvIHBhdGNoZXMgYXJlIGNsZWFudXAgcGF0Y2hlcyB3aXRoIG5vIGZ1bmN0aW9uYWwg
Y2hhbmdlcyB0bwpyZW5hbWUgdGhlIGV4aXN0aW5nIHVwZGF0ZV9jcnRjKCkgaG9vayB0byBjb21t
aXRfbW9kZXNldF9lbmFibGVzKCkgdG8gYmV0dGVyCm1hdGNoIHRoZSBkcm1fYXRvbWljIG5hbWlu
ZyBjb252ZW50aW9ucy4KVGhpcyBhbHNvIHByZXBhcmVzIHRvIGFkZCBuZXcgaG9vayBmb3IgSUNM
IHNpbmNlIHRoYXQgYWRkcyBzdXBwb3J0IGZvcgp0cmFuc2NvZGVyIHBvcnQgc3luYyBmZWF0dXJl
LgoKUmVzdCBvZiB0aGUgcGF0Y2hlcyBlbmFibGUgdHJhbnNjb2RlciBwb3J0IHN5bmMgZmVhdHVy
ZSBzdGFydGluZyBHRU4gMTEKcmVxdWlyZWQgdG8gc3luY2hyb25pemUgdGhlIHR3byB0aWxlIHNl
bnQgYWNyb3NzIHR3byBEUCBTU1QgY29ubmVjdG9ycy4KClRoaXMgaGFzIGJlZW4gdmFsaWRhdGVk
IHVzaW5nIElHVCB0byBlbmFibGUgRGVsbCB0aWxlZCBtb25pdG9yIGluIGEgMiBwaXBlCjIgcG9y
dCBjb25maWd1cmF0aW9uLgoKTWFuYXNpIE5hdmFyZSAoOCk6CiAgZHJtL2k5MTUvZGlzcGxheTog
UmVuYW1lIHVwZGF0ZV9jcnRjcygpIHRvIGNvbW1pdF9tb2Rlc2V0X2VuYWJsZXMoKQogIGRybS9p
OTE1L2Rpc3BsYXk6IE1vdmUgdGhlIGNvbW1pdF90YWlsKCkgZGlzYWJsZSBzZXF1ZW5jZSB0bwog
ICAgY29tbWl0X21vZGVzZXRfZGlzYWJsZXMoKSBob29rCiAgZHJtL2k5MTUvZGlzcGxheS9pY2w6
IFNhdmUgTWFzdGVyIHRyYW5zY29kZXIgaW4gc2xhdmUncyBjcnRjX3N0YXRlIGZvcgogICAgVHJh
bnNjb2RlciBQb3J0IFN5bmMKICBkcm0vaTkxNS9kaXNwbGF5L2ljbDogRW5hYmxlIFRSQU5TQ09E
RVIgUE9SVCBTWU5DIGZvciB0aWxlZCBkaXNwbGF5cwogICAgYWNyb3NzIHNlcGFyYXRlIHBvcnRz
CiAgZHJtL2k5MTUvZGlzcGxheS9pY2w6IEhXIHN0YXRlIHJlYWRvdXQgZm9yIHRyYW5zY29kZXIg
cG9ydCBzeW5jIGNvbmZpZwogIGRybS9pOTE1L2Rpc3BsYXkvaWNsOiBFbmFibGUgbWFzdGVyLXNs
YXZlcyBpbiB0cmFucyBwb3J0IHN5bmMgbW9kZSBpbgogICAgY29ycmVjdCBvcmRlcgogIGRybS9p
OTE1L2Rpc3BsYXkvaWNsOiBEaXNhYmxlIHRyYW5zY29kZXIgcG9ydCBzeW5jIGFzIHBhcnQgb2YK
ICAgIGNydGNfZGlzYWJsZSgpIHNlcXVlbmNlCiAgZHJtL2k5MTUvZGlzcGxheS9pY2w6IEluIHBv
cnQgc3luYyBtb2RlIGRpc2FibGUgc2xhdmVzIGZpcnN0IHRoZW4KICAgIG1hc3RlcnMKCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICB8ICAgMyArLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA2NDcgKysrKysrKysrKysr
KysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggfCAg
IDUgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgfCAgIDMg
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5oICAgICAgICAgICAgIHwgICA2ICsK
IDUgZmlsZXMgY2hhbmdlZCwgNjE2IGluc2VydGlvbnMoKyksIDQ4IGRlbGV0aW9ucygtKQoKLS0g
CjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
