Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9271931BB3D
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Feb 2021 15:38:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E08B6E51D;
	Mon, 15 Feb 2021 14:38:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B15AE6E28A;
 Mon, 15 Feb 2021 14:38:01 +0000 (UTC)
IronPort-SDR: 13IZZUA3BJ9Jg4t9XHS9sFeRjkOG861cRbVHjhQDovy6Ww5uSDgMhEJYpTz/hdT4bIxB5HFs2J
 3rEze9yGYo5g==
X-IronPort-AV: E=McAfee;i="6000,8403,9895"; a="161832766"
X-IronPort-AV: E=Sophos;i="5.81,180,1610438400"; d="scan'208";a="161832766"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2021 06:38:00 -0800
IronPort-SDR: 5G8UVXefhcghHCN5eZ/Jau7JxqKQnqEhDlAhzJFDDDqpdGCxOwiDwXnHQUq21bhQHRB6bO3MsA
 uHOLp8d45o9Q==
X-IronPort-AV: E=Sophos;i="5.81,180,1610438400"; d="scan'208";a="399097442"
Received: from martincl-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.34.223])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2021 06:37:53 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Mikita Lipski <mikita.lipski@amd.com>, Eryk Brol <eryk.brol@amd.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 "David S. Miller" <davem@davemloft.net>,
 Rahul Lakkireddy <rahul.lakkireddy@chelsio.com>,
 Francis Laniel <laniel_francis@privacyrequired.com>,
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 netdev@vger.kernel.org
In-Reply-To: <20210215142137.64476-1-andriy.shevchenko@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210215142137.64476-1-andriy.shevchenko@linux.intel.com>
Date: Mon, 15 Feb 2021 16:37:50 +0200
Message-ID: <87y2fpbdmp.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v1 1/3] string: Consolidate yesno() helpers
 under string.h hood
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
Cc: Raju Rangoju <rajur@chelsio.com>, Leo Li <sunpeng.li@amd.com>,
 David Airlie <airlied@linux.ie>, Jakub Kicinski <kuba@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Harry Wentland <harry.wentland@amd.com>,
 Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 15 Feb 2021, Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:
> We have already few similar implementation and a lot of code that can benefit
> of the yesno() helper.  Consolidate yesno() helpers under string.h hood.

Good luck. I gave up after just four versions. [1]

Acked-by: Jani Nikula <jani.nikula@intel.com>


BR,
Jani.


[1] http://lore.kernel.org/r/20191023131308.9420-1-jani.nikula@intel.com


>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  .../drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c    |  6 +-----
>  drivers/gpu/drm/i915/i915_utils.h                    |  6 +-----
>  drivers/net/ethernet/chelsio/cxgb4/cxgb4_debugfs.c   | 12 +-----------
>  include/linux/string.h                               |  5 +++++
>  4 files changed, 8 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c
> index 360952129b6d..7fde4f90e513 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c
> @@ -23,6 +23,7 @@
>   *
>   */
>  
> +#include <linux/string.h>
>  #include <linux/uaccess.h>
>  
>  #include <drm/drm_debugfs.h>
> @@ -49,11 +50,6 @@ struct dmub_debugfs_trace_entry {
>  	uint32_t param1;
>  };
>  
> -static inline const char *yesno(bool v)
> -{
> -	return v ? "yes" : "no";
> -}
> -
>  /* parse_write_buffer_into_params - Helper function to parse debugfs write buffer into an array
>   *
>   * Function takes in attributes passed to debugfs write entry
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index abd4dcd9f79c..e6da5a951132 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -27,6 +27,7 @@
>  
>  #include <linux/list.h>
>  #include <linux/overflow.h>
> +#include <linux/string.h>
>  #include <linux/sched.h>
>  #include <linux/types.h>
>  #include <linux/workqueue.h>
> @@ -408,11 +409,6 @@ wait_remaining_ms_from_jiffies(unsigned long timestamp_jiffies, int to_wait_ms)
>  #define MBps(x) KBps(1000 * (x))
>  #define GBps(x) ((u64)1000 * MBps((x)))
>  
> -static inline const char *yesno(bool v)
> -{
> -	return v ? "yes" : "no";
> -}
> -
>  static inline const char *onoff(bool v)
>  {
>  	return v ? "on" : "off";
> diff --git a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_debugfs.c b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_debugfs.c
> index 7d49fd4edc9e..c857d73abbd7 100644
> --- a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_debugfs.c
> +++ b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_debugfs.c
> @@ -34,6 +34,7 @@
>  
>  #include <linux/seq_file.h>
>  #include <linux/debugfs.h>
> +#include <linux/string.h>
>  #include <linux/string_helpers.h>
>  #include <linux/sort.h>
>  #include <linux/ctype.h>
> @@ -2015,17 +2016,6 @@ static const struct file_operations rss_debugfs_fops = {
>  /* RSS Configuration.
>   */
>  
> -/* Small utility function to return the strings "yes" or "no" if the supplied
> - * argument is non-zero.
> - */
> -static const char *yesno(int x)
> -{
> -	static const char *yes = "yes";
> -	static const char *no = "no";
> -
> -	return x ? yes : no;
> -}
> -
>  static int rss_config_show(struct seq_file *seq, void *v)
>  {
>  	struct adapter *adapter = seq->private;
> diff --git a/include/linux/string.h b/include/linux/string.h
> index 9521d8cab18e..fd946a5e18c8 100644
> --- a/include/linux/string.h
> +++ b/include/linux/string.h
> @@ -308,4 +308,9 @@ static __always_inline size_t str_has_prefix(const char *str, const char *prefix
>  	return strncmp(str, prefix, len) == 0 ? len : 0;
>  }
>  
> +static inline const char *yesno(bool yes)
> +{
> +	return yes ? "yes" : "no";
> +}
> +
>  #endif /* _LINUX_STRING_H_ */

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
