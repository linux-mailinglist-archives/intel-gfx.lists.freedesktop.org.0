Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16008B20A18
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 15:26:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5B2110E466;
	Mon, 11 Aug 2025 13:26:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="p8f6b7Kw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C58D10E466
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Aug 2025 13:26:23 +0000 (UTC)
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57BAGq7o024522
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Aug 2025 13:26:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=vRikIynOffv5hukm3CKQ6SgT
 vsP8Ryyr+lMrwvSQIzY=; b=p8f6b7KwJiYJ1X2hf94LyRPBUQyawbhk9VSvJzGE
 DcS0zOtYY2HjC5TEq5XRYFGd5ZmWt2OniURI87DtmkMygR94tLhXxzwXev1O7sGM
 wsnL8Uct1JMYVLGowrnGkSpgkpzztPyGRQ/l6RrB4EQ/ZU87Pfn4saIFdqqWNQvw
 0jmZ9nrljs7UUKQDs3hC5RJ71aqmfRcMwozM5IlDwOWBowpH9tKj/JmmgZrhQyqg
 CutdLldAKoUXN5szorjHp7uTnYgn3AFufDl9qK7gZs3Cu+KcQp7ZWP+bD+kY3qHg
 Xom/m64tqGBryAwEH7hMeuLe2b9WBcvSctNuyWxldJyHdQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fem48m5g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Aug 2025 13:26:22 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id
 d75a77b69052e-4af14c04e5fso167875951cf.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Aug 2025 06:26:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754918781; x=1755523581;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vRikIynOffv5hukm3CKQ6SgTvsP8Ryyr+lMrwvSQIzY=;
 b=QMbMMC8DqNJ9mIqx2fcel3LIotJoT6P6EMre0OpB8oOwEob6XsmR9vL36UMdNlNtj9
 JQWcBswcXwIgf+VUrP0zBshJN94im3a61AcpRr2O4VvqekF0C2pYt1MPvWGlBzyFcGGb
 ufHsa1JYlev0YrDvKn7Oz+EIV6zD8o6QGtT0O/HNRwaSRq+nYBAsi/Sei8wKcR2U/6Ms
 aKmMBqRPBewSJQ471RgDOuLW+HC5RqnAIoDMU0H8BfRvbzZUXgY/u7bpPIhfOY7O+W46
 zOlPUqfj5x76szH6KGYCo7evqY6hQzx1Ylk9Atw4cUA9OZueS+QAvttuEnjIpG6EHxS5
 pT/w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVPRT06RxQQrnCtHcuNvk5xVfGCfnosYGdH3VGZApU8xGuzHfNgk5bQWKYXWtAdVN7/RgPFj/TWT/U=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwCTBM6Vp8B+H9sCxI5U8MT/iC0VV1oUsQGKhPG5WBWRgHpCKvQ
 8gebf6kK9FwoKuDTPEvtIsrayAGH8yHR0uINdj1T0OM7f/q28A772oiXCNT3zreC0g4wmcJZK2r
 JsTj1lHrWTH7bL8IF0ifHfcYvffllPuW00UW3pcFb4GEskC//MnfKe8oDctQuFixcr0vBk2M=
X-Gm-Gg: ASbGncuRFd7rKdenvlnfxsxqYza4KdF47RA39M248v3q1Ly0s5nCqmEWKoZEI7LQaIc
 tn/1LN7R++rR3nGjEmp7JUQB18213h83dMEN1T+Eu3WTnM5C74+GiQwclwtMjJqgGh6s4rZP2g8
 IDRo89lsIRB71rSGbwx6ZY/iLBctfXfHeW7lc9UbPHhK6GW6ugogEu44PbfJzY9lxUtEWdx/UWE
 JDMWz+MpOje7Z3acju7My2dPm+X+lSBRyAQmrr/mAg5Jfc5YkZdJT6M2ynw7ZcP5B3FhhT/Ui/E
 dxlYmQbJF9Nv30tAkqa/XWjeNdeYsLQKUpihTnah4fJjxH7E24zTHnLr1V0cg3BCxvuvjqlF1GE
 W39S/a+nONuMTlNPtqmp4ZMS7oO4/fXNB9Yeby8nss+OSlr1iYfPq
