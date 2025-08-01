Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A127B180A1
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Aug 2025 13:04:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF73F10E835;
	Fri,  1 Aug 2025 11:04:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="Up3tLr1+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7660210E833
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Aug 2025 11:04:28 +0000 (UTC)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5719As0t009120
 for <intel-gfx@lists.freedesktop.org>; Fri, 1 Aug 2025 11:04:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=NgRcL7ZzvTtLCYCuWN7Ar9gM
 KYLMCAowZwuINSJ1rW4=; b=Up3tLr1+ZRyH/8JyXscwVyb++epGiqLhGPbiCd1n
 dg6EXUVBuHHB6ETD4o3lY8aRx21kaXbIHsxw/ONgW+zHrTKjSjhrBxVI/xrcCgJo
 L92+LphSidvf82akRopdNEx4/MCKeAuwvZ7aySqEPplr8SVqPagGgIf9Cls1DnhK
 /stb+p0QSyYmhEKPQ3e61K23zRh5SMkvMjHljJtG9dgi7dRXrxzoPFdbyO/GlTLF
 01ubzJhQWzq39DlqiLUAWLIJUQehyriJRPPRBlj9p8Ucg1DtddqLu8SbzsGarXOv
 nyJRy3GQtw8Iq+elK5hU2cXLl5lhhRsAy9uozCOPY97uvw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4860ep92ux-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Fri, 01 Aug 2025 11:04:27 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id
 d75a77b69052e-4af0100c03fso14737001cf.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 01 Aug 2025 04:04:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754046266; x=1754651066;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NgRcL7ZzvTtLCYCuWN7Ar9gMKYLMCAowZwuINSJ1rW4=;
 b=LrjpEKFe9TNE+l92asrk8x4YHJlc+mHlcamLrPhuXkTLEyEZf5aUlrz1gbmkdg3K3J
 0DAl2IOjrEfRa1uKtz/JrZaDUwm6vnc2pQEOLrTGehxwtNGao7d8+YaJvLAe1xokdJsm
 3B6Q12BOlWcOovdP+4c7oBkW2z1j4Ki5jQ3lmkbp+/0YMVfUKyd2kSq5a7H2u6UxKJwq
 +bFVYLSor8TkgmRZKKdWjHTQOjCfQvGDjB5iWHfe2UOFHfuixcjAdmVjy4SjKdFxFSty
 0tqGiF4YozFkTHOWelnl+f3wGmpqUqjeqTBLPR1/+XzcGJ7K8hhPZ/E0yRglnZq72ZNI
 7hkA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUy9Ph05PLA6M9/1I6v6RSFh9CGfs0q/XbsRpAqzPGfXiS5Lny6DQ4PPg4ynf8Qsym8RHSo5CrEStg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxrkX7JDyeUsu5ySh/kV6FOPONVVqCz9IPdtqvi8Hbdd9D1MCek
 rmZwTxcpdrD+mIxldAu84BDIDWeVzxOKmmXmFFUZYSgj8vVHjdAAu26cT7lmmqY1U1mc8R9UFOB
 p8+2KGYEv/QUtCyO/Oo8EfyJbEbIvBnWxXTGeoYXQNPIMyY4wHmLOHfGyBDJm5NiPR+41gIw=
X-Gm-Gg: ASbGncuAirA9zlYtjn0g58JNm4lUntViZ9l4aod3qfLjzyd8NP95KzKuqaKQzH0Bhj9
 8rF0hpYruUH/yBG/Q0eF7Q21sGdATyjGQfLb2au+IgHn8DQ129vFHVpkrfcap/0bQJD7pWaBjnQ
 ZyBSrdCAu/pM+a8GIzeLCTlc0JSklUfjqy1O5VUTq+k7DuSlvYbgZcCXNyEdjaeKDOvKUbj9gRh
 Tb07ihr4QQsAoAdtl61esMGbmtC+xXtaoZaNS2/toZ5rmVKi065ry5dYTtWvOxoB2pjfrgi0M7m
 zfP6yZ4/6IWf9PZT6eZJrii16xHsP8AEDp2Xpdr96evaK3bSYFqyRhUItNUGc/M0gnNMTPrYe6y
 DeBtluMOktxZ0xTH2k5aQCOgOZGOp6V6BI4yuOsfRtSqB8sy6CRQ4
