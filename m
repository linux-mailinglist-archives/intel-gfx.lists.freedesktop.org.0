Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB9D8A277
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 17:39:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B51B46E4EC;
	Mon, 12 Aug 2019 15:39:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com
 [IPv6:2607:f8b0:4864:20::a43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40E756E4EC
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 15:39:19 +0000 (UTC)
Received: by mail-vk1-xa43.google.com with SMTP id b11so1614716vkk.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 08:39:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gfdAf+ilXrti5pkQXh+GCZubNWqCJYd3GtCQp379/RM=;
 b=LYgttH7BW0CsfYCAyYGAdhOI11f8QqHQ2e2LagLSqSB+XfhH0f5qiP5+oOybXWxTiy
 hX3QIfvVTrJaTjVvepmhCX+dkfONsk8kSRFBdSyO1AZOMz8vsiyqLUcwOhYAfBGBHwqm
 oJV3dAjLzsdpisXwpz71RoeAHOKrGZiEdneZANv+7FoRQL3daYdWA4J8coNgks0J+aey
 dhsxKqvm/wl/3z0xEK9GNgZJmaZZ3NxtHdHBX5Kxp4wolatLBOX0OtnUYBF870QL/FIH
 yd5AfEpSULDsmNZAo+JZDew4XY+o+2M3WN2CH+l56Z3soT4795ddfx6VV5eN50gS0cH9
 YVbA==
X-Gm-Message-State: APjAAAVDaTtZwHRV0BBWC9eSrVpFn0k9xAbvA0wyZMLjgcFvWOd9dbWx
 faLKPBKac7nz4OwxlPbwuFzPBf96uUQzW6/Mfl8=
X-Google-Smtp-Source: APXvYqye61ppXqJ6Ww3QyryySMdtP646uF394dVXiH5hIKgHYuFKv9A01n23AGhIkY+H9hAJXJMnrjpGaBucZwU+7fI=
X-Received: by 2002:a1f:b48e:: with SMTP id d136mr12124753vkf.57.1565624358232; 
 Mon, 12 Aug 2019 08:39:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190812133915.18824-1-chris@chris-wilson.co.uk>
 <20190812133915.18824-11-chris@chris-wilson.co.uk>
In-Reply-To: <20190812133915.18824-11-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 12 Aug 2019 16:38:51 +0100
Message-ID: <CAM0jSHPVj76i_aDG-mNQBMGWbN0DeOqLWATA6ceG2Nsg=dBwbA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=gfdAf+ilXrti5pkQXh+GCZubNWqCJYd3GtCQp379/RM=;
 b=oPQth2HVOAZPi3AsE9COjO6/FvA3hT8HUd+QpyLjQHvmTIS1mLeqklCFCkg5RaA4HO
 Sp4WKgFvn9+QYby/+dJcWUwHX6RO2Ms8vyvWuOxPkPbIGf2pPCXJSlO0pRf/naU1/M0o
 idRUe80f8d0budRURYPmxHLvaLanqW4fcNEZyCRWFqhhJAHrCEfxlSUjfXsAqDfr6nB8
 pNAwYUzYOgEZRqf+40EOl1p5PWnkj3VOJZHQnk4mK+SPKXJ9TGK/gU5ShEAjCHqg+ONr
 bwsDbDKh8tZvjAfnZxkmVoBl7HD1bENoeFzSlvQQ83jMmjRNCC/56EgB/jo3gpAIhP0q
 Feng==
Subject: Re: [Intel-gfx] [PATCH 11/18] drm/i915/overlay: Switch to using
 i915_active tracking
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

T24gTW9uLCAxMiBBdWcgMjAxOSBhdCAxNDo0MSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gUmVtb3ZlIHRoZSByYXcgaTkxNV9hY3RpdmVfcmVxdWVz
dCB0cmFja2luZyBpbiBmYXZvdXIgb2YgdGhlIGhpZ2hlcgo+IGxldmVsIGk5MTVfYWN0aXZlIHRy
YWNraW5nIGZvciB0aGUgc29sZSBwdXJwb3NlIG9mIG1ha2luZyB0aGUgbG9ja2xlc3MKPiB0cmFu
c2l0aW9uIGVhc2llciBpbiBsYXRlciBwYXRjaGVzLgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1
bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
