Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C02054C79D4
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Feb 2022 21:11:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8A5710E5A5;
	Mon, 28 Feb 2022 20:10:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01C4910E5A5
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Feb 2022 20:10:57 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id b11so23281192lfb.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Feb 2022 12:10:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LeZ8UzRXrDw4d1M4BG6ctt9COK0EF5j9qtOsLWtMfJg=;
 b=Jhdls+DdmLi+4DWS7o2GehQ/Yg8vWPth9HxY0ymuDsFhiEF5hlRLzgd1PV4wJ4dLVJ
 JdRWd6PhVxu3cPtesSY0XREEgjw/sVhI1zgx2ECNJUHRlykk7MmbqhfMtkifVM/LmgYS
 6chNfwYqW0eu75y5MSRY9nnHOEZnFkvhMXNYc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LeZ8UzRXrDw4d1M4BG6ctt9COK0EF5j9qtOsLWtMfJg=;
 b=lBQaHpll/vYkopWLqhrGqMS1oKS3tNMZdnuvmK77VDK09rdEMmQy28zBuqL/YQwrkn
 vu1iT0eHsXqlaD6PXtLbhN53aGn3DVvAG6oAjYE0XVxavCYRCGbj1SOnNMAXa8+jPlZd
 P4QRCdRLXn/w8r9rNlG0chTo7FHbTbr4BbMoxFPdxbN+cqlDhY0uZNqoFvSRNfDRSlzK
 cBiOjPv7L27KqdSlkjaLRP9nOXcgglWBKvN4MV2QKTidiBaRFfMt8KQwHlnA9jONtFtr
 fA9ZIY1eUD/xFBIqDcDrE93WInHMTn/ArLMweyom9+rZsAxAcShrvMlkIFkbH4qXutJ5
 mGkg==
X-Gm-Message-State: AOAM530+wsRLzGsm/DLafualls/RHKEFH9GiuzDzU0ZoGWbjNMje4va9
 7XCsUrldlY56XCom/o/d3VcnKIp/H0CTuFsoebk=
X-Google-Smtp-Source: ABdhPJzfsrz32yFEEy0xIMkcBTeyNX0j+sp40oxhob7w8yJldEKOQI/1r++Q9sgLaO7oZDiTHD1pgg==
X-Received: by 2002:a05:6512:234b:b0:439:9afb:2ff7 with SMTP id
 p11-20020a056512234b00b004399afb2ff7mr13883937lfu.297.1646079056109; 
 Mon, 28 Feb 2022 12:10:56 -0800 (PST)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com.
 [209.85.167.44]) by smtp.gmail.com with ESMTPSA id
 n16-20020a0565120ad000b004431bbc33f4sm1115950lfu.223.2022.02.28.12.10.52
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Feb 2022 12:10:54 -0800 (PST)
Received: by mail-lf1-f44.google.com with SMTP id f37so23263477lfv.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Feb 2022 12:10:52 -0800 (PST)
X-Received: by 2002:ac2:4d91:0:b0:443:127b:558a with SMTP id
 g17-20020ac24d91000000b00443127b558amr14027806lfe.542.1646079041191; Mon, 28
 Feb 2022 12:10:41 -0800 (PST)
MIME-Version: 1.0
References: <20220228110822.491923-1-jakobkoschel@gmail.com>
 <20220228110822.491923-3-jakobkoschel@gmail.com>
 <2e4e95d6-f6c9-a188-e1cd-b1eae465562a@amd.com>
 <CAHk-=wgQps58DPEOe4y5cTh5oE9EdNTWRLXzgMiETc+mFX7jzw@mail.gmail.com>
 <CAHk-=wj8fkosQ7=bps5K+DDazBXk=ypfn49A0sEq+7-nZnyfXA@mail.gmail.com>
