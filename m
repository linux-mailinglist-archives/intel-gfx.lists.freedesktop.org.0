Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3529AB1A4
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 17:04:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E08210E698;
	Tue, 22 Oct 2024 15:04:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k4EG+rp5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34EA610E698;
 Tue, 22 Oct 2024 15:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729609482; x=1761145482;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=5it7bNm7opB0Z0GFB9KvyQdzjJkd37T1KxURSl8f384=;
 b=k4EG+rp5y1pSqMV1AJqXrl1jfw1GjZ8IqF9we+neXK9Sb5fEgFgXumNC
 8UoS9PZU8Cw4c3HH+FUrrSMHEkdvzMBIWxOSh6PGgcYdizDPW7UOeuo4g
 H0B5tUyMwwwpeYHpn64EK34EjbzKM3GHpa5vKkTI2y2M4gGFKcd1qOcju
 DJ6b8Vwp2eMawi5l+ASSTlvsTP7SzYo7d3zZWIx6nC7OeMn8a3+/NwcsK
 KLccPCB+XVwnnseSpPOO9PLUivNOewnJICGZTGaUqpsZfSCtsDMHFhR5O
 nIW/Kt/L5Lh0Au3V1fUm3jw/HROQuOC1FTzMugnJO8Qa74uDzA2eHqIFB Q==;
X-CSE-ConnectionGUID: +tcz9CcZQfeGVUP9R3RulA==
X-CSE-MsgGUID: MHF3woA4Rcuh8dIkBVDzUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="29260256"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="29260256"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 08:04:42 -0700
X-CSE-ConnectionGUID: aj//eZ3gSd6mC8/xj1sosA==
X-CSE-MsgGUID: YULvv7CwR8W8+Y6ydtGXLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="83880113"
Received: from carterle-desk.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.31])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 08:04:39 -0700
Date: Tue, 22 Oct 2024 17:04:36 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas =?iso-8859-15?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH v2 0/3] drm/i915 & drm/xe: shared PCI ID macros
Message-ID: <Zxe_BOBoy8H_ub09@ashyti-mobl2.lan>
References: <cover.1729590029.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1729590029.git.jani.nikula@intel.com>
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

Hi Jani,

> Jani Nikula (3):
>   drm/i915/pciids: add PVC PCI ID macros
>   drm/intel/pciids: rename i915_pciids.h to just pciids.h
>   drm/xe: switch to common PCI ID macros

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
