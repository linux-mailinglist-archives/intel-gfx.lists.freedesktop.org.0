Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BCE193F8E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 14:16:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15E56898A4;
	Thu, 26 Mar 2020 13:16:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA380898A4
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 13:16:23 +0000 (UTC)
IronPort-SDR: eiIJ1TjU3GW75ph8S2lAtrI2HJwH38V+8RWywOayAtYGRLjnra53nCzJQo0mI+7ATZgQ+rriqu
 2xUBNypDECCA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 06:16:23 -0700
IronPort-SDR: Klu7lS08ojMMqgMWZXY5FzwvbkPMwDjaeh4JLIt17976BVHHSB/ftukENiQ3YF3UCj4x4NUx0Z
 YF+ClxGRQ+eA==
X-IronPort-AV: E=Sophos;i="5.72,308,1580803200"; d="scan'208";a="393976097"
Received: from mschuste-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.32.130])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 06:16:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200325140754.12636-1-chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200325140754.12636-1-chris@chris-wilson.co.uk>
Date: Thu, 26 Mar 2020 15:16:18 +0200
Message-ID: <87tv2bgst9.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Return early after
 MISSING_CSAE for write_dp_sdp
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 25 Mar 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Avoid using the uninitialised len along the impossible error path to
> shut the compiler up:
>
> drivers/gpu/drm/i915/display/intel_dp.c:4928 intel_write_dp_sdp() error: uninitialized symbol 'len'.

Why am I not seeing this? GCC 8.3.0

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Tpyo in the subject.

>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7f1a4e55cda1..c33a39065704 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4922,7 +4922,7 @@ static void intel_write_dp_sdp(struct intel_encoder *encoder,
>  		break;
>  	default:
>  		MISSING_CASE(type);
> -		break;
> +		return;
>  	}
>  
>  	if (drm_WARN_ON(&dev_priv->drm, len < 0))

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
