Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YB98LNgAEmpPtQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2026 21:32:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABD25C0758
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2026 21:32:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD2DE10E0D7;
	Sat, 23 May 2026 19:32:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hrlkmRWJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BEE710E0D7;
 Sat, 23 May 2026 19:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779564757; x=1811100757;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=9S0jBaB3I/RsZsG/l6oU2s0ai8nCAJJ1wVPDyOws/1s=;
 b=hrlkmRWJVRwK0cmrornLjQx8JNrBB1dvVWU2JekPqOuzNkLY24pesQ4Q
 VMIAjUkUm2GUzYVpGYgaDDh8VOp4a8k45kY0olu0ezvlIMhnY7rNQRABE
 KNGME4OV5AhsA3UlgCMDUijBwMNoSM0UuYKM4XzBDheTH99AxYEA/+4Xo
 UPx4gBt5JbLKg2VVBbAuYX7c3evC462qW3trnhFcXeR5V9SXBBggE71kh
 LDzMhWTjqIXZMUdMvYdi5TiMKO3gpoPPLtRUL/bqU9LZCizUWTAN8X2Hl
 n+0TeDTA4nE4/q/YEVUB+7sOCi5vbty2KoeAoRsLVzgIjQHkbVngQKn1l w==;
X-CSE-ConnectionGUID: VPrlrW5+QJyhLiF19PnWCQ==
X-CSE-MsgGUID: JosaEF+ETkSn6aaspmnjRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11795"; a="80572633"
X-IronPort-AV: E=Sophos;i="6.24,164,1774335600"; d="scan'208";a="80572633"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2026 12:32:37 -0700
X-CSE-ConnectionGUID: zl3t1UvCQAKseIQV7cmJ8Q==
X-CSE-MsgGUID: dtg/IhuTQpmXXpffhsXhow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,164,1774335600"; d="scan'208";a="236996475"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2026 12:32:36 -0700
Date: Sat, 23 May 2026 21:32:33 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 06/10] drm/i915/bw: Fix DEPROGBWPCLIMIT handling on BMG
In-Reply-To: <20260522200346.17377-7-ville.syrjala@linux.intel.com>
Message-ID: <9f5eee34-5848-da1a-a7b2-1b352ad98fcf@intel.com>
References: <20260522200346.17377-1-ville.syrjala@linux.intel.com>
 <20260522200346.17377-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 BOUNDARY="8323329-2137229257-1779532839=:1544314"
Content-ID: <a1c051a1-2068-6b8d-f79f-6355502c8e72@intel.com>
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
X-Rspamd-Queue-Id: 3ABD25C0758
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2137229257-1779532839=:1544314
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <34c39158-55b2-84cf-4063-f5df9f9dd340@intel.com>

On Fri, 22 May 2026, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> DEPROGBWPCLIMIT is specified in %, so divide by 100 instead of 10.
>
> Fortunately the deprobbwlimit is much lower than the peak memory
> bandwidth on BMG, so whether we take 60% or 600% of the peak
> bandwidth doesn't matter as the min() will pick the lower
> deprobbwlimit anyway.
>
> Eg. on the BMG here I get (with or without the fix):
> QGV 0: deratedbw=33600 peakbw=48000
> QGV 1: deratedbw=53000 peakbw=456000
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--8323329-2137229257-1779532839=:1544314--
