Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMhPNZUIemkK2AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 14:01:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 564DFA1BD0
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 14:00:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C71EE10E6C3;
	Wed, 28 Jan 2026 13:00:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eX8oiq7t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF3AE10E6C3
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jan 2026 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769605255; x=1801141255;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=TxzVMzwdDrstHt41sC0ekSBfAF0IJ+EwkjkKL8LE264=;
 b=eX8oiq7tsB1kA/DvqtZkQaGRSUe3seorvNJnt4yKi52Iq5QJkLhVTy63
 IT4gVX+5mw4WICHpxgddqrqag4jfabU4x/ljPijqhPy9HNdwfhrHD/F2j
 5rPSSgsTZntN79R0gf7fT95lNUVkyM6fA3SbHWgpwerBz2BhrRSlNc8tE
 GZuZkbNM2/zLtyYUrtOosQjDQrNJcsOz8jKsyXW5w3Y7ldvZQOpO4BTwI
 jw1yHOMoZSprhvqG/mkJlPScsydOA+EUDgyn69Ew7k4GX497cco9PTa8V
 D+oyv8ENnijBOmYR0Js66IZwxyZFrwlRWE376PCao9hg/eiBGlGqNJrRm w==;
X-CSE-ConnectionGUID: G6u2xjZURHSOgeTdCq/QHw==
X-CSE-MsgGUID: Av3kgE4rSIyi2flu61e2yA==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="88388943"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="88388943"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 05:00:54 -0800
X-CSE-ConnectionGUID: 62gUxkF5RCmv6N350tETKQ==
X-CSE-MsgGUID: Yoamv2Z8SiOyt8OJ3hTXIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="212359876"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.207])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 05:00:52 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kumar, Kaushlendra" <kaushlendra.kumar@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "joonas.lahtinen@linux.intel.com"
 <joonas.lahtinen@linux.intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915: Prevent  heap overflow in i915_l3_write()
In-Reply-To: <LV3PR11MB8768CDDC426609842C4AB789F591A@LV3PR11MB8768.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260128051142.3006076-1-kaushlendra.kumar@intel.com>
 <b0435f60602510e61ba04385e378f2caba9ac366@intel.com>
 <LV3PR11MB8768CDDC426609842C4AB789F591A@LV3PR11MB8768.namprd11.prod.outlook.com>
Date: Wed, 28 Jan 2026 15:00:49 +0200
Message-ID: <6aae6c8a4299b17a68cf5efd5faef21911daa688@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:query timed out];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:kaushlendra.kumar@intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[intel.com:+];
	RSPAMD_EMAILBL_FAIL(0.00)[kaushlendra.kumar.intel.com:query timed out,jani.nikula.intel.com:query timed out];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 564DFA1BD0
X-Rspamd-Action: no action

On Wed, 28 Jan 2026, "Kumar, Kaushlendra" <kaushlendra.kumar@intel.com> wrote:
> On Wed, 28 Jan 2026, Jani Nikula <jani.nikula@intel.com> wrote:
>> On Wed, 28 Jan 2026, Kaushlendra Kumar <kaushlendra.kumar@intel.com> wrote:
>>> +	count = min_t(size_t, GEN7_L3LOG_SIZE - offset, count);
>>
>> This may make count not be a multiple of sizeof(u32) again. Note how 
>> offset is treated below.
>
> Thank you for catching this!
>
> You're absolutely right about the alignment concern. While technically 
> in this specific case (GEN7_L3LOG_SIZE = 0x80, and offset is already 
> validated to be u32-aligned by l3_access_valid()), the subtraction 
> (GEN7_L3LOG_SIZE - offset) would always yield a u32-aligned result.
>
> Anything I am missing here?

No, I missed that l3_access_valid() ensures offset is already aligned.

The whole thing is a bit too convoluted for my liking, but the whole
thing matches i915_l3_read() with this patch, and there's no value in
iterating this further.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


-- 
Jani Nikula, Intel
