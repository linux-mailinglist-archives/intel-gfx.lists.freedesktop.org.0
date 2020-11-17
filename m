Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECCB2B6F0F
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 20:45:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E2536E084;
	Tue, 17 Nov 2020 19:45:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 142C56E06E
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 19:44:58 +0000 (UTC)
IronPort-SDR: RPz8pFbdT98W1dmYzA35AeFHeoaAdYkzpqjxZyRrZbBXnVuPbDP1dSj8W/mX9wxDNusmtoA15l
 Um/dAqd4cpUg==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="171094515"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="171094515"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 11:44:53 -0800
IronPort-SDR: spUKx4TOHhCf4Q5ICOZLfcFJyPl0Ym52T5Vw32PFq9XlHRFi6fKSNaaIQtfHuz8XmlQ1HXDhUv
 fQrgoYxshXMg==
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="359034204"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 17 Nov 2020 11:44:53 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 11:47:15 -0800
Message-Id: <20201117194718.11462-13-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201117194718.11462-1-manasi.d.navare@intel.com>
References: <20201117194718.11462-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 12/15] drm/i915: Disable legacy cursor fastpath for
 bigjoiner
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
ZSBsZWdhY3kgY3Vyc29yIGZhc3RwYXRoIGNvZGUgZG9lc24ndCBkZWFsIHdpdGggYmlnam9pbmVy
LgpEaXNhYmxlIHRoZSBmYXN0cGF0aCBmb3Igbm93LgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hbmFz
aSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDIyMjI0YjhjNDk5OC4uNGQxMWQ1YjA2MDZiIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTY5
MzEsOSArMTY5MzEsMTEgQEAgaW50ZWxfbGVnYWN5X2N1cnNvcl91cGRhdGUoc3RydWN0IGRybV9w
bGFuZSAqX3BsYW5lLAogCS8qCiAJICogV2hlbiBjcnRjIGlzIGluYWN0aXZlIG9yIHRoZXJlIGlz
IGEgbW9kZXNldCBwZW5kaW5nLAogCSAqIHdhaXQgZm9yIGl0IHRvIGNvbXBsZXRlIGluIHRoZSBz
bG93cGF0aAorCSAqCisJICogRklYTUUgYmlnam9pbmVyIGZhc3RwYXRoIHdvdWxkIGJlIGdvb2QK
IAkgKi8KIAlpZiAoIWNydGNfc3RhdGUtPmh3LmFjdGl2ZSB8fCBuZWVkc19tb2Rlc2V0KGNydGNf
c3RhdGUpIHx8Ci0JICAgIGNydGNfc3RhdGUtPnVwZGF0ZV9waXBlKQorCSAgICBjcnRjX3N0YXRl
LT51cGRhdGVfcGlwZSB8fCBjcnRjX3N0YXRlLT5iaWdqb2luZXIpCiAJCWdvdG8gc2xvdzsKIAog
CS8qCi0tIAoyLjE5LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
