Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5A216BFF6
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 12:51:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 532A86EAA6;
	Tue, 25 Feb 2020 11:51:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18E1E89854;
 Tue, 25 Feb 2020 11:51:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 03:51:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,484,1574150400"; d="scan'208";a="284648547"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Feb 2020 03:51:24 -0800
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1j6YkH-0006h0-3f; Tue, 25 Feb 2020 13:51:25 +0200
Date: Tue, 25 Feb 2020 13:51:25 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200225115125.GG3839@platvala-desk.ger.corp.intel.com>
References: <20200225114454.337180-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225114454.337180-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t] perf: Avoid the regular
 drm_open_driver exithandler
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 25, 2020 at 11:44:54AM +0000, Chris Wilson wrote:
> Due to the way i915_perf_open() works, it installs a wakeref on the fd.
> This wakeref prevents the normal drm_open_driver() exithandler from
> returning (as that waits for all wakerefs to ensure the GPU is idle). We
> need to manually control the nesting of cleanup, and so need to use
> __drm_open_driver() to avoid the default exithandler.
> 
> References: https://gitlab.freedesktop.org/drm/intel/issues/1085#note_419148
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Petri Latvala <petri.latvala@intel.com>


> ---
>  tests/perf.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/tests/perf.c b/tests/perf.c
> index 7b11f668c..869e5f1e9 100644
> --- a/tests/perf.c
> +++ b/tests/perf.c
> @@ -4489,7 +4489,8 @@ igt_main
>  		 */
>  		igt_assert_eq(drm_fd, -1);
>  
> -		drm_fd = drm_open_driver(DRIVER_INTEL);
> +		/* Avoid the normal exithandler, our perf-fd interferes */
> +		drm_fd = __drm_open_driver(DRIVER_INTEL);
>  		igt_require_gem(drm_fd);
>  
>  		devid = intel_get_drm_devid(drm_fd);
> -- 
> 2.25.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
