Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qDp6DK0CvGmurAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 15:05:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 181AD2CC5ED
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 15:05:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13D0F10E8CE;
	Thu, 19 Mar 2026 14:05:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PHELYvB0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F7A010E8D6;
 Thu, 19 Mar 2026 14:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773929118; x=1805465118;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GOEhFqGrIBJPNGU3QyMtA6w8LtTMmM9XKADXTZEt+LM=;
 b=PHELYvB09ERziJb3DE+jwiLtrRZmEQqKZiCvgw9bAL1m6X3iZJjxpGGu
 ecvh1oLvqN7eRXNGBLsD3QrrNIeL2dDoqJJODCqsJo/ea4X2aN7zucIXe
 jFhlthf/R0eSiph9xSQgCO3V6QJmVV8SAftReGenYrCMmdw8d8XvTkuN6
 d79LDQyArqNJnjlxGxX8H2FTIMqMKTS7jJj3l3pP7LeDKoC9qdE7YjNAO
 ARy/UWYZfwq48mtDKE6r8fapLHCcSd8EZh+DIGZiAR1/V/I+l51JTVBaB
 uTAMoa7hK3xv1oa6H3GHIL2SahJZUL+70KqjBQAWfqJcTeBO5R6dXZ3UK Q==;
X-CSE-ConnectionGUID: y+PwO5KqSyW58E47v5PSEQ==
X-CSE-MsgGUID: rA1/QqrpS0y8He5gcQiZaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="74175576"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="74175576"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 07:05:18 -0700
X-CSE-ConnectionGUID: p2/gxKFGT1Gl5cRxomt5Zw==
X-CSE-MsgGUID: scO7mQZiSmKu5eQ8kKGGrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="222953066"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.169])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 07:05:15 -0700
Date: Thu, 19 Mar 2026 16:03:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 8/9] drm/i915/wm: Include ddb_y in skl_print_wm_changes()
 on pre-icl
Message-ID: <abwCSM3RhBrv_rKF@intel.com>
References: <20260319114034.7093-1-ville.syrjala@linux.intel.com>
 <20260319114034.7093-9-ville.syrjala@linux.intel.com>
 <b7e66b0a5203d6d96f8415f3effc5c5ba7544c2e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b7e66b0a5203d6d96f8415f3effc5c5ba7544c2e@intel.com>
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
X-Spamd-Result: default: False [-0.72 / 15.00];
	R_MIXED_CHARSET(0.59)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 181AD2CC5ED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 19, 2026 at 03:44:29PM +0200, Jani Nikula wrote:
> On Thu, 19 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Pre-icl doesn't use a separate hardware plane for Y scanout,
> > and instead it's all handled magially by the hardware. We
> 
> *magically
> 
> > do still need to allocate DDB space for the Y color plane
> > though (PLANE_NV12_BUF_CFG). Include that information in the
> > debugs so that we know where it ended up.
> >
> > On icl+ the equivalent information is dumped as the hardware
> > Y plane's normal ddb allocation.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 11 +++++++++--
> >  1 file changed, 9 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index 8687026935e9..345767349988 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -2735,10 +2735,17 @@ skl_print_wm_changes(struct intel_atomic_state *state)
> >  			old = &old_crtc_state->wm.skl.plane_ddb[plane_id];
> >  			new = &new_crtc_state->wm.skl.plane_ddb[plane_id];
> >  
> > -			if (skl_ddb_entry_equal(old, new))
> > +			if (!skl_ddb_entry_equal(old, new))
> > +				skl_print_plane_ddb_changes(plane, old, new, "  ddb");
> 
> Superfluous whitespace in "  ddb"?

It's there to align the columns in the "ddb" and "ddb_y" prints.
Perhaps I should use the printk field width for that instead...

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> > +
> > +			if (DISPLAY_VER(display) >= 11)
> >  				continue;
> >  
> > -			skl_print_plane_ddb_changes(plane, old, new, "ddb");
> > +			old = &old_crtc_state->wm.skl.plane_ddb_y[plane_id];
> > +			new = &new_crtc_state->wm.skl.plane_ddb_y[plane_id];
> > +
> > +			if (!skl_ddb_entry_equal(old, new))
> > +				skl_print_plane_ddb_changes(plane, old, new, "ddb_y");
> >  		}
> >  
> >  		for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
