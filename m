Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Un1TKwPyOGqvkQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 10:27:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F40906ADB41
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 10:27:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=nUMs0o12;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8515410E538;
	Mon, 22 Jun 2026 08:27:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF82310E538
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2026 08:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782116864; x=1813652864;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=oqOCe2vm5szuS8bk5kjYPZGSTFWtLBUZhVo5Haw/Ge8=;
 b=nUMs0o12lkZFt8EmLwLLMpoEAVZLUkQbTOvK3KvwLyc7Yqe4GulEQSau
 EMYmJm/MD3z4p6rEIa0/+6nP4Xy/Xwpx5k0aXVaFmJSj5z/CboIrw/Rzo
 CoTZmjbhyWTiEUx/15+hrcEC34f2uYtfEHVFYki0fkjC9i3woDeeg2jen
 Mwn6/YkN9b5RduGFVH2woW9n82cfYoAMHVSSOJeDychgw7BFFR5Idgbm/
 38e+6H4ODb+Mn/PTVWFgUN/+zIAfqdLMYhuGIkfk5PTaLd8ESl/3eSbYz
 jKqfZvjTgWBYVzq/rtrN//61RzU2ExjecMapSU5G50Uantb6655zPoHZv A==;
X-CSE-ConnectionGUID: Hp1otbJZQyuAd5OUwulLIA==
X-CSE-MsgGUID: Rq4VkYaxRNKtjCxhj/gKEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11824"; a="100393297"
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="100393297"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 01:27:43 -0700
X-CSE-ConnectionGUID: XpdEr1xOR2O3Ccj30TE8gA==
X-CSE-MsgGUID: dQdYHR7MSk+qQ4tR4gEgaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="251083835"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.82])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 01:27:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jakub Bystron <jb@elitecode.cz>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Cc: imre.deak@intel.com
Subject: Re: [REGRESSION] drm/i915: ThinkPad P1 Gen 7 fails to resume
 internal eDP panel after longer lid suspend
In-Reply-To: <eo3pb-09aTKunS-YR2uQS9u4BEDIihwSaGGMzdt-0qC1NvuQN_zVTMoL-r15j-w8vdlZJB4uHDdVXL0dJlJz8dwgt-A0cVe3KD3F8wnMuxg=@elitecode.cz>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <eo3pb-09aTKunS-YR2uQS9u4BEDIihwSaGGMzdt-0qC1NvuQN_zVTMoL-r15j-w8vdlZJB4uHDdVXL0dJlJz8dwgt-A0cVe3KD3F8wnMuxg=@elitecode.cz>
Date: Mon, 22 Jun 2026 11:27:36 +0300
Message-ID: <19904ab8a890da1e7e1bfc3ff813aacad1cddd05@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jb@elitecode.cz,m:imre.deak@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:mid,elitecode.cz:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F40906ADB41

On Thu, 18 Jun 2026, Jakub Bystron <jb@elitecode.cz> wrote:
> I am seeing a suspend/resume regression with i915 on a Lenovo ThinkPad
> P1 Gen 7 for anything 7.0+. 6.18 LTS is fine.

Please try [1] or current drm-tip. If the problem persists, please file
a new bug report as described at [2].

Thanks,
Jani.

[1] https://lore.kernel.org/r/20260612172617.3427027-1-imre.deak@intel.com
[2] https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html


-- 
Jani Nikula, Intel
