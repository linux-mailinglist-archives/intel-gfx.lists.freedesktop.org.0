Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C13EB583
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 17:57:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6C206F394;
	Thu, 31 Oct 2019 16:57:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C2886F394
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 16:56:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 09:56:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,252,1569308400"; d="scan'208";a="204259766"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 31 Oct 2019 09:56:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Oct 2019 18:56:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Oct 2019 18:56:46 +0200
Message-Id: <20191031165652.10868-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191031165652.10868-1-ville.syrjala@linux.intel.com>
References: <20191031165652.10868-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] drm/i915: Expose 10:10:10 XRGB formats on
 SNB-BDW sprites
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNO
Qi1CRFcgc3VwcG9ydCAxMDoxMDoxMCBmb3JtYXRzIG9uIHRoZSBzcHJpdGUgcGxhbmVzLiBMZXQn
cyBleHBvc2UKdGhlbS4KCnYyOiBSZWJhc2UgZHVlIHRvIGZwMTYgbGFuZGluZwoKU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2
aWV3ZWQtYnk6IEp1aGEtUGVra2EgSGVpa2tpbGEgPGp1aGFwZWtrYS5oZWlra2lsYUBnbWFpbC5j
b20+ClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgfCAxNiArKysrKysr
KysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCmluZGV4IGVkYzQxZmM0MDcyNi4uNTE0
YjYyMDM3OGQ1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Nwcml0ZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRl
LmMKQEAgLTEzNDgsNiArMTM0OCwxMiBAQCBzdGF0aWMgdTMyIGl2Yl9zcHJpdGVfY3RsKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCWNhc2UgRFJNX0ZPUk1BVF9Y
UkdCODg4ODoKIAkJc3ByY3RsIHw9IFNQUklURV9GT1JNQVRfUkdCWDg4ODsKIAkJYnJlYWs7CisJ
Y2FzZSBEUk1fRk9STUFUX1hCR1IyMTAxMDEwOgorCQlzcHJjdGwgfD0gU1BSSVRFX0ZPUk1BVF9S
R0JYMTAxMDEwIHwgU1BSSVRFX1JHQl9PUkRFUl9SR0JYOworCQlicmVhazsKKwljYXNlIERSTV9G
T1JNQVRfWFJHQjIxMDEwMTA6CisJCXNwcmN0bCB8PSBTUFJJVEVfRk9STUFUX1JHQlgxMDEwMTA7
CisJCWJyZWFrOwogCWNhc2UgRFJNX0ZPUk1BVF9YQkdSMTYxNjE2MTZGOgogCQlzcHJjdGwgfD0g
U1BSSVRFX0ZPUk1BVF9SR0JYMTYxNjE2IHwgU1BSSVRFX1JHQl9PUkRFUl9SR0JYOwogCQlicmVh
azsKQEAgLTE2NTMsNiArMTY1OSwxMiBAQCBzdGF0aWMgdTMyIGc0eF9zcHJpdGVfY3RsKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCWNhc2UgRFJNX0ZPUk1BVF9Y
UkdCODg4ODoKIAkJZHZzY250ciB8PSBEVlNfRk9STUFUX1JHQlg4ODg7CiAJCWJyZWFrOworCWNh
c2UgRFJNX0ZPUk1BVF9YQkdSMjEwMTAxMDoKKwkJZHZzY250ciB8PSBEVlNfRk9STUFUX1JHQlgx
MDEwMTAgfCBEVlNfUkdCX09SREVSX1hCR1I7CisJCWJyZWFrOworCWNhc2UgRFJNX0ZPUk1BVF9Y
UkdCMjEwMTAxMDoKKwkJZHZzY250ciB8PSBEVlNfRk9STUFUX1JHQlgxMDEwMTA7CisJCWJyZWFr
OwogCWNhc2UgRFJNX0ZPUk1BVF9YQkdSMTYxNjE2MTZGOgogCQlkdnNjbnRyIHw9IERWU19GT1JN
QVRfUkdCWDE2MTYxNiB8IERWU19SR0JfT1JERVJfWEJHUjsKIAkJYnJlYWs7CkBAIC0yMzc1LDYg
KzIzODcsOCBAQCBzdGF0aWMgY29uc3QgdTY0IGk5eHhfcGxhbmVfZm9ybWF0X21vZGlmaWVyc1td
ID0gewogc3RhdGljIGNvbnN0IHUzMiBzbmJfcGxhbmVfZm9ybWF0c1tdID0gewogCURSTV9GT1JN
QVRfWFJHQjg4ODgsCiAJRFJNX0ZPUk1BVF9YQkdSODg4OCwKKwlEUk1fRk9STUFUX1hSR0IyMTAx
MDEwLAorCURSTV9GT1JNQVRfWEJHUjIxMDEwMTAsCiAJRFJNX0ZPUk1BVF9YUkdCMTYxNjE2MTZG
LAogCURSTV9GT1JNQVRfWEJHUjE2MTYxNjE2RiwKIAlEUk1fRk9STUFUX1lVWVYsCkBAIC0yNTkz
LDYgKzI2MDcsOCBAQCBzdGF0aWMgYm9vbCBzbmJfc3ByaXRlX2Zvcm1hdF9tb2Rfc3VwcG9ydGVk
KHN0cnVjdCBkcm1fcGxhbmUgKl9wbGFuZSwKIAlzd2l0Y2ggKGZvcm1hdCkgewogCWNhc2UgRFJN
X0ZPUk1BVF9YUkdCODg4ODoKIAljYXNlIERSTV9GT1JNQVRfWEJHUjg4ODg6CisJY2FzZSBEUk1f
Rk9STUFUX1hSR0IyMTAxMDEwOgorCWNhc2UgRFJNX0ZPUk1BVF9YQkdSMjEwMTAxMDoKIAljYXNl
IERSTV9GT1JNQVRfWFJHQjE2MTYxNjE2RjoKIAljYXNlIERSTV9GT1JNQVRfWEJHUjE2MTYxNjE2
RjoKIAljYXNlIERSTV9GT1JNQVRfWVVZVjoKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
