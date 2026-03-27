Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KIFIInpPxmk2IgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 10:35:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E901341CCC
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 10:35:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDFA610ED5D;
	Fri, 27 Mar 2026 09:35:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MR1j+DWw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D81A710ED55;
 Fri, 27 Mar 2026 09:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774604151; x=1806140151;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=nodLxYeY1cFG9Ec22+AHCsA6f+9QKqXbxLwAJHrC5ek=;
 b=MR1j+DWwW34J2B0NEYzEzaPx51DdtejRxHKH9UH7o/uaVF4aOrD73BrN
 MlwU+aBE+fHE5lUUY/nKMTHHrw9P+ojy3xzVx1bt/vlHHA5Wrls4R3eUK
 VJQmFsOSdSVaSt2NeZ8OaeD/YhycQwH42dIqIehyw9W2uX6Z4PrkPJ6kJ
 ytvyXCkZ4d2SrQv/jg75CQaey4e2ev9+zD0LyhgAHbKi8EPbFhmpluoMz
 zh4n+gP8BVLfh9SJPk92hIHm8d9yFastGNitzGcF65Czx9NZI8Mxj2mPJ
 W4SwkZ5xgs86/5YYuapnuL9u5VbiT11EMMbP3gaHtdMmZ5ghvMWiRmXeH Q==;
X-CSE-ConnectionGUID: slmyMe6kSLCwCbiRjYekbQ==
X-CSE-MsgGUID: YhezoS5IQRCKtDNBgS5MCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75566369"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="75566369"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 02:35:51 -0700
X-CSE-ConnectionGUID: JP3U7L5NSJy0GZeorPBaUA==
X-CSE-MsgGUID: frrgGYYKRqKmgNCRl0pipw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="220419149"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 02:35:48 -0700
Date: Fri, 27 Mar 2026 10:35:46 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Nemesa Garg <nemesa.garg@intel.com>
Subject: Re: [PATCH 5/9] drm/i915/casf: Handle CASF in
 skl_scaler_get_filter_select()
In-Reply-To: <20260326223139.19116-6-ville.syrjala@linux.intel.com>
Message-ID: <dfd14fde-d08d-7064-bc76-e7ab09914088@intel.com>
References: <20260326223139.19116-1-ville.syrjala@linux.intel.com>
 <20260326223139.19116-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1846110227-1774604149=:330621"
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
X-Spamd-Result: default: False [0.22 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	R_MIXED_CHARSET(0.53)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
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
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 3E901341CCC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1846110227-1774604149=:330621
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Thu, 26 Mar 2026, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Nuke the duplicate CASF_SCALER_FILTER_SELECT and just have
> skl_scaler_get_filter_select() return the proper value for
> sharpness filter use. It is the same "use programmable coefficients"
> value we already use for the nearest neighbor filtering.
>
> Cc: Nemesa Garg <nemesa.garg@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>

BR,
Michał
--8323329-1846110227-1774604149=:330621--
