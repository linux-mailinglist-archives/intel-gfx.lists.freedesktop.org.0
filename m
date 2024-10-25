Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2189AFBF4
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 10:04:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00E8010EA1A;
	Fri, 25 Oct 2024 08:04:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mKgbMfDL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B04610EA1A;
 Fri, 25 Oct 2024 08:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729843492; x=1761379492;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RAD4L8vcnHS0iWDgbPWI+UDLv+6Lk3jihtlqC8Y/Li0=;
 b=mKgbMfDLh71mCIC/xuOYJ1bzUOpjc72XV7fB+GNoRH/KqUjQzGNEoLZ2
 n+QC+rkyui88alyNxPNqYYN4wZsajPi5g+x0e3E0h7jC775s87PCo/0ER
 KOCYlPh8JJ6DvlQfRY7G0K9bGtwMOt6Pg/XdvyqE5OreVh4ouL6IKcQb2
 +1OFXJJYlmv1Ss97xoqwBnK6sJon8Dg7CXjIUfBOV8DQ0/EC8P42ZoAK2
 Pd/sTcm2PK4qG52A7zKtKb+eFE74rmkFJBN9PugXhKww9wmlJgFGLAN0x
 vkdnQXuw4sco409Dg/mms95soicw+i9HzejWq7HP52EvifEz0qtlRRH7I w==;
X-CSE-ConnectionGUID: 7/hye2JtT6i+JrWhuOZUlQ==
X-CSE-MsgGUID: ntpphRxTTVe/RIeiSkjNAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="46989034"
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="46989034"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 01:04:52 -0700
X-CSE-ConnectionGUID: Xi+H7NgZQ1eHKxJh6oeO+w==
X-CSE-MsgGUID: dvUl/kAxS46UsycOw6kLVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="80953657"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 25 Oct 2024 01:04:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Oct 2024 11:04:48 +0300
Date: Fri, 25 Oct 2024 11:04:48 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, matthew.d.roper@intel.com
Subject: Re: [PATCH 1/5] drm/i915/display: Fix the plane max height and width
 limits
Message-ID: <ZxtRINBKqu7aEz6L@intel.com>
References: <20241025060136.9884-1-suraj.kandpal@intel.com>
 <20241025060136.9884-2-suraj.kandpal@intel.com>
 <Zxs40xP4Bo33fqe8@intel.com>
 <01ab01ee-8a41-404c-bd8f-548c4e7ee296@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <01ab01ee-8a41-404c-bd8f-548c4e7ee296@intel.com>
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

On Fri, Oct 25, 2024 at 12:54:45PM +0530, Nautiyal, Ankit K wrote:
> 
> On 10/25/2024 11:51 AM, Ville Syrjälä wrote:
> > On Fri, Oct 25, 2024 at 11:31:32AM +0530, Suraj Kandpal wrote:
> >> Fix the plane max height and width limits taking into account the
> >> joined pipe limits too.
> >>
> >> Bspec: 28692, 49199, 68858
> >> Fixes: 63dc014e37b9 ("drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.")
> >> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_display.c | 19 ++++++++++++++++---
> >>   1 file changed, 16 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> >> index ef1436146325..fc578af4f394 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> @@ -8450,9 +8450,22 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
> >>   	 * plane so let's not advertize modes that are
> >>   	 * too big for that.
> >>   	 */
> >> -	if (DISPLAY_VER(dev_priv) >= 11) {
> >> -		plane_width_max = 5120 * num_joined_pipes;
> >> -		plane_height_max = 4320;
> >> +	if (DISPLAY_VER(dev_priv) >= 20) {
> >> +		if (num_joined_pipes > 1) {
> >> +			plane_width_max = 8192;
> >> +			plane_height_max = 4800;
> >> +		} else {
> >> +			plane_width_max = 5120;
> >> +			plane_height_max = 4096;
> > The joiner operates on horizontal lines. Why would the
> > vertical resolution change here?
> >
> > And this is breaking ultrajoiner now.
> 
> Yeah this will complicate function to check whether go to ultrajoiner or 
> bigjoiner.
> 
> Perhaps need to have separate function for max_joined_plane_width() and 
> max_unjoined_plane_width();

I don't think max plane sizes have anything to with joiner. In fact
we should probably make this code just ask the "primary" plane its
max dimensions and then just multiply that with the number of joined
pipes. Any other joiner specific limits should be handled elsewhere.

-- 
Ville Syrjälä
Intel
