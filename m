Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E16D029F
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 23:06:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49A546E117;
	Tue,  8 Oct 2019 21:06:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com
 [IPv6:2607:f8b0:4864:20::941])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 941666E117
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 21:06:32 +0000 (UTC)
Received: by mail-ua1-x941.google.com with SMTP id q11so107771uao.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Oct 2019 14:06:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I94YfpofC/A6HapyKE7lluBOamjjbZItq0arcctJ5SQ=;
 b=mlwpkfRmUZ3fpVUitKKoChgFgHkWp3VRHpnAeJGAdlf1mDxXc1/8yauHGMciGULp2/
 UfNx/LeFDImJvwSid2T6lyCRCfNOA3MfudZxP1VCvTioGpjwJkCDtUymCWHzUvE6XQBi
 SU8MqDtHwI0VF0uNn5EiVDMZpRL+1m2Natg8giAGBUhvXd35M/IAkGfPgRQhskFJFvZx
 7CC8eDmHuJAuUGElg9j/cEMXntMgPM1q0JkCyU9/mkBtmLoC7iWbafzobs6OPd0EuXkD
 u+wWJGkN9qWn7KB/x8FwIRJaCwHRBS1N0Ni3lixxcEZKBkyC1QDPVgyL5BfMZ8GOdq3B
 nqxg==
X-Gm-Message-State: APjAAAXfH5Ux+jKEUPqmv2/yplZekOj4WprnObS85/wvA1OGgNtcKhNh
 ZMIC2gQVz07QEXkyLniRFxPDAXDIZX4ZC8STvZw=
X-Google-Smtp-Source: APXvYqy4ecD4hHWA4N4qf7rC4MQVrPt30/svowOelKViufIlcssQwIigZHuVLWlqO+6nRfOGpC4j9vE44f/oS+PwnQk=
X-Received: by 2002:ab0:278b:: with SMTP id t11mr9819uap.89.1570568790908;
 Tue, 08 Oct 2019 14:06:30 -0700 (PDT)
MIME-Version: 1.0
References: <20191008185941.15228-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191008185941.15228-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 8 Oct 2019 22:06:04 +0100
Message-ID: <CAM0jSHO6NtmU3SQwNzCcGVS=o0BPKbL46Oew_-bi2Ye9mxg=iA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=I94YfpofC/A6HapyKE7lluBOamjjbZItq0arcctJ5SQ=;
 b=R77i5r8NYoCDdP/7Zw0L+GqvNiQmzI16AUCIwwXVFfj5O1+aSf72c17yPTIt8LF4nH
 e8vRYFB8MfbsYNvz/i+2UK8NG6Sm2KIhTuUAvwRpttKn4OlaF3+kTdHyjl21w3E95uAM
 qk1V2F559R8WJOu9MfIHTyprqM9eAFR0Zp3VnLEw0xGDKk1ufyCqlC6toWIev/HAHYDb
 3rCFXJRiDNr13Zw+ovBPta+BVVwKBG9SXtxD2tVT/m1RQbWcyKZAmxAhzpKKxuDyla1x
 W5aWYn97BjZHm4aXwVIXWD6+xXwgM4uwRVX+g6rwdsK3QTwRTEoUSs7p+Mvu18QqUHaw
 MjkA==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Give engine->kernel_context
 distinct timeline lock classes
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCA4IE9jdCAyMDE5IGF0IDE5OjU5LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBBc3NpZ24gYSBzZXBhcmF0ZSBsb2NrY2xhc3MgdG8gdGhl
IHBlcm1hLXBpbm5lZCB0aW1lbGluZXMgb2YgdGhlCj4ga2VybmVsX2NvbnRleHQsIHN1Y2ggdGhh
dCB3ZSBjYW4gdXNlIHRoZW0gZnJvbSB3aXRoaW4gdGhlIHVzZXIgdGltZWxpbmVzCj4gc2hvdWxk
IHdlIGV2ZXIgbmVlZCB0byBpbmplY3QgR1BVIG9wZXJhdGlvbnMgdG8gZml4dXAgZmF1bHRzIGR1
cmluZwo+IHJlcXVlc3QgY29uc3RydWN0aW9uLgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy53aWxsaWFt
LmF1bGRAZ21haWwuY29tPgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LndpbGxp
YW0uYXVsZEBnbWFpbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
