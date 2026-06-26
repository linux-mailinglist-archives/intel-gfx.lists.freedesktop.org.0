Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Pz9ACQihPmplJQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 17:55:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DE66CEB66
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 17:55:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=DNiiWP2w;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B17810F67F;
	Fri, 26 Jun 2026 15:55:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBAD210F674;
 Fri, 26 Jun 2026 15:55:48 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id D45B942AA3;
 Fri, 26 Jun 2026 15:55:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A308A1F000E9;
 Fri, 26 Jun 2026 15:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1782489348;
 bh=Lt3tIKxtEx/sDzO3B7esFu3Va+TQBS4M1CpL1nTybC8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=DNiiWP2w6O6UpV4pL6ppSFUUOkrp/+SmyET7gFVAI40Sup6ibneK9wJIMcQFZ4+9S
 MT5kr1/t8Xk7hCZK+YynXYvv6dINpcu8pjC4nA8UrHPfkzAWNAIo5XOLQe3oYzaaxT
 dIOAvAPgMZWRFr6E0P+P0doZ04TujQlnqmGYRs+OvqosaCFZ+0HE/5/IMnDi18qvr/
 C5mwhPaAxx7dWNYY9YWqpq5/vCEcg4X8yI/oAJpA0fAk78vGm/3GUsjoRMPE4IcAGs
 2EwGmGdAhwZ2jVRIbPhypDueVgAaE6vT61SPcNDUanqiWtAQDzjt+DIoy+yHR2V2my
 SmADq/kWNjMaA==
Date: Fri, 26 Jun 2026 17:55:43 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Raag Jadav <raag.jadav@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>, 
 dri-devel <dri-devel@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/gt: Return bool values from a boolean helper
Message-ID: <aj6g3ZDfaCzdS2Iy@zenone.zhora.eu>
References: <20260625114442.2912230-1-andi.shyti@linux.intel.com>
 <aj1HzUjokwiZCk7T@black.igk.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aj1HzUjokwiZCk7T@black.igk.intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,zenone.zhora.eu:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E7DE66CEB66

Hi Raag,

> > diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> > index b2cf672564dd..a3f198646e1d 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> > @@ -797,9 +797,9 @@ static int __intel_gt_reset(struct intel_gt *gt, intel_engine_mask_t engine_mask
> >  bool intel_has_gpu_reset(const struct intel_gt *gt)
> >  {
> >  	if (!gt->i915->params.reset)
> > -		return NULL;
> > +		return false;
> 
> I know the logic remains the same but isn't this Fixes material?

I don't think it's necessary, returning NULL instead of false
doesn't trigger any failure.

Thanks,
Andi
