Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFE2B33AEF
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Aug 2025 11:26:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEA8210E428;
	Mon, 25 Aug 2025 09:26:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="XlG1Zg00";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2A1110E42D
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Aug 2025 09:26:43 +0000 (UTC)
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57P8S5ok020181
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Aug 2025 09:26:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=4EjmfETgNQm/Vlvha9wFXQHI
 t0wG5jz8jtoxkPVtlaI=; b=XlG1Zg007yo8B7QsjnIaAxiPH9JAUnbzR9Sab0I3
 YHz+BiXJi/mP3RdpI6WVigzYtLwx6oOTG51Yrn9GneL9axk7y47GahXNS9xHdBjR
 macTnmoASdfVIYIxqLuL6IG9rUS79yUrksDyXcUVlWzqceHPjXh9qS9iLGIUXpD/
 DSRuKz3jSsmXW4rBN0qDlOv+LSLwxTV4d2ZA1U1bUOUV0/MJ/FRiNDO0/Lq1GpUR
 M2uUZlHtnqYt/POZif6PT/757sXTQfYKiUhKtzVg1qCLtyAudYXo+28fu7weMMll
 DeMHZH3f2KfZzHtUTT0b25G8n5UTpdC64UeVQaf4Pz6+0w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5unmhht-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Aug 2025 09:26:42 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id
 6a1803df08f44-70d9f5bded7so56823186d6.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Aug 2025 02:26:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756114002; x=1756718802;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4EjmfETgNQm/Vlvha9wFXQHIt0wG5jz8jtoxkPVtlaI=;
 b=nMDrFeQB8UzS+0qvCfFza06L5J0JgpoxHubBgL2A+MM/M05yDDwKh3MKwPNThO7DpD
 KkbceSGS2fujIu0YQdbPiOtI8NJr1hJxvRPyeeHiVcL7XX7xDlGWI++cEMekeuYlrs0a
 Z1/HQHPQfqnHGJyjRrvdMbu0sUCSHK7n7uevs2/ZSymXDPJlwfNVDqJpGC5ezJqSAWPR
 TJ3Cz7kEZbfY79hEDSW42Oh0c/j8kKhp7LIPHRwtW5RDc5qkW1ep7D6gpqNAh4m1tkyS
 oXj+k3ruoVt5wI9HUEBXx18/yMIDh4y8kU4n674NRauQez747pzhlV9xa2EeilXNvhs+
 8ejw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUCwcnmGyO6cDFShnC9PJsrYRCxPFXvwWW6Ny4Aq6kjYVDaSVXuzzxG5oE9o18OLlEJKzHL+eqU5S8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwpjiASaZJxPGxR9+fOIcDVSRLM81cHLmH0PqyRP+HzEPUiP5gM
 qFHqMI8isP+bPB3srJAx5AhdM3acftERWjtjrcI/a8z49Q53fogYnUkzXj2KRwnFJ64tM9TzCMb
 X4B/5d1CNOO9Y0J8uZlqXVcBPNQzWEw8UlI6kkpN9FmG7YblZ0iQ/HCOx2ib7si2Q0wRaih4=
X-Gm-Gg: ASbGncsk7UjZMU/gm6oZ3mRmJoroS9uHMGgMJ4QotLks5OzhNb5PfXjkZer13TG5oi4
 2m3gLUJaFfuW1Bzk3uo2YjKVWAfNSQzNUqNXig4c0cVQJ3TQAldWZd3ZwMkJpMGVeK4q4i49tPm
 iM7h0mJYLJuEWM97KKo7CwsCKejoqQ+FJpGuOdSrv4TLHwwTgSf0RA+mQPi/fZy/0ErYE30kMxZ
 Jacv+TGUDeK/AGOaB3YSVK6Jv9Bw74dg18Yz29YaNV7zcVX3jDXF6iL3shePCm8lH8T6jKcDL1N
 iHmvDLOOWIKfiibO8KICSM3dy1aQzTaXHHNNrMQHJjr9mCHGuXmgmnHSNpu8L9da8bmP2KOMcNl
 6c1FN7GiC6wswbJu8A/GOAvLmSZ4QL0iumHqnFTJpP6bv7lnUwFUz
X-Received: by 2002:a05:6214:4a02:b0:70d:a44c:7888 with SMTP id
 6a1803df08f44-70da44c7dc8mr92019806d6.24.1756114001825; 
 Mon, 25 Aug 2025 02:26:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEm4osqf3FKfdRsdXmqHxRRVdAGOSVE7liNGQR4vahCuDo4dZvvt3gTYb3tINRaNS66Ihgu0w==
