Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D03E21567
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 10:35:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2663189259;
	Fri, 17 May 2019 08:35:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50ADA89259
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 08:35:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16585171-1500050 for multiple; Fri, 17 May 2019 09:35:12 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, linux-kbuild@vger.kernel.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190516194818.29230-1-jani.nikula@intel.com>
References: <20190516194818.29230-1-jani.nikula@intel.com>
Message-ID: <155808211071.12244.10320883277188429270@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 17 May 2019 09:35:10 +0100
Subject: Re: [Intel-gfx] [RFC 1/3] kbuild: add support for ensuring headers
 are self-contained
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
Cc: jani.nikula@intel.com, Masahiro Yamada <yamada.masahiro@socionext.com>,
 intel-gfx@lists.freedesktop.org, Michal Marek <michal.lkml@markovi.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNS0xNiAyMDo0ODoxNikKPiBkaWZmIC0tZ2l0IGEv
c2NyaXB0cy9NYWtlZmlsZS5saWIgYi9zY3JpcHRzL01ha2VmaWxlLmxpYgo+IGluZGV4IDhhMWY2
NGYxNzc0MC4uYzI4MzlkZTA2NDg1IDEwMDY0NAo+IC0tLSBhL3NjcmlwdHMvTWFrZWZpbGUubGli
Cj4gKysrIGIvc2NyaXB0cy9NYWtlZmlsZS5saWIKPiBAQCAtNjYsNiArNjYsOSBAQCBleHRyYS15
ICs9ICQocGF0c3Vic3QgJS5kdGIsJS5kdC55YW1sLCAkKGR0Yi15KSkKPiAgZXh0cmEtJChDT05G
SUdfT0ZfQUxMX0RUQlMpICs9ICQocGF0c3Vic3QgJS5kdGIsJS5kdC55YW1sLCAkKGR0Yi0pKQo+
ICBlbmRpZgo+ICAKPiArIyBUZXN0IHNlbGYtY29udGFpbmVkIGhlYWRlcnMKPiArZXh0cmEtJChD
T05GSUdfSEVBREVSX1RFU1QpICs9ICQocGF0c3Vic3QgJS5oLCUuaGVhZGVyX3Rlc3QubywkKGhl
YWRlci10ZXN0LXkpKQoKVGhpcyBkaWRuJ3QgZ2V0IHB1bGxlZCBpbnRvIGNsZWFuLWZpbGVzLgoK
Y2xlYW4tZmlsZXMtJChDT05GSUdfSEVBREVSX1RFU1QpICs9ICQocGF0c3Vic3QgJS5oLCUuaGVh
ZGVyX3Rlc3QuYywkKGhlYWRlci10ZXN0LXkpKQo/CgpOb3QgZW5vdWdoLiBOb3IgaXMgY2xlYW4t
ZmlsZXMteSArPS4uLgoKQW5kIGl0IHNob3VsZCBhbHNvIGJlIHB1dCBpbnRvIHRoZSBnbG9iYWwg
Z2l0aWdub3JlIEkgdGhpbmsuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
