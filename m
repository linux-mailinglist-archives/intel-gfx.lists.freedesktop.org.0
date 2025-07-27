Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3A1B13010
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Jul 2025 17:33:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4F6A10E2E2;
	Sun, 27 Jul 2025 15:33:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="UbFmqgNb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5B6F10E196
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Jul 2025 15:33:22 +0000 (UTC)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56R8qo9o004385
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Jul 2025 15:33:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=dh/cKerYP538krae+Lx4PtgG
 sbnWM7OFv3/FQBKxxwg=; b=UbFmqgNb7Vr558Ukim6kCbyHfgYlTqrUF27cuxwe
 hvmDIvPYmSr97Qlve4ix20LV7O/WdJXMTjWo3zN2nEdoYFpudvG86+/XmoE2G6m9
 wmtLU3UsbdO5ynwDxK9Kz6zwBQUz0JutDtThgV8/1LNTwaRJccy1HU/0MQIAdjT9
 rYkLa5sCxS4Y+tIbw5Mw+JOu3LTvoVy6MUPu4I8T7XbbFZL0bKA1iVyhPhQp88Cn
 VCm/0BZ76bDcw+sOcUl0LidQbEuEAcMgikmXW4lTVOzTYfurFXJKmiIoGKC4lFZz
 orDb/cl9GE3cLSxEoRJyRFof3zH9BKxYkaO8DGC5oLHMag==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484r6qj6p8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Jul 2025 15:33:22 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id
 af79cd13be357-7e32b9398e4so488878285a.1
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Jul 2025 08:33:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753630401; x=1754235201;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=dh/cKerYP538krae+Lx4PtgGsbnWM7OFv3/FQBKxxwg=;
 b=AQvQYQsbCbydltyQ/cJ2TztRVcSTQr3ggHWlxMZrM0Py1IrUr26qTXQNL/Vo4wppEX
 PiIwMxZsEcwaJ/vUE3IFOebBYGyvnsXOBOAr4N0yx0jvROv96tzAqWuM1e70PV5DgWVM
 Bt9lflf6MTP8/5OA2LvX1w02C2dkYCFnShyXuvLkxgH3uHHt6EuHoYwI1kJFBIfEwdWj
 ea84DvuIry0XUdfZYoebd5yRwt3lN+r7y1jFRy/oclEe3mF6Dr1/GVXVvkF5W3mK+lE0
 pUJ6TMqDTxBZ5wzHoq2YCl+Jh9u7S3k2knZQAbPxFVLbiB/0dtC4KlS+UiN2XQabMYux
 cr+A==
X-Forwarded-Encrypted: i=1;
 AJvYcCU3Mjh/cJEJ/pXtRxBJMaC9jFJYjkmwxV9T7o3D3IuOdjVkYUNay7a472GkcXELDN5chx4Kr7Q3G3Y=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzKLyi15i8MZzWxs0H6qy1jCSTKp+p6vgcK+1ZSi7T54NgXey3r
 A5RxK9J01RtlVHqAhJgnw1jcVG9xGXAA09wcLL2gUnL7WgdLSuXRVoiIhQ/3LV0WYi7RcWBtr2a
 iNAi8RHJabf9muvYq07eyrTdAst5vt4bBX8Y3a2vdfErkl2aSRUGiJHp0V+lyFbgfzDHWEhQ=
X-Gm-Gg: ASbGnct+otoSZ9p7h0QO38xSHvuZmle2YZDavS7OGYMkndQwRYNuSHOCXMf3neucPhL
 DzjE/bsuhFx6zHYU4vmYWDOkDzYRnvzvVGTcMCm5QFwou5Rbja/wQ3SxAcTFkXqqghMk0SDlD/O
 5F08/+OPe6tcIQOOSkHiM24a/7dcJAgzkBc6s3i0Sbd/EmpHTGD6qb/5R4RqMu4Rt3IoCfIQ76c
 VRy36bUO6B36ZlwHqEV3OdNLNrTBe2+keW4OQdQZxTFmdO3D5ZxCKz+kYGjPSX+UlCVrvQlYCxD
 GApATRHpJ1e9N03rO3hgOhHBePyj/MYSxRFsSdK2In0PGXBPjsEcQSm7ybnZbS957UcwufNpSHV
 /MLSqLnuAHXdYW6trMGNfOx0uRRk5ech37i9AplUOaykqkDmmOprn
