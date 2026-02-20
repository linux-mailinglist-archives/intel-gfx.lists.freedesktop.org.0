Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qD7LLwcWmGki/wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 09:06:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C78A165823
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 09:06:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00E5310E1ED;
	Fri, 20 Feb 2026 08:06:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DUt/tXIM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E602510E1ED;
 Fri, 20 Feb 2026 08:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771574788; x=1803110788;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=agtpy0zBRQH19MbljJyff70mXp7cKE3leYmZlja+h0E=;
 b=DUt/tXIMnXzpngRoDSfjnqDCN994S0vvmWekqwCIo/im1//BQcm0yNAG
 iByIFShuhuevw7jysMnd+T9uhTsSyu3x057WrcrC1l5EWca4BvDlMqPd2
 5Zi2QcwuLUt6YQ5KYzxipT3jpFRroiDW+Rcz+BmZMbbi6MoGxkvUoq9wb
 81SHU3DphgTD3rOClviflAZjXmVMcj1n4uQA7Pk0VwMY4vFQCuLAC/wcn
 xH7cLE5/d1PrMNeHvenDZN6LW92MDCYGxxv3vQLQif0zFIWbupNTT622n
 gl3u2HOgptppU289r9oei1i3wo6sfUKk8tgfLKYDaj6OoxZsSualpw9eP g==;
X-CSE-ConnectionGUID: aGiJnbv9Rli4QeorwAAniw==
X-CSE-MsgGUID: t9ZuYculQ766118U/oJeog==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="84028800"
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="84028800"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 00:06:27 -0800
X-CSE-ConnectionGUID: YaRkZ0PAT2yVpRmxppKDTQ==
X-CSE-MsgGUID: +ZKggmGaQtKVVG2ZIOCR8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="212933048"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 00:06:26 -0800
Date: Fri, 20 Feb 2026 09:06:24 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: =?ISO-8859-15?Q?Jouni_H=F6gander?= <jouni.hogander@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Animesh Manna <animesh.manna@intel.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915/alpm: ALPM disable fixes
In-Reply-To: <20260212062731.397801-1-jouni.hogander@intel.com>
Message-ID: <ad4e98ae-3a64-f570-fb1a-77355ecc431a@intel.com>
References: <20260212062731.397801-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="1527428566-21081126-1771574787=:851205"
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 2C78A165823
X-Rspamd-Action: no action

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--1527428566-21081126-1771574787=:851205
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Thu, 12 Feb 2026, Jouni Högander wrote:
> PORT_ALPM_CTL is supposed to be written only before link training. Remove
> writing it from ALPM disable.
>
> Also clearing ALPM_CTL_ALPM_AUX_LESS_ENABLE and is not about disabling ALPM
> but switching to AUX-Wake ALPM. Stop touching this bit on ALPM disable.
>
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7153
> Fixes: 1ccbf135862b ("drm/i915/psr: Enable ALPM on source side for eDP Panel replay")
> Cc: Animesh Manna <animesh.manna@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v6.10+
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>

BR,
Michał
--1527428566-21081126-1771574787=:851205--