X-Received: by 2002:a05:6214:4a02:b0:70d:a44c:7888 with SMTP id
 6a1803df08f44-70da44c7dc8mr92019466d6.24.1756114001224; 
 Mon, 25 Aug 2025 02:26:41 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-3365e20ed53sm15882191fa.4.2025.08.25.02.26.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Aug 2025 02:26:40 -0700 (PDT)
Date: Mon, 25 Aug 2025 12:26:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: "mripard@kernel.org" <mripard@kernel.org>,
 "liviu.dudau@arm.com" <liviu.dudau@arm.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 "kernel-list@raspberrypi.com" <kernel-list@raspberrypi.com>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "freedreno@lists.freedesktop.org" <freedreno@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>,
 "harry.wentland@amd.com" <harry.wentland@amd.com>,
 "siqueira@igalia.com" <siqueira@igalia.com>,
 "alexander.deucher@amd.com" <alexander.deucher@amd.com>,
 "christian.koenig@amd.com" <christian.koenig@amd.com>,
 "airlied@gmail.com" <airlied@gmail.com>,
 "simona@ffwll.ch" <simona@ffwll.ch>,
 "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "robin.clark@oss.qualcomm.com" <robin.clark@oss.qualcomm.com>,
 "abhinav.kumar@linux.dev" <abhinav.kumar@linux.dev>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "jessica.zhang@oss.qualcomm.com" <jessica.zhang@oss.qualcomm.com>,
 "sean@poorly.run" <sean@poorly.run>,
 "marijn.suijten@somainline.org" <marijn.suijten@somainline.org>,
 "mcanal@igalia.com" <mcanal@igalia.com>,
 "dave.stevenson@raspberrypi.com" <dave.stevenson@raspberrypi.com>,
 "tomi.valkeinen+renesas@ideasonboard.com"
 <tomi.valkeinen+renesas@ideasonboard.com>, 
 "kieran.bingham+renesas@ideasonboard.com"
 <kieran.bingham+renesas@ideasonboard.com>, 
 "louis.chauvet@bootlin.com" <louis.chauvet@bootlin.com>
Subject: Re: [RFC PATCH 1/8] drm: writeback: Refactor drm_writeback_connector
 structure
Message-ID: <tk2x6a3laaiwa2tiaewa4esl5o2gi363h3tfb5uha6apno34gr@fxqbhixyicw6>
References: <20250811092707.3986802-2-suraj.kandpal@intel.com>
 <20250811094429.GE21313@pendragon.ideasonboard.com>
 <awtqznhquyn7etojonmjn7karznefsb7fdudawcjsj5g2bok3u@2iqcdviuiz2s>
 <20250811111546.GA30760@pendragon.ideasonboard.com>
 <2ah3pau7p7brgw7huoxznvej3djct76vgfwtc72n6uub7sjojd@zzaebjdcpdwf>
 <DM3PPF208195D8D0E55A761A3C16B87BAEEE32AA@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <aJ4LQvqli36TlETu@e110455-lin.cambridge.arm.com>
 <hc6f6wgsnauh72cowocpm55tikejhiha5z4mgufeq7v6gb2qml@kmgfd26bigos>
 <wr76vyag2osox2xf7ducnkiaanzk2k5ehd2ahnoyqdm5qiywlk@penf4v5bvg5z>
 <DM3PPF208195D8D87AECE8397914A67D9A1E33EA@DM3PPF208195D8D.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DM3PPF208195D8D87AECE8397914A67D9A1E33EA@DM3PPF208195D8D.namprd11.prod.outlook.com>
X-Proofpoint-GUID: z6wxFi6aWAXgZ2G3rj0FkqwTDbF-5Wu7
X-Proofpoint-ORIG-GUID: z6wxFi6aWAXgZ2G3rj0FkqwTDbF-5Wu7
X-Authority-Analysis: v=2.4 cv=JJo7s9Kb c=1 sm=1 tr=0 ts=68ac2c52 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=7CQSdrXTAAAA:8 a=2bDsevyxfkvo1t3REK0A:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMSBTYWx0ZWRfXyja9TxuwXnTh
 U30NssiI9lQYlRJdx48F7YiDoKIPnwIUJ6rBx8yooxOiDUTOwn9PsPPdR1mo/u1ZZcfCjYd+X0n
 4RHEvMVvvvyKe6sIT8zmGqw1En+I+7ZwIZkeU7l3j+oD0ZzI+v7R38MHu8gaRrF/XtvFWucxNVa
 JKOmPpespZonjLX3KepAxse05MVhhr+9t7FXSPNA4vCi7U2B1vx0c8905uplFegHBgaeY78PQ9S
 Madunyg9a/9x6irhfycQRw7DLx9P0s1E4oBDsXNMU51QPwJcVK7Y8RqDDBegNfP25FCHB62lqxm
 X9TZ+/td/36UoEXCL3qsNOVjDtb/IacTZnddZJR4CnwwT0xpov2U/q7fSAwzziwA79YP2lW+M9v
 D+dgpfoU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-25_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 malwarescore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230031
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

