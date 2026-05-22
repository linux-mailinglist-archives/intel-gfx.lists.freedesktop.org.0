Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SIObBETiEGp5fAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2026 01:09:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 787E25BB5D0
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2026 01:09:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A6FE10E29D;
	Fri, 22 May 2026 23:09:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z7iv88fZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 117E510E579;
 Fri, 22 May 2026 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779491393; x=1811027393;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=bHOzWjmnns4DSlJkzVhdZR7TXbpwauIL/1xHcPW5hX8=;
 b=Z7iv88fZ0Hpvr5hVNF0ml81L/y5JYn5UYF+Nt/dvUydvhJ1jfsFUxrky
 +u7XZO0KXFric8VknsDjeNjKxRJFODoBd8SMsKwDWWwU6WzVdai1nZMEg
 KMU9uvWWPXyW/e42NVtUT9ryu6pdeufRGX6azH3a7rFL6aA8pUVQDTXzZ
 0vw5upzafZ7wNKMeWPss9SUCDND/rW/xoI9EiJKoN+nfyHW2PwxXXBOaZ
 2ZdBPA0U3jS2+udZFSCTs5ThsZCE6vIGi9cZsnwT1wD1w+7/mE78jGy27
 lZbLMywx4o+1Zwy3f8O4mdsp4CPosWoPxNb/ibKSyEi1Xhw60CF4QWDYv g==;
X-CSE-ConnectionGUID: MtyMRETnRgeH25D3/8XPzw==
X-CSE-MsgGUID: NhdERFtyQTm2SgUrPbZJ7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="91812259"
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="91812259"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 16:09:52 -0700
X-CSE-ConnectionGUID: JKWuOpjdR/mF902Y8G9KsQ==
X-CSE-MsgGUID: AcfXSgr/TCiwWiqNHMFEtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="242846738"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 16:09:51 -0700
Date: Sat, 23 May 2026 01:09:49 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Leandro Ribeiro <leandro.ribeiro@collabora.com>
Subject: Re: [PATCH] drm/i915: Add the blend mode property to all planes that
 support alpha blending
In-Reply-To: <20260522194935.27411-1-ville.syrjala@linux.intel.com>
Message-ID: <49b74707-e537-a96a-856c-119106a0697d@intel.com>
References: <20260522194935.27411-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-818621189-1779490872=:1544314"
Content-ID: <ccabacc6-c6ad-0b71-242d-b13efd54d166@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,collabora.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 787E25BB5D0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-818621189-1779490872=:1544314
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <be373144-1671-335c-ef1f-005dd3a1d4a0@intel.com>

On Fri, 22 May 2026, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Currently only SKL+ universal planes have the blend mode property.
> Assuming it now becomes mandatory for all planes that support
> alpha blending we need to add it to cursors on all platforms,
> and VLV/CHV primary/sprite planes.
>
> TODO: For VLV/CHV primary/sprite planes we could fairly easily
> implement DRM_MODE_BLEND_PIXEL_NONE by remapping the A format
> to the corresponding X format, and on CHV pipe B (but not pipes
> A/C) we could probably even implement DRM_MODE_BLEND_COVERAGE.
>
> Cc: Leandro Ribeiro <leandro.ribeiro@collabora.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--8323329-818621189-1779490872=:1544314--
