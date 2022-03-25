Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 253D84E7A2D
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 19:11:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7DC610E765;
	Fri, 25 Mar 2022 18:11:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 926E910E928
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 18:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648231862; x=1679767862;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DWwRWNZ6Soq08JkV5pt7o9o3reUFU04FQ3bdNefae+8=;
 b=KGcYuhx3Co8AsrUDlgwdCbtY7/MeJe1cSHhIu/LZOItYhIkZQRm1aNz1
 eHyY8/wbgCpNM5EXYo7gcWsbhKlFbNyITwAJ0jDlfN+9tAOVpONpFH9ao
 Geb/kXrYc4n19QULFl+m8ew0ELk3r8N9dPt9SFJRRL1apDoZAD8OixY3k
 FC7uLNze0XG8n2wYcg81HYK5JA03WBQhyttBpAHqJa8ysC4wL3p19SHnE
 yZb5WWa9O+PcDqj4TKtPRbiKk/1i/xARS/snpvCf0kqKnEctbrbi9VP5v
 ouI4sGplTHgE0JqV/KN7xm7oQeCbl1e1XiwcFH7UFiR0FgHVKnVGShdZh A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10297"; a="345126106"
X-IronPort-AV: E=Sophos;i="5.90,211,1643702400"; d="scan'208";a="345126106"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 11:11:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,211,1643702400"; d="scan'208";a="602129421"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga008.fm.intel.com with SMTP; 25 Mar 2022 11:11:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Mar 2022 20:10:59 +0200
Date: Fri, 25 Mar 2022 20:10:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <Yj4Fs+aPJnaD77nI@intel.com>
References: <20220325153436.95045-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220325153436.95045-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] docs: gpu: i915.rst: Update DRRS functions
 names
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 25, 2022 at 08:34:36AM -0700, José Roberto de Souza wrote:
> intel_drrs_enable and intel_drrs_disable where renamed to
> intel_drrs_activate and intel_drrs_deactivate in commit
> 54903c7a6b40 ("drm/i915: s/enable/active/ for DRRS").
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  Documentation/gpu/i915.rst | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
> index bcaefc952764e..ab596b0a9f259 100644
> --- a/Documentation/gpu/i915.rst
> +++ b/Documentation/gpu/i915.rst

Oh that's whete it's coming from.

> @@ -187,10 +187,10 @@ Display Refresh Rate Switching (DRRS)
>     :doc: Display Refresh Rate Switching (DRRS)
>  
>  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
> -   :functions: intel_drrs_enable
> +   :functions: intel_drrs_activate

Hmm. Can't we just nuke all these explicit references and let the
tooling pull in all of it automagically since there's nothing
else in that file?

>  
>  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
> -   :functions: intel_drrs_disable
> +   :functions: intel_drrs_deactivate
>  
>  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
>     :functions: intel_drrs_invalidate
> -- 
> 2.35.1

-- 
Ville Syrjälä
Intel
