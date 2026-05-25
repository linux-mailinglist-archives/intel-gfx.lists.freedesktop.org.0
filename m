Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJ/QFvgYFGo4JgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 11:40:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D405C8BE6
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 11:40:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7031C10E084;
	Mon, 25 May 2026 09:40:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KO39SrHQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B0BA10E084;
 Mon, 25 May 2026 09:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779702005; x=1811238005;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Pb8ZxQLNtSWGEc+bq65SJao1sGnUBNpWPTxHc1Pbs1c=;
 b=KO39SrHQ/CJjX+WdBUsgSZAPkM7gB7dhe/EMkI2K2g9rO4v4Z3KGyreK
 hmLr+wUZ0Czuf/7jYdzHeqiiO8JVXpSFb/YyAq92S39uLgzRw8U/NcTJa
 f5xJtbuclLNtPqbuWLDzJikRj9NWZiwH8zp9Z6MhKOm4ER/cTJzyuk6+f
 Gfcrw/Oo062svXp+jQu0/MlTMtrR4dMXv6bkJBJCcs2bhwH9DZulhUxRI
 Eo7QPALG0oynXVRISSzcy3swfyOhrs92laFVUh0IMfkynQyci1bhuzHc/
 37nBepT+T7PdXytUTbe52ezt/aFPrfxkcwVj1MdSrn5b412VAuZ4lGm6l A==;
X-CSE-ConnectionGUID: 8rfbNAaNTwae6lLxpwn2Gg==
X-CSE-MsgGUID: WGiq7rKsQXmbOxJgwQmMiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11796"; a="80375622"
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="80375622"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 02:40:05 -0700
X-CSE-ConnectionGUID: 9KGJoRI7Tz6kKYzesS1/IA==
X-CSE-MsgGUID: DgFjbGTLThq4/L2V7xvC9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="245836079"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.216])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 02:40:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Chandra Konduru
 <chandra.konduru@intel.com>, dri-devel@lists.freedesktop.org, Matt Roper
 <matthew.d.roper@intel.com>
Subject: Re: [PATCH] drm/intel/display: Add support for pipe background
 color (v4)
In-Reply-To: <f1f09a62-b36e-4ddf-b42c-dad300a72aef@lankhorst.se>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260505200133.636584-2-dev@lankhorst.se>
 <a734e41d-3665-402b-a56a-43fd4f8819ff@intel.com>
 <fef9056c-460e-4a49-bed8-f2882109e886@linux.intel.com>
 <090aca95-975d-4564-8b44-30df139800b5@intel.com>
 <f1f09a62-b36e-4ddf-b42c-dad300a72aef@lankhorst.se>
Date: Mon, 25 May 2026 12:39:58 +0300
Message-ID: <a24f9d8ecff945b2cdc032ae95bdc834ee9c248a@intel.com>
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lankhorst.se:email]
X-Rspamd-Queue-Id: E5D405C8BE6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 22 May 2026, Maarten Lankhorst <dev@lankhorst.se> wrote:
> Den 2026-05-18 kl. 12:47, skrev Borah, Chaitanya Kumar:
>> I will leave the name change up to your discretion. The i915 CI needs a re-run, though.
>> 
>> With the typo and checkpatch issues fixed, LGTM.
>> 
>> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>> 
>
> Addressed and renamed the functions.
> Pushed!

Please do not change patches while applying.

It's only okay to tweak commit messages, whitespace and maybe comments,
but function renames need a new version on the list. There are no
exceptions.

Commit e2d57ceaa72d ("drm/intel/display: Add support for pipe background
color (v4)") in the tree says it's v4 and references this patch, but
they're not the same.


BR,
Jani.

-- 
Jani Nikula, Intel
