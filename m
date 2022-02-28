Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9D14C6F51
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Feb 2022 15:26:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3C8C10E625;
	Mon, 28 Feb 2022 14:26:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com
 [IPv6:2607:f8b0:4864:20::834])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1502110E21D
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Feb 2022 08:07:53 +0000 (UTC)
Received: by mail-qt1-x834.google.com with SMTP id w1so8256756qtj.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Feb 2022 00:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7axuRj6JYm7SHsFwqubaOBoIuWQe+JkfOgZe8hwcemE=;
 b=XoGGrUjjbgyJJgbkCJh4Gg2e8GJSXL9iubhJQmD8t1UQr9vokVWoUqkvGS71sI7coi
 AkA9mzzHH8MLcIKqDi8b+utBUGUiGY+UEpmhtJzhE7pRoKTHgBgplWiG1g6AhNBhGuhd
 1csnr/jr0KI19+6LMabQYkyXBzpmSTRkLNNwUiZZt4lE7DagX/J/eTARsZMzlF6nrYzs
 GhRmG9mnSodT5xIQYvl+/zGOGGtMs3RBqcmvSJCJ/SrAnxPQQjUCwOp0XPGDMvZ1J9fN
 uWw4U8RxTDp5nwRy69XO7jZhHF9fAp0SIHkmIKTdtDV1jqpsFQumE/2TBZ5kqKjH7evR
 A0Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7axuRj6JYm7SHsFwqubaOBoIuWQe+JkfOgZe8hwcemE=;
 b=pQGG+1EfxCty2KzjdocT6kexrLJxkdwxUTVOvvV8esGqTKO5by9/4u6+nwJP8/P7wR
 XiYlQ2QwHaCqiISU0bOVPqjKsehKdcN9jqepm5+MR1QTxg6aBhrCsq1RVxJiy6e1Rqug
 yQqm8rkOQ1Jf0D9rDCTFwGxQ2DqjMvgdrMzAHzSazwYevpVgUFVsWp+Pgf9YeWTejXTL
 iw3j1l/8i+MTqoF1x0J2fBE1F2zj5ots6C/3NDjD+6DlA6yo+nou7AWVlsBlmyXJZOwk
 oxGRydDy8sOvuq5KHeuTRWmirRkSey0xsNHr/Gys8fd1FwDiB4UgkwOIJsbAB9YeLFUj
 HTNg==
X-Gm-Message-State: AOAM531Akb2rbkUF2vh4ZalIXcW03eCUDvCST2h85ZwbgK9Url5GwNhh
 nvGpbsyTQ+1aoFnlTfnvz6gr4i8TI0gAmrXe3YbTOA==
X-Google-Smtp-Source: ABdhPJzdYQdPDRuiU87rTXQWLBXFDrXkJoGuNVZk0UGYWiT7E9/jxx0tqgCy1r2D301+B+veETmaZvPUX5scJFz/piQ=
X-Received: by 2002:ac8:5cc9:0:b0:2de:8838:5888 with SMTP id
 s9-20020ac85cc9000000b002de88385888mr15835222qta.370.1646035672083; Mon, 28
 Feb 2022 00:07:52 -0800 (PST)
MIME-Version: 1.0
References: <20220202085429.22261-1-suraj.kandpal@intel.com>
 <20220202085429.22261-6-suraj.kandpal@intel.com>
 <Yfp8Q6OFqTAvESOi@pendragon.ideasonboard.com>
 <87y22ts948.fsf@intel.com>
 <CAA8EJprrhPtDkWRk8+6Wf+OoQi4u8m_t7G5guJQW+SNuttOSgQ@mail.gmail.com>
 <87sft1s1m5.fsf@intel.com>
 <MWHPR11MB17412030E65D4E4821549E24E33C9@MWHPR11MB1741.namprd11.prod.outlook.com>
 <d0677cbd-64f1-eb13-7aea-3de599134d09@quicinc.com>
 <MWHPR11MB1741E1C4A6247CCCBECC6793E33F9@MWHPR11MB1741.namprd11.prod.outlook.com>
 <YhyBEnI/P5KezATw@pendragon.ideasonboard.com>