In-Reply-To: <CAHk-=wj8fkosQ7=bps5K+DDazBXk=ypfn49A0sEq+7-nZnyfXA@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 28 Feb 2022 12:10:24 -0800
X-Gmail-Original-Message-ID: <CAHk-=wiTCvLQkHcJ3y0hpqH7FEk9D28LDvZZogC6OVLk7naBww@mail.gmail.com>
Message-ID: <CAHk-=wiTCvLQkHcJ3y0hpqH7FEk9D28LDvZZogC6OVLk7naBww@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: multipart/mixed; boundary="0000000000008601b205d919a4ad"
Subject: Re: [Intel-gfx] [PATCH 2/6] treewide: remove using list iterator
 after loop body as a ptr
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>,
 alsa-devel@alsa-project.org, KVM list <kvm@vger.kernel.org>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, linux-iio@vger.kernel.org,
 nouveau@lists.freedesktop.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Cristiano Giuffrida <c.giuffrida@vu.nl>, "Bos, H.J." <h.j.bos@vu.nl>,
 linux1394-devel@lists.sourceforge.net, drbd-dev@lists.linbit.com,
 linux-arch <linux-arch@vger.kernel.org>, CIFS <linux-cifs@vger.kernel.org>,
 linux-aspeed@lists.ozlabs.org, linux-scsi <linux-scsi@vger.kernel.org>,
 linux-rdma <linux-rdma@vger.kernel.org>, linux-staging@lists.linux.dev,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 intel-wired-lan@lists.osuosl.org, kgdb-bugreport@lists.sourceforge.net,
 bcm-kernel-feedback-list@broadcom.com,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergman <arnd@arndb.de>,
 Linux PM <linux-pm@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Brian Johannesmeyer <bjohannesmeyer@gmail.com>,
 Nathan Chancellor <nathan@kernel.org>, dma <dmaengine@vger.kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Jakob Koschel <jakobkoschel@gmail.com>, v9fs-developer@lists.sourceforge.net,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-sgx@vger.kernel.org,
 linux-block <linux-block@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 linux-usb@vger.kernel.org, samba-technical@lists.samba.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux F2FS Dev Mailing List <linux-f2fs-devel@lists.sourceforge.net>,
 tipc-discussion@lists.sourceforge.net,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Mike Rapoport <rppt@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--0000000000008601b205d919a4ad
Content-Type: text/plain; charset="UTF-8"

On Mon, Feb 28, 2022 at 12:03 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> Side note: we do need *some* way to do it.

Ooh.

This patch is a work of art.

And I mean that in the worst possible way.

We can do

        typeof(pos) pos

in the 'for ()' loop, and never use __iter at all.

That means that inside the for-loop, we use a _different_ 'pos' than outside.

And then the compiler will not see some "might be uninitialized", but
the outer 'pos' *will* be uninitialized.

Unless, of course, the outer 'pos' had that pointless explicit initializer.

Here - can somebody poke holes in this "work of art" patch?

                     Linus

--0000000000008601b205d919a4ad
Content-Type: text/x-patch; charset="US-ASCII"; name="patch.diff"
Content-Disposition: attachment; filename="patch.diff"
Content-Transfer-Encoding: base64
Content-ID: <f_l074y7ca0>
X-Attachment-Id: f_l074y7ca0

