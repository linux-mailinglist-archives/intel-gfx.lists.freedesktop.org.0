Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D2310C166
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 02:34:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34A1E6E4CF;
	Thu, 28 Nov 2019 01:34:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com
 [IPv6:2607:f8b0:4864:20::744])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB0776E4CF
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 01:34:10 +0000 (UTC)
Received: by mail-qk1-x744.google.com with SMTP id m16so21332033qki.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 17:34:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ToM5jlKNuAVuYgejNCwCXhQZzlUbJGZcwOf6zJV8hKE=;
 b=nivMq8/oJXL7t7i4UD6OttvB6un/JqF2UMtaKiE+Aolq+ncRNIZDOyhJ5JoQOzFe0E
 Q+KwIk/03/tC4b15iChIBAptad+az9HhiiTPyBxYQ+v2d0Zfqv+t2M2STfZTU1fjrgHA
 0dgvLU0rWUSo5ykBRLpj7lIUhn+SIvUGq60AO7rAsJOFFr01RYiB/HXov4MDONpgjd6u
 SoFA24/NYNbruCEARHHbMVVp0zgg68j86gsPNe6DYVdNw5Mb4T51h/OklMIzvkUWTe1m
 Z9GK04QbU1qvzb/cfZP6go6VvDYSZja6zKdYqelRwi7flmhm9LAhI34TVYT4sza3tUmd
 BGrQ==
X-Gm-Message-State: APjAAAUJEQMriiYdzWZaicZNpS/o2FCFaITXiFgqn35jzPQbQdVZ+oSX
 +dRgWKXAtBNc2fNvjHkaqZS4yOPSYsifxYfBAP5E7g==
X-Google-Smtp-Source: APXvYqw2e55ODXP2BSYsrln1XrJ+lRZsjWiOafoCF/RWtCDqvJLScLqVgBQ2hSmnEcEENWuvrSapOAhdsIPOoa7Ivwk=
X-Received: by 2002:a05:620a:12c3:: with SMTP id
 e3mr7766342qkl.14.1574904849775; 
 Wed, 27 Nov 2019 17:34:09 -0800 (PST)
MIME-Version: 1.0
References: <20191127201222.16669-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191127201222.16669-1-ville.syrjala@linux.intel.com>
From: Daniel Drake <drake@endlessm.com>
Date: Thu, 28 Nov 2019 09:33:58 +0800
Message-ID: <CAD8Lp46FgU3TTCSarAW083hihDuaZGBmv7HzHseHhEwUL6hrCg@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessm-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=ToM5jlKNuAVuYgejNCwCXhQZzlUbJGZcwOf6zJV8hKE=;
 b=w9Ikfq7+yeVNSeYnG4ZUEwPnQevX1IGLOm8fV6Y3gm9vbq9iQ2zhgyXFO7JR8blpvA
 iiBrY3octdYY9rJnb0PhenLxWyREtQvCbfq0UlsNEh8m84BEtyCm0Z5MBtRC/THi6+RH
 kPsZcje+NplyDBrU1qgCkP7DVoyKcCqjO3ZgtZxHL0CgxIuZd64Sp7NkbCTPy1GXbWw+
 pWm6uzzmcg+6N7M04DJmV1tuIXF3hprNRJbBf8kvBGAwYR5qWBOuMzajSVPC7HubVMDX
 RueRs4ryMqIEv+Q9/Sgv1k0AYOlkmUFepFfkHxXYoiutrSW+Wb6gNxZGXQ7EhNqy0XTD
 xmoA==
Subject: Re: [Intel-gfx] [PATCH v2 00/14] drm/i915/fbc: Fix FBC for glk+
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
Cc: Jian-Hong Pan <jian-hong@endlessm.com>, intel-gfx@lists.freedesktop.org,
 Paulo Zanoni <paulo.r.zanoni@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBOb3YgMjgsIDIwMTkgYXQgNDoxMiBBTSBWaWxsZSBTeXJqYWxhCjx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4gSSBhbHNvIHNsYXBwZWQgb24gYW4gZXh0cmEg
cGF0Y2ggYXQgdGhlIGVuZCB3aGljaCBzaG91bGQgaG9wZWZ1bGx5Cj4gYXZvaWQgdGhlIHByb2Js
ZW1zIHdpdGggRkJDIG5vdCBnZXR0aW5nIGVuYWJsZWQgd2l0aCBmYXN0Ym9vdC4KClJldGVzdGVk
IEFzdXMgRTQwNk1BLCBkZWZhdWx0IHBhcmFtZXRlcnMgKGZhc3Rib290PTEpIGFuZCBub3cgRkJD
IGlzCm1hcmtlZCBlbmFibGVkIGluIGk5MTVfZmJjX3N0YXR1cy4KSSBjYW4ndCByZXByb2R1Y2Ug
dGhlIHZpc3VhbCBjb3JydXB0aW9uIHVzaW5nIG15IG9yaWdpbmFsIHRlc3RzCihpbnRlcmFjdGlu
ZyB3aXRoIEdOT01FIGdkbSBsb2dpbiBzY3JlZW4sIGZyYW50aWNhbGx5IHNjcm9sbGluZyB0ZXh0
Cmluc2lkZSBnbm9tZS10ZXJtaW5hbCkuCgpUZXN0ZWQtYnk6IERhbmllbCBEcmFrZSA8ZHJha2VA
ZW5kbGVzc20uY29tPgoKVGhhbmtzIQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
