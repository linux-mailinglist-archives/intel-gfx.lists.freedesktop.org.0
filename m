Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGmfEj87+WlF7AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 02:35:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1D24C5821
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 02:35:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37DD210E90B;
	Tue,  5 May 2026 00:35:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="XZ8dU3+9";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HajFwfI8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AD6A10E05C
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2026 00:35:08 +0000 (UTC)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 644Iq2BR4128658
 for <intel-gfx@lists.freedesktop.org>; Tue, 5 May 2026 00:35:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=uQstg63rkYXGjNgJVr/eZxEM
 JU0++JvkQrQ5rgtmcrI=; b=XZ8dU3+9D/jxyc3MX2B8VgXlqVBGwjuY6H895wB/
 zjMsQ/No18/RGSnXtXkh8r7TNOB55yXhHATaIzAnyxehqZQVRtmY6qMgqHO53DR7
 8ZtAsx9c6AiBaR7q8gtuEhoS1qKJ8xltd8mQhHdCcrjFUGxI82Y+depJKiQV2vfM
 gg9pmItgri64DPPU8JablL//u7x+unpSUS/9DOAVzhTu0/GmFPpgbzREj1mSROd5
 z/4u+2hS/RtSsFfy3E1IAa0PYg1AYzGYH3gB24vlr3D/rW4RB+6ttU8XF3W3Kc+4
 KNLZyJB+2ZDBDzwMgfHi8akVh2aoRcZYVZF9xPsTBEzyLw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dxsdw2u43-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 May 2026 00:35:07 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id
 d75a77b69052e-50d5d1c2289so116462271cf.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 May 2026 17:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1777941306; x=1778546106;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=uQstg63rkYXGjNgJVr/eZxEMJU0++JvkQrQ5rgtmcrI=;
 b=HajFwfI80n/2mHHS3+WMXnB8vbTbwi3+/y9vxm3LJtGiePI5TOYU3grneB17Wmk24P
 TCGQXZdwGWDwOYcLqjEQa6yoV/Z9VXFi0y/znZBZhSBZvo1Fr188/Et9X9D5JLhQtOaV
 7UvQfsxr3zpjfqvU8omEBAkparGUntBDqe5nnPMBmzOhb/WvECyp6puLG1bIjwoDgDFD
 N8gDzL2W7CbtkiSMQNhLbjtOpGMma+RVFgTEfdRM/IX3MCYKo8r68+4A7+T0Fz555uyF
 +O/vVAny6TOdISHu20ufTvr13uuykmquXMSJLHuteIlCtRtOUM0hb7goTi+yWDUM1xUJ
 qdxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777941306; x=1778546106;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=uQstg63rkYXGjNgJVr/eZxEMJU0++JvkQrQ5rgtmcrI=;
 b=I1DXDiPnJrHU5NUydej2FSmollLR2HLtCCytCh5TsDykrobuw+sQrVrvD6DsKZ8zPi
 LUx8VTzezx5jJrnmDKBxX/P346ACtZZT12wIqPm8kBKLDcfNSBTottFxCgZBZyBUpyBS
 2Rf25aXMxLNDdm3r/ZfFve0okrEOovJM6cv/F/2hhaPB1MVEcty3tsMM9u06Z0nOTmqc
 bsT/b5g0CpHbtz+9xf5QherOE1iZrL46HlUCMHerE+gSowynsCtBigRtWml74/oye+N5
 wz1HJA9MDPpe+QsTbv8IIaVX30Eaj3R1f6sxVVICx0BXK7a0wOZpQqdn9ZyK7xZX/2xw
 sHWw==
X-Forwarded-Encrypted: i=1;
 AFNElJ+mMbCUMCTTwZYWzxCy3ClyoCNmHlqHcSkSanK3i4dUadY/hB+EzfDESYGpUe0fq/460VN/5MNz1j0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzSiWQd0MvN1AY95WH3GJf/n3hv+1zSzAjWZDQVVYHFo3al/vxS
 kUTn499CzQNk6wgmFmGjR1f4/Lz2bnjeIpxCBJK7RvMbf/k7dMRrJ4q3ptHz6qUBZvX9W5uB+NF
 ZSXF32oJH8kBSZhGEa1knZ+TfAEpPt+jtE8hSZogcUicFDe9XsG2JRDRq+LaoFucm53S8m/LDeb
 ltwgg=
X-Gm-Gg: AeBDies+sLnB3x5E9/7LqJWyUjlJ+Te49IEP4dPJnsYY9ZsRkMqCO4x7CN6bm50eV8u
 PbLE6f80y6oi1OmD9rTz7pbEf9JpbcHtp54i1nm2h+9ks7t2CgzxeaOLT91lIKYSz4vzmt7eyRx
 vNezopY74scGKnndxLD9DBBdcCRGqlL/JFhupZTO+SVuomzy2YhqKpjDxWswK7Iee+FeQddiT2+
 dryUPmangm0mSqckD30lzNxwlNlw3pSDjooXtOE5UoHCrU60TrrG+26vPtDVjaNSq9e0T4zZwHE
 6wHmMl6VOb4Lf5eTvj6xrowoQu6St8/CcRO5jRop6kjgl9IeUj5XveN8IELbAom0BolIdxCLZRY
 B+yqRG1OtFXKG19tYmJX0w6slRXdBlyYGeGbnDCn6QuLh6Dg4my4KtIMB2srjQbXoitRPmzGHMZ
 c9MHeMo22NoxZFGRX7wo/W6/ZFYNdWUFUX/ewSWJo2KZNn/g==
