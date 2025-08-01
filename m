Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEB5B18024
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Aug 2025 12:31:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 291AF10E398;
	Fri,  1 Aug 2025 10:31:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="JTfPhGUP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 062C910E398
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Aug 2025 10:30:57 +0000 (UTC)
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5718weJ1018848
 for <intel-gfx@lists.freedesktop.org>; Fri, 1 Aug 2025 10:30:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 L84CyF+woWXvkwBzd7M9RuuiXRAGPXc2Q4DgUeAC+f8=; b=JTfPhGUPPA8j0Ovh
 zlYaGqbYQbcMEk+9sj9CeEoEZ8yVfvu1NvmEonIV4+m1eZtYr2geyQb6zadeS98c
 PfPg44biaWsvMGO4GFtG5lengPCT4tyr5FC18ejZI3u16akjFJ2iLIi6MAVnxJ1Z
 gp+ky7rZSxSSjUpL8jXQGASTZvJS4KNGCRyKyEOnacA6JT0xQraDWb1eywQYlt1m
 RQFCMtq5gt+dlRMsOhNgy01tIjI3iKl2YAuohmo8YKjLhXECwbRyXgtzdOR+hcJ3
 /r+huZ9FlAIBinJTpZ7L96oubmy1Z+rKKYd3VNb2n6hNx6jTcpkTUH2H6fND7fcg
 AeFhEw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484qdabcwt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Fri, 01 Aug 2025 10:30:56 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id
 d75a77b69052e-4ab844acca0so12447601cf.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 01 Aug 2025 03:30:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754044256; x=1754649056;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=L84CyF+woWXvkwBzd7M9RuuiXRAGPXc2Q4DgUeAC+f8=;
 b=suprB+0MJ51DcbUSs9bEq4vkRzj9TC4eDnxTjM10TrGh3x5Tu2yd26UfCn65c/3UOe
 +RbkWJGUOhdNi/Fwi6z2UhuxtKXqu91pdXSjcQ5dxfitm85lpyOXPTFM3ao+Vl9MemYs
 0eCMuiyrhbuBj9RecShMlVfTXCQL2AVjRNZjtyo+vrCl4R9Co/3Chrn2WHltSBF/6I14
 g9tN6nmv4ct7aEA/FBwG7msSsXflvFukpv3zDwQHnlZd2sbs+bnQ9FyY28Lauesilzk2
 Wu+vGKALudA/KeKSzoRp+LAa7krUfIeud62zALtrcpPnT97dgaWdQ/bOrP+ZyAX9OK+d
 qnPg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX1PSq7ElVu8wXdjGQdp/OTSeFnz8krTI0gSXOJJEziYIWMGmhiBnLZiGlKVDMN9jKg1qkGpiSUwqM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy8+Ci6D2nfymbHTewkQrUATr6E/t7XYQwCX5gLYsbggrBSv1u9
 1ShWsr2hSTNdLosBbpFuNrtxIPmYLfGjoniyH1j9rHD5H8fYnRJ7WVw2X6FkjrDGTHO9jTNxE8Y
 bQE2N7Feqr0pDLLK78lu3z93QeXfgrU4xg7fSBT3qIi4P0WWJYQQsjywdztPng4sQl37aJ04=
X-Gm-Gg: ASbGnctfLHZYJ+jy57LaD0Jrz+K7/ZVWLoR0gahVMegpq5dcUKbqwQBv5nvc4RickOJ
 H6Rdy4mC75wYAhJt+ZLFASO3knHx2nVCi5LRH0nCXtwdmcgTRMNWbRsaigtfaZQHJydKpeJLJPl
 zNWiQ1LxnoEDzYWqlABxmkkseT2mX6WsbyYbPIGZrLzC6gnqAP0mPFaov6vKIY4HrMXllnnE1/m
 nXo+8PS1gXMyaCaOKmSOc4EFTV6+YqJdWffx4w1K0YrjuaGc1oZE0ARfsHleXsGaOiw5mr1t/de
 U7/nB1VXruaWeUs4OtDkFtQJvH1BuUQZAg7O4iu0ceKmmFZeLH5hlzZOP//I1aCSEYG4obKP5CW
 llmQm9iJQumD9KoGBtTNZ99j1VooIeaLWK8vgp8+/nVO+kGzJD1fk
