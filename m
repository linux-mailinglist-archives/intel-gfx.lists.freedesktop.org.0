Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EKZTAOyuGWpyyQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 17:21:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E5A6048C1
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 17:21:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B199F1120E7;
	Fri, 29 May 2026 15:21:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VbuwFi0B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6FC01120D8;
 Fri, 29 May 2026 15:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780068073; x=1811604073;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=TsGLVLs0UqIEpbs9UbAyHSjsjYjTd/56i80LcKQ+jVQ=;
 b=VbuwFi0BQyiDmfuNBuD0oadDbEuWs5y0yJiojnEW/5J3okzqcqkdlukn
 wpTBgrTYMK3qGVL4vTIG0eDqRRKu1aJMVmh52HA+QEO4jc4kt4By20vRe
 5XuhhhixaAwodDEWgnk5vP6zfd0m3OlZu4ovKJ/mKQOAfXYKyZhkPRohc
 iPQlIfQXYC966eobXM/+ao5SnFsvZ7o4RvGFB5dDxewO/FHrL+L/bei7/
 s+TFROm84G4BkDSBhmDKqt0lSjH6fbt9sv1mDZo9NIQjv+9RMIEslHGD2
 3cBMBP36FORFgCBa4UKY8jmN7/cW39kQR8SyOPhipL5MAwQNwoH/qSSoR w==;
X-CSE-ConnectionGUID: qn7tsmkTQHqWiywuutRrZg==
X-CSE-MsgGUID: sM4Fx+PsTpCb1MYf9REItA==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="81035966"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="81035966"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 08:21:12 -0700
X-CSE-ConnectionGUID: yjLCndB0TiOPSLVQhPEd8w==
X-CSE-MsgGUID: BWtIDHJxRiuXjGi7XkpREQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="273188008"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.147])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 08:21:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Runyu Xiao <runyu.xiao@seu.edu.cn>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>
Cc: Runyu Xiao <runyu.xiao@seu.edu.cn>, Maarten Lankhorst
 <dev@lankhorst.se>, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net, airlied@gmail.com,
 simona@ffwll.ch, clrkwllms@kernel.org, rostedt@goodmis.org,
 jerome.anand@intel.com, pierre-louis.bossart@linux.dev, tiwai@suse.de,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rt-devel@lists.linux.dev, jianhao.xu@seu.edu.cn
Subject: Re: [PATCH] drm/i915/audio: use generic_handle_irq_safe() for LPE
 audio irq
In-Reply-To: <20260529142556.3833775-1-runyu.xiao@seu.edu.cn>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260528154551.3708290-1-runyu.xiao@seu.edu.cn>
 <20260529074816.k1K16jyy@linutronix.de>
 <2023cf0e-85a8-4128-857d-cae806ff0e58@lankhorst.se>
 <20260529122137.VZtFvQvw@linutronix.de>
 <20260529142556.3833775-1-runyu.xiao@seu.edu.cn>
Date: Fri, 29 May 2026 18:21:03 +0300
Message-ID: <89e4e6258c62e0e2829038dd4f5a29cc530b4344@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[seu.edu.cn,lankhorst.se,intel.com,linux.intel.com,ursulin.net,gmail.com,ffwll.ch,kernel.org,goodmis.org,linux.dev,suse.de,lists.freedesktop.org,vger.kernel.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[20];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:dkim,seu.edu.cn:email]
X-Rspamd-Queue-Id: 59E5A6048C1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 29 May 2026, Runyu Xiao <runyu.xiao@seu.edu.cn> wrote:
> Thanks Sebastian and Maarten.
>
> I understand this fix is already covered by Maarten's i915 PREEMPT_RT
> series and that the series is still pending review.
>
> I'll drop this standalone patch and won't pursue a stable-targeted
> version.

IMO merging easy to review standalone patches helps make progress while
the more contentious changes are in, well, sort of review limbo.

BR,
Jani.

>
> This issue was independently found by our static analysis and validated
> with a no-device QEMU harness. If the extra analysis or validation
> details are useful for the ongoing series, I can share them separately.
>
> Best regards,
> Runyu

-- 
Jani Nikula, Intel
