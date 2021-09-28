Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9903D41B932
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Sep 2021 23:24:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 009266E99F;
	Tue, 28 Sep 2021 21:24:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C24316E983
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Sep 2021 21:23:58 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1632864239; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=yey3d6XIb/bq07TKZoQUQLHlB3MBHKVgS0SGNls1NJE=;
 b=TlpRsbsmgaub03/zTzNMy9CELUluH3hjW8rmvAwu1R3MqEbZzSsKP78xM4+WpyTWVLOs/kNP
 bqzU8F8h7xiVQXw1t7AfTDMGyL6O6Ph608GeFXX8hKbZgdvKOlseeqrJGY0jDYNtC0UGsi64
 0HcPptXB4sfsbJVWFhbvf1d46Zk=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI5MzZmYyIsICJpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-east-1.postgun.com with SMTP id
 615387eb713d5d6f960bd86d (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 28 Sep 2021 21:23:55
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 69263C43460; Tue, 28 Sep 2021 21:23:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: abhinavk)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 9B501C4338F;
 Tue, 28 Sep 2021 21:23:53 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Tue, 28 Sep 2021 14:23:53 -0700
From: abhinavk@codeaurora.org
To: Sean Paul <sean@poorly.run>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, swboyd@chromium.org, Sean Paul
 <seanpaul@chromium.org>
In-Reply-To: <20210928180619.GU2515@art_vandelay>
References: <20210915203834.1439-1-sean@poorly.run>
 <6ccc0ce547ccb015a114a9a1292d59f6@codeaurora.org>
 <20210928180619.GU2515@art_vandelay>
Message-ID: <898f32f4d43855884efea79d21fc262e@codeaurora.org>
X-Sender: abhinavk@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
Subject: Re: [Intel-gfx] [Freedreno] [PATCH v2 00/13] drm/hdcp: Pull HDCP
 auth/exchange/check into helpers
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

On 2021-09-28 11:06, Sean Paul wrote:
> On Tue, Sep 21, 2021 at 07:30:29PM -0700, abhinavk@codeaurora.org 
> wrote:
>> Hi Sean
>> 
>> On 2021-09-15 13:38, Sean Paul wrote:
>> > From: Sean Paul <seanpaul@chromium.org>
>> >
>> > Hello again,
>> > This is the second version of the HDCP helper patchset. See version 1
>> > here: https://patchwork.freedesktop.org/series/94623/
>> >
>> > In this second version, I've fixed up the oopsies exposed by 0-day and
>> > yamllint and incorporated early review feedback from the dt/dts reviews.
>> >
>> > Please take a look,
>> >
>> > Sean
>> 
>> One question overall on the series:
>> 
>> 1) Regarding validation, did you run any secure video to check the
>> transitions?
> 
> Yep, the transitions look good, no visual artifacts.
> Unplug/replug/suspend/resume all seem to be behaving as expected.
> 
>> 2) Is running HDCP 1x compliance also part of the validation efforts?
> 
> If Qualcomm has the ability to run validation, I'd be very keen to get 
> some
> help in that regard.

Thanks for letting us know. To assist with (2) we will have to work with 
you on some logistics.
Will sync up on IRC further on how to go about this.

> 
> Sean
> 
>> 
>> Thanks
>> 
>> Abhinav
>> 
>> >
>> > Sean Paul (13):
>> >   drm/hdcp: Add drm_hdcp_atomic_check()
>> >   drm/hdcp: Avoid changing crtc state in hdcp atomic check
>> >   drm/hdcp: Update property value on content type and user changes
>> >   drm/hdcp: Expand HDCP helper library for enable/disable/check
>> >   drm/i915/hdcp: Consolidate HDCP setup/state cache
>> >   drm/i915/hdcp: Retain hdcp_capable return codes
>> >   drm/i915/hdcp: Use HDCP helpers for i915
>> >   drm/msm/dpu_kms: Re-order dpu includes
>> >   drm/msm/dpu: Remove useless checks in dpu_encoder
>> >   drm/msm/dpu: Remove encoder->enable() hack
>> >   drm/msm/dp: Re-order dp_audio_put in deinit_sub_modules
>> >   dt-bindings: msm/dp: Add bindings for HDCP registers
>> >   drm/msm: Implement HDCP 1.x using the new drm HDCP helpers
>> >
>> >  .../bindings/display/msm/dp-controller.yaml   |    7 +-
>> >  arch/arm64/boot/dts/qcom/sc7180.dtsi          |    4 +-
>> >  drivers/gpu/drm/drm_hdcp.c                    | 1197 ++++++++++++++++-
>> >  drivers/gpu/drm/i915/display/intel_atomic.c   |    7 +-
>> >  drivers/gpu/drm/i915/display/intel_ddi.c      |   29 +-
>> >  .../drm/i915/display/intel_display_debugfs.c  |   11 +-
>> >  .../drm/i915/display/intel_display_types.h    |   58 +-
>> >  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  345 ++---
>> >  drivers/gpu/drm/i915/display/intel_dp_mst.c   |   17 +-
>> >  drivers/gpu/drm/i915/display/intel_hdcp.c     | 1011 +++-----------
>> >  drivers/gpu/drm/i915/display/intel_hdcp.h     |   35 +-
>> >  drivers/gpu/drm/i915/display/intel_hdmi.c     |  256 ++--
>> >  drivers/gpu/drm/msm/Makefile                  |    1 +
>> >  drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c   |   17 +-
>> >  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c       |   30 +-
>> >  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.h       |    2 -
>> >  drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h     |    4 -
>> >  drivers/gpu/drm/msm/dp/dp_debug.c             |   49 +-
>> >  drivers/gpu/drm/msm/dp/dp_debug.h             |    6 +-
>> >  drivers/gpu/drm/msm/dp/dp_display.c           |   47 +-
>> >  drivers/gpu/drm/msm/dp/dp_display.h           |    5 +
>> >  drivers/gpu/drm/msm/dp/dp_drm.c               |   68 +-
>> >  drivers/gpu/drm/msm/dp/dp_drm.h               |    5 +
>> >  drivers/gpu/drm/msm/dp/dp_hdcp.c              |  433 ++++++
>> >  drivers/gpu/drm/msm/dp/dp_hdcp.h              |   27 +
>> >  drivers/gpu/drm/msm/dp/dp_parser.c            |   22 +-
>> >  drivers/gpu/drm/msm/dp/dp_parser.h            |    4 +
>> >  drivers/gpu/drm/msm/dp/dp_reg.h               |   44 +-
>> >  drivers/gpu/drm/msm/msm_atomic.c              |   15 +
>> >  include/drm/drm_hdcp.h                        |  194 +++
>> >  30 files changed, 2561 insertions(+), 1389 deletions(-)
>> >  create mode 100644 drivers/gpu/drm/msm/dp/dp_hdcp.c
>> >  create mode 100644 drivers/gpu/drm/msm/dp/dp_hdcp.h
