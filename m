Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SO0mEh2ei2k3XAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 22:07:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C6411F43C
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 22:07:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA79010E070;
	Tue, 10 Feb 2026 21:07:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="BOj42PKj";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eN88VZ7P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2CC010E556
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Feb 2026 21:07:36 +0000 (UTC)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 61AFOWG04176958
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Feb 2026 21:07:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=WYekD6MnY0SEVsICbNMS91My
 xF2Htl8S3olx63sNyJE=; b=BOj42PKjqHWpHuUFFKX7fABB68llL9h3EjDxQ+m7
 RERiH64TbniHjMINOGhJxsL/cpuR5YC41SHlQk9ilvrSLQ5TzUeIPi+i09rdl2j2
 aAh48Z/KrFLSA4Q3VhLof+0nEPrq4Tsw2aVi8cvG+H57j7nheg60qt29lIzC/59H
 KDB9Ljm9wjXiNBP+W+TJPGxeKGosACMgNDLFAoBHrO80pUA9Msw1HWXhVgR11zsL
 spxo0TF6+3N4sa5NTOoD+34Pvymqqu+KcKOgL1bI7x/xGJ7Tzj2W8gvtiqfvYMPG
 lcNfvwfEZsxPldedJmGFaaJaxM1kQPqAUYd4+vQYw/u59A==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c879mh60p-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Feb 2026 21:07:36 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id
 6a1803df08f44-8947d47793fso289310436d6.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Feb 2026 13:07:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1770757655; x=1771362455;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=WYekD6MnY0SEVsICbNMS91MyxF2Htl8S3olx63sNyJE=;
 b=eN88VZ7PpSk9EFUiuu16Kos1qN/UbKRRja5pf9B9MA5fnJWnDCZ/JtmuTOugZDNq8F
 VCNoC6YDoVD8cN4AmEKmVc2/1/rks7Mj8C6X0ivlzUpJLSRrjMMFr3iZwDulEU0v/aX9
 +wSPminB1Do2/1wTGEotUAdQuwaKwvEUsIPAy//Ru1OHAluSgRmlOY3x3HXzn46lYRlH
 +NV5y+QzEXYAtHBpPalajIks3E22k+p71ZbSNlztTdg+RgAtMyO4cB/JhsCrTazOCMPc
 bU8+r5NVbS2uoZL5AAsP2euUMhsXPQ+JXL3vwH5HnpDN2YDwxL1vatWjZJNEF/p3548C
 WZmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770757655; x=1771362455;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=WYekD6MnY0SEVsICbNMS91MyxF2Htl8S3olx63sNyJE=;
 b=VuReHXBpOtidzqC3kWuPlLZrzMbbqphtXL4wWWgW6sa8IgsYoLrs3tvPxM1BHyTe5S
 XEh6JKjThtL8x5PVAcKidYpxCFyLgW0K+BHtou1gDKIPqur28tbV1rATmYyhZ2FCd5ns
 KH4MHyAwlzklebmdUQ2M8x58o1W4+k1wlDc3A2i73Qwu32N+HT2C6VeIl6FCplUytUqR
 Qs2yllHW70SGMJ1Dx07mgCVdZXPmsy1FLYIDD3TTSa1Vb0JPL/HLGaXWmdq9HH7QhaQk
 A7l65JUpizU0PzHw2M0mSen3dvTy3gN874xLsJAJxn70PE68laHB2d8L2KxkjWd3tSK8
 zOwA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVbo5FjLfzHK5sqbykmllD2/sk99ufb4uMWKfanikrqXZRJ3ydLzSU09kqxnXXguZNS7y82fYqffXQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxxwVCt9Fo3nw1cB25a/gT/t8fF7UCafEWx3UwD/6oj/TZHCcGR
 rHjCXgq+YTA1xa7UvXE8p1a+e20iKCSNkQ/y/RL2ta8Y+fRweLoSYI8fCgybyTIHOXuWuUVG3dY
 5PH1n5mKTbXW9AcZO45z5xH6XTc5S7e3dTSd0mxbLu/vI6n7TPE/oDcYystcULi6FLRrxyiA=
