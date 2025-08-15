Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47849B28848
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Aug 2025 00:21:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FCB010E9CD;
	Fri, 15 Aug 2025 22:21:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="KaywDozi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AE4010E9CB
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Aug 2025 22:20:59 +0000 (UTC)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57FEJ8Wx008816
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Aug 2025 22:20:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=xfIBhnpUDRVNIWjXRgxsYT8X
 VCA1w9Y6OWwHkBmVkwQ=; b=KaywDoziy0fxrA3uFl6uoMxKbTDM2EUGBAX26H/6
 XrWOSY4LPTflZg2g/TnAlXFBHwO6kx68lg6JJNk7KCiR1CaGE9cmaVkklrUmm11a
 13DahpnZ+g2MPucq6ZyzW6iKpoME46KHivAIAQbCAWkq2hz9KHh7aBr3LBUEGG8a
 bEFwlFCKguKFzmoOJ7xMOhAh66SjDU0EDVgxCkLtTLDAX37TTFDEnrfSyvFykFnX
 4NYol075SgWSBzrykyzqVX0kPELrmb6ZulQOLe2hvLlXbRzZCXumBkhxVkd/Vitx
 brnB3CNu4iWlsHLnn8xIwR+RtdGNgM5PK9KWRamu/xXEkQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ffq7085u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Aug 2025 22:20:58 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id
 6a1803df08f44-70a94f3bbdbso48901966d6.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Aug 2025 15:20:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755296457; x=1755901257;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xfIBhnpUDRVNIWjXRgxsYT8XVCA1w9Y6OWwHkBmVkwQ=;
 b=sA5RquAFeW1VK4I+nYOdG2aVODlKLhnWGrX+GHAICZT5oFr0rmhxVS1k8Ro4CtqYqa
 0gG97/ID4y7kfP9W2YMeXCnifucKokKebs14KvhPeNupnk6CsL/S7yeE6JOlaaCEhqWQ
 j03rjb2rTRwCOLoWSr7zIQJXkgFaeanzo9Cd3IXYmWs66NkrmG4Hq+iNjWSY/aQ6Q7+p
 ySRQKmznd7aAeMPDGY422KlJAxbLW3cb87qGtwgyr1CMU83SHanJeyQnYljpMZu9zQzP
 THlErM7y1S2soo1Zx99BTn4Pwd6+zl2d66MstEwlBH/oTDu3RCLG4aVDSvpEGrR8oJ7m
 ls8g==
X-Forwarded-Encrypted: i=1;
 AJvYcCUJvMBUvQXnp3ZDC8HUkeozGVHKr3tZINw2D7hyhIZYS03I9iKuwmeJzITKzSOD+Opy/qnEul7Y74o=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyHb+pz9TYL8u8Ez5xaWgkqQGBShxrjjgNhCCYbP+JRplgVWoqt
 N3NcjSwb1TojS4yptEW2Qb6DsMNdHCChRfelrGJBC0gXOYwnrUVS0/Lt+uj/BSXzxN9wqqdh19f
 3AKT3ZGGqWuh+405Xy4KwjYj3QDLoVrwYfQ9w6bzed+EHwY8bFpO1TpUxHgiRDuxbV2tB3qM=
X-Gm-Gg: ASbGncvxMJf+BuBNY41NIluMPGGlfZ4k4b2F5xTi9YlYauWxMkMpO+cNxA6wLhxtC5f
 7tJ7Z5OEEj+i1cpM5DVMsNyNCNdGcuQKxnBoeFKKZnPLPkBtzBqCeHtEpnsucvXF5p7QY3K9OUd
 HOQG49Bs5uEKLo4kmIq09scsymrf1G0MCQZqovM8U+Fa0l4zTEvxvneiZuySNybsROGqkmJ8Qtt
 PpsKyvJh768c3u8xyCUDrmu0D+2BApSFIyZOuKACTfALQY7E3/adXsQyNAQCkQ6rdWK0tX5xsJs
 xfEDX1djgLxc3u/4QqAtFZlJz+ymo/XJ0wu066crKolVHOHU4h6mkLCSGnOFQ+mMYjmhI1HOxNb
 T2ZCq6HzcP3V7NKDSDUiYOt/hh5ENwxuorcWC/+V4Qh/30cVTiwnU
X-Received: by 2002:a05:6214:27c2:b0:709:82dc:b1b2 with SMTP id
 6a1803df08f44-70bb064aab5mr7415186d6.48.1755296457522; 
 Fri, 15 Aug 2025 15:20:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1+iZ0Ln0WZk9wKMEFeC3GuUiWeKAJqXs2A1a7u9zGnMDfpKmmxWgkIpmWbduQTZnYFsEO3A==
X-Received: by 2002:a05:6214:27c2:b0:709:82dc:b1b2 with SMTP id
 6a1803df08f44-70bb064aab5mr7414886d6.48.1755296457044; 
 Fri, 15 Aug 2025 15:20:57 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-55cef3cc9a6sm518362e87.78.2025.08.15.15.20.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Aug 2025 15:20:56 -0700 (PDT)
