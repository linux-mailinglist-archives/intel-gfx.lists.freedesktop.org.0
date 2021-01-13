Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE0B2F54CA
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 23:05:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E571E6EC7E;
	Wed, 13 Jan 2021 22:05:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37AA26EC77
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 22:05:35 +0000 (UTC)
IronPort-SDR: +LTYpNEZ/6lTkhivnrTmQ50ubjJFnB0CINZW9Vx1qkEVh38YtPmfZf6nXJ5fpIrekYeNn5Xdqw
 /onQpE0c+2tA==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="175696996"
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="175696996"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 14:05:33 -0800
IronPort-SDR: Sdejrh9cn5fFqBAngffcZi/54huagskJvqdEdpItvv4dq0SzHnfLwaUowNXpkI+6ZGGm+uJvK5
 /Zv/a/l3leYw==
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="400696591"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 13 Jan 2021 14:05:33 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jan 2021 14:09:35 -0800
Message-Id: <20210113220935.4151-19-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20210113220935.4151-1-manasi.d.navare@intel.com>
References: <20210113220935.4151-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 18/18] drm/i915: Fix vblank evasion with vrr
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
bmF2YXJlQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Nwcml0ZS5jIHwgNSArKysrLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfc3ByaXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5j
CmluZGV4IDBlODJkMTYyOWQyZC4uNTMwY2UwNDk3NTU5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKQEAgLTEwMSw3ICsxMDEsMTAgQEAgdm9pZCBpbnRl
bF9waXBlX3VwZGF0ZV9zdGFydChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2Ny
dGNfc3RhdGUpCiAJaWYgKG5ld19jcnRjX3N0YXRlLT51YXBpLmFzeW5jX2ZsaXApCiAJCXJldHVy
bjsKIAotCXZibGFua19zdGFydCA9IGludGVsX21vZGVfdmJsYW5rX3N0YXJ0KGFkanVzdGVkX21v
ZGUpOworCWlmIChuZXdfY3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSkKKwkJdmJsYW5rX3N0YXJ0ID0g
aW50ZWxfdnJyX3ZtYXhfdmJsYW5rX3N0YXJ0KG5ld19jcnRjX3N0YXRlKTsKKwllbHNlCisJCXZi
bGFua19zdGFydCA9IGludGVsX21vZGVfdmJsYW5rX3N0YXJ0KGFkanVzdGVkX21vZGUpOwogCiAJ
LyogRklYTUUgbmVlZHMgdG8gYmUgY2FsaWJyYXRlZCBzZW5zaWJseSAqLwogCW1pbiA9IHZibGFu
a19zdGFydCAtIGludGVsX3VzZWNzX3RvX3NjYW5saW5lcyhhZGp1c3RlZF9tb2RlLAotLSAKMi4x
OS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
