Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EB1BC6898
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 22:06:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 864C010E8A4;
	Wed,  8 Oct 2025 20:06:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="LMx6Ohwh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7973610E8A4
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Oct 2025 20:05:59 +0000 (UTC)
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 598I5Pla019631
 for <intel-gfx@lists.freedesktop.org>; Wed, 8 Oct 2025 20:05:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=95/iYHyDl4vmA4hj/jHcPunB
 Q7LfZPuixFnm3qR123E=; b=LMx6OhwhRPYy3byRvajlWZ0h6d91KiH9Hg9+6QJI
 E1+ZIW9ydOhsHjiQI6cLTaGrrMWq2Im5D3mQyaXZar5/f2ae6JzA8YM29+c4aNgq
 2z0cpBNo+t5B7Zh2PbyAgVN2p6JO3wOv9V1V0nQ1HBfW3vZb7E5yvOuDid5R8UxO
 Qlu/Ywnrtl3oelhMmvqeE1UuKvSW9giWcwcttNES+mwRKm+1nzHLvNF+Bk1G0nB5
 9bGGAoJvL6EUkXx+9pS+45U/YxMy9QE7cj66eR7Pv6CC8YQ0bYG26h1LyJK4LlKH
 m1mcubK8SdOCwtuCl1za/2PCQey5edNG4Tb9TkktWucZKw==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com
 [209.85.221.198])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv9a8eq3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Oct 2025 20:05:58 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id
 71dfb90a1353d-54aa46b501dso86910e0c.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Oct 2025 13:05:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759953958; x=1760558758;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=95/iYHyDl4vmA4hj/jHcPunBQ7LfZPuixFnm3qR123E=;
 b=k+xVmdyHLbI+9OvRsNR+XIcAG9+foI1CsrkTeh3SxaFaQdwlepqMvL+56Wo6Ef5fXL
 ptC9H2NT2ZUUee1U0H5lAk0YPg465i7vvfEuld76I/y9PxrOl/ewSbCfC+3X68g2oacb
 YyGkQQ14mbLHDrkivfaknTIKbMU2eR+pJ+/JtL1G4v+pnhLdyXejYFEFOys55v6lokpt
 cIgDtPfdV7pLyraNH1n20Cg55phByJZ4cEzk4ncmAX+wMSxGihFd5UPXMwne7s0vzTkQ
 qOUQinh4Hi28E7JgU9J1lUl+S/Wq9yYc85HTb40oMXVrH7wesLG2M3+hQlo2cJADJPC2
 AINQ==
X-Gm-Message-State: AOJu0Yw7nNUYCKRVFa+Xr6pHPiQClIsqSuVsHIWSTqMN+21zewIUXtd6
 2e+a4JYVHp9dn1znU8pFWooc4gcVo7l41MHpnG6y2+cGG5svNi2qF49+MLMCPMLTnloEeNRh/Ld
 2G3p9o+BVp5vjRkA6Y/1Sd57hrSeaYB2CDq71KvmK/Uc6cHqWqmtortoL0jPlxOg5xf83EuY=
X-Gm-Gg: ASbGncsQtrXXzv/KyaJGzx4ZNEO+50qoVTTfM24Y34Dy2zs36rsIKRjUnV8V/3vE7hG
 APizknBx2RE5/jEmJ/vcSNMwJJ7wSJh9HwPK135IWoCvN36sf/dCnl4NyOm1rsXqUjTCV4BZ7rW
 9DgtmbU2p8cImS656WYqTRMCgRHUfL0ROzfpK2QlUoozloylyeUxn8SPcUQSLM2XlbC8Rw8+OTP
 6vEQmo6yY9Ca1DZCzqnUKgw2geBLVZDqarBkpDhkfSa16nwqRBNHf1XijSemcdsIE2EcX53dc3h
 p1dAeB2WT+EdVnWvKVISDTY4fEGAKeH4lolJ8PpMqKP5TDrNxcEuwijowll/q+o0pQ6a8dsU5ny
 K6QVpeaxcybXM4oSHO2n9Amy2/8pff2HopC0HlYiAfA/SZOuzUOfDz7b3uA==
X-Received: by 2002:a05:6122:8c7:b0:53b:1998:dbf5 with SMTP id
 71dfb90a1353d-554b8b39aa1mr2239506e0c.1.1759953957593; 
 Wed, 08 Oct 2025 13:05:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEl7fOxPxx20GF4ALLTOqSR9r8TJV/qd+qF65hUWvLJA7cdPGmSfYQqV14+SKxf9ofMClXmnw==
