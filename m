Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30096296EFD
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 14:24:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65D1F6EB97;
	Fri, 23 Oct 2020 12:23:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 545F36F614
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 12:23:12 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id v5so1237097wmh.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 05:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r2DrHs8sznEAEmv81CQMiKCncSgZZXtZ6EFyoHCS3Oo=;
 b=ZYi8sWlYqHhW266a7Wh4e6eQQ7DyJpqW3Nom0/Vr/JEW76wTqmHKXtiUU2akIxM9qE
 8aR9Gox2HMVTwkNkPC+2hvbT31wupa4IhJNXHm/GZLFwhyKkoZlckNfJvIscTIBwTBdu
 K9kLhfXuXSyNypnF/UEvOEGMAa8S7zhjmlrlI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r2DrHs8sznEAEmv81CQMiKCncSgZZXtZ6EFyoHCS3Oo=;
 b=FSIEO2BaKjs0+91eUlELSgpl9IE/WOky45ikN2U/c+tRHkZcwNCz7/XjkHd9ZaQjWD
 z6kJLzRCO0GwgeAGOMhjWDQr3lhGwEWjeu4HzA6lZGRmMP4EO2FDFKfhxnURziyKNhP5
 OIDv/dL44C0UIXQDFf2OircOqz77ICmMRmYGhrhQtBkmGy84i1Z3/DfhVUkAzSMpSjtc
 jgT3s5IsoQg9MMhNHNWyORfm2Uf5j+KwKrYPm8K9izQPD4xo3L27H5XI5piaSR6Rr1lK
 BqF3I0Q6xC4wyVH6MN7beoqsDIw+FMitZZDvVP2L2QFuFkYVsEsJXSokIkxjgfaiekv7
 htsg==
X-Gm-Message-State: AOAM532sAby5hpLvENInozhNSLiIMy2BUPmJeYwIoX9Lv0dNEKJ9Rfcz
 ZYEjz0nj6HjrNaFfLrIh+rZjMA==
X-Google-Smtp-Source: ABdhPJxMGQvA/dZohSXbnMcyrWAeGFzAxThKHUObw664xzBQpaV3+wC1rwIhI7OjqV8yoZkn2jUtDA==
X-Received: by 2002:a1c:4445:: with SMTP id r66mr2002851wma.140.1603455791088; 
 Fri, 23 Oct 2020 05:23:11 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y4sm3056484wrp.74.2020.10.23.05.23.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 05:23:10 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Oct 2020 14:21:52 +0200
Message-Id: <20201023122216.2373294-41-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 41/65] /dev/mem: Only set filp->f_mapping
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
Cc: linux-samsung-soc@vger.kernel.org, Jan Kara <jack@suse.cz>,
 Kees Cook <keescook@chromium.org>, linux-mm@kvack.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Jason Gunthorpe <jgg@ziepe.ca>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 John Hubbard <jhubbard@nvidia.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hlbiB3ZSBjYXJlIGFib3V0IHBhZ2VjYWNoZSBtYWludGVuYW5jZSwgd2UgbmVlZCB0byBtYWtl
IHN1cmUgdGhhdApib3RoIGZfbWFwcGluZyBhbmQgaV9tYXBwaW5nIHBvaW50IGF0IHRoZSByaWdo
dCBtYXBwaW5nLgoKQnV0IGZvciBpb21lbSBtYXBwaW5ncyB3ZSBvbmx5IGNhcmUgYWJvdXQgdGhl
IHZpcnR1YWwvcHRlIHNpZGUgb2YKdGhpbmdzLCBzbyBmX21hcHBpbmcgaXMgZW5vdWdoLiBBbHNv
IHNldHRpbmcgaW5vZGUtPmlfbWFwcGluZyB3YXMKY29uZnVzaW5nIG1lIGFzIGEgZHJpdmVyIG1h
aW50YWluZXIsIHNpbmNlIGluIGUuZy4gZHJpdmVycy9ncHUgd2UKZG9uJ3QgZG8gdGhhdC4gUGVy
IERhbiB0aGlzIHNlZW1zIHRvIGJlIGNvcHlwYXN0YSBmcm9tIHBsYWNlcyB3aGljaCBkbwpjYXJl
IGFib3V0IHBhZ2VjYWNoZSBjb25zaXN0ZW5jeSwgYnV0IG5vdCBuZWVkZWQuIEhlbmNlIHJlbW92
ZSBpdCBmb3IKc2xpZ2h0bHkgbGVzcyBjb25mdXNpb24uCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwg
VmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IEphc29uIEd1bnRob3JwZSA8amdn
QHppZXBlLmNhPgpDYzogS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+CkNjOiBEYW4g
V2lsbGlhbXMgPGRhbi5qLndpbGxpYW1zQGludGVsLmNvbT4KQ2M6IEFuZHJldyBNb3J0b24gPGFr
cG1AbGludXgtZm91bmRhdGlvbi5vcmc+CkNjOiBKb2huIEh1YmJhcmQgPGpodWJiYXJkQG52aWRp
YS5jb20+CkNjOiBKw6lyw7RtZSBHbGlzc2UgPGpnbGlzc2VAcmVkaGF0LmNvbT4KQ2M6IEphbiBL
YXJhIDxqYWNrQHN1c2UuY3o+CkNjOiBEYW4gV2lsbGlhbXMgPGRhbi5qLndpbGxpYW1zQGludGVs
LmNvbT4KQ2M6IGxpbnV4LW1tQGt2YWNrLm9yZwpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCkNjOiBsaW51eC1zYW1zdW5nLXNvY0B2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxp
bnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwpSZXZpZXdlZC1ieTogRGFuIFdpbGxpYW1zIDxkYW4u
ai53aWxsaWFtc0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmll
bC52ZXR0ZXJAZmZ3bGwuY2g+Ci0tLQogZHJpdmVycy9jaGFyL21lbS5jIHwgMSAtCiAxIGZpbGUg
Y2hhbmdlZCwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9tZW0uYyBi
L2RyaXZlcnMvY2hhci9tZW0uYwppbmRleCBhYmQ0ZmZkYzhjZGUuLjU1MDJmNTZmMzY1NSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9jaGFyL21lbS5jCisrKyBiL2RyaXZlcnMvY2hhci9tZW0uYwpAQCAt
ODY0LDcgKzg2NCw2IEBAIHN0YXRpYyBpbnQgb3Blbl9wb3J0KHN0cnVjdCBpbm9kZSAqaW5vZGUs
IHN0cnVjdCBmaWxlICpmaWxwKQogCSAqIHJldm9jYXRpb25zIHdoZW4gZHJpdmVycyB3YW50IHRv
IHRha2Ugb3ZlciBhIC9kZXYvbWVtIG1hcHBlZAogCSAqIHJhbmdlLgogCSAqLwotCWlub2RlLT5p
X21hcHBpbmcgPSBkZXZtZW1faW5vZGUtPmlfbWFwcGluZzsKIAlmaWxwLT5mX21hcHBpbmcgPSBp
bm9kZS0+aV9tYXBwaW5nOwogCiAJcmV0dXJuIDA7Ci0tIAoyLjI4LjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
