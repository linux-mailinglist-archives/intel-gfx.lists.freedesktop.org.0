Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC83F1CB
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 10:09:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E67748951E;
	Tue, 30 Apr 2019 08:09:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A8B08951E
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 08:09:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 01:09:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,412,1549958400"; d="scan'208";a="169218349"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 30 Apr 2019 01:09:10 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Tue, 30 Apr 2019 11:11:24 +0300
Resent-Message-ID: <87sgtzrjyr.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by jnikula-mobl3 with IMAP (fetchmail-6.4.0.beta4)
 for <jani@localhost> (single-drop); Tue, 23 Apr 2019 12:33:37 +0300 (EEST)
Received: from fmsmga005.fm.intel.com (fmsmga005.fm.intel.com [10.253.24.32])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id A5BAC580435
 for <jani.nikula@linux.intel.com>; Tue, 23 Apr 2019 02:29:06 -0700 (PDT)
Received: from orsmga101.jf.intel.com ([10.7.208.22])
 by fmsmga005-1.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Apr 2019 02:29:06 -0700
IronPort-PHdr: =?us-ascii?q?9a23=3AmUrviRMLDFlgu+/XEgsl6mtUPXoX/o7sNwtQ0KIM?=
 =?us-ascii?q?zox0K/z9pcbcNUDSrc9gkEXOFd2Cra4d0qyK4+u5ACRAuc/H7ClaNsQUFlcsso?=
 =?us-ascii?q?Y/p0QYGsmLCEn2frbBThcRO4B8bmJj5GyxKkNPGczzNBX4q3y26iMOSF2kbVIm?=
 =?us-ascii?q?buv6FZTPgMupyuu854PcYxlShDq6fLh+MAi6oR/eu8ULnIduMKk8xxjGrndVZu?=
 =?us-ascii?q?hd2GdkKU6Okxrm6cq84YJv/z5Mt/498sJLTLn3cbk/QbFEFjotLno75NfstRnN?=
 =?us-ascii?q?TAuP4mUTX2ALmRdWAAbL8Q/3UI7pviT1quRy1i+aPdbrTb8vQjSt871rSB7zhy?=
 =?us-ascii?q?gZMTMy7XzahdZxjKJfpxKhugB/zovJa4ybKPZyYqXQds4BSGFfQsheSTBOAoKk?=
 =?us-ascii?q?b4sOEeUBO/pYr5LgrFcKtBeyGBWgCP/qxjJOm3T437A10/45HA/GwgIuAtwAvn?=
 =?us-ascii?q?fTotr6O6kfSvy5warSwDnfdf5axSvx5Y7VeR4hu/GMWrdwfNLVx0kuDQzFiEyc?=
 =?us-ascii?q?p47iPzOT2eQGrnKV4PBmVemyjGMnqQBxrSKpxss1ionJgYQVyl/f+CpnxoY6ON?=
 =?us-ascii?q?m4R1BgYd6/FZtcrT2VN4xzQs47RWxjpSg0yroDuZGhfSgKzowqxxDFa/OZbYeH?=
 =?us-ascii?q?/wzsVP2SITdkg3JlYKizhxGo8UivzOD3S8q60E5SoyZbjtXBsmoB2h/T58SdVP?=
 =?us-ascii?q?dx41ut1SyS2w3X5exIOV04mbTVJpI73LI8ipUevV7MEyL3gkn6kbGaelsi9+O1?=
 =?us-ascii?q?8eroeK/mqYWZN4JsigHxLKAumsunDOQ9KAcOXmyb9f2k1L3t4EH1WbtKguAyn6?=
 =?us-ascii?q?TWqpzaKsMbpqm2Aw9RzIkv8QqwDzCj0NgAnHkHKkxKeA6fgoT3J13DJOr0APS/?=
 =?us-ascii?q?jli2jjtn2uzKMqf8DpjJIXXPiLLhcqx8605Yxgoz19df55dMB7EDIfL8QEnxuM?=
 =?us-ascii?q?XYDh8+NQy0zP3qB8t71owDXWKAHLSZMLjXsVOS+u0vJOyMaJcPuDnhM/gl++Lu?=
 =?us-ascii?q?jXghlF8fZ6ap25oXZGq+HvRnIEWZfH7sjc0aHGcOvwo+SvHqiVKYXT5SYXayQ7?=
 =?us-ascii?q?wz5jUhBI26CofDQ9PlvLvU/i69H9VwZ2NbDlnERXXhcYTCXfYPdSabCstglCEU?=
 =?us-ascii?q?E7mnV4IlkxqpsVm+g5hgKezd4WU8vJL/1d544aWHlxY18zVvScCU032MSWxytm?=
 =?us-ascii?q?cJQSImmqF5vUF5jFyE1P48y8ZfGcZS6PQBbAYkNNaI1et2EdH9XUTff8mIYFeg?=
 =?us-ascii?q?XtiiRzo2S4R1i/MHfUdxU/yjlBTC0mL+Cr4Pk72GCLQw86TBzz7wKpA5g1rP0q?=
 =?us-ascii?q?gsixEYT9dTOHfu0qJ28QneA6bHnVqdk+ChdfJP8jTK8TKhzGOI+WFfVgE4aazD?=
 =?us-ascii?q?FSQdZ0LQ6NT+4EzqQrmiDbk8KQ4HwsmHfPgZIub1hElLEa+wcO/VZHi8ziLpXU?=
 =?us-ascii?q?6F?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AeAAA12r5cdMLSVdFlHAEBAQQBAQcEA?=
 =?us-ascii?q?QGBUQcBAQsBgnhSWowqX6UFgXsOAQETEAqEQIYpIzQJDgEDAQEBAwEBAgECARM?=
 =?us-ascii?q?BCgsMBxsMJQyCOikBgx8BDQEBNwEvZQEFASIBEhuDBwGCBwEFCpxJPIosgiCCe?=
 =?us-ascii?q?QEBBYEBBQGGHgMGCQEIgSABhnODOIEegVc/hGGCYQQYgTeFcYpXiEGTQgmCCoV?=
 =?us-ascii?q?AT4wPJ4tjiTABjASGPY1+AgQCBAUCBg8hgS6CDjMaI4M8gRd3g2+FFIUIAUMyM?=
 =?us-ascii?q?wGBBD6PLwEB?=
