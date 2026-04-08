Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPWTIto41mlZBwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 13:15:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 181A33BB230
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 13:15:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66BF989ABE;
	Wed,  8 Apr 2026 11:15:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bVkOQ6y5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1EF689ABE
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 11:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775646934; x=1807182934;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=0LvS7Gz72RsVAzAnNLjH8DaHOXkdV5aeEXOQnrm2RSE=;
 b=bVkOQ6y5Bh5fWjeB9rBIVKlq5ROgRkq/p/JXP7gzq5XWrbZpc/ujrsYg
 S/olE9/8BFwqPcDeDWD4FbIMH0J2fIXWcADifIgqEq9uq3NrqQPR5Y4dl
 9gZSx5A16K0HGdPpu8HRo1rmdq4z5umfEigYDsPz+iBHpT47Q6cVrNTqK
 Fh/Fw4wawwG2Szl4NYI+O6TiG3VEKIvyRz+rS7/teS3KG03CGEpl8NE3C
 /DBxa/mNL3VB7xxO9Wipkp5Qx5wqHVpmwP7f+HcRHoqINaXGydIe9TqjD
 0xqprdW3cuq7utzup0Hdh3AlKY/jXt0q44mAlsa4w6ufe1FCiYeYyYsqL g==;
X-CSE-ConnectionGUID: hWs5wZhQRXikL1UV7TWLhA==
X-CSE-MsgGUID: R8MXuf6/RZWEaDlJQMOCBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="76697007"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="76697007"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 04:15:34 -0700
X-CSE-ConnectionGUID: G+iJUAr6TTCSKfLGi06WJg==
X-CSE-MsgGUID: eLlVkwxEREeeb0zShVdG7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="233317400"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.1])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 04:15:31 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAHk-=wjcSt1gGnQZoyNvodky_6WEDxC=1+gQHywiOvOjw1+GUA@mail.gmail.com>
References: <20260324151741.29338-1-sosohero200@gmail.com>
 <acUnQkniqECI0QVY@intel.com>
 <CAHk-=wj=h9z-Qp+xm1oSURRGHO3wexzG7MyLqU8gSQbastwgdw@mail.gmail.com>
 <177557988645.129480.6094289548721099346@jlahtine-mobl>
 <CAHk-=wjcSt1gGnQZoyNvodky_6WEDxC=1+gQHywiOvOjw1+GUA@mail.gmail.com>
Subject: Re: [PATCH v2] [PATCH v2] drm/i915/gem: Fix UAF race in
 eb_relocate_vma
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Dave Airlie <airlied@gmail.com>,
 Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Yassine Mounir <sosohero200@gmail.com>, g@web.codeaurora.org,
 gregkh@linuxfoundation.org, intel-gfx@lists.freedesktop.org,
 rodrigo.vivi@intel.com, security@kernel.org,
 Simona Vetter <simona.vetter@ffwll.ch>
To: Linus Torvalds <torvalds@linuxfoundation.org>
Date: Wed, 08 Apr 2026 14:15:28 +0300
Message-ID: <177564692857.84154.3119637094332266143@jlahtine-mobl>
User-Agent: alot/0.12.dev7+g16b50e5f
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:ville.syrjala@linux.intel.com,m:sosohero200@gmail.com,m:g@web.codeaurora.org,m:gregkh@linuxfoundation.org,m:rodrigo.vivi@intel.com,m:security@kernel.org,m:simona.vetter@ffwll.ch,m:torvalds@linuxfoundation.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[gmail.com,linux.intel.com,web.codeaurora.org,linuxfoundation.org,lists.freedesktop.org,intel.com,kernel.org,ffwll.ch];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim]
X-Rspamd-Queue-Id: 181A33BB230
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Quoting Linus Torvalds (2026-04-07 19:46:42)
> So I'd suggest just fixing the bugs that are noticed, and giving
> credit appropriate to how good the report was.

I've sent out v3 of the patch[1]. I think it should be fine for you to
simply drop or revert the version you included in -rc7.

As per Sima's analysis attached to the patch, the race for wrong VM
has not been possible to hit since 2021. And the refcount error
potentially leading to UAF accordingly is only relevant for drm-tip
codebase between 2020 and 2021.

So instead of being included in -fixes reverting your version and
allowing the v3 patch to get merged through normal means to v7.1 would
be better in case there happens to be some regression. It can then be
backported to the old kernels accordingly.

Regards, Joonas

[1] https://lore.kernel.org/intel-gfx/20260408110551.84120-1-joonas.lahtine=
n@linux.intel.com/

>=20
>            Linus
