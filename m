Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C6F278934
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 15:17:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C8CF6ECE8;
	Fri, 25 Sep 2020 13:17:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 770A96ECE8
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Sep 2020 13:16:59 +0000 (UTC)
IronPort-SDR: yhtdnjJRJm3g460EXxqLsJx6w4JV1TsNqR8iNklqAvRsZAIs4UZuddjP0B1/kwuL19UXKhBYPw
 gul8P3G/0Zww==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="246302201"
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="246302201"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 06:16:59 -0700
IronPort-SDR: 8ivMu7ZMiQsJg8Bx+qnJIGW2icJ5aoDzA780ylIckMmoz+uNDRwfzTO+0qIA9DSXSci7Gnn6iO
 IINtJp4ZCRbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="348382776"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 25 Sep 2020 06:16:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Sep 2020 16:16:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Sep 2020 16:16:47 +0300
Message-Id: <20200925131656.10022-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/9] drm/i915: Finish (de)gamma readout prep bits
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBlYXN5IHByZXAgc3R1ZmYgZnJvbSBteSBlYXJsaWVyIChkZSlnYW1tYSByZWFkb3V0IHNlcmll
cy4KQWxsIHJldmlld2VkIGFscmVhZHkgYnkgVW1hICh0aGFua3MpLiBUaGUgcmVzdCBvZiB0aGF0
IHNlcmllcwpzdGlsbCBuZWVkcyBzb21lIHdvcmsuCgpWaWxsZSBTeXJqw6Rsw6QgKDkpOgogIGRy
bS9pOTE1OiBGaXggc3RhdGUgY2hlY2tlciBody5hY3RpdmUvaHcuZW5hYmxlIHJlYWRvdXQKICBk
cm0vaTkxNTogTW92ZSBNU1QgbWFzdGVyIHRyYW5zY29kZXIgZHVtcCBlYXJsaWVyCiAgZHJtL2k5
MTU6IEluY2x1ZGUgdGhlIExVVCBzaXplcyBpbiB0aGUgc3RhdGUgZHVtcAogIGRybS9pOTE1OiBz
L2dsa19yZWFkX2x1dF8xMC9iZHdfcmVhZF9sdXRfMTAvCiAgZHJtL2k5MTU6IFJlc2V0IGdsayBk
ZWdhbW1hIGluZGV4IGFmdGVyIHByb2dyYW1taW5nL3JlYWRvdXQKICBkcm0vaTkxNTogU2h1ZmZs
ZSBjaHZfY2dtX2dhbW1hX3BhY2soKSBhcm91bmQgYSBiaXQKICBkcm0vaTkxNTogUmVsb2NhdGUg
Q0hWIENHTSBnYW1tYSBtYXNrcwogIGRybS9pOTE1OiBQb2xpc2ggYmR3X3JlYWRfbHV0XzEwKCkg
YSBiaXQKICBkcm0vaTkxNTogUmVwbGFjZSBzb21lIGdhbW1hX21vZGUgaWZzIHdpdGggc3dpdGNo
ZXMKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgICB8IDEyNCAr
KysrKysrKysrKysrKy0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyB8ICAyNSArKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAg
ICAgICAgICB8ICAgOSArLQogMyBmaWxlcyBjaGFuZ2VkLCAxMTMgaW5zZXJ0aW9ucygrKSwgNDUg
ZGVsZXRpb25zKC0pCgotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
