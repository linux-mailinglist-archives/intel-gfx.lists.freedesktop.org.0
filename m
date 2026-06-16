Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QgCxKcEIMWqHagUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 10:26:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8F668D249
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 10:26:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=eI4vKgRQ;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C015A10E8EF;
	Tue, 16 Jun 2026 08:26:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D01A910E903;
 Tue, 16 Jun 2026 08:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781598399; x=1813134399;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=eE2XlAy+35NEzBZmgfHatN59/QG/I7xWWZ/AM83L4UI=;
 b=eI4vKgRQST00m9sMEki6hSKQOHUpdXnLZ1lZWTmCU7woCy+Ctr4uRBNi
 +MIjKWV7Taf5iDr8h/dAh88ANnO3YmnmZyEhmoQoJjnIbAJFopnP4dhao
 uBgUlO52yUl6p3Fw/sqfcsa758RerO9PYatrOvAzhTDKDr4NCo1ZYhXGA
 X1pvPYdmLwmQZft+JkdMHrEGbW2zEo5bDvMc22eC6BkdWSrV9JjRKIYNo
 aasGxGrmTSgYQzcjhvbZuD7midcVlXDS3E7MB3YG0ab7NHMBCp3pWL36C
 1RgZiv5yNmvthNazpZCx7IDcUMFWqbOKC7veUbjEJE+Mm4ESYTiTdbXG0 g==;
X-CSE-ConnectionGUID: C32xZ+6gT461+E2VbAf6wg==
X-CSE-MsgGUID: IxdC1M4OSlqDxABXpxbb1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82461036"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="82461036"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 01:26:38 -0700
X-CSE-ConnectionGUID: kfsNGoe4Rt+lkRBMyz+lJg==
X-CSE-MsgGUID: HngW+o1cQQ2KiJqdzbvNkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="246816178"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 01:26:38 -0700
Date: Tue, 16 Jun 2026 10:26:35 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/6] drm/i915/cdclk: Document CDCLK_CTL bits
In-Reply-To: <20260612173653.7830-5-ville.syrjala@linux.intel.com>
Message-ID: <940c1ac7-52a8-45dc-47a2-66fd257f3e5a@intel.com>
References: <20260612173653.7830-1-ville.syrjala@linux.intel.com>
 <20260612173653.7830-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-95153251-1781597027=:605841"
Content-ID: <06c09878-6c55-2072-531e-db2e4694ec52@intel.com>
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
X-Spamd-Result: default: False [0.37 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	R_MIXED_CHARSET(0.68)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3C8F668D249

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-95153251-1781597027=:605841
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <0377a5c3-a60e-0f20-25b7-c6294a279050@intel.com>

On Fri, 12 Jun 2026, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Document which CDCLK_CTL bits are relevant for which platforms.
> Saves me from having to look this up in the spec every time.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--8323329-95153251-1781597027=:605841--
