Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8F95A81DE
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 17:42:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9131310E2B3;
	Wed, 31 Aug 2022 15:41:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B33410E2B3
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Aug 2022 15:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661960516; x=1693496516;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=578jw5ZvE6kEzUX11ZiCklVDuoOL6zVAKLk0zWJVu9U=;
 b=AFz3p59yGHlcMKdTGNEYFTZBI92X0ZkaY1KWQMG/TiSxq5cIEIoRl9Y0
 +GxeOdQ1T1mov2IQfIwkELpIswfqtNBxWl8ZLxzM+PjkCINrvXKY81G+n
 DGEcYspTBDMCgAULn4R10ftCehlIf9/GS/sh4tRhS/wUsXwgbx/4KhOUW
 r8DRfcpE8Gh2rAVShXdlY9s3XLDQ/4IbYSsbtWqHoCE1BVu7V0cdthtlX
 3Lzuenx2p0dVAk+IoriMjAeVo/t2ndDfBbLenj/Ln3QiSHCPDki0HeWXr
 v8u2eTKL0HK6SiKRA3QIC8XGM5+wYBO9P7lKIRyap3SLVva0MeKOXsHd0 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="282450496"
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="282450496"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 08:41:51 -0700
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="673401769"
Received: from nprotaso-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.43.15])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 08:41:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <d5423f1d-bc51-177d-bd1a-143b129e4ff1@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220830093411.1511040-1-jani.nikula@intel.com>
 <d5423f1d-bc51-177d-bd1a-143b129e4ff1@intel.com>
Date: Wed, 31 Aug 2022 18:41:39 +0300
Message-ID: <87ler4cte4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 1/5] drm/i915/crt: remove BUG_ON()
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

On Wed, 31 Aug 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
> On 30.08.2022 11:34, Jani Nikula wrote:
>> Avoid BUG_ON(). We don't have such checks on output type anywhere else
>> either, so just remove.
>>=20
>> Suggested-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Thanks for the reviews, pushed to drm-intel-next.

BR,
Jani.

--=20
Jani Nikula, Intel Open Source Graphics Center
