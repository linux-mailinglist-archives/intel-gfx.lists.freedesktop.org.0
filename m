Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FC82D9FA5
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 19:54:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE72B89AB2;
	Mon, 14 Dec 2020 18:54:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 896EF6E0F8
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 18:54:20 +0000 (UTC)
IronPort-SDR: A0oHekjQJA70cXXG/KUjmLpZQsYX8pCa/x+VVY4eN9myjRZE6nlnyMvN7FIQxUYizeQS8xteRQ
 sbbVzebmJYUQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="172191977"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="172191977"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 10:54:19 -0800
IronPort-SDR: 5EwyG5q/Wm3r//jzeHP5nQstXy7RaEmHkf7Yn5aJRlyvurWbR4WoOYpaZB0wggeSbfIr8j1TbJ
 R6aTW1i/3UEg==
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="367570199"
Received: from mbenes1-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.42.53])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 10:54:18 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 10:54:40 -0800
Message-Id: <20201214185440.243537-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] doc: Fix build of documentation after i915 file
 rename
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q29tbWl0IDcwYTJiNDMxYzM2NCAoImRybS9pOTE1L2d0OiBSZW5hbWUgbHJjLmMgdG8KZXhlY2xp
c3RzX3N1Ym1pc3Npb24uYyIpIHJlbmFtZWQgaW50ZWxfbHJjLmMgdG8KaW50ZWxfZXhlY2xpc3Rz
X3N1Ym1pc3Npb24uYyBidXQgZm9yZ290IHRvIHVwZGF0ZSBpOTE1LnJzdC4KCkZpeGVzOiA3MGEy
YjQzMWMzNjQgKCJkcm0vaTkxNS9ndDogUmVuYW1lIGxyYy5jIHRvIGV4ZWNsaXN0c19zdWJtaXNz
aW9uLmMiKQpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClNpZ25l
ZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgot
LS0KIERvY3VtZW50YXRpb24vZ3B1L2k5MTUucnN0IHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9n
cHUvaTkxNS5yc3QgYi9Eb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdAppbmRleCAyMDg2OGYzZDAx
MjMuLjQ4NmM3MjBmMzg5MCAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QK
KysrIGIvRG9jdW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QKQEAgLTQyOCw3ICs0MjgsNyBAQCBVc2Vy
IEJhdGNoYnVmZmVyIEV4ZWN1dGlvbgogTG9naWNhbCBSaW5ncywgTG9naWNhbCBSaW5nIENvbnRl
eHRzIGFuZCBFeGVjbGlzdHMKIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCiAKLS4uIGtlcm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYworLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2V4ZWNsaXN0c19zdWJtaXNzaW9uLmMKICAgIDpkb2M6IExvZ2ljYWwgUmluZ3MsIExvZ2ljYWwg
UmluZyBDb250ZXh0cyBhbmQgRXhlY2xpc3RzCiAKIEdsb2JhbCBHVFQgdmlld3MKLS0gCjIuMjku
MgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