X-IPAS-Result: =?us-ascii?q?A0AeAAA12r5cdMLSVdFlHAEBAQQBAQcEAQGBUQcBAQsBgnh?=
 =?us-ascii?q?SWowqX6UFgXsOAQETEAqEQIYpIzQJDgEDAQEBAwEBAgECARMBCgsMBxsMJQyCO?=
 =?us-ascii?q?ikBgx8BDQEBNwEvZQEFASIBEhuDBwGCBwEFCpxJPIosgiCCeQEBBYEBBQGGHgM?=
 =?us-ascii?q?GCQEIgSABhnODOIEegVc/hGGCYQQYgTeFcYpXiEGTQgmCCoVAT4wPJ4tjiTABj?=
 =?us-ascii?q?ASGPY1+AgQCBAUCBg8hgS6CDjMaI4M8gRd3g2+FFIUIAUMyMwGBBD6PLwEB?=
X-IronPort-AV: E=Sophos;i="5.60,385,1549958400"; d="scan'208";a="63282607"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by mtab.intel.com with ESMTP/TLS/AES128-GCM-SHA256; 23 Apr 2019 02:29:05 -0700
Received: by mail-pf1-f194.google.com with SMTP id 188so7172714pfd.8
 for <jani.nikula@linux.intel.com>; Tue, 23 Apr 2019 02:29:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w4fZiACkBLsuw5BLuZySw+S4JDknvGfC5Ei1Wz8auhg=;
 b=oBZJK6gtoF7FDWbE/A+cjqOEgSBGvf2jfKvsag4V3KPHE85D56DN/jqhwaIiZJP7FP
 8+Scu6s57w9VC594Z8T4W4+2iWF49FzH/Y4d20ftJRIQYgc5nkZMkjLsGc2nTZHcYxWa
 +wi/qoIv1JrtU/fCxVKtanS6JG0gfMFVCWuLgPWxLXE/QmcDWAq/vWxOd+Ei+AspIto+
 E+Zw8wQgnJLVQwteefVrtsn51sjIfEXKbNnCC1QnYhyLaYs5K8gIjHijLq/Z5FJpwqkl
 VDoZobAS1O+oNCv/pQjn5zb/dxXtpKMB+TdHYSJNItTYA2dfSvPk8oypa7ZzIJBOWqff
 Btvw==
X-Gm-Message-State: APjAAAVqWcZfEydDI5tNCp7AReabga4Li2s7Ns+743FEkM98dKvZ+zqX
 GFPy169vTIg0PZs3QQLEZuMXlDsHsNQ5F1NPAkyP5llnlilY8ZX4PDZ8PU+Oe+sH/2tmyVICDQX
 EInIq8fBiV3Q6ObgAUbmdqq2zIjDp5EPWPrLQ1oAyDCsCpRw85sWxPnikGcm4t5kYi2Al9fQfzr
 qm5TKE
