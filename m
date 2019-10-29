Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CBCE90A3
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 21:15:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B25D6E618;
	Tue, 29 Oct 2019 20:15:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6685189A86
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 20:15:28 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id g19so333896wmh.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 13:15:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CrxyYvVZtQQDEsA//8OC6p9PZSktlVWN1LL0TbKiw6o=;
 b=R5HTqpAcWfgfggT5a/mEH98OYhm+Ty4BBLa0JxLGPP8WMiR1AcEBTbn/7A7OlNujtj
 k/QPYcPNRzEtIGqkFERX0jZdA8l7X7mchyl9r3so3x+oiiWgeOse2M3IADtTkGq/kTBL
 rJ6QP5VdesEqkBNgmzU/Brc54cEjOp0ZCmrUZA2hQs9YIA0yPAWd0SDxfaqum2RDL05L
 NfxMPBoslq/+u4LEq+VhZMHa4RipaKYuJGOjdJnGYi1NOzxYdQewcwYU+zoZx8povwRe
 8HESl+AHBXmzkw9qrEjtecY40ih2eqfqLXHyUZmfuBvW+UhVhtrpWCgb+MBMHXzkv7Zi
 R2+g==
X-Gm-Message-State: APjAAAWVWwiU8BOrlK+aAHwxMI8P3xbC52pM+vJwHdctxI7PhFwIT6n/
 by/t3bqw4kGMTnu0QaTT+aCRIuHeLZA=
X-Google-Smtp-Source: APXvYqz0j2uGpZustMcBV5aFZ5vwzmS0/tn4yxIFT0aac00wxGjEY4B8MziFtT9BhIT11qEmMwXRxQ==
X-Received: by 2002:a1c:9d4a:: with SMTP id g71mr6064313wme.66.1572380125584; 
 Tue, 29 Oct 2019 13:15:25 -0700 (PDT)
