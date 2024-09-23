Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2E197E84C
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 11:14:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27ECD10E3BD;
	Mon, 23 Sep 2024 09:14:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CwJBx/qW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8415B10E3BC;
 Mon, 23 Sep 2024 09:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727082839; x=1758618839;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=WW8JWVoR4ouks8zS5JKJMs0B3U/1aAGyJfi9gRa5NOU=;
 b=CwJBx/qWilEK2dFwe8p80SagDpK49xB44iFKPttqpdOsLFICMPz29ON5
 1bE19Pbsk8gZZBwRFe4lU3cUu41FV7vkQNAbWc56EH1nWhmz6XpQw8wjH
 QINfnSdV2KNSQ8NXFezzdFffp+3CfVogd+W64dmsab0wl4XpJ/f+fUkAV
 LezfElLfq6HmJV3nf9kDfaIfLm8J5PTtf29BFbodfh1WJ2377kqFxORhV
 P6ul3kRi05y3QCt1chd/3iRq5R4dzPaL5DRxtT944aPysl/hY9FMTDi5O
 WA2w/lRDAkTLtqIHMdR1Azb56jmD2OIUUOp+09CZorRCsCSZWTiLZuPF0 w==;
X-CSE-ConnectionGUID: JxDPCFg1TXSpp4I3vZ0A9Q==
X-CSE-MsgGUID: ayms/gk5SAaegwgIH92J1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="25499892"
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="25499892"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 02:13:58 -0700
X-CSE-ConnectionGUID: cl0p7NgTQIG7lyWG7AQ5mA==
X-CSE-MsgGUID: ev+Z+f3PS1GCt2OGWqpO+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="75950464"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 02:13:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 5/5] drm/i915/bios: Extract soc/intel_rom.c
In-Reply-To: <Zu2qr4hk5eelFboL@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240910134219.28479-1-ville.syrjala@linux.intel.com>
 <20240910134219.28479-6-ville.syrjala@linux.intel.com>
 <87v7z1f3db.fsf@intel.com> <Zu2qr4hk5eelFboL@intel.com>
Date: Mon, 23 Sep 2024 12:13:53 +0300
Message-ID: <87cyku7mwe.fsf@intel.com>
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

On Fri, 20 Sep 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Sep 12, 2024 at 03:44:32PM +0300, Jani Nikula wrote:
>> Just nitpicking, but should this (and rom reads above) now sanity check
>> offset+size against rom->size? IDK if it's worth it for such a simple
>> thing. The caller is supposed to know what it's doing.
>
> I considered that but decided to cut my losses before I
> end up designing a whole new kernel subsystem.

Good call. :)

BR,
Jani.


--=20
Jani Nikula, Intel
