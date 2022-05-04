Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F521519C73
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 11:57:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 496FE1120DE;
	Wed,  4 May 2022 09:57:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F6051120DC
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 09:57:07 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id j6so1820268ejc.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 May 2022 02:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=vW7YIzZMa129gfNfbbxMbYwvr2kEsDCwx8t4akRiVHo=;
 b=U/FBB9O0nt6azJcRY8rkD6V9zpm1ZxvzvTmuoNMQEAD3opth4WC61UMt4ZFr0cuUDF
 BdZGwdDCv5nk7p8T7warfiGK6VSlCUHhIoFX7SzgR82XClugJcvFc6txuTOD5dUrVtkt
 Rfol7s1uDvvJtczv8dOs0PS3gY1VQuO9leiB8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vW7YIzZMa129gfNfbbxMbYwvr2kEsDCwx8t4akRiVHo=;
 b=7D2xECfv+0rnJKxY8kfv4zUMH+mQ4/V3brSH2v1kGTP3xWGFW8TYDngg7epXxaoRkr
 Sj+qJKHOI72NsMAyL9pSohpd/+3pV7FF/QJjzCXGHqljS/ifZDdi3ScZh13Wk2AqZuUE
 577iaXmA0sw+i4HjBOIBFyzXL8Xhv6rnseh7sPIu55LisylJ4EIeNV2xFETRnuWrThhQ
 n9R50E0/MB++/3rbrls2C2k6MhZi2Ysx8p41vXpfjCekbgm7zB/NVoGe9XlpFIYfq5bo
 C0XYvUcGfov75r1y+wyNXztaCNzcBrhDji3JcPBBlYON9HP3pPWajARWFC1IXLsPMXhy
 Nk9g==
X-Gm-Message-State: AOAM530yO39OjC36jP3dImjkNzBFtKq6PDMtHhej7koJZ152tNE3bawh
 1V8FkY3L4YXDJIi8mFgOljljPA==
X-Google-Smtp-Source: ABdhPJzctONoWnyKgUqmMsq7UUzj4EQYp1BtPQJ6de3UXR0Q23eFpD1rKhCfHzpQ5X1hS6Q3VfVR3w==
X-Received: by 2002:a17:907:3f04:b0:6e8:4b0e:438d with SMTP id
 hq4-20020a1709073f0400b006e84b0e438dmr19504123ejc.391.1651658226202; 
 Wed, 04 May 2022 02:57:06 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 w6-20020a170907270600b006f3ef214dcdsm5575298ejk.51.2022.05.04.02.57.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 02:57:05 -0700 (PDT)
Date: Wed, 4 May 2022 11:57:04 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Message-ID: <YnJN8BZIXZN+HIwy@phenom.ffwll.local>
References: <20220502054219.2083162-1-suraj.kandpal@intel.com>
 <YnJK2En3AeNVpbwG@phenom.ffwll.local>
 <MWHPR11MB1741D7B0BB3AC7B0689DB2A0E3C39@MWHPR11MB1741.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MWHPR11MB1741D7B0BB3AC7B0689DB2A0E3C39@MWHPR11MB1741.namprd11.prod.outlook.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 0/3] i915 private writeback framework
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 04, 2022 at 09:52:34AM +0000, Kandpal, Suraj wrote:
> Hi Daniel,
> 
> > > A patch series was floated in the drm mailing list which aimed to
> > > change the drm_connector and drm_encoder fields to pointer in the
> > > drm_connector_writeback structure, this received a huge pushback from
> > > the community but since i915 expects each connector present in the
> > > drm_device list to be a intel_connector but drm_writeback framework.
> > > [1]
> > > https://patchwork.kernel.org/project/dri-devel/patch/20220202081702.22
> > > 119-1-suraj.kandpal@intel.com/ [2]
> > > https://patchwork.kernel.org/project/dri-devel/patch/20220202085429.22
> > > 261-6-suraj.kandpal@intel.com/ This forces us to use a drm_connector
> > > which is not embedded in intel_connector the current drm_writeback
> > > framework becomes very unfeasible to us as it would mean a lot of
> > > checks at a lot of places to take into account the above issue.Since
> > > no one had an issue with encoder field being changed into a pointer it
> > > was decided to break the connector and encoder pointer changes into
> > > two different series.The encoder field changes is currently being
> > > worked upon by Abhinav Kumar
> > > [3]https://patchwork.kernel.org/project/dri-devel/list/?series=633565
> > > In the meantime for i915 to start using the writeback functionality we
> > > came up with a interim solution to own writeback pipeline bypassing
> > > one provided by drm which is what these patches do.
> > > Note: these are temp patches till we figure out how we can either
> > > change drm core writeback to work with our intel_connector structure
> > > or find a different solution which allows us to work with the current
> > 
> > I'm assuming this is just fyi to keep development moving and not being
> > planned for merging?
> Yes we do plan to get it merged as a proper implementation that uses drm-core
> will require significant time and to unblock the writeback functionality these interim
> series of patches have been floated.

No, I really don't think merging some interim hack is the way to go.

It's not display, but on the gem side there was this huge exception about
"hey we need to merge guc scheduler and it's totally ready but it's not
done properly like it should have been for upstream". And surprise it
wasn't ready and took a year just to get the hack job complete, and now no
one seems to be working on doing things properly. So I'm not eager at all
to ack more hack jobs for i915.

Do it right before merging to upstream please.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