X-Received: by 2002:a05:622a:58c6:b0:4b0:75f1:4cd5 with SMTP id
 d75a77b69052e-4b0aed5ec14mr139029611cf.44.1754918780942; 
 Mon, 11 Aug 2025 06:26:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH0wKTLCLx4/yIBgQvD8Ue94ZiVJ7wpTEfZ89QbuRpyBiuJsOKla4drlyaZDIdLWLJCAt0VIQ==
X-Received: by 2002:a05:622a:58c6:b0:4b0:75f1:4cd5 with SMTP id
 d75a77b69052e-4b0aed5ec14mr139028901cf.44.1754918780301; 
 Mon, 11 Aug 2025 06:26:20 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-55cc7c67a5asm1192051e87.77.2025.08.11.06.26.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Aug 2025 06:26:19 -0700 (PDT)
Date: Mon, 11 Aug 2025 16:26:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>, kernel-list@raspberrypi.com,
 amd-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 uma.shankar@intel.com, jani.nikula@intel.com, harry.wentland@amd.com,
 siqueira@igalia.com, alexander.deucher@amd.com,
 christian.koenig@amd.com, airlied@gmail.com, simona@ffwll.ch,
 liviu.dudau@arm.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, robin.clark@oss.qualcomm.com,
 abhinav.kumar@linux.dev, tzimmermann@suse.de,
 jessica.zhang@oss.qualcomm.com, sean@poorly.run,
 marijn.suijten@somainline.org, mcanal@igalia.com,
 dave.stevenson@raspberrypi.com, tomi.valkeinen+renesas@ideasonboard.com,
 kieran.bingham+renesas@ideasonboard.com, louis.chauvet@bootlin.com
Subject: Re: [RFC PATCH 1/8] drm: writeback: Refactor drm_writeback_connector
 structure
Message-ID: <2ah3pau7p7brgw7huoxznvej3djct76vgfwtc72n6uub7sjojd@zzaebjdcpdwf>
References: <20250811092707.3986802-1-suraj.kandpal@intel.com>
 <20250811092707.3986802-2-suraj.kandpal@intel.com>
 <20250811094429.GE21313@pendragon.ideasonboard.com>
 <awtqznhquyn7etojonmjn7karznefsb7fdudawcjsj5g2bok3u@2iqcdviuiz2s>
 <20250811111546.GA30760@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250811111546.GA30760@pendragon.ideasonboard.com>
X-Proofpoint-GUID: 5lnpr1e7y3pmXqUINFbHhRADZbxq2uvc
X-Proofpoint-ORIG-GUID: 5lnpr1e7y3pmXqUINFbHhRADZbxq2uvc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA2OCBTYWx0ZWRfX7ag0QqkVNW0v
 FVEY/VQiYjYBCLwo/R3+/0E8W0Zo4fYHre4tH30Z+TwKz5ZlAsh/LnPtwKQZcBDwbz6tVJ9TXlF
 6zU6C0tfOH+MDmlTE9i6RkDW6N0DtvXiErVruBcX9pT3tpkACSZ7FNpVmVWb/tMJGD4vGWRMeGn
 DdgRKxcTgGhPuGu2Wd8v6tcE1u/it6YKvFUEWp57qhIDhdi0dAIa/q+43tdBsMYm4ahUSARiqCq
 G6A/+mRFBhgnkg9K6XENIcCEKlcllWUMFIq8DbxlBe8sheEDJEuc57GN01nQ2tEnPHJy/CSQzBs
 MQ3d/zWBymGbLREgg+qD3buAJtB8WWQbsZsI1oVgLRR/C0byV73TIBVAFbo+81crJKNcBF2gLvn
 7dYndf/B
X-Authority-Analysis: v=2.4 cv=YMafyQGx c=1 sm=1 tr=0 ts=6899ef7e cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=QyXUC8HyAAAA:8 a=4yu1Or5Oec3-_3BIJ7kA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 spamscore=0 suspectscore=0
 adultscore=0 impostorscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110068
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

