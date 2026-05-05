Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ECP/Imw7+Wln7AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 02:35:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4047E4C5852
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 02:35:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A257710E8E7;
	Tue,  5 May 2026 00:35:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="UMZDiz0I";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NLqe/1Uv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 091A610E06F
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2026 00:35:53 +0000 (UTC)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 644KQoFl331067
 for <intel-gfx@lists.freedesktop.org>; Tue, 5 May 2026 00:35:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=NpX6cchQLSsH6LH2boJjUcfU
 CfkpNdpGQlSuk6n0mLw=; b=UMZDiz0I7lVUfm/VJb7KhVcl4ksimUeZ2YvWZemi
 gvyC9lm8YCaf93HJKZcXMKiH3bVfs2cC8kfLbOlgn12p0YG7rN5gbBkXSdkmHNsR
 k3BajHitAQWal8EG095jqVV4TQb9Uh0x7z35nkIxmk3ETMZqMYN9/Usl6HFCPqFu
 Dc4vQvTIYV3ERffkVHo3FZlik1dDnFmQ4g0O0vPkd1ZNm8nA3c2+4tS5Wunu89e1
 I9pFoVRPjsEm/6Ap4FSE8hYF1In9YYdhOwRnPwe5qpc5EC7mJI+RP1WgnUjzJ56q
 tb3EKQ8VElC15C6UTyOCY+g6FB8XTrmSyXZtLodOBmlxuQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dxvr1a5th-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 May 2026 00:35:52 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id
 d75a77b69052e-50b220c72bbso118508671cf.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 May 2026 17:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1777941351; x=1778546151;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=NpX6cchQLSsH6LH2boJjUcfUCfkpNdpGQlSuk6n0mLw=;
 b=NLqe/1UvwCvJG57z26zqiPGAzPLDEVLk0R3EalQxUWxdVY1KZujqZEA54pgz+Ya2Z8
 ctEbkqx9c//NsFIldhPt9AJ/EyzSTxDDRWv6zqIkjtW8c2bisWJeYncW3xyBeZ0MAaKO
 HLuZJIxS/gnBHUQ3qPu7J2Z4+25iQYUmJhhSuRA7tQWJzhHjIF827bdGugq83084wWRs
 rfMxXw9dD9/kY9GBmrLK4J1v5Z2t3ZzmvsWiSQGxFweWltpXujCYAca5iuU3zZ3Rg3lC
 bGvvC5RN4YUQ9blDqME0tzOfXqT+gB5CJJQiMKwwjX1BO3VrZkjMUvAvbtaLljYro0iw
 Gg+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777941351; x=1778546151;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NpX6cchQLSsH6LH2boJjUcfUCfkpNdpGQlSuk6n0mLw=;
 b=bqi++HbT29QIo53ci/6OOxQhy+bTtFkbeajdR6X0W58hhBjoGTV6KA/JYZghRooa/x
 3i7ExWOMt4Boj5nJT/S3Cjs+FWrZ5WmLTNCgtepwBKT17U/E1XX02Zg+FnFrtehhYGEF
 AQcSBFZyu5q0XRd7pRkMgrsRnkdY5CQGLN6PJj5Ww3QmniAKvlBlWt9EiCvzhEzRDmbW
 eyQ1Xvt2C6B0gcgrSqYonrgvsqTdq9KLMdt9OtCSyddSL5toFuwAC0v3xys6yqS1Fhjr
 oz7NAHWWgnSEe7KeVnNstJXk7so+VN/pKaC8xFXOEhfU62kWpXhl7Q8IylnGrc87z05C
 JnCA==
X-Forwarded-Encrypted: i=1;
 AFNElJ9pA3Cqz4AeSHrxeLOFOm1QZcGOE4baVXDVvwJ3yOnit1QUhJJBNaJoYXs50MTaXd5FiNrYz3hqEb0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx00xLvU4ERZKe7sfvvcEI9L+xfmtu4UOnQRo2UMlVIfwmSbhlA
 sl6GnYsafFHIjAYhDFmaLMIdVISGecSlzNG/pMassY4lo2cw1oU/HGC6vkqhpl+7QPgZaZogFZM
 iQgh+FWzoPnU3t/b8qEComdKLhIOiLVNQFI7Idlkfm6Ea3MEqruYNWOk7hX7EoSoqALBPaRU=
