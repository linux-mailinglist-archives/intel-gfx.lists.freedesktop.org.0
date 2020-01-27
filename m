Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 532F914A5AA
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 15:06:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83AFA6EBB4;
	Mon, 27 Jan 2020 14:06:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com
 [IPv6:2607:f8b0:4864:20::d44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CC386EBB1
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 14:06:38 +0000 (UTC)
Received: by mail-io1-xd44.google.com with SMTP id x1so10069063iop.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 06:06:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ziF5Qk4AqA6XeuopEcdWGSBhZK4mvhw26vmFCr1g8pw=;
 b=ADkeyaB0jg5qXgNPDHvKPw/HiX1W9YzHE/FfdlUPDzVz1SrY9yx2S9NsK1uZ73zY0C
 f/bcMfpH3cybltC4wd8S/hyHNhG5Ndf+rKKBPJVDYE2F7V693B3w9csIAJ066SwjUEgJ
 RihS2pnwT3xfxPVo2v8r34yh09QdVZeuRlZh3YfG4utQ2HT8/8KDcLRmMOPPTD3WHl0R
 UaeycdB+KDFuSLDQL+ckyAzIflkkYVoEsIJ03jvtOg+U69iDYY3IOtLeNvCpnzRkB183
 s77AWVm1m2Y1f6lCEpucxXpu0ISFeZcbd+B5u0YItvU3QrUa966lNNxP7IjU0tx2jtbk
 tRzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ziF5Qk4AqA6XeuopEcdWGSBhZK4mvhw26vmFCr1g8pw=;
 b=MMYjRUkoiAi6Ueu2pwFD7u0FwbqSq91rQF2n9OFeSSrer4oZJlAaW8S5bNBG/lLt2i
 yxiRbqin2TEqNjQz9qrs+yJ6FGj9q9tTjh4HRY4sKiQi2lw6TJ7fc7woQT7Yi39EFghm
 6SKaspUI3g/t1mN4JJWIXEDWc8guwNvTlzSOU5SrUY+CzQ/DD1emKamHveIfLyLOCV4v
 VWU+2/9bC7B9xt//J+EDl34wJG3znxb8MwI93Zyl4rFxk+1FFzs+mRTCwVDGfgqm+LFQ
 xdLXtMU0UNXBryTvceFHiExz3B1ZacTArEVnpajUlp/qiNI4b7cod/8Qwo4pav6++sfu
 Y+tQ==
X-Gm-Message-State: APjAAAVp28psI6rsD7DiCkiRthd+umBOoAn+N1U3GERZnzRaYZBo4w5K
 25PsmbyoKySwnjDh7CqHq0aiLiTvySinvWA6y82IsA==
X-Google-Smtp-Source: APXvYqzbjJG9basQoyn4IbE9gZDqILQzeVb5MpNOm0wAJfi/YGfC0sAjwarDq+L3IPkUgVrTI7vUr4tNhm3+CmapzSE=
X-Received: by 2002:a5d:8cc4:: with SMTP id k4mr12588859iot.2.1580133997795;
 Mon, 27 Jan 2020 06:06:37 -0800 (PST)
MIME-Version: 1.0
References: <20200117193103.156821-1-sean@poorly.run>
In-Reply-To: <20200117193103.156821-1-sean@poorly.run>
From: Sean Paul <sean@poorly.run>
Date: Mon, 27 Jan 2020 09:06:01 -0500
Message-ID: <CAMavQKJOhzYvXsrTfQXqQnZLTOJpaH-1vwrTC70Swr24XeZSHQ@mail.gmail.com>
To: dri-devel <dri-devel@lists.freedesktop.org>, 
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Subject: Re: [Intel-gfx] [PATCH v3 00/12] drm/i915: Add support for HDCP 1.4
 over MST connectors
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 17, 2020 at 2:31 PM Sean Paul <sean@poorly.run> wrote:
>
> From: Sean Paul <seanpaul@chromium.org>
>
> Hey all,
> Here's v3, which addresses all review comments in v2.
>

Friendly ping

Sean


> Sean
>
> Sean Paul (12):
>   drm/i915: Fix sha_text population code
>   drm/i915: Clear the repeater bit on HDCP disable
>   drm/i915: WARN if HDCP signalling is enabled upon disable
>   drm/i915: Intercept Aksv writes in the aux hooks
>   drm/i915: Use the cpu_transcoder in intel_hdcp to toggle HDCP
>     signalling
>   drm/i915: Factor out hdcp->value assignments
>   drm/i915: Protect workers against disappearing connectors
>   drm/i915: Don't fully disable HDCP on a port if multiple pipes are
>     using it
>   drm/i915: Support DP MST in enc_to_dig_port() function
>   drm/i915: Use ddi_update_pipe in intel_dp_mst
>   drm/i915: Factor out HDCP shim functions from dp for use by dp_mst
>   drm/i915: Add HDCP 1.4 support for MST connectors
>
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  27 +-
>  drivers/gpu/drm/i915/display/intel_ddi.h      |   2 +
>  .../drm/i915/display/intel_display_types.h    |  27 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       | 619 +---------------
>  drivers/gpu/drm/i915/display/intel_dp.h       |   7 +
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 680 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  15 +
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 195 +++--
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  18 +-
>  include/drm/drm_hdcp.h                        |   3 +
>  11 files changed, 932 insertions(+), 662 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dp_hdcp.c
>
> --
> Sean Paul, Software Engineer, Google / Chromium OS
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
