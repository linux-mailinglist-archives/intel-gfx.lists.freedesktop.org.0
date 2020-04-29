Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 001C31BDB28
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 13:54:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F349B6EA9B;
	Wed, 29 Apr 2020 11:54:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F01996ED2A
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 11:54:32 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id 7so2264498pjo.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 04:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=jKbuVFx3A4jalqhcCJZbI8uF6E2PE+UJuCdXnPv5BxY=;
 b=NkMGHB7mET2ldZWpeoBZBUnmfEBaTUw6Klvt50swchAakxXW/sEre3cHcORmsEG3IH
 /+1vlEI3rAk1zc0zCz+zDlhvrQ9r2Pb9e/7fGlCorWaxQSs2lI1ZtTaus4euWkcReF0u
 J14LiVXOn7EYY/Ipuz7YhrH3Xl4c77FJRfFRgxQiYozIyYVf2UTPnUrkoTa0oibTNFi9
 /Tmr5uVLwVa7MZNnMVuTc1QLtHMQaaapQ0E/TijxZaRw3X44PiEdAiqkT8MLfKOAd0BU
 M3H/uM8PmFX6ZzNDQSuHs0TM1Cp/S8o/vpbCKy56+uKuTrC9YXW7jhcKIdEK8+jCcgeL
 JQzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=jKbuVFx3A4jalqhcCJZbI8uF6E2PE+UJuCdXnPv5BxY=;
 b=MLJdivhE099FhK7y2p60I9kLUOng6oP09Dp+yGFnHwkQKnuboRJmhxZNLjH8FtVw67
 MCgwV+yJfUB/wvWRThI3z9x4cJEFGClxJ/bAe/VKch7BgBcs70WNC//a7cXiO/Xta0kz
 DrinwD6/0FepRTLYz9Jvr0LoLb6B94qev158aWDM3Bx3FTk5OvgSk0XW2aMOz5G9NvFC
 ya6cYERImwx9r0TNYSvrup8xOCf31+aUVrbXVnL+BIYzCeXC2qY6NsNLuaKDE7cKWw9Q
 MzHrRgyANpaJJxhSZX5wQ++5dMsg0wb6C4Cn+eP3aAOXFHywZpJk5B9sti7G5q8ZV3Si
 tg6Q==
X-Gm-Message-State: AGi0PuaUjCxoRSYSffYDNZ44SqLkUIpYCz0ekW8X7hyQTyKxwVcYEFl7
 whTjhS++7UjgiQ7n6nQE6OJ8DbntECF3CdNqUsO/XH6Ov7c=
X-Google-Smtp-Source: APiQypKjjR3fMBCwFYtNHvQxOYBHikxzRnmZq9WdycMA3wh0+ZeyBSp0OxKtfCob2Bj7jXjw/daf2nYhsBow6Faw5RQ=
X-Received: by 2002:a17:902:c40c:: with SMTP id
 k12mr64961plk.238.1588161272159; 
 Wed, 29 Apr 2020 04:54:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200429114048.15227-1-apodtele@gmail.com>
In-Reply-To: <20200429114048.15227-1-apodtele@gmail.com>
From: Alexei Podtelezhnikov <apodtele@gmail.com>
Date: Wed, 29 Apr 2020 07:54:20 -0400
Message-ID: <CAJU=AjU8c4RCUT3VytHKChEjE2-_=tHnGwrtt3UpxnxgwYBjog@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [patch] drm/i915: Update Slylake PCI IDs
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyOSBBcHIgMjAyMCwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhIGF0IGxp
bnV4LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gVHVlLCBBcHIgMjgsIDIwMjAgYXQgMTE6Mjc6NTBQ
TSAtMDQwMCwgQWxleGVpIFBvZHRlbGV6aG5pa292IHdyb3RlOgo+PiBBZGQgdGhyZWUgbmV3IGRl
dmljZXMgMHgxNTEzLCAweDE1MTUsIGFuZCAweDE1MTcgYWxzbyBrbm93biBhcwo+Cj4gdHlwbyAw
eDE1IHZzLiAweDE5Cj4KPj4gaVNLTFVMVEdUMTUsIGlTS0xVTFhHVDE1LCBhbmQgaVNLTERUR1Qx
NS4gUmVjbGFzc2lmeSAweDE5MjMsIDB4MTkyNywKPj4gYW5kIDB4MTkyQSBhY2NvcmRpbmcgdG8g
c3BlY2lmaWNhdGlvbnMuCj4KPiBJJ2QgbWFrZSB0aGlzIHRocmVlIHNlcGFyYXRlIHBhdGNoZXMs
IGp1c3QgaW4gY2FzZSB3ZSBoYXZlIHRvIHJldmVydAo+IHNvbWUgb2YgdGhlc2UgaW4gdGhlIGZ1
dHVyZS4gTW9zdCB3b3JyaWVkIGFib3V0IHRoZSAweDE5MmEgY2FzZSBzaW5jZQo+IHRoZSBldmlk
ZW5jZSBpcyByYXRoZXIgcG9vci4KCkkgZml4ZWQgdGhlIHR5cG8uIFRoZSBhYnNlbmNlIG9mIDB4
MTkyYSBmcm9tIHRoZSBtb3N0IHJlY2VudCBXaW5kb3dzCmRyaXZlcnMgaW5kaWNhdGVzIHRoYXQg
aXQgd2FzIG5ldmVyIHByaW50ZWQuIFRoZSBhYnNlbmNlIG9mIGV2aWRlbmNlCmlzIHRoZSBldmlk
ZW5jZSBvZiBhYnNlbmNlLiBUaGUgc2Vjb25kIHRvIGxhc3QgZGlnaXQgaW5kaWNhdGVzIHRoYXQg
aXQKd2FzIHBsYW5uZWQgYXMgR1QzLiBMYXN0bHksIG1ha2luZyAzIHBhdGNoZXMgZm9yIHNvbWV0
aGluZwpub24tZXhpc3RlbnQgaXMgc3VjaCBhbiBvdmVya2lsbC4gVGhlc2UgYXJlIHRyaXZpYWwg
dG8gcmV2ZXJ0CmxpbmUtYnktbGluZSB0b28uIFBsZWFzZSBiZSBjb25zaWRlcmF0ZSB0byBvY2Nh
c2lvbmFsIGhlbHBlcnMgYW5kIGRvCm5vdCBhc2sgdG8gbXVjaCBvZiB0aGVtLgoKUmVnYXJkcywK
QWxleGVpCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
