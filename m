Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2227A861D1A
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Feb 2024 21:00:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABD2410ECAF;
	Fri, 23 Feb 2024 20:00:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LvVoRKG/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CD9A10ECAF
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Feb 2024 20:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708718402; x=1740254402;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=rV1wGAaZDICHIgvaL3jk83GhiyxSjHA6rC+TDw3E0As=;
 b=LvVoRKG/OOfOQIwGiO91qOHvEx4vcVHQQak65bCS7gvyoO6XUkpXomcp
 ocMYWbPPuE3cz5q4jcf9j6UoNXjatk5qeDOQf2KRIpxwYGbv8Kn6m4qSr
 4ObJAGsoDYmZCURfz2lptXz+DTjZv5FPmubs46/ehhnn7HRjSm4JUGFj+
 EK5phWs+urZJS4kVf92bNbUkHuaJ/ERhkwRuFjqP9YYjOUBklYjQ4zGTR
 tcxkntO5LGJDiQcZLNwufi+HxEhmmV2nHeN5GgFAR0sSC4a7lPLJ7Qy+l
 9LlH9yHrtzn+eLum/9Y8AeNGUyBDOFFEalACslQO6j5eevRjI3EUhUSia A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10993"; a="13696545"
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; d="scan'208";a="13696545"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2024 12:00:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10993"; a="827767864"
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; d="scan'208";a="827767864"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 23 Feb 2024 11:59:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 23 Feb 2024 21:59:57 +0200
Date: Fri, 23 Feb 2024 21:59:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 07/12] drm/i915: Use drm_printer more extensively in
 intel_crtc_state_dump()
Message-ID: <Zdj5Pcx4WUe0GlxZ@intel.com>
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
 <20240215164055.30585-8-ville.syrjala@linux.intel.com>
 <ZdfDQaqmN39ZNft4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZdfDQaqmN39ZNft4@intel.com>
X-Patchwork-Hint: comment
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

On Thu, Feb 22, 2024 at 04:57:21PM -0500, Rodrigo Vivi wrote:
> On Thu, Feb 15, 2024 at 06:40:50PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Convert all the direct drm_dbg_kms() stuff in intel_crtc_state_dump()
> > over to drm_printf() since we now have the drm_printer around.
> 
> looking all this I ask myself if it is really a good idea
> to move from the debug helpers to the printf... we need
> to keep coming back to where the printer was defined to
> know what level we are printing...

The debug level is not really interesting at all. And it's
all the same anyway. 

Also we're going to need to go for the printer anyway if
we want to hook into the .atomic_state_print() stuff. And
at that point the printer will be provided by the caller.

-- 
Ville Syrjälä
Intel
