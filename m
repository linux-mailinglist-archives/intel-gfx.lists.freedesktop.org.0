Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EB6BAE7DA
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Sep 2025 22:04:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 736EA10E617;
	Tue, 30 Sep 2025 20:04:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="CH3625vM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EB7110E2D9
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Sep 2025 20:04:53 +0000 (UTC)
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UBpUln023779
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Sep 2025 20:04:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 zg3Zzvp03iY3h5H8RDIo7/4x7q8AW2bkltfV7Huplrs=; b=CH3625vMwc5ZpLEP
 PTJgEyBaeEd97nArAK5VVcJgYq4U+VtebDDuKkEt0LG4P9608s5uYEgz4IyvElwY
 KLZec41AXZsKRAXolSolL7ZjHZOUnRLRLRG02b67Nj2xjAFcBKAGv7urT3bvpAj2
 DFo8rKj3ipLLfsz1Pdd22QJYOQtgUeTVPHxspw7BNWCQPxs6zd4eCxK4Cf4CNBzm
 D7dBVhEoOX+KmE0fXzxnf4F5vOJDu/OPjyZ9he3BC+TFGoHeURsJO91GW3MgZxyW
 xlt5PTQRUojTj8fV1dsUOxKJyZ1ZnQsP5P+wx3lAPngJ1IR4NK7dENGDEDMekX/y
 8TljaQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e59n2pan-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Sep 2025 20:04:52 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id
 d75a77b69052e-4dbd8484abbso78454421cf.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Sep 2025 13:04:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759262691; x=1759867491;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=zg3Zzvp03iY3h5H8RDIo7/4x7q8AW2bkltfV7Huplrs=;
 b=Vk9+Kmoc6uBd43brWZ3sPSjGfqz1WCl1Ldojmbezx9JxUM/obykif92Yvx/36hjJTc
 aQEs0dkoAy14Q4XtFNYjlISCfMDbfwPlkst0y5oPuMfFitkEgWIpUY+wo/LB3mu8g9Dd
 ncuYgR+C3yvKAUIOml+127rWafXThaHwO4/+yYi5byoOIzheuyCc8pXJpIvyOSGmsXEo
 RjaiR3h04GFGbccCQPQqzzJKTxH9Q6ipyZBHKHY27EAEe+D9oy2bCUMGVvawtIfpmtTK
 QYMy5N0KyW+WYgdqcHKe7O4Sj6FNoJYbp854B0H8cV6dfv0CZOEjzc+pEyn3ev6V32Dg
 gyOw==
X-Gm-Message-State: AOJu0Yw+jnU9P83sw+c0crtUwyFfk31cdiUXI/JkgRNxd4YYSW/COomd
 ACmnTUBJNEaUtoWkd/FvVSk6mif01cXBekZSxNSkIncCQpZ4pYRIu7xCMvM/GUsk04TLVb5LWe9
 ny+mBIBbY5EGnRTHWCPigMUtN4/yVgynuRaUlc9VFkYrqY5FCBOE7w8rpX+ZuYj7g1d6+RHQSxD
 gzUQg/SA==
X-Gm-Gg: ASbGncvWq6Y3H1lUiLBYjT53kqkdmpGQ1pjAiNfq2H25PRitTaF//d50L2OJSChGW9D
 Tn36XlWlAU4ysRka2IkkMny9ZuzpcA8df5Ox0U+e6mZ6x0BO5KwlX1Y7LRKQCu79xCfTUhMshvE
 UpdEfBuyb04I61v73zUszaX1RbQT7hX/rao9+d8m/1A+PyVH/Y5RI+RAvHpiP46K7JfnkNriJqG
 cRvAYG9vpfw71vUzfqBFt0kcMIX9RsIqxcOGmY0Y/GkErM/R6nIvLdwT5kNq13Uskib0gnZQKlz
 bzomRq7giaAYTU/TxZnyW0XrPaLL79Uc7HIE+AExJdCpkUIrJc452tg9BdPcq1jLOdOv9oh/+xZ
 8rLhZswsxWaGZ7q/e5W9svQrfSm052O8IY20T8PZC+uW+ynIRezhiCEiD9Q==
X-Received: by 2002:ac8:5784:0:b0:4d2:1a1f:135b with SMTP id
 d75a77b69052e-4e41c352bf6mr11232751cf.3.1759262691081; 
 Tue, 30 Sep 2025 13:04:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEP5ORF0qEE//SUqswuiz6DFvjyfROnKL5KhLvMwinIagTmqNjxOJv7FbfJrexGy1JHt7tofw==
X-Received: by 2002:ac8:5784:0:b0:4d2:1a1f:135b with SMTP id
 d75a77b69052e-4e41c352bf6mr11232231cf.3.1759262690616; 
 Tue, 30 Sep 2025 13:04:50 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-583134312ffsm5277474e87.13.2025.09.30.13.04.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Sep 2025 13:04:49 -0700 (PDT)
Date: Tue, 30 Sep 2025 23:04:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v5 2/6] drm/dp: Add helpers to query the branch DSC max
 throughput/line-width
