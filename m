Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gVvOIm0fw2k9ogQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 00:34:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D7D31DC0E
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 00:34:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F4E510E18E;
	Tue, 24 Mar 2026 23:34:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lk4+zYu8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0EEA10E126;
 Tue, 24 Mar 2026 23:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774395241; x=1805931241;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=f4hgsGk35+bQknCwSxPviVu1b4RyrgWG9sSNebX4XdE=;
 b=lk4+zYu8/t5AJCH0Zu9Nmnplq+zVsbSO9imFdGgvEQ3D1saPuZOOnC5g
 u8FKLbO/UeuXb2BY4xWIJASHo4JUsmAoMYSW4e5mkCeNfJ+uXQrz2gCK3
 sQx8+hyGJNSSZIiqxwkQ3hUOq4XiYjjHk+HCnCaCnMCAhfdxpweR6sjJe
 ML9i5nbVJLy2XqJyDzJLmFX0OxsMjJmLROIdIHTDYgqkVjEFR+Wo8R19r
 p76KKjqJ741pB0dYbeQ050zqX1T0FZcu2BtuqD+q05s6S/2urxSff+L68
 kIiSyWUJQH8+VdJZsp1RGC1dWEJ0+1wwGNQIEn9aJ+eLJoap2GWBtFWe+ g==;
X-CSE-ConnectionGUID: ckDkEyv5SnOFcxslMITeSg==
X-CSE-MsgGUID: azsm2HzdT72ZwVJqHsWUvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="100872409"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="100872409"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 16:34:00 -0700
X-CSE-ConnectionGUID: zU+tbjl1RfanAkJ/7IIiDg==
X-CSE-MsgGUID: Ewwu37hGT9GYPmeef6kKHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="217924378"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 16:33:59 -0700
Date: Wed, 25 Mar 2026 00:33:56 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/5] drm/xe/fbdev: put intel_fbdev_fb_prefer_stolen()
 behind IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION)
In-Reply-To: <2bad40c18a14816fbb88be76a58ab4a5787efd21.1773840563.git.jani.nikula@intel.com>
Message-ID: <45f6e51e-5dfe-1c69-a799-63622e616524@intel.com>
References: <cover.1773840563.git.jani.nikula@intel.com>
 <2bad40c18a14816fbb88be76a58ab4a5787efd21.1773840563.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1602456217-1774393739=:294587"
Content-ID: <c6c4b601-3023-71d1-19a0-67a3a73abed3@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: F2D7D31DC0E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1602456217-1774393739=:294587
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <f6339fcd-17cc-6e36-254c-c2995c530523@intel.com>

On Wed, 18 Mar 2026, Jani Nikula wrote:
> Unify the behaviour with i915. Similar to commit b63c6b9b7f5e
> ("drm/i915/fbdev: fix link failure without FBDEV emulation"). The
> difference is that unlike i915, xe doesn't build
> display/intel_fbdev_fb.c conditional to CONFIG_DRM_FBDEV_EMULATION.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--8323329-1602456217-1774393739=:294587--
