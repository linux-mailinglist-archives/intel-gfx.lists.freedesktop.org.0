Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA8E3D2585
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 16:17:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7194D6E8FD;
	Thu, 22 Jul 2021 14:17:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com
 [IPv6:2607:f8b0:4864:20::236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52E8B6E8C9
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jul 2021 14:17:31 +0000 (UTC)
Received: by mail-oi1-x236.google.com with SMTP id c197so6690405oib.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jul 2021 07:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KOkTn1Mo3J70M4pI86xRHRtEhS/5VnuRa5a5gN9AGgg=;
 b=LsVzVbt3s0KFfGDHXPhExLl0OU37cfjOF9hKSeAC0uzfH7noURB5hSgFZLTJNHM1Vu
 PdYAOHxTDvALN390iroNSMPoAMsFh+9Ir2K4iEsCQr31z7SGvUuLxfa5MU8DV1htQC8T
 vE88dKRZFdDpqpKrwysvc+Xcu0pVQTZx+E2+g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KOkTn1Mo3J70M4pI86xRHRtEhS/5VnuRa5a5gN9AGgg=;
 b=i2phtjuJv47szngaYS5x1kFumWhUQemvL6lKVPVHPvYe1j2HoFVTgq6QEvCUOGIAsj
 24fGUXj27Mdnh7FZ7rFfhMtt66JU90FS2njYTc4qX5kx+JUfmKFB0J07T20E8Lv+J64j
 GElP6x8UCXrlyM9p9RT4DLfHxSWQihluoeKzJkaki7jbPVjeKLU97sF8zxcyZgJDHVxr
 D3aWI4RemO5Na263tKlx5IGe0sjI0lbdHL8qlEBOLZ7ix3mBxWvvvYnUzVCKp5HmDArR
 Ism9ulA0yW9IOyCxTdIurr2ufUsnErb0hMHSCB4UD7gLzq4OC2bw0msiGm4eDU99vGkN
 TKNQ==
X-Gm-Message-State: AOAM5309bhme3ynwq217icY8weg3xnEdY59RvHLzsEppo9DNhj9fpJRV
 IF6Y1054ACrZ2vjkWJ/Vi8OKRN9R+PtfRfcNkDONJg==
X-Google-Smtp-Source: ABdhPJwqTklvotR9LbnbPWDna0E/3csMrWphC75ewwvNxmZ2rg11wkD8Dt31hlSAGFCDJOPSPPQUYSYIZd/CqiU4Roo=
X-Received: by 2002:aca:d682:: with SMTP id n124mr174005oig.128.1626963450521; 
 Thu, 22 Jul 2021 07:17:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210722092929.244629-1-desmondcheongzx@gmail.com>
 <20210722092929.244629-3-desmondcheongzx@gmail.com>
 <YPlKCc7Sep71xjBC@phenom.ffwll.local>
 <5b8b3bd5-7519-e383-cb84-f354d898dc81@gmail.com>
In-Reply-To: <5b8b3bd5-7519-e383-cb84-f354d898dc81@gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 22 Jul 2021 16:17:17 +0200
Message-ID: <CAKMK7uGOFaC4+Avta5e4vVyhy3XWof=WbUcPmBKWVGo7PYNONA@mail.gmail.com>
To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm: clarify lifetime/locking for
 drm_master's lease fields
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
Cc: Dave Airlie <airlied@linux.ie>, Greg KH <gregkh@linuxfoundation.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Shuah Khan <skhan@linuxfoundation.org>,
 linux-kernel-mentees@lists.linuxfoundation.org, Zack Rusin <zackr@vmware.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 22, 2021 at 3:03 PM Desmond Cheong Zhi Xi
<desmondcheongzx@gmail.com> wrote:
>
> On 22/7/21 6:35 pm, Daniel Vetter wrote:
> > On Thu, Jul 22, 2021 at 05:29:28PM +0800, Desmond Cheong Zhi Xi wrote:
> >> In particular, we make it clear that &drm_device.mode_config.idr_mutex
> >> protects the lease idr and list structures for drm_master. The lessor
> >> field itself doesn't need to be protected as it doesn't change after
> >> it's set in drm_lease_create.
> >>
> >> Additionally, we add descriptions for the lifetime of lessors and
> >> leases to make it easier to reason about them.
> >>
> >> Signed-off-by: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
> >> ---
> >>   include/drm/drm_auth.h | 62 ++++++++++++++++++++++++++++++++++--------
> >>   1 file changed, 51 insertions(+), 11 deletions(-)
> >>
> >> diff --git a/include/drm/drm_auth.h b/include/drm/drm_auth.h
> >> index f99d3417f304..c978c85464fa 100644
> >> --- a/include/drm/drm_auth.h
> >> +++ b/include/drm/drm_auth.h
> >> @@ -58,12 +58,6 @@ struct drm_lock_data {
> >>    * @refcount: Refcount for this master object.
> >>    * @dev: Link back to the DRM device
> >>    * @driver_priv: Pointer to driver-private information.
> >> - * @lessor: Lease holder
> >> - * @lessee_id: id for lessees. Owners always have id 0
> >> - * @lessee_list: other lessees of the same master
> >> - * @lessees: drm_masters leasing from this one
> >> - * @leases: Objects leased to this drm_master.
> >> - * @lessee_idr: All lessees under this owner (only used where lessor == NULL)
> >>    *
> >>    * Note that master structures are only relevant for the legacy/primary device
> >>    * nodes, hence there can only be one per device, not one per drm_minor.
> >> @@ -88,17 +82,63 @@ struct drm_master {
> >>      struct idr magic_map;
> >>      void *driver_priv;
> >>
> >> -    /* Tree of display resource leases, each of which is a drm_master struct
> >> -     * All of these get activated simultaneously, so drm_device master points
> >> -     * at the top of the tree (for which lessor is NULL). Protected by
> >> -     * &drm_device.mode_config.idr_mutex.
> >> +    /**
> >> +     * @lessor:
> >> +     *
> >> +     * Lease holder. The lessor does not change once it's set in
> >
> > Lessor is the lease grantor, lessee is the one receiving the lease. Maybe
> > clarify this with
> >
> > "Lease grantor, only set if this struct drm_master represents a lessee
> > holding a lease of objects from @lessor. Full owners of the device have
> > this set to NULL."
> >
> >> +     * drm_lease_create(). Each lessee holds a reference to its lessor that
> >
> > I also figured it'd be a good idea to link to the drm_lease docs here to
> > explain the concepts, but alas we don't have those :-( Hence at least
> > define what we mean with lessor, lessee, lease and owner.
> >
>
> Thanks for the suggestions, Daniel. I'll incorporate them in a v2.
>
> Regarding the missing drm_lease docs... any reason we can't just add it
> in? Seems like most of the comments in drm_lease.c are almost correctly
> formatted too. I could clean them up, define the terms in a preamble,
> then add it to the v2 patch.

Sure if you want to do that, that would be great. Usual style tips:
- We only document driver interfaces, so structs/inline functions in
headers and exported symbols in .c files.
- Anything else interesting just leave as normal C comments
- An overview DOC: section that explains a bit how leases work and why
(git blame on the commit that added it should help, otherwise I can
type that up) would also be really great.

I think the right place for this is in the drm-uapi.rst section after
the section about primary nodes:

https://dri.freedesktop.org/docs/drm/gpu/drm-kms.html#modeset-base-object-abstraction

Cheers, Daniel


>
> >> +     * it releases upon being destroyed in drm_lease_destroy().
> >> +     *
> >> +     * Display resource leases form a tree of &struct drm_master. All of
> >
> > For now we've limited the tree to a depth of 1, you can't create another
> > lease if yourself are a lease. I guess another reason to update the
> > drm_lease.c docs.
> >
> > So maybe add "Currently the lease tree depth is limited to 1."
> >
> >> +     * these get activated simultaneously, so &drm_device.master
> >> +     * points at the top of the tree (for which lessor is NULL).
> >>       */
> >> -
> >>      struct drm_master *lessor;
> >> +
> >> +    /**
> >> +     * @lessee_id:
> >> +     *
> >> +     * ID for lessees. Owners always have ID 0. Protected by
> >
> > Maybe clarify to "Owners (i.e. @lessor is NULL) ..."
> >
> >> +     * &drm_device.mode_config's &drm_mode_config.idr_mutex.
> >> +     */
> >>      int     lessee_id;
> >> +
> >> +    /**
> >> +     * @lessee_list:
> >> +     *
> >> +     * List of lessees of the same master. Protected by
> >
> > We try to distinguis between list entries and the list, even though it's
> > the same struct. So maybe
> >
> > "List entry of lessees of @lessor, where they are linked to @lessee. Not
> > use for owners."
> >
> >> +     * &drm_device.mode_config's &drm_mode_config.idr_mutex.
> >
> >> +     */
> >>      struct list_head lessee_list;
> >> +
> >> +    /**
> >> +     * @lessees:
> >> +     *
> >> +     * List of drm_masters leasing from this one. Protected by
> >> +     * &drm_device.mode_config's &drm_mode_config.idr_mutex.
> >> +     *
> >> +     * This master cannot be destroyed unless this list is empty as lessors
> >> +     * are referenced by all their lessees.
> >
> > Maybe add "this list is empty of no leases have been granted."
> >
> >> +     */
> >>      struct list_head lessees;
> >> +
> >> +    /**
> >> +     * @leases:
> >> +     *
> >> +     * Objects leased to this drm_master. Protected by
> >> +     * &drm_device.mode_config's &drm_mode_config.idr_mutex.
> >> +     *
> >> +     * Objects are leased all together in drm_lease_create(), and are
> >> +     * removed all together when the lease is revoked.
> >> +     */
> >>      struct idr leases;
> >> +
> >> +    /**
> >> +     * @lessee_idr:
> >> +     *
> >> +     * All lessees under this owner (only used where lessor is NULL).
> >
> > @lessor so it's highlighted correctly
> >
> >> +     * Protected by &drm_device.mode_config's &drm_mode_config.idr_mutex.
> >> +     */
> >>      struct idr lessee_idr;
> >>      /* private: */
> >
> > With the nits addressed:
> >
> > Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> >
> > Thanks for updating the docs!
> > -Daniel
> >
> >>   #if IS_ENABLED(CONFIG_DRM_LEGACY)
> >> --
> >> 2.25.1
> >>
> >
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
