Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJDZCIE6+Wkn7AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 02:32:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C53984C56EE
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 02:32:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C64910E8F6;
	Tue,  5 May 2026 00:31:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="PX4xsM/z";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Y8LPHlbI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6D4E10E06F
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2026 00:31:56 +0000 (UTC)
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 644I4D3t1151983
 for <intel-gfx@lists.freedesktop.org>; Tue, 5 May 2026 00:31:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=9bpCGbXjqCOIAvvOUlLB2mc5
 4kkmnK5Hi4mDPrlwbVg=; b=PX4xsM/zVOQ+BGoq3faD6CRBTEjk/8HQYr4tOenZ
 SvRGdwDJQkJNGw/Wr6FzZ5pqu3iTRSieHe5vU/CrPRyEMIc4I92RYacX0zMmQIYx
 6S3II89aQ3eYYJuiS+Qp4NLKy5sR5KANdxzvPyf0G0WI2tsXq/w1FQ4xrh1DRE13
 oXBl/YAN2ozv9Rt7rgKU8oOzEpugxBY3fLAYX515vlCYVcc7sQ2GsXQjqiU920yr
 OTkCGvkzA/j8Pf06G3SNiYhP/QI5AsqSA8ytKLRDa+PMtN1d1aouUheADp88ZN1B
 c4KJeNtsydEogxYU8rn9416vI/+nf9+NOfEwAksf2UmvHA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dxscyat04-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 May 2026 00:31:56 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id
 6a1803df08f44-8b3fe2f190bso186202226d6.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 May 2026 17:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1777941115; x=1778545915;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=9bpCGbXjqCOIAvvOUlLB2mc54kkmnK5Hi4mDPrlwbVg=;
 b=Y8LPHlbIAGXxwN+78YEkMkj+OKrXbBh2BbkpHxUz2jlT8V2nsjCpwpwhEGOxWpItnZ
 iFqHY6AWEv8S5eTNoCJzObxuwFBeU00cj6/pPqOMTMZBlArRPEgA1vbOa0h2Bv4e/+d/
 IMV93q7KZb2Oh9kVJQ73zBVw2ECT8nkAVD7Ybof0rPfKEHrjcIFHL9UCISjqbFxE9XyI
 6n4zX0RoObHIQFhE8orVrnDZhOe19adXtH7To44ppgQXppbcJzM3cEm3H67EgT+g1N+j
 o6PAAbPyguQh7bGVgi5QqZCHYTiqpLjWkZ8MA6jAvzMTRjiz6grCfZb+omfJxNi7IPWQ
 ylzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777941115; x=1778545915;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=9bpCGbXjqCOIAvvOUlLB2mc54kkmnK5Hi4mDPrlwbVg=;
 b=J7CYV5+rEU7Y4ZAd+CzI7CzZJDVe4Xxa0vB6qKlbiR8NSuPUbpxbmj+Ajm475vLkMQ
 DFbDgD1N/8kwynVQNwX07bCZNb5zGC4YrxzSpg0zWo9KV6f5dYkQBGFGNc92PbbkyY55
 Lpl3XCe3Jlgy2Z5SWt4VySyn7RihkbuQ8ST194TZOikOQbzyAEjmrHZMQaYYTMas03h6
 +ggzHazwp81O75lOesbpRWTCmCbkcY/SO62oes2f5yDNQSeKGGZA5ra/y8X0jT6DfN/H
 bylQ9GTcCT1kF9OrGodGm8uUGgPx2CcOefIxj4Z5ynNNCOJnKSZJ1wPTAdMwdrnwqSPe
 USnQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ8ttsVIlzIpcU2+dB1jOMFPIs5fD7hbtKi0bvfwWflMWbDBhlMumHXp7/Kc+kltoSFDlik1/5OwRLg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw/5g3Te7T76i5EOW2bc7mc8mTa4/5FKs5xYGghOKW/oQfdbzqX
 Hd5FfWivVKVfgejNwdU1UhJz7S63giGzgqfm60AohCcI1XYPBboFEX6BgTWhAaItj9gWueMxrFx
 aFhHx9bMEwFU3xz1Sjna7ES71MOFid/Rqds6L2eUeyRcEkupP05hhAEdRSY4boVJlZjH02ZY=