X-Received: by 2002:ac8:7d87:0:b0:509:4406:44e0 with SMTP id
 d75a77b69052e-5104be44e30mr177322001cf.27.1777941306332; 
 Mon, 04 May 2026 17:35:06 -0700 (PDT)
X-Received: by 2002:ac8:7d87:0:b0:509:4406:44e0 with SMTP id
 d75a77b69052e-5104be44e30mr177321511cf.27.1777941305716; 
 Mon, 04 May 2026 17:35:05 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a864c6f16esm2684204e87.15.2026.05.04.17.35.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2026 17:35:04 -0700 (PDT)
Date: Tue, 5 May 2026 03:35:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 kernel-list@raspberrypi.com, amd-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 uma.shankar@intel.com, arun.r.murthy@intel.com, jani.nikula@intel.com,
 harry.wentland@amd.com, siqueira@igalia.com, alexander.deucher@amd.com,
 christian.koenig@amd.com, airlied@gmail.com, simona@ffwll.ch,
 liviu.dudau@arm.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, robin.clark@oss.qualcomm.com,
 abhinav.kumar@linux.dev, tzimmermann@suse.de, sean@poorly.ru,
 marijn.suijten@somainline.org, laurent.pinchart+renesas@ideasonboard.com,
 dave.stevenson@raspberrypi.com, tomi.valkeinen+renesas@ideasonboard.com,
 kieran.bingham+renesas@ideasonboard.com
Subject: Re: [PATCH v3 6/7] drm/connector: Modify prepare_writeback_job helper
Message-ID: <kfizwa7jgdyuqc7qxfpgjjfbqydpziptkhrfrnz5umrycahbte@zlqsjuipu5u4>
References: <20260316083008.87466-1-suraj.kandpal@intel.com>
 <20260316083008.87466-7-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260316083008.87466-7-suraj.kandpal@intel.com>
X-Authority-Analysis: v=2.4 cv=a7AAM0SF c=1 sm=1 tr=0 ts=69f93b3b cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=QyXUC8HyAAAA:8
 a=EUspDBNiAAAA:8 a=EWaBjrTCu0zT9WKhau0A:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: X0hfV-0TpYdSarRBZfWISeVSnOuDbpJX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA1MDAwMiBTYWx0ZWRfX7sft/wzqpv/5
 muRzfaGrQvAaS+gY79n4mJXKDR8BLbrmwQJUQeYlsnRkpeM1+x3bhLjEpND1DQrCNA/pPs08a5n
 Hmv3CNPQdTzq6xcs3chU4K/08DEHJszzI/HKQQpeFSj8az3GPzJ7en34sSnw/FX7yfzR7HIKX2I
 06qxSLv1VWRvD7IvmiUmHrncrUiKoAoRXQ8EcFVaMZSfVFXyWC332sgznN67NlJy3U5+hkY1ng+
 koW4+kNwYLmaJ0POKcPHgiy6084ispnehuuYux8PTnGJ/IDYPYvjYHNH5ECtM8zIBhFmeLsB4qP
 edpZIM35fff+gWNBAITTuAtXv76/EATwXyBhPpBereTjnuN9wrtW5EedJ12mxzs05K60wPdcaf9
 /N+6ROWSy9y8ADZKm+DJn1wVRUNCb8w15PGMPuUvTqKymOa8DpxM+Z2i+v8vcOjE4Z0IFuuVeId
 7Ni7CSyBm+VsjyRY4RA==
X-Proofpoint-ORIG-GUID: X0hfV-0TpYdSarRBZfWISeVSnOuDbpJX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-04_06,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 spamscore=0 adultscore=0 clxscore=1015
 suspectscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605050002
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
X-Rspamd-Queue-Id: BC1D24C5821
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:suraj.kandpal@intel.com,m:freedreno@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:kernel-list@raspberrypi.com,m:amd-gfx@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:ankit.k.nautiyal@intel.com,m:uma.shankar@intel.com,m:arun.r.murthy@intel.com,m:jani.nikula@intel.com,m:harry.wentland@amd.com,m:siqueira@igalia.com,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:liviu.dudau@arm.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:robin.clark@oss.qualcomm.com,m:abhinav.kumar@linux.dev,m:tzimmermann@suse.de,m:sean@poorly.ru,m:marijn.suijten@somainline.org,m:laurent.pinchart+renesas@ideasonboard.com,m:dave.stevenson@raspberrypi.com,m:tomi.valkeinen+renesas@ideasonboard.com,m:kieran.bingham+renesas@ideasonboard.com,m:laurent.pinchart@ideasonboard.com,m:tomi.valkeinen@ideasonboard.com,m:kieran.bingham@ideasonboard.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[30];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,raspberrypi.com,vger.kernel.org,intel.com,amd.com,igalia.com,gmail.com,ffwll.ch,arm.com,linux.intel.com,kernel.org,oss.qualcomm.com,linux.dev,suse.de,poorly.ru,somainline.org,ideasonboard.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email]

On Mon, Mar 16, 2026 at 02:00:08PM +0530, Suraj Kandpal wrote:
> Pass drm_connector to prepare_writeback_job since
> drm_writeback_connector now resides within drm_connector.
> It also makes it uniform with params passed to other
> drm_connector_helper_funcs.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c | 2 +-
>  drivers/gpu/drm/drm_writeback.c                      | 2 +-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c        | 4 +---
>  drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c  | 6 ++----
>  drivers/gpu/drm/vkms/vkms_writeback.c                | 2 +-
>  include/drm/drm_modeset_helper_vtables.h             | 2 +-
>  6 files changed, 7 insertions(+), 11 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry
