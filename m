Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAAGDLxae2nXEAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 14:03:56 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43953B03BB
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 14:03:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 589FB10E867;
	Thu, 29 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HEt7rGyL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5FD410E864;
 Thu, 29 Jan 2026 13:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769691832; x=1801227832;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QoL/3/xdwbkKUmwk4AhcI4T1m2uS4Pea1jZcUxWnxm8=;
 b=HEt7rGyLj204ORKHnR/Rte8U0GoYhKl56j3P4pefH8MU/9M6hH18hkd4
 y1ISOU328jiLyGZFKcutEPPcwNBJM/WAjdPDLGIu6ZPMcdN7zPxH2Nw63
 NGNQBaBHd1TGGaNhr3GcGefBhJZOKlpqIopwHuyUg32CxEsSUwRkmyFUy
 a+gkmamjMXCJ4hblU7UdYzZPpusMlP1DqKsjXT0xI4aEXAqYk8KPFQ+s9
 p4JoxZ9z1pMPSF/wpgrsPqlyutkyGIBuXt4mliRfZcwU/Qfx1WW3WpYw2
 NbcYFkCQS9m4irjHRHdt1z7ky5+V8CfV7NVChqup9yX3ir+rXDD0tFk+x Q==;
X-CSE-ConnectionGUID: 2DGkHO1KTSef6cY2VWFdCw==
X-CSE-MsgGUID: Gjb9hJbHQg2n3J7atUHd1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="74553671"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="74553671"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 05:03:51 -0800
X-CSE-ConnectionGUID: 8L2VHMa6RxSaP5AmP9Rq1w==
X-CSE-MsgGUID: qe/TbRaoQ4W3fU7YF46k/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="208177883"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 05:03:47 -0800
Date: Thu, 29 Jan 2026 14:03:44 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: Re: [PATCH v2 1/1] i915/i915_driver: move intel_gvt_init() level
 higher
Message-ID: <aXtasNhZFdaqbnAm@ashyti-mobl2.lan>
References: <20260129090129.2601661-1-michal.grzelak@intel.com>
 <20260129090129.2601661-2-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260129090129.2601661-2-michal.grzelak@intel.com>
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ashyti-mobl2.lan:mid];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 43953B03BB
X-Rspamd-Action: no action

Hi Michal,

On Thu, Jan 29, 2026 at 10:01:29AM +0100, Michał Grzelak wrote:
> Both initialisation and removal of GVT happen at different abstraction
> levels. Hence caller of i915_driver_hw_probe() has no way of knowing
> status of intel_gvt_init(). This can lead to an unbalanced number of
> calls of intel_gvt_init() and intel_gvt_driver_remove() since GVT error
> path is currently handled in i915_driver_probe(). One such scenario has
> been seen with i915_driver_hw_probe() fault injection, which caused
> double entry deletion and list corruption.
> 
> Move intel_gvt_init() up to i915_driver_probe(). Add out_cleanup_gvt
> error path for removing gvt. Trigger it only after intel_gvt_init()
> succeeded.
> 
> In case intel_gvt_init() failed, theoretically we should follow err_msi
> error path. That is actually impossible since call to intel_gvt_init()
> unconditionally returns 0, although it claims to return negative error
> code on failure. Thus follow standard out_cleanup_hw error path on a
> hypothetical future intel_gvt_init() failure. Remove err_msi label from
> i915_driver_hw_probe() since intel_gvt_init() was the only user of it.
> 
> Changelog:
> v1->v2
> - don't move err_msi error path from i915_driver_hw_probe (Jani)
> - rewrite commit message
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15481
> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
