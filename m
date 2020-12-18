Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1BC2DE2E4
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 13:43:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC4ED6E096;
	Fri, 18 Dec 2020 12:43:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35A1C6E096
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 12:43:51 +0000 (UTC)
IronPort-SDR: Px1Bl3MrnoXL9uTj2gNp5S0I6oTWpRWGpCXZ1lTpAcgafkDolIoYyPC3Lh0ZmTdfxI+E5k6az3
 HjInq1Jh1VSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="163164568"
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="163164568"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 04:43:50 -0800
IronPort-SDR: slDeQOXa5t3FGIEfgKDueOtYsLen4BzbY0kz36f7KDsFsgD6bb96aesUDlPkudgctIz4XBB/Ku
 XH8Zidx3Gcmg==
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="380433609"
Received: from epalins-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.18.174])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 04:43:48 -0800
Date: Fri, 18 Dec 2020 04:43:46 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201218124346.rwpfwhe7vmr3aq7r@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20201203072359.156682-1-aditya.swarup@intel.com>
 <20201218023129.oxuzjlbxzqg7twpl@ldmartin-desk1>
 <87eejn4jpp.fsf@intel.com> <875z4zqscy.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <875z4zqscy.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/tgl: Fix REVID macros for
 TGL to fetch correct stepping
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 18, 2020 at 01:13:49PM +0200, Jani Nikula wrote:
>On Fri, 18 Dec 2020, Jani Nikula <jani.nikula@intel.com> wrote:
>> On Thu, 17 Dec 2020, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>> Both patches applied. Thanks!
>>>
>>> Jani, maybe now you can rebase your patch to get rid of the extern ?
>>
>> Yes, thanks for the irq so I can stop polling. ;)
>
>Huh, why were these applied to drm-intel-gt-next? It's much more about
>driver core code than gt.

sigh... by mistake. At the time as was mainly thinking about the WAs
that are affected by these and thought it would belong to gt.

what now? Do we apply in to drm-intel-next as well or wait for a backmerge?

sorry,

Lucas De Marchi

>
>BR,
>Jani.
>
>
>>
>> BR,
>> Jani.
>>
>>
>>>
>>>
>>> Lucas De Marchi
>>>
>>> On Wed, Dec 02, 2020 at 11:23:58PM -0800, Aditya Swarup wrote:
>>>>Fix TGL REVID macros to fetch correct display/gt stepping based
>>>>on SOC rev id from INTEL_REVID() macro. Previously, we were just
>>>>returning the first element of the revid array instead of using
>>>>the correct index based on SOC rev id.
>>>>
>>>>Fixes: ("drm/i915/tgl: Fix stepping WA matching")
>>>>Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>>>>Cc: Matt Roper <matthew.d.roper@intel.com>
>>>>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>>>Cc: Jani Nikula <jani.nikula@intel.com>
>>>>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>>>>Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>>>>Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>>>---
>>>> drivers/gpu/drm/i915/i915_drv.h | 12 ++++++------
>>>> 1 file changed, 6 insertions(+), 6 deletions(-)
>>>>
>>>>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i91=
5_drv.h
>>>>index fc1090c6889c..2e2149c9a2f4 100644
>>>>--- a/drivers/gpu/drm/i915/i915_drv.h
>>>>+++ b/drivers/gpu/drm/i915/i915_drv.h
>>>>@@ -1580,9 +1580,9 @@ static inline const struct i915_rev_steppings *
>>>> tgl_revids_get(struct drm_i915_private *dev_priv)
>>>> {
>>>> 	if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv))
>>>>-		return tgl_uy_revids;
>>>>+		return &tgl_uy_revids[INTEL_REVID(dev_priv)];
>>>> 	else
>>>>-		return tgl_revids;
>>>>+		return &tgl_revids[INTEL_REVID(dev_priv)];
>>>> }
>>>>
>>>> #define IS_TGL_DISP_REVID(p, since, until) \
>>>>@@ -1592,14 +1592,14 @@ tgl_revids_get(struct drm_i915_private *dev_pri=
v)
>>>>
>>>> #define IS_TGL_UY_GT_REVID(p, since, until) \
>>>> 	((IS_TGL_U(p) || IS_TGL_Y(p)) && \
>>>>-	 tgl_uy_revids->gt_stepping >=3D (since) && \
>>>>-	 tgl_uy_revids->gt_stepping <=3D (until))
>>>>+	 tgl_uy_revids[INTEL_REVID(p)].gt_stepping >=3D (since) && \
>>>>+	 tgl_uy_revids[INTEL_REVID(p)].gt_stepping <=3D (until))
>>>>
>>>> #define IS_TGL_GT_REVID(p, since, until) \
>>>> 	(IS_TIGERLAKE(p) && \
>>>> 	 !(IS_TGL_U(p) || IS_TGL_Y(p)) && \
>>>>-	 tgl_revids->gt_stepping >=3D (since) && \
>>>>-	 tgl_revids->gt_stepping <=3D (until))
>>>>+	 tgl_revids[INTEL_REVID(p)].gt_stepping >=3D (since) && \
>>>>+	 tgl_revids[INTEL_REVID(p)].gt_stepping <=3D (until))
>>>>
>>>> #define RKL_REVID_A0		0x0
>>>> #define RKL_REVID_B0		0x1
>>>>--
>>>>2.27.0
>>>>
>>>>_______________________________________________
>>>>Intel-gfx mailing list
>>>>Intel-gfx@lists.freedesktop.org
>>>>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
>-- =

>Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
