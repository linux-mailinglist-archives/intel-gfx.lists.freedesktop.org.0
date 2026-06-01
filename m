Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WONtC+qZHWpOcgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 16:40:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A366210B8
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 16:40:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AD6D113427;
	Mon,  1 Jun 2026 14:40:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux.microsoft.com header.i=@linux.microsoft.com header.b="iqQvugAm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
 by gabe.freedesktop.org (Postfix) with ESMTP id F14F110E82C;
 Mon,  1 Jun 2026 14:01:59 +0000 (UTC)
Received: by linux.microsoft.com (Postfix, from userid 1216)
 id B9FBE20B7166; Mon,  1 Jun 2026 07:01:46 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com B9FBE20B7166
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1780322506;
 bh=EcC8oiBSWrZKUG36fS+G6X0zfViyyPCNJtfKczWUozg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iqQvugAmtyeiPwjUP+vTRA8RroodNpMYwaeUz9TjyF6j8OPrRuDWHl/uW+MjOK2ta
 1yFKe88FFz/vDqJquUtDOADt4qn6VkthwM4dJ6sj1afchnVsEBzhLm8rpHrs7JAqTw
 GBsHJD6dBi5okk1UqzV578yXfx9azvosSv4qZ1rA=
Date: Mon, 1 Jun 2026 10:01:46 -0400
From: Hamza Mahfooz <hamzamahfooz@linux.microsoft.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 airlied@redhat.com, airlied@gmail.com, simona@ffwll.ch,
 admin@kodeit.net, gargaditya08@proton.me, paul@crapouillou.net,
 jani.nikula@linux.intel.com, mhklinux@outlook.com,
 zack.rusin@broadcom.com, bcm-kernel-feedback-list@broadcom.com,
 dri-devel@lists.freedesktop.org, linux-hyperv@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-mips@vger.kernel.org, virtualization@lists.linux.dev
Subject: Re: [PATCH v4 07/10] drm/damage-helper: Remove old state from
 drm_atomic_helper_damage_iter_init()
Message-ID: <ah2QyuW9/CUoPy0e@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
References: <20260530185716.65688-1-tzimmermann@suse.de>
 <20260530185716.65688-8-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260530185716.65688-8-tzimmermann@suse.de>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[linux.microsoft.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[linux.microsoft.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linux.microsoft.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[hamzamahfooz@linux.microsoft.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[kernel.org,linux.intel.com,redhat.com,gmail.com,ffwll.ch,kodeit.net,proton.me,crapouillou.net,outlook.com,broadcom.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,broadcom.com:email,suse.de:email]
X-Rspamd-Queue-Id: C5A366210B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, May 30, 2026 at 08:53:20PM +0200, Thomas Zimmermann wrote:
> Nothing in drm_atomic_helper_damage_iter_init() requires the old
> plane state. Remove the parameter and mass-convert callers.
> 
> Most callers now no longer require the old plane state in their plane's
> atomic_update helper. Remove it as well.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Acked-by: Zack Rusin <zack.rusin@broadcom.com>
> ---

Acked-by: Hamza Mahfooz <hamzamahfooz@linux.microsoft.com> # hyperv