X-Received: by 2002:a05:622a:1921:b0:4ab:5b3a:5f14 with SMTP id
 d75a77b69052e-4aedb9584d0mr162698791cf.4.1754044255868; 
 Fri, 01 Aug 2025 03:30:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJTrlqeDQwfKaCw8yyW7SIaGimL48nbTtFzI8FnF8q1lx/G/dFdELduNg51Bv5DRhilMLjzg==
X-Received: by 2002:a05:622a:1921:b0:4ab:5b3a:5f14 with SMTP id
 d75a77b69052e-4aedb9584d0mr162698231cf.4.1754044255332; 
 Fri, 01 Aug 2025 03:30:55 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-55b88ca314bsm532410e87.128.2025.08.01.03.30.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Aug 2025 03:30:54 -0700 (PDT)
Date: Fri, 1 Aug 2025 13:30:52 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Simona Vetter <simona.vetter@ffwll.ch>, Andy Yan <andy.yan@rock-chips.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
Subject: Re: linux-next: build warning after merge of the drm-misc tree
Message-ID: <cn3l445yzdhehsyyxurjn4x5stnyo34beogguupk7wsjqrloh5@d2berut7dn3l>
References: <20250716203115.6e02e50c@canb.auug.org.au>
 <20250801144354.0ac00f39@canb.auug.org.au>
 <7304e450.4ca8.198645108de.Coremail.andyshrk@163.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7304e450.4ca8.198645108de.Coremail.andyshrk@163.com>
X-Proofpoint-ORIG-GUID: gpAVHYp9Y60nBeN5arD2IhRX9vWIxAcp
X-Authority-Analysis: v=2.4 cv=Pfv/hjhd c=1 sm=1 tr=0 ts=688c9760 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=Byx-y9mGAAAA:8 a=rOUgymgbAAAA:8
 a=7bnOuvaNDU_t_1VFS9oA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=MP9ZtiD8KjrkvI0BhSjB:22
X-Proofpoint-GUID: gpAVHYp9Y60nBeN5arD2IhRX9vWIxAcp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAxMDA3NyBTYWx0ZWRfX9Iik03oXtACd
 IJ/U4kT4j4NboLwGnouJzbf9am/bFqHk8CJhoSdJ0OQHtyCEWmVNn0jCmha9wgwrw0V+xgGqoD3
 fbwqjHZaG9uJb4EOEFl4t5EE/7qko+8qzbWkdw8Eq9MvxHtwAtRToLsYNtGarxX3LTfi7AtFqHM
 SScatlZ/XmT3iZRCu7Bye3UbL7S0mq8Z69HqF3Ho8EqdRAzwFsucLsEKS0WFSiZojjuPahRZdbV
 2FgWh0CN/nOuYdtodi71K9ecnFTRn77Ien/ajlPB0X2/Xbf3QbXfHE7CriozeirUi1HveoXjEFr
 ymbazVqlg7iT8XLPuuDU8SWDioszQUcLDu124G6IQSZBZlY2RNZCAL62nmyM1O8scjo05JTwyTC
 d024kI/GCaXRfaDqJfGA0m57VO1Cq6BwkscMW1xx6AedRN20Ye+IsE2cYrWJmCCz+3YmYIv8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-01_03,2025-07-31_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 clxscore=1015 adultscore=0 priorityscore=1501 mlxscore=0
 spamscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508010077
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

On Fri, Aug 01, 2025 at 02:28:09PM +0800, Andy Yan wrote:
> 
> Hello，
> 
> At 2025-08-01 12:43:54, "Stephen Rothwell" <sfr@canb.auug.org.au> wrote:
> >Hi all,
> >
> >On Wed, 16 Jul 2025 20:31:15 +1000 Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> >>
> >> After merging the drm-misc tree, today's linux-next build (htmldocs)
> >> produced this warning:
> >> 
> >> drivers/gpu/drm/drm_bridge.c:1242: warning: Function parameter or struct member 'connector' not described in 'drm_bridge_detect'
> >> 
> >> Introduced by commit
> >> 
> >>   5d156a9c3d5e ("drm/bridge: Pass down connector to drm bridge detect hook")
> >
> >I am still seeing that warning.  That commit is now in Linus' tree.
> 
> 
> The fix is here：
> 
> https://lore.kernel.org/dri-devel/20250716125602.3166573-1-andyshrk@163.com/
> 
> Hope that a Maintainer can review and apply it.

I tried picking it up into the drm-misc-next-fixes branch, but I could
not do it: the offending commit is present in drm-misc-next-2025-07-17,
while drm-misc-next-fixes is based on drm-misc-next-2025-07-10.

-- 
With best wishes
Dmitry
