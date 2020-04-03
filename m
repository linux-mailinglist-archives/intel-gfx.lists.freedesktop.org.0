Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F0519DCD8
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 19:35:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB5306EC41;
	Fri,  3 Apr 2020 17:35:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2E176EC41
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 17:35:30 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id k21so7839167ljh.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 10:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dKtIdZvLC52F10Y6xbDfkSl0Pu7i6ClghvBiyqtambU=;
 b=H93YJMtUtlhSvERgsd9+QhyHUPZkLUy1qm6kic51si2KSdRHYw+iGnwWRR0DJ77ORV
 3xhJqij/IkPg2b9Lu55rd/U1mC12Ln1lFm6QK1yRZIco5vcryPGAnK6GmQbZezzP4mVZ
 pLMW5K2NguR0k8OlPVuhXA5LY88rXpv3guptSz6yRnnQkfzV+aLqWY9UeGeT+9/4GwUU
 qJcDdwabAiF2N0zGWrQWk/vnZpPvgNjILUBcgrKfLybcaDm/YxuKR3GpNgsR20YpQDbi
 FYUlEKxEdw6FafJzwcZGXHiMvE8r+lmWV4uA+NmywPEtywsIlKEmYEKXpVmHee7e+LUk
 j56Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dKtIdZvLC52F10Y6xbDfkSl0Pu7i6ClghvBiyqtambU=;
 b=q1cyClb2rPv/oTmw6gVphxyrU3IcBfvk+di30ZaOfYlASJVDKelnm5rKi9sC/ZwJHc
 dpQkk+OlXuArNT0rDXRvITJJeQoE8sSgIYOqxiv5oP+tZYJ/Oqn7opSuW4qEDOdY4cRu
 nuI2SL8CaZ//qN1mheLiRmKb0D1B0Xs25uBr1W3oGE0lfgutAwt3G9Kp//UBPqs3u4KH
 mvcxTXrvYdguOzj286TbS06GdHK2uApCo6aes8tqtxzgF7Z1mSLO46dtpD//lBFxEHTY
 GMS7v7zMghX4lUVA/GwPVN4g2K9IbB9qVaqA/1SW9ZMnUd2e1iE1R0sJfatCxzLEkvQ0
 i9ag==
X-Gm-Message-State: AGi0PuYneXumFz2YGWGyO5ge3fqMm82TMBiZFvSig1jb8mpfJaaUw/ub
 0gbmYmqKO04c3yDj8WKqfU+FIN2NSBWOMfnLrBVwBg==
X-Google-Smtp-Source: APiQypLs4HkiXBwOT8isUkymGTQ+IDH2CPTxP7O0KXPofVPFmo+KzfDaxV69aCpdnF7iK888NVyZKD1L0GpVYoGQfrM=
X-Received: by 2002:a2e:b241:: with SMTP id n1mr5037078ljm.22.1585935329126;
 Fri, 03 Apr 2020 10:35:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
 <20200403135828.2542770-15-daniel.vetter@ffwll.ch>
In-Reply-To: <20200403135828.2542770-15-daniel.vetter@ffwll.ch>
From: Eric Anholt <eric@anholt.net>
Date: Fri, 3 Apr 2020 10:35:17 -0700
Message-ID: <CADaigPVeiE_cHA8J_d6oXm0Eftvmv28h0_bkDa3QSi0RQHa+JQ@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 14/44] drm/v3d: Delete v3d_dev->pdev
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 3, 2020 at 6:58 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> We already have it in v3d_dev->drm.dev with zero additional pointer
> chasing. Personally I don't like duplicated pointers like this
> because:
> - reviewers need to check whether the pointer is for the same or
> different objects if there's multiple
> - compilers have an easier time too
>
> To avoid having to pull in some big headers I implemented the casting
> function as a macro instead of a static inline. Typechecking thanks to
> container_of still assured.
>
> But also a bit a bikeshed, so feel free to ignore.
>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Eric Anholt <eric@anholt.net

Acked-by: Eric Anholt <eric@anholt.net>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
