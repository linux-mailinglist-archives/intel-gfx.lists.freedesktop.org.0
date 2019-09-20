Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A49C4B95C5
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 18:36:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E28D46FD5F;
	Fri, 20 Sep 2019 16:36:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 526206FC59;
 Fri, 20 Sep 2019 09:38:16 +0000 (UTC)
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 921C92086A;
 Fri, 20 Sep 2019 09:38:09 +0000 (UTC)
Date: Fri, 20 Sep 2019 10:38:06 +0100
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Message-ID: <20190920093700.7nfaghxdrmubp2do@willie-the-truck>
References: <1568909380-32199-1-git-send-email-cai@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568909380-32199-1-git-send-email-cai@lca.pw>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Mailman-Approved-At: Fri, 20 Sep 2019 16:36:35 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1568972296;
 bh=tGK4is/D5yjSmtKMNJsAOY7JysJV6v3B5d+jHSPQihw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pin0EAM6iDgkBVW67KjzDhHgn5lVksFzTRsfquXbR3bJHYdq/O5aV471P+JzSmcS6
 YHKtvlpkzAdl1VYGzcfByN4VuQ4TGD3IU+uGOYlo8hc9sDRuxSD05aPMHw1eu/wEnh
 h/JzstVetnB6YPglx4zQBqM6UU+z/+zyzbI85BIc=
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
Cc: juri.lelli@redhat.com, peterz@infradead.org,
 dri-devel@lists.freedesktop.org, mhocko@kernel.org,
 alexander.levin@microsoft.com, joseph.qi@linux.alibaba.com,
 netdev@vger.kernel.org, duyuyang@gmail.com, daniel@iogearbox.net,
 mark@fasheh.com, airlied@linux.ie, mingo@redhat.com, vdavydov.dev@gmail.com,
 jslaby@suse.com, linux-ext4@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 jack@suse.com, mripard@kernel.org, tj@kernel.org, viro@zeniv.linux.org.uk,
 cgroups@vger.kernel.org, bpf@vger.kernel.org, tytso@mit.edu,
 linux-mm@kvack.org, linux-api@vger.kernel.org, linux-kernel@vger.kernel.org,
 hannes@cmpxchg.org, jlbec@evilplan.or, gregkh@linuxfoundation.org,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org, davem@davemloft.net,
 ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBTZXAgMTksIDIwMTkgYXQgMTI6MDk6NDBQTSAtMDQwMCwgUWlhbiBDYWkgd3JvdGU6
Cj4gU2luY2UgdGhlIGNvbW1pdCBiNGFkZmU4ZTA1ZjEgKCJsb2NraW5nL2xvY2tkZXA6IFJlbW92
ZSB1bnVzZWQgYXJndW1lbnQKPiBpbiBfX2xvY2tfcmVsZWFzZSIpLCBAbmVzdGVkIGlzIG5vIGxv
bmdlciB1c2VkIGluIGxvY2tfcmVsZWFzZSgpLCBzbwo+IHJlbW92ZSBpdCBmcm9tIGFsbCBsb2Nr
X3JlbGVhc2UoKSBjYWxscyBhbmQgZnJpZW5kcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBRaWFuIENh
aSA8Y2FpQGxjYS5wdz4KPiAtLS0KCkFsdGhvdWdoIHRoaXMgbG9va3MgZmluZSB0byBtZSBhdCBh
IGZpcnN0IGdsYW5jZSwgaXQgbWlnaHQgYmUgc2xpZ2h0bHkKZWFzaWVyIHRvIG1hbmFnZSBpZiB5
b3UgaGl0IHtzcGluLHJ3bG9jayxzZXFjb3VudCxtdXRleCxyd3NlbX1fcmVsZWFzZSgpCmZpcnN0
IHdpdGggY29jY2luZWxsZSBzY3JpcHRzLCBhbmQgdGhlbiBoYWNrIGxvY2tfcmVsZWFzZSgpIGFz
IGEgZmluYWwKcGF0Y2guIFRoYXQgd2F5IGl0J3MgZWFzeSB0byByZWdlbmVyYXRlIHRoaW5ncyBp
ZiBuZWVkZWQuCgpDaGVlcnMsCgpXaWxsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