X-Google-Smtp-Source: APXvYqzyeawPu0YMyAZZFm6KX9YpYBW5MaleqW0+qkdNuOr2h7cbOgN3OqOXryQp3ByD92IOpbNilQ==
X-Received: by 2002:a63:1d26:: with SMTP id d38mr22898103pgd.357.1556011744623; 
 Tue, 23 Apr 2019 02:29:04 -0700 (PDT)
Received: from localhost.localdomain (123-204-46-122.static.seed.net.tw.
 [123.204.46.122])
 by smtp.gmail.com with ESMTPSA id q10sm18905809pgh.93.2019.04.23.02.29.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Apr 2019 02:29:04 -0700 (PDT)
From: Jian-Hong Pan <jian-hong@endlessm.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 23 Apr 2019 17:28:10 +0800
Message-Id: <20190423092810.28359-1-jian-hong@endlessm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessm-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w4fZiACkBLsuw5BLuZySw+S4JDknvGfC5Ei1Wz8auhg=;
 b=twa/FD3WmOktH9MVUXb/BldyzAa94cTWq+B+S4ebxbShNY2tz68WlGR8/5ZjyL48Gh
 is1gLQKuXAdlVwuuYBQowMOWGgnIU4cLlahPNfTri8ya/Vkqg2xYHyMvm6kCa1JKUHHL
 DB0JMTZ3PHHGcuL1YReWXA8XA0zLfL56ZxME9SxJbU/ULv5oya+8sBH8pu35OH6ORWJe
 pC6g0alS54g3O2Ac9cY73AnwM9VJlHJmNtPofCIbswJQsGaT989Es/9OfoLnGhbBqSlj
 hgPxb/oKA/z6b0ax9JfOa6HYKAsuLpqd1NLUUS5jdBMs2GMG/HGXQQ4kumsm8D3hc1QN
 SA+w==
Subject: [Intel-gfx] [PATCH] i915: disable framebuffer compression on
 GeminiLake
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Daniel Drake <drake@endlessm.com>,
 Jian-Hong Pan <jian-hong@endlessm.com>, linux@endlessm.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGFuaWVsIERyYWtlIDxkcmFrZUBlbmRsZXNzbS5jb20+CgpPbiBtYW55IChhbGw/KSB0
aGUgR2VtaW5pIExha2Ugc3lzdGVtcyB3ZSB3b3JrIHdpdGgsIHRoZXJlIGlzIGZyZXF1ZW50Cm1v
bWVudGFyeSBncmFwaGljYWwgY29ycnVwdGlvbiBhdCB0aGUgdG9wIG9mIHRoZSBzY3JlZW4sIGFu
ZCBpdCBzZWVtcwp0aGF0IGRpc2FibGluZyBmcmFtZWJ1ZmZlciBjb21wcmVzc2lvbiBjYW4gYXZv
aWQgdGhpcy4KClRoZSB0aWNrZXQgd2FzIHJlcG9ydGVkIDYgbW9udGhzIGFnbyBhbmQgaGFzIGFs
cmVhZHkgYWZmZWN0ZWQgYQptdWx0aXR1ZGUgb2YgdXNlcnMsIHdpdGhvdXQgYW55IHJlYWwgcHJv
Z3Jlc3MgYmVpbmcgbWFkZS4gU28sIGxldHMKZGlzYWJsZSBmcmFtZWJ1ZmZlciBjb21wcmVzc2lv
biBvbiBHZW1pbmlMYWtlIHVudGlsIGEgc29sdXRpb24gaXMgZm91bmQuCgpCdWdsaW5rOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDgwODUKU2lnbmVkLW9m
Zi1ieTogRGFuaWVsIERyYWtlIDxkcmFrZUBlbmRsZXNzbS5jb20+ClNpZ25lZC1vZmYtYnk6IEpp
YW4tSG9uZyBQYW4gPGppYW4taG9uZ0BlbmRsZXNzbS5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZmJjLmMgfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9mYmMuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2ZiYy5jCmluZGV4IDY1NmU2ODRlN2M5YS4uZmMwMThmM2Y1
M2ExIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9mYmMuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9mYmMuYwpAQCAtMTI3OCw2ICsxMjc4LDEwIEBAIHN0
YXRpYyBpbnQgaW50ZWxfc2FuaXRpemVfZmJjX29wdGlvbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpCiAJaWYgKCFIQVNfRkJDKGRldl9wcml2KSkKIAkJcmV0dXJuIDA7CiAKKwkv
KiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDgwODUgKi8K
KwlpZiAoSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpCisJCXJldHVybiAwOworCiAJaWYgKElTX0JS
T0FEV0VMTChkZXZfcHJpdikgfHwgSU5URUxfR0VOKGRldl9wcml2KSA+PSA5KQogCQlyZXR1cm4g
MTsKIAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
