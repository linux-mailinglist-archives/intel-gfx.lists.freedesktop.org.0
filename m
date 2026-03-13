Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJOREMX4s2nUeQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 12:45:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E1A2826A8
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 12:45:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F8AD10EBB0;
	Fri, 13 Mar 2026 11:45:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DsM2nVen";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B6E910EBB0;
 Fri, 13 Mar 2026 11:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773402306; x=1804938306;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uKCMbkScd697swUO602SNHHMBtGnaUT3YudLnm2dB1M=;
 b=DsM2nVenrZ0h1bfXyKF2Xb6zpW6mL78jDU0QMP/s0OTYzyA0071xJWsl
 /FvxixHrCf8T8taiQs3iOf80gskxg5tGThKIr39R7L9Gwnf38bsk+fwXI
 kbBrTUR8DSwIo0jEAV3AoBpIO+EMr7j4qXa1EHvq5L5BgzQ4zf3K375SY
 Kiw8yKwM3KM/i03yA7TiKZEvU7DeqoPvjgp4dzoKMcQipOLkwYY7t9GLg
 W4RjVhLF4y+b3z3Kp9gpM8CZYtUlDIsy00Hxo+3tdZX3d8iJ4skz5Jp6S
 xNlTlNK03YdjEQwVbhB6ScZPHR2RG3AbUhuKEuwfEZvv1Df3zJs1SH4Sd A==;
X-CSE-ConnectionGUID: mXywe24QSuO/URhs9VJLMA==
X-CSE-MsgGUID: emYWJXRRSl2qlvAVRb76XQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="78106331"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="78106331"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 04:45:06 -0700
X-CSE-ConnectionGUID: MJARGpsISDKtGUBfIGIFVA==
X-CSE-MsgGUID: zlNYi7wlSuWxfHPOVnqshQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="220401412"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.21])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 04:45:03 -0700
Date: Fri, 13 Mar 2026 13:45:01 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 animesh.manna@intel.com
Subject: Re: [PATCH 02/19] drm/dp: Clean up DPRX feature enumeration macros
Message-ID: <abP4vUF0YH2uA3-P@intel.com>
References: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
 <20260311113611.3393194-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260311113611.3393194-3-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.36 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.67)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E9E1A2826A8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 05:05:54PM +0530, Ankit Nautiyal wrote:
> Align the DP_DPRX feature enumeration macros for better readability and
> consistency, and use the BIT() macro instead of open-coded shifts.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

If we really want to go for BIT() someone should do a full pass
over the whole file...

In the meantime
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  include/drm/display/drm_dp.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
> index 4ea3b5b08a12..49f0154eb93c 100644
> --- a/include/drm/display/drm_dp.h
> +++ b/include/drm/display/drm_dp.h
> @@ -1202,10 +1202,10 @@
>  # define DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_80_MS	0x04
>  # define DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_100_MS	0x05
>  
> -#define DP_DPRX_FEATURE_ENUMERATION_LIST_CONT_1         0x2214 /* 2.0 E11 */
> -# define DP_ADAPTIVE_SYNC_SDP_SUPPORTED    (1 << 0)
> -# define DP_AS_SDP_FIRST_HALF_LINE_OR_3840_PIXEL_CYCLE_WINDOW_NOT_SUPPORTED (1 << 1)
> -# define DP_VSC_EXT_SDP_FRAMEWORK_VERSION_1_SUPPORTED  (1 << 4)
> +#define DP_DPRX_FEATURE_ENUMERATION_LIST_CONT_1					0x2214 /* 2.0 E11 */
> +# define DP_ADAPTIVE_SYNC_SDP_SUPPORTED						BIT(0)
> +# define DP_AS_SDP_FIRST_HALF_LINE_OR_3840_PIXEL_CYCLE_WINDOW_NOT_SUPPORTED	BIT(1)
> +# define DP_VSC_EXT_SDP_FRAMEWORK_VERSION_1_SUPPORTED				BIT(4)
>  
>  #define DP_128B132B_SUPPORTED_LINK_RATES       0x2215 /* 2.0 */
>  # define DP_UHBR10                             (1 << 0)
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