X-Received: by 2002:a05:620a:191f:b0:7e0:2c05:6ba1 with SMTP id
 af79cd13be357-7e63bcb5381mr1167395185a.0.1753630400579; 
 Sun, 27 Jul 2025 08:33:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFKIDm3CaPdVj5Q6o9fA3RaIhO750yOPHcxLXcttC0WMEHyiDfIsCVflhSSN7Ccb2+bcGZQug==
X-Received: by 2002:a05:620a:191f:b0:7e0:2c05:6ba1 with SMTP id
 af79cd13be357-7e63bcb5381mr1167391985a.0.1753630400145; 
 Sun, 27 Jul 2025 08:33:20 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-55b6317b8e1sm868194e87.44.2025.07.27.08.33.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Jul 2025 08:33:17 -0700 (PDT)
Date: Sun, 27 Jul 2025 18:33:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>
Subject: Re: [PATCH 01/28] drm/writeback: Add function that takes
 preallocated connector
Message-ID: <5qawf2olp7m2opwnotrzrvx7563dyqw6i3pkqzrzsqtn4l3vyf@4q5tisgxqpxf>
References: <20250725050409.2687242-1-suraj.kandpal@intel.com>
 <20250725050409.2687242-2-suraj.kandpal@intel.com>
 <tglzdolw5nxc7tbscpfjcvx5jiydbghvouws7fl7xqryh7q5c4@klo5yncolqah>
 <DM3PPF208195D8DB4B4B18D41EAB4FC3CBAE358A@DM3PPF208195D8D.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DM3PPF208195D8DB4B4B18D41EAB4FC3CBAE358A@DM3PPF208195D8D.namprd11.prod.outlook.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI3MDEzNCBTYWx0ZWRfX0B5GozlMgDOc
 gSnCtM9dUe5Eurwz5/hKkxCR5X3DQBrEt4Vt7RXtrcV88+FKA8Wj6jUBuflgI3+SvSVC66/WJgP
 fKrqndRuImNEDTmWGNWDmkwhaLQq0IHNEswNMaUeKtOO4CODEHCyiWuVAxTfZ/oTnn74t5xAo8c
 M4aGnhwGRtKo4EnbcdtDY50G7mUbMAO0olem+SmHWTEKdNchwnqLpqSILkIc2Esl9qnP4BHYlsV
 5H/J12OL+p8FciNZ77sXiQ7d45GpTMS80ipxL7YPmwK+6yoq0py9Bitn3Nm5bo2bzht14eqmf7D
 mSte/6oEslQ2RzXq9QBNii+6ycW3IAM3UzIhANS0PagKUce+DESKlIq00qHXAOxoZYb8+p+/Q4T
 EjFNmEJySA4+Ma/8klFgSGvOhGYKnSVvnrn/gCSRnw5g0LqTLpEllmCjqSq0gL4NtmDyGpcc
X-Proofpoint-ORIG-GUID: hLO5sKRF7dYvi1Ao3zVyVXkctRf--bfa
X-Authority-Analysis: v=2.4 cv=ea89f6EH c=1 sm=1 tr=0 ts=688646c2 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=QyXUC8HyAAAA:8 a=e5mUnYsNAAAA:8
 a=QmJApBX6WoVuYgKOPdwA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-GUID: hLO5sKRF7dYvi1Ao3zVyVXkctRf--bfa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-27_05,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0 phishscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1015
 spamscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507270134
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