On Mon, Aug 11, 2025 at 02:15:46PM +0300, Laurent Pinchart wrote:
> On Mon, Aug 11, 2025 at 01:22:30PM +0300, Dmitry Baryshkov wrote:
> > On Mon, Aug 11, 2025 at 12:44:29PM +0300, Laurent Pinchart wrote:
> > > On Mon, Aug 11, 2025 at 02:57:00PM +0530, Suraj Kandpal wrote:
> > > > Some drivers cannot work with the current design where the connector
> > > > is embedded within the drm_writeback_connector such as intel and
> > > > some drivers that can get it working end up adding a lot of checks
> > > > all around the code to check if it's a writeback conenctor or not.
> > > > To solve this we move the drm_writeback_connector within the
> > > > drm_connector and remove the drm_connector base which was in
> > > > drm_writeback_connector. We do all other required
> > > > modifications that come with these changes along with addition
> > > > of new function which returns the drm_connector when
> > > > drm_writeback_connector is present.
> > > > All drivers will be expected to allocate the drm_connector.
> > > > 
> > > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/drm_writeback.c | 33 ++++++++++------
> > > >  include/drm/drm_connector.h     | 60 +++++++++++++++++++++++++++++
> > > >  include/drm/drm_writeback.h     | 68 ++++-----------------------------
> > > >  3 files changed, 89 insertions(+), 72 deletions(-)
> > > > 
> > > > @@ -2305,6 +2360,11 @@ struct drm_connector {
> > > >  	 * @cec: CEC-related data.
> > > >  	 */
> > > >  	struct drm_connector_cec cec;
> > > > +
> > > > +	/**
> > > > +	 * @writeback: Writeback related valriables.
> > > > +	 */
> > > > +	struct drm_writeback_connector writeback;
> > > 
> > > No, sorry, that's a bad idea. Most connectors have nothing to do with
> > > writeback, you shouldn't introduce writeback-specific fields here.
> > > drm_writeback_connector happens to be a drm_connector because of
> > > historical reasons (it was decided to reuse the connector API exposed to
> > > userspace instead of exposing a completely separate API in order to
> > > simplify the implementation), but that does not mean that every
> > > connector is related to writeback.
> > > 
> > > I don't know what issues the Intel driver(s) have with
> > > drm_writeback_connector, but you shouldn't make things worse for
> > > everybody due to a driver problem.
> > 
> > Suraj is trying to solve a problem that in Intel code every drm_connector
> > must be an intel_connector too. His previous attempt resulted in a loose
> > abstraction where drm_writeback_connector.base wasn't initialized in
> > some cases (which is a bad idea IMO).
> > 
> > I know the historical reasons for drm_writeback_connector, but I think
> > we can do better now.
> > 
> > So, I think, a proper approach would be:
> > 
> > struct drm_connector {
> >     // other fields
> > 
> >     union {
> >         struct drm_connector_hdmi hdmi; // we already have it
> >         struct drm_connector_wb wb;  // this is new
> >     };
> > 
> >     // rest of the fields.
> > };
> 
> I still don't like that. This really doesn't belong here. If anything,
> the drm_connector for writeback belongs to drm_crtc.

Why? We already have generic HDMI field inside drm_connector. I am
really hoping to be able to land DP parts next to it. In theory we can
have a DVI-specific entry there (e.g. with the subconnector type).
The idea is not to limit how the drivers subclass those structures.

I don't see a good case why WB should deviate from that design.

> If the issue is that some drivers need a custom drm_connector subclass,
> then I'd rather turn the connector field of drm_writeback_connector into
> a pointer.

Having a pointer requires additional ops in order to get drm_connector
from WB code and vice versa. Having drm_connector_wb inside
drm_connector saves us from those ops (which don't manifest for any
other kind of structure). Nor will it take any more space since union
will reuse space already taken up by HDMI part.

> 
> > I plan to add drm_connector_dp in a similar way, covering DP needs
> > (currently WIP).

-- 
With best wishes
Dmitry
