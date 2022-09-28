Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DFF5EE3DC
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 20:06:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E4B110E550;
	Wed, 28 Sep 2022 18:06:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32F7D10E566
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 18:06:10 +0000 (UTC)
Received: by mail-pf1-x42b.google.com with SMTP id w2so13249265pfb.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 11:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date;
 bh=lg8DJ4PVGf/UE/b9agj2E3jF0biYJ2TzSjDWoqo1nWk=;
 b=kX6MiQJJ++GzWgnGDgSHhlrCPXkUnTfSWuw5a1vTXKi13Y13VyCmf0QKz9GO79Hl9h
 lytSSUqbfN/S/Ah/mnF4XU0V59XNaRA/1kXJDF/OU4N76i45SgkcHk4RiaBdM3X11q3P
 ngv3+AbyQkBAOyZ4Efs1UnxU8fMOnw5TwIofU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
 bh=lg8DJ4PVGf/UE/b9agj2E3jF0biYJ2TzSjDWoqo1nWk=;
 b=71LEUjbXGejgWlI4A0fiUhxEJ2AYlxF75IiUzWUCNhX2Y8FmyzvNb55N8UBwCf0gFj
 BfMS+g06ophxOs/QVc8ToHtOUwC7SYKgvL45c9KeegpbM12A1kZbolbARCDY8CD/ERHd
 P3jOQyUeIKTLiG8T+wa2MF91N7nJhJ6ueeA4XheIVpdD1i/YZu+4W6IW0x2tEwzMxxEo
 zSTcCnA2+dgX3dVDSbOq6/3tXzeQk1HC8UXYREc1Q9JEV2Q7JkRPTLzKSTgFy7RpFSxn
 8Z/uNzFnlKNn96UQ5u980OKf2/gAc9DFTlnU5qadEuJur/Dcj52CFux9JohvlJv2PkPU
 i9Dg==
X-Gm-Message-State: ACrzQf15GhtBwAZYdXsljFiH/esLkKeBcTYCGNHiqfg8HUxYwP9f8teD
 qoUd3eMX6lYd+VT8s7WUEeikOw==
X-Google-Smtp-Source: AMsMyM5YqTL3LfyC56o9MrGg1TzPcXSkd4eESKCY3Dzo1hitrUn0UwkQLKFW1M9B3lIoMGRQbkcRdw==
X-Received: by 2002:a65:4609:0:b0:434:8f0b:5d05 with SMTP id
 v9-20020a654609000000b004348f0b5d05mr29993911pgq.606.1664388369685; 
 Wed, 28 Sep 2022 11:06:09 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 mt10-20020a17090b230a00b00203059fc75bsm1706643pjb.5.2022.09.28.11.06.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Sep 2022 11:06:09 -0700 (PDT)
Date: Wed, 28 Sep 2022 11:06:07 -0700
From: Kees Cook <keescook@chromium.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <202209281102.A86D736@keescook>
References: <20220928081300.101516-1-gwan-gyeong.mun@intel.com>
 <20220928081300.101516-6-gwan-gyeong.mun@intel.com>
 <CAHk-=wivJwvVbMUKma8600F6qaVLZHT=BY90SEnjiHWw2ZUVEg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHk-=wivJwvVbMUKma8600F6qaVLZHT=BY90SEnjiHWw2ZUVEg@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH v13 5/9] drm/i915: Check for integer
 truncation on scatterlist creation
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
Cc: gustavoars@kernel.org, trix@redhat.com, dlatypov@google.com,
 llvm@lists.linux.dev, linux@rasmusvillemoes.dk,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 linux-hardening@vger.kernel.org, andrzej.hajda@intel.com,
 linux-sparse@vger.kernel.org, matthew.auld@intel.com, airlied@redhat.com,
 thomas.hellstrom@linux.intel.com, jani.nikula@intel.com,
 intel-gfx@lists.freedesktop.org, nathan@kernel.org, mchehab@kernel.org,
 ndesaulniers@google.com, linux-kernel@vger.kernel.org, daniel@ffwll.ch,
 vitor@massaru.org, luc.vanoostenryck@gmail.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 28, 2022 at 10:09:04AM -0700, Linus Torvalds wrote:
> Kees, you need to reign in the craziness in overflow.h.

Understood. I've been trying to help the drm folks walk a line between
having a bunch of custom macros hidden away in the drm includes and
building up generalized versions that are actually helpful beyond drm.
But I can see that it doesn't help to have a "do two things at the same
time" macro for the assignment checking.

-- 
Kees Cook
