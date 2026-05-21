Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sG1RLCMOD2p7EgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 15:52:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 549395A663C
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 15:52:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B405610F336;
	Thu, 21 May 2026 13:52:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X0GmlqgS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D58CB10F336
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2026 13:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779371552; x=1810907552;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=86rU6eYZfjWdbcPci2qeYmQxEcdqD8oityTcHGKXADY=;
 b=X0GmlqgSxNAOtfeaiIjZYJkovEDt+YSw1oXlJqsV5+Ni0hB4IP5CIKiX
 roeoTMwpDa9lDuh0luyqn6P6iiM1B8nfzXfyAz/PHKQE9+HBFTTojQUjn
 H0zOdbi/toPQHty1Q67EIq45OzyQ7eZVFofSdDwzCWnWTnsxeF+OPNqg6
 DkMNqfW+FCDnM2Wl266ggIzcFZYTJCDd3e6jjnUxhB8DVjifEiLyj5E9D
 3c0hXqYo/e1Br0/KHwuF7nwhomB55PWZ5GZO2nj1zcADoaFM6OdXElXoM
 EK+qM/WLKPsUjhCacwZmC2tIo9xXm4erlTOQU8c4zqJZS6kKMlCVCZ2Wv w==;
X-CSE-ConnectionGUID: tZqnryKHTtG7dC4PWcyOhA==
X-CSE-MsgGUID: dCTaU69LQ7urLj1T+V192w==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="97715021"
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="97715021"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 06:52:32 -0700
X-CSE-ConnectionGUID: MxGIEvjWSoSNc+HXxLJ1xg==
X-CSE-MsgGUID: /aehDuqMTeeuQYSHvylm4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="264052381"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 06:52:30 -0700
Date: Thu, 21 May 2026 15:52:28 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915: replace mock drm_driver .release with drmm
 action
In-Reply-To: <20260521102009.2863402-2-jani.nikula@intel.com>
Message-ID: <21226378-29a2-aa86-1b7d-9142510ab210@intel.com>
References: <20260521102009.2863402-1-jani.nikula@intel.com>
 <20260521102009.2863402-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-564486943-1779371362=:1769089"
Content-ID: <d8a65658-5b17-f38d-69d0-11c65fa55d93@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 549395A663C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-564486943-1779371362=:1769089
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <58f37d54-f474-ae8b-8e2f-9397292eb201@intel.com>

On Thu, 21 May 2026, Jani Nikula wrote:
> Replace the struct drm_driver .release hook and manual i915->do_release
> handling with a proper drmm action in the selftest mock driver. Start
> off with using the old release hook as the action, although going
> forward this should be made more fine grained.
>
> Remove the now unused .do_release member from struct drm_i915_private.
>
> There are no intentional functional changes here.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--8323329-564486943-1779371362=:1769089--
