Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qLo7DI9GGWrHuAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 09:55:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D630E5FEDCD
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 09:55:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FF1710FA66;
	Fri, 29 May 2026 07:55:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="rnLY2qa5";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="RsCD7dVz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 453 seconds by postgrey-1.36 at gabe;
 Fri, 29 May 2026 07:55:54 UTC
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFF0910FA66;
 Fri, 29 May 2026 07:55:54 +0000 (UTC)
Date: Fri, 29 May 2026 09:48:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1780040898;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DDsih4SqsFbZVSQ6/Dn2K0NJqce5HwZ23VRoi6b0lL4=;
 b=rnLY2qa54BPXzDgQe1mXijqDIefpWP8kX/cTIu052hfdonoVoGNqzJi3lF75EU0CTF83Fe
 4PRO+W6JbnM5K2+2+RdIvXajW7XD20q2daszzewpOCfup4Z/t89WzJub/qc6/RO44sRMvl
 qGFdBVRX4pmNYqRkvlIpMNDBiUBMYiZ6gdgr8QThr54Fw0ZyI84HtpUSOQtELadLHYE1cR
 iVsKPV4UQCXBiidlbJMYS8Vm6f5n1btzQZikw5YMvFGAG8Hi50526dc4tcc6cmWjw0EJeu
 JN15wuhpk41j2/tKZvhs5yvAnvhMZ0XfHmsofVPV93rwK+bz+rdG91IUAz2KOA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1780040898;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DDsih4SqsFbZVSQ6/Dn2K0NJqce5HwZ23VRoi6b0lL4=;
 b=RsCD7dVzqySTQbWDZdkyNwg2IMtYYh8D4+KJwfntZV6NgNhuaqd+3B+FaSriYcITsgphJ3
 UxZ+Sws9XIDjw4Dw==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Runyu Xiao <runyu.xiao@seu.edu.cn>,
	Maarten Lankhorst <dev@lankhorst.se>
Cc: jani.nikula@linux.intel.com, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net,
 airlied@gmail.com, simona@ffwll.ch, clrkwllms@kernel.org,
 rostedt@goodmis.org, jerome.anand@intel.com,
 pierre-louis.bossart@linux.dev, tiwai@suse.de,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rt-devel@lists.linux.dev, jianhao.xu@seu.edu.cn,
 stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915/audio: use generic_handle_irq_safe() for LPE
 audio irq
Message-ID: <20260529074816.k1K16jyy@linutronix.de>
References: <20260528154551.3708290-1-runyu.xiao@seu.edu.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260528154551.3708290-1-runyu.xiao@seu.edu.cn>
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
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,kernel.org,goodmis.org,linux.dev,suse.de,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,seu.edu.cn];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linutronix.de:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[bigeasy@linutronix.de,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: D630E5FEDCD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-05-28 23:45:51 [+0800], Runyu Xiao wrote:
> intel_lpe_audio_irq_handler() forwards the LPE audio child IRQ from the
> i915 parent IRQ path with generic_handle_irq(). The forwarded child top
> half is not an independent hardirq entry point; it inherits the context
> of the outer i915 interrupt dispatch path.
=E2=80=A6

This looks very familiar and is work in progress
	https://lore.kernel.org/all/20260310115709.2276203-16-dev@lankhorst.se/

Maarten, where do we stand on the i915 series?

> Fixes: eef57324d926 ("drm/i915: setup bridge for HDMI LPE audio driver")
> Cc: stable@vger.kernel.org

No stable fix needed because i915 can not be turned on PREEMPT_RT.

Sebastian
