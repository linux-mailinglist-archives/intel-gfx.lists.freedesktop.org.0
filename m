Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 407FA1EDF02
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 10:05:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 642AA6E2A0;
	Thu,  4 Jun 2020 08:05:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C3336E2B2
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 08:05:13 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id x14so5027291wrp.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Jun 2020 01:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=qOlbXFnsdBQ7883+WEeJlNuY37RI/dcLGVYBvZy1LLk=;
 b=Z2cVqmYOg2/zhZiDKNcpAV3wTeEmHynHOCLX786smTAcGXrK5zBLbNKsxYCI3BHiqp
 sF3biqYiYTX/eJY2c92VajQE5rhNbNshR0Y/FBopzR0w2GqUHdMucXhiO7TIhwHfqoAt
 8RDzbW1KKiaQGVHleZadtKiIiachTNw3lKfzU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qOlbXFnsdBQ7883+WEeJlNuY37RI/dcLGVYBvZy1LLk=;
 b=rDMYDqw6W1oMoBHLt8x7U+sfCan/3I6pnE9lQ9M0wN7LdsqfYNv43E5oz+wqeSDQ/C
 QGoVjSvE6GAi2sHpQFtq1PNVZ4c5TADMf+/K3KqvQ9XjhW3hfJBRo7WwOnJcdp9ayEiG
 Dfh6XOZ4XhvpjS1EZ2Ntl7NKslTHld6zK1zZN0ayADa07ddJ5tvlp6fChHf3lgVMhTeP
 m0QDc3oCO+UZgwbbhUWjrGrI1e1avxP6ju/NHoUVMi2RJIGwMAumArHY/ch4FHY5S8kK
 3nwDoPsBQR1/0mLk1TryJHNadXsyGJMIZgZXvSR3nwMIyBWBlBxT9ONL2JdHYHXIdc9V
 R7eQ==
X-Gm-Message-State: AOAM533AV7wCpyRQARlJ9LptJtViMTM04JGMdEngBKw7Hv88UieI0YAe
 A/2DxfpKwZRAmlNqq37FQBOOcw==
X-Google-Smtp-Source: ABdhPJxUY2gSpum5z68DU4sDzdwIGUFjsqARAbL20uJ+enDWt1FvdA9SuGBlwpYgygmSwencVosAPw==
X-Received: by 2002:a5d:498b:: with SMTP id r11mr3011201wrq.328.1591257911447; 
 Thu, 04 Jun 2020 01:05:11 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id k16sm6694999wrp.66.2020.06.04.01.05.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 01:05:10 -0700 (PDT)
Date: Thu, 4 Jun 2020 10:05:07 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Message-ID: <20200604080507.GT20149@phenom.ffwll.local>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
 <20200415074034.175360-54-daniel.vetter@ffwll.ch>
 <20200415094512.GA30444@ravnborg.org>
 <MWHPR12MB14532DA5713E3B579ABFE1F4A1DB0@MWHPR12MB1453.namprd12.prod.outlook.com>
 <CAKMK7uGDGgt8Cm_bFoyzeoP2CWyiUNdUwb7GL6Ohu3k0rP0p1w@mail.gmail.com>
 <20200428140842.GL3456981@phenom.ffwll.local>
 <CH2PR12MB3894B40C6D71435D3E759A34A1A20@CH2PR12MB3894.namprd12.prod.outlook.com>
 <CAKMK7uFRt14m24ajYygdRZz=fUMhA9u6=590R2jjhXGq=VtwNA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uFRt14m24ajYygdRZz=fUMhA9u6=590R2jjhXGq=VtwNA@mail.gmail.com>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 53/59] drm/arc: Move to drm/tiny
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
Cc: Sam Ravnborg <sam@ravnborg.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 08, 2020 at 08:07:41PM +0200, Daniel Vetter wrote:
> On Fri, May 8, 2020 at 3:56 PM Alexey Brodkin
> <Alexey.Brodkin@synopsys.com> wrote:
> >
> > Hi Daniel,
> >
> > > > Looking at this patch series, feels a bit like hand-rolling of bridge
> > > > code, badly. We should get away from that.
> > > >
> > > > Once you have that I think the end result is tiny enough that it can
> > > > stay, bridges intergrate quite well into simple display pipe drivers.
> > > >
> > > > > BTW should I pull that series in my tree and send you a pull-request
> > > > > or that kind of change needs to go through another tree?
> > > > >
> > > > > Also I'd like to test the change we discuss here to make sure stuff
> > > > > still works. Once we do that I'll send an update. Any hint on
> > > > > when that change needs to be acked/nacked?
> > > >
> > > > Simplest is if this can all land through drm-misc, is arc not
> > > > maintained in there? And there's plenty of time for testing, I'm just
> > > > slowly crawling through the tree to get everything polished and
> > > > cleaned up in this area.
> > >
> > > Any updates on testing this pile here? First patch landed now, and I've
> > > started to push driver patches. So would be good to get this sorted out
> > > too.
> >
> > Sorry we're in the middle of 2 long weekends so missed this one.
> > I guess we'll be able to test it in a week or two from now.
> >
> > Is that OK?
> 
> This aren't high-priority, so totally ok. As long as you don't land a
> driver rewrite and I have to rebase everything :-)

Ping for a bit of testing on this stuff ...
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
