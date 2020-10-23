Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F545296EFC
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 14:24:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A6A46F620;
	Fri, 23 Oct 2020 12:23:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 379A16F614
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 12:23:11 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id t9so1556490wrq.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 05:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5W4UqFTJMoDRzu7XpmV7m/mIx7tbXZK4TFNNVek8jNg=;
 b=C2WlQm6Y7/BLr8qzfIPZbRoqOaxbXAT3hL2x0db/Vq7QIa9HiiDV68fCYfgycZtA+x
 GcQT5YHcVe38UBZQ7KU9yFXVhUTzN+GFKBdcS0mcPQCEf6Uxqwp+fW97FHKul4o73JoP
 PYYcx5UtzedMnl7YfV4Rz5BNzjRWhqXORNHQA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5W4UqFTJMoDRzu7XpmV7m/mIx7tbXZK4TFNNVek8jNg=;
 b=baLFxJGF94TE2yJ8UuiIm3WA9Hzd80ituBI3wPb1D0WzDgb9JBjcwIX8jZWqpxD6r+
 DG4VBtQMzoZ2hc/sOpCPE0pA3R4aCwkBXx2eGVP5t0zzB+DYRkauWv8ziub8MUslDYrB
 8WNa99NPtXcYAk4FsKyuZbG/dmOHintJ8tH9Sc9EPHarBO1yHpWEmWCaOU4R3KMwhqKL
 XooEdgaPsXN8rLegfVwJ/Tkn6J1+IXe2RK3PENzbU5PmFhni2Tw4GSNvFC7ZtJnLhyjU
 bntgUONQ4jTpPxEJPdsc/sqn+r/+W+nde5OuspNHCagEPjow2yv6ro6wSBZUb9jSmphd
 0wCw==
X-Gm-Message-State: AOAM532jXF5iJtlSqoEcDNQs8KGMAxOI+2CM2Ivu00Tf8Xgi0mRXSlpE
 Vc88SJn/REFiwSR7CCGHZoXlNQ==
X-Google-Smtp-Source: ABdhPJw3Pb3vhwtwwYNFMVzcx8Z/llu6fU2csM/RXOrVwDY9ekmNXTKA2S1lYyLiAIKDJCOf9S0bYg==
X-Received: by 2002:a5d:6cae:: with SMTP id a14mr2454800wra.187.1603455789882; 
 Fri, 23 Oct 2020 05:23:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y4sm3056484wrp.74.2020.10.23.05.23.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 05:23:09 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Oct 2020 14:21:51 +0200
Message-Id: <20201023122216.2373294-40-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 40/65] PCI: Obey iomem restrictions for procfs
 mmap
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
 linux-pci@vger.kernel.org, Jason Gunthorpe <jgg@ziepe.ca>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 John Hubbard <jhubbard@nvidia.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlcmUncyB0aHJlZSB3YXlzIHRvIGFjY2VzcyBQQ0kgQkFScyBmcm9tIHVzZXJzcGFjZTogL2Rl
di9tZW0sIHN5c2ZzCmZpbGVzLCBhbmQgdGhlIG9sZCBwcm9jIGludGVyZmFjZS4gVHdvIGNoZWNr
IGFnYWluc3QKaW9tZW1faXNfZXhjbHVzaXZlLCBwcm9jIG5ldmVyIGRpZC4gQW5kIHdpdGggQ09O
RklHX0lPX1NUUklDVF9ERVZNRU0sCnRoaXMgc3RhcnRzIHRvIG1hdHRlciwgc2luY2Ugd2UgZG9u
J3Qgd2FudCByYW5kb20gdXNlcnNwYWNlIGhhdmluZwphY2Nlc3MgdG8gUENJIEJBUnMgd2hpbGUg
YSBkcml2ZXIgaXMgbG9hZGVkIGFuZCB1c2luZyBpdC4KCkZpeCB0aGlzIGJ5IGFkZGluZyB0aGUg
c2FtZSBpb21lbV9pc19leGNsdXNpdmUoKSBjaGVjayB3ZSBhbHJlYWR5IGhhdmUKb24gdGhlIHN5
c2ZzIHNpZGUgaW4gcGNpX21tYXBfcmVzb3VyY2UoKS4KClJlZmVyZW5jZXM6IDkwYTU0NWU5ODEy
NiAoInJlc3RyaWN0IC9kZXYvbWVtIHRvIGlkbGUgaW8gbWVtb3J5IHJhbmdlcyIpClNpZ25lZC1v
ZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogSmFzb24g
R3VudGhvcnBlIDxqZ2dAemllcGUuY2E+CkNjOiBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVt
Lm9yZz4KQ2M6IERhbiBXaWxsaWFtcyA8ZGFuLmoud2lsbGlhbXNAaW50ZWwuY29tPgpDYzogQW5k
cmV3IE1vcnRvbiA8YWtwbUBsaW51eC1mb3VuZGF0aW9uLm9yZz4KQ2M6IEpvaG4gSHViYmFyZCA8
amh1YmJhcmRAbnZpZGlhLmNvbT4KQ2M6IErDqXLDtG1lIEdsaXNzZSA8amdsaXNzZUByZWRoYXQu
Y29tPgpDYzogSmFuIEthcmEgPGphY2tAc3VzZS5jej4KQ2M6IERhbiBXaWxsaWFtcyA8ZGFuLmou
d2lsbGlhbXNAaW50ZWwuY29tPgpDYzogbGludXgtbW1Aa3ZhY2sub3JnCkNjOiBsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXNhbXN1bmctc29jQHZnZXIua2Vy
bmVsLm9yZwpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBCam9ybiBIZWxnYWFz
IDxiaGVsZ2Fhc0Bnb29nbGUuY29tPgpDYzogbGludXgtcGNpQHZnZXIua2VybmVsLm9yZwpTaWdu
ZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgotLQp2Mjog
SW1wcm92ZSBjb21taXQgbWVzc2FnZSAoQmpvcm4pCi0tLQogZHJpdmVycy9wY2kvcHJvYy5jIHwg
NSArKysrKwogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGNpL3Byb2MuYyBiL2RyaXZlcnMvcGNpL3Byb2MuYwppbmRleCBkMzUxODZiMDFkOTgu
LjNhMmY5MGJlYjRjYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9wY2kvcHJvYy5jCisrKyBiL2RyaXZl
cnMvcGNpL3Byb2MuYwpAQCAtMjc0LDYgKzI3NCwxMSBAQCBzdGF0aWMgaW50IHByb2NfYnVzX3Bj
aV9tbWFwKHN0cnVjdCBmaWxlICpmaWxlLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkKIAkJ
ZWxzZQogCQkJcmV0dXJuIC1FSU5WQUw7CiAJfQorCisJaWYgKGRldi0+cmVzb3VyY2VbaV0uZmxh
Z3MgJiBJT1JFU09VUkNFX01FTSAmJgorCSAgICBpb21lbV9pc19leGNsdXNpdmUoZGV2LT5yZXNv
dXJjZVtpXS5zdGFydCkpCisJCXJldHVybiAtRUlOVkFMOworCiAJcmV0ID0gcGNpX21tYXBfcGFn
ZV9yYW5nZShkZXYsIGksIHZtYSwKIAkJCQkgIGZwcml2LT5tbWFwX3N0YXRlLCB3cml0ZV9jb21i
aW5lKTsKIAlpZiAocmV0IDwgMCkKLS0gCjIuMjguMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
