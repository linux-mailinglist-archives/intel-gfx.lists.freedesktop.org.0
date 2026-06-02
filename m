Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id t+hcGZ3NHmo+VQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 14:33:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC4262E0CD
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 14:33:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=lH189INm;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33C9710F044;
	Tue,  2 Jun 2026 12:33:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E12A10F043;
 Tue,  2 Jun 2026 12:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1780403606;
 bh=K+FlRKhK+GvWaFhWkAEe2MkfHRh8M1Iw4+vqrP9ah9o=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=lH189INmYn7cg7lWKSQS3h8AC77c5XNvSL/SpqjY7Ro8l1fQG62qFDhPY5qIdVnzd
 swt861wBKVrvwicVliz3vXnPyhzneLzr9vO7cEimWxBi3HbbyzDAZ0gBd96fmzitF3
 GG8Det468GjgIih67hmB47wssOi2RSj+fvKhf8ycWR2W4mHgaA6wvK9rq41bTFh3uX
 EFIt4ZhcFRfF6u2DCPcfpnCPfGbTr0S2ejmRilr6eUWg5OH/y9uTHmCLJ1RCzTYj3s
 HTFq6zwLafeJ9WXbL2hY2Q84pUPg4XWVmN2cdB1802xlszbXJjP70v5vnVF763Td7J
 d7zgsLuQgjKQQ==
Message-ID: <3e012936-8493-43c8-b547-17ae40e6ef74@lankhorst.se>
Date: Tue, 2 Jun 2026 14:33:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm/i915/display: Fix intel_lpe_audio_irq_handler for
 PREEMPT-RT
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Runyu Xiao <runyu.xiao@seu.edu.cn>
Cc: jani.nikula@linux.intel.com, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net, airlied@gmail.com,
 simona@ffwll.ch, matthew.brost@intel.com, uma.shankar@intel.com,
 pierre-louis.bossart@linux.dev, jerome.anand@intel.com, tiwai@suse.de,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, jianhao.xu@seu.edu.cn
References: <20260602004515.1907422-1-runyu.xiao@seu.edu.cn>
 <20260602062957.0Nbtw_yY@linutronix.de>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <20260602062957.0Nbtw_yY@linutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,linux.dev,suse.de,lists.freedesktop.org,vger.kernel.org,seu.edu.cn];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,lankhorst.se:mid,lankhorst.se:dkim,lankhorst.se:from_mime,lankhorst.se:email,seu.edu.cn:email,linutronix.de:email,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EFC4262E0CD

Thanks, pushed!

On 6/2/26 08:29, Sebastian Andrzej Siewior wrote:
> On 2026-06-02 08:45:15 [+0800], Runyu Xiao wrote:
>> From: Maarten Lankhorst <dev@lankhorst.se>
>>
>> The LPE audio interrupt comes from the i915 interrupt handler. It
>> should be in irq disabled context.
>>
>> With PREEMPT_RT enabled, the IRQ handler is threaded.
>> Because intel_lpe_audio_irq_handler() may be called in threaded IRQ context,
>> generic_handle_irq_safe API disables the interrupts before calling LPE's
>> interrupt top half handler.
>>
>> This fixes braswell audio issues with RT enabled.
>>
>> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
>> Reviewed-by: Matthew Brost <matthew.brost@intel.com>
>> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>> Signed-off-by: Runyu Xiao <runyu.xiao@seu.edu.cn>
> 
> Reviewed-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> 
> Sebastian

