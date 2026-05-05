Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yP27Msg6+Wkn7AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 02:33:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9104C5788
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 02:33:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A28B710E8FE;
	Tue,  5 May 2026 00:33:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="DkluRK/U";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BQhzmGXl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ADA410E8FD
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2026 00:33:08 +0000 (UTC)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 644IJWnf4128668
 for <intel-gfx@lists.freedesktop.org>; Tue, 5 May 2026 00:33:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=zQhAbMMChSVIrW8bHgvy56iM
 nhslWxiT0BF5DVUHFIg=; b=DkluRK/Ubp0ZK8IF2ffFM2rVoZXCoe4QlbtfBKj4
 I4mQ8YouSHrlCgs8V6c2bjj9IioQUWNp84YKdftfezbluUfML/1AWvKb4+iblgTw
 SgH+oUpBsluafKU5TSMRjaJvXymB2HH8VZGj59XtJvssLgr9ukw4B0LTUcFGZLrO
 O91Mbb52dTIl7si4P53r3ytydxYfSBpMEyADoMoO2F297a4PHU6Fn8JdkInIxs8o
 Gc9Snsqj4JAVmFIdsdiIkon633fwN/czvQxDsclUePA/tZtUrk3/dqHfBlTi05vF
 QmhiQ6w/QQOsKzjRgNthshMIzJnY9ji5c5/nNfLbNM0yPw==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com
 [209.85.221.197])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dxsdw2twn-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 May 2026 00:33:07 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id
 71dfb90a1353d-5752402f5e1so3606900e0c.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 May 2026 17:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1777941186; x=1778545986;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=zQhAbMMChSVIrW8bHgvy56iMnhslWxiT0BF5DVUHFIg=;
 b=BQhzmGXlWxEQB/OgCgyCwwEcjYTdSdyZ/Kz8D3DxPFuC1F6IIl18s4e31iaIqylxER
 LbDOGiHCKsac802H7Wem2D4wmMGr4GomFlTlazpuWUMtd5MVkZDqwBBiEfgQQhZD3hU2
 yROHw/tVoUFdKkLzpWXgBkG6l3lRCpEHaAbGi+TSl8jy++cS+TBL3BFx8M11lEnksbzJ
 1jbYwtg5+vSL4ne6aVU+DPrM16tqPouUdoiLBRBr02jvxZTNKaKafr0EIU7i72a1Nn7F
 mYX0QCLV/EWNYO6JKL9mQ+Hs6Y/SMriTIA3bt4YRm96+GlsGGgjzGWYE35hXTrz5Hhz5
 xmaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777941186; x=1778545986;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zQhAbMMChSVIrW8bHgvy56iMnhslWxiT0BF5DVUHFIg=;
 b=qBTkx0GuANBPFzKazWoX9XUzdQU7tkbFI6EH75AMv+ewb2hTF9DTBAeBQfwXLCn/+l
 Yij+EKmzDrtFaS8KwvB4U5ov/KVPA3MfFadzjVMnnRXuIVsKa1fzsJXzO5maSkRNi1MF
 9ibUWdPAU5dLWszgoTxB2DZEL776eYGNPRZ5mc8FP/+2i5U7CMtuR9Y1QPvyDzqwEbTB
 Gjbh1kLqkJyLVUSAyawAUpaPMDn8ijLuwRIA3es3vAGj6v86iOmMb77IU9MMO+3S1i83
 EoQvYY+MEhnseUP1Tv89HfYy65Gzo0TTSdXTufvPupQKzqeSw6O9W2jRQh5aKUW3y8Aw
 znTQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ8mvlOsoZiio83ES/YMyZBZHjYlR7OiOFPgM1U4ynOOMH2GSkcb39f8FL0Cqtb88TUZaFDhgxnmw2s=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzm0/vwpUbS3SAJLfi/lXeKO+IWGKSj0soBiopUODIgMKGLxPXl
 GN8ieNbXBdFx+9mR0Yn04V10MPd8FlGvob1NuLMuVZWukJFn/ihBZSfPTFje1bQoi9JjFWPJo4b
 5iMNS04vkDCg/7aCwb+xwmpeQAfHMTUt5bwfDn+J7HA10nUejxnI+L7cXk15z6PxDI5cZxms=
