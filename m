Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 883AF2B6F0E
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 20:45:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F72F6E09E;
	Tue, 17 Nov 2020 19:45:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B4FE6E06D
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 19:44:55 +0000 (UTC)
IronPort-SDR: vo9DADu58yTgoeWby3L4DpMz1c0ZHku2ECuapBu3j+sbQUH2gWNeNRegFW7HDo/BNWLCqbwibz
 D00CeRcedYXw==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="232612543"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="232612543"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 11:44:53 -0800
IronPort-SDR: x1y6GkjWebWGRqHWMh6D0Pj2IWUB+iYPUqExcsj9ejmPMLRkszjUBAABfVk78+w+dy4w+/zWt/
 EdVXmreWlYBg==
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="359034209"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 17 Nov 2020 11:44:53 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 11:47:17 -0800
Message-Id: <20201117194718.11462-15-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201117194718.11462-1-manasi.d.navare@intel.com>
References: <20201117194718.11462-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 14/15] drm/i915: Add bigjoiner state dump
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFk
ZCBhIGJpZyBvZiBiaWdqb2luZXIgaW5mb3JtYXRpb24gdG8gdGhlIHN0YXRlIGR1bXAuCgpTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgpSZXZpZXdlZC1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDQgKysr
KwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggYWNkNjRlNzg4YTM2Li41YzA3Yzc0ZDQz
OTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBA
IC0xMzM4NCw2ICsxMzM4NCwxMCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kdW1wX3BpcGVfY29uZmln
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywKIAkJICAgIHRyYW5z
Y29kZXJfbmFtZShwaXBlX2NvbmZpZy0+bWFzdGVyX3RyYW5zY29kZXIpLAogCQkgICAgcGlwZV9j
b25maWctPnN5bmNfbW9kZV9zbGF2ZXNfbWFzayk7CiAKKwlkcm1fZGJnX2ttcygmZGV2X3ByaXYt
PmRybSwgImJpZ2pvaW5lcjogJXNcbiIsCisJCSAgICBwaXBlX2NvbmZpZy0+Ymlnam9pbmVyX3Ns
YXZlID8gInNsYXZlIiA6CisJCSAgICBwaXBlX2NvbmZpZy0+Ymlnam9pbmVyID8gIm1hc3RlciIg
OiAibm8iKTsKKwogCWlmIChwaXBlX2NvbmZpZy0+aGFzX3BjaF9lbmNvZGVyKQogCQlpbnRlbF9k
dW1wX21fbl9jb25maWcocGlwZV9jb25maWcsICJmZGkiLAogCQkJCSAgICAgIHBpcGVfY29uZmln
LT5mZGlfbGFuZXMsCi0tIAoyLjE5LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
