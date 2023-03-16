Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 916826BCBF1
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 11:05:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A0D410EC1E;
	Thu, 16 Mar 2023 10:05:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F28410EC1E
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 10:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678961119; x=1710497119;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UfyHUWa60cHArfGcaFMmOLALLYI77NtSGJHaiXNo0yU=;
 b=miM2KuiXh4uToR3n2FIZfW9jJ4XuCjUb3RdKik4zV1u6F50PnfUndPqI
 QkVUUTNxX1pFvG2jNErxPi//0qzOHIUiLhn9FIOk0NXkKQu2lBBjyzA/Q
 +G1oOzWjwvakbj3Xi7+K6OPphTqUOZXUyIVD+HMAEr8vafyAFzYXedu+l
 ZczupvsmZDDyZrn9hXuPydTfljZKOi2tgU6ZJg4Nhcl0P2hF6zChIlV0i
 kzYx9ZKvAaEskphd4ONxZXlcatkgn7qZYSRKuqBfjLTE5t+LbL37k7GxT
 bUFgc9N4+f8iFIESxKO/RO9oqtHFLAUnvvGTWoToe3ECUFLCaiPiIytW7 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="400515203"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="400515203"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 03:05:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="853957618"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="853957618"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga005.jf.intel.com with SMTP; 16 Mar 2023 03:05:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Mar 2023 12:05:14 +0200
Date: Thu, 16 Mar 2023 12:05:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Message-ID: <ZBLp2jMspLQ9i3ef@intel.com>
References: <20230316082232.666630-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230316082232.666630-1-suraj.kandpal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdcp: Remove drm_modeset_lock in
 intel_conn_to_vcpi
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 16, 2023 at 01:52:32PM +0530, Suraj Kandpal wrote:
> Remove drm_modeset_lock in intel_conn_to_vcpi as we don't need it
> anymore since all the required locks are taken in atomic check and
> prepare phases.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 2984d2810e42..f957b4bd9c26 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -41,7 +41,6 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
>  		return 0;
>  	mgr = connector->port->mgr;
>  
> -	drm_modeset_lock(&mgr->base.lock, NULL);
>  	mst_state = to_drm_dp_mst_topology_state(mgr->base.state);
>  	payload = drm_atomic_get_mst_payload_state(mst_state, connector->port);
>  	if (drm_WARN_ON(mgr->dev, !payload))
> @@ -53,7 +52,6 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
>  		goto out;
>  	}
>  out:
> -	drm_modeset_unlock(&mgr->base.lock);
>  	return vcpi;
>  }

That whole function looks like it something that should be
part of the drm_dp_mst_helper.c.

Also, it's directly accessing mgr->base.state which is just
wrong.

And it looks like it can get called from outside the normal
atomic commit flows (like so many other things in the hdcp
code, sigh), so what you're doing here is also wrong in
that case.

So the whole thing looks just very broken to me. Not to
mention the HDCP vs. MST<->SST switch is also still
fundementally broken. I'm really tempted to just send
a patch to nuke the entire HDCP MST code.

-- 
Ville Syrjälä
Intel