X-Received: by 2002:a05:6122:8c7:b0:53b:1998:dbf5 with SMTP id
 71dfb90a1353d-554b8b39aa1mr2239490e0c.1.1759953957141; 
 Wed, 08 Oct 2025 13:05:57 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5907ad9e048sm301512e87.75.2025.10.08.13.05.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Oct 2025 13:05:55 -0700 (PDT)
Date: Wed, 8 Oct 2025 23:05:53 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "G M, Adarsh" <adarsh.g.m@intel.com>,
 Simona Vetter <simona.vetter@ffwll.ch>
Subject: Re: [PATCH 01/10] drm/drm_crtc: Introduce sharpness strength property
Message-ID: <mqvmv3bqikoekjhhwqifzatzouxym4yy4eab6bb2zjhzlv2tfw@l5iumy2ybngl>
References: <20251001063500.1259687-1-nemesa.garg@intel.com>
 <20251001063500.1259687-2-nemesa.garg@intel.com>
 <epzspujsf2o4wq5ykswe7a3hvrb3vy5wgenglfopmkuepyfstm@5kkpxstpyc3r>
 <IA1PR11MB6467E47D1D61DE21DCC2B9EAE3E1A@IA1PR11MB6467.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <IA1PR11MB6467E47D1D61DE21DCC2B9EAE3E1A@IA1PR11MB6467.namprd11.prod.outlook.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMiBTYWx0ZWRfX61ghnCAZXEau
 GxcDPZraxFF+ujZuleHexhRXTjXcgCD5bPn0uFJsmgzOElSF92EEc30nHTYeP1UNns5tWm68PrH
 bOzTffUNvVgc9IeUGXyIol1kSApYQrGrbf+Dju6iaLFHWHKf8mtOS0/QZOA6dRGE7io2Yexa9U/
 y2VUOJrjNL4MrxeObK7d9TL19WcOIf4n98cE5ZHKAkiZ1pZYFqWNT9KRGNChm3or8JvrITvlzuq
 q3xkuN2tmCJ/kawihJBJKtMkHiwJqL7Jiw8ZtN4ovfHLd+hvDuKPv06LUjTk+mGbnihrGOC2UIL
 RWxo65PlyinXaBxdqCMPHZeC6u1rDkSIH7gPPiINUMOmFLAEVMpsxn1fxmJ/QFOuNkKyZ3MwRE1
 WQLkzP5Y7APpV0PAOhKFuqNxLoiFCQ==
X-Proofpoint-GUID: wHN2Wd5XBu3prRUK2cMSfjwW3tAfxl6R
X-Proofpoint-ORIG-GUID: wHN2Wd5XBu3prRUK2cMSfjwW3tAfxl6R
X-Authority-Analysis: v=2.4 cv=JPk2csKb c=1 sm=1 tr=0 ts=68e6c426 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=QyXUC8HyAAAA:8 a=e5mUnYsNAAAA:8
 a=a-h1K1YzEVxaE0wpvGgA:9 a=CjuIK1q_8ugA:10 a=hhpmQAJR8DioWGSBphRh:22
 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 clxscore=1015 impostorscore=0
 phishscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080122
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