X-Gm-Gg: AeBDieuTawe0CHw4tQYdoU8y3BMKcEia4FVchXj3Cri7FIYj1rJ+UNbGKsUnkWvcirR
 IvlldkyZfK1owJAwO1AbHxveeQnuwaT9jzkhukhFHmdDZyAYdSmewkmUMDdpgOo3/TE/exw5OIu
 1dhex4mKUTYBeB1hBVRYA1OxUbUQY/9V+yev9ngVIZUwcERn+4lAPbRlJ8yq6JgLvuo+Ob0dISy
 Uf4dNYkTayemB94mzlUSoxAhwuHWsAIGO8bis9nzvEkXj4CEGIrcoY561vbarqZzc38wjSaect4
 ICSeaOi0GCFuHhZTBo6aUCjrVapPohanFxJa3ISHdWa26fZASXV9HChUTY7u5Tmr/JBz4tmSJWd
 A4VmrCSUJLSHZ6vNWI9+3OC/FqO5QVjoP50KitcunMAgRXHgRq7R4x3yU6uP6kFmUJn1CeBrctv
 uPSerjlR1n3x2M72L9V7Uixfm1lwAe1LAd1PzB30myjxfydw==
X-Received: by 2002:a05:622a:4d8a:b0:509:238f:ad8f with SMTP id
 d75a77b69052e-5130698bfc5mr17753591cf.5.1777941351516; 
 Mon, 04 May 2026 17:35:51 -0700 (PDT)
X-Received: by 2002:a05:622a:4d8a:b0:509:238f:ad8f with SMTP id
 d75a77b69052e-5130698bfc5mr17753151cf.5.1777941351115; 
 Mon, 04 May 2026 17:35:51 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a85c3418b8sm3432152e87.64.2026.05.04.17.35.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2026 17:35:48 -0700 (PDT)
Date: Tue, 5 May 2026 03:35:45 +0300
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
Subject: Re: [PATCH v3 7/7] drm/connector: Modify cleanup_writeback_job helper
Message-ID: <nfxifrthux5hej4foawtavpiaegtnorai5j5l5hljmrvxwi34s@nryizbirf3lv>
References: <20260316083008.87466-1-suraj.kandpal@intel.com>
 <20260316083008.87466-8-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260316083008.87466-8-suraj.kandpal@intel.com>
X-Proofpoint-ORIG-GUID: UOHRrhR61Zoin_VpZ29C1rQN8pRVSwrK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA1MDAwMiBTYWx0ZWRfX9cTT5bbEAxRx
 wSRpKlN4jE67dJEX6mMZs2QrOCUFJ+znzYmfcyjPIKjpKLNpsk0EVGKCYJ+nGcRvSPZKP7S7LHb
 zXUBRuJCOJxv5rJKBoPU6/SfolT1JrPtUnwmbP2GLSPMj57Rk0lsFmik2NNY8sFAow4OqT/MBHZ
 voVGf0Mpg1/PNcA6EfrZH1+f0mgYhn+VtvSA+rnLOqCeaOaLt5dpRdejxcpXt4NxBnlTYg4Opvk
 KKrDZHvm8hZJ85SPZQGjToOuYoaLmexWt8jQehQOWHg9KD6mfqxbeAvxVucJUagwXHF3HTEvwVu
 FoDaHfRqYA3TtWNAEjNzv7cmVN2juw7n6JKR8EOhu7/qWb5xAPJ/Aa0unlyrJu3LlLjj9hzAz+F
 XydYanuyCLqUtU81V0PVEj5+obnX3sUCysizg9+MDSqTkw1i1CA7wR4gZ+zvKrPymDCRYiHu+Zf
 ER++8wbXMDDewZCnnSw==
X-Proofpoint-GUID: UOHRrhR61Zoin_VpZ29C1rQN8pRVSwrK
X-Authority-Analysis: v=2.4 cv=RvL16imK c=1 sm=1 tr=0 ts=69f93b68 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=QyXUC8HyAAAA:8
 a=EUspDBNiAAAA:8 a=tQ94oCB4lqOImTN_oEMA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-04_06,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
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
X-Rspamd-Queue-Id: 4047E4C5852
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
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,raspberrypi.com,vger.kernel.org,intel.com,amd.com,igalia.com,gmail.com,ffwll.ch,arm.com,linux.intel.com,kernel.org,oss.qualcomm.com,linux.dev,suse.de,poorly.ru,somainline.org,ideasonboard.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email]

On Mon, Mar 16, 2026 at 02:00:09PM +0530, Suraj Kandpal wrote:
> Pass drm_connector to prepare_writeback_job since

Typo: ... to cleanup_writeback_job callback ...

> drm_writeback_connector now resides within drm_connector.
> It also makes it uniform with params passed to other
> drm_connector_helper_funcs.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c | 4 ++--
>  drivers/gpu/drm/drm_writeback.c                      | 2 +-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c        | 4 +---
>  drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c  | 6 ++----
>  drivers/gpu/drm/vkms/vkms_writeback.c                | 5 +----
>  include/drm/drm_modeset_helper_vtables.h             | 2 +-
>  6 files changed, 8 insertions(+), 15 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry
