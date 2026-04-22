Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLs8JFjB6Gm9PwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 14:38:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DDA24460CF
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 14:38:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2912C10E9EC;
	Wed, 22 Apr 2026 12:38:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="HPUpAhle";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8FE310EDFD;
 Wed, 22 Apr 2026 00:45:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id C084260018;
 Wed, 22 Apr 2026 00:45:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B159C2BCB0;
 Wed, 22 Apr 2026 00:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1776818721;
 bh=2BJjDF77qjHUMH9XeUdWF0cKGkPj5gcnwi8h0smYWvg=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=HPUpAhleqsEdsFdCY1IeDzBl1kWIuqT2A2nQsRR2mTrfs3ZNrvmY6YebTRXzbuVPU
 H09XdSjWNT/CUF7/Trb7alOl8bdJKoBgISG2XAjgZPi4gRtaR5j5F63n2Z2JCc0uQo
 qG811aEe/G7tlEBsLRXVqiqpLj/fdi98SQCis7d0sg6SzOfBKq74jZfRdzt8Gr1UVy
 jrjqgrNpd5egVFmhzUMrw+l7MAX/LNydUpxQUF78CQRigaZTEZ8i41xVU6KPFFESDx
 EKah1sr/KlD8eiAQoRVptQ623mdlCE7eAM/bUSndp7LLbyCJ3RA/F6JoFXBmiOfllV
 4emI5qvFILULQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 BA06D3930018; Wed, 22 Apr 2026 00:44:45 +0000 (UTC)
Subject: Re: [PULL] topic/pipe-reorder for drm-intel-next and possibly v7.1-rc1
From: pr-tracker-bot@kernel.org
In-Reply-To: <d69501d53c233386d70ed10290af24aafebf434f@intel.com>
References: <d69501d53c233386d70ed10290af24aafebf434f@intel.com>
X-PR-Tracked-List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
X-PR-Tracked-Message-Id: <d69501d53c233386d70ed10290af24aafebf434f@intel.com>
X-PR-Tracked-Remote: https://gitlab.freedesktop.org/drm/i915/kernel.git
 tags/topic/pipe-reorder-2026-04-15
X-PR-Tracked-Commit-Id: 2c683e9b419328da3433a49f7c467da71aaf0469
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 993eb191400f5d06322989ea7c890fd11965f80b
Message-Id: <177681868431.3068898.8635617940441647954.pr-tracker-bot@kernel.org>
Date: Wed, 22 Apr 2026 00:44:44 +0000
To: Jani Nikula <jani.nikula@intel.com>
Cc: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Matthew Brost <matthew.brost@intel.com>,
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dim-tools@lists.freedesktop.org, Ville Syrjala <ville.syrjala@linux.intel.com>
X-Mailman-Approved-At: Wed, 22 Apr 2026 12:38:45 +0000
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linux-foundation.org,linux.intel.com,ursulin.net,intel.com,suse.de,kernel.org,lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[pr-tracker-bot@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 9DDA24460CF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The pull request you sent on Wed, 15 Apr 2026 19:08:52 +0300:

> https://gitlab.freedesktop.org/drm/i915/kernel.git tags/topic/pipe-reorder-2026-04-15

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/993eb191400f5d06322989ea7c890fd11965f80b

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html
