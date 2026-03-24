Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KFh2GICqwmkyggQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 16:15:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F82317D20
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 16:15:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63B3010E6E9;
	Tue, 24 Mar 2026 15:15:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="EiURorpS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9959E10E6E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2026 15:15:09 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id A5675600C4;
 Tue, 24 Mar 2026 15:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08E84C19424;
 Tue, 24 Mar 2026 15:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1774365308;
 bh=aLWNUYX0iSeHKHnT4XathPmCfrjFXV/ryP6uBeLG8q0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EiURorpSZxxzRVCEnv5+7hvuj7qRlgPoiZkaibmv3DQU3bnJZNo01jIaSUjGNyUK2
 VykZZLt7N+vT1otyG0moKcVSYZYHqT+Gx07VOSfmMMhG6oqMgSTfVHJlbSkaDV5f/g
 zrtd7ZjzsgPfWN1m5mX7my/JKm2CQDkTBsmJPcnE=
Date: Tue, 24 Mar 2026 16:14:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Yassine Mounir <sosohero200@gmail.com>
Cc: intel-gfx@lists.freedesktop.org, joonas.lahtinen@linux.intel.com,
 security@kernel.org, rodrigo.vivi@intel.com
Subject: Re: [PATCH] drm/i915: Fix UAF race between relocation and GEM_CLOSE
Message-ID: <2026032401-margarine-aching-0c76@gregkh>
References: <20260324134718.27331-1-sosohero200@gmail.com>
 <2026032453-depletion-various-b39f@gregkh>
 <CANq=4mC4ppxPYShPdQiZ6k44v5oue+NhcY8qXYBV6kEgoSWgiQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANq=4mC4ppxPYShPdQiZ6k44v5oue+NhcY8qXYBV6kEgoSWgiQ@mail.gmail.com>
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
X-Spamd-Result: default: False [3.19 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:sosohero200@gmail.com,m:joonas.lahtinen@linux.intel.com,m:security@kernel.org,m:rodrigo.vivi@intel.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[gregkh@linuxfoundation.org,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.967];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E4F82317D20
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 24, 2026 at 10:38:24AM -0400, Yassine Mounir wrote:
> *Hi Greg,*

Hi, but please do not top-post nor send html email, that gets dropped by
the mailing lists.

> *My apologies for the confusion. I realized I was developing against a
> distribution kernel (6.18.12-kali). I understand now why the file paths do
> not match the current upstream tree.*
> 
> *Regarding the logic: The race condition happens specifically during the
> eb_relocate_entry call when a concurrent GEM_CLOSE drops the reference
> count to zero. The i915_gem_object_get is intended to pin the object's
> lifetime during this critical relocation window.*

But what happens if the object is dropped right after your call to put?
It will now be gone and not be around to work for the rest of the loop.

thnaks,

greg k-h
