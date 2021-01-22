Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6881C3010E6
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jan 2021 00:22:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B451A6EA6D;
	Fri, 22 Jan 2021 23:22:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34BBF6E900
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 23:22:32 +0000 (UTC)
IronPort-SDR: 1hLE9Z6xg53GBsuz6uwnFiNiePMQpbBvIdo4//GINKl7UdBGUiaz7vmOK/lCBslgelEfu2gp/y
 Uy12df/W5tgw==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="158703315"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="158703315"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 15:22:31 -0800
IronPort-SDR: B/TK3F+bxPFoUP1LXbM6w7CPxdLxXgr1nBrsRgbQ7l6OA9V7VC4T+nvRMoBzb9aQZPB6bxRqQt
 kAlQeSw3KI4A==
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="392466039"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 22 Jan 2021 15:22:29 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 15:26:47 -0800
Message-Id: <20210122232647.22688-18-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20210122232647.22688-1-manasi.d.navare@intel.com>
References: <20210122232647.22688-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v5 18/18] drm/i915: Fix vblank evasion with vrr
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldp
dGggdnJyIGVuYWJsZWQgdGhlIGhhcmR3YXJlIG5vIGxvbmdlciBsYXRjaGVzIHRoZSByZWdpc3Rl
cnMKYXV0b21hZ2ljYWxseSBhdCB2Ymxhbmsgc3RhcnQuIFRoZSBwb2ludCBhdCB3aGljaCBpdCB3
aWxsIGRvIHRoZQpsYXRjaGluZyBldmVuIHdoZW4gbm8gcHVzaCBoYXMgYmVlbiBzZW50IGlzIHRo
ZSB2bWF4IGRlY2lzaW9uCmJvdW5kYXJ5LiBUaGF0IGlzIHRoZSB0aGluZyB3ZSBuZWVkIHRvIGV2
YWRlIHRvIGF2b2lkIG91cgpyZWdpc3RlciBsYXRjaGluZyB0byBnZXQgc3BsaXQgYmV0d2VlbiB0
d28gZnJhbWVzLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQu
bmF2YXJlQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5h
dmFyZUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9z
cHJpdGUuYyB8IDUgKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Nwcml0ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwpp
bmRleCA2MzUyNmMwZWJkNGMuLjUyMTIwZjU2ZGM1NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCkBAIC0xMDEsNyArMTAxLDEwIEBAIHZvaWQgaW50ZWxf
cGlwZV91cGRhdGVfc3RhcnQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRj
X3N0YXRlKQogCWlmIChuZXdfY3J0Y19zdGF0ZS0+dWFwaS5hc3luY19mbGlwKQogCQlyZXR1cm47
CiAKLQl2Ymxhbmtfc3RhcnQgPSBpbnRlbF9tb2RlX3ZibGFua19zdGFydChhZGp1c3RlZF9tb2Rl
KTsKKwlpZiAobmV3X2NydGNfc3RhdGUtPnZyci5lbmFibGUpCisJCXZibGFua19zdGFydCA9IGlu
dGVsX3Zycl92bWF4X3ZibGFua19zdGFydChuZXdfY3J0Y19zdGF0ZSk7CisJZWxzZQorCQl2Ymxh
bmtfc3RhcnQgPSBpbnRlbF9tb2RlX3ZibGFua19zdGFydChhZGp1c3RlZF9tb2RlKTsKIAogCS8q
IEZJWE1FIG5lZWRzIHRvIGJlIGNhbGlicmF0ZWQgc2Vuc2libHkgKi8KIAltaW4gPSB2Ymxhbmtf
c3RhcnQgLSBpbnRlbF91c2Vjc190b19zY2FubGluZXMoYWRqdXN0ZWRfbW9kZSwKLS0gCjIuMTku
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