Received: from [0.0.0.0] (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.googlemail.com with ESMTPSA id y16sm1246559wma.39.2019.10.29.13.15.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Oct 2019 13:15:24 -0700 (PDT)
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191008161441.12721-1-ville.syrjala@linux.intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <2543eeb6-32d7-cb17-25f7-d4bdaed925b9@gmail.com>
Date: Tue, 29 Oct 2019 22:15:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191008161441.12721-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=reply-to:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CrxyYvVZtQQDEsA//8OC6p9PZSktlVWN1LL0TbKiw6o=;
 b=XCQgXTKFq/i/v36YPYsGlsESsMeoiaELWfjTopaw2h0RpFdhqMlHB/VF94r7NMi5Pz
 6oiOS/SfxCZvRMwIveH6hXYZiNj0nW0e89LGoI9U+/aW4nmGWAlrB9pGvwM9C7Xtxboi
 W9DkLI9Tv14uEjQQch0qDN9TJKGM0dkR2FXH6uUmuhj7FnL7sP0z857noxYTysWadkSv
 rZ1/mSCz/tlXRvdwe0lOk9aFr4j2evw7DB58Kt8Qd5uhVGBsTY3LyphQhUuL6+s0tS/a
 1+iJbDOMB2TEGC+bAzKAMrqw4FzlO7GiXmVHW9InyXLg5zojLnDm8C/RQxhJC5XqsdV4
 K7QQ==
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915: Expose 10:10:10 XRGB formats
 on SNB-BDW sprites
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
Reply-To: juhapekka.heikkila@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IEp1aGEtUGVra2EgSGVpa2tpbGEgPGp1aGFwZWtrYS5oZWlra2lsYUBnbWFp
bC5jb20+CgpPbiA4LjEwLjIwMTkgMTkuMTQsIFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4gRnJvbTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAKPiBTTkIt
QkRXIHN1cHBvcnQgMTA6MTA6MTAgZm9ybWF0cyBvbiB0aGUgc3ByaXRlIHBsYW5lcy4gTGV0J3Mg
ZXhwb3NlCj4gdGhlbS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9zcHJpdGUuYyB8IDE2ICsrKysrKysrKysrKysrKysKPiAgIDEgZmlsZSBj
aGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Nwcml0ZS5jCj4gaW5kZXggNjMzZmE4MDY5MzQ4Li45MGIwZTY1NDIwYTUgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKPiBAQCAt
MTA1NCw2ICsxMDU0LDEyIEBAIHN0YXRpYyB1MzIgaXZiX3Nwcml0ZV9jdGwoY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gICAJY2FzZSBEUk1fRk9STUFUX1hSR0I4
ODg4Ogo+ICAgCQlzcHJjdGwgfD0gU1BSSVRFX0ZPUk1BVF9SR0JYODg4Owo+ICAgCQlicmVhazsK
PiArCWNhc2UgRFJNX0ZPUk1BVF9YQkdSMjEwMTAxMDoKPiArCQlzcHJjdGwgfD0gU1BSSVRFX0ZP
Uk1BVF9SR0JYMTAxMDEwIHwgU1BSSVRFX1JHQl9PUkRFUl9SR0JYOwo+ICsJCWJyZWFrOwo+ICsJ
Y2FzZSBEUk1fRk9STUFUX1hSR0IyMTAxMDEwOgo+ICsJCXNwcmN0bCB8PSBTUFJJVEVfRk9STUFU
X1JHQlgxMDEwMTA7Cj4gKwkJYnJlYWs7Cj4gICAJY2FzZSBEUk1fRk9STUFUX1lVWVY6Cj4gICAJ
CXNwcmN0bCB8PSBTUFJJVEVfRk9STUFUX1lVVjQyMiB8IFNQUklURV9ZVVZfT1JERVJfWVVZVjsK
PiAgIAkJYnJlYWs7Cj4gQEAgLTEyODgsNiArMTI5NCwxMiBAQCBzdGF0aWMgdTMyIGc0eF9zcHJp
dGVfY3RsKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+ICAgCWNh
c2UgRFJNX0ZPUk1BVF9YUkdCODg4ODoKPiAgIAkJZHZzY250ciB8PSBEVlNfRk9STUFUX1JHQlg4
ODg7Cj4gICAJCWJyZWFrOwo+ICsJY2FzZSBEUk1fRk9STUFUX1hCR1IyMTAxMDEwOgo+ICsJCWR2
c2NudHIgfD0gRFZTX0ZPUk1BVF9SR0JYMTAxMDEwIHwgRFZTX1JHQl9PUkRFUl9YQkdSOwo+ICsJ
CWJyZWFrOwo+ICsJY2FzZSBEUk1fRk9STUFUX1hSR0IyMTAxMDEwOgo+ICsJCWR2c2NudHIgfD0g
RFZTX0ZPUk1BVF9SR0JYMTAxMDEwOwo+ICsJCWJyZWFrOwo+ICAgCWNhc2UgRFJNX0ZPUk1BVF9Z
VVlWOgo+ICAgCQlkdnNjbnRyIHw9IERWU19GT1JNQVRfWVVWNDIyIHwgRFZTX1lVVl9PUkRFUl9Z
VVlWOwo+ICAgCQlicmVhazsKPiBAQCAtMTk4Myw2ICsxOTk1LDggQEAgc3RhdGljIGNvbnN0IHU2
NCBpOXh4X3BsYW5lX2Zvcm1hdF9tb2RpZmllcnNbXSA9IHsKPiAgIHN0YXRpYyBjb25zdCB1MzIg
c25iX3BsYW5lX2Zvcm1hdHNbXSA9IHsKPiAgIAlEUk1fRk9STUFUX1hCR1I4ODg4LAo+ICAgCURS
TV9GT1JNQVRfWFJHQjg4ODgsCj4gKwlEUk1fRk9STUFUX1hSR0IyMTAxMDEwLAo+ICsJRFJNX0ZP
Uk1BVF9YQkdSMjEwMTAxMCwKPiAgIAlEUk1fRk9STUFUX1lVWVYsCj4gICAJRFJNX0ZPUk1BVF9Z
VllVLAo+ICAgCURSTV9GT1JNQVRfVVlWWSwKPiBAQCAtMjE5Myw2ICsyMjA3LDggQEAgc3RhdGlj
IGJvb2wgc25iX3Nwcml0ZV9mb3JtYXRfbW9kX3N1cHBvcnRlZChzdHJ1Y3QgZHJtX3BsYW5lICpf
cGxhbmUsCj4gICAJc3dpdGNoIChmb3JtYXQpIHsKPiAgIAljYXNlIERSTV9GT1JNQVRfWFJHQjg4
ODg6Cj4gICAJY2FzZSBEUk1fRk9STUFUX1hCR1I4ODg4Ogo+ICsJY2FzZSBEUk1fRk9STUFUX1hS
R0IyMTAxMDEwOgo+ICsJY2FzZSBEUk1fRk9STUFUX1hCR1IyMTAxMDEwOgo+ICAgCWNhc2UgRFJN
X0ZPUk1BVF9ZVVlWOgo+ICAgCWNhc2UgRFJNX0ZPUk1BVF9ZVllVOgo+ICAgCWNhc2UgRFJNX0ZP
Uk1BVF9VWVZZOgo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
