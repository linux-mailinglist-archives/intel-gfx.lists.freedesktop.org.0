Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A566CC0BE
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 15:28:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26B7F10E7B9;
	Tue, 28 Mar 2023 13:28:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com
 [IPv6:2607:f8b0:4864:20::b2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 621F710E7B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 13:28:03 +0000 (UTC)
Received: by mail-yb1-xb2d.google.com with SMTP id p204so14977870ybc.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 06:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1680010082;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=zf4LbD3AMshvBZn89aWrIQPVRkcB4VUn3i+lt1nSoAk=;
 b=Sm4kqaCFBUY6bK7gN/LnStFgPSpQl1v6/124u7FWLFBt8VXCwuk0Z970Wwyw0Ur192
 HYFy3wJiMAMSL9tinJ4cgj2cNY/v13BhkadQNf1B266r4rg796qAS9JCxNKsiK3+yUgK
 9YGXEtEAxGiL6hg2GAAl8X89j//01Nfa3W/79bj7xK0r2pP9kj4pmENR252N2NjJQLG8
 WeLKppOtHm0sEK4JJTLQNOaKhgDdItsOGGn52A6v7+J8IQLxLOOo49o2SrEhUCgjlpkb
 uak27N4SBl7s+WaWrMFHTT7nr3L6qE1AWnBukxg0I/CvXp7UysYrZYvfzMY5ylgdVcQi
 AsGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680010082;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=zf4LbD3AMshvBZn89aWrIQPVRkcB4VUn3i+lt1nSoAk=;
 b=hYdth9rVwiB/hTrmPw2mg93GmsGHAQmLLpajmnPTB1deaG1uM7Kb5g1XLvWuZ7dYP2
 O5Vi+O7AXE5WgNi/IlyHJtPFD42EjyieZZEbYmpsPXwmLvgpP1sJl2DkXtFFfkNQaNbw
 7WELaMterF0TI7dDDnvRHOADBaVEky4htY+1Gc4O0jdMoSuPIroVrOTMAvJkD/X9Sj4+
 66NR2o4Vc5CWrxnMbxQfwv0ykpCoXwdX68PGj+WzwE4Kb7tDRtTh6eEnawiCEmpaMxfo
 GyMZkPbNDj5JbfN0cfkxWcN1LAGF10FdRDrZqeRRNgW8lTOS507TtGBN1Q/zvdPymykZ
 zVsg==
X-Gm-Message-State: AAQBX9eWPopBBDp+K5g7R2YsEWdONb4VPj0nLrBmtyny5Lq0wHQ/qpch
 HtJ8Ij8RJbOlSEcs1zZgY6BnpQKGdGvP20T8KFbKNQ==
X-Google-Smtp-Source: AKy350a5ZeUqZovBpBBDQsnVDd9INMepwgVauJz8NvVh35BUdSwSKP0mNmz7z97n69C0ztrSbTzdjCPphQgbaC0px68=
X-Received: by 2002:a05:6902:1501:b0:b4c:9333:2a2 with SMTP id
 q1-20020a056902150100b00b4c933302a2mr7851032ybu.9.1680010082427; Tue, 28 Mar
 2023 06:28:02 -0700 (PDT)
MIME-Version: 1.0
References: <20230222053153.3658345-1-suraj.kandpal@intel.com>
 <87ttyvbhuz.fsf@intel.com>
 <SN7PR11MB6750FDE3318A85E0A2541831E3889@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750FDE3318A85E0A2541831E3889@SN7PR11MB6750.namprd11.prod.outlook.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 28 Mar 2023 16:27:51 +0300
Message-ID: <CAA8EJprrTPU6E59XjSa9SrMcg9q89ZPB33gayVMqCToR_nQ6CA@mail.gmail.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 0/7] Enable YCbCr420 format for VDSC
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 28 Mar 2023 at 16:20, Kandpal, Suraj <suraj.kandpal@intel.com> wrote:
> > -----Original Message-----
> > From: dri-devel <dri-devel-bounces@lists.freedesktop.org> On Behalf Of Jani
> > Nikula
> > Sent: Wednesday, March 8, 2023 5:00 PM
> > To: Kandpal, Suraj <suraj.kandpal@intel.com>; dri-
> > devel@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>; Nautiyal, Ankit K
> > <ankit.k.nautiyal@intel.com>; Shankar, Uma <uma.shankar@intel.com>;
> > Kandpal, Suraj <suraj.kandpal@intel.com>
> > Subject: Re: [PATCH 0/7] Enable YCbCr420 format for VDSC
> >
> > On Wed, 22 Feb 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > > This patch series aims to enable the YCbCr420 format for DSC. Changes
> > > are mostly compute params related for hdmi,dp and dsi along with the
> > > addition of new rc_tables for native_420 and corresponding changes to
> > > macros used to fetch them.
> > > There have been discussions prior to this series in which some patches
> > > have gotten rb and can be found in the below link
> > > https://patchwork.freedesktop.org/series/113729
> >
> > I think it would be useful to get [1] from Dmitry merged to drm-misc-next
> > first, have that in drm-next, and again backmerged to drm-intel-next before
> > this. At least patches 1-5.
> >
> > There's not much point in all drivers duplicating the parameters, and we
> > need to move towards common code. Dmitry has been helpful in
> > contributing this to us.
> >
> > BR,
> > Jani.
> >
> >
>
> Hi Jani,
> Maarten has acked the patch series to be merged through drm-intel and in the meantime
> I will work with Dmitry to pull the common code to avoid duplication

Thank you! If necessary feel free to ping me on IRC ('lumag').

>
> Regards,
> Suraj Kandpal
>
> > [1] https://patchwork.freedesktop.org/series/114473/
> >
> > >
> > > Ankit Nautiyal (2):
> > >   drm/dp_helper: Add helper to check DSC support with given o/p format
> > >   drm/i915/dp: Check if DSC supports the given output_format
> > >
> > > Suraj Kandpal (4):
> > >   drm/i915: Adding the new registers for DSC
> > >   drm/i915: Enable YCbCr420 for VDSC
> > >   drm/i915/display: Fill in native_420 field
> > >   drm/i915/vdsc: Check slice design requirement
> > >
> > > Swati Sharma (1):
> > >   drm/i915/dsc: Add debugfs entry to validate DSC output formats
> > >
> > >  drivers/gpu/drm/i915/display/icl_dsi.c        |   2 -
> > >  .../drm/i915/display/intel_crtc_state_dump.c  |   4 +-
> > >  .../drm/i915/display/intel_crtc_state_dump.h  |   2 +
> > >  .../drm/i915/display/intel_display_debugfs.c  |  78 ++++++++
> > >  .../drm/i915/display/intel_display_types.h    |   1 +
> > >  drivers/gpu/drm/i915/display/intel_dp.c       |  39 +++-
> > >  .../gpu/drm/i915/display/intel_qp_tables.c    | 187 ++++++++++++++++--
> > >  .../gpu/drm/i915/display/intel_qp_tables.h    |   4 +-
> > >  drivers/gpu/drm/i915/display/intel_vdsc.c     | 108 +++++++++-
> > >  drivers/gpu/drm/i915/i915_reg.h               |  28 +++
> > >  include/drm/display/drm_dp_helper.h           |  13 ++
> > >  11 files changed, 442 insertions(+), 24 deletions(-)
> >
> > --
> > Jani Nikula, Intel Open Source Graphics Center



-- 
With best wishes
Dmitry
