Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D8A440129
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 19:21:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D28A36EA81;
	Fri, 29 Oct 2021 17:21:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C4D06EA82
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 17:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635528065;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/6KkLL2REtCcTJ3EYiPtG6PZeIFE0c1iduujBq53Vr4=;
 b=Q53KNwRBCqYUNmdTsscPWwwUP3L9qPVS6r3pjYctGnVq1NfSismW+9dmluEiISJbTt676r
 Q10KwuLmkyR6OJ3PN5nj7wxRYsMZNoD6Fr6A/5EDq/FNun59UVfsFioiSjsKE3sW168Gt6
 EW6QME+Gbseatm1IhugT7z8C/WVjnvY=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-536-wTQGykHuMGekcehKBKkKyA-1; Fri, 29 Oct 2021 13:21:01 -0400
X-MC-Unique: wTQGykHuMGekcehKBKkKyA-1
Received: by mail-qt1-f197.google.com with SMTP id
 o14-20020a05622a138e00b002a79da5b350so7369332qtk.15
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 10:21:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=/6KkLL2REtCcTJ3EYiPtG6PZeIFE0c1iduujBq53Vr4=;
 b=0cR3j5xvSL6UVe9RlUVr7umBSuZAs0hkljUEKIF6wBidwRrL+mtzPKIvjynKtiFnwo
 2K6sChP61oALX5d+Y6njaD8RiGGMetqT9O+6Pz9H9vxTtaEs0OD//GkSMD3HImbln51G
 DUrgCk6qWFawYQqVpStj5Gtq37M9kmc4IQWv+pYY+r0Aage9QPjKOGcqRZW8aMWqm8fs
 L9KLtOKDW7/MiZHLqg8q1xCo6yG7jr6vgqukJ6EXXA6Rseb9P0p8e+aknhbWrL41iMOW
 c1NjINzJ/ioWPHmzs+fwpL02QncAXa4uMnPxoaW3R6nCXvvV5f+X+vY4yhl75xZEt986
 HwXA==
X-Gm-Message-State: AOAM533MgFhkKi2mrOonl6Ik8KwNjFTukH/EAk249qYKhkCkHCKrP8Cp
 LdVeW4WbUbMVyokB/xVCo/tmUmIFQes1os9qZn1EBdVrwoQzL3fE6jNCHJOQ1dt3xORl2buAoHS
 UAxTwg7Mk5gpoxtnyotLizGJUxc/P
X-Received: by 2002:ac8:5f0c:: with SMTP id x12mr13303206qta.309.1635528061039; 
 Fri, 29 Oct 2021 10:21:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxVhGn3Nz4iVlNN8qIbkf0g/TuAmLtJcCgKTQxgIwt3qvliu3I0n89YmYIFjUMUEAJr9Ls/RQ==
X-Received: by 2002:ac8:5f0c:: with SMTP id x12mr13303177qta.309.1635528060829; 
 Fri, 29 Oct 2021 10:21:00 -0700 (PDT)
Received: from [192.168.8.138] (pool-96-230-249-157.bstnma.fios.verizon.net.
 [96.230.249.157])
 by smtp.gmail.com with ESMTPSA id f39sm1437472qtb.20.2021.10.29.10.20.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Oct 2021 10:21:00 -0700 (PDT)
Message-ID: <b5974f5e128ea18ff383ac9fcdc9a2c56b2136e9.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Dave Airlie
 <airlied@gmail.com>,  Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Sean Paul <sean@poorly.run>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 dim-tools@lists.freedesktop.org
Date: Fri, 29 Oct 2021 13:20:59 -0400
In-Reply-To: <87pmrodson.fsf@intel.com>
References: <bf8e724cc0c8803d58a8d730fd6883c991376a76.camel@redhat.com>
 <87sfwkdt8w.fsf@intel.com> <87pmrodson.fsf@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PULL] topic/amdgpu-dp2.0-mst
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

JFYI - the wrapping was because of evolution, sorry about that. Going to make
sure that gets fixed the next time I have to send out a topic branch

