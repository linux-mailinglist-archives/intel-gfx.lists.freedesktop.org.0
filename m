Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2D1ELfSl4GlZkgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 11:03:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E7940BF68
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 11:03:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DB1910E86F;
	Thu, 16 Apr 2026 09:03:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iaQ6oM0A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDB1B10E86B;
 Thu, 16 Apr 2026 09:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776330213; x=1807866213;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=tKR79W2coauzINztppMgXVidiXr4hWU40kBg3n8zqYk=;
 b=iaQ6oM0A4VgGa2BJtuVXCOjoqO0c1X397JzzgfD31sSRLm78VWEP3APp
 FPJmabvFMylwSLAcq+R/d6XUJmBY/vfRszb93vOGVnFSe/pioFjuEZqs5
 4MBr7fz6VkJToAjV6hJT9aTCBJBdaUCuZzRyhxlBQVx76e3nVbm4yUDiG
 s6dOTaG3rC6j/9hq0BGP3+2mTzyzFMXKQJYWbELhvdc5mbbKddgiL5i5Q
 Ha16H/jqZ29rQh/WoO1d7DDS5uRb2buJ+GJvU0aHi2DpsZ2q3AnRIQWK9
 3T2SljLGJMEutrPeMHs4J4esRUbK3yfUgUjVorQSXfxt+UIUO+kTsUZRI Q==;
X-CSE-ConnectionGUID: QE8N9ZkxQ2O+a8BJuBqKhA==
X-CSE-MsgGUID: G+8BjliFS06ZDbYNW6bLdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="99971658"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="99971658"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 02:03:31 -0700
X-CSE-ConnectionGUID: wp9/kQC2Qra/6BBcA+xEVA==
X-CSE-MsgGUID: vuHN9M0iR7O1VChxvBGklA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="228016603"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 02:03:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas
 Zimmermann <tzimmermann@suse.de>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Matthew Brost <matthew.brost@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, Oded Gabbay <ogabbay@kernel.org>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dim-tools@lists.freedesktop.org, Ville
 Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PULL] topic/pipe-reorder for drm-intel-next and possibly v7.1-rc1
In-Reply-To: <CAHk-=wjmTh4ESQE7ntR=ddF5JBToNerf4Dzt2zQQ2-Y3OEre-A@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <d69501d53c233386d70ed10290af24aafebf434f@intel.com>
 <CAHk-=wiAGevirr3=xC=u5_kN+m63JtjqA0C9NJLrd5PGrM0suw@mail.gmail.com>
 <CAHk-=wjmTh4ESQE7ntR=ddF5JBToNerf4Dzt2zQQ2-Y3OEre-A@mail.gmail.com>
Date: Thu, 16 Apr 2026 12:03:24 +0300
Message-ID: <12226307473a261449a177f4757633da946d3e3a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RSPAMD_URIBL_FAIL(0.00)[linux-foundation.org:query timed out];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:query timed out];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linux.intel.com,ursulin.net,intel.com,suse.de,kernel.org,lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 64E7940BF68
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 15 Apr 2026, Linus Torvalds <torvalds@linux-foundation.org> wrote:
> On Wed, 15 Apr 2026 at 09:28, Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
>>
>> I guess I'll test it just to verify, but if this fixes that known
>> issue I'm all for getting this fixed sooner rather than later.
>
> Well, that was easy enough. I assume this was expected, but I can
> indeed verify that that branch works for me as a replacement for (two
> versions) of the local patch I have been running for the last six
> months or so.

Yay, thanks for confirming it still works for you!

> And maybe I'm the only person on the planet that runs this setup, but
> it gets an ack from me. So I'm ok with a late pull as a fix, but
> somebody who can better judge the risks for other setups should
> eventually make the judgement call.

We've tested a similar setup locally, and a bunch of other setups in CI,
and haven't seen any issues. As far as real world scenarios go, I think
yours is as real as it gets. That said, we'll only really know once this
hits more end users... but I'm not sure if there's any benefit in
dragging this across another development cycle.

Dave, up to you then, will you take this through drm-next?


BR,
Jani.


-- 
Jani Nikula, Intel