Date: Sat, 16 Aug 2025 01:20:53 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: "liviu.dudau@arm.com" <liviu.dudau@arm.com>
Cc: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
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
 "mripard@kernel.org" <mripard@kernel.org>,
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
Message-ID: <hc6f6wgsnauh72cowocpm55tikejhiha5z4mgufeq7v6gb2qml@kmgfd26bigos>
References: <20250811092707.3986802-1-suraj.kandpal@intel.com>
 <20250811092707.3986802-2-suraj.kandpal@intel.com>
 <20250811094429.GE21313@pendragon.ideasonboard.com>
 <awtqznhquyn7etojonmjn7karznefsb7fdudawcjsj5g2bok3u@2iqcdviuiz2s>
 <20250811111546.GA30760@pendragon.ideasonboard.com>
 <2ah3pau7p7brgw7huoxznvej3djct76vgfwtc72n6uub7sjojd@zzaebjdcpdwf>
 <DM3PPF208195D8D0E55A761A3C16B87BAEEE32AA@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <aJ4LQvqli36TlETu@e110455-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aJ4LQvqli36TlETu@e110455-lin.cambridge.arm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA3NSBTYWx0ZWRfXxq6DEuZNPqdM
 xBQujUW2TJzqnoirF5ob/VeoPPtbXMYW7zf1/g8N+tVxaXhUQnqyE5s3mB6r2vgMt9c286RUQl5
 u0uXXo/Y5qs/hhqZJ1RKPE/tIgFYA4R+HpgLMZ1ksjlaNXm09X8I+lS1OV3yzTfx5qaq7evLZrl
 G4oTKfKIb5iO+/OhcbI2vM2M/mzg33mxNKx5oy3hU2xA7YkBNz0icpbsjLaZ4oqb5ksBg1zS8sZ
 WWKVPCLHNQNHz/GR84gzG4182FQJLzv259neyoa6mmSAZZuV3FquViIJtjUmqqHIxr7oym4j8pm
 Gs8B3zXHztzMZQsF5wiKn/kOq0GZ63Pq/wbvjl8IUYW9clwsAGrE7UZhSzmPeLh2zCQ0dKRVB3w
 Rmj1tFYX
X-Authority-Analysis: v=2.4 cv=TLZFS0la c=1 sm=1 tr=0 ts=689fb2cb cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=7CQSdrXTAAAA:8 a=WdlRDaJtcICMsET58csA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-GUID: mSf-Q_H9ve8CWnexTrtPL5Lj3SrxkV0b
X-Proofpoint-ORIG-GUID: mSf-Q_H9ve8CWnexTrtPL5Lj3SrxkV0b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_08,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 bulkscore=0 adultscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110075
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

On Thu, Aug 14, 2025 at 05:13:54PM +0100, liviu.dudau@arm.com wrote:
> Hi,
> 
> On Wed, Aug 13, 2025 at 10:04:22AM +0000, Kandpal, Suraj wrote:
> > > > > };
> > > >
> > > > I still don't like that. This really doesn't belong here. If anything,
> > > > the drm_connector for writeback belongs to drm_crtc.
> > > 
> > > Why? We already have generic HDMI field inside drm_connector. I am really
> > > hoping to be able to land DP parts next to it. In theory we can have a DVI-
> > > specific entry there (e.g. with the subconnector type).
> > > The idea is not to limit how the drivers subclass those structures.
> > > 
> > > I don't see a good case why WB should deviate from that design.
> > > 
> > > > If the issue is that some drivers need a custom drm_connector
> > > > subclass, then I'd rather turn the connector field of
> > > > drm_writeback_connector into a pointer.
> > > 
> > > Having a pointer requires additional ops in order to get drm_connector from
> > > WB code and vice versa. Having drm_connector_wb inside drm_connector
> > > saves us from those ops (which don't manifest for any other kind of structure).
> > > Nor will it take any more space since union will reuse space already taken up by
> > > HDMI part.
> > > 
> > > >
> > 
> > Seems like this thread has died. We need to get a conclusion on the design.
> > Laurent do you have any issue with the design given Dmitry's explanation as to why this
> > Design is good for drm_writeback_connector.
> 
> I'm with Laurent here. The idea for drm_connector (and a lot of drm structures) are to
> be used as base "classes" for extended structures. I don't know why HDMI connector ended
> up inside drm_connector as not all connectors have HDMI functionality, but that's a cleanup
> for another day.

Maybe Maxime can better comment on it, but I think it was made exactly
for the purpose of not limiting the driver's design. For example, a lot
of drivers subclass drm_connector via drm_bridge_connector. If
struct drm_connector_hdmi was a wrapper around struct drm_connector,
then it would have been impossible to use HDMI helpers for bridge
drivers, while current design freely allows any driver to utilize
corresponding library code.

> 
> drm_writeback_connector uses the 'base' drm_connector only for a few things, mostly in
> __drm_writeback_connector_init() and prepare_job()/cleanup_job(). In _init() we just setup
> the properties and the encoder after we disable interlacing. prepare_job()/cleanup_job()
> is another workaround to be to some custom ops some drivers might want for signalling. So
> we should be able to convert the 'base' drm_connector to a pointer relatively easy. We shouldn't
> need to get to the drm_connector from a drm_writeback_connector() outside drm_writeback.c.
> 
> Then it looks like what we need is a __drm_writeback_connector_init_with_connector() where we
> can pass a base pointer and remember it. Maybe an extra parameter to existing init functions,
> or a new one that skips the encoder initialisation entirely.

I've refactored out drm_encoder, that's not a big problem. The bigger
problem is the embedded 'drm_connector base' field. It's really use to
overlook that it's not initialized / not used.


-- 
With best wishes
Dmitry
