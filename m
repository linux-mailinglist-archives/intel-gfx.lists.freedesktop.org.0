Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF204F2D89
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 13:44:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 470AF10E9B1;
	Tue,  5 Apr 2022 11:44:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 902CE10E9AC
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 11:44:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649159077; x=1680695077;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OnlqCaeKzb/nY6Jr7vxhTLghqbd/2ArHBmYR0BCXCVY=;
 b=WBCfHXViAaQv9DGfWpYlsRFcv/DliKzU4+eyavuuGBIDNV4KZ5Q+u9pH
 UwhqVma1KDU0FZu9WwHLE9VD8kfPo6gi+ONzZznM27V0bKwbuGJZJx8ai
 1yMWZknpMj2qPeM0v8yJ6NOAq5sRp2wVseaADK7hyDXUqfxL0slA10b3v
 vomZj3ySdsBmsnoyx2U9nkU+QMVTEpRYAiwBDqpc7OoZ0J+IO/rzgdTT6
 jnT1fw7hKncmchu7uXMw4I9r9hfM7QdwoH7q8pCrkvOKI1eUhyrSaEI53
 MJdK0OH3/EpJ6iFgKB6q3vIXOy8m9StS/zfDLyXEQ1dp/DRpMbRRp0VfL w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10307"; a="258312950"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="258312950"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 04:44:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="523960750"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga006.jf.intel.com with ESMTP; 05 Apr 2022 04:44:36 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Apr 2022 04:44:35 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Apr 2022 17:14:33 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.027;
 Tue, 5 Apr 2022 17:14:33 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dsb: modified to drm_info in
 dsb_prepare()
Thread-Index: AQHYQGPTr+6DKP39y0+q7KZKhzCnRazhQ+AQ
Date: Tue, 5 Apr 2022 11:44:33 +0000
Message-ID: <e23dbc95903a4e2eab4fcffa5be6b2cc@intel.com>
References: <20220325161140.11906-1-animesh.manna@intel.com>
In-Reply-To: <20220325161140.11906-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: modified to drm_info in
 dsb_prepare()
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
Cc: "Das, Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
imesh
> Manna
> Sent: Friday, March 25, 2022 9:42 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Das, Nirmoy <nirmoy.das@intel.com>
> Subject: [Intel-gfx] [PATCH] drm/i915/dsb: modified to drm_info in dsb_pr=
epare()
>=20
> The request to aqquire gem resources is failing for DSB in rare scenario =
where it is
> busy and the register programming will be done through mmio fallback path=
.
>=20
> DSB has extra advantage of faster register programming which may go away
> through mmio path. Adding wait for gem resource also may not be right as =
anyways
> losing time.
>=20
> To make the CI execution happy replaced drm_err() to drm_info() for print=
ing debug
> info during dsb buffer preparation.
>=20
> v1: Initial version.
> v2: Added print for mmio fallback at out label. [Nirmoy]
> v3: Improved debug message. [Nirmoy]

Pushed to drm-intel-next. Thanks for the patch and reviews.

Regards,
Uma Shankar

> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> b/drivers/gpu/drm/i915/display/intel_dsb.c
> index b34a67309976..c4affcb216fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -283,14 +283,12 @@ void intel_dsb_prepare(struct intel_crtc_state
> *crtc_state)
>=20
>  	obj =3D i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
>  	if (IS_ERR(obj)) {
> -		drm_err(&i915->drm, "Gem object creation failed\n");
>  		kfree(dsb);
>  		goto out;
>  	}
>=20
>  	vma =3D i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
>  	if (IS_ERR(vma)) {
> -		drm_err(&i915->drm, "Vma creation failed\n");
>  		i915_gem_object_put(obj);
>  		kfree(dsb);
>  		goto out;
> @@ -298,7 +296,6 @@ void intel_dsb_prepare(struct intel_crtc_state *crtc_=
state)
>=20
>  	buf =3D i915_gem_object_pin_map_unlocked(vma->obj, I915_MAP_WC);
>  	if (IS_ERR(buf)) {
> -		drm_err(&i915->drm, "Command buffer creation failed\n");
>  		i915_vma_unpin_and_release(&vma, I915_VMA_RELEASE_MAP);
>  		kfree(dsb);
>  		goto out;
> @@ -311,6 +308,10 @@ void intel_dsb_prepare(struct intel_crtc_state *crtc=
_state)
>  	dsb->ins_start_offset =3D 0;
>  	crtc_state->dsb =3D dsb;
>  out:
> +	if (!crtc_state->dsb)
> +		drm_info(&i915->drm,
> +			 "DSB queue setup failed, will fallback to MMIO for display
> HW
> +programming\n");
> +
>  	intel_runtime_pm_put(&i915->runtime_pm, wakeref);  }
>=20
> --
> 2.29.0

