Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29724221B9
	for <lists+intel-gfx@lfdr.de>; Sat, 18 May 2019 07:30:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA721899BB;
	Sat, 18 May 2019 05:30:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com
 [210.131.2.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 377B8899BB
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 May 2019 05:30:27 +0000 (UTC)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com
 [209.85.222.45]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x4I5U7Lh032366
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 May 2019 14:30:08 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x4I5U7Lh032366
X-Nifty-SrcIP: [209.85.222.45]
Received: by mail-ua1-f45.google.com with SMTP id d4so3531047uaj.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 22:30:07 -0700 (PDT)
X-Gm-Message-State: APjAAAXkjknVQ8esLBR52BFRikNjswXIp5EtTW5NugkOy8MQPehUtFb+
 tvNh/jWeO+bmhPPgYq8UTKwwu3r1k4PbIUrKBuU=
X-Google-Smtp-Source: APXvYqytsoHz/FUR/y3xPLk9XD9sLwCi502xoetqPlftmQaLTMdIX5RuLxGmM5u4PfQmgTJJB/DBBxp3wT59sCGNt+0=
X-Received: by 2002:a9f:24a3:: with SMTP id 32mr6526105uar.109.1558157406712; 
 Fri, 17 May 2019 22:30:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190516194818.29230-1-jani.nikula@intel.com>
 <155808211071.12244.10320883277188429270@skylake-alporthouse-com>
In-Reply-To: <155808211071.12244.10320883277188429270@skylake-alporthouse-com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 18 May 2019 14:29:30 +0900
X-Gmail-Original-Message-ID: <CAK7LNARMb4Wza09Kq2it=NUkbd3asS9Me7uhUOSwPbu+j0OmeQ@mail.gmail.com>
Message-ID: <CAK7LNARMb4Wza09Kq2it=NUkbd3asS9Me7uhUOSwPbu+j0OmeQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nifty.com; s=dec2015msa; t=1558157408;
 bh=bVCmTcACCJr6uhRD/vNQSoiPeZODwHTqDi7Us1rmUAE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WP362Zh1Jih8KFwiv1ygYG2IbQMzuC3/w2M2jJ7aPOFh7bNfFbkmJykY2UXHgz3pY
 CTfGPk42zIjlPMYXT1TmkuG3F41r91cQNM0gtkQxRcLDCuAuI9SBW6d6psBW4ZR4FD
 y7Wkb+1r5VMus0ker9L49QXSFhHjcqMJO7/IEobNmjbfF+s83CezDee2IaY/reCPfY
 YxleIEOTlPsAy2xudbpdTm5SC6n9ZYgQquiiQ2iDHWxFX/OH53GavAiuMswuREYdje
 5Zgr/QyxcMwHmhO2ZPoeSytxBVqSSsqtF4ec8sqkOu3y2ck96DeARJbezDvGm1U+fc
 0HwEb4AHM+ivw==
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Michal Marek <michal.lkml@markovi.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBNYXkgMTcsIDIwMTkgYXQgNTozNSBQTSBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4KPiBRdW90aW5nIEphbmkgTmlrdWxhICgyMDE5LTA1LTE2
IDIwOjQ4OjE2KQo+ID4gZGlmZiAtLWdpdCBhL3NjcmlwdHMvTWFrZWZpbGUubGliIGIvc2NyaXB0
cy9NYWtlZmlsZS5saWIKPiA+IGluZGV4IDhhMWY2NGYxNzc0MC4uYzI4MzlkZTA2NDg1IDEwMDY0
NAo+ID4gLS0tIGEvc2NyaXB0cy9NYWtlZmlsZS5saWIKPiA+ICsrKyBiL3NjcmlwdHMvTWFrZWZp
bGUubGliCj4gPiBAQCAtNjYsNiArNjYsOSBAQCBleHRyYS15ICs9ICQocGF0c3Vic3QgJS5kdGIs
JS5kdC55YW1sLCAkKGR0Yi15KSkKPiA+ICBleHRyYS0kKENPTkZJR19PRl9BTExfRFRCUykgKz0g
JChwYXRzdWJzdCAlLmR0YiwlLmR0LnlhbWwsICQoZHRiLSkpCj4gPiAgZW5kaWYKPiA+Cj4gPiAr
IyBUZXN0IHNlbGYtY29udGFpbmVkIGhlYWRlcnMKPiA+ICtleHRyYS0kKENPTkZJR19IRUFERVJf
VEVTVCkgKz0gJChwYXRzdWJzdCAlLmgsJS5oZWFkZXJfdGVzdC5vLCQoaGVhZGVyLXRlc3QteSkp
Cj4KPiBUaGlzIGRpZG4ndCBnZXQgcHVsbGVkIGludG8gY2xlYW4tZmlsZXMuCj4KPiBjbGVhbi1m
aWxlcy0kKENPTkZJR19IRUFERVJfVEVTVCkgKz0gJChwYXRzdWJzdCAlLmgsJS5oZWFkZXJfdGVz
dC5jLCQoaGVhZGVyLXRlc3QteSkpCj4gPwo+Cj4gTm90IGVub3VnaC4gTm9yIGlzIGNsZWFuLWZp
bGVzLXkgKz0uLi4KCgpUaGUgY29ycmVjdCBzeW50YXggaXMgJ2NsZWFuLWZpbGVzICs9JwppbnN0
ZWFkIG9mICdjbGVhbi1maWxlcy15ICs9JwoKCklmIEtidWlsZCBzdXBwb3J0cyB0aGlzIGluIHRo
ZSBjb3JlIE1ha2VmaWxlcywKd2UgY2FuIGFkZCAiLW8gLW5hbWUgJyouaGVhZGVyX3Rlc3QuYyci
CnRvIHRoZSB0b3AgTWFrZWZpbGUuCgoKCj4gQW5kIGl0IHNob3VsZCBhbHNvIGJlIHB1dCBpbnRv
IHRoZSBnbG9iYWwgZ2l0aWdub3JlIEkgdGhpbmsuCgoKRG9jdW1lbnRhdGlvbi9kb250ZGlmZiB0
b28uCgoKCj4gLUNocmlzCgoKCi0tIApCZXN0IFJlZ2FyZHMKTWFzYWhpcm8gWWFtYWRhCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
