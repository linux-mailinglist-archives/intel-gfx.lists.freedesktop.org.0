Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0127556C14
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 16:33:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDFC26E44F;
	Wed, 26 Jun 2019 14:33:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69C926E44F
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 14:33:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 07:33:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="183182738"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2019 07:33:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jun 2019 17:36:17 +0300
Message-Id: <20190626143618.21800-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: prefix header search path with
 $(srctree)/
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UGVyIGNvbW1pdCA0MzA2OGNiN2JhMWYgKCJkcm06IHByZWZpeCBoZWFkZXIgc2VhcmNoIHBhdGhz
IHdpdGgKJChzcmN0cmVlKS8iKSB0aGlzIGlzIHdoYXQgd2Ugc2hvdWxkIGJlIGRvaW5nLiBGb2xs
b3cgc3VpdC4KCkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2ln
bmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKaW5kZXggODRhYzBmZDFi
OGQwLi43Y2FlZDE3ZDNiYzYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2Vm
aWxlCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCkBAIC0zNSw3ICszNSw3IEBA
IHN1YmRpci1jY2ZsYWdzLXkgKz0gXAogIyBFeHRyYSBoZWFkZXIgdGVzdHMKIGluY2x1ZGUgJChz
cmMpL01ha2VmaWxlLmhlYWRlci10ZXN0CiAKLXN1YmRpci1jY2ZsYWdzLXkgKz0gLUkkKHNyYykK
K3N1YmRpci1jY2ZsYWdzLXkgKz0gLUkkKHNyY3RyZWUpLyQoc3JjKQogCiAjIFBsZWFzZSBrZWVw
IHRoZXNlIGJ1aWxkIGxpc3RzIHNvcnRlZCEKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