Message-ID: <2krnfl46ozmjt6ekr3p5gzdcvehadzwbyjow72mqi52ciunioz@oqdgqjt4tpeo>
References: <20250926211236.474043-3-imre.deak@intel.com>
 <20250929063644.533890-1-imre.deak@intel.com>
 <agzmuyty22gxtm7cwpdl7ynmrubot45e65tfavbq5muamn6qnj@2wsbjqlc3pye>
 <aNpbCWlluJfsjSE6@ideak-desk>
 <6qj46wruaj5k2ywepsrkzfyyq4bsvcfmg7jhvrk4w2jkhcyorg@llo7bzmlarre>
 <aNvBIdJbaCBzKVt_@ideak-desk>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aNvBIdJbaCBzKVt_@ideak-desk>
X-Proofpoint-GUID: RSSQEG3e7rKWdsDYo0Tn1MC8JBTIwrt6
X-Authority-Analysis: v=2.4 cv=O4g0fR9W c=1 sm=1 tr=0 ts=68dc37e4 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=e5mUnYsNAAAA:8 a=QyXUC8HyAAAA:8 a=oTBndsSxvoqh1Z8t8QYA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=dawVfQjAaf238kedN5IG:22
 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-ORIG-GUID: RSSQEG3e7rKWdsDYo0Tn1MC8JBTIwrt6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwMSBTYWx0ZWRfX+RK8dpeG8vfx
 6Y0Ef8HMSSEOQiSo3x/feqN+cRJyL4d5hI0wKjBoeozXt1wFOyvOGhNc0sNop9KIys97V0LPXXI
 jEDagB52j/1qlg/Wn60nX1pIzDjZN/4kP7b0tm8l7peKfD8VsxgpMe/bPrGSKDebYxOeuPaghM7
 oibsqhf1cMYmpa4Q7wAkNFpXK02AUgXk2ZEbo+gksKy/YZREIPNpccB+6YEnyBrT93D8cqjwy73
 zlVKSPEa9AnwOaWO5SNUIlk2/RMLuS5B2KqyebsB6d3wnISS8oEWASM9XXOVMxvGAEo5Vi8YXsy
 pfTbw9RwV6pLPN0kLmAVdl/yNdEQRpGXtGkAOvlgNH6UaVDIfqE7530jmfRdi9uIVL305PzDRSN
 m5CkG5lFcHk97Z57u2zxQUsFaba/Wg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270001
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

On Tue, Sep 30, 2025 at 02:38:09PM +0300, Imre Deak wrote:
> On Tue, Sep 30, 2025 at 08:30:10AM +0300, Dmitry Baryshkov wrote:
> > On Mon, Sep 29, 2025 at 01:10:17PM +0300, Imre Deak wrote:
> > > On Mon, Sep 29, 2025 at 12:00:03PM +0300, Dmitry Baryshkov wrote:
> > > > On Mon, Sep 29, 2025 at 09:36:44AM +0300, Imre Deak wrote:
> > > > > Add helpers to query the DP DSC sink device's per-slice throughput as
> > > > > well as a DSC branch device's overall throughput and line-width
> > > > > capabilities.
> > > > > 
> > > > > v2 (Ville):
> > > > > - Rename pixel_clock to peak_pixel_rate, document what the value means
> > > > >   in case of MST tiled displays.
> > > > > - Fix name of drm_dp_dsc_branch_max_slice_throughput() to
> > > > >   drm_dp_dsc_sink_max_slice_throughput().
> > > > > v3:
> > > > > - Fix the DSC branch device minimum valid line width value from 2560
> > > > >   to 5120 pixels.
> > > > > - Fix drm_dp_dsc_sink_max_slice_throughput()'s pixel_clock parameter
> > > > >   name to peak_pixel_rate in header file.
> > > > > - Add handling for throughput mode 0 granular delta, defined by DP
> > > > >   Standard v2.1a.
> > > > 
> > > > This one got sent as a separate V5, without a proper changelog. What has
> > > > changed?
> > > 
> > > This is v3 of the patch, the changes are listed under v3. The patchset's
> > > version is v5.
> >
> > Ugh. How one does relate this v3 (which is not mentioned anywhere) and
> > v5 of the series? This is totally counterintuitive. A usual
> > recommendation is to send the full series and to send it as a new
> > thread, sending all the patches in one go.
> 
> It's a common practice on intel-gfx to send a new version of one patch
> on top of the last patchset version in that patchset's thread. For

I don't want to step on intel-gfx ways of working, but how would that
work with e.g. 'b4 shazam'?

> matching the patch version to the patchset version I can change the
> patch version log above to be like:
> 
> v2 (Ville):
> - Rename pixel_clock to peak_pixel_rate ...
> v3-v4:
> - No changes
> v5:
> - Fix the DSC branch device minimum valid line width value ...

Yes, I think that's more obvious, thanks!

> 
> > > > > Cc: dri-devel@lists.freedesktop.org
> > > > > Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/display/drm_dp_helper.c | 156 ++++++++++++++++++++++++
> > > > >  include/drm/display/drm_dp.h            |   3 +
> > > > >  include/drm/display/drm_dp_helper.h     |   5 +
> > > > >  3 files changed, 164 insertions(+)
> > > > > 
> > > > 
> > > > -- 
> > > > With best wishes
> > > > Dmitry
> > 
> > -- 
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry
