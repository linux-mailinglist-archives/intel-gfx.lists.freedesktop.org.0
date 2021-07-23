Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 540A13D3E71
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 19:21:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AABFE6F5F7;
	Fri, 23 Jul 2021 17:21:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com
 [IPv6:2607:f8b0:4864:20::1031])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD8546F415
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 17:21:46 +0000 (UTC)
Received: by mail-pj1-x1031.google.com with SMTP id
 k4-20020a17090a5144b02901731c776526so9870534pjm.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 10:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8/v8CdglWrt6v9ASQleiVlFYsqJirNYOdm0j1r50y5o=;
 b=Ugw7xGFYfPEw0IRclD4WO7V8j/hnEgvfh+vuO5XhoPkyKvSGDN9U/rFwt086FVN5s4
 EW01+EvZu59SCZ5lhD7DerKBHnrojhR3dKWsNvC9JSogBXtD+slATvQKi2k1EWZEWE2C
 3OvDzl5TPXMBufSQTXxPbYioEtLoBaskUaz4kAWIuehxnIZvCp4IE1X/81DOaF6pEBHf
 ybKlbYHRtViWtoa2zfCR9T9YoecwcxVZKXWAwnMeSqBI6L1f9OXK9o9rw3qbDrz0tyRI
 NSM0+uHPWi/n8iJw15Cf+8CgXpSN8qIPKTn2+mD0LuITGvfynbanMoNyX8ceVEM5YZxT
 QbvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8/v8CdglWrt6v9ASQleiVlFYsqJirNYOdm0j1r50y5o=;
 b=SH88g7gai+9BDC4F+ejBA9fvlY2z8UJi5fr/zIEoH8xBtEAnHXko9XDWdRH9KMCgqD
 KH7mfrlxPB6hsazgu+IIYhCLmLfgeRW09PGgEqjJjjaUjcn4I65ccoJ2wv2WUz8mCwmn
 dzWobLqtf/kDWh64Bf3WIVcA4nD5A7y2QLnX0UgO4YLlApJbpBBuVfblqM/1uGpDD9B8
 1lxzMtBHARK56L9IhmZPFwfoHkTLCJ6bgyp6y/KKe1cTkfkFCb9/BG0M97RI3ltpJhYY
 mSRAiNCJbYLSiXnSeHVFHFhUVILe2tHmgLwyzyw0v8cwVoNAYbgBY4U0XriWYPDqXtxg
 Rgpg==
X-Gm-Message-State: AOAM532jYU642ReqJeu1E6a6D0s6slqlfutBjTACVYBw4WKleMYScNkP
 sKUuqj6kpnKB+0S67HUG5a1Pia6tf0eeRg==
X-Google-Smtp-Source: ABdhPJxotkdALrFhEzQAPeeJamAQOkTxvoN/FO0eYvgxddk3Prij1WgdvgRHqDNZpcgbYz8SfN34tg==
X-Received: by 2002:a62:c501:0:b029:32a:dfe9:8648 with SMTP id
 j1-20020a62c5010000b029032adfe98648mr5698070pfg.28.1627060906021; 
 Fri, 23 Jul 2021 10:21:46 -0700 (PDT)
Received: from omlet.lan ([134.134.137.86])
 by smtp.gmail.com with ESMTPSA id s36sm24288648pgl.8.2021.07.23.10.21.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jul 2021 10:21:45 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 23 Jul 2021 12:21:34 -0500
Message-Id: <20210723172142.3273510-1-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/8] drm/i915: Migrate memory to SMEM when
 imported cross-device (v8)
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

VGhpcyBwYXRjaCBzZXJpZXMgZml4ZXMgYW4gaXNzdWUgd2l0aCBkaXNjcmV0ZSBncmFwaGljcyBv
biBJbnRlbCB3aGVyZSB3ZQphbGxvd2VkIGRtYS1idWYgaW1wb3J0IHdoaWxlIGxlYXZpbmcgdGhl
IG9iamVjdCBpbiBsb2NhbCBtZW1vcnkuICBUaGlzCmJyZWFrcyBkb3duIHByZXR0eSBiYWRseSBp
ZiB0aGUgaW1wb3J0IGhhcHBlbmVkIG9uIGEgZGlmZmVyZW50IHBoeXNpY2FsCmRldmljZS4KCnY3
OgogLSBEcm9wICJkcm0vaTkxNS9nZW0vdHRtOiBQbGFjZSBuZXcgQk9zIGluIHRoZSByZXF1ZXN0
ZWQgcmVnaW9uIgogLSBBZGQgYSBuZXcgImRybS9pOTE1L2dlbTogQ2FsbCBpOTE1X2dlbV9mbHVz
aF9mcmVlX29iamVjdHMoKSBpbiBpOTE1X2dlbV9kdW1iX2NyZWF0ZSgpIgogLSBNaXNjLiByZXZp
ZXcgZmVlZGJhY2sgZnJvbSBNYXR0aGV3IEF1bGQKdjg6CiAtIE1pc2MuIHJldmlldyBmZWVkYmFj
ayBmcm9tIE1hdHRoZXcgQXVsZAp2OToKIC0gUmVwbGFjZSB0aGUgaTkxNS90dG0gcGF0Y2ggd2l0
aCB0d28gdGhhdCBhcmUgaG9wZWZ1bGx5IG1vcmUgY29ycmVjdAoKSmFzb24gRWtzdHJhbmQgKDYp
OgogIGRybS9pOTE1L2dlbTogQ2hlY2sgb2JqZWN0X2Nhbl9taWdyYXRlIGZyb20gb2JqZWN0X21p
Z3JhdGUKICBkcm0vaTkxNS9nZW06IFJlZmFjdG9yIHBsYWNlbWVudCBzZXR1cCBmb3IgaTkxNV9n
ZW1fb2JqZWN0X2NyZWF0ZSoKICAgICh2MikKICBkcm0vaTkxNS9nZW06IENhbGwgaTkxNV9nZW1f
Zmx1c2hfZnJlZV9vYmplY3RzKCkgaW4KICAgIGk5MTVfZ2VtX2R1bWJfY3JlYXRlKCkKICBkcm0v
aTkxNS9nZW06IFVuaWZ5IHVzZXIgb2JqZWN0IGNyZWF0aW9uICh2MykKICBkcm0vaTkxNS9nZW0v
dHRtOiBPbmx5IGNhbGwgX19pOTE1X2dlbV9vYmplY3Rfc2V0X3BhZ2VzIGlmIG5lZWRlZAogIGRy
bS9pOTE1L2dlbTogQWx3YXlzIGNhbGwgb2JqLT5vcHMtPm1pZ3JhdGUgdW5sZXNzIGNhbl9taWdy
YXRlIGZhaWxzCgpUaG9tYXMgSGVsbHN0csO2bSAoMik6CiAgZHJtL2k5MTUvZ2VtOiBDb3JyZWN0
IHRoZSBsb2NraW5nIGFuZCBwaW4gcGF0dGVybiBmb3IgZG1hLWJ1ZiAodjgpCiAgZHJtL2k5MTUv
Z2VtOiBNaWdyYXRlIHRvIHN5c3RlbSBhdCBkbWEtYnVmIGF0dGFjaCB0aW1lICh2NykKCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY3JlYXRlLmMgICAgfCAxNzcgKysrKysrKyst
LS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jICAgIHwg
IDU4ICsrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jICAg
IHwgIDIwICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggICAg
fCAgIDQgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jICAgICAgIHwg
IDEzICstCiAuLi4vZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9kbWFidWYuYyAgfCAx
OTAgKysrKysrKysrKysrKysrKystCiAuLi4vZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dl
bV9taWdyYXRlLmMgfCAgMTUgLS0KIDcgZmlsZXMgY2hhbmdlZCwgMzQxIGluc2VydGlvbnMoKyks
IDEzNiBkZWxldGlvbnMoLSkKCi0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
