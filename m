Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72676BCEC14
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Oct 2025 01:34:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49A6210E049;
	Fri, 10 Oct 2025 23:33:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NA4vHs0A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B51C10E049;
 Fri, 10 Oct 2025 23:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760139224; x=1791675224;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DOTj/IHUSroKkad/sSqhr9YpCod54iRNxzf8OzAs6Wo=;
 b=NA4vHs0AgqmcatstozfmInb3aUna9kNi8TvW7wE8yUgxDm5EJbq/UV2G
 ItwEcu8Iz7O7YkB8oCOPOwAaQqiaf1fHONr+wu+BgoUWH+6Vcix9SPVtl
 7W/3pvsca3cnpOjemYekhu9ho3m2VralLkkW+0UtJcZO6Z7xXP60rn+Zb
 sk62dWhdTqV5nOcRGqtGGcQdjT0UbtZgOmvb1pytu2RdUeX8yu1fd2oc3
 h0Svpt/yjAC4w/QVTwn7SgC08EyJAJk1jBFwGBW1r2To7AipkZM15sm9i
 YITwqUKwctZFxIjqLOZCw4C700TV8bBFg88SHhjxmZQW0UmqPCiggasgz w==;
X-CSE-ConnectionGUID: 7fbIorkySCK56kyxSG5rrw==
X-CSE-MsgGUID: Cp3aIcXvST6J/rDaS2vY3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11578"; a="62244788"
X-IronPort-AV: E=Sophos;i="6.19,220,1754982000"; d="scan'208";a="62244788"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 16:33:44 -0700
X-CSE-ConnectionGUID: qyTwuoK9StqzL7kZEhIH3Q==
X-CSE-MsgGUID: 29sw5lOrSgujAzOXB+p9Vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,220,1754982000"; d="scan'208";a="185350156"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.174])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 16:33:43 -0700
Date: Sat, 11 Oct 2025 02:33:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/8] drm/i915: Drop the min plane width w/a adl+
Message-ID: <aOmX00H3rqm5W9cC@intel.com>
References: <20251009211313.30234-1-ville.syrjala@linux.intel.com>
 <20251009211313.30234-3-ville.syrjala@linux.intel.com>
 <20251009223819.GD1207432@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251009223819.GD1207432@mdroper-desk1.amr.corp.intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Thu, Oct 09, 2025 at 03:38:19PM -0700, Matt Roper wrote:
> On Fri, Oct 10, 2025 at 12:13:06AM +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > ADL+ no longer need the plane min width w/a (Wa_14011264657 or
> 
> Nitpick:  For clarity you might want to write this as "ADL-P and beyond"
> since ADL-S (which uses display version 12) actually does still need
> Wa_14011264657.

I always follow the bspec convention: ADL is the real ADL (ADL-P/N,
RPL-something or another). Bspec doesn't even know what ADL-P is.

And ADL-S I don't even think about. It's just a TGL in my book.
Except in those rare special cases where there is a real difference,
like with the PHYs.

-- 
Ville Syrjälä
Intel
