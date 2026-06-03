Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id F0wVNnjlH2r4rwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 10:27:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8F5635B24
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 10:27:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="QEO/KtI2";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 544C810FA1B;
	Wed,  3 Jun 2026 08:27:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05F7B10FA1A;
 Wed,  3 Jun 2026 08:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780475252; x=1812011252;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=tMlNo3koGceEqsnJYRqTljD/W1UJMZuj71kL7Fbq4/0=;
 b=QEO/KtI2NghJNZTREHUQbFuxcXxYJMaC/bWVleLc85p8Go9eRZOpy/8y
 jIyz5DRDOFqdOHNFjQLNrTGWzuiyPk/YhRITph7yNolwO9l/2aUc8hydv
 f9qEkdSHcizmhaeBuhM965jaGGJFFy+dSMwsSDfXEK3JkYZbI7egJcRRQ
 iEg0ouWSWx8ppzzCzOoMADTxfFNanJ1GBpUHWR+cIklW9p3CgyqCVl/WT
 56ACPKDlDBgKE9TvFB7i6jGpYrXMsc/viMnXi5DmViVrHzY7WYA+N2Wd3
 pUYCYwDaEYEb8FEbc+a5aopHxu2NdDuAJ3u/kUqlzOIPbIgFzPW+25RWN g==;
X-CSE-ConnectionGUID: 6udE/mpgSniwai/kKO5Bcg==
X-CSE-MsgGUID: 2oC0L1b/ROmSnifoEKOY8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="98696731"
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; d="scan'208";a="98696731"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 01:27:31 -0700
X-CSE-ConnectionGUID: +lGZn+AdTbmyHwoKIDDktQ==
X-CSE-MsgGUID: hiCbU2wyTo+S0KzbqpGWfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; d="scan'208";a="282270046"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.189])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 01:27:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, Runyu Xiao <runyu.xiao@seu.edu.cn>
Cc: rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net, airlied@gmail.com, simona@ffwll.ch,
 matthew.brost@intel.com, uma.shankar@intel.com,
 pierre-louis.bossart@linux.dev, jerome.anand@intel.com, tiwai@suse.de,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, jianhao.xu@seu.edu.cn
Subject: Re: [PATCH v3] drm/i915/display: Fix intel_lpe_audio_irq_handler
 for PREEMPT-RT
In-Reply-To: <3e012936-8493-43c8-b547-17ae40e6ef74@lankhorst.se>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260602004515.1907422-1-runyu.xiao@seu.edu.cn>
 <20260602062957.0Nbtw_yY@linutronix.de>
 <3e012936-8493-43c8-b547-17ae40e6ef74@lankhorst.se>
Date: Wed, 03 Jun 2026 11:27:23 +0300
Message-ID: <41760e1def08cbf51bf868a7ebf393e0d9e59125@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,ursulin.net,gmail.com,ffwll.ch,linux.dev,suse.de,lists.freedesktop.org,vger.kernel.org,seu.edu.cn];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[seu.edu.cn:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linutronix.de:email,intel.com:mid,intel.com:dkim,intel.com:email,lists.freedesktop.org:from_smtp,lankhorst.se:email,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8E8F5635B24

On Tue, 02 Jun 2026, Maarten Lankhorst <dev@lankhorst.se> wrote:
> Thanks, pushed!

Where are the CI results?

>
> On 6/2/26 08:29, Sebastian Andrzej Siewior wrote:
>> On 2026-06-02 08:45:15 [+0800], Runyu Xiao wrote:
>>> From: Maarten Lankhorst <dev@lankhorst.se>
>>>
>>> The LPE audio interrupt comes from the i915 interrupt handler. It
>>> should be in irq disabled context.
>>>
>>> With PREEMPT_RT enabled, the IRQ handler is threaded.
>>> Because intel_lpe_audio_irq_handler() may be called in threaded IRQ context,
>>> generic_handle_irq_safe API disables the interrupts before calling LPE's
>>> interrupt top half handler.
>>>
>>> This fixes braswell audio issues with RT enabled.
>>>
>>> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
>>> Reviewed-by: Matthew Brost <matthew.brost@intel.com>
>>> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>>> Signed-off-by: Runyu Xiao <runyu.xiao@seu.edu.cn>
>> 
>> Reviewed-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
>> 
>> Sebastian
>

-- 
Jani Nikula, Intel
