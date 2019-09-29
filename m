Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFBCC25D1
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 19:46:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 603DB6E4B5;
	Mon, 30 Sep 2019 17:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 692876E347
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Sep 2019 21:09:12 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id r19so11092230wmh.2
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Sep 2019 14:09:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=835gZDZiuAF6RS45JuXHhw4Y13hBZmcyjNDrpLLnfmM=;
 b=Q9EUOs76Y5vdve2JeC6izcG7FSGPORJrVwbQZrGKYizXP4jgeHJAtVF34l1lx59L1F
 peVfwVwtQs2Cz4GLWeos/ot+IrZ/3ifhLu8cda3E8G/kCQdMv37b8JlBzsPu0eUZoP2/
 OEPDSCY/xkBO7b8oNfFJuUNWoz3+jjb261Kba3NTkExDr/buPUG/u7pBbYZXzisPhFn9
 yot6BIpav+rt5pR7OfU8UMbv3SsN+0xFWu0Bhj5XzoIsfVZZ9ULejz1RyKYFnVu36VYW
 a3HxBPbhqnkZztHpXV3kkGBmAewWh9P9Sblb2mnnEmPErC7bxVpLv41f/BgN1dKVeUJU
 F0+w==
X-Gm-Message-State: APjAAAVfwHfzfaC4PJX6q5jLTgsqai3fWJvYOhHQC4cA5vuSDzP11qDl
 iqR8poNwAqnBr5hr52vVhA==
X-Google-Smtp-Source: APXvYqw/QW34YVSRfb9yYDWgKOd0tsxqOry2MrRncpo1t7GZ9CS1E9wu/zy+Y6iVPy/h/SGTKM1XVQ==
X-Received: by 2002:a1c:3cc3:: with SMTP id
 j186mr14001127wma.119.1569791350994; 
 Sun, 29 Sep 2019 14:09:10 -0700 (PDT)
Received: from avx2 ([46.53.249.180])
 by smtp.gmail.com with ESMTPSA id j1sm23452456wrg.24.2019.09.29.14.09.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 29 Sep 2019 14:09:10 -0700 (PDT)
Date: Mon, 30 Sep 2019 00:09:08 +0300
From: Alexey Dobriyan <adobriyan@gmail.com>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <20190929210908.GA14456@avx2>
References: <20190929200619.GA12851@avx2>
 <f99ca43d-1ba2-95fb-b90f-6706a06f8ce6@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f99ca43d-1ba2-95fb-b90f-6706a06f8ce6@rasmusvillemoes.dk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Approved-At: Mon, 30 Sep 2019 17:46:08 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=835gZDZiuAF6RS45JuXHhw4Y13hBZmcyjNDrpLLnfmM=;
 b=WIUTOy91IuoCxAELuPqxD4CKI0w4Iiw7JljoJS3qctBLHtDR76dHlhD4OpgzaNUnWQ
 tKRpmpEgz21rdRo2gCI5zl7tzSSeGwhKxh9hR0Ui1ebdy0CTYRRsNaB2/I2X9s6NFZYj
 UecVusL2XHESUreXOgMkoY/VSUylSNw/8RLBC1jjyc8Rz+UZirvQ6BRkh7xmSmJPIHth
 5sBqvC243Hbujb661UxDZOSmFS7heSRsrs6wf0PMggl200i3/QHKcpJptT4uw9wSA4G8
 H3Kh2XR2QntogKOgLxgDyqLDe39VbIcsCMVFNXJNh2jJVyBg/LKt9NHnL3sa7Ht44Czx
 RJlg==
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 mingo@redhat.com, rostedt@goodmis.org, akpm@linux-foundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU3VuLCBTZXAgMjksIDIwMTkgYXQgMTA6MjE6NDhQTSArMDIwMCwgUmFzbXVzIFZpbGxlbW9l
cyB3cm90ZToKPiBPbiAyOS8wOS8yMDE5IDIyLjA2LCBBbGV4ZXkgRG9icml5YW4gd3JvdGU6Cj4g
PiAqIFNpbXBseSBjb21wYXJlIC0xIHdpdGggMCwKPiA+ICogRHJvcCB1bm5lY2Vzc2FyeSBwYXJl
bnRoZXNpcyBzZXRzCj4gPiAKPiA+IC0jZGVmaW5lIGlzX3NpZ25lZF90eXBlKHR5cGUpICAgICAg
ICgoKHR5cGUpKC0xKSkgPCAodHlwZSkxKQo+ID4gKyNkZWZpbmUgaXNfc2lnbmVkX3R5cGUodHlw
ZSkgICAgICAgKCh0eXBlKS0xIDwgMCkKPiAKPiBOQUsuIEkgd3JvdGUgaXQgdGhhdCB3YXkgdG8g
YXZvaWQgLVd0YXV0b2xvZ2ljYWwtY29tcGFyZSB3aGVuIHR5cGUgaXMKPiB1bnNpZ25lZC4KCldh
cyBpcyBXPTE/Cgpnb2Rib2x0IGRvZXNuJ3Qgc2hvdyBpdCB3aXRoIGp1c3QgLVdhbGwKCglodHRw
czovL2dvZGJvbHQub3JnL3ova0NBN21tCgpBbmQgdGhlIHdhcm5pbmcgd2hpY2ggZm91bmQgaTkx
NSBjYXNlIGlzIC1XZXh0cmEgbm90IC1XdGF1dG9sb2dpY2FsLWNvbXBhcmUuCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
