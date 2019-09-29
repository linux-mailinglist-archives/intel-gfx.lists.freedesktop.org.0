Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C48E5C25D0
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 19:46:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3346B6E4B1;
	Mon, 30 Sep 2019 17:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB3DB6E33F
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Sep 2019 20:44:28 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id r3so8803307wrj.6
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Sep 2019 13:44:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6g8BFOr4RuJJvpBnYUG0GgT2UdKjcagjVd8h5jd5/M8=;
 b=PRPKwYzQWAbh69R8jdzmsjCVuMHObmQ7G7SsDctL9dfbXfzauG/EV9PpJ/JaJLGa+H
 gFd0tozNU5lHTH/6bXXOjsl2rngww9ZSDYkP3NTqGK3Pr2j9cLe92PPVEuCM0Ag+syU4
 jbGHZoJAK0f4C2rqQgYhcSbVPOonoJeTvztcPKpz5YePwHc9JqlKeKskL6d/4eXvOpzO
 34aNmnq5pJ02+MNKmkuh5NaA5qLJ0VoNm7A5WiA5d9Q+NKl5LOa8DBmhlg0R6t7piAGL
 qwb4/Hnk86MBJKjma71vAp8rm3r0vMV4HBuw8zoNO/zhPxdld86IcIHXpbtXxqROuhcH
 NCCQ==
X-Gm-Message-State: APjAAAWh6nTpT/6C8GVx6mynQDKPQuTVgbSGJInPBAnm91GL64lLHfPy
 eAz0+xGo1WFhotf5W3fJWw==
X-Google-Smtp-Source: APXvYqyRd+2X5uvlwES43XuRYMjiMK3l6KgPqgWkoynAa288MY6y0tQsTSgyWOL5PQ2eUFgitLTnww==
X-Received: by 2002:adf:f092:: with SMTP id n18mr11134779wro.262.1569789867436; 
 Sun, 29 Sep 2019 13:44:27 -0700 (PDT)
Received: from avx2 ([46.53.254.141])
 by smtp.gmail.com with ESMTPSA id y14sm21961780wrd.84.2019.09.29.13.44.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 29 Sep 2019 13:44:26 -0700 (PDT)
Date: Sun, 29 Sep 2019 23:44:24 +0300
From: Alexey Dobriyan <adobriyan@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20190929204424.GA14565@avx2>
References: <20190929200619.GA12851@avx2>
 <20190929161531.727da348@gandalf.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190929161531.727da348@gandalf.local.home>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Approved-At: Mon, 30 Sep 2019 17:46:08 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6g8BFOr4RuJJvpBnYUG0GgT2UdKjcagjVd8h5jd5/M8=;
 b=sT1wM/fRKKWD3kB4Q9J9gqeWWMDzMq0zn4ntcp14NIUbRd7lGCK9kjj5UJ4DWs3wpf
 +hwDeY0km2cJpIJrGpinS66lH9Qo8Uuk6prZQCSwdD43CkOB6A8d4qNZYemRBhZLgioe
 LvleJ/xBZqNq+IjDX4ONYA4Igu4fYaUbLX7H7sqmshqKXm3Egdc1rLKAw7IUhH0HXp3f
 wj0c+0R3TsCLOj5s4N7ODTPhuYvyqZjkPBNNFSiwNO452QXg3jE0Gn7/frOyABdTSgvn
 R5VjXrMiSmMq3k5mCgQiQ3k3Oy26zJf4q0BUpToKlERADsR54yt/FlfanolhUcQXtZ4Q
 KA1w==
Subject: Re: [Intel-gfx] [PATCH] Make is_signed_type() simpler
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
Cc: intel-gfx@lists.freedesktop.org, linux@rasmusvillemoes.dk,
 linux-kernel@vger.kernel.org, mingo@redhat.com, akpm@linux-foundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU3VuLCBTZXAgMjksIDIwMTkgYXQgMDQ6MTU6MzFQTSAtMDQwMCwgU3RldmVuIFJvc3RlZHQg
d3JvdGU6Cj4gT24gU3VuLCAyOSBTZXAgMjAxOSAyMzowNjoxOSArMDMwMAo+IEFsZXhleSBEb2Jy
aXlhbiA8YWRvYnJpeWFuQGdtYWlsLmNvbT4gd3JvdGU6Cj4gCj4gPiAqIFNpbXBseSBjb21wYXJl
IC0xIHdpdGggMCwKPiA+ICogRHJvcCB1bm5lY2Vzc2FyeSBwYXJlbnRoZXNpcyBzZXRzCj4gPiAK
PiA+IE5ldyBtYWNybyBsZWF2ZXMgcG9pbnRlciBhcyAidW5zaWduZWQgdHlwZSIgYnV0IGdpdmVz
IGEgd2FybmluZywKPiA+IHdoaWNoIHNob3VsZCBiZSBmaW5lIGJlY2F1c2UgYXNraW5nIHdoZXRo
ZXIgYSBwb2ludGVyIGlzIHNpZ25lZCBpcwo+ID4gc3RyYW5nZSBxdWVzdGlvbi4KPiA+IAo+ID4g
SSdtIG5vdCBzdXJlIHdoYXQncyBnb2luZyBvbiBpbiB0aGUgaTkxNSBkcml2ZXIsIGl0IGlzIHNo
aXBwaW5nIGtlcm5lbAo+ID4gcG9pbnRlcnMgdG8gdXNlcnNwYWNlLgo+IAo+IFRoaXMgdGVsbHMg
dXMgd2hhdCB0aGUgcGF0Y2ggZG9lcywgbm90IHdoeS4KCkNoZWNrIHRoZSBzdWJqZWN0IGxpbmUu
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
