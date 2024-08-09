Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 538EF94CC09
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2024 10:21:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1A6E10E096;
	Fri,  9 Aug 2024 08:21:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PMCINWtS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B69BC10E096
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2024 08:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723191713; x=1754727713;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=sKV2vd4WJIbX/JNhahuXtyJBjUStS0fmuYJLwhKqRpA=;
 b=PMCINWtSB8Y7SnwkkAeHzXteJ+JtczLBthmnP86wJHwfN8ckcHZ/tG5n
 r6IhFW2CGhfqvDpbRQZ3dkefzcB0OE9dhUTGWwyaYMZguW2vs+tZDiI9n
 oLOW9ZCO9DXNff0VrxYYvpZAIidJnscV13+fIEFxxErjpXDbq0GS6eROj
 V/tdqpO2L2AG75bbvCMciDCEwggKxg0Fhjuv6d2A8veb+cIGRKY/hQ2Ju
 p/hJeUZ6MLaeiqkpOpPH5zSDg62e4iT/DEam3vaeWjdgpnGv4NZoyaViM
 2bRiPK45DTqCvupc29WavvQmnM9gfFdYkIw3cupD0UmmDg9do1x56ctjh A==;
X-CSE-ConnectionGUID: FqVX1FmqQNu5mHm24eNUjQ==
X-CSE-MsgGUID: vZxrVJm8QWaoxrHQxPNRzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="31982177"
X-IronPort-AV: E=Sophos;i="6.09,275,1716274800"; d="scan'208";a="31982177"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 01:21:38 -0700
X-CSE-ConnectionGUID: /UeOqn46Rr6q7N51pLzgeg==
X-CSE-MsgGUID: NDZVxNM0QI6X33TreRI/JA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,275,1716274800"; d="scan'208";a="57468470"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.226])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 01:21:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/hdcp: Use correct cp_irq_count
In-Reply-To: <20240809054424.3938842-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240809054424.3938842-1-suraj.kandpal@intel.com>
Date: Fri, 09 Aug 2024 11:21:29 +0300
Message-ID: <87seve2jjq.fsf@intel.com>
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

On Fri, 09 Aug 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> We are checking cp_irq_count from the wrong hdcp structure which
> ends up giving timed out errors. Extract it from the correct
> intel_hdcp structure.

The change in the referenced commit seems natural. Please explain *why*
it's the wrong hdcp structure.

BR,
Jani.


>
> Fixes: 8c9e4f68b861 ("drm/i915/hdcp: Use per-device debugs")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index ec357d2670f1..3425b3643143 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -39,7 +39,9 @@ static u32 transcoder_to_stream_enc_status(enum transcoder cpu_transcoder)
>  static void intel_dp_hdcp_wait_for_cp_irq(struct intel_connector *connector,
>  					  int timeout)
>  {
> -	struct intel_hdcp *hdcp = &connector->hdcp;
> +	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> +	struct intel_dp *dp = &dig_port->dp;
> +	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
>  	long ret;
>  
>  #define C (hdcp->cp_irq_count_cached != atomic_read(&hdcp->cp_irq_count))

-- 
Jani Nikula, Intel
