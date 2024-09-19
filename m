Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FBD697CB84
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 17:16:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFDF810E71C;
	Thu, 19 Sep 2024 15:16:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gUbometv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA57110E734;
 Thu, 19 Sep 2024 15:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726758974; x=1758294974;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=iJHtqhqEzskd3q4Au6d75nLUROGJjWwz/Uhku6EKyKQ=;
 b=gUbometvOKa+0nSgIXSA8gY8zhaSU9B3ftdXE8OKrON3MTL7v/G4PxiF
 lgkB0+LvwV+nb4HZCdnahyr6Y3Tp6ZvjRrMjnF3RnBYExdAiyFsQW9U1z
 hLBvGpsYj+Ogg00OW2IoF8TEAMeHMh+oCNKrq2gS9v3rw0bR4tgqEClJ/
 0V5s2VsYddYxzVVkBfzkSIhK/Z7dnIGSek4HZsI1TcnHzCuFB/O/F4VKb
 tScYo7rIr3HZVrSSqu4aXAxerQ8XaCcsh/O4Ozxo5+5UTdVg0JAmSAE9O
 6H4ujKh6v+rNQJ+i4LQX9qOxeclq5AllyjyXLbdyA1PqN+PEc1BnmFrgm w==;
X-CSE-ConnectionGUID: CIVIXn6KSuaQoZBsf1dk3g==
X-CSE-MsgGUID: cqCEZ1dKQlqois8Abn9GvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25873737"
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="25873737"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 08:15:24 -0700
X-CSE-ConnectionGUID: i29Wwo0gQk6tAt0LE/00tQ==
X-CSE-MsgGUID: oys6MTPOR3eh1ee4b8kt5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="70092764"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Sep 2024 08:15:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2024 18:15:21 +0300
Date: Thu, 19 Sep 2024 18:15:21 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 06/15] drm/i915/display: Add debugfs support to avoid
 joiner
Message-ID: <ZuxACdzSoTOEuY-H@intel.com>
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
 <20240918144343.2876184-7-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240918144343.2876184-7-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Sep 18, 2024 at 08:13:34PM +0530, Ankit Nautiyal wrote:
> Currently debugfs for joiner can take a value of 0->dont care and
> 2->join 2 pipes. Add option to force to use only 1 pipe.
> 
> If debugfs is set to 1, force to exactly one pipe (ie. no
> joiner despite what the automagic logic is saying).
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 ++
>  drivers/gpu/drm/i915/display/intel_dp.c              | 2 ++
>  2 files changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 5775413c6763..85742400348f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1533,6 +1533,8 @@ static ssize_t i915_joiner_write(struct file *file,
>  	switch (force_join_pipes) {
>  	case 0:
>  		fallthrough;
                ^^^^^^^^^^^
I don't think you need the fallthough keyword here
because there is nothing else being done in this case.

> +	case 1:
> +		fallthrough;
>  	case 2:
>  		connector->force_joined_pipes = force_join_pipes;
>  		break;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 96ad048b68cf..369829ea5a12 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1288,6 +1288,8 @@ int intel_dp_compute_num_pipes(struct intel_dp *intel_dp,
>  			       int hdisplay, int clock)
>  {
>  	switch (connector->force_joined_pipes) {
> +	case 1:
> +		fallthrough;
>  	case 2:
>  		return connector->force_joined_pipes;
>  	default:

This hunk would completely disappear with the previously
suggested simplification to this function.

-- 
Ville Syrjälä
Intel