In-Reply-To: <YhyBEnI/P5KezATw@pendragon.ideasonboard.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 28 Feb 2022 11:07:41 +0300
Message-ID: <CAA8EJpqkW2FO_G-NTodn9jrAoDtjB+GfvLoZV97Ci9WNsJhAKA@mail.gmail.com>
To: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 28 Feb 2022 14:26:05 +0000
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/rcar_du: changes to rcar-du driver
 resulting from drm_writeback_connector structure changes
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
Cc: "carsten.haitzler@arm.com" <carsten.haitzler@arm.com>, "Nikula,
 Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 28 Feb 2022 at 11:00, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Suraj,
>
> On Sat, Feb 26, 2022 at 05:10:06AM +0000, Kandpal, Suraj wrote:
> > Hi Abhinav,
> >
> > > Based on the discussion in this thread [1] , it seems like having drm_encoder
> > > as a pointer seems to have merits for both of us and also in agreement with
> > > the folks on this thread and has a better chance of an ack.
> > >
> > > However drm_connector is not.
> > >
> > > I had a brief look at your implementation. Any reason you need to go
> > > through intel_connector here and not drm_writeback_connector directly?
> > >
> > > The reason I ask is that I see you are not using prepare_writeback_job hook.
> > > If you use that, you can use the drm_writeback_connector passed on from
> > > there instead of looping through your list like you are doing in
> > > intel_find_writeback_connector.
> > >
> > > Also, none of the other entries of struct intel_connector are being used for
> > > the writeback implementation. So does the drm_writeback_connector in
> > > your implementation need to be an intel_connector when its anyway not
> > > using other fields? Why cant it be just stored as a drm_writeback_connector
> > > itself in your struct intel_wd.
> >
> > The reason we can't do that is i915 driver always assumes that all connectors
> > present in device list is an intel connector and since drm_writeback_connector
> > even though a faux connector in it's initialization calls drm_connector_init()
> > and gets added to the drm device list and hence the i915 driver also expects
> > a corresponding intel connector to go with it. In case I do try to make writeback
> > connector standalone a lot of checks, a lot will have to be added all around the
> > driver as there could be a chance that one of the drm_connector in the drm device
> > list may not be an intel_connector.
> > Yes right now not all fields of intel_connector are being used but we will be working
> > on filling them as we add more functionality to writeback for example introducing
> > content protection.
> > So even if I do float the patch series with just drm_encoder as pointer it won't help
> > us with our implementation if drm_connector isn't a pointer too.
>
> This is a direct consequence of the decision to use connectors for
> writeback in the userspace API. This disrupts any code that assumes that
> a connector is a connector. The problem isn't limited to kernelspace,
> userspace has the same exact problem, which resulted in a hack to avoid
> breaking everything. Userspace software that needs to deal with
> writeback needs to set the DRM_CLIENT_CAP_WRITEBACK_CONNECTORS
> capability to get the writeback connectors exposed by the kernel, but
> more than that, a large refactoring is then often needed to chase all
> code paths that assume a connector is a connector.
>
> I'm afraid the same applies to the kernel. Drivers that don't use
> writeback are largely unaffected. Drievrs that want to use writeback
> need to be refactored to properly handle the fact that writeback
> connectors are special. i915 will need to go that way.

Laurent, you have frown upon the idea of separating the connector from
the drm_writeback_connector struct. What about the encoder?
The msm code in question can be found at the patchwork:
https://patchwork.freedesktop.org/series/99724/. This series depends
on Intel's patch, but should give you the overall feeling of the code
being shared between to-the-display and writeback pipelines.

-- 
With best wishes
Dmitry
