Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2111F4ADAD7
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 15:10:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E8C010E297;
	Tue,  8 Feb 2022 14:10:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0420410E297
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 14:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644329439; x=1675865439;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=CCFgStHsQ7eIZNN6U3FNFaaYurrT5dw80GtTTN7klSY=;
 b=n+B/uJvgDTvew+odYFvfAKOfn9dUmsIVjv+2hRKnoccYTs0Jh4dey1p8
 pXOvIVOzkli12iRLYKHeILwSu7NTEbrPXWrsdwkivCrHVdv9q8S64371e
 5wH1HvaLF+AI1cjNiq2i5YsVFYmIl3LodD+gPkHWPXYyQK7RS59G04R+B
 GH450UCiIyHg9yU+SDIroJ2iiMT9rHYSHrjqCwvCeAnWCJd6uMxi0YZKL
 Ivk11ApLoUIJvEZ1kupwjumSJwlDnMFtyHaw3OJbmOW9cfXBkRad8E8xl
 Z0HQ6whYhe4Co8sG7HmlnQe3jJSKNpK/YcuzSkEs1gyRxeOI2zufKGhoF w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="335357539"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="335357539"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 06:10:38 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="540611368"
Received: from ijbeckin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.19.63])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 06:10:36 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220207132700.481-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220207132700.481-1-ville.syrjala@linux.intel.com>
Date: Tue, 08 Feb 2022 16:10:33 +0200
Message-ID: <878rulqwiu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i195: Fix dbuf slice config lookup
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 07 Feb 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Apparently I totally fumbled the loop condition when I
> removed the ARRAY_SIZE() stuff from the dbuf slice config
> lookup. Comparing the loop index with the active_pipes bitmask
> is utter nonsense, what we want to do is check to see if the
> mask is zero or not.
>
> Cc: stable@vger.kernel.org
> Fixes: 05e8155afe35 ("drm/i915: Use a sentinel to terminate the dbuf slic=
e arrays")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 02084652fe3d..da721aea70ff 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4848,7 +4848,7 @@ static u8 compute_dbuf_slices(enum pipe pipe, u8 ac=
tive_pipes, bool join_mbus,
>  {
>  	int i;
>=20=20
> -	for (i =3D 0; i < dbuf_slices[i].active_pipes; i++) {
> +	for (i =3D 0; dbuf_slices[i].active_pipes !=3D 0; i++) {
>  		if (dbuf_slices[i].active_pipes =3D=3D active_pipes &&
>  		    dbuf_slices[i].join_mbus =3D=3D join_mbus)
>  			return dbuf_slices[i].dbuf_mask[pipe];

--=20
Jani Nikula, Intel Open Source Graphics Center