On Wed, Oct 08, 2025 at 07:22:00AM +0000, Garg, Nemesa wrote:
> 
> 
> > -----Original Message-----
> > From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > Sent: Saturday, October 4, 2025 3:38 PM
> > To: Garg, Nemesa <nemesa.garg@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; dri-
> > devel@lists.freedesktop.org; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>;
> > G M, Adarsh <adarsh.g.m@intel.com>; Simona Vetter
> > <simona.vetter@ffwll.ch>
> > Subject: Re: [PATCH 01/10] drm/drm_crtc: Introduce sharpness strength
> > property
> > 
> > On Wed, Oct 01, 2025 at 12:04:51PM +0530, Nemesa Garg wrote:
> > > Introduce a new crtc property "SHARPNESS_STRENGTH" that allows the
> > > user to set the intensity so as to get the sharpness effect.
> > > The value of this property can be set from 0-255.
> > > It is useful in scenario when the output is blurry and user want to
> > > sharpen the pixels. User can increase/decrease the sharpness level
> > > depending on the content displayed.
> > >
> > > v2: Rename crtc property variable [Arun]
> > >     Add modeset detail in uapi doc[Uma]
> > > v3: Fix build issue
> > > v4: Modify the subject line[Ankit]
> > >
> > > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > > Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > > Tested-by: Adarsh G M <Adarsh.g.m@intel.com>
> > > Acked-by: Simona Vetter <simona.vetter@ffwll.ch>
> > > ---
> > >  drivers/gpu/drm/drm_atomic_uapi.c |  4 ++++
> > >  drivers/gpu/drm/drm_crtc.c        | 35 +++++++++++++++++++++++++++++++
> > >  include/drm/drm_crtc.h            | 18 ++++++++++++++++
> > >  3 files changed, 57 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/drm_atomic_uapi.c
> > > b/drivers/gpu/drm/drm_atomic_uapi.c
> > > index 85dbdaa4a2e2..b2cb5ae5a139 100644
> > > --- a/drivers/gpu/drm/drm_atomic_uapi.c
> > > +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> > > @@ -419,6 +419,8 @@ static int drm_atomic_crtc_set_property(struct
> > drm_crtc *crtc,
> > >  		set_out_fence_for_crtc(state->state, crtc, fence_ptr);
> > >  	} else if (property == crtc->scaling_filter_property) {
> > >  		state->scaling_filter = val;
> > > +	} else if (property == crtc->sharpness_strength_property) {
> > > +		state->sharpness_strength = val;
> > >  	} else if (crtc->funcs->atomic_set_property) {
> > >  		return crtc->funcs->atomic_set_property(crtc, state, property,
> > val);
> > >  	} else {
> > > @@ -456,6 +458,8 @@ drm_atomic_crtc_get_property(struct drm_crtc
> > *crtc,
> > >  		*val = 0;
> > >  	else if (property == crtc->scaling_filter_property)
> > >  		*val = state->scaling_filter;
> > > +	else if (property == crtc->sharpness_strength_property)
> > > +		*val = state->sharpness_strength;
> > >  	else if (crtc->funcs->atomic_get_property)
> > >  		return crtc->funcs->atomic_get_property(crtc, state, property,
> > val);
> > >  	else {
> > > diff --git a/drivers/gpu/drm/drm_crtc.c b/drivers/gpu/drm/drm_crtc.c
> > > index 46655339003d..a7797d260f1e 100644
> > > --- a/drivers/gpu/drm/drm_crtc.c
> > > +++ b/drivers/gpu/drm/drm_crtc.c
> > > @@ -229,6 +229,25 @@ struct dma_fence *drm_crtc_create_fence(struct
> > drm_crtc *crtc)
> > >   * 		Driver's default scaling filter
> > >   * 	Nearest Neighbor:
> > >   * 		Nearest Neighbor scaling filter
> > > + * SHARPNESS_STRENGTH:
> > > + *	Atomic property for setting the sharpness strength/intensity by
> > userspace.
> > > + *
> > > + *	The value of this property is set as an integer value ranging
> > > + *	from 0 - 255 where:
> > > + *
> > > + *	0: Sharpness feature is disabled(default value).
> > > + *
> > > + *	1: Minimum sharpness.
> > > + *
> > > + *	255: Maximum sharpness.
> > > + *
> > > + *	User can gradually increase or decrease the sharpness level and can
> > > + *	set the optimum value depending on content.
> > > + *	This value will be passed to kernel through the UAPI.
> > > + *	The setting of this property does not require modeset.
> > > + *	The sharpness effect takes place post blending on the final composed
> > output.
> > > + *	If the feature is disabled, the content remains same without any
> > sharpening effect
> > > + *	and when this feature is applied, it enhances the clarity of the
> > content.
> > 
> > I can repeat my question from XDC: should we extend this to negative values,
> > allowing softening (unsharpening) the image?
> > 
> Hi Dmitry,
> The un-sharpening or blurring is a very valid usecase in pre-blending where certain layers (data
> From clients) can be un-sharpened while some other layers can be enhanced with sharpening.
> This helps give  focus to the particular content and suppress the background.
> 
> However, this current property is targeted for post blending so will be
> applied to the entire frame on screen, here sharpening only is the intended objective.
> 
> We can pursue a pre-blending solution to target the un-sharpening case as well as a separate interface.

Indeed, I'm more interested in a per-plane sharpen / unsharpen property.

> Hope this is fine.

-- 
With best wishes
Dmitry
