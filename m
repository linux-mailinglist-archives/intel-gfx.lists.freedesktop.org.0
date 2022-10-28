Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07766611CBE
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 23:56:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD58010E8E8;
	Fri, 28 Oct 2022 21:55:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com
 [IPv6:2607:f8b0:4864:20::533])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDE5910E8E8
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 21:55:49 +0000 (UTC)
Received: by mail-pg1-x533.google.com with SMTP id g129so5937061pgc.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 14:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=6sDFZ943bLECga98ZuUZLfOGWAVrMKDr86ExwVnqK84=;
 b=btyqyPv7KwpF0fUlvoVZAWj4CwL0CsCTTdtAzG2/N4wgoRckFm82DFaNfCWHb4Z8DV
 3NJnxPK3bihWuyfIQNRcEWh9pruP9g6+X1Ga1dqXaDBOGIRE0mg8MTcNYWqCbNOtK8Kw
 XZD7WGcfU/ORspJA2DV7k+SgVCd6zpaPDZJfE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6sDFZ943bLECga98ZuUZLfOGWAVrMKDr86ExwVnqK84=;
 b=q0ttKfqQldXOVUeUwv/6SHDU13/5upilgONVy4HNzU+EJRnl23xKVk1nU7Cfkk+ano
 cummXcg2wpeFbiAtBHO17OOiQjSk43FulgxfC6jDMe2KpvesdL/Xs9toOUmM1BYSmq6S
 8Gr4DWvYw/tCzfFN/YxKCr8ASVEtkdSDE2dXA8HK0Or7cZwquPIo9wGbiOIdf7stUB7d
 19j/8m6/e+orK3lWT3R0s4lYPQd+547BzwQi66KDVn9jun7vUCgR/RL38JLHSAaUGH20
 xjH/HOYVITNqXjXnAkin2AcD1o7EIA9fhKnrFvpdJs3E9ntEV1r08DCjLUb3o3K5phUF
 wNWw==
X-Gm-Message-State: ACrzQf0qm6/2pqq3ZsQO+8qCRzfNfSx4gVHBM/8leIlZmMWQxDmZjVxD
 QNVOB8IO39BOy0oxaOvor6E/mQ==
X-Google-Smtp-Source: AMsMyM5P+YLIJxg9tmlPWSt3GSayrEEorqqCWl2pCnqN4fUvo0hwpJ71QT8oB+RJbFsgjq4pQQwNMw==
X-Received: by 2002:a05:6a00:1707:b0:563:235:769b with SMTP id
 h7-20020a056a00170700b005630235769bmr1525795pfc.19.1666994149391; 
 Fri, 28 Oct 2022 14:55:49 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:65f9:c180:249c:190f])
 by smtp.gmail.com with ESMTPSA id
 k12-20020a170902c40c00b001822121c45asm3621736plk.28.2022.10.28.14.55.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Oct 2022 14:55:48 -0700 (PDT)
Date: Fri, 28 Oct 2022 14:55:46 -0700
From: Brian Norris <briannorris@chromium.org>
To: Feng Tang <feng.tang@intel.com>
Message-ID: <Y1xP4pN2P3o4B49b@google.com>
References: <s5h4lhxokp6.wl-tiwai@suse.de>
 <20180625153632.GQ2958@phenom.ffwll.local>
 <20180626022916.3d6wceejx23zd7pl@shbuild888>
 <20180712012901.lxrzxtvpj3msje3k@shbuild888>
 <20180712065434.GD3008@phenom.ffwll.local>
 <20180712075134.ba66pg3ng5of2wmy@shbuild888>
 <20180814065430.ervd4b6eyvs6u35q@shbuild888>
 <20180814093407.GK21634@phenom.ffwll.local>
 <s5hin4d1e3f.wl-tiwai@suse.de>
 <20180816074038.kx7jhjlyugrxhr6r@shbuild888>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180816074038.kx7jhjlyugrxhr6r@shbuild888>
Subject: Re: [Intel-gfx] [RFC] i915: make the probe asynchronous
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
Cc: Takashi Iwai <tiwai@suse.de>, Jani Nikula <jani.nikula@intel.com>,
 intel-gfx@lists.freedesktop.org, alek.du@intel.com,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Thu, Aug 16, 2018 at 03:40:38PM +0800, Feng Tang wrote:
> On Tue, Aug 14, 2018 at 11:39:48AM +0200, Takashi Iwai wrote:
> > FYI, the upcoming 4.19 will have the completion in audio side binding,
> > so this problem should be solved there.
> 
> Really a great news! thanks for sharing

For the record: that was merged as:

  f9b54e1961c7 ("ALSA: hda/i915: Allow delayed i915 audio component binding")

I'm also poking here in case somebody still had reason we shouldn't do
this now. I wrote up my own patch, and the looked for past discussions
like this one. Feel free to comment here if there's still a problem:

  [PATCH] drm/i915: Set PROBE_PREFER_ASYNCHRONOUS
  https://lore.kernel.org/lkml/20221028145319.1.I87b119c576d486ad139faf1b7278d97e158aabe4@changeid/

Thanks,
Brian
