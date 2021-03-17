Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D246833EEAB
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Mar 2021 11:48:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25A2F6E51C;
	Wed, 17 Mar 2021 10:48:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55FBC6E51C
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 10:48:16 +0000 (UTC)
IronPort-SDR: 1g6MkuJQAsKbVAqD5nX4XxbmQzeTbTZJLfniFsC1S5WP2qQhRfYOA/Ip0mByPUnx9GV3Ar5kqP
 MMhvt6TKtAQw==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="250796783"
X-IronPort-AV: E=Sophos;i="5.81,256,1610438400"; d="scan'208";a="250796783"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 03:48:15 -0700
IronPort-SDR: rSv036u6KGW9W+C3Ef/r6c1QBbp1S/pBdPk+ctXr0bVzdbLzHTjKTtMrWusrADYjgiL6OCIdq9
 GDS0lNI5YTkw==
X-IronPort-AV: E=Sophos;i="5.81,256,1610438400"; d="scan'208";a="412598702"
Received: from pompl-mobl.ger.corp.intel.com (HELO
 zkempczy-mobl2.ger.corp.intel.com) ([10.252.34.158])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 03:48:14 -0700
From: =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Mar 2021 11:47:42 +0100
Message-Id: <20210317104743.94364-1-zbigniew.kempczynski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/1] Drop relocations for new gens
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UGF0Y2ggbGlrZWx5IGlzIHRlbXBvcmFyeSAtIHVudGlsIEphc29uIHdpbGwgZmlndXJlIG91dCB3
aGVyZQp0byBwdXQgaGlzIGNvZGUgYW5kIGF2b2lkIHVubmVjZXNzYXJ5IHdhbGsgb3ZlciB0aGUg
b2JqZWN0cyBhcnJheS4KSSBuZWVkIHRoaXMgdG8gZmluZCBvdXQgd2hhdCB0ZXN0cyB3aWxsIGZh
aWwgd2hlbiB3ZSBkaXNhbGxvdyAKcGFzc2luZyByZWxvY2F0aW9ucyBkYXRhIGluIGV4ZWNidWYu
CgpDdXJyZW50IHBhdGNoCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC80
MjQwNjkvP3Nlcmllcz04Nzk4MCZyZXY9MgpzdGlsbCBhbGxvd3MgcGFzc2luZyByZWxvY2F0aW9u
IGRhdGEuIFNvIHdlIGdvdCBubyAtRUlOVkFMCmZvciBuZXcgaGFyZHdhcmUgd2hhdCBpcyBub3Qg
d2Ugd2FudC4KCldoZW4gcHJlYWQvcHdyaXRlIGRyb3AgKyBhbGxvY2F0b3Igc2VyaWVzIHdpbGwg
YmUgbWVyZ2Ugd2Ugd2FudAp0byByZXJ1biBvZiB0aGF0IHNlcmllcyBhbmQgc2VlIHdoYXQncyBm
YWlsaW5nIG9uIENJLgoKQ2M6IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4K
Q2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CgpaYmlnbmlldyBLZW1w
Y3p5xYRza2kgKDEpOgogIGRybS9pOTE1L2dlbTogRHJvcCByZWxvY2F0aW9uIHN1cHBvcnQgb24g
YWxsIG5ldyBoYXJkd2FyZQoKIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZm
ZXIuYyAgICB8IDIyICsrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNl
cnRpb25zKCspCgotLSAKMi4yNi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
