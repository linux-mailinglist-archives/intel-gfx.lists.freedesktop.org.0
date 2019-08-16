Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9567190724
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 19:43:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67DB26E352;
	Fri, 16 Aug 2019 17:43:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C5F96E33F
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 12:46:54 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id 10so3952455wmp.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 05:46:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kOKVpWFhqA7qX1a90D84hBsVtR6avaUHqQm1L3LOuSI=;
 b=uZ6KOD8p7i7qw2kIw42LjZRDWliP7srlrPCqu8EbK1cJRj6gDjndP1wwcuHiQSq11s
 i5bimsd1JRLSfKu5jJ0pjibgyHrvfuL1KYTF4SmjuTzyKA6yL1MwD5BvtGtKsiEx4j5z
 daZPVbXi0mYyn8qy7Mq04kfkFaJZCCZV+zoC1CMmhunYatetUmYkXtJmjjppUrn23q6i
 Dbm1K4M728aXW1NzoReCqBALrHK26Aao2Fy8wxz5+ui67hJPFWWp4PvVfTgYUnQsznO1
 8D/WYvYVRf1yp8B4D9oi6MDRCdtMMNvm8Y2aehjO/eu9extAh2GSRdXzJV4pM9JLJO+I
 xmxA==
X-Gm-Message-State: APjAAAXT6Wpcbbb4bW4ZE2zxcrrFtStGqCz/C0rKyqKl51XUSv68yTwL
 qUwIEmC7FbhU5Q+wCMtm+krIUJ+zA5EyByu3/Zs=
X-Google-Smtp-Source: APXvYqxjZCN+1bN9L24DUHRUKoqSP9S8VZsjtzfDLzaMtPx6dYfgUBwq+xCtUgfbz+Q9djcsP4RKbgp5MPAK49AufHo=
X-Received: by 2002:a1c:6c0d:: with SMTP id h13mr6701409wmc.74.1565959612871; 
 Fri, 16 Aug 2019 05:46:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190816121549.8754-1-chris@chris-wilson.co.uk>
 <20190816122644.GA21797@lst.de>
 <156595862897.11610.6852982219615959799@skylake-alporthouse-com>
 <20190816123850.GA22923@lst.de>
In-Reply-To: <20190816123850.GA22923@lst.de>
From: Keith Busch <keith.busch@gmail.com>
Date: Fri, 16 Aug 2019 06:46:41 -0600
Message-ID: <CAOSXXT54LyxmF7sAgfxYr7G_vnvDjhiEiHnVm7Zrm1vjS7zLQA@mail.gmail.com>
To: Christoph Hellwig <hch@lst.de>
X-Mailman-Approved-At: Fri, 16 Aug 2019 17:43:25 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=kOKVpWFhqA7qX1a90D84hBsVtR6avaUHqQm1L3LOuSI=;
 b=SnnXfiEDB2MRlx69gOxwFOjZQno2Ja8FF9l5Ywefb4He8UK8QbfBlAO4WhUazXzXG1
 HB7KyT6iEWjnGbLxIMrwvLjD7P91RWj1fk9otPj4E4slyW543EpFXHz5TMsYkEwiEBkp
 VymCO+F3WfAJvGlPTAzADDKnueovJFJNnJSiuMuSR6yI+Y6LcwHhOVhsRQaekaKh5gKC
 8hy8kQvQfZLDMO7l6cS3T9tKHYnE3l5PWc/3HnNudMQUJKsZIb9yaGR0Mrq2w8WpDbUV
 HHlqo0Nc/DtFluG/g7ZAppiWu8BhqHBw+jcZyxVu8CkaencQE4l4+tiyU7zcWuUAk0Sj
 lZRg==
Subject: Re: [Intel-gfx] [PATCH] Revert "nvme-pci: use host managed power
 state for suspend"
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 intel-gfx@lists.freedesktop.org,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBBdWcgMTYsIDIwMTkgYXQgNjozOCBBTSBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxz
dC5kZT4gd3JvdGU6Cj4gT24gRnJpLCBBdWcgMTYsIDIwMTkgYXQgMDE6MzA6MjlQTSArMDEwMCwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUXVvdGluZyBDaHJpc3RvcGggSGVsbHdpZyAoMjAxOS0w
OC0xNiAxMzoyNjo0NCkKPiA+ID4gUGxlYXNlLCByZXBvcnQgdGhlIGFjdHVhbCBwcm9ibGVtLiAg
QmxpbmRseSByZXZlcnRpbmcgYSBwYXRjaCB3aXRob3V0Cj4gPiA+IGV2ZW4gYW4gZXhwbGFuYXRp
b24gb2YgeW91ciByZWdyZXNzaW9ucyBpcyBub3QgdGhlIHdheSB0byBkbyBpdC4KPiA+Cj4gPiBB
cyBzdGF0ZWQsIHRoZSBzeXN0ZW0gZG9lc24ndCBzdXNwZW5kLgo+ID4KPiA+IElmIHlvdSB3b3Vs
ZCBsaWtlIHRvIHdhaXQsIHlvdSB3aWxsIGdldCB0ZXN0IHJlc3VsdHMgZnJvbSBvdXIgQ0kKPiA+
IGdpdmluZyB0aGUgY3VycmVudCBmYWlsZWQgc3RhdGUgYW5kIHRoZSBvdXRjb21lIG9mIHRoZSBw
YXRjaC4KPgo+IFBsYXRmb3JtIHR5cGUsIFNTRCB2ZW5kb3IgYW5kIHR5cGUsIGZpcm13YXJlIHZl
cnNpb24/CgpBbHNvIG5vdCBhIGZhbiBvZiBrbmVlLWplcmsgcmV2ZXJ0cy4gRXZlbiBpZiBpdCBt
YXkgdHVybiBvdXQgdG8gYmUKbmVjZXNzYXJ5LCBsZXQncyBhdCBsZWFzdCBzdGFydCB3aXRoIGEg
YnVnIHJlcG9ydCBmb3IgYW4gb3Bwb3J0dW5pdHkKdG8gZml4IGZpcnN0IQoKQ291bGQgeW91IHBs
ZWFzZSB0cnkgUmFmYWVsJ3Mgc29sdXRpb24/IFRoZXNlIHR3byBjb21taXRzIGhlcmU6CgpodHRw
czovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9yYWZhZWwvbGludXgt
cG0uZ2l0L2NvbW1pdC8/aD14cHMxMy05MzgwLTIwMTkwODEyJmlkPWFjY2QyZGQ3MmM4ZjA4NzQ0
MWQ3MjVkZDkxNjY4ODE3MTUxOWU0ZTYKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xp
bnV4L2tlcm5lbC9naXQvcmFmYWVsL2xpbnV4LXBtLmdpdC9jb21taXQvP2g9eHBzMTMtOTM4MC0y
MDE5MDgxMiZpZD00ZWFlZmU4YzYyMWM2MTk1YzkxMDQ0Mzk2ZWQ4MDYwYzE3OWY3YWFlCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
