Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGD3Ll4B3mkRmAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 10:57:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 430203F790F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 10:57:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3BEF10E5AD;
	Tue, 14 Apr 2026 08:57:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cgOkcyWG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 324FD10E5AD;
 Tue, 14 Apr 2026 08:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776157019; x=1807693019;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=IAYEMAAcDhJXEJZiFeEzud0D4z3cUhDlsTxVv63RHhg=;
 b=cgOkcyWGN2Y19B6sTAachqJgoyqKihJ3dNDyLIpI2VX3743xUX4kBvr8
 MEZuuj6saP2x0WvvkE2o6q/Ngt0ePsifTgFg04ih3FmH/Osh+nMFs/1yN
 arvAzIVuWfHws6EShUkci+paelE1LvyL4cJttFkZXlHKVB3//ta8mi28g
 sI8IQ+WKAEFjVlvakhRxs1CPe133pNsXcBB0sQAHuyQmoxjfFXGq4mJia
 MQGAMQESSacDoReWYQAb0ACnu0EShmAKGz+iioSqd0bTaW03eurid3pEX
 MvTaWtYesGI2iU2vcnq3suJXAub0GLZsGxU9Z30dqJCWG25vSKBquv9d6 Q==;
X-CSE-ConnectionGUID: dm/g8kl3RHCgmfCBDdrE2A==
X-CSE-MsgGUID: Tkg4u5urT9OZF6vjo4zfUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="76272284"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="76272284"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 01:56:58 -0700
X-CSE-ConnectionGUID: rMdBiQpFRCmhi2e/Bublhg==
X-CSE-MsgGUID: WsDy3yaAQ4CMyzUPFCiy4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="260461845"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.189])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 01:56:55 -0700
Date: Tue, 14 Apr 2026 10:56:52 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jouni =?iso-8859-15?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 stable@vger.kernel.org, Dan Carpenter <error27@gmail.com>
Subject: Re: [PATCH] drm/i915/psr: Init variable to avoid early exit from et
 alignment loop
Message-ID: <ad4BVIxoxQXS5lFt@ashyti-mobl2.lan>
References: <20260413112345.88853-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260413112345.88853-1-jouni.hogander@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,ashyti-mobl2.lan:mid]
X-Rspamd-Queue-Id: 430203F790F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Jouni,

On Mon, Apr 13, 2026 at 02:23:45PM +0300, Jouni Högander wrote:
> Uninitialized boolean variable may cause unwanted exit from et alignment
> loop. Fix this by initializing it as false.
> 
> Fixes: 681e12440d8b ("drm/i915/psr: Repeat Selective Update area alignment")
> Cc: <stable@vger.kernel.org> # v6.9+
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reported-by: Dan Carpenter <error27@gmail.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
