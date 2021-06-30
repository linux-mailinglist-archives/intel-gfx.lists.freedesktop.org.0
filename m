Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3E73B7F0B
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 10:31:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AB266E957;
	Wed, 30 Jun 2021 08:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D09536E0BE;
 Wed, 30 Jun 2021 08:31:00 +0000 (UTC)
Received: from imap.suse.de (imap-alt.suse-dmz.suse.de [192.168.254.47])
 (using TLSv1.2 with cipher ECDHE-ECDSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 7BA831FE4C;
 Wed, 30 Jun 2021 08:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1625041859; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ltRNr4B+l+889GdS96xK+Aj1swrLWkljO+/5u65nZ+o=;
 b=0tju0Z/57BS7BZyXyKgZCEffpW4KYDp5ZgJUuams3K/fJY4d6kBpRxHEKzIXGKO5bjykOs
 GTDwfUJNJb4Le36oHZRGkFZ4x9kGeA1qH5OOOvQ15UPdJwaiN3hFv9jdh4FBBLq5ovF+9u
 DVPG5t1MzZIM8jmLipE3BPbs9nhvbps=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1625041859;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ltRNr4B+l+889GdS96xK+Aj1swrLWkljO+/5u65nZ+o=;
 b=9DYJXknQYeljeht5N7tB9GhJanq3gedirdXJhep4JNA4kqziiiyEvXJ2/HGjtD7GXqtvCN
 49ilNXyyBaxVTfAw==
Received: from imap3-int (imap-alt.suse-dmz.suse.de [192.168.254.47])
 by imap.suse.de (Postfix) with ESMTP id 303EE11906;
 Wed, 30 Jun 2021 08:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1625041859; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ltRNr4B+l+889GdS96xK+Aj1swrLWkljO+/5u65nZ+o=;
 b=0tju0Z/57BS7BZyXyKgZCEffpW4KYDp5ZgJUuams3K/fJY4d6kBpRxHEKzIXGKO5bjykOs
 GTDwfUJNJb4Le36oHZRGkFZ4x9kGeA1qH5OOOvQ15UPdJwaiN3hFv9jdh4FBBLq5ovF+9u
 DVPG5t1MzZIM8jmLipE3BPbs9nhvbps=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1625041859;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ltRNr4B+l+889GdS96xK+Aj1swrLWkljO+/5u65nZ+o=;
 b=9DYJXknQYeljeht5N7tB9GhJanq3gedirdXJhep4JNA4kqziiiyEvXJ2/HGjtD7GXqtvCN
 49ilNXyyBaxVTfAw==
Received: from director2.suse.de ([192.168.254.72]) by imap3-int with ESMTPSA
 id yNz1CsMr3GDkQQAALh3uQQ
 (envelope-from <tzimmermann@suse.de>); Wed, 30 Jun 2021 08:30:59 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch,
 chris@chris-wilson.co.uk, mika.kuoppala@linux.intel.com,
 matthew.brost@intel.com, maarten.lankhorst@linux.intel.com,
 lucas.demarchi@intel.com, ville.syrjala@linux.intel.com
Date: Wed, 30 Jun 2021 10:30:57 +0200
Message-Id: <20210630083057.5475-3-tzimmermann@suse.de>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210630083057.5475-1-tzimmermann@suse.de>
References: <20210630083057.5475-1-tzimmermann@suse.de>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915: Drop all references to DRM IRQ
 midlayer
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
Cc: stable@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVtb3ZlIGFsbCByZWZlcmVuY2VzIHRvIERSTSdzIElSUSBtaWRsYXllci4gaTkxNSB1c2VzIExp
bnV4JyBpbnRlcnJ1cHQKZnVuY3Rpb25zIGRpcmVjdGx5LgoKdjI6CgkqIGFsc28gcmVtb3ZlIGFu
IG91dGRhdGVkIGNvbW1lbnQKCSogbW92ZSBJUlEgZml4IGludG8gc2VwYXJhdGUgcGF0Y2gKCSog
dXBkYXRlIEZpeGVzIHRhZyAoRGFuaWVsKQoKU2lnbmVkLW9mZi1ieTogVGhvbWFzIFppbW1lcm1h
bm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+CkZpeGVzOiBiMzE4YjgyNDU1YmQgKCJkcm0vaTkxNTog
TnVrZSBkcm1fZHJpdmVyIGlycSB2ZnVuY3MiKQpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4K
Q2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6
IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KQ2M6IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPiAjIHY1LjQrCi0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyB8IDEgLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9pcnEuYyB8IDUgLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgNiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwppbmRleCA4NTBiNDk5YzcxYzguLjczZGU0NTQ3MmY2
MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCkBAIC00Miw3ICs0Miw2IEBACiAjaW5jbHVkZSA8
ZHJtL2RybV9hcGVydHVyZS5oPgogI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljX2hlbHBlci5oPgog
I2luY2x1ZGUgPGRybS9kcm1faW9jdGwuaD4KLSNpbmNsdWRlIDxkcm0vZHJtX2lycS5oPgogI2lu
Y2x1ZGUgPGRybS9kcm1fbWFuYWdlZC5oPgogI2luY2x1ZGUgPGRybS9kcm1fcHJvYmVfaGVscGVy
Lmg+CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCmluZGV4IDIyMDNkY2ExOTg5NS4uMWQ0YzY4M2M5
ZGU5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKQEAgLTMzLDcgKzMzLDYgQEAKICNpbmNsdWRl
IDxsaW51eC9zeXNycS5oPgogCiAjaW5jbHVkZSA8ZHJtL2RybV9kcnYuaD4KLSNpbmNsdWRlIDxk
cm0vZHJtX2lycS5oPgogCiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9kZS5oIgogI2luY2x1ZGUg
ImRpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIgpAQCAtNDU2NCwxMCArNDU2Myw2IEBAIHZv
aWQgaW50ZWxfcnVudGltZV9wbV9lbmFibGVfaW50ZXJydXB0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCiAKIGJvb2wgaW50ZWxfaXJxc19lbmFibGVkKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKIHsKLQkvKgotCSAqIFdlIG9ubHkgdXNlIGRybV9pcnFfdW5p
bnN0YWxsKCkgYXQgdW5sb2FkIGFuZCBWVCBzd2l0Y2gsIHNvCi0JICogdGhpcyBpcyB0aGUgb25s
eSB0aGluZyB3ZSBuZWVkIHRvIGNoZWNrLgotCSAqLwogCXJldHVybiBkZXZfcHJpdi0+cnVudGlt
ZV9wbS5pcnFzX2VuYWJsZWQ7CiB9CiAKLS0gCjIuMzIuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
