Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id f7GLI/WMRmq1YQsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 18:08:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 240036F9F32
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 18:08:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=N7jteUps;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A698B10E4FB;
	Thu,  2 Jul 2026 16:08:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E58B610E4FB
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2026 16:08:18 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 2A9E1601CA
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2026 16:08:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5314F1F000E9
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2026 16:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1783008497;
 bh=Bzy1J1V+dDbAXSe9VNKFZZLD3StrFvFap/aDNXgh0Kw=;
 h=Date:From:To:Subject:References:In-Reply-To;
 b=N7jteUpsjB0YPyXezVVFHJPJ7lfQafQbmDA0VBcSu6e8UIGAtqRYVr6RPHLCQs0SL
 4jeUlBOBKF/7wVwp3rfXW1NijAwXwAWh6PBE2Zwp2+v6+Jm/rcln9ckV81JBSX22hl
 2BGFBFgV4+bWY874S0+Uu5gb4PtNYBEiFqz+vVWaMGcxf4dszMG4YmvCDEwWh5wfb/
 YWwiw0ejyIqnK6sSgFBqd/BBSWWOMv3y+j01bDe3qw4vKTb+y0OIHfUiUhCoanZawS
 ZH7bt6andaiuSdlhjrbyjKmPW9oVwnimtMtFeu48MWXwT16vh/ed8Ytr8S4bLUvms6
 E/tpbPcHa6FuA==
Date: Thu, 2 Jul 2026 17:08:10 +0100
From: Lorenzo Stoakes <ljs@kernel.org>
To: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLkJVSUxE?= =?utf-8?Q?=3A?= failure for
 convert more vm_flags_t users to vma_flags_t
Message-ID: <akaM1e1uO3tK_oGI@lucifer>
References: <cover.1782760670.git.ljs@kernel.org>
 <178294864427.140838.2153415744306457038@6beec6c84f66>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <178294864427.140838.2153415744306457038@6beec6c84f66>
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
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ljs@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lucifer:mid,patchwork.freedesktop.org:url,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 240036F9F32

On Wed, Jul 01, 2026 at 11:30:44PM +0000, Patchwork wrote:
> == Series Details ==
>
> Series: convert more vm_flags_t users to vma_flags_t
> URL   : https://patchwork.freedesktop.org/series/169610/
> State : failure
>
> == Summary ==
>
> Error: patch https://patchwork.freedesktop.org/api/1.0/series/169610/revisions/1/mbox/ not applied
> Applying: mm: introduce vma_flags_can_grow() and vma_can_grow()
> Applying: mm/vma: update do_mmap() to use vma_flags_t
> Applying: mm: convert __get_unmapped_area() to use vma_flags_t
> Applying: mm: update generic_get_unmapped_area[_topdown]() to use vma_flags_t
> Applying: mm: prefer mm->def_vma_flags in mm logic
> error: sha1 information is lacking or useless (mm/debug.c).
> error: could not build fake ancestor
> hint: Use 'git am --show-current-patch=diff' to see the failed patch
> Patch failed at 0005 mm: prefer mm->def_vma_flags in mm logic
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".
> Build failed, no error log produced
>
>

This will likely be because this series has a dependency on the 30 patch monster
series I sent which hasn't been merged anyway :)
