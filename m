Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D08F219F8D6
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 17:29:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2E956E422;
	Mon,  6 Apr 2020 15:29:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pegase1.c-s.fr (pegase1.c-s.fr [93.17.236.30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE3EE6E200
 for <intel-gfx@lists.freedesktop.org>; Sun,  5 Apr 2020 18:48:05 +0000 (UTC)
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48wN326Bkfz9tx5R;
 Sun,  5 Apr 2020 20:47:58 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=vDT4kbDd; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id QLy_PZYARygD; Sun,  5 Apr 2020 20:47:58 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48wN3250PRz9tx5Q;
 Sun,  5 Apr 2020 20:47:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1586112478; bh=5K5fWcVt/dZhMcfYZl39DOWw/ijhu2ZfXrNWbrQtW5w=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=vDT4kbDd2d2luI9YlINWxSulY5GzJlc/jwO7NCfKm9AMRlr2bdQic4qJizaWFEb5/
 qcVnWwGTahszH0Ix4iGZVUn3QMwmYXlQ3jAlShEJm0JRShtjY55DPEHrt9faonT8l/
 CcmWKseqFccIl50tAZWfd0By1014uveiS11CdABY=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 312BE8B783;
 Sun,  5 Apr 2020 20:48:02 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id Y8LGSBfSdJTp; Sun,  5 Apr 2020 20:48:02 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id A4AC08B774;
 Sun,  5 Apr 2020 20:48:00 +0200 (CEST)
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Michael Ellerman <mpe@ellerman.id.au>
References: <36e43241c7f043a24b5069e78c6a7edd11043be5.1585898438.git.christophe.leroy@c-s.fr>
 <42da416106d5c1cf92bda1e058434fe240b35f44.1585898438.git.christophe.leroy@c-s.fr>
 <CAHk-=wh_DY_dysMX0NuvJmMFr3+QDKOZPZqWKwLkkjgZTuyQ+A@mail.gmail.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <0e5985d7-e73b-455b-6b05-351831f09340@c-s.fr>
Date: Sun, 5 Apr 2020 20:47:26 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAHk-=wh_DY_dysMX0NuvJmMFr3+QDKOZPZqWKwLkkjgZTuyQ+A@mail.gmail.com>
Content-Language: fr
X-Mailman-Approved-At: Mon, 06 Apr 2020 15:29:14 +0000
Subject: Re: [Intel-gfx] [PATCH v2 5/5] uaccess: Rename
 user_access_begin/end() to user_full_access_begin/end()
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Kees Cook <keescook@chromium.org>,
 Dave Airlie <airlied@linux.ie>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 intel-gfx@lists.freedesktop.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Paul Mackerras <paulus@samba.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Peter Anvin <hpa@zytor.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpMZSAwMy8wNC8yMDIwIMOgIDIwOjAxLCBMaW51cyBUb3J2YWxkcyBhIMOpY3JpdMKgOgo+IE9u
IEZyaSwgQXByIDMsIDIwMjAgYXQgMTI6MjEgQU0gQ2hyaXN0b3BoZSBMZXJveQo+IDxjaHJpc3Rv
cGhlLmxlcm95QGMtcy5mcj4gd3JvdGU6Cj4+Cj4+IE5vdyB3ZSBoYXZlIHVzZXJfcmVhZF9hY2Nl
c3NfYmVnaW4oKSBhbmQgdXNlcl93cml0ZV9hY2Nlc3NfYmVnaW4oKQo+PiBpbiBhZGRpdGlvbiB0
byB1c2VyX2FjY2Vzc19iZWdpbigpLgo+IAo+IEkgcmVhbGl6ZSBBbCBhc2tlZCBmb3IgdGhpcywg
YnV0IEkgZG9uJ3QgdGhpbmsgaXQgcmVhbGx5IGFkZHMgYW55dGhpbmcKPiB0byB0aGUgc2VyaWVz
Lgo+IAo+IFRoZSAiZnVsbCIgbWFrZXMgdGhlIG5hbWVzIGxvbmdlciwgYnV0IG5vdCByZWFsbHkg
YW55IG1vcmUgbGVnaWJsZS4KPiAKPiBTbyBJIGxpa2UgMS00LCBidXQgYW0gdW5jb252aW5jZWQg
YWJvdXQgNSBhbmQgd291bGQgcHJlZmVyIHRoYXQgdG8gYmUKPiBkcm9wcGVkLiBTb3JyeSBmb3Ig
dGhlIGJpa2VzaGVkZGluZy4KPiAKClllcyBJIHdhcyBub3Qgc3VyZSBhYm91dCBpdCwgdGhhdCdz
IHRoZSByZWFzb24gd2h5IEkgYWRkZWQgaXQgYXMgdGhlIApsYXN0IHBhdGNoIG9mIHRoZSBzZXJp
ZXMuCgpBbmQgaW4gdGhlIG1lYW50aW1lLCB3ZSBzZWUgUm9ib3RzIHJlcG9ydGluZyBidWlsZCBm
YWlsdXJlcyBkdWUgdG8gCmFkZGl0aW9uYWwgdXNlIG9mIHVzZXJfYWNjZXNzX2JlZ2luKCkgaW4g
cGFyYWxsZWxlIHRvIHRoaXMgY2hhbmdlLCBzbyBJIApndWVzcyBpdCB3b3VsZCBhbnl3YXkgYmUg
YSBjaGFsbGVuZ2UgdG8gcGVyZm9ybSBzdWNoIGEgY2hhbmdlIHdpdGhvdXQgCmNvb3JkaW5hdGlv
bi4KCj4gQW5kIEkgbGlrZSB0aGlzIHNlcmllcyBtdWNoIGJldHRlciB3aXRob3V0IHRoZSBjb29r
aWUgdGhhdCB3YXMKPiBkaXNjdXNzZWQsIGFuZCBqdXN0IG1ha2luZyB0aGUgaGFyZCBydWxlIGJl
IHRoYXQgdGhleSBjYW4ndCBuZXN0Lgo+IAo+IFNvbWUgYXJjaGl0ZWN0dXJlIG1heSBvYnZpb3Vz
bHkgdXNlIGEgY29va2llIGludGVybmFsbHkgaWYgdGhleSBoYXZlCj4gc29tZSBuZXN0aW5nIGJl
aGF2aW9yIG9mIHRoZWlyIG93biwgYnV0IGl0IGRvZXNuJ3QgbG9vayBsaWtlIHdlIGhhdmUKPiBh
bnkgbWFqb3IgcmVhc29uIHRvIGV4cG9zZSB0aGF0IGFzIHRoZSBhY3R1YWwgaW50ZXJmYWNlLgo+
IAo+IFRoZSBvbmx5IG90aGVyIHF1ZXN0aW9uIGlzIGhvdyB0byBzeW5jaHJvbml6ZSB0aGlzPyBJ
J20gb2sgd2l0aCBpdAo+IGdvaW5nIHRocm91Z2ggdGhlIHBwYyB0cmVlLCBmb3IgZXhhbXBsZSwg
YW5kIGp1c3QgbGV0IG90aGVycyBidWlsZCBvbgo+IHRoYXQuICBNYXliZSB1c2luZyBhIHNoYXJl
ZCBpbW11dGFibGUgYnJhbmNoIHdpdGggNS42IGFzIGEgYmFzZT8KCk1pY2hhZWwsIGNhbiB5b3Ug
dGFrZSBwYXRjaGVzIDEgdG8gNCA/CgpPdGhlcndpc2UsIGNhbiB5b3UgYWNrIHBhdGNoIDQgdG8g
ZW5hYmxlIG1lcmdpbmcgdGhyb3VnaCBhbm90aGVyIHRyZWUgPwoKQ2hyaXN0b3BoZQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