On Sat, Jul 26, 2025 at 04:41:29PM +0000, Kandpal, Suraj wrote:
> 
> 
> > -----Original Message-----
> > From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > Sent: Saturday, July 26, 2025 5:46 PM
> > To: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Cc: dri-devel@lists.freedesktop.org; intel-xe@lists.freedesktop.org; intel-
> > gfx@lists.freedesktop.org; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>;
> > Murthy, Arun R <arun.r.murthy@intel.com>; Shankar, Uma
> > <uma.shankar@intel.com>
> > Subject: Re: [PATCH 01/28] drm/writeback: Add function that takes
> > preallocated connector
> > 
> > On Fri, Jul 25, 2025 at 10:33:42AM +0530, Suraj Kandpal wrote:
> > > Write a function that takes a preallocated drm_connector instead of
> > > using the one allocated inside the drm writeback connector init
> > > function.
> > 
> > Please start your commit message with describing the problem.
> > 
> > >
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >  drivers/gpu/drm/drm_writeback.c | 76
> > +++++++++++++++++++++++++++++++++
> > >  include/drm/drm_writeback.h     |  7 +++
> > >  2 files changed, 83 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/drm_writeback.c
> > > b/drivers/gpu/drm/drm_writeback.c index 95b8a2e4bda6..fa58eb0dc7bf
> > > 100644
> > > --- a/drivers/gpu/drm/drm_writeback.c
> > > +++ b/drivers/gpu/drm/drm_writeback.c
> > > @@ -416,6 +416,82 @@ int drmm_writeback_connector_init(struct
> > > drm_device *dev,  }  EXPORT_SYMBOL(drmm_writeback_connector_init);
> > >
> > > +/*
> > > + * drm_writeback_connector_init_with_conn - Initialize a writeback
> > > +connector with
> > > + * custom encoder and connector
> > > + *
> > > + * @enc: handle to the already initialized drm encoder
> > > + * @con_funcs: Connector funcs vtable
> > > + * @formats: Array of supported pixel formats for the writeback
> > > +engine
> > > + * @n_formats: Length of the formats array
> > > + *
> > > + * This function assumes that the drm_writeback_connector's encoder
> > > +has already been
> > > + * created and initialized before invoking this function.
> > > + *
> > > + * In addition, this function also assumes that callers of this API
> > > +will manage
> > > + * assigning the encoder helper functions, possible_crtcs and any
> > > +other encoder
> > > + * specific operation.
> > 
> > Why?
> 
> The problem would that not every want can have a drm_connector embedded inside the drm_writeback_connector
> We have a restraint where all connectors need to be a intel connector and since the we are not allowed to make connector 
> Inside the drm_connector into a pointer this gives a good alternative.

All of this needs to go to the commit message.

> 
> > 
> > > + *
> > > + * Drivers should always use this function instead of
> > > +drm_connector_init() to
> > > + * set up writeback connectors if they want to manage themselves the
> > > +lifetime of the
> > > + * associated encoder.
> > > + *
> > > + * Returns: 0 on success, or a negative error code  */ int
> > > +drm_writeback_connector_init_with_conn(struct drm_device *dev, struct
> > drm_connector *connector,
> > > +				       struct drm_writeback_connector
> > *wb_connector,
> > > +				       struct drm_encoder *enc,
> > > +				       const struct drm_connector_funcs
> > *con_funcs,
> > > +				       const u32 *formats, int n_formats) {
> > > +	struct drm_property_blob *blob;
> > > +	struct drm_mode_config *config = &dev->mode_config;
> > > +	int ret = create_writeback_properties(dev);
> > > +
> > > +	if (ret != 0)
> > > +		return ret;
> > > +
> > > +	blob = drm_property_create_blob(dev, n_formats * sizeof(*formats),
> > > +					formats);
> > > +	if (IS_ERR(blob))
> > > +		return PTR_ERR(blob);
> > > +
> > > +	connector->interlace_allowed = 0;
> > 
> > This function contans a lot of copy-paste from
> > __drm_writeback_connector_init(), which is obviously a no-go.
> 
> The whole point is the minore difference inbetween then and how it derives a lot of things from the
> drm_writeback_connector because of which this looks like a similar function but is essentially different.

It surely is. This means that you need to extract common code rather
than duplicate it.


-- 
With best wishes
Dmitry
