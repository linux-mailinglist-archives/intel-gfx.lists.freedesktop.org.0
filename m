Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YOo5NVDSw2lXuQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:17:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D57E324B18
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:17:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1669F10E8B7;
	Wed, 25 Mar 2026 12:17:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bORi4tMm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FA7910E8B1;
 Wed, 25 Mar 2026 12:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774441036; x=1805977036;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RJ5Tq9nlvYWaalSHPNF/w6K5/aUcAvpmWd95TjRCuJY=;
 b=bORi4tMmDG9xqMw3vCmveGg2sIRQq1E/FNvPk3ZWl4TV1F/NfVoirREa
 S25ZzguupgBDadfjDA3O5cudb6JRDnlWXcU52fK2pxsvBUZtGAqUM+9/O
 tCUQWhtqa1BSEGV57srUTUOHQAQqXZovn0LOd0Ywt1R81a1/oiEP2ZUiM
 f19LOCQ/f1zJf3n46W8aneM7aAP7d3yxB2mGyRBRFVS7rUUb9s9CDIFJn
 V6F6kxKX4945IthCW1YgH8x6D4FvKgZi9z7ykQNHEVupuGOH2CKWLyzvk
 qdj76cHn34b6F446tYxPWRzpPqaQlGXP9+683gpMVSOIJBFzDhDH08N2v w==;
X-CSE-ConnectionGUID: DyPla/ZwTV+pDLWZRSk0dA==
X-CSE-MsgGUID: ph7jHaTwTLq2dMllMfMr7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="86553282"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="86553282"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:17:16 -0700
X-CSE-ConnectionGUID: iwhSTZSRSP6voVz+hyxV8A==
X-CSE-MsgGUID: 3LuLgiTTQD+3oWpuqtSw4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="223870780"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:17:15 -0700
Date: Wed, 25 Mar 2026 14:17:11 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com
Subject: Re: [PATCH v3 10/26] drm/i915/writeback: Add private structure for
 writeback job
Message-ID: <acPSR7DLxbZ9_5Vw@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-11-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260325110744.1096786-11-suraj.kandpal@intel.com>
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
X-Spamd-Result: default: False [0.28 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.59)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 8D57E324B18
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 04:37:28PM +0530, Suraj Kandpal wrote:
> Create intel_writeback_job to track drm_writback_job and other structure
> we might need to complete the writeback job.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_writeback.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> index 1df04538d48c..02c61dfcacba 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -24,10 +24,17 @@
>  struct intel_writeback_connector {
>  	struct intel_connector connector;
>  	struct intel_encoder encoder;
> +	struct intel_writeback_job *job;
>  	enum transcoder trans;
>  	int frame_num;
>  };
>  
> +struct intel_writeback_job {
> +	struct drm_framebuffer *fb;
> +	struct drm_writeback_connector *wb_connector;
> +	struct i915_vma *vma;
> +};
>

Please squash with whatever patch that actually uses this stuff.

>  static const u32 writeback_formats[] = {
>  	DRM_FORMAT_XYUV8888,
>  	DRM_FORMAT_YUYV,
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