X-Gm-Gg: AeBDiesOu2wdy5Vo5+lHEgVKoaQCHbqSRhfE53rjLu+DIDwtgaDsSb2mA7dOxuir7+5
 SluTsrsPYNkjD/9QnjAH7MQVfgNhTup69yvxsS0bPCPax6hN7XfN+r7i7vvzXC/zhKgZT+6MHwQ
 L12C26iWYRVzdQm1/qqyydMssN/neA+jOdMwgJBSQvPKcKOFdTPWzfy2nnjoVz414Msq2e2/p1H
 W9kuXdkfeURareXTxSrANj/C5rvYtEU70njjKkUnWtWRMI82i2kkIrJZ1CxOlQTJ3l77ilYza47
 8UQSCE2jfwTly6p3jVDSGlGR0+utQP3vWCYiVk183ZWGV/SVP320mCBut3eQ+aSepDVfsxL57y/
 zfqqyI5D3xU0IKTzKmS8ZiQEQRURpVmIOKinpn8duSs4YJDoAWSPJhqOfmAPk6HXihA6Li7zef6
 nnYZXy41vGEf/Cm22FaGyMTHhvYxiLfetn4U9tQF7v5TQpmw==
X-Received: by 2002:a05:6122:6090:b0:56f:a329:6859 with SMTP id
 71dfb90a1353d-575482d1800mr509478e0c.7.1777941186562; 
 Mon, 04 May 2026 17:33:06 -0700 (PDT)
X-Received: by 2002:a05:6122:6090:b0:56f:a329:6859 with SMTP id
 71dfb90a1353d-575482d1800mr509452e0c.7.1777941186127; 
 Mon, 04 May 2026 17:33:06 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-3936db4ff8csm30303011fa.23.2026.05.04.17.33.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2026 17:33:03 -0700 (PDT)
Date: Tue, 5 May 2026 03:33:00 +0300
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
Subject: Re: [PATCH v3 4/7] drm: writeback: Modify
 drm_writeback_signal_completion param
Message-ID: <bmk67tbapjnfcsuz5bqivnzytnwrhk364c3i6oe4pnilwgisz5@25b6jebsxxq3>
References: <20260316083008.87466-1-suraj.kandpal@intel.com>
 <20260316083008.87466-5-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260316083008.87466-5-suraj.kandpal@intel.com>
X-Authority-Analysis: v=2.4 cv=a7AAM0SF c=1 sm=1 tr=0 ts=69f93ac3 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=QyXUC8HyAAAA:8
 a=EUspDBNiAAAA:8 a=w4tPeIWWwG8LP2YZpMkA:9 a=CjuIK1q_8ugA:10
 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-GUID: OLO7xKVNzp34A6ywJaqIBtQII6COsC4N
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA1MDAwMiBTYWx0ZWRfX32Es59XadsbT
 sGl1rc84rOvuNbiOh31MlbjuMOcXJi0YwwS7oC9hcrnd1xaskFJurGUO7xMpKmaO/BlwwEHYnhy
 GHme5bGCRJUOvRbodEfCDnL+SEQIhDRr37R49k3PnH7Wy1N2YrgVRji8Nz9zNn7SJ3YzULWtTZn
 i+qq0eB8A1SHPSIWDMOcfCHCcf7XGLz/Q8VQQARzdv96UCjOHDH1kWsZEvj8V58dMmgsA0gyloV
 WuCa8juObyHf0Gs4sYs71Ko1sBXdIccmS8q691r9nkYo6MKL7vuP7653THu6FRZ2DZdEYzy9f8R
 X8nFNZnDVXX4x9U05t9NaxqDh5LBlJnflJcq9KBWQf7M2079kkCHBhtMrg/aGBZt8fzps1hBGlA
 RmySGZioIJ8A/sjncY7jyGVPXg1WkAA0d5pTGkvgOxUMULyM51Khy9cvCfD5ZnuWDIgQZDxwx2X
 lP/nsydcehnEHo632Ug==
X-Proofpoint-ORIG-GUID: OLO7xKVNzp34A6ywJaqIBtQII6COsC4N
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
X-Rspamd-Queue-Id: 7E9104C5788
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim]

On Mon, Mar 16, 2026 at 02:00:06PM +0530, Suraj Kandpal wrote:
> Move to using drm_connector instead of drm_writeback_connector since

"Make drm_writeback_signal_completion use drm_connector ...."

> it now resides within drm_connector. This will also help make sure
> drivers do not need to access drm_writeback_connector as much.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c   | 2 +-
>  drivers/gpu/drm/arm/display/komeda/komeda_crtc.c    | 2 +-
>  drivers/gpu/drm/arm/malidp_hw.c                     | 6 +++---
>  drivers/gpu/drm/drm_writeback.c                     | 6 ++++--
>  drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c | 4 ++--
>  drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c | 2 +-
>  drivers/gpu/drm/vc4/vc4_txp.c                       | 2 +-
>  drivers/gpu/drm/vkms/vkms_composer.c                | 2 +-
>  include/drm/drm_writeback.h                         | 2 +-
>  9 files changed, 15 insertions(+), 13 deletions(-)
> 

With the commit message fixed:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry
