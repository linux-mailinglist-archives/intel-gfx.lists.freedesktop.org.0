Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LOdJK8euWmbrQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 10:28:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F314E2A6AF2
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 10:28:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56FE710E414;
	Tue, 17 Mar 2026 09:28:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gHPB0vjl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B59C310E3F4
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2026 09:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773739691; x=1805275691;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=rgqVhNpghrS0cK4OewU1Z3j2USe6GKVyE2kMVHfcHIM=;
 b=gHPB0vjlTgV3zA5MBxWrtqRfImeKjG0loC7euKWOS35geKsA5jUSBD7h
 dFa7dAB/3FQXIrkbh7ExTrQLKVXSt6AJdFYLKmHpN8zl5OyVdBsuHcpeQ
 Ggx0YhBqvl6OHZkXk/uEmUTIocj2jdG6M+nPnXinths/x8ZuT6Tgjwelv
 uyiAALPjOxDcCYBGJCaXC8PuqlwEQzTlJUgFHu3AM/ZOvkcYrtz71kZpO
 CKMiTEmKz4fF7RGnC5Mf1l7qF9kfT/qcgEuzRbKL7UoiWk2HPHNcRnu2p
 GwVksqaNRY7pHA2y1kMxIYfS1n/zL8r+RqMsX0iXq+pn/2AkpI1qESjoH g==;
X-CSE-ConnectionGUID: HHHFcyePQzO6sjqb01SpiQ==
X-CSE-MsgGUID: YtFcCyWrQVe2GOOPfqqP+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="92150469"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="92150469"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 02:28:11 -0700
X-CSE-ConnectionGUID: r5CZYZb3SQOHJPmj74q3Gg==
X-CSE-MsgGUID: VSiISeHvT8S51x4V/UUCKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="221440482"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.32])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 02:28:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com
Subject: Re: [PATCH] drm/i915/gvt: Swap read and write checks
In-Reply-To: <20260204161945.8127-2-jonathan.cavitt@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260204161945.8127-2-jonathan.cavitt@intel.com>
Date: Tue, 17 Mar 2026 11:28:04 +0200
Message-ID: <705230c4372a7feb62d4a2f8038e07224a5599ab@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jonathan.cavitt@intel.com,m:saurabhg.gupta@intel.com,m:alex.zuo@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: F314E2A6AF2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 04 Feb 2026, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
> The function intel_gvt_i2c_handle_aux_ch_write currently does not
> support the DP_AUX_I2C_WRITE operation.  Notably, we check if
> op & 0x1 == DP_AUX_I2C_WRITE (one), and if it does not, assert that
> op & 0x1 == DP_AUX_I2C_READ (zero).  This is unnecessary because if
> op & 0x1 != 1, then op & 0x1 == 0.  But beyond that, it probably makes
> more sense to check for the condition that is implemented, rather than
> check for the condition that is not.
>
> Swap the conditions.  We can also get rid of the unnecessary drm_WARN_ON
> while we're here.
>
> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Thanks for the patch, pushed to drm-intel-next.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/gvt/edid.c | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gvt/edid.c b/drivers/gpu/drm/i915/gvt/edid.c
> index 021afff1cd5d..ca5b54466a65 100644
> --- a/drivers/gpu/drm/i915/gvt/edid.c
> +++ b/drivers/gpu/drm/i915/gvt/edid.c
> @@ -535,16 +535,7 @@ void intel_gvt_i2c_handle_aux_ch_write(struct intel_vgpu *vgpu,
>  					i2c_edid->edid_available = true;
>  			}
>  		}
> -	} else if ((op & 0x1) == DP_AUX_I2C_WRITE) {
> -		/* TODO
> -		 * We only support EDID reading from I2C_over_AUX. And
> -		 * we do not expect the index mode to be used. Right now
> -		 * the WRITE operation is ignored. It is good enough to
> -		 * support the gfx driver to do EDID access.
> -		 */
> -	} else {
> -		if (drm_WARN_ON(&i915->drm, (op & 0x1) != DP_AUX_I2C_READ))
> -			return;
> +	} else if ((op & 0x1) == DP_AUX_I2C_READ) {
>  		if (drm_WARN_ON(&i915->drm, msg_length != 4))
>  			return;
>  		if (i2c_edid->edid_available && i2c_edid->target_selected) {
> @@ -553,6 +544,13 @@ void intel_gvt_i2c_handle_aux_ch_write(struct intel_vgpu *vgpu,
>  			aux_data_for_write = (val << 16);
>  		} else
>  			aux_data_for_write = (0xff << 16);
> +	} else {
> +		/* TODO
> +		 * We only support EDID reading from I2C_over_AUX. And
> +		 * we do not expect the index mode to be used. Right now
> +		 * the WRITE operation is ignored. It is good enough to
> +		 * support the gfx driver to do EDID access.
> +		 */
>  	}
>  	/* write the return value in AUX_CH_DATA reg which includes:
>  	 * ACK of I2C_WRITE

-- 
Jani Nikula, Intel
