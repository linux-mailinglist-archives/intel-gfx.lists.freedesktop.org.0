Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5BC5AB408
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 16:49:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBC0810E869;
	Fri,  2 Sep 2022 14:49:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE7C510E869
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 14:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662130150; x=1693666150;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=RP2vRr0p1P28fU+C0MKQvdzSu9PNiyTFcssSa2VeYEo=;
 b=Yz0FtSSCwTsO4qtaTMmYX5Q5v/10jFgWCOmOAvyszi1Ph786iq+YA96m
 07kXnpaS7y2TLrsev5+4l9iXuAIL8rHcK03cimdlJDec5jx3+f1+/O03j
 U+1ExHXiCoSmFwNT6Mk+tU4ffXQoNctEZqTOGWIvj6s8bLwKVDvYXgZci
 e2xhXyUPKoEORevFQpbHb0A1WasVQG/7WTLBBGpZfceqc1fXPd+2/M+RQ
 7Y9KQN5UiN3OWsCDi2FlsZ3OIdNr5ih+E1L2vGpYM6S2WkT6lg4AdoCJI
 fDyqPZgkIaLjJIqpQiWQ6dkmw4auGyb226gbrMfNNrgbZELMbZXKhrlvL g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10458"; a="294734577"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="294734577"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 07:49:10 -0700
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="674377316"
Received: from svandene-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.245])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 07:49:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220715202044.11153-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
 <20220715202044.11153-7-ville.syrjala@linux.intel.com>
Date: Fri, 02 Sep 2022 17:48:57 +0300
Message-ID: <87ilm5de7a.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 06/12] drm/i915: Define VBT max HDMI FRL
 rate bits
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
> The VBT gained some bits to inidicate the max FRL rate for
> HDMI 2.1, define them.
>
> These just outright replaced the slave_port bits for ganged eDP.
> Apparently that feature was never actually used so someone decided
> that reusing the bits is fine. Although the actual ganged eDP
> enable bit was still left defined elsewhere for some reason.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index b15e29509fac..8bdb533b5304 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -412,8 +412,10 @@ struct child_device_config {
>  			u8 reserved2:3;
>  			u8 compression_structure_index:4;	/* 198+ */
>  			u8 reserved3:4;
> -			u8 slave_port;				/* 202+ */
> -			u8 reserved4;
> +			u8 hdmi_max_frl_rate:4;			/* 237+ */
> +			u8 hdmi_max_frl_rate_valid:1;		/* 237+ */
> +			u8 reserved4:3;				/* 237+ */
> +			u8 reserved5;
>  		} __packed;
>  	} __packed;

--=20
Jani Nikula, Intel Open Source Graphics Center
