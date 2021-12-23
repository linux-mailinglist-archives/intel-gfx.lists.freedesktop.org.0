Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C66FA47E1BF
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Dec 2021 11:49:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C702A10E12D;
	Thu, 23 Dec 2021 10:49:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2672210E12D
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Dec 2021 10:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640256592; x=1671792592;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=xAUNb87cBzk7WVZ4De694cOd+VRRNIBigyc2WSvbefg=;
 b=ScO19+0pagN26ysl1fzR4XCju6ycnSYPBKy9D5I1RwfXgF3VVJ42hS9W
 vMGScVxe1jnO4/WaYlkTG40UjIcdObN/qzojkyDmB3q67YEZ9QelWOztm
 sqRVeiPDWeTScJN1+yDGkg7+2CV3RklQA7v1AnVAk0V31WBp6VmYYS6Pf
 X/MY99A3F5ewm/q+4xg+2DB2etNWS45ovlIezrt3dtqCGhtsc/P9imdHn
 lYIniiY3L5EDfqHt9AnttoHZU/87KVdCFPnCzD1UR1y9MCnnLdr+olO0+
 oWJPN7ZsMjJfXoOc8CWN15FL0fOOZxlo1dsZ6Ow3sPv+dCluWaiIgvnCO g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10206"; a="301568057"
X-IronPort-AV: E=Sophos;i="5.88,229,1635231600"; d="scan'208";a="301568057"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2021 02:49:51 -0800
X-IronPort-AV: E=Sophos;i="5.88,229,1635231600"; d="scan'208";a="522050792"
Received: from ramurray-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.23.188])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2021 02:49:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20211222081654.1843211-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211222081654.1843211-1-jani.nikula@intel.com>
Date: Thu, 23 Dec 2021 12:49:46 +0200
Message-ID: <87lf0by4s5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/bios: fix slab-out-of-bounds
 access
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
Cc: Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 22 Dec 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> If VBT size is not a multiple of 4, the last 4-byte store will be out of
> bounds of the allocated buffer. Spotted with KASAN. Round up the
> allocation size.
>
> v2: Use round_up() intead of roundup() as it's a power of 2 (Thomas)
>
> Reported-by: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>
> Fixes: a36e7dc0af1c ("drm/i915/dg1: Read OPROM via SPI controller")
> Cc: Clint Taylor <clinton.a.taylor@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Reviewed-by: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Pushed, thanks for the report and review.

BR,
Jani.


> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 76a8f001f4c4..c7a8d517ce81 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2369,7 +2369,7 @@ static struct vbt_header *spi_oprom_get_vbt(struct =
drm_i915_private *i915)
>  	vbt_size =3D intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
>  	vbt_size &=3D 0xffff;
>=20=20
> -	vbt =3D kzalloc(vbt_size, GFP_KERNEL);
> +	vbt =3D kzalloc(round_up(vbt_size, 4), GFP_KERNEL);
>  	if (!vbt)
>  		goto err_not_found;

--=20
Jani Nikula, Intel Open Source Graphics Center
