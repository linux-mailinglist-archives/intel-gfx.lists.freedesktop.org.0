Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3wgCEnaUO2rrZwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 10:25:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8806BC8CD
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 10:25:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=G8AQF1Hl;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5829A10E054;
	Wed, 24 Jun 2026 08:25:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8624B10E054;
 Wed, 24 Jun 2026 08:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782289523; x=1813825523;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=H0Nh18rKaZUWTwHRKkmujvZICFLPMLVDwPT4aZlWW/Y=;
 b=G8AQF1Hl292VlRy/A2zDrFiHoMWwv8PoFC45VIdEKxecBbpfE8bj7I7K
 ljTvgAsGgxT56bjjqkuGxhMaWJHWXvVOK6Y6Qz6doxtTfzjz7nANSM2gx
 Xo4g1yKsfvm9Ay7sbL/Ai31A/hOkeausCcG6wUVf9VZifD2MFysQPhaWV
 A2vE5VCKNOPtV0FXYLIYAej7YQAAgFXkxO2y1uZI0zPoj96WENDpjDjmR
 QaKDsAvkzF1G5fyqNYq+JtO6d6Dw38EhikoxL6zWGddxbBE5ur5i9Vy/C
 BwVL/idCadp72ABR7Sq/Lv8N0wDSX9e1kDD6X9uYSKIegb9HVJ0QNfyuM Q==;
X-CSE-ConnectionGUID: yOXwwAqGT9uqkhFFoYnLsg==
X-CSE-MsgGUID: ql/aPWuqR12PyOdrv242vg==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="82159676"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="82159676"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 01:25:23 -0700
X-CSE-ConnectionGUID: sFHeF1kyRLKzg3JOdf+ydQ==
X-CSE-MsgGUID: D/wEtb1fRvqNc4c98/E/Dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="245637221"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 01:25:21 -0700
Date: Wed, 24 Jun 2026 10:25:19 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
cc: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Mika Kahola <mika.kahola@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Nemesa Garg <nemesa.garg@intel.com>, Imre Deak <imre.deak@intel.com>
Subject: Re: [PATCH v1 00/30] Comments applied to dp_link_caps
In-Reply-To: <bd0e954b181d820e69a385b6698d596ce16f36f2@intel.com>
Message-ID: <8919278e-1c14-5079-3197-3a6df9688aeb@intel.com>
References: <20260623224619.1949975-1-michal.grzelak@intel.com>
 <bd0e954b181d820e69a385b6698d596ce16f36f2@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-152135737-1782289522=:605841"
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BA8806BC8CD

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-152135737-1782289522=:605841
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Wed, 24 Jun 2026, Jani Nikula wrote:
> On Wed, 24 Jun 2026, Michał Grzelak <michal.grzelak@intel.com> wrote:
>> To not block review of Imre's v2 of part2 series [1] I've applied my
>> comments on top of it since they are not critical to the overall design,
>> and can be looked afterwards; assuming they are at all valid :). Unlike
>> previous times, now those resended patches should be free from
>> disappointing mistakes like eg. duplication of From: tag or missing
>> Signed-off-by: of resender.
>
> Did you check with Imre before sending this?
>
> Usually it's best to let the person doing the upstreaming to keep
> posting new versions of their series at their own pace, instead of
> sending series on their behalf. If you have your own work that depends
> on the other person's changes, please just have patience, and keep them
> in a local branch until the dependencies have been merged.

Yet another mistake from my side since I haven't checked it with Imre.
Kind request to ignore this series and apologies for unnecessary
hastiness.

BR,
Michał

>
>
> BR,
> Jani.
>
>
> -- 
> Jani Nikula, Intel
>
--8323329-152135737-1782289522=:605841--
