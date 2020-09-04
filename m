Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 723FC25E163
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 20:12:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7596F6ECA0;
	Fri,  4 Sep 2020 18:12:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AEBF6E098
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Sep 2020 18:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1599243169;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=S4dO6h5cflx+YUiBH/r7ZgTQhpmjXwvANxcwBU6mxuo=;
 b=b6mnx04zRq49ZsdxfQ0464sADG8onElbYE0Thmofb4Bsby9bGtyjZI0LO+P1TZa1iIqGIF
 miZACLMGqM8PLZHxwt5X8Lva2R598Tv6m6qsrgN4snXU+njI/uTNY0z6bgn3T9YJnO9Yoo
 Ml7GrI3mW95TvAtqmTQlPPYKgR7Ju04=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-565-i6TkyvCaOL2sPmP48zPQ5Q-1; Fri, 04 Sep 2020 14:12:40 -0400
X-MC-Unique: i6TkyvCaOL2sPmP48zPQ5Q-1
Received: by mail-qv1-f71.google.com with SMTP id t4so2852775qvr.21
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Sep 2020 11:12:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=S4dO6h5cflx+YUiBH/r7ZgTQhpmjXwvANxcwBU6mxuo=;
 b=mqNpOYQcPPWWyAqr/bN6ZiqMdHO3cqtsv3L12C9HME8JNjKsvvpz1vfcSXRqaC7x+F
 V9Kd0ofOzQR1MpA30IAnT+NbY5spW+2GkQXUz8Rinhjl3r0l3cCs/CPw4Myf1MyUS8B9
 18/mZev/X1nRpVUkCE99bGMIiu5Zm6Peq8FIAVu/C4yEt19f7kEuGOpyyG+pqYxueAWq
 pDABHsv/syV6lTJg8dWKHCMgx9XZbt61Yen/AAmyC0ykWZ7DjsqpPE5+t2QENF6J2CJb
 Lz7+xN0SbXuTpb5ZzXzMpweL+uRPCivncG6TA8ysrxTA3X5izT62279Ty6QThV4PlOir
 TSwQ==
X-Gm-Message-State: AOAM531kBJA6gua/oEsziR1YoHNfp+XwWnQp5CkBkIJmuiAu2kWeWu6m
 D+Pp62Jqc9Z5ISpthmo8Kcv+jVwB3JufZi0p0Ib+6hzeT6P/bV7Y3bzjHR4ggLmI3wW4pRKWSBy
 4E4kY/bomkcqr2W8HkkyV+02+BJwW
X-Received: by 2002:a37:6108:: with SMTP id v8mr7702063qkb.264.1599243159942; 
 Fri, 04 Sep 2020 11:12:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxd+3AH/ZtQSO85tI5MF/0QyOpYM8EhtlFw1/4XwwxxLmfEEIoT/44Fn0fKlOEb5vU1GxT2VQ==
X-Received: by 2002:a37:6108:: with SMTP id v8mr7702046qkb.264.1599243159674; 
 Fri, 04 Sep 2020 11:12:39 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id s17sm5138417qte.50.2020.09.04.11.12.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 11:12:38 -0700 (PDT)
Message-ID: <89eef368a9fbf04f3bfb3421c0f9f2ae3183259f.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Fri, 04 Sep 2020 14:12:37 -0400
In-Reply-To: <20200904132434.GA586737@intel.com>
References: <11e59ebdea7ee4f46803a21fe9b21443d2b9c401.camel@redhat.com>
 <20200904132434.GA586737@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PULL] topic/nouveau-i915-dp-helpers-and-cleanup
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
Reply-To: lyude@redhat.com
Cc: dim-tools@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Ben Skeggs <bskeggs@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 2020-09-04 at 09:24 -0400, Rodrigo Vivi wrote:
> On Mon, Aug 31, 2020 at 07:38:57PM -0400, Lyude Paul wrote:
> > topic/nouveau-i915-dp-helpers-and-cleanup-2020-08-31-1:
> > UAPI Changes:
> > 
> > None
> > 
> > Cross-subsystem Changes:
> > 
> > * Moves a bunch of miscellaneous DP code from the i915 driver into a set
> >   of shared DRM DP helpers
> > 
> > Core Changes:
> > 
> > * New DRM DP helpers (see above)
> > 
> > Driver Changes:
> > 
> > * Implements usage of the aforementioned DP helpers in the nouveau
> >   driver, along with some other various HPD related cleanup for nouveau
> 
> was this picked-up on the nouveau side already?
> whenever that happens, please ping me so I can pull this to dinq.