On Mon, Aug 25, 2025 at 06:26:48AM +0000, Kandpal, Suraj wrote:
> > Subject: Re: [RFC PATCH 1/8] drm: writeback: Refactor
> > drm_writeback_connector structure
> > 
> > Hi,
> > 
> > On Sat, Aug 16, 2025 at 01:20:53AM +0300, Dmitry Baryshkov wrote:
> > > On Thu, Aug 14, 2025 at 05:13:54PM +0100, liviu.dudau@arm.com wrote:
> > > > Hi,
> > > >
> > > > On Wed, Aug 13, 2025 at 10:04:22AM +0000, Kandpal, Suraj wrote:
> > > > > > > > };
> > > > > > >
> > > > > > > I still don't like that. This really doesn't belong here. If
> > > > > > > anything, the drm_connector for writeback belongs to drm_crtc.
> > > > > >
> > > > > > Why? We already have generic HDMI field inside drm_connector. I
> > > > > > am really hoping to be able to land DP parts next to it. In
> > > > > > theory we can have a DVI- specific entry there (e.g. with the
> > subconnector type).
> > > > > > The idea is not to limit how the drivers subclass those structures.
> > > > > >
> > > > > > I don't see a good case why WB should deviate from that design.
> > > > > >
> > > > > > > If the issue is that some drivers need a custom drm_connector
> > > > > > > subclass, then I'd rather turn the connector field of
> > > > > > > drm_writeback_connector into a pointer.
> > > > > >
> > > > > > Having a pointer requires additional ops in order to get
> > > > > > drm_connector from WB code and vice versa. Having
> > > > > > drm_connector_wb inside drm_connector saves us from those ops
> > (which don't manifest for any other kind of structure).
> > > > > > Nor will it take any more space since union will reuse space
> > > > > > already taken up by HDMI part.
> > > > > >
> > > > > > >
> > > > >
> > > > > Seems like this thread has died. We need to get a conclusion on the
> > design.
> > > > > Laurent do you have any issue with the design given Dmitry's
> > > > > explanation as to why this Design is good for drm_writeback_connector.
> > > >
> > > > I'm with Laurent here. The idea for drm_connector (and a lot of drm
> > > > structures) are to be used as base "classes" for extended
> > > > structures. I don't know why HDMI connector ended up inside
> > > > drm_connector as not all connectors have HDMI functionality, but that's a
> > cleanup for another day.
> > >
> > > Maybe Maxime can better comment on it, but I think it was made exactly
> > > for the purpose of not limiting the driver's design. For example, a
> > > lot of drivers subclass drm_connector via drm_bridge_connector. If
> > > struct drm_connector_hdmi was a wrapper around struct drm_connector,
> > > then it would have been impossible to use HDMI helpers for bridge
> > > drivers, while current design freely allows any driver to utilize
> > > corresponding library code.
> > 
> > That's exactly why we ended up like this. With that design, we wouldn't have
> > been able to "inherit" two connector "classes": bridge_connector is one,
> > intel_connector another one.
> > 
> > See here for the rationale:
> > https://lore.kernel.org/dri-devel/ZOTDKHxn2bOg+Xmg@phenom.ffwll.local/
> > 
> > I don't think the "but we'll bloat drm_connector" makes sense either.
> > There's already a *lot* of things that aren't useful to every connector (fwnode,
> > display_info, edid in general, scaling, vrr, etc.)
> > 
> > And it's not like we allocate more than a handful of them during a system's life.
> 
> So Are we okay with the approach mentioned here with the changes that have been proposed here like
> Having drm_writeback_connector in union with drm_hdmi_connector
> Also one more thing I would like to clarify here is how everyone would like the patches
> patches where each patch changes both the drm core and all related drivers (ensures buildability but then review is tough for each driver).
> Or patches where we have initial drm core changes and then each patch does the all changes in a driver in its own respective patch.

The kernel must be bisectable. Which means that after each patch in the
series the kernel must build completely and work without additionally
introduced issues.

-- 
With best wishes
Dmitry
