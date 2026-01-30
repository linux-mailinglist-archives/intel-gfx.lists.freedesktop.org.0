Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKEvFVCCfGlwNgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 11:05:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EF4B9248
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 11:05:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2589010E975;
	Fri, 30 Jan 2026 10:05:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="inOw+p2k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D12F10E975;
 Fri, 30 Jan 2026 10:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769767501; x=1801303501;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=GzMyH4nmyswz1hQSqupwrdW4FZLAlzz7uD85dTk40No=;
 b=inOw+p2kr3WmoflLi7wKKTyWkI+awBIUSmsVR2HQ1KnfTs9S4bXlaLxD
 v2pKXHipJIDCGjZP9MhAbl27tWih1Qbm/ONckH182TZzFHI36Ko+aeq7W
 QBvLVlJ4QE5KEc7yzUtPHdkK8nPQEv6PzBslzfNqCewT4aXgoj0pAIFPj
 TLNY08MtYUAe1p1yL6kg66BAc/bsv2lwtWTZQ57mqfJRf55KtKwMkCPqz
 cqzDaWeBOPPj3ff2L99EeKbuVCa0a4yVT9BUw0lI2HWDmu9oILYKTsQFl
 CIUVLoNY6/kJUZ4O0Sk6Lrt2hR1p2z/M7vxgl1/meN47QV0BBm+tWFSv9 Q==;
X-CSE-ConnectionGUID: Z3WR/XJQSNqmR+DUDZ7tFA==
X-CSE-MsgGUID: gDNlUiegRb2uaAeYHgAAmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="74641706"
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="74641706"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 02:05:00 -0800
X-CSE-ConnectionGUID: u19Sj0GNRKWn0jgx20piUQ==
X-CSE-MsgGUID: kVI/qQ7ITWSzjWIw7kQUfQ==
X-ExtLoop1: 1
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.77])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 02:04:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Krzysztof Karas <krzysztof.karas@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>
Subject: Re: [PATCH v2 1/1] i915/i915_driver: move intel_gvt_init() level
 higher
In-Reply-To: <0a6b4d7e-4eb2-c81a-6f49-209d67eeaaf7@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260129090129.2601661-1-michal.grzelak@intel.com>
 <20260129090129.2601661-2-michal.grzelak@intel.com>
 <aXtasNhZFdaqbnAm@ashyti-mobl2.lan>
 <0a6b4d7e-4eb2-c81a-6f49-209d67eeaaf7@intel.com>
Date: Fri, 30 Jan 2026 12:04:54 +0200
Message-ID: <3b89db1b8dfa177be28cafff8b1af01a2fab374f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,pages.freedesktop.org:url,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: B1EF4B9248
X-Rspamd-Action: no action

On Fri, 30 Jan 2026, Micha=C5=82 Grzelak <michal.grzelak@intel.com> wrote:
> Thank you Andi for the review. Do you have any suggestion via which tree
> should the patch be merged? Asking since I don't have commit right to
> any of drm-* repositories.

The MAINTAINERS file is the starting point for deciding all of this.

The maintainer entry with files matching the files being modified
specifies the maintainers, the mailing list to use, the repository, etc.

In this case, the entry is "INTEL DRM I915 DRIVER", and the repo is
[1]. Patches overlapping multiple entries need maintainer coordination
to choose which repository to queue the changes through, and acks to
record the approval. (A maintainer acks changes to files under their
maintainership being merged through some other repo.)

Within our repository, patches specifically touching gem or gt should be
applied to the drm-intel-gt-next branch, and everything else to the
drm-intel-next branch, and when in doubt, the answer is probably
drm-intel-next. This is documented at [2]. Nowadays very few patches get
applied to drm-intel-gt-next.

I'll also note that since this change is purely about i915, sending the
patch to intel-gfx would've been sufficient. Including intel-xe is not
wrong, but causes CI to be run on changes that have zero impact on
xe. When in doubt, do include intel-xe too. Usually the cross-posting is
required for display changes that impact both i915 and xe.

Finally, the subject prefix should just be "drm/i915" here. Basically
the subject prefix should be either that or a more specific
"drm/i915/<feature-or-platform>" where <feature-or-platform> could be
e.g. "dp" or "tgl". (It's the same for xe, with just "drm/xe" instead.)
'git log --oneline path/to/source.c' gives you clues what to use.

Pushed to drm-intel-next, with the subject prefix fixed, thanks for the
patch.


BR,
Jani.


[1] git https://gitlab.freedesktop.org/drm/i915/kernel.git

[2] https://drm.pages.freedesktop.org/maintainer-tools/repositories/drm-int=
el.html#repository-and-branches



--=20
Jani Nikula, Intel
