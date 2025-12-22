Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F92CD6264
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 14:28:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54DC510E5D8;
	Mon, 22 Dec 2025 13:28:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hYQzZP5i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14A8710E2A5;
 Mon, 22 Dec 2025 13:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766410107; x=1797946107;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=2kpMUefKWHy8N6klq1+b+YQARPKvwQcxfBqHYEwuIfI=;
 b=hYQzZP5iqcucz8EtVaqEPIb/HZVoSuYphTGm9e8LGXPK+eTKuojiFejp
 +T90JL+xBpq6/6lZCkNe3HVSKS10xKfGOrImtanTNx+iXxJFLIniM94qM
 HN4B15h7aTUZU0qZcYN7zzGj7eKmr5KOGiV0fVOlZpR2TAn+5+TNBFu55
 GpC5xRwQ8xYfqvj2KDPxLNNEmslzjJy6cit29zJve8mAn9nPtJe/RcO7c
 RhgiH6CjHhySL/luqLiQysW/U6pB8EWLB62qtkE+GOZOFYtIXpvVHRvjT
 79KP3vGq//NzAiUdCe/9PZ+4KumRe2ZQJSflO47cJ9OW7VRYF89364CNf w==;
X-CSE-ConnectionGUID: scqmWz9aQ4qIb2Iv4H8eGw==
X-CSE-MsgGUID: yi0ulOkSTx6QCxfAvMnh7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="93734845"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="93734845"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 05:28:26 -0800
X-CSE-ConnectionGUID: LjZYrJG/SUKgYodRDhg3EQ==
X-CSE-MsgGUID: rathrCXEQ56iYhVxmQdU4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="198760983"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 05:28:25 -0800
Date: Mon, 22 Dec 2025 14:28:23 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 1/4] drm/i915: remove unused dev_priv local variable
In-Reply-To: <222871a73efbe1049862d11a03abf253611e46b1.1766406794.git.jani.nikula@intel.com>
Message-ID: <07291b73-9a3b-b5ef-d5c1-cd2048f61ee9@intel.com>
References: <cover.1766406794.git.jani.nikula@intel.com>
 <222871a73efbe1049862d11a03abf253611e46b1.1766406794.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-355438775-1766410106=:1478141"
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-355438775-1766410106=:1478141
Content-Type: text/plain; format=flowed; charset=ISO-8859-2
Content-Transfer-Encoding: 8BIT

On Mon, 22 Dec 2025, Jani Nikula wrote:
> Since commit 35ec71285c93 ("drm/i915/pc8: Add parent interface for PC8
> forcewake tricks"), the __maybe_unused dev_priv has become definitely
> unused. Remove, along with the i915_drv.h include.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--8323329-355438775-1766410106=:1478141--
