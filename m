Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2A31808C4
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 21:08:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DD266E39C;
	Tue, 10 Mar 2020 20:08:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 391F86E39C
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 20:08:35 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 13:08:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,538,1574150400"; d="scan'208";a="441421265"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by fmsmga005.fm.intel.com with ESMTP; 10 Mar 2020 13:08:34 -0700
Date: Tue, 10 Mar 2020 13:08:34 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20200310200834.GE9651@orsosgc001.amr.corp.intel.com>
References: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
 <20200303221905.25866-7-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303221905.25866-7-umesh.nerlige.ramappa@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915/perf: add interrupt enabling
 parameter
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 03, 2020 at 02:19:04PM -0800, Umesh Nerlige Ramappa wrote:
>From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>
>This let's the application choose to be driven by the interrupt
>mechanism of the HW. In conjuction with long periods for checks for
>the availability of data on the CPU, this can reduce the CPU load when
>doing capture of OA data.
>
>v2: Version the new parameter (Joonas)
>v3: Rebase (Umesh)
>
>Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>---
> drivers/gpu/drm/i915/i915_perf.c | 58 +++++++++++++++++++++++---------
> include/uapi/drm/i915_drm.h      | 10 ++++++
> 2 files changed, 53 insertions(+), 15 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>index 502961da840d..ab41cba85b40 100644
>--- a/drivers/gpu/drm/i915/i915_perf.c
>+++ b/drivers/gpu/drm/i915/i915_perf.c
>@@ -252,7 +252,7 @@
>  * oa_buffer_check().
>  *
>  * Most of the implementation details for this workaround are in
>- * oa_buffer_check_unlocked() and _append_oa_reports()
>+ * oa_buffer_check() and _append_oa_reports()
>  *
>  * Note for posterity: previously the driver used to define an effective tail
>  * pointer that lagged the real pointer by a 'tail margin' measured in bytes
>@@ -447,8 +447,9 @@ static u32 gen7_oa_hw_tail_read(struct i915_perf_stream *stream)
> }
>
> /**
>- * oa_buffer_check_unlocked - check for data and update tail ptr state
>+ * oa_buffer_check - check for data and update tail ptr state
>  * @stream: i915 stream instance
>+ * @lock: whether to take the oa_buffer spin lock
>  *
>  * This is either called via fops (for blocking reads in user ctx) or the poll
>  * check hrtimer (atomic ctx) to check the OA buffer tail pointer and check
>@@ -470,8 +471,9 @@ static u32 gen7_oa_hw_tail_read(struct i915_perf_stream *stream)
>  *
>  * Returns: %true if the OA buffer contains data, else %false
>  */
>-static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>+static bool oa_buffer_check(struct i915_perf_stream *stream, bool lock)

Hi Lionel,

All callers seem to set the lock to true when calling oa_buffer_check().  
Do you recall why the parameter was introduced?  If not, we probably 
want to remove this change.

Thanks,
Umesh
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
