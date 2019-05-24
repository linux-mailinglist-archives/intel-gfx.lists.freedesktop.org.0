Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDE7293CA
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:56:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19F9C6E0A1;
	Fri, 24 May 2019 08:54:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB3C46E0DD
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:54:47 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id p27so13378006eda.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 01:54:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NmvrGIUWQkTElry91PwheZTmzBnjKP7PR8ohbwjeRGw=;
 b=IWOBier7wabd0uB7wkwgvqsiyJjAe2SORi5ZH9FiA520MTDVg/MosuqboQ3yhw4sEE
 nJy/cBzHYng9NCBELZ2Z0IWPptjSboff6qfrWfxs7yPnp8n9/xg85TG0LQjKAKAxEL7y
 BmZyjJLjYrmPZxC033zuVgBk/RdGpv0hbstgs5aimuxvQ5t0jos67o1km10Eqf3H6ttx
 wY1tH0du+dtaO+Mr/pHcKRF6lCWzPFuDEsYyqmM02b6bkCNh+buYNbIMcmPJrq05f5UV
 9hZhD4Ap6ZIFLlZGvDmly6hWm7SapqLAA2pudV8V3iwei4bRDp06mhAuwtV6Jp1e802z
 HtGg==
X-Gm-Message-State: APjAAAXHJFp7OEr01HAcQWve48sjqLdiCU8WrtTNAHTkfvYbV+LAmDCp
 KQaP0re69wxvKQyShFa8NGIIhw==
X-Google-Smtp-Source: APXvYqwajf0oCHKmp7dOkjnUHWvBU13ALDXZf5gmM/1TI3Cp7xnjVwoelMbSOCmGIhHgMN29lqIMcQ==
X-Received: by 2002:a17:907:20cd:: with SMTP id
 qq13mr55869127ejb.170.1558688084971; 
 Fri, 24 May 2019 01:54:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id 96sm567082edq.68.2019.05.24.01.54.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:54:44 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Fri, 24 May 2019 10:53:54 +0200
Message-Id: <20190524085354.27411-34-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
References: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NmvrGIUWQkTElry91PwheZTmzBnjKP7PR8ohbwjeRGw=;
 b=Nh3n8kL/lOQMsn5ZR8TvohBEqbIzE7Lgj3nCIy9tF9DcXQiDN/rMDZEKzdjjQlKv2v
 DBcU1thQcKCne7ZjTeekcxfx+fSPE39PVenj5kjlxDaGWTjihc9VVQH/EXPWiuIuPEI+
 oThhEVt/uxjw2gJKXFL2oGTpb8aHJS//3bOh4=
Subject: [Intel-gfx] [PATCH 33/33] backlight: simplify lcd notifier
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Jingoo Han <jingoohan1@gmail.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2l0aCBhbGwgdGhlIHdvcmsgSSd2ZSBkb25lIG9uIHJlcGxhY2luZyBmYiBub3RpZmllciBjYWxs
cyB3aXRoIGRpcmVjdApjYWxscyBpbnRvIGZiY29uIHRoZSBiYWNrbGlnaHQvbGNkIG5vdGlmaWVy
IGlzIHRoZSBvbmx5IHVzZXIgbGVmdC4KCkl0IHdpbGwgb25seSByZWNlaXZlIGV2ZW50cyBub3cg
dGhhdCBpdCBjYXJlcyBhYm91dCwgaGVuY2Ugd2UgY2FuCnJlbW92ZSB0aGlzIGNoZWNrLgoKU2ln
bmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBM
ZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgpDYzogRGFuaWVsIFRob21wc29uIDxkYW5p
ZWwudGhvbXBzb25AbGluYXJvLm9yZz4KQ2M6IEppbmdvbyBIYW4gPGppbmdvb2hhbjFAZ21haWwu
Y29tPgotLS0KIGRyaXZlcnMvdmlkZW8vYmFja2xpZ2h0L2xjZC5jIHwgMTEgLS0tLS0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAxMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3Zp
ZGVvL2JhY2tsaWdodC9sY2QuYyBiL2RyaXZlcnMvdmlkZW8vYmFja2xpZ2h0L2xjZC5jCmluZGV4
IGE3NTgwMzk0NzVkMC4uOGVhNWU1OTM3YWUyIDEwMDY0NAotLS0gYS9kcml2ZXJzL3ZpZGVvL2Jh
Y2tsaWdodC9sY2QuYworKysgYi9kcml2ZXJzL3ZpZGVvL2JhY2tsaWdodC9sY2QuYwpAQCAtMjks
MTcgKzI5LDYgQEAgc3RhdGljIGludCBmYl9ub3RpZmllcl9jYWxsYmFjayhzdHJ1Y3Qgbm90aWZp
ZXJfYmxvY2sgKnNlbGYsCiAJc3RydWN0IGxjZF9kZXZpY2UgKmxkOwogCXN0cnVjdCBmYl9ldmVu
dCAqZXZkYXRhID0gZGF0YTsKIAotCS8qIElmIHdlIGFyZW4ndCBpbnRlcmVzdGVkIGluIHRoaXMg
ZXZlbnQsIHNraXAgaXQgaW1tZWRpYXRlbHkgLi4uICovCi0Jc3dpdGNoIChldmVudCkgewotCWNh
c2UgRkJfRVZFTlRfQkxBTks6Ci0JY2FzZSBGQl9FVkVOVF9NT0RFX0NIQU5HRToKLQljYXNlIEZC
X0VBUkxZX0VWRU5UX0JMQU5LOgotCWNhc2UgRkJfUl9FQVJMWV9FVkVOVF9CTEFOSzoKLQkJYnJl
YWs7Ci0JZGVmYXVsdDoKLQkJcmV0dXJuIDA7Ci0JfQotCiAJbGQgPSBjb250YWluZXJfb2Yoc2Vs
Ziwgc3RydWN0IGxjZF9kZXZpY2UsIGZiX25vdGlmKTsKIAlpZiAoIWxkLT5vcHMpCiAJCXJldHVy
biAwOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
