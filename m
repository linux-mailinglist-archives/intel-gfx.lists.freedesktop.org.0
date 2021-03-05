Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 754E832EEF5
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Mar 2021 16:36:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D696D6EBA8;
	Fri,  5 Mar 2021 15:36:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52B496EBA8
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Mar 2021 15:36:13 +0000 (UTC)
IronPort-SDR: ZqAfsSdlMKuos0p7iyhpnmVC0YLSvyknvKkgBa/rOKVXZPrpYWJsuJXqXjzj6oPZQeor9fBHtj
 2VjghD/qJ/HA==
X-IronPort-AV: E=McAfee;i="6000,8403,9914"; a="207404730"
X-IronPort-AV: E=Sophos;i="5.81,225,1610438400"; d="scan'208";a="207404730"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2021 07:36:12 -0800
IronPort-SDR: xLqRziNVzumUc+gnNvxkIc0vHhITNWX/PI+VJWHqcbseb747olagaWYX21Tt4NvFcplHqWrjV6
 VThsjSPy6zMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,225,1610438400"; d="scan'208";a="508092418"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 05 Mar 2021 07:36:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Mar 2021 17:36:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Mar 2021 17:36:04 +0200
Message-Id: <20210305153610.12177-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/6] drm/i915: More SAGV related fixes/cleanups
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
ZSBTQUdWIHdhdGVybWFyayBoYW5kbGluZyBpcyBzdGlsbCBhIGJpdCBvZiBtZXNzLiBMZXQncyB0
cnkgdG8KY2xlYW4gaXQgdXAgYSBiaXQgbW9yZSwgYW5kIGluIHRoZSBwcm9jZXNzIGZpeCB1cCBh
IGNvdXBsZSBvZgptaW5vciBtaXNoYXBzLgoKVmlsbGUgU3lyasOkbMOkICg2KToKICBkcm0vaTkx
NTogRml4IGVuYWJsZWRfcGxhbmVzIGJpdG1hc2sKICBkcm0vaTkxNTogVGlnaHRlbiBTQUdWIGNv
bnN0cmFpbnQgZm9yIHByZS10Z2wKICBkcm0vaTkxNTogQ2hlY2sgU0FHViB3bSBtaW5fZGRiX2Fs
bG9jIHJhdGhlciB0aGFuIHBsYW5lX3Jlc19iCiAgZHJtL2k5MTU6IENhbGN1bGF0ZSBtaW5fZGRi
X2FsbG9jIGZvciB0cmFuc193bQogIGRybS9pOTE1OiBFeHRyYWN0IHNrbF9jaGVja193bV9sZXZl
bCgpIGFuZCBza2xfY2hlY2tfbnYxMl93bV9sZXZlbCgpCiAgZHJtL2k5MTU6IHMvcGxhbmVfcmVz
X2IvYmxvY2tzLyBldGMuCgogLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19w
bGFuZS5jIHwgICA1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyAgfCAgMjQgKy0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aCAgICB8ICAgNiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAg
ICAgIHwgMjcyICsrKysrKysrKystLS0tLS0tLQogNCBmaWxlcyBjaGFuZ2VkLCAxNjUgaW5zZXJ0
aW9ucygrKSwgMTQyIGRlbGV0aW9ucygtKQoKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