IE1ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICB8IDIgKy0KIGFyY2gveDg2L2tlcm5lbC9j
cHUvc2d4L2VuY2wuYyB8IDIgKy0KIGluY2x1ZGUvbGludXgvbGlzdC5oICAgICAgICAgICB8IDYg
KysrLS0tCiAzIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9NYWtlZmlsZSBiL01ha2VmaWxlCmluZGV4IGRhZWI1Yzg4YjUwYi4uY2M0
YjBhMjY2YWYwIDEwMDY0NAotLS0gYS9NYWtlZmlsZQorKysgYi9NYWtlZmlsZQpAQCAtNTE1LDcg
KzUxNSw3IEBAIEtCVUlMRF9DRkxBR1MgICA6PSAtV2FsbCAtV3VuZGVmIC1XZXJyb3I9c3RyaWN0
LXByb3RvdHlwZXMgLVduby10cmlncmFwaHMgXAogCQkgICAtZm5vLXN0cmljdC1hbGlhc2luZyAt
Zm5vLWNvbW1vbiAtZnNob3J0LXdjaGFyIC1mbm8tUElFIFwKIAkJICAgLVdlcnJvcj1pbXBsaWNp
dC1mdW5jdGlvbi1kZWNsYXJhdGlvbiAtV2Vycm9yPWltcGxpY2l0LWludCBcCiAJCSAgIC1XZXJy
b3I9cmV0dXJuLXR5cGUgLVduby1mb3JtYXQtc2VjdXJpdHkgXAotCQkgICAtc3RkPWdudTg5CisJ
CSAgIC1zdGQ9Z251MTEKIEtCVUlMRF9DUFBGTEFHUyA6PSAtRF9fS0VSTkVMX18KIEtCVUlMRF9B
RkxBR1NfS0VSTkVMIDo9CiBLQlVJTERfQ0ZMQUdTX0tFUk5FTCA6PQpkaWZmIC0tZ2l0IGEvYXJj
aC94ODYva2VybmVsL2NwdS9zZ3gvZW5jbC5jIGIvYXJjaC94ODYva2VybmVsL2NwdS9zZ3gvZW5j
bC5jCmluZGV4IDQ4YWZlOTZhZTBmMC4uODdkYjJmMzkzNmIwIDEwMDY0NAotLS0gYS9hcmNoL3g4
Ni9rZXJuZWwvY3B1L3NneC9lbmNsLmMKKysrIGIvYXJjaC94ODYva2VybmVsL2NwdS9zZ3gvZW5j
bC5jCkBAIC00NTAsNyArNDUwLDcgQEAgc3RhdGljIHZvaWQgc2d4X21tdV9ub3RpZmllcl9yZWxl
YXNlKHN0cnVjdCBtbXVfbm90aWZpZXIgKm1uLAogCQkJCSAgICAgc3RydWN0IG1tX3N0cnVjdCAq
bW0pCiB7CiAJc3RydWN0IHNneF9lbmNsX21tICplbmNsX21tID0gY29udGFpbmVyX29mKG1uLCBz
dHJ1Y3Qgc2d4X2VuY2xfbW0sIG1tdV9ub3RpZmllcik7Ci0Jc3RydWN0IHNneF9lbmNsX21tICp0
bXAgPSBOVUxMOworCXN0cnVjdCBzZ3hfZW5jbF9tbSAqdG1wOwogCiAJLyoKIAkgKiBUaGUgZW5j
bGF2ZSBpdHNlbGYgY2FuIHJlbW92ZSBlbmNsX21tLiAgTm90ZSwgb2JqZWN0cyBjYW4ndCBiZSBt
b3ZlZApkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9saXN0LmggYi9pbmNsdWRlL2xpbnV4L2xp
c3QuaAppbmRleCBkZDZjMjA0MWQwOWMuLjcwODA3OGIyZjI0ZCAxMDA2NDQKLS0tIGEvaW5jbHVk
ZS9saW51eC9saXN0LmgKKysrIGIvaW5jbHVkZS9saW51eC9saXN0LmgKQEAgLTYzNCw5ICs2MzQs
OSBAQCBzdGF0aWMgaW5saW5lIHZvaWQgbGlzdF9zcGxpY2VfdGFpbF9pbml0KHN0cnVjdCBsaXN0
X2hlYWQgKmxpc3QsCiAgKiBAaGVhZDoJdGhlIGhlYWQgZm9yIHlvdXIgbGlzdC4KICAqIEBtZW1i
ZXI6CXRoZSBuYW1lIG9mIHRoZSBsaXN0X2hlYWQgd2l0aGluIHRoZSBzdHJ1Y3QuCiAgKi8KLSNk
ZWZpbmUgbGlzdF9mb3JfZWFjaF9lbnRyeShwb3MsIGhlYWQsIG1lbWJlcikJCQkJXAotCWZvciAo
cG9zID0gbGlzdF9maXJzdF9lbnRyeShoZWFkLCB0eXBlb2YoKnBvcyksIG1lbWJlcik7CVwKLQkg
ICAgICFsaXN0X2VudHJ5X2lzX2hlYWQocG9zLCBoZWFkLCBtZW1iZXIpOwkJCVwKKyNkZWZpbmUg
bGlzdF9mb3JfZWFjaF9lbnRyeShwb3MsIGhlYWQsIG1lbWJlcikJCQkJCVwKKwlmb3IgKHR5cGVv
Zihwb3MpIHBvcyA9IGxpc3RfZmlyc3RfZW50cnkoaGVhZCwgdHlwZW9mKCpwb3MpLCBtZW1iZXIp
OwlcCisJICAgICAhbGlzdF9lbnRyeV9pc19oZWFkKHBvcywgaGVhZCwgbWVtYmVyKTsJXAogCSAg
ICAgcG9zID0gbGlzdF9uZXh0X2VudHJ5KHBvcywgbWVtYmVyKSkKIAogLyoqCg==
--0000000000008601b205d919a4ad--
