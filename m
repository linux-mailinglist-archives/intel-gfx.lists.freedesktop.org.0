Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEpdKjf1u2nkqQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 14:08:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF372CBA69
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 14:08:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F55810EA1C;
	Thu, 19 Mar 2026 13:08:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gevYDQyB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B0B810EA0B;
 Thu, 19 Mar 2026 13:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773925683; x=1805461683;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=HR8Jk68/opNdWlOQHQUpthpihvsBaqH1p0Q1HNvk1Qo=;
 b=gevYDQyBON9lY/c4jRdj/RacuuOmrvy1qAGgix0ZG6pm51+icv+8PTW/
 yEIKXlroMcJj6ovUCjPb+/6GFUbngyQWl60AFp/6qm2lcINzZ8uMmlAlm
 S3lNgz6g9L8gq0U2dX2u+I5g5dvlYfg4/68IQ97ILH0C2QWI/ne5qRhl1
 huIBoz8FatAOR3JXsfJt7snwOFk38t3kXo/qUiSSwIPhwBhIpiJb9CrVv
 6qzxKQgSNMB0Kd+CYXoTAWEzZAzbohaJ5op3aBqLS+niA2jIBsQ3p2eNW
 N8NR5HgWvjBe7kpMmUBZfbmptNU0QgW7Nj5EIEHmpcSTPiYJFOfKwwd3j A==;
X-CSE-ConnectionGUID: B3oQK25dRRKY40rXoj5ENA==
X-CSE-MsgGUID: hChZezJbRWyCNGpllnrm4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="74907672"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="74907672"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 06:07:44 -0700
X-CSE-ConnectionGUID: 01JS2KF5T8SABxNDQO8vgg==
X-CSE-MsgGUID: OQcdlmHCRbWwjBi/NNVdNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="222060608"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 06:07:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/9] drm/i915/wm:
 s/skl_check_nv12_wm_level()/skl_check_wm_level_nv12()/
In-Reply-To: <20260319114034.7093-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260319114034.7093-1-ville.syrjala@linux.intel.com>
 <20260319114034.7093-4-ville.syrjala@linux.intel.com>
Date: Thu, 19 Mar 2026 15:07:31 +0200
Message-ID: <c013d0b0ddc6030116dbdcf8957a494c1dd2f3d4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: DFF372CBA69
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 19 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Rename skl_check_nv12_wm_level() to skl_check_wm_level_nv12(). There
> will be a sort of DDB counterparts to skl_check_wm_level*(), and
> putting the "nv12" part to the end will allow consistent naming.

Overall I dislike "check" in function names. What does it check? What
does it mean? Should it have a return value? Or is it like an assert?

In skl_watermark.c, there are three types of check functions, all
behaving differently. check_mbus_joined() is really just
is_mbus_joined(). I don't know what skl_check_wm_level() or
skl_check_nv12_wm_level() should be called, because they conditionally
clear the watermarks. And "checking" doesn't sound like something that
should modify its arguments. Then you have skl_wm_check_vblank(), which
modifies its arguments and returns an error code, and I really don't
know what about it is "checking".

/rant

Anyway, for the patch at hand,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 1664b84d0387..24978f312fec 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -1356,7 +1356,7 @@ skl_check_wm_level(struct skl_wm_level *wm, const s=
truct skl_ddb_entry *ddb)
>  }
>=20=20
>  static void
> -skl_check_nv12_wm_level(struct skl_wm_level *wm, struct skl_wm_level *uv=
_wm,
> +skl_check_wm_level_nv12(struct skl_wm_level *wm, struct skl_wm_level *uv=
_wm,
>  			const struct skl_ddb_entry *ddb_y, const struct skl_ddb_entry *ddb)
>  {
>  	if (wm->min_ddb_alloc > skl_ddb_entry_size(ddb_y) ||
> @@ -1555,7 +1555,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_sta=
te *state,
>=20=20
>  			if (DISPLAY_VER(display) < 11 &&
>  			    crtc_state->nv12_planes & BIT(plane_id))
> -				skl_check_nv12_wm_level(&wm->wm[level],
> +				skl_check_wm_level_nv12(&wm->wm[level],
>  							&wm->uv_wm[level],
>  							ddb_y, ddb);
>  			else

--=20
Jani Nikula, Intel
