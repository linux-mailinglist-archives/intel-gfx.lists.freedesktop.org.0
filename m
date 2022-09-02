Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DABDA5AB3F1
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 16:45:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BAF910E869;
	Fri,  2 Sep 2022 14:45:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0D0510E869
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 14:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662129943; x=1693665943;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=L0EuC69KiYpvxFMKpgpriolAsQCSUgMSX29wGbcrbJo=;
 b=BshJlCaD43HqGiv11lbya7lsLFLM0JOXfowzXSdl2IlkXJQ80ufDRj8u
 42zmBh7oNm0JrqFNulojrJgbyooYx49vlwcnAGEFdY3FZr94Q88jW9YWE
 2mmYq6qoetWfyL2KJe4nvVyXqf4crYzksvlU4u7u/Qe+aRSmyKP0xAG+g
 UdkHkAuh6lI7OmTghsT/2ez4zd2cpFO+GhxiPA6505pXf2epj5xsYfuHV
 cT0/m3FiGyubz1mhNhy/QNwedcw50tJBUXOQ3rTwwUi+EVIy/UfcpjWtX
 hX7JebyVzQadLLAE02mPaq5heo9bTu9/Zf4KXQBx/Zf0cF+9PuT40hSBK Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10458"; a="296001237"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="296001237"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 07:45:43 -0700
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="674376280"
Received: from svandene-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.245])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 07:45:42 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220715202044.11153-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
 <20220715202044.11153-4-ville.syrjala@linux.intel.com>
Date: Fri, 02 Sep 2022 17:45:31 +0300
Message-ID: <87o7vxded0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 03/12] drm/i915: Properly define the DP
 redriver VBT bits
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

On Fri, 15 Jul 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Split the DP redriver bytes into bitfields.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index e997b8bcc6b8..a88c5ef51cd8 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -393,8 +393,14 @@ struct child_device_config {
>  		u8  device_id[10]; /* ascii string */
>  		struct {
>  			u8 i2c_speed;
> -			u8 dp_onboard_redriver;			/* 158+ */
> -			u8 dp_ondock_redriver;			/* 158+ */
> +			u8 dp_onboard_redriver_preemph:3;	/* 158+ */
> +			u8 dp_onboard_redriver_vswing:3;	/* 158+ */
> +			u8 dp_onboard_redriver_present:1;	/* 158+ */
> +			u8 reserved0:1;
> +			u8 dp_ondock_redriver_preemph:3;	/* 158+ */
> +			u8 dp_ondock_redriver_vswing:3;		/* 158+ */
> +			u8 dp_ondock_redriver_present:1;	/* 158+ */
> +			u8 reserved1:1;
>  			u8 hdmi_level_shifter_value:5;		/* 158+ */
>  			u8 hdmi_max_data_rate:3;		/* 204+ */
>  			u16 dtd_buf_ptr;			/* 161+ */
> @@ -402,11 +408,11 @@ struct child_device_config {
>  			u8 compression_enable:1;		/* 198+ */
>  			u8 compression_method_cps:1;		/* 198+ */
>  			u8 ganged_edp:1;			/* 202+ */
> -			u8 reserved0:4;
> +			u8 reserved2:4;
>  			u8 compression_structure_index:4;	/* 198+ */
> -			u8 reserved1:4;
> +			u8 reserved3:4;
>  			u8 slave_port;				/* 202+ */
> -			u8 reserved2;
> +			u8 reserved4;
>  		} __packed;
>  	} __packed;

--=20
Jani Nikula, Intel Open Source Graphics Center
