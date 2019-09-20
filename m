Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B15B95CB
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 18:36:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54AAD6FD63;
	Fri, 20 Sep 2019 16:36:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42CCC6E051;
 Fri, 20 Sep 2019 13:49:53 +0000 (UTC)
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5DE062054F;
 Fri, 20 Sep 2019 13:49:46 +0000 (UTC)
Date: Fri, 20 Sep 2019 14:49:43 +0100
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Message-ID: <20190920134942.iiygzg6s7dcay56l@willie-the-truck>
References: <1568909380-32199-1-git-send-email-cai@lca.pw>
 <20190920093700.7nfaghxdrmubp2do@willie-the-truck>
 <1568983836.5576.194.camel@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568983836.5576.194.camel@lca.pw>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Mailman-Approved-At: Fri, 20 Sep 2019 16:36:35 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1568987393;
 bh=JziL+5K0N67ZfzV4tlVfkTPVyCElvzMYgV7JKwZMvak=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I3aTruf+IgU+nu2WE9zoVKEsbQiuW1la0SrCePBCYi/j7Jep2PZJEI/aEbQCK2dlD
 FJkBTGSE1Dae8vjnWNYZOGUZtAOcdhrBtwvOMy1GDMt96r5u1dd2sz5lfXy4XASxJo
 Khgn1c3fwX9e7+fy0lwK0UCkXIO/oAu8Q/KnWcIA=
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
 akpm@linux-foundation.org, torvalds@linux-foundation.org, davem@davemloft.net,
 ocfs2-devel@oss.oracle.com, jlbec@evilplan.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBTZXAgMjAsIDIwMTkgYXQgMDg6NTA6MzZBTSAtMDQwMCwgUWlhbiBDYWkgd3JvdGU6
Cj4gT24gRnJpLCAyMDE5LTA5LTIwIGF0IDEwOjM4ICswMTAwLCBXaWxsIERlYWNvbiB3cm90ZToK
PiA+IE9uIFRodSwgU2VwIDE5LCAyMDE5IGF0IDEyOjA5OjQwUE0gLTA0MDAsIFFpYW4gQ2FpIHdy
b3RlOgo+ID4gPiBTaW5jZSB0aGUgY29tbWl0IGI0YWRmZThlMDVmMSAoImxvY2tpbmcvbG9ja2Rl
cDogUmVtb3ZlIHVudXNlZCBhcmd1bWVudAo+ID4gPiBpbiBfX2xvY2tfcmVsZWFzZSIpLCBAbmVz
dGVkIGlzIG5vIGxvbmdlciB1c2VkIGluIGxvY2tfcmVsZWFzZSgpLCBzbwo+ID4gPiByZW1vdmUg
aXQgZnJvbSBhbGwgbG9ja19yZWxlYXNlKCkgY2FsbHMgYW5kIGZyaWVuZHMuCj4gPiA+IAo+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBRaWFuIENhaSA8Y2FpQGxjYS5wdz4KPiA+ID4gLS0tCj4gPiAKPiA+
IEFsdGhvdWdoIHRoaXMgbG9va3MgZmluZSB0byBtZSBhdCBhIGZpcnN0IGdsYW5jZSwgaXQgbWln
aHQgYmUgc2xpZ2h0bHkKPiA+IGVhc2llciB0byBtYW5hZ2UgaWYgeW91IGhpdCB7c3Bpbixyd2xv
Y2ssc2VxY291bnQsbXV0ZXgscndzZW19X3JlbGVhc2UoKQo+ID4gZmlyc3Qgd2l0aCBjb2NjaW5l
bGxlIHNjcmlwdHMsIGFuZCB0aGVuIGhhY2sgbG9ja19yZWxlYXNlKCkgYXMgYSBmaW5hbAo+ID4g
cGF0Y2guIFRoYXQgd2F5IGl0J3MgZWFzeSB0byByZWdlbmVyYXRlIHRoaW5ncyBpZiBuZWVkZWQu
Cj4gCj4gSSBhbSBub3Qgc3VyZSBpZiBpdCB3b3J0aCB0aGUgZXh0cmEgZWZmb3J0cyB3aGVyZSBJ
IGhhdmUgdG8gcmV0ZXN0IGl0IG9uIGFsbAo+IGFyY2hpdGVjdHVyZXMsIGFuZCB0aGUgcGF0Y2gg
aXMgcmVhbGx5IHNpbXBsZSwgYnV0IEkgY2FuIGNlcnRhaW5seSBkbyB0aGF0IGlmCj4geW91IGlu
c2lzdC4KCkknbSBub3QgaW5zaXN0aW5nLCBqdXN0IHRob3VnaHQgaXQgbWlnaHQgYmUgZWFzaWVy
IHRvIGdldCBpdCBtZXJnZWQgdGhhdAp3YXkuIElmIHlvdSBwcmVmZXIgdG8gZ28gd2l0aCB0aGUg
YmlnIGRpZmYsCgpBY2tlZC1ieTogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KCldpbGwK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
