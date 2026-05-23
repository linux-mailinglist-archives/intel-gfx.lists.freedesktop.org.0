Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8ClgDagAEmpPtQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2026 21:31:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4255C0750
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2026 21:31:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52C6A10E1CD;
	Sat, 23 May 2026 19:31:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T4vj4LS8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 228E310E0D7;
 Sat, 23 May 2026 19:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779564709; x=1811100709;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=oSbKpjwQzwiSmo7iFEbAhNY2J2Qo7+LYdeNRnak0+zk=;
 b=T4vj4LS833liBNGzvoGojv/QPz0e3952aO4IbOtffIG8x1RYIQNlz+ud
 9na3ethcpOijJJHgjM/HLbionN8HYOp2UZPa1WMZWkJJhNwRLlNP3MPe7
 wpBYcSMgD4y9R1fd0O0oiV6ioM6GiEweJxQtliHRa2TvRQGBfE6t7HCSl
 tlvi7y4X18Jy4rxzJH/9QXlQqymgSmFyStbuyIxc2BciGIS3bjhTGM+tC
 B01+mcEmsZswTdJQ/QLAjSUz75U59eZHDSkDLba9PAA+wVnJ8IQPOpc8o
 8iveN/I+WkPBmsW189+oMFPup6pRJHLyt/msrf9TPbpCTql5MVPC+x2I9 A==;
X-CSE-ConnectionGUID: QFkxT2K9RHO/W5/AA9PB5A==
X-CSE-MsgGUID: dtnyvclfSjiEvU7xHJkAJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11795"; a="105915702"
X-IronPort-AV: E=Sophos;i="6.24,164,1774335600"; d="scan'208";a="105915702"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2026 12:31:49 -0700
X-CSE-ConnectionGUID: 9QidCPGPTBCDuP+1NPgNog==
X-CSE-MsgGUID: Ms0csgRmTB2hnDNYgnRSUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,164,1774335600"; d="scan'208";a="241418587"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2026 12:31:46 -0700
Date: Sat, 23 May 2026 21:31:45 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 05/10] drm/i915/bw: Fix rounding direction in clperchgroup
 calculation
In-Reply-To: <20260522200346.17377-6-ville.syrjala@linux.intel.com>
Message-ID: <4c5fc890-fcd4-be40-26cf-95fa5aa6c15f@intel.com>
References: <20260522200346.17377-1-ville.syrjala@linux.intel.com>
 <20260522200346.17377-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-995698574-1779532764=:1544314"
Content-ID: <0108e86d-b3ab-115c-8354-65185d005f16@intel.com>
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: CA4255C0750
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-995698574-1779532764=:1544314
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <ca6d8f33-d55d-b1c9-3921-08341f249220@intel.com>

On Fri, 22 May 2026, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> The '8/num_channels' in the clperchgroup is supposed to be rounded
> down according to the spec. Make it so.
>
> Not sure we can ever actually have a non-power of two number of
> channels, so this might not matter.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--8323329-995698574-1779532764=:1544314--
