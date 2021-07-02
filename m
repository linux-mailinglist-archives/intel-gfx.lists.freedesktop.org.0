Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A4B3BA4CD
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jul 2021 22:46:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D815E6E20C;
	Fri,  2 Jul 2021 20:46:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1AA56E20F
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jul 2021 20:46:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10033"; a="269910246"
X-IronPort-AV: E=Sophos;i="5.83,320,1616482800"; d="scan'208";a="269910246"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2021 13:46:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,320,1616482800"; d="scan'208";a="560259036"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 02 Jul 2021 13:46:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 02 Jul 2021 23:46:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Jul 2021 23:46:02 +0300
Message-Id: <20210702204603.596-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210702204603.596-1-ville.syrjala@linux.intel.com>
References: <20210702204603.596-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/8] drm/i915/fbc: Implement Wa_16011863758 for
 icl+
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
ZXJlJ3Mgc29tZSBraW5kIG9mIHdlaXJkIGNvcm5lciBjYXNlcyBpbiBGQkMgd2hpY2ggcmVxdWly
ZXMKRkJDIHNlZ21lbnRzIHRvIGJlIHNlcGFyYXRlZCBieSBhdCBsZWFzdCBvbmUgZXh0cmEgY2Fj
aGVsaW5lLgpNYWtlIHN1cmUgdGhhdCBpcyBwcmVzZW50LgoKVE9ETzogdGhlIGZvcm11bGEgbGFp
ZCBvdXQgaW4gdGhlIHNwZWMgc2VlbSB0byBiZSBzZW1pLW5vbnNlbnNlCnNvIHRoaXMgaXMgbW9z
dGx5IG15IGludGVycHJldGF0aW9uIG9uIHdoYXQgaXQgaXMgYWN0dWFsbHkgdHJ5aW5nCnRvIHNh
eS4gTmVlZCB0byB3YWl0IGZvciBjbGFyaWZpY2F0aW9uIGZyb20gdGhlIGh3IGZvbGtzIHRvIGtu
b3cKZm9yIHN1cmUuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMgfCAxMCArKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygr
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCmluZGV4IDJkYTUyOTUw
OTJlNy4uZGFmMjE5MWRkM2Y2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2ZiYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZmJjLmMKQEAgLTg4LDYgKzg4LDE2IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgaW50ZWxfZmJjX2Nm
Yl9zdHJpZGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiB7CiAJdW5zaWduZWQgaW50
IHN0cmlkZSA9IF9pbnRlbF9mYmNfY2ZiX3N0cmlkZShjYWNoZSk7CiAKKwkvKgorCSAqIFdhXzE2
MDExODYzNzU4OiBpY2wrCisJICogQ0ZCIHNlZ21lbnQgc3RyaWRlIG5lZWRzIGF0IGxlYXN0IG9u
ZSBleHRyYSBjYWNoZWxpbmUuCisJICogV2UgbWFrZSBzdXJlIGVhY2ggbGluZSBoYXMgYW4gZXh0
cmEgY2FjaGVsaW5lIHNvIHRoYXQKKwkgKiB0aGUgNCBsaW5lIHNlZ21lbnQgd2lsbCBoYXZlIG9u
ZSByZWdhcmxlc3Mgb2YgdGhlCisJICogY29tcHJlc3Npb24gbGltaXQgd2UgY2hvb3NlIGxhdGVy
LgorCSAqLworCWlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMSkKKwkJc3RyaWRlID0gbWF4KHN0
cmlkZSwgY2FjaGUtPnBsYW5lLnNyY193ICogNCArIDY0dSk7CisKIAkvKgogCSAqIEF0IGxlYXN0
IHNvbWUgb2YgdGhlIHBsYXRmb3JtcyByZXF1aXJlIGVhY2ggNCBsaW5lIHNlZ21lbnQgdG8KIAkg
KiBiZSA1MTIgYnl0ZSBhbGlnbmVkLiBBbGlnbmluZyBlYWNoIGxpbmUgdG8gNTEyIGJ5dGVzIGd1
YXJhbnRlZXMKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
