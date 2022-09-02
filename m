Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2AD5AB3FC
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 16:47:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAACC10E869;
	Fri,  2 Sep 2022 14:47:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB80310E869
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 14:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662130058; x=1693666058;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=c3tqCwA1LMWk626PkZ0V+7dPi2h4RMUSIU2RTLCT9Uc=;
 b=fxMOAm607FrJENjxUrISuZbGcl2FKZyxuRw7V02s5zZe6hXIuEYEf1Ov
 Jg8yIhoxSYF32q/5NqdpNfzRMCC1GKfX2G2TD5PiZId4HZmS2Y5ebJCU1
 0yk7zNbza+cPx9Q/SUoEMxpimUEieoa97m3AO6NR2ad2ZnYkxOuyrwEWw
 6k4Wt1M6GRoqnQ6unH8F9THobdCKqyggSx3eibhGzSINsR1DpwfesPVCb
 3+vnO2WzRfMjWuMI1D8JdN1cH5kRjp63EwghC7DTlKoplIXXJ61wqOB7o
 3k8g9NPYgx9p2J97M8ulw9F4l1KV2xIBAm+UlSvaxADdmuv9yGRP/MRCg w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10458"; a="276395983"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="276395983"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 07:47:38 -0700
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="674376892"
Received: from svandene-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.245])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 07:47:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220715202044.11153-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
 <20220715202044.11153-6-ville.syrjala@linux.intel.com>
Date: Fri, 02 Sep 2022 17:47:26 +0300
Message-ID: <87ler1de9t.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 05/12] drm/i915: Add the VBT LTTPR
 transparent vs. non-transparent bits
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
> VBT gained a bit to indicate whether LTTPRs should use transparent
> or non-transparent mode. Dunno if we should actually look at this...
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index d583bb085913..b15e29509fac 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -408,7 +408,8 @@ struct child_device_config {
>  			u8 compression_enable:1;		/* 198+ */
>  			u8 compression_method_cps:1;		/* 198+ */
>  			u8 ganged_edp:1;			/* 202+ */
> -			u8 reserved2:4;
> +			u8 lttpr_non_transparent:1;		/* 235+ */
> +			u8 reserved2:3;
>  			u8 compression_structure_index:4;	/* 198+ */
>  			u8 reserved3:4;
>  			u8 slave_port;				/* 202+ */

--=20
Jani Nikula, Intel Open Source Graphics Center