On Fri, 2021-10-29 at 13:35 +0300, Jani Nikula wrote:
> On Fri, 29 Oct 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> > On Wed, 27 Oct 2021, Lyude Paul <lyude@redhat.com> wrote:
> > > topic/amdgpu-dp2.0-mst-2021-10-27:
> > > UAPI Changes:
> > > Nope!
> > > 
> > > Cross-subsystem Changes:
> > > drm_dp_update_payload_part1() takes a new argument for specifying what
> > > the
> > > VCPI slot start is
> > > 
> > > Core Changes:
> > > Make the DP MST helpers aware of the current starting VCPI slot/VCPI
> > > total
> > > slot count...
> > > 
> > > Driver Changes:
> > > ...and then add support for taking advantage of this for 128b/132b links
> > > on DP
> > > 2.0 for amdgpu
> > > The following changes since commit
> > > 6f2f7c83303d2227f47551423e507d77d9ea01c7:
> > > 
> > >   Merge tag 'drm-intel-gt-next-2021-10-21' of
> > > git://anongit.freedesktop.org/drm/drm-intel into drm-next (2021-10-22
> > > 06:30:34
> > > +1000)
> > > 
> > > are available in the Git repository at:
> > > 
> > >   git://anongit.freedesktop.org/drm/drm-misc tags/topic/amdgpu-dp2.0-
> > > mst-2021-
> > > 10-27
> > 
> > I'm curious, how did you generate and send this pull request? The lines
> > are wrapped with newlines, and you have non-breaking spaces instead of
> > regular spaces there.
> > 
> > So for me this fails with:
> > 
> > Pulling   git://anongit.freedesktop.org/drm/drm-misc tags/topic/amdgpu-
> > dp2.0-mst-2021- 10-27 ...
> > fatal: invalid refspec 'git://anongit.freedesktop.org/drm/drm-misc'
> 
> Fixed manually, but I can't pull this into drm-intel-next directly after
> all, because the baseline is not in drm-intel-next history. The diffstat
> for drm-intel-next is:
> 
> 65 files changed, 3656 insertions(+), 780 deletions(-)
> 
> I asked for this to be a topic branch so I could pull it into
> drm-intel-next. I guess I'll just have to do a drm-next backmerge
> instead.
> 
> BR,
> Jani.
> 
> 
> > 
> > BR,
> > Jani.
> > 
> > 
> > > 
> > > for you to fetch changes up to 00f965e700ef5aa2d889e7e65c7458531d2a4bcf:
> > > 
> > >   drm/amdgpu/display: fix build when CONFIG_DRM_AMD_DC_DCN is not set
> > > (2021-
> > > 10-27 19:50:26 -0400)
> > > 
> > > ----------------------------------------------------------------
> > > UAPI Changes:
> > > Nope!
> > > 
> > > Cross-subsystem Changes:
> > > drm_dp_update_payload_part1() takes a new argument for specifying what
> > > the
> > > VCPI slot start is
> > > 
> > > Core Changes:
> > > Make the DP MST helpers aware of the current starting VCPI slot/VCPI
> > > total
> > > slot count...
> > > 
> > > Driver Changes:
> > > ...and then add support for taking advantage of this for 128b/132b links
> > > on DP
> > > 2.0 for amdgpu
> > > 
> > > ----------------------------------------------------------------
> > > Alex Deucher (1):
> > >       drm/amdgpu/display: fix build when CONFIG_DRM_AMD_DC_DCN is not
> > > set
> > > 
> > > Bhawanpreet Lakha (3):
> > >       drm: Remove slot checks in dp mst topology during commit
> > >       drm: Update MST First Link Slot Information Based on Encoding
> > > Format
> > >       drm/amd/display: Add DP 2.0 MST DM Support
> > > 
> > > Fangzhi Zuo (1):
> > >       drm/amd/display: Add DP 2.0 MST DC Support
> > > 
> > >  drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c  |  29 ++
> > >  .../drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c  |   3 +
> > >  .../drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c  |   7 +-
> > >  drivers/gpu/drm/amd/display/dc/core/dc.c           |  14 +
> > >  drivers/gpu/drm/amd/display/dc/core/dc_link.c      | 292
> > > +++++++++++++++++++++
> > >  drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c   |  19 ++
> > >  drivers/gpu/drm/amd/display/dc/dc_link.h           |   7 +
> > >  drivers/gpu/drm/amd/display/dc/dc_stream.h         |  13 +
> > >  drivers/gpu/drm/drm_dp_mst_topology.c              |  42 ++-
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.c        |   4 +-
> > >  drivers/gpu/drm/nouveau/dispnv50/disp.c            |   2 +-
> > >  drivers/gpu/drm/radeon/radeon_dp_mst.c             |   4 +-
> > >  include/drm/drm_dp_mst_helper.h                    |   5 +-
> > >  13 files changed, 425 insertions(+), 16 deletions(-)
> 

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

