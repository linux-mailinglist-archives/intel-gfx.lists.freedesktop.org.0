Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0844DB95C8
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 18:36:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25F446FD62;
	Fri, 20 Sep 2019 16:36:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com
 [IPv6:2607:f8b0:4864:20::742])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3123D6FCED
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 12:50:41 +0000 (UTC)
Received: by mail-qk1-x742.google.com with SMTP id w2so7177842qkf.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 05:50:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2hQDTQjnSsW1VsG1oz7/x04n4JF0426dRW41K9FNadk=;
 b=UstxecyFeRR0iJMXV38dBDI1SOh8lTjY71zNiikJmv7OCJUT4pdpQlO1U/BI1B9hNX
 hPFyvvnkSvVq3LNg0CXUi5iPpsuAXnbOmyLexfq6GIGSIMWpZNZN1OjdLCZpXpjrD0sn
 5wK5oM+lGf3swtFLJh4C1DBL+b3Qy/9lVn5NUduNmB9hcnScfNvRg12OF8u+VfyrzmPE
 y/0aHt4igjjyGOjChJZ53rpzAeiglBRAZ+wulPRAOTScaAKjREoRG+UokTMSsV8kwdAV
 Hn8yERDzkSF7sMIGT9hobn3TE6gSHxB99YHtEBskIAweatEPtUTwSdYCl/kyt1hVXXHC
 LtZw==
X-Gm-Message-State: APjAAAVcGME/XbMpkMFNvnSFeJHgnqSD1vgej+WGoXQ6d4K4+IoKmEUm
 j5Eyg0bFuZTVT0G1DqyxP9QdZQ==
X-Google-Smtp-Source: APXvYqznecK3jhF+TBvYQOTZsoN72Wk/TTjLaioqEkVwBlAC/rb6eqpqbrFQUgdUDhneH2y8w9Ptrg==
X-Received: by 2002:a37:a9c1:: with SMTP id s184mr3481758qke.360.1568983840132; 
 Fri, 20 Sep 2019 05:50:40 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id a11sm931585qkc.123.2019.09.20.05.50.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Sep 2019 05:50:38 -0700 (PDT)
Message-ID: <1568983836.5576.194.camel@lca.pw>
From: Qian Cai <cai@lca.pw>
To: Will Deacon <will@kernel.org>, torvalds@linux-foundation.org
Date: Fri, 20 Sep 2019 08:50:36 -0400
In-Reply-To: <20190920093700.7nfaghxdrmubp2do@willie-the-truck>
References: <1568909380-32199-1-git-send-email-cai@lca.pw>
 <20190920093700.7nfaghxdrmubp2do@willie-the-truck>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-Mailman-Approved-At: Fri, 20 Sep 2019 16:36:35 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2hQDTQjnSsW1VsG1oz7/x04n4JF0426dRW41K9FNadk=;
 b=ijzzmZ3nvF7W4G6FRYIveg83+VVXhZ1mbySwLz7P7vjbMH20YscYZLMa6yQ1Ei211J
 rauPw9Bs3NzG3FilFYH4usejb8l+vmPvaElVOhJAnFRWMrLoV0Awdey55Jm0QEJdgN+7
 4Pf3qhjAAVCv5g9GQovJ3UeJ3u7wLUaKGFQ85WtB8st4NoUKy9RWRdsaBTxMNzD1c01P
 e4c3briubZW7NQ8e9ltVbNKymhKjonZIDtBC5u4xkTxnNeKdY07M9/jPQTmjSzBGSunV
 OQaVqjiO1QXuxaypDk1MoJvp1JEAkFkjdTdHEAIWj720NGgurgqKPGGQsEa8yt+JrfkU
 IJhA==
