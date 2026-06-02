Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mDwLDP6EHmqhkQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 09:23:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E06816299C9
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 09:23:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A0D610ECA7;
	Tue,  2 Jun 2026 07:23:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gQJYeEjR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07FAF10ECA5;
 Tue,  2 Jun 2026 07:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780385019; x=1811921019;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=r4lk81u3keWFjW/KV60ooMvPokBDI8SHN4i/CZxniHM=;
 b=gQJYeEjRexE7ImVS3diePd7tCg2k9QQz4oKFzL+k1janyCpyFkXECR/m
 /Lr9FzcjDNgO6LVALIxJEBIIqi8kR1yZpf5bbxq3mdL8BDLBEFukcF3pi
 eBkvRl8DXFYJvpp2yBNcola1DvH8exfYQfT6wz09qiogCkRd0/UnITk+X
 tTXnvnP/1t+DHuAGjVGekKU8ajas6Ass8aSitFBkCFZ2MP0QsTmMHI/i/
 VM3N0RWUdN1sSXcAsLNivwvdWBW4eUicajToLby06GYFsPpYSQ6Jvixrh
 Wt0iZ0+Zi4eU+kWVqCfNi3NoJvgN2X4uyNdBdiy6YjQIpalK+krEmd6TA A==;
X-CSE-ConnectionGUID: NIFu8HEJTwq6hG7utJT3LA==
X-CSE-MsgGUID: UnI/hAspS8K3K4PUMV+C9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="83744623"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="83744623"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 00:23:39 -0700
X-CSE-ConnectionGUID: VLGcvyZWT8iEJi7loPEaRw==
X-CSE-MsgGUID: ySwibePESAOd4VITVP8UmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="245638160"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 00:23:37 -0700
Date: Tue, 2 Jun 2026 09:23:35 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, 
 "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 09/24] drm/xe/display: relocate the
 xe_display_pm_runtime_*() functions
In-Reply-To: <597d9390e894c66fd4e2665e64ce16df139b2feb.1780051905.git.jani.nikula@intel.com>
Message-ID: <85281f6c-72b3-0a68-33cf-dd0fe85393c1@intel.com>
References: <cover.1780051905.git.jani.nikula@intel.com>
 <597d9390e894c66fd4e2665e64ce16df139b2feb.1780051905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="8323329-1436767174-1780385018=:1544314"
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: E06816299C9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1436767174-1780385018=:1544314
Content-Type: text/plain; charset=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT

On Fri, 29 May 2026, Jani Nikula wrote:
> Keep the xe_display_pm_runtime_*() functions together, in
> suspend/suspend_late/resume order. Also relocate the dependent d3cold
> functions near usage in the runtime pm functions.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--8323329-1436767174-1780385018=:1544314--
