Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 810D62936EE
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 10:41:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B09456EC36;
	Tue, 20 Oct 2020 08:41:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3242F6E0CC;
 Tue, 20 Oct 2020 08:41:12 +0000 (UTC)
IronPort-SDR: wag1KCsmf/J0iMnOw1BYNKt/8iuPeWgM9EGSXW/qP7PGrK4D5a44tTYfxTJSKU4jTaq5npU6wc
 0btCGg7ZT11A==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="228807882"
X-IronPort-AV: E=Sophos;i="5.77,396,1596524400"; d="scan'208";a="228807882"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2020 01:41:11 -0700
IronPort-SDR: FHGAYsyYBmHwo6ydB5sGfFXUe0fyn+pZFEC9e9jtiK8RuuYZwoW1q4TH0lzqI2uW7Bfh1/nQj0
 AQ2W2QM+ZXkQ==
X-IronPort-AV: E=Sophos;i="5.77,396,1596524400"; d="scan'208";a="359106791"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.178])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2020 01:41:09 -0700
Date: Tue, 20 Oct 2020 14:00:59 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20201020083059.GW25390@intel.com>
References: <20201014045252.13608-10-anshuman.gupta@intel.com>
 <20201019102041.26178-1-anshuman.gupta@intel.com>
 <878sc19u3a.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <878sc19u3a.fsf@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 09/13] drm/i915/hdcp: mst streams support in
 hdcp port_data
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
 Tomas Winkler <tomas.winkler@intel.com>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-10-20 at 11:31:37 +0300, Jani Nikula wrote:
> On Mon, 19 Oct 2020, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> > Add support for multiple mst stream in hdcp port data
> > which will be used by RepeaterAuthStreamManage msg and
> > HDCP 2.2 security f/w for m' validation.
> >
> > v2:
> > Init the hdcp port data k for HDMI/DP SST strem.
> >
> > Cc: Ramalingam C <ramalingam.c@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |  4 +-
> >  drivers/gpu/drm/i915/display/intel_hdcp.c     | 92 ++++++++++++++++---
> >  drivers/misc/mei/hdcp/mei_hdcp.c              |  3 +-
> >  include/drm/drm_hdcp.h                        |  8 +-
> 
> ...
> 
> > diff --git a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei_hdcp.c
> > index 9ae9669e46ea..b10d266fb60a 100644
> > --- a/drivers/misc/mei/hdcp/mei_hdcp.c
> > +++ b/drivers/misc/mei/hdcp/mei_hdcp.c
> > @@ -569,8 +569,7 @@ static int mei_hdcp_verify_mprime(struct device *dev,
> >  	verify_mprime_in->header.api_version = HDCP_API_VERSION;
> >  	verify_mprime_in->header.command_id = WIRED_REPEATER_AUTH_STREAM_REQ;
> >  	verify_mprime_in->header.status = ME_HDCP_STATUS_SUCCESS;
> > -	verify_mprime_in->header.buffer_len =
> > -			WIRED_CMD_BUF_LEN_REPEATER_AUTH_STREAM_REQ_MIN_IN;
> > +	verify_mprime_in->header.buffer_len = cmd_size  - sizeof(struct hdcp_cmd_header);
> >  
> >  	verify_mprime_in->port.integrated_port_type = data->port_type;
> >  	verify_mprime_in->port.physical_port = (u8)data->fw_ddi;
> > diff --git a/include/drm/drm_hdcp.h b/include/drm/drm_hdcp.h
> > index fe58dbb46962..c8a37bb406b2 100644
> > --- a/include/drm/drm_hdcp.h
> > +++ b/include/drm/drm_hdcp.h
> > @@ -101,11 +101,11 @@
> >  
> >  /* Following Macros take a byte at a time for bit(s) masking */
> >  /*
> > - * TODO: This has to be changed for DP MST, as multiple stream on
> > - * same port is possible.
> > - * For HDCP2.2 on HDMI and DP SST this value is always 1.
> > + * TODO: This is based upon actual H/W  MST streams capacity.
> > + *
> > + * This is should be moved out to platform specific header.
> >   */
> > -#define HDCP_2_2_MAX_CONTENT_STREAMS_CNT	1
> > +#define HDCP_2_2_MAX_CONTENT_STREAMS_CNT	4
> >  #define HDCP_2_2_TXCAP_MASK_LEN			2
> >  #define HDCP_2_2_RXCAPS_LEN			3
> >  #define HDCP_2_2_RX_REPEATER(x)			((x) & BIT(0))
> 
> These two hunk should probably be separate changes... would be easier to
> record the changes (as they're not mentioned in the commit message at
> all!) and the acks from other maintainers.
Thanks Jani for comment, as this need to sens DRI too, so I formatted a
separate patch to avoid other related HDCP noise. 
https://patchwork.freedesktop.org/series/82806/
Based upon ack of maintainers i will rebase my this series.
Thanks,
Anshuman Gupta.
> 
> Cc: Tomas.
> 
> 
> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