Everything that's needed is in this topic branch
> 
> But a reminder that it has my ack to go to drm-misc or only to nouveau
> directly.
> 
> > The following changes since commit bfacb84993eb173c0ab53ca4dd6180f76f4dc176:
> > 
> >   drm: virtio: fix kconfig dependency warning (2020-08-31 08:55:02 +0200)
> > 
> > are available in the Git repository at:
> > 
> >   git://anongit.freedesktop.org/drm/drm-misc tags/topic/nouveau-i915-dp-
> > helpers-and-cleanup-2020-08-31-1
> > 
> > for you to fetch changes up to 79416e97dda0118b137302575a70a14259a27d7d:
> > 
> >   drm/nouveau/kms: Start using drm_dp_read_dpcd_caps() (2020-08-31 19:10:09
> > -0400)
> > 
> > ----------------------------------------------------------------
> > UAPI Changes:
> > 
> > None
> > 
> > Cross-subsystem Changes:
> > 
> > * Moves a bunch of miscellaneous DP code from the i915 driver into a set
> >   of shared DRM DP helpers
> > 
> > Core Changes:
> > 
> > * New DRM DP helpers (see above)
> > 
> > Driver Changes:
> > 
> > * Implements usage of the aforementioned DP helpers in the nouveau
> >   driver, along with some other various HPD related cleanup for nouveau
> > 
> > ----------------------------------------------------------------
> > Lyude Paul (20):
> >       drm/nouveau/kms: Fix some indenting in nouveau_dp_detect()
> >       drm/nouveau/kms/nv50-: Remove open-coded drm_dp_read_desc()
> >       drm/nouveau/kms/nv50-: Just use drm_dp_dpcd_read() in nouveau_dp.c
> >       drm/nouveau/kms/nv50-: Use macros for DP registers in nouveau_dp.c
> >       drm/nouveau/kms: Don't clear DP_MST_CTRL DPCD in nv50_mstm_new()
> >       drm/nouveau/kms: Search for encoders' connectors properly
> >       drm/nouveau/kms/nv50-: Use drm_dp_dpcd_(readb|writeb)() in
> > nv50_sor_disable()
> >       drm/nouveau/kms/nv50-: Refactor and cleanup DP HPD handling
> >       drm/i915/dp: Extract drm_dp_read_mst_cap()
> >       drm/nouveau/kms: Use new drm_dp_read_mst_cap() helper for checking MST
> > caps
> >       drm/nouveau/kms: Move drm_dp_cec_unset_edid() into
> > nouveau_connector_detect()
> >       drm/nouveau/kms: Only use hpd_work for reprobing in HPD paths
> >       drm/i915/dp: Extract drm_dp_read_downstream_info()
> >       drm/nouveau/kms/nv50-: Use downstream DP clock limits for mode
> > validation
> >       drm/i915/dp: Extract drm_dp_read_sink_count_cap()
> >       drm/i915/dp: Extract drm_dp_read_sink_count()
> >       drm/nouveau/kms/nv50-: Add support for DP_SINK_COUNT
> >       drm/nouveau/kms: Don't change EDID when it hasn't actually changed
> >       drm/i915/dp: Extract drm_dp_read_dpcd_caps()
> >       drm/nouveau/kms: Start using drm_dp_read_dpcd_caps()
> > 
> >  drivers/gpu/drm/drm_dp_helper.c             | 187 ++++++++++++++++-
> >  drivers/gpu/drm/drm_dp_mst_topology.c       |  22 ++
> >  drivers/gpu/drm/i915/display/intel_dp.c     | 124 +++--------
> >  drivers/gpu/drm/i915/display/intel_dp.h     |   1 -
> >  drivers/gpu/drm/i915/display/intel_lspcon.c |   2 +-
> >  drivers/gpu/drm/nouveau/dispnv04/dac.c      |   2 +-
> >  drivers/gpu/drm/nouveau/dispnv04/dfp.c      |   7 +-
> >  drivers/gpu/drm/nouveau/dispnv04/disp.c     |  24 ++-
> >  drivers/gpu/drm/nouveau/dispnv04/disp.h     |   4 +
> >  drivers/gpu/drm/nouveau/dispnv04/tvnv04.c   |   2 +-
> >  drivers/gpu/drm/nouveau/dispnv04/tvnv17.c   |   2 +-
> >  drivers/gpu/drm/nouveau/dispnv50/disp.c     | 305 ++++++++++++++++---------
> > ---
> >  drivers/gpu/drm/nouveau/nouveau_connector.c | 132 +++++-------
> >  drivers/gpu/drm/nouveau/nouveau_connector.h |   1 +
> >  drivers/gpu/drm/nouveau/nouveau_display.c   |  72 ++++++-
> >  drivers/gpu/drm/nouveau/nouveau_display.h   |   3 +-
> >  drivers/gpu/drm/nouveau/nouveau_dp.c        | 210 +++++++++++++++----
> >  drivers/gpu/drm/nouveau/nouveau_drm.c       |   4 +-
> >  drivers/gpu/drm/nouveau/nouveau_drv.h       |   2 +
> >  drivers/gpu/drm/nouveau/nouveau_encoder.h   |  48 ++++-
> >  include/drm/drm_dp_helper.h                 |  15 +-
> >  include/drm/drm_dp_mst_helper.h             |   3 +-
> >  22 files changed, 779 insertions(+), 393 deletions(-)
> > 
> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel
> _______________________________________________
> dim-tools mailing list
> dim-tools@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dim-tools
> 
-- 
Sincerely,
      Lyude Paul (she/her)
      Software Engineer at Red Hat

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