X-Gm-Gg: AZuq6aLQ6USQuwlTA77V4jR73AH7OqzN4Wv+dfFLLnxRLbtU5o7CBDUXzrh+0RsxOh2
 hf0eizvStVQk/qvBe7flHQffrunrMj75pWZKh246y4MJNqNOAMEIaEThabQYDF3JlzYBkLa1hfo
 guqelntf41hGJGgdjSQRR9srAB0iBW7bb26t9aPWHC3NqWO9YQV2FtBc3koa1/IGOUwGQjYFt0e
 G65zxPVSRBEFs1Z/Gt08fP4rSIXYI5OOgzVETTYU30d1Lf28A3ldT6wXsTA5wR0gwKtxbfgSC/4
 26vO1GJPjJwK76jQOofqAysbZKLrFWjPdhmLzL+cYC/1WZOFyMYcQZ808wtWQCs1FPL3pme9a+T
 Y6K3+Ae+HaqVCE0BO4LVLh/1YKECWw9YlSBl/IpWPcUp/txF8CDLMBkq/z2z7NidUrpgmfItClB
 cPjJprHdYvdc9pY/BLXhz2FHb6cOruMqlAWxE=
X-Received: by 2002:a05:620a:4492:b0:8ca:1240:4990 with SMTP id
 af79cd13be357-8cb280bc385mr75880885a.86.1770757655212; 
 Tue, 10 Feb 2026 13:07:35 -0800 (PST)
X-Received: by 2002:a05:620a:4492:b0:8ca:1240:4990 with SMTP id
 af79cd13be357-8cb280bc385mr75876785a.86.1770757654672; 
 Tue, 10 Feb 2026 13:07:34 -0800 (PST)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-59e44cf6ee4sm3514472e87.4.2026.02.10.13.07.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Feb 2026 13:07:34 -0800 (PST)
Date: Tue, 10 Feb 2026 23:07:32 +0200
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
Subject: Re: [PATCH v2 3/5] drm/ci: uprev mesa
Message-ID: <sl7sjcaylfmemxnqfs72wcb4mv4smcn2knhcj4he7skmgawqey@mzgj7wwzjvgb>
References: <20260210071138.2256773-1-vignesh.raman@collabora.com>
 <20260210071138.2256773-4-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260210071138.2256773-4-vignesh.raman@collabora.com>
X-Authority-Analysis: v=2.4 cv=UKjQ3Sfy c=1 sm=1 tr=0 ts=698b9e18 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=QX4gbG5DAAAA:8 a=eEoeB42FsikaTLMEZsIA:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19
 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDE3NSBTYWx0ZWRfX1fgbgw9aL7EC
 44HVvE3MhwTvjPouqtjneYPhFYARSDR+jIQfDlNcydCjx+2JixCwfhnRKMIBwLlugSsE7d7C7YL
 HkfAvtviq2WNlRhhenkW4TYK1G9RFONa5nuGAW/RUOaF1RBCjnnbpz9tI25YjlBwfWAv2XflBs0
 u+MwfoWulXGRQTpgv8r07qsI2BNr6gJmIQ0j+Ma/QpoIOJEEdSlexm9110PDBtych66bL71pD1d
 5J6qgizVtb3oYwBkR0BN13poMVBM1wZEH/LXmeuh6Nz/oKtF03GUhH2kpPqqnx1Lpx45CiUhQ0d
 RXa4/cWaI9jc1HUkMHHjD5jrIjcxwX94wC+/Pwx83+IQD8MaoDI9JdGUcqneL9TLEzS+L9B/38Y
 7Ck8ilRs71SgpyVtQvg1hXdf6ITuiZ16lbKiXHK/Zm3lx/4PvaNmTsZ5FS7n8oNg3uw4fUcOj7P
 NYtQPuC2SXzA13Vca1Q==
X-Proofpoint-ORIG-GUID: sauh7mRkf0pp_UG5vvF4MByxslsvB82K
X-Proofpoint-GUID: sauh7mRkf0pp_UG5vvF4MByxslsvB82K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 phishscore=0 malwarescore=0 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602100175
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
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 61C6411F43C
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 12:41:32PM +0530, Vignesh Raman wrote:
> Uprev mesa to adapt to the latest changes in Mesa CI, such as:
>  - LAVA overlay-based firmware handling
>  - Container/job rule separation
>  - Removal of the python-artifacts job
>  - Use lava-job-submitter container to submit jobs
>  - Use of the Alpine container for LAVA jobs
>  - Various other CI improvements
>  - Remove bare-metal jobs and disable apq8016 and apq8096 jobs,
>    as these have been migrated to the Collabora LAVA farm
>  - Fix issues with rebase with external fixes branch
>  - Update expectation files
> 
> Co-developed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> Reviewed-by: Daniel Stone <daniels@collabora.com>
> ---
> 
> v2:
>   - Merge patch to fix issues with rebase with external fixes branch
>   - Remove bare-metal jobs and disable apq8016 and apq8096 jobs
>   - Update expectation files
> 

Thanks
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry
