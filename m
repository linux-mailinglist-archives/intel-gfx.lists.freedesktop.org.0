Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OAvWJ4eti2nmYQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 23:13:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1297F11FA7D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 23:13:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C09010E0B4;
	Tue, 10 Feb 2026 22:13:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="HdEnIsj/";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LQr7pw5R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BBD810E122
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Feb 2026 22:13:22 +0000 (UTC)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 61AIoj954013972
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Feb 2026 22:13:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=5nTCr+xuryPJ1HpVPDG/DVIr
 pdNtB8DMTFv7L6Sd+kc=; b=HdEnIsj/u9lznKcM+cVpa5eAlJjqKYDIdfXWleDx
 ILcEWqi3xNQPG1uqcdNJVKuH6RDVfPeA27IGCPyNzunTkj3rB0UhqAcxY4CHCpD4
 osOg2arsTz+URJlKTNL9WtjlzrDlp3XOhEyN1gjO1N0V/LIakS4+C7WPkkZr0l2G
 APeufA8GrK0do4Em2NyYow+uauEPvQFQ1yxVRmkfEmo3djaLnTLDVD7WxOLQhlVx
 IgOn/GWSYha1OJBPHRg3pPAkGLKxLapiu+khCOPei/UcpQkl2AGJgXtxW56eUsqG
 awmcAC9T8OxeFQHXdAtBuoYiLUXQLjYrGYx2WUDp356dXw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8aad8nu3-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Feb 2026 22:13:21 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id
 af79cd13be357-8c52c921886so156864485a.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Feb 2026 14:13:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1770761600; x=1771366400;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=5nTCr+xuryPJ1HpVPDG/DVIrpdNtB8DMTFv7L6Sd+kc=;
 b=LQr7pw5RrnKr7xFcZrAXQurpkwtn/m5rDy+cC0kuhqg6KiCFBu8NymUZZtEyN6gB6u
 Exd2J0EBceJKH9qPsCYi6kEfewe92ySyvcwQfvWx/hPuTW16Yi/oK5cGtdZU3kq18XQN
 5Joar8unrjOro0jJ38wgS6QjjAHq4m40zPfyugEVmS4LEdZgdvZJJFmZ3KL/DKL/pHxK
 K9BiApTdYGVmUh6P8ZEqAz0JruxEfKXd8xZNQ9divgdI4m0jWnpbX2xTJobQfcVEAHQ9
 IYtwUwicZFtQBkmT10pJ5MOnhe6Lf6pnV1EFo6BWUMTdcJlzAX5o5WIxmRTJZvRghlBe
 R1RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770761600; x=1771366400;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5nTCr+xuryPJ1HpVPDG/DVIrpdNtB8DMTFv7L6Sd+kc=;
 b=e2DlghtH97vWpBigZnrDbb1S6j7KxDufHZfJcOALrAgP6TTYpZ4xkNjdb3EQNVF/p0
 VrKb3iqEeY7JykFz5sixyOdetCMYxs8y2faumNfo354m+FfQ2IgopUIRu3ebJLgJWQqk
 /4yiKn1T8xBrTRbEgwr8XV9bF9ehuQwKM5vFM2yZoUkaeFu7g3xvjXXfYrEziQGiHvRt
 7vhmVGR1AdBxU+ZYAR+nxvcvL8tLD+AGb544VtE8egpZz/Bl1LirP4K6SJVrDoi9yn/N
 vwf+leQqT9TqjtbC0uz53PZEQLA/jPQhgf+YmZKXDJWElXhyi7OvHKZnk/KEqCmDiux/
 vqcQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUMh0iUNs9rkfk9qwGs4Vc4VocZLDEkvm96l6iurZNbzcAyiV4uDgKYKbqDJcqgfXVvIpE52w0kIyU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxjA/rDs32gxFJD2lpyMgC28iejGnkWondwhX4SY1Beo6/T/+f1
 3Ig1jRnTcDoiXmE4OIsAIFqZ+CV9TjPjQPzwCWLb8Zhu2ixK5x8f1ubeHaCKRFnsOBHWNGjqSbL
 +3yjbSWbAVHHvuXHBEHNziHHNq1M286vw17+M59zLJv4Gd3eWJbxrI+zAptT98z1PWLZRZTA=
X-Gm-Gg: AZuq6aKM1dtGjUIODf4/79DEliv6wC5dpr+k9kvmmwszo9RFc08vaj5kxjKC1oEO/zz
 m/IfJUbG7RZw5WUh7jLdlqKLzJpPgPDctYnDtrsYV8RMcJ16m7ubUHgATl6JKvLT4mRGkvi7r2Q
 LR5aDWPbE1iHJEW7MHt9FHd2QGdxb78DVZcUpeSAmhfL/XTiMijRYXBKl6V/WBo4WEWg+fiMZI3
 pynYORxIS0pJG/wiL5P3JNWz5yKiyR9K3V1zTEg5HopIA+9E8WfnyQxFl/Tz1gEBnIp41apakfN
 ivAdulHemQvOlcl4ITdeLQd4sNNOtKQbKDTJfKl8j9oSR0EUhUz3ueZ5HCTgK5dajlcToHu5+xt
 qdVYE/DW5fgdKeYsPSmcp2qmfmA+V+63kY6QIIc/NCrpeTW2QxL+WSfhAYr0yeXyo1ck1f2Y3D6
 trqXQijyjX2fRMsYQeJYOw+n6bXO5041JqT2k=
