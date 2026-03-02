Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GHhDIvztpWlLHwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:07:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 261C41DF1E2
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:07:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78CBD10E22A;
	Mon,  2 Mar 2026 20:07:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tq3yKVKC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C94BB10E371;
 Mon,  2 Mar 2026 20:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772482041; x=1804018041;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=8Az0yNA/fjhFB6S15UsH5QooiR+EmPu311JObGBJMtc=;
 b=Tq3yKVKCfnm0u6MhGzZS3hN+Z6DP3ompy/h+oTbfz/kEbUqOJ/0musVV
 qPdrVBvGVP3W2bUmEa7MCgA0ES/q8KO15tVA8B4knUVjHrrbuSr1DyvEo
 rS5kWSrNLUWTIvkvY6gdh8ysHO8CyG6PXg7T8YfdlV4KqT+AKj0Aqhxhh
 zUhjvlNGZF0oz7yg+1tcDp2M+JVF8e1VzmxqCZ1LbBP2lWfVgDX21eo/k
 aWehM1sZfjaMRgP7rti0PVV5fDsZ4tKIEbSFGXO7S66som6J89v529Zgt
 udKAI4DNyv/ovEypnvoxnShFTE5ls4gZR3+0iRAidqs7VkHXJIc0GpIFC w==;
X-CSE-ConnectionGUID: NiYCmER8QDmfLXSIW+R/dQ==
X-CSE-MsgGUID: yUU/qHzYR4maetwMz5Xdww==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="72701876"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="72701876"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:07:21 -0800
X-CSE-ConnectionGUID: BdtNeEfJQjaWvsvsFAGFyw==
X-CSE-MsgGUID: XP9UeXeET5eKsBhmORZVFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="217869106"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:07:19 -0800
Date: Mon, 2 Mar 2026 21:07:17 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/4] drm/xe/compat: remove i915_vma.h from compat
In-Reply-To: <ecd5d75981b4b21c3da3b1831faceccfe385d898.1772212579.git.jani.nikula@intel.com>
Message-ID: <9a45ab81-a5a2-1720-7cd2-f9f509f3fb75@intel.com>
References: <cover.1772212579.git.jani.nikula@intel.com>
 <ecd5d75981b4b21c3da3b1831faceccfe385d898.1772212579.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 BOUNDARY="1527428566-1728001131-1772476304=:1836696"
Content-ID: <8420c173-cd82-f6bd-b2bb-e50ade47be12@intel.com>
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
X-Rspamd-Queue-Id: 261C41DF1E2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--1527428566-1728001131-1772476304=:1836696
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <5bc6103d-8b51-b914-e965-858d5fc695e3@intel.com>

On Fri, 27 Feb 2026, Jani Nikula wrote:
> Move compat i915_vma.h to xe_display_vma.h, and remove all extra
> cruft. Drop the i915_ggtt_offset() wrapper in favour of using
> xe_ggtt_node_addr() directly.
>
> The usefulness of the I915_TILING_X and I915_TILING_Y undef/define is
> unclear, since uapi/drm/i915_drm.h is included in other paths as well.
>
> The naming of struct i915_vma is a bit unfortunate in xe, but (at least
> for now) a necessity for maintaining type safety on the opaque type.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--1527428566-1728001131-1772476304=:1836696--
