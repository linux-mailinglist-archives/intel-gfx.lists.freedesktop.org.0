Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A2C46EFF
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Jun 2019 10:32:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0608896F7;
	Sat, 15 Jun 2019 08:32:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com
 [IPv6:2a00:1450:4864:20::141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C42A7896DD
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Jun 2019 08:32:01 +0000 (UTC)
Received: by mail-lf1-x141.google.com with SMTP id d11so3271944lfb.4
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Jun 2019 01:32:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yjwR1P3nYqPWLT9muy0ycj5C07VXeDdv+J5Prl0Wo2o=;
 b=TXMvaxXpBPmIvfuiLY142c0u7EFLTV5jCLWt7giD5ISpKNSOWo6fJBz7z31xR8IDt5
 YTQ7psyPJWo3q71DJbmYWBQHG7pub2S3ROxGX5b1Q40F7B9f0rP+XQ+0TA60s8/VXR+o
 Vywjr/bypW1qFQOqiSEYB5EUjo3YCBjdbgbMrPaWzqpiAfueXitxvIEnIJLbC47TLBKR
 ftn5rVWQ61OoN9V1eIY7wBLzLDFlrPxJc3LmAZaffs/O7Jbsoey9MSzhBj9MVXroOkhk
 xORYzU/uOgF+xUiFprHp232c2VzWpiFW4x5kKVpakdlDDP9BZe1kSoJS7kq9jTIBvBFk
 tgMA==
X-Gm-Message-State: APjAAAVDXWW4Po8xzoOe/DxsFgYahJROOCG7Gi3cNCdHQlZ0nZaPYjjP
 WTkcK9HBLpluzsyOqv3PYjhK8AZhi35DD6rWbjesrQ==
X-Google-Smtp-Source: APXvYqx7fV6hUQeo0nV2EzhymNAvcrXOqJ/GJJfRiVJPyYhcXIS8wDg1t0+yKVlJX4viX4vJxz6ck1h9oO17DjQjwfQ=
X-Received: by 2002:a19:7616:: with SMTP id c22mr7556786lff.115.1560587519986; 
 Sat, 15 Jun 2019 01:31:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
 <20190614203615.12639-19-daniel.vetter@ffwll.ch>
In-Reply-To: <20190614203615.12639-19-daniel.vetter@ffwll.ch>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 15 Jun 2019 10:31:48 +0200
Message-ID: <CACRpkdY6Y5iW+mLVfMAWZMwQav6PqGEaRNnar8WQhM_LV67PxQ@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=yjwR1P3nYqPWLT9muy0ycj5C07VXeDdv+J5Prl0Wo2o=;
 b=sefGHk9mGFwHoVtwhhHZSQLLy8dRBHmY55s3RCPSLZMLf2avVnkFZRPJpZB0Mwv/qj
 ei17GBEZVJzvFbERlyzSzfXGdtX36AyYCblWxhRo7Mwdfh7/GmtTfyW2w9bNTNzIrZqA
 rLFEgnwzdl/zcSvAnJAN5KpDsnDblpuyM2Lurs2Mng44KxWzZQnskiLyb8w19wWm1pqr
 cBqDVxp05p7JoEfPvzWmzaBGK2GTBflptcBP+IpmxUfilU9nSWqor42n+ReXqF/QraUu
 Z1nLLAOg6i1mUOH42MqFJoZ36RxAO2KUVrBaCrZK3FuE57yVOXDg5MBlPOuw78rFs5K4
 k7hw==
Subject: Re: [Intel-gfx] [PATCH 18/59] drm/mcde: Drop
 drm_gem_prime_export/import
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMTA6MzYgUE0gRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBmZndsbC5jaD4gd3JvdGU6Cgo+IFRoZXkncmUgdGhlIGRlZmF1bHQuCj4KPiBBc2lkZTog
V291bGQgYmUgcmVhbGx5IG5pY2UgdG8gc3dpdGNoIHRoZSBvdGhlcnMgb3ZlciB0bwo+IGRybV9n
ZW1fb2JqZWN0X2Z1bmNzLgo+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVs
LnZldHRlckBpbnRlbC5jb20+Cj4gQ2M6IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGlu
YXJvLm9yZz4KClJldmlld2VkLWJ5OiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFy
by5vcmc+CgpZb3VycywKTGludXMgV2FsbGVpagpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