X-Received: by 2002:a05:620a:410e:b0:8c1:ab1c:f2da with SMTP id
 af79cd13be357-8caf13083edmr2257940885a.70.1770761600399; 
 Tue, 10 Feb 2026 14:13:20 -0800 (PST)
X-Received: by 2002:a05:620a:410e:b0:8c1:ab1c:f2da with SMTP id
 af79cd13be357-8caf13083edmr2257938385a.70.1770761599898; 
 Tue, 10 Feb 2026 14:13:19 -0800 (PST)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-59e44cf6f72sm3521414e87.2.2026.02.10.14.13.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Feb 2026 14:13:17 -0800 (PST)
Date: Wed, 11 Feb 2026 00:13:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com,
 helen.fornazier@gmail.com, airlied@gmail.com, simona.vetter@ffwll.ch,
 lumag@kernel.org, robdclark@gmail.com, robin.clark@oss.qualcomm.com,
 guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com,
 valentine.burley@collabora.com, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org,
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, virtualization@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/5] drm/ci: move qualcomm baremetal jobs to lava
Message-ID: <55cjkwps5sfd766uxab5viu36tez77rnrlnabocqb3o7t5hhr6@nydrmwbimnzj>
References: <20260210071138.2256773-1-vignesh.raman@collabora.com>
 <20260210071138.2256773-5-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260210071138.2256773-5-vignesh.raman@collabora.com>
X-Proofpoint-ORIG-GUID: QV6mF6R6xsnja90hssK1U4mxLrz7XfsG
X-Proofpoint-GUID: QV6mF6R6xsnja90hssK1U4mxLrz7XfsG
X-Authority-Analysis: v=2.4 cv=OoVCCi/t c=1 sm=1 tr=0 ts=698bad81 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=QX4gbG5DAAAA:8 a=9K-sheTcyn_FmZRYi04A:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDE4NCBTYWx0ZWRfXzKgaYyljKtgz
 dopaO/7GUANnpeiRmabrLSgQNNbhI7iZoUCfcXHk451hHP9ITpoy2esMaEynRwDAGYFW9HH+5nb
 wIS5L+aoCAhevDu7H81lEQ4Sd6zDNzCsmhwzhlFcIjzQn3gs4nD0d9wm2OmEf4kdTLOLYr7wkAy
 cR4sNlbfBL9yjhF9hpAZmeRzkVF2MFjKpmGAaGlVXg3eEizb+Ns05Q60NOtUifpWDBYByLi4xfn
 i+nxGefDfPUFXkaayGF6OzMNYI6I+hvFTX8W45yU9nXei2VOifrhMhcyEJEACsMvYh0Uii+kJPl
 SiGOqZ8V6YBpfiyqyHpNEhsshudeevWNrDxrrUix+fN2jUzu09FvIO7NfO0nUWFFZWs3PwVolFW
 +PnhWy5M/HxWDRFAWN4QasUcoixdnO5JiRcmBA/CyDHoJtwJUMCo2ZdPDxIs73VQ5ZYDOto+17p
 EXU+dPS5jLUjX5Mew7w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 phishscore=0 lowpriorityscore=0
 impostorscore=0 spamscore=0 clxscore=1015 malwarescore=0 bulkscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602100184
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vignesh.raman@collabora.com,m:dri-devel@lists.freedesktop.org,m:daniels@collabora.com,m:helen.fornazier@gmail.com,m:airlied@gmail.com,m:simona.vetter@ffwll.ch,m:lumag@kernel.org,m:robdclark@gmail.com,m:robin.clark@oss.qualcomm.com,m:guilherme.gallo@collabora.com,m:sergi.blanch.torne@collabora.com,m:valentine.burley@collabora.com,m:linux-mediatek@lists.infradead.org,m:linux-amlogic@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:amd-gfx@lists.freedesktop.org,m:linux-arm-msm@vger.kernel.org,m:virtualization@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:helenfornazier@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,collabora.com,gmail.com,ffwll.ch,kernel.org,oss.qualcomm.com,lists.infradead.org,vger.kernel.org,lists.linux.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim]
X-Rspamd-Queue-Id: 1297F11FA7D
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 12:41:33PM +0530, Vignesh Raman wrote:
> Qualcomm apq8016 and apq8096 DUTS are moved to Collabora lava
> farm. So enable these jobs to use lava and update expectation
> files.
> 
> Co-developed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> Reviewed-by: Daniel Stone <daniels@collabora.com>
> ---
> 
> v2:
>   - No changes.
> 
> ---
>  drivers/gpu/drm/ci/arm64.config               |  1 +
>  drivers/gpu/drm/ci/test.yml                   | 41 +++++++++++--------
>  .../gpu/drm/ci/xfails/msm-apq8016-fails.txt   |  4 ++
>  .../gpu/drm/ci/xfails/msm-apq8096-fails.txt   |  2 +
>  4 files changed, 31 insertions(+), 17 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry
