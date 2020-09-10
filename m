Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C81E26419D
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 11:24:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88FFA6E8D6;
	Thu, 10 Sep 2020 09:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92E396E8D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 09:24:41 +0000 (UTC)
IronPort-SDR: iNHB1cizgZcmQseBD/Pm3LnVcbJBg6e0ly6K1rlZzQT3wi7aiNEfcMB2uDAaOx5BzTtUOB/tWT
 mFO6CyiIXodA==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="155959285"
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="155959285"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 02:24:41 -0700
IronPort-SDR: X9H0bEyd08nRIVzEFjirq/2o0mJ/lFRsaJHQSp+3qkmLzqA0TxugIGxvELgVqr6y8AiLx+fSpN
 9qGyJRxncF5A==
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="505055376"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 02:24:39 -0700
Date: Thu, 10 Sep 2020 14:43:35 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <20200910091332.GQ25390@intel.com>
References: <20200910081727.4505-1-anshuman.gupta@intel.com>
 <20200910091245.GA7558@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200910091245.GA7558@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [RFC 0/6] HDCP 2.2 DP MST Support
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
Cc: intel-gfx@lists.freedesktop.org, seanpaul@chromium.org,
 suresh.kumar.kurmi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-09-10 at 14:42:46 +0530, Ramalingam C wrote:
> On 2020-09-10 at 13:47:21 +0530, Anshuman Gupta wrote:
> > This is RFC proposal to support HDCP 2.2 on DP MST.
> > This series is built on below series using the
> > common functionality of HDCP stream encryption.
> 
> Before I get into the series, what is the plan for CI coverage for
> HDCP DP MST, w.r.t igt and hw.
Hi Ram,
We have ordered a benq DP MST panel which supports HDCP 2.2
https://www.benq.com/en-in/monitor/designer/pd2700u.html
once we will recevie the panel, i will test my patches.
Subsequently we will request CI team to procure similar panel.
Thanks,
Anshuman Gupta.
> 
> Ram
> > 
> > Anshuman Gupta (6):
> >   drm/i915/hdcp: Encapsulate hdcp_port_data to dig_port
> >   drm/i915/hdcp: mst streams support in hdcp port_data
> >   drm/i915/hdcp: Pass connector to check_2_2_link
> >   drm/i915/hdcp: Add HDCP 2.2 stream register
> >   drm/i915/hdcp: Support for HDCP 2.2 MST shim callbacks
> >   drm/i915/hdcp: Enable HDCP 2.2 MST support
> > 
> >  .../drm/i915/display/intel_display_types.h    |   9 +-
> >  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  84 +++++++++++--
> >  drivers/gpu/drm/i915/display/intel_hdcp.c     | 114 +++++++++++++-----
> >  drivers/gpu/drm/i915/display/intel_hdmi.c     |   3 +-
> >  drivers/gpu/drm/i915/i915_reg.h               |  30 +++++
> >  drivers/misc/mei/hdcp/mei_hdcp.c              |   2 +-
> >  include/drm/drm_hdcp.h                        |   8 +-
> >  7 files changed, 204 insertions(+), 46 deletions(-)
> > 
> > -- 
> > 2.26.2
> > 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
