Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59893399B9D
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 09:32:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A28D16F407;
	Thu,  3 Jun 2021 07:32:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com
 [IPv6:2607:f8b0:4864:20::236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 972296F407
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 07:32:37 +0000 (UTC)
Received: by mail-oi1-x236.google.com with SMTP id u11so5437826oiv.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Jun 2021 00:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tbqXxzBQan5qZOKDHud6woka91j0ECnjHRdGUPfgw84=;
 b=UNDElItiuSVuFJY6RhUGyRLX/vcc9GuhIfJzApQ7tzNzc+K4jbKnP4HS8091PodGsR
 BeY6HZRqDMDA+abrWzc+7zQ2iW1kXpvoDUtEws2/ldepeZsMV+l5JdAg0flQHAoozBxt
 cOV0ddcIdwtjDjbo1UMBO9kV4gBKWu2Mri238=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tbqXxzBQan5qZOKDHud6woka91j0ECnjHRdGUPfgw84=;
 b=oFaVUnHkgRXNmQ0vCNarsG+wzXm+5xI3DqJfXwJCP6QDoJgXXqHfpuFjQ6bHZTmPpw
 kv0/8frAWYnDzv7vhw/XJLBdIuoe+Js0N5cwVW4IPCgThdWYY8uhaDOZuclcjzccnv4l
 JEORov5LBFCmKulYG4LMJOyF1YML21tYWN1o6IHLKvHZxqiU06JOHaOFiWkIr+BFvj43
 FnvLtIwXwlew7wBX8Kcx3LE/KjsCoJopQHp0dCbBV6WDWEo08sJEKMs73kLHcyhxj9vA
 kC0gzkaI/TXcvy8k21Yd25vkdfKHHXMHOsJ4MbtBIIW3lMH10AfzTCdmS4rq6mMLTlQr
 tgUQ==
X-Gm-Message-State: AOAM532Vt6aKSRWWYWDrQaUFEVC+qTlwrCCMYLv2NTlRs+899Hl2xZu0
 yVTljkGOHXUWFt5AF02sgZgU8MgEQnlCyd9nKTmGHQ==
X-Google-Smtp-Source: ABdhPJxsXyGXmMMwj+H0+yYoAAlJQ64btO9wlxK2VBEVYaIliZxWr/H8ggDlea1r4cS40Kqq6SjWOB30zJwcIwIdUY4=
X-Received: by 2002:aca:5701:: with SMTP id l1mr8487681oib.128.1622705556953; 
 Thu, 03 Jun 2021 00:32:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210527162650.1182544-1-jason@jlekstrand.net>
 <20210527162650.1182544-22-jason@jlekstrand.net>
 <YLSoXSnKlZV/EQwD@phenom.ffwll.local>
 <CAOFGe973O_GJ9iqKQaE17TmWoKpaCYokxupzyOkuKG6U9pEyfg@mail.gmail.com>
In-Reply-To: <CAOFGe973O_GJ9iqKQaE17TmWoKpaCYokxupzyOkuKG6U9pEyfg@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 3 Jun 2021 09:32:26 +0200
Message-ID: <CAKMK7uGcs_x50R98TC_c0jTXNdmgN-0AH6Vg6itn5sPU3nB6Jg@mail.gmail.com>
To: Jason Ekstrand <jason@jlekstrand.net>
Subject: Re: [Intel-gfx] [PATCH 21/29] drm/i915/gem: Use the proto-context
 to handle create parameters (v2)
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 3, 2021 at 12:23 AM Jason Ekstrand <jason@jlekstrand.net> wrote:
>
> On Mon, May 31, 2021 at 4:12 AM Daniel Vetter <daniel@ffwll.ch> wrote:
> >
> > On Thu, May 27, 2021 at 11:26:42AM -0500, Jason Ekstrand wrote:
> > > +static int set_proto_ctx_engines(struct drm_i915_file_private *fpriv,
> > > +                              struct i915_gem_proto_context *pc,
> > > +                              const struct drm_i915_gem_context_param *args)
> > > +{
> > > +     struct drm_i915_private *i915 = fpriv->dev_priv;
> > > +     struct set_proto_ctx_engines set = { .i915 = i915 };
> > > +     struct i915_context_param_engines __user *user =
> > > +             u64_to_user_ptr(args->value);
> > > +     unsigned int n;
> > > +     u64 extensions;
> > > +     int err;
> > > +
> > > +     if (!args->size) {
> > > +             proto_context_free_user_engines(pc);
> > > +             memset(&pc->legacy_rcs_sseu, 0, sizeof(pc->legacy_rcs_sseu));
> >
> > Hm I wonder whether we shouldn't put this into the cleanup helper, and
> > then maybe call it proto_context_reset_user_engines()? I think that makes
> > the entire user engines vs sseu flow a notch clearer again.
>
> I fought with myself over this.  The other two callers of
> free_user_engines() would be fine with clearing out the SSEU as well,
> I think, but neither of them need it.  I erred on the side of putting
> it in the one place it's actually needed to make it clear what's going
> on here.  I can move it if you'd like.

So I'm wondering about semantics here a bit, and whether this is all
real, as in, used in real userspace:

Instead of resetting engines here, shouldn't we just complain if
there's more than one engines_set command, ever, on a context?

> As a bit of a P.S., I really hate the SSEU handling.  It's horrible.
> If I had it to do all over again, SSEU would be a purly dynamic
> context param that you aren't allowed to set at create time.  But,
> sadly, we're in the mess we're in. :-(

Yeah it's rather annoying. If we go with "only one engines_set per ctx
create", then maybe we could streamline the SSEU stuff some more too?
-Daniel
--
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
