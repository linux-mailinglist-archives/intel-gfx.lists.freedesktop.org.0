Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBgCMeeZHWpOcgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 16:40:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C836210A0
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 16:40:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16ED7113422;
	Mon,  1 Jun 2026 14:40:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=seu.edu.cn header.i=@seu.edu.cn header.b="mm9lGvge";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-m9362.xmail.ntesmail.com (mail-m9362.xmail.ntesmail.com
 [103.126.93.62])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86762112001;
 Fri, 29 May 2026 14:26:23 +0000 (UTC)
Received: from PC-202605011814.localdomain (unknown [221.228.238.82])
 by smtp.qiye.163.com (Hmail) with ESMTP id 40596a441;
 Fri, 29 May 2026 22:26:19 +0800 (GMT+08:00)
From: Runyu Xiao <runyu.xiao@seu.edu.cn>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Runyu Xiao <runyu.xiao@seu.edu.cn>, Maarten Lankhorst <dev@lankhorst.se>,
 jani.nikula@linux.intel.com, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net, airlied@gmail.com,
 simona@ffwll.ch, clrkwllms@kernel.org, rostedt@goodmis.org,
 jerome.anand@intel.com, pierre-louis.bossart@linux.dev, tiwai@suse.de,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rt-devel@lists.linux.dev, jianhao.xu@seu.edu.cn
Subject: Re: [PATCH] drm/i915/audio: use generic_handle_irq_safe() for LPE
 audio irq
Date: Fri, 29 May 2026 22:25:56 +0800
Message-Id: <20260529142556.3833775-1-runyu.xiao@seu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260529122137.VZtFvQvw@linutronix.de>
References: <20260528154551.3708290-1-runyu.xiao@seu.edu.cn>
 <20260529074816.k1K16jyy@linutronix.de>
 <2023cf0e-85a8-4128-857d-cae806ff0e58@lankhorst.se>
 <20260529122137.VZtFvQvw@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9e7420fd2803a1kunme34de274a313e
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCHR4eVhkeTBhNS0MaSklKSlYeHw
 5VEwETFhoSFyQUDg9ZV1kYEgtZQVlJSUpVSUlDVUlIQ1VDSVlXWRYaDxIVHRRZQVlPS0hVSktJSE
 5DQ1VKS0tVS1kG
DKIM-Signature: a=rsa-sha256;
 b=mm9lGvgeNttz3NAtznE5f1qkRm9D0UUEThEA9OVg2hrp1oTSq8zU2XQMC/qAy3pnUl10kBsAucyUf0RzDc3zG6ZLOP1VTKvCTbAv1P5dNgFrHveQdhIAatf47XRnXJK9B7/KjQrvRHsAGjBsd+weBz5FOoOyJPFURqGcniXCPSA=;
 c=relaxed/relaxed; s=default; d=seu.edu.cn; v=1; 
 bh=XIcFOKByaKlp7A36dRzcZgy0gMLVUvtFvUu9QwhQsDM=;
 h=date:mime-version:subject:message-id:from;
X-Mailman-Approved-At: Mon, 01 Jun 2026 14:40:34 +0000
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
X-Spamd-Result: default: False [0.69 / 15.00];
	DATE_IN_PAST(1.00)[72];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[seu.edu.cn,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[seu.edu.cn:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[seu.edu.cn,lankhorst.se,linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,kernel.org,goodmis.org,linux.dev,suse.de,lists.freedesktop.org,vger.kernel.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[seu.edu.cn:+];
	FROM_NEQ_ENVFROM(0.00)[runyu.xiao@seu.edu.cn,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: F1C836210A0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thanks Sebastian and Maarten.

I understand this fix is already covered by Maarten's i915 PREEMPT_RT
series and that the series is still pending review.

I'll drop this standalone patch and won't pursue a stable-targeted
version.

This issue was independently found by our static analysis and validated
with a no-device QEMU harness. If the extra analysis or validation
details are useful for the ongoing series, I can share them separately.

Best regards,
Runyu
