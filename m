Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 879492F4C4F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 14:39:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BCDE6E9C3;
	Wed, 13 Jan 2021 13:39:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com
 [IPv6:2607:f8b0:4864:20::d32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16DE96E9C2
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 13:39:39 +0000 (UTC)
Received: by mail-io1-xd32.google.com with SMTP id r9so4073376ioo.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 05:39:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xgTgs61ABAeTIu4meq1gFhQVUqlSz56o+VLUzN/aTDc=;
 b=RxSatAaoGEBNhcmpkc8Gtx+RaaMYwvbvFGuUiPkr/S9m0x7khUARsrckrQAfFq0O6e
 GNCa/cS0SOlxaS4MzULxDxXHhPpvjD7mGgD0VUjn+VNy2ihQKS+VTh9Zwn9AGK11HyDQ
 1+Xyc/cl21GvuePt7pugxTa0hQzu8jqZZUqbEITISM006cjU3BvQGS5uRuT2uXXFuzuN
 8wC7fy+YzSaCUwsmZbNV87S+g1s7iKO99PYlbgH5j/BwlNypqN1H0XmBRHMtfPO2orSn
 4OxRX4UvlP4JOPMWsM0bb7BCXIdSwT/rU/TbUYNZvWcXgN9m2ujeYthOUq8o1wU0oC1B
 TTQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xgTgs61ABAeTIu4meq1gFhQVUqlSz56o+VLUzN/aTDc=;
 b=Y5ekkPunZ0AfWgEtgGAUd5ybCPfY95g49U1VT+PJvvmMmwJvjGV3qEjMVQIBgcKpp8
 0W33RncceLeO/eXJ4jqEZHuX21m0WMjfqZO20cI/UcVjj7j7qOTYUKWfg6mDVeMIGClh
 6xqoL0oLydcfz9BAg6hR0na9pqzD2RcKhen90xiRZcIzhmMibvpfo3nY4Zvagx5GIGH4
 NbczU4aZ6D5rlMB0IIRSjEzlXHtwF1sMNXD51E5MgwebqUuGgZVvoODOcYwi9ow4N4O0
 I12pciSR1F0pnmXB22Ok5dMvuwwtCMBcPe6sNrFukNFt+ggzLMayVyjCBC5Ws56gFHfD
 h0pw==
X-Gm-Message-State: AOAM531U2j6HMwWKoIWewR96/GCjemT7gBtDzJ0H3bCFLGE6tJTwViu1
 dssz3Xbls+xbKP9OfvD1Pop2iEd/tSzE8Ubm44YjyA==
X-Google-Smtp-Source: ABdhPJxPBE5Zgt+JuL0vRAIEt+idJH41paJpG45J+XFcvvOEq8OajLGQ2aR9bF6fvxbscMWjDU5i4uX9oS7CC81/t7E=
X-Received: by 2002:a05:6e02:194a:: with SMTP id
 x10mr2279141ilu.165.1610545178382; 
 Wed, 13 Jan 2021 05:39:38 -0800 (PST)
MIME-Version: 1.0
References: <20210106223909.34476-1-sean@poorly.run>
 <20210113101942.GK11717@intel.com>
In-Reply-To: <20210113101942.GK11717@intel.com>
From: Sean Paul <sean@poorly.run>
Date: Wed, 13 Jan 2021 08:39:02 -0500
Message-ID: <CAMavQKLzGR2j2UJXymNrhy3Yp4ssKC=-J87ak4=8aUKn3vdB2A@mail.gmail.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdcp: Disable the QSES check for
 HDCP 1.4 over MST
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
Cc: David Airlie <airlied@linux.ie>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Sean Paul <seanpaul@chromium.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 13, 2021 at 5:34 AM Anshuman Gupta <anshuman.gupta@intel.com> wrote:
>
> On 2021-01-07 at 04:08:58 +0530, Sean Paul wrote:
> > From: Sean Paul <seanpaul@chromium.org>
> >
> > The HDCP 1.4 spec does not require the QUERY_STREAM_ENCRYPTION_STATUS
> IMHO DP 1.4 vesa specs I.3.5 mark QSES as desirale for both HDCP 1.4 and HDCP 2.2.
> "The MST Source device may use a QUERY_STREAM_ENCRYPTION_STATUS message
> transaction to query the downstream status for a particular stream."
>
> I feel it useful for scenario in which a non hdcp supported monitor
> is hot plugged to MST branch. Source really doesn't know about the hdcp
> capable device on MST branch, it just know the capability of immediate
> downstream device. QSES can fetch the HDCP capability from MST topology.
> We don't require to enable stream encryption for such streams.

I agree it's useful when it works, but unfortunately it's broken on at
least 2 MST bridge chips I've encountered :/

Until we can figure out a) how to fix them (ie: firmware updates), or
b) how to enumerate all of the broken chips to create quirks, we
probably just want to disable QSES for HDCP 1.4.

Sean

> > check, it was always a nice-to-have. After deploying this across various
> > devices, we've determined that some MST bridge chips do not properly
> > support this call for HDCP 1.4 (namely Synaptics and Realtek).
> >
> > I had considered creating a quirk for this, but I think it's more
> > prudent to just disable the check entirely since I don't have an idea
> > how widespread support is.
> May be we can remove it from the link check and can retain as utility ?
> Thanks,
> Anshuman Gupta.
> >
> > Signed-off-by: Sean Paul <seanpaul@chromium.org>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 26 +-------------------
> >  1 file changed, 1 insertion(+), 25 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > index 03424d20e9f7..b6a9606bf09a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > @@ -640,30 +640,6 @@ intel_dp_mst_hdcp_toggle_signalling(struct intel_digital_port *dig_port,
> >       return ret;
> >  }
> >
> > -static
> > -bool intel_dp_mst_hdcp_check_link(struct intel_digital_port *dig_port,
> > -                               struct intel_connector *connector)
> > -{
> > -     struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > -     struct intel_dp *intel_dp = &dig_port->dp;
> > -     struct drm_dp_query_stream_enc_status_ack_reply reply;
> > -     int ret;
> > -
> > -     if (!intel_dp_hdcp_check_link(dig_port, connector))
> > -             return false;
> > -
> > -     ret = drm_dp_send_query_stream_enc_status(&intel_dp->mst_mgr,
> > -                                               connector->port, &reply);
> > -     if (ret) {
> > -             drm_dbg_kms(&i915->drm,
> > -                         "[CONNECTOR:%d:%s] failed QSES ret=%d\n",
> > -                         connector->base.base.id, connector->base.name, ret);
> > -             return false;
> > -     }
> > -
> > -     return reply.auth_completed && reply.encryption_enabled;
> > -}
> > -
> >  static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
> >       .write_an_aksv = intel_dp_hdcp_write_an_aksv,
> >       .read_bksv = intel_dp_hdcp_read_bksv,
> > @@ -674,7 +650,7 @@ static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
> >       .read_ksv_fifo = intel_dp_hdcp_read_ksv_fifo,
> >       .read_v_prime_part = intel_dp_hdcp_read_v_prime_part,
> >       .toggle_signalling = intel_dp_mst_hdcp_toggle_signalling,
> > -     .check_link = intel_dp_mst_hdcp_check_link,
> > +     .check_link = intel_dp_hdcp_check_link,
> >       .hdcp_capable = intel_dp_hdcp_capable,
> >
> >       .protocol = HDCP_PROTOCOL_DP,
> > --
> > Sean Paul, Software Engineer, Google / Chromium OS
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
