Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA341725DF
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:03:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E94C26EC78;
	Thu, 27 Feb 2020 18:03:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com
 [IPv6:2607:f8b0:4864:20::d41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ED466E944
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 16:43:58 +0000 (UTC)
Received: by mail-io1-xd41.google.com with SMTP id d15so182005iog.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 08:43:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=3YMTfEGiWskzaqg6qsYJ7kThCNQxEbbXDJbmFwYjcu4=;
 b=mOtjx1pCRhjLwReAcdsFGCASZpuxWLk1U1MgnQe3qRMnt6Fe0xYEMLkOMBjFccp1Xe
 iD7Xxd2zoxewldqPM/pG3e2d9+hUCY1D7ibUoNaJzr3q24pYM9Iw/dLb87DBf/P+8Ja8
 Yt9NNK+ISExnyGLlZ/KrYsM+8Wl4adaX3RTy1j9fcR+BI0SC7Y96Ibh8C55UL/ln2P+a
 UGgIrmflPNNwup+2SPlIUE9WH0+fp6dAlhweB5Bnrz1yP5zBg+l8K//uA91A99etOeGA
 H5JTQQhJ1z5D/ntQ2kQSmdmT67LzOQW32zxuVXruPGcPpCZNW19XTUJetyzzrdoyJxM0
 Hh4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=3YMTfEGiWskzaqg6qsYJ7kThCNQxEbbXDJbmFwYjcu4=;
 b=qatplaxZ18ep91CuL3c8rgHdS96TiOhIPO+f1j29Ki+An7FMMQqUI+kwYwBsf/MgxJ
 wmbFZZRVZNBm+VoDtkCy0EMPkAsMlIUb4D++jjIZHmxsezTIfLbrgxwZ5/8DP9hXKZsU
 rVOD1OZH/nQTjZLEDfHr4QKP0yURCEWoyplYQsRumHqmafi+Hy/vPetJwQproUoAV27l
 jU57gm14mj1GAz4aZTr2rskBBmk5HJ/UsyNIOZAn1PCkexFTQjfblltdLF1kh7yd5yxL
 5z0WeYR+Z81cIeLIg3tSfus026FFctXDC1CrYAV2p1L6LI4ICG+iB1Drw6SHSIdYnxJf
 Rwwg==
X-Gm-Message-State: APjAAAX9SrKvbBIxenBF4mFvFhaGiV6uXE7FxhUmRr0cp3sJPuk2tzn8
 ZDUMWlyxn5hI9z2PdIJMqKBk2A==
X-Google-Smtp-Source: APXvYqzXfnTuGcDkMKxb1svtfZaTZPYB6VcKyNB+HuivpMr7PTni/55vVwjYwJk16pMCcvCvmF6LyQ==
X-Received: by 2002:a5d:8143:: with SMTP id f3mr173229ioo.12.1582821837526;
 Thu, 27 Feb 2020 08:43:57 -0800 (PST)
Received: from google.com ([2620:15c:183:200:855f:8919:84a7:4794])
 by smtp.gmail.com with ESMTPSA id b12sm2072864iln.62.2020.02.27.08.43.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 08:43:56 -0800 (PST)
Date: Thu, 27 Feb 2020 09:43:55 -0700
From: Ross Zwisler <zwisler@google.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200227164355.GA241728@google.com>
References: <20200221212635.11614-1-jose.souza@intel.com>
 <87wo88qicd.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87wo88qicd.fsf@intel.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Approved-At: Thu, 27 Feb 2020 18:03:14 +0000
Subject: Re: [Intel-gfx] [PATCH v4-CI] drm/i915/psr: Force PSR probe only
 after full initialization
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 27, 2020 at 03:18:26PM +0200, Jani Nikula wrote:
> On Fri, 21 Feb 2020, Jos=E9 Roberto de Souza <jose.souza@intel.com> wrote:
> > Commit 60c6a14b489b ("drm/i915/display: Force the state compute phase
> > once to enable PSR") was forcing the state compute too earlier
> > causing errors because not everything was initialized, so here
> > moving to the end of i915_driver_modeset_probe() when the display is
> > all initialized.
> =

> Hmph, really not happy about the placement here. These are high level
> functions, not a dumping ground for random feature specific hacks. :(

Should we just revert =


60c6a14b489b ("drm/i915/display: Force the state compute phase once to enab=
le PSR")

and try to land a fixed-up version in the next kernel cycle?  The current
state is that my machine is completely unable to boot because of this issue,
and I've confirmed that the above patch reverts cleanly and fixes the issue.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