Subject: Re: [Intel-gfx] [PATCH -next] treewide: remove unused argument in
 lock_release()
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
Cc: juri.lelli@redhat.com, peterz@infradead.org, ast@kernel.org,
 dri-devel@lists.freedesktop.org, mhocko@kernel.org,
 alexander.levin@microsoft.com, joseph.qi@linux.alibaba.com,
 netdev@vger.kernel.org, duyuyang@gmail.com, daniel@iogearbox.net,
 mark@fasheh.com, airlied@linux.ie, mingo@redhat.com, vdavydov.dev@gmail.com,
 jslaby@suse.com, linux-ext4@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 jack@suse.com, mripard@kernel.org, tj@kernel.org, viro@zeniv.linux.org.uk,
 cgroups@vger.kernel.org, bpf@vger.kernel.org, tytso@mit.edu,
 linux-mm@kvack.org, linux-api@vger.kernel.org, linux-kernel@vger.kernel.org,
 hannes@cmpxchg.org, gregkh@linuxfoundation.org, linux-fsdevel@vger.kernel.org,
 akpm@linux-foundation.org, davem@davemloft.net, ocfs2-devel@oss.oracle.com,
 jlbec@evilplan.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDE5LTA5LTIwIGF0IDEwOjM4ICswMTAwLCBXaWxsIERlYWNvbiB3cm90ZToKPiBP
biBUaHUsIFNlcCAxOSwgMjAxOSBhdCAxMjowOTo0MFBNIC0wNDAwLCBRaWFuIENhaSB3cm90ZToK
PiA+IFNpbmNlIHRoZSBjb21taXQgYjRhZGZlOGUwNWYxICgibG9ja2luZy9sb2NrZGVwOiBSZW1v
dmUgdW51c2VkIGFyZ3VtZW50Cj4gPiBpbiBfX2xvY2tfcmVsZWFzZSIpLCBAbmVzdGVkIGlzIG5v
IGxvbmdlciB1c2VkIGluIGxvY2tfcmVsZWFzZSgpLCBzbwo+ID4gcmVtb3ZlIGl0IGZyb20gYWxs
IGxvY2tfcmVsZWFzZSgpIGNhbGxzIGFuZCBmcmllbmRzLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5
OiBRaWFuIENhaSA8Y2FpQGxjYS5wdz4KPiA+IC0tLQo+IAo+IEFsdGhvdWdoIHRoaXMgbG9va3Mg
ZmluZSB0byBtZSBhdCBhIGZpcnN0IGdsYW5jZSwgaXQgbWlnaHQgYmUgc2xpZ2h0bHkKPiBlYXNp
ZXIgdG8gbWFuYWdlIGlmIHlvdSBoaXQge3NwaW4scndsb2NrLHNlcWNvdW50LG11dGV4LHJ3c2Vt
fV9yZWxlYXNlKCkKPiBmaXJzdCB3aXRoIGNvY2NpbmVsbGUgc2NyaXB0cywgYW5kIHRoZW4gaGFj
ayBsb2NrX3JlbGVhc2UoKSBhcyBhIGZpbmFsCj4gcGF0Y2guIFRoYXQgd2F5IGl0J3MgZWFzeSB0
byByZWdlbmVyYXRlIHRoaW5ncyBpZiBuZWVkZWQuCgpJIGFtIG5vdCBzdXJlIGlmIGl0IHdvcnRo
IHRoZSBleHRyYSBlZmZvcnRzIHdoZXJlIEkgaGF2ZSB0byByZXRlc3QgaXQgb24gYWxsCmFyY2hp
dGVjdHVyZXMsIGFuZCB0aGUgcGF0Y2ggaXMgcmVhbGx5IHNpbXBsZSwgYnV0IEkgY2FuIGNlcnRh
aW5seSBkbyB0aGF0IGlmCnlvdSBpbnNpc3QuCgpJIGhhdmUganVzdCBjb25maXJtZWQgdGhlIHBh
dGNoIFsxXSBhbHNvIGFwcGxpZWQgY29ycmVjdGx5IHRvIHRoZSBsYXRlc3QKbWFpbmxpbmUsIHNv
IGl0IG1pZ2h0IGJlIHRoZSBiZXN0IHRpbWUganVzdCBmb3IgTGludXMgdG8gbWVyZ2UgaXQgZGly
ZWN0bHkgc28gaXQKZG9lcyBub3QgaW50cm9kdWNlIGJ1aWxkIGVycm9ycyBsYXRlciBvbj8KClsx
XQoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8xNTY4OTA5MzgwLTMyMTk5LTEtZ2l0LXNl
bmQtZW1haWwtY2FpQGxjYS5wdy8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
