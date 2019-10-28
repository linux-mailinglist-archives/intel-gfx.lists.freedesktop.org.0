Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39388E7032
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 12:13:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA6456E5BF;
	Mon, 28 Oct 2019 11:13:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com
 [IPv6:2607:f8b0:4864:20::a44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C477D6E5BF
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 11:13:31 +0000 (UTC)
Received: by mail-vk1-xa44.google.com with SMTP id r4so1912278vkf.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 04:13:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3apIJh4w9D5j7/mezvcrWNkjQmu36r6hRQQIigtl5/U=;
 b=pPB59GuCRPiIXMozTMT+tv2QNwE6/lMedTi8QV5pEltn4uyKHlh2VxoMrhjcpVdKAl
 DXdR2XfD1Jwmh0xkfLfB6fLHny8B6j7TJ0fqXKJDVF7OIufMKHot1Bh/JjTO4n2c+VBO
 KEJ0Jp72kAj+Cc1HmN7E6ajIUEmQA4GsrUL7jy4PlHuQQExxqL2YCI7tj4XPXMHWY9Ab
 EofgzAuQJA0RoTN4HLpYGNJ610a+oBHVXCAfZF63sUUvBcNKWgJe13poglRN8vspJ4No
 9zMYixgRkHK/6zrJLPXFi4GLIQ2F/gflZiZrXaM8UzhBcSMYF3qTCkUPQBD8XuLYBOul
 m/Eg==
X-Gm-Message-State: APjAAAVXO9gGyMDZ3r637/kUZD7Y9czMnjBCcskwXO4OPJveMGHuq5kZ
 sqjzlnDDuVZ/p/cMh7v0+tAcKW1XyX08nxm6eY0=
X-Google-Smtp-Source: APXvYqweXm+MHY6ZqxGGxdZSdDrkILuxV5d8W1d2cUp6K1/04uskTas+ma+FR6O2Hjt3NeL6zr3EAzkpo0KhIfizA3g=
X-Received: by 2002:a1f:5f08:: with SMTP id t8mr8403243vkb.87.1572261210679;
 Mon, 28 Oct 2019 04:13:30 -0700 (PDT)
MIME-Version: 1.0
References: <20191027225808.19437-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191027225808.19437-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 28 Oct 2019 11:13:02 +0000
Message-ID: <CAM0jSHOJ=MU5rZ6udm9hFF1PpZix6xt8G2hbaHOxO6cgx207ow@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=3apIJh4w9D5j7/mezvcrWNkjQmu36r6hRQQIigtl5/U=;
 b=g6sOIU5aWZ8wyxXJHOBks6wcN99rKs7CCz5MnThjZXlmaCWh4Gcfg67AIQa/szuwn8
 1W4yWfGnimaAtm5xNN/+VW5odb6fITQmOMfrvzPZAYYEgg1K4VGLemgR7xvkHm/KBPhb
 gmzPhl7p8Y1/TYzRh1foqNBpu35sQtCCrD6VBHPTt0C1IHF5lvpGv3zOK81uQzJXvTKB
 QNcxSQ3/Ax+mocGiAcH6m8xNuo1Bgi0H/epiVWW5rykRrIpHb9UHFmnLvnveBoiKbyTO
 y49o7tufBcqfuJzNKp+DBJbRMIIiU2XnMgj/01ml67wd08kuc3ErL+1adBPDIx31OvVV
 qPxQ==
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/selftests: Drop global engine
 lookup for gt selftests
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU3VuLCAyNyBPY3QgMjAxOSBhdCAyMjo1OCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQXMgd2UgYXJlIGluc2lkZSB0aGUgZ3QsIHdlIGhhdmUg
YSBsb2NhbCBndC0+ZW5naW5lW10gbG9va3VwIHdlIHNob3VsZAo+IGJlIHVzaW5nIGluIHByZWZl
cmVuY2Ugb3ZlciB0aGUgaTkxNS0+ZW5naW5lW10gY29weS4KPgo+IFNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogTWF0dGhl
dyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
