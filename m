Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCEAAAFCF27
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jul 2025 17:26:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F2B110E69C;
	Tue,  8 Jul 2025 15:26:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="blut8qn3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15EE610E137;
 Tue,  8 Jul 2025 15:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751988408; x=1783524408;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4iV+WsB43o0lQdpXMRojwBPOtp66aR79FZRerRm2PG4=;
 b=blut8qn3dje5c0T349SG/hD2trQT5GW7/1DX5Dkg+KI32g9EvOx/fYYn
 vnZLlGVU5tigB1QQg6bxoBmMrm5sJJxl2tSZlSRSfK6wUghiPv1mQd9X3
 JOrRRoFoDeuibjYdPkshF7JbfzoJ4nOOBoHhFgGHjn4O1i76a41aaa+Ix
 jnDpmdlwrjnfykJdKfNjeVjut9shHkx+l7nuVyzmsAR9OaSG/yCUWZ4Gm
 3o4DThbiq4pJnJZ2jtuqahx3qkg3aSzDKFt7ecT8NhO5Txq49jxGqntfN
 xYfKMko4jXmjENMjGytBAY9A6Hd11u4QtX3Uyck7Tt+F5Wikc66OCHmZW g==;
X-CSE-ConnectionGUID: dVkkC0tMRbKHMYxwpExCpw==
X-CSE-MsgGUID: 1Rek7V2jRzCSVzHxWLSHWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="54363341"
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="54363341"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 08:26:47 -0700
X-CSE-ConnectionGUID: 8wsB15r0TYaGNI11WRDMEw==
X-CSE-MsgGUID: JGfo1jxqSDiIGRpPLZVb5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="161170094"
Received: from johunt-mobl9.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.55])
 by orviesa005.jf.intel.com with SMTP; 08 Jul 2025 08:26:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Jul 2025 18:26:42 +0300
Date: Tue, 8 Jul 2025 18:26:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, stable@vger.kernel.org
Subject: Re: [RESEND 1/1] drm/i915/dp: Refine TPS4-based HBR3 rejection and
 add quirk to limit eDP to HBR2
Message-ID: <aG04slRjhkUoKEj0@intel.com>
References: <20250627084059.2575794-2-ankit.k.nautiyal@intel.com>
 <20250706053149.3997091-1-ankit.k.nautiyal@intel.com>
 <aG0nwwRNpH7X7BNg@intel.com>
 <094d5dba-3483-4133-99e8-9e32d42ba2f6@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <094d5dba-3483-4133-99e8-9e32d42ba2f6@intel.com>
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

On Tue, Jul 08, 2025 at 08:43:37PM +0530, Nautiyal, Ankit K wrote:
> 
> On 7/8/2025 7:44 PM, Ville Syrjälä wrote:
> > On Sun, Jul 06, 2025 at 11:01:49AM +0530, Ankit Nautiyal wrote:
> >> Refine the logic introduced in commit 584cf613c24a ("drm/i915/dp: Reject
> >> HBR3 when sink doesn't support TPS4") to allow HBR3 on eDP panels that
> >> report DPCD revision 1.4, even if TPS4 is not supported. This aligns with
> >> the DisplayPort specification, which does not mandate TPS4 support for eDP
> >> with DPCD rev 1.4.
> >>
> >> This change avoids regressions on panels that require HBR3 to operate at
> >> their native resolution but do not advertise TPS4 support.
> >>
> >> Additionally, some ICL/TGL platforms with combo PHY ports suffer from
> >> signal integrity issues at HBR3. While certain systems include a
> >> Parade PS8461 mux to mitigate this, its presence cannot be reliably
> >> detected. Furthermore, broken or missing VBT entries make it unsafe to
> >> rely on VBT for enforcing link rate limits.
> >>
> >> To address the HBR3-related issues on such platforms and eDP panels,
> >> introduce a device specific quirk to cap the eDP link rate to HBR2
> >> (540000 kHz). This will override any higher advertised rates from
> >> the sink or DPCD for specific devices.
> >>
> >> Currently, the quirk is added for Dell XPS 13 7390 2-in-1 which is
> >> reported in gitlab issue #5969 [1].
> >>
> >> [1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
> >> [2] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14517
> >>
> >> Fixes: 584cf613c24a ("drm/i915/dp: Reject HBR3 when sink doesn't support TPS4")
> >> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> >> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> Cc: <stable@vger.kernel.org> # v6.15+
> >> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
> >> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14517
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_dp.c     | 31 +++++++++++++++++++--
> >>   drivers/gpu/drm/i915/display/intel_quirks.c |  9 ++++++
> >>   drivers/gpu/drm/i915/display/intel_quirks.h |  1 +
> >>   3 files changed, 39 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >> index f48912f308df..362e376fca27 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> @@ -171,6 +171,15 @@ int intel_dp_link_symbol_clock(int rate)
> >>   	return DIV_ROUND_CLOSEST(rate * 10, intel_dp_link_symbol_size(rate));
> >>   }
> >>   
> >> +static bool intel_dp_reject_hbr3_due_to_tps4(struct intel_dp *intel_dp)
> >> +{
> >> +	/* TPS4 is not mandatory for eDP with DPCD rev 1.4 */
> >> +	if (intel_dp_is_edp(intel_dp) && intel_dp->dpcd[DP_DPCD_REV] == 0x14)
> >> +		return false;
> >> +
> >> +	return !drm_dp_tps4_supported(intel_dp->dpcd);
> >> +}
> > This feels like it's getty too messy for comfort. I think we should just
> > revert the whole thing and quirk that one icl machine.
> 
> Alright sure.
> 
> Can this be done is same patch, I mean no need for a revert and a 
> separate quirk patch, right?

Separate revert seems cleaner to me. And then one can actually
backport the quirk without having to also backport the already
reverted commit. Though I haven't checked how far the bad commit
already got backported.

-- 
Ville Syrjälä
Intel