X-Received: by 2002:ac8:6312:0:b0:4ab:65ae:410e with SMTP id
 d75a77b69052e-4aedd3d7118mr112659801cf.29.1754046266207; 
 Fri, 01 Aug 2025 04:04:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHuigU5I/fNY+R/JXK4FaI194+ce8U1d910+DeVFR6Gtmc8iLAg+RFSFlfj1DqL2LEydQoptw==
X-Received: by 2002:ac8:6312:0:b0:4ab:65ae:410e with SMTP id
 d75a77b69052e-4aedd3d7118mr112659231cf.29.1754046265530; 
 Fri, 01 Aug 2025 04:04:25 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-33238272d3fsm5667011fa.5.2025.08.01.04.04.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Aug 2025 04:04:24 -0700 (PDT)
Date: Fri, 1 Aug 2025 14:04:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: Simona Vetter <simona.vetter@ffwll.ch>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
Subject: Re: linux-next: build warnings after merge of the drm-misc tree
Message-ID: <bnmpfzdhbr4wlpk4qfcewfotmstbf53ulni3jo7bklranpq7ls@qugmpsudkzzy>
References: <20250611140933.1429a1b8@canb.auug.org.au>
 <20250801143440.59e13a4b@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250801143440.59e13a4b@canb.auug.org.au>
X-Proofpoint-GUID: f-LrdL8nZgHuoZwhQK3rRUslpMgcvUvi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAxMDA4MSBTYWx0ZWRfX2GELSIuCyG+M
 hydcpyozkCmY6QvwTOVMZT4SHpPlErKELkrdbbuOceLbt5R8PPN5qmasuTygEsn7lcdsdb3a0og
 bJz20I16cavKo0mD9ccJRgWtf52I5euM8Js7VZy64PjkvCVDWpDbHQu9r1t89g5BR0I62ExwaOG
 QE0mjJc/635d+9Dq905tH9S5nSW48UroYiRYjC7dkFo4xURIo/PPvces7l89HZXu9Dt35AkrPkv
 N7ZGEJSsK9n/OPgmBpdPdaM7CxnJs2t3k9X827kKrOZ/nBLNI1J9S58BM+zP3TjKy4uFpY6msZF
 BOCWnCG7x7qty/UFc9H2MmZnCT8xovOcbkTJwvEejN371bwiWcPPHG+1+ng+UCSGCSwjWMTOIhs
 xIihoyMhz6Woqyy3f+LHukjnii3lPdU/+wB07lHP0OeMIefptDdnArzmE15c8Og4WrEkhO3f
X-Authority-Analysis: v=2.4 cv=DIWP4zNb c=1 sm=1 tr=0 ts=688c9f3b cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=rOUgymgbAAAA:8
 a=83lZ8fBB0w3I-Wmrrl8A:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=MP9ZtiD8KjrkvI0BhSjB:22
X-Proofpoint-ORIG-GUID: f-LrdL8nZgHuoZwhQK3rRUslpMgcvUvi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-01_03,2025-07-31_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 mlxscore=0 mlxlogscore=999
 spamscore=0 impostorscore=0 suspectscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508010081
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

On Fri, Aug 01, 2025 at 02:34:40PM +1000, Stephen Rothwell wrote:
> Hi all,
> 
> On Wed, 11 Jun 2025 14:09:33 +1000 Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> > 
> > After merging the drm-misc tree, today's linux-next build (htmldocs)
> > produced these warnings:
> > 
> > include/drm/drm_bridge.h:943: warning: Function parameter or struct member 'hdmi_cec_init' not described in 'drm_bridge_funcs'
> > include/drm/drm_bridge.h:943: warning: Function parameter or struct member 'hdmi_cec_enable' not described in 'drm_bridge_funcs'
> > include/drm/drm_bridge.h:943: warning: Function parameter or struct member 'hdmi_cec_log_addr' not described in 'drm_bridge_funcs'
> > include/drm/drm_bridge.h:943: warning: Function parameter or struct member 'hdmi_cec_transmit' not described in 'drm_bridge_funcs'
> > 
> > Introduced by commit
> > 
> >   a74288c8ded7 ("drm/display: bridge-connector: handle CEC adapters")
> 
> I am still seeing these warnings.  That commit is now in Linus' tree.

I've posted the fix at:
https://lore.kernel.org/dri-devel/20250801-drm-hdmi-cec-docs-v1-1-be63e6008d0e@oss.qualcomm.com/

-- 
With best wishes
Dmitry
