Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB80C57C32
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 14:45:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 901B210E81A;
	Thu, 13 Nov 2025 13:45:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n1Dq4+zL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7050010E81A;
 Thu, 13 Nov 2025 13:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763041556; x=1794577556;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=SXxeYl3K4pd/sn2w5+b8MuZTbmcl6AJwJpgwdKOVvJ0=;
 b=n1Dq4+zLUXUcBn/tqcL4QrR5m4CefQFwVG1yDsFPs4awma9rYYazlpB5
 rJQvuJxqPJiU3h/kDomjD1O2Qo7OYaH5s0/7lNSPVul5VcmzK/vVm+qOn
 uBIcB7IF7niMALRRFgFzlkh4qbe57nSVcizYYxqLM2B1Sw+SPLvsvAvpd
 Fz2OH6cx7VzYVbbnzSyuzNp0OxuKlXdqKYdS8S2I4mzXrSRFlB5lw7DGo
 j4SUURmSwiGO88FdLSyFOwGU3LIVAi2FZg2eRZ2lreWPzV3F5w1NRcJ9L
 QTRmQcE0TupIaRU5KMjUGHQJH984CSasGeRnzGz/T04xWfFwasYDqLH4H g==;
X-CSE-ConnectionGUID: S/E3pUAQRaSz5OJXioQ2YQ==
X-CSE-MsgGUID: 1H28LFLZShuEDqieVM/nfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="67722222"
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="67722222"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 05:45:56 -0800
X-CSE-ConnectionGUID: TO0Sl+liQUS/2k3xl65rLA==
X-CSE-MsgGUID: RDqikSdKThSvlYM9BlDYiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="189684763"
Received: from aotchere-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 05:45:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 uma.shankar@intel.com
Subject: Re: [PATCH 5/8] drm/i915/dram: convert to struct intel_display
In-Reply-To: <aRXfqt3OMWs6emKW@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1763027774.git.jani.nikula@intel.com>
 <cc7e5fe8a73296dae9fd162c51fbcbd3b7e52147.1763027774.git.jani.nikula@intel.com>
 <aRXfqt3OMWs6emKW@intel.com>
Date: Thu, 13 Nov 2025 15:45:51 +0200
Message-ID: <e4f348f5d56fbd015b682ff90c15c93e35a5cba3@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 13 Nov 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> I was wondering if we have any situations here where the display
> vs. graphics ver differs, but can't immediately think of anything
> that would go wrong here. So seems fine.

Ditto. Fingers crossed. ;)

> I think we should land https://patchwork.freedesktop.org/series/156793/
> before this one though, just in case we late discover that we need
> a stable backport of it.

Ack.


--=20
Jani Nikula, Intel