X-Gm-Gg: AeBDievcKdJHFwsQR2pfnjobIoH71dVDCP0yz8PTyguFIsi4mpmaEcHV1D6Q8JQYLE7
 dpVpjMx+5zXzUpsVKt2cAh5D1xfsbJEVWrDZN5v/H2y5Ao7UAd1gUMLGwOITtW8ZHEtIGpabNov
 qjbp2m/RjPCNY3mkhQfTrzg9CskvFBZAO79PzM6TjVoTbzF7Tjg5p3PK2PVI+LAfG2MhXHemibm
 g0Xy36kcoz8jycVzlOn3mzEHnN45A0ngqdZTGhswMa/yYfFlmB1civRUcS64B+VJ6K+WMG1qutc
 9GEpE/JlG/tUmlDAmkepW4KK7LIoL78ZvilBSxoZpFfqtywkPDFDHnYWdfAbBxVv+NBJFSHBbky
 6bAoIyZRl+Rw/YjyqyCzS0aG95dFTx2cZV9VO4j3kBw9JtLAjtWXihfMDBLEyMLqWLJst3x3ND7
 k71sDeI5RYxWu8lSbyDgbZXuuZtpdSPkKDaj+4gonVbfjomg==
X-Received: by 2002:a05:622a:1495:b0:501:17a9:5ff5 with SMTP id
 d75a77b69052e-513069e6f34mr15970531cf.21.1777941115043; 
 Mon, 04 May 2026 17:31:55 -0700 (PDT)
X-Received: by 2002:a05:622a:1495:b0:501:17a9:5ff5 with SMTP id
 d75a77b69052e-513069e6f34mr15970211cf.21.1777941114636; 
 Mon, 04 May 2026 17:31:54 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a85c346d1csm3387545e87.75.2026.05.04.17.31.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2026 17:31:53 -0700 (PDT)
Date: Tue, 5 May 2026 03:31:50 +0300
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
Subject: Re: [PATCH v3 3/7] drm: writeback: Modify drm_writeback_queue_job
 params
Message-ID: <cccungluhdcfgdqdo24pgmqmugeohvqr76nuibp5m3tdfirj3a@yclibqr4ftr5>
References: <20260316083008.87466-1-suraj.kandpal@intel.com>
 <20260316083008.87466-4-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260316083008.87466-4-suraj.kandpal@intel.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA1MDAwMyBTYWx0ZWRfX7RmVpCfqUsA/
 AuRTP5984IDLrYGg0+zM8NeE9VsVsF5o6jJ9JwbHvgjA5fJRTwvM8EmuV52h88ncQ2Gt6C32nVj
 V3AAz0LF/eCTPn9ftr/wcdqb+Dbsa0s161U9dHVrhSc2ueKjiEmy+MxlnJ7OWBNs+UyyFzx+70R
 SVl2OvN4pUaGjoWcHKNro/daDlEs/r6ldiOHL4JNmSptgJ7blw+6rBEUg5auCJHROpso+TiowGq
 xILahVV2Ixilln67ySNSW01y1j6S5Tp6uoG+bCB8JSBNVsuKWBzOsF24VhsIBwL2yGjU1zgXSRT
 JlSueqrRDfOY52sF2Z9s/UAGYrC2rvtcq54EiDkRSZpxu38LStvFUkfhDfaLBwOn4ucorQlHqH4
 gpCRvYKf/7vbYuQy7PXM6ew7vg0DEHFa6XV3SG3mtPkGVKiqHQ9H1ZUjQkNIqjML+knFoZIDJPX
 U4LOU11VC6IqMief5Yw==
X-Proofpoint-ORIG-GUID: PoSpkDwMqCn-4pfFY6kdo6e3k6cXYGMA
X-Proofpoint-GUID: PoSpkDwMqCn-4pfFY6kdo6e3k6cXYGMA
X-Authority-Analysis: v=2.4 cv=C47ZDwP+ c=1 sm=1 tr=0 ts=69f93a7c cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=QyXUC8HyAAAA:8
 a=EUspDBNiAAAA:8 a=O7Z1nR-Lyzu68zncWUoA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-04_06,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 phishscore=0 adultscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605050003
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
X-Rspamd-Queue-Id: C53984C56EE
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,oss.qualcomm.com:dkim,intel.com:email,qualcomm.com:dkim,qualcomm.com:email]

On Mon, Mar 16, 2026 at 02:00:05PM +0530, Suraj Kandpal wrote:
> Move to using drm_connector structure instead of drm_writeback_connector
> since this now writeback resides within drm_connector.
> This helps make sure drivers change drm_writeback_connector
> using helpers provided by drm core.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c   | 2 +-
>  drivers/gpu/drm/arm/display/komeda/komeda_crtc.c    | 2 +-
>  drivers/gpu/drm/arm/malidp_mw.c                     | 3 +--
>  drivers/gpu/drm/drm_writeback.c                     | 6 ++++--
>  drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c | 4 ++--
>  drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c | 2 +-
>  drivers/gpu/drm/vc4/vc4_txp.c                       | 2 +-
>  drivers/gpu/drm/vkms/vkms_writeback.c               | 3 +--
>  include/drm/drm_writeback.h                         | 2 +-
>  9 files changed, 13 insertions(+), 13 deletions(-)

Except for the commit message (where John's note applies):

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry
