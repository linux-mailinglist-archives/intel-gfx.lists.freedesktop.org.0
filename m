Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 472DB18031A
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 17:20:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9441D6E8A2;
	Tue, 10 Mar 2020 16:20:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB4E76E8A0;
 Tue, 10 Mar 2020 16:20:31 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 09:20:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,537,1574150400"; d="scan'208";a="245745806"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 10 Mar 2020 09:20:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Mar 2020 18:20:27 +0200
Date: Tue, 10 Mar 2020 18:20:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20200310162027.GL13686@intel.com>
References: <20200309213940.27965-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309213940.27965-1-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v5 1/2] drm/edid: Name the detailed monitor
 range flags
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Harry Wentland <harry.wentland@amd.com>,
 Kazlauskas Nicholas <Nicholas.Kazlauskas@amd.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 09, 2020 at 02:39:39PM -0700, Manasi Navare wrote:
> This patch adds defines for the detailed monitor
> range flags as per the EDID specification.
> =

> v2:
> * Rename the flags with DRM_EDID_ (Jani N)
> =

> Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Harry Wentland <harry.wentland@amd.com>
> Cc: Clinton A Taylor <clinton.a.taylor@intel.com>
> Cc: Kazlauskas Nicholas <Nicholas.Kazlauskas@amd.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> Reviewed-by: Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
> ---
>  include/drm/drm_edid.h | 5 +++++
>  1 file changed, 5 insertions(+)
> =

> diff --git a/include/drm/drm_edid.h b/include/drm/drm_edid.h
> index f0b03d401c27..34b15e3d070c 100644
> --- a/include/drm/drm_edid.h
> +++ b/include/drm/drm_edid.h
> @@ -91,6 +91,11 @@ struct detailed_data_string {
>  	u8 str[13];
>  } __attribute__((packed));
>  =

> +#define DRM_EDID_DEFAULT_GTF_SUPPORT_FLAG   0x00
> +#define DRM_EDID_RANGE_LIMITS_ONLY_FLAG     0x01
> +#define DRM_EDID_SECONDARY_GTF_SUPPORT_FLAG 0x02
> +#define DRM_EDID_CVT_SUPPORT_FLAG           0x04

No indication what flags thse are. Also missing the
actual change to use them in drm_edid.c.

> +
>  struct detailed_data_monitor_range {
>  	u8 min_vfreq;
>  	u8 max_vfreq;
> -- =

> 2.19.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
