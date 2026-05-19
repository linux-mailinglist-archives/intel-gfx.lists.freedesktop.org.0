Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QBfjC8gzDGo5ZwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 11:56:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0197157BB51
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 11:56:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1778010E115;
	Tue, 19 May 2026 09:56:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kOFWEcrU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7C9F10E103;
 Tue, 19 May 2026 09:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779184579; x=1810720579;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uKwKXHqT+Qtz3a1LzVnNhstJ7shEY0GbecWpdhxqwr4=;
 b=kOFWEcrUqmQ1tZcHw4TiFngn3FujKv8ed+NWmjH1v9hsG9ghfQzw2wxZ
 L4INitm9hVNJKZfJWTcfXv6SbfdqNAXK2YEQ1gtmjOHbqMM0kLeZnul6+
 0mq43vpITulsiIgSp/cx+qrEp2xh26fXdg5iba8P0c6iQg5tf7dIGTBEf
 hfKL7CiUFXntWLHKlXY/5jhAXurDCTwDLwiPqhfr1J7hvjUxXZQt4pB/e
 KHcR0pZt9EawZLJpMH+PW8WbzDl+2KyKmcbGlBHC/EZMjRXmBEeXiD9t8
 Ja03lvamP8ub4h0gyVV1WlXn0gijUT6ZK4YsKYd5TQGKcrP7x6wmUrYJD g==;
X-CSE-ConnectionGUID: gLm04r+KQA6yVy00mehFiw==
X-CSE-MsgGUID: cCkpDJz7RYu6qA2Ma3qfkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="80109259"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="80109259"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 02:56:19 -0700
X-CSE-ConnectionGUID: GbeULT+pQeCpwoM416LNEg==
X-CSE-MsgGUID: qN++TJVkTbWdJm7fQ9f0Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="238731009"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.209])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 02:56:14 -0700
Date: Tue, 19 May 2026 11:56:09 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Christian =?iso-8859-15?Q?K=F6nig?= <christian.koenig@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Thomas =?iso-8859-15?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH v2] drm/i915: Fix potential UAF in TTM object purge
Message-ID: <agwzuRUxpm37N5r3@ashyti-mobl2.lan>
References: <20260508122612.469227-2-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260508122612.469227-2-janusz.krzysztofik@linux.intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gitlab.freedesktop.org:url,ashyti-mobl2.lan:mid];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 0197157BB51
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Janusz,

On Fri, May 08, 2026 at 02:23:51PM +0200, Janusz Krzysztofik wrote:
> TLDR: The bo->ttm object might be changed by calling ttm_bo_validate(),
>       move casting it to an i915_tt object later to actually get the right
>       pointer.
> 
> A user reported hitting the following bug under heavy use on DG2:
>     why the change is necessary (Christian).

...

> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/14882
> Fixes: 7ae034590ceae ("drm/i915/ttm: add tt shmem backend")
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Cc: stable@vger.kernel.org # v5.17+
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: "Thomas Hellström" <thomas.hellstrom@linux.intel.com>
> Cc: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> Cc: "Christian König" <christian.koenig@amd.com>

merged to drm-intel-gt-next.

Thanks,
Andi
