Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59ADCBAB7CB
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Sep 2025 07:30:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D618610E4DD;
	Tue, 30 Sep 2025 05:30:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="ffUMJTcH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B5A010E4DD
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Sep 2025 05:30:17 +0000 (UTC)
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58U4HRFl024086
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Sep 2025 05:30:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 UyHjCPMATEv0btaw4mLRwkhXhfa/J92TLOsyEnacsbo=; b=ffUMJTcHZtWZV+oq
 ArNb676wuUsAhBvcV5I758YbGxgUUZlGmUpe/KgliLzYkDWWyUmfq8KuxcSqfHTS
 xpZRKzgIRvpZLSfFUHS3nfRRCB/gl2FC7+YgC1IfrLcSLJZvaO9kDEUMBIs1kEzz
 f+vTbL12AeDF7ipXJPcF47ywI0weTK/FB/RxVWBaqvlt1W/pVR3MkHBgV+qOnkE8
 V3yh8RRG8RpwdMLTNlpJRrq0Qy5+/20oIHRcrPS69uxLEm2zv5H605wze3pQjNA2
 LXUGIag4GcZlBneJpVKP9Kynif56QuYi8euoGjLVIgTncMMQTRVgKKi9YHoE5949
 +FDTYg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e59n03fv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Sep 2025 05:30:16 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id
 d75a77b69052e-4dbd8484abbso67385201cf.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Sep 2025 22:30:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759210215; x=1759815015;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=UyHjCPMATEv0btaw4mLRwkhXhfa/J92TLOsyEnacsbo=;
 b=kn7mhGmXVJLGT6cZXpckAq3kQDOcgh+HIgP2FITRYHKUo0Xcri9z/VWiswVZY3eYG+
 jfp9pW28ZmVrmtj1xn7CHoiBL+q4mhiCsBTu1hY+u8W4vT2CMcwnOiQcSWqVCPQYNmao
 gOK6Mp3KoFZleXQNtOMpKpwzPNCE6Fm66iZU1Qs3uiK/rkGX7ImOpIl78CE+d+nbV+hE
 Ok13UJuLixLbgomLjcbgCTIuBnvanDPVpxFccbjK/erPBoszgqqKY6/V0RKssN+SKoMk
 pxPu1vpSX7PdkC2RRyUEkNasAYXrsWXtRfP+cn0eKEbUW8byxyR5yF8FAwWqEnTJgsfI
 O4mA==
X-Gm-Message-State: AOJu0Yz4xagLFUJn9zDS4UQXqm54/BGlFwZ8Lex95TgxTjL255plXB7g
 rDlNYLnaaUF9FmacDdJcEXqtPcTUyY400NhI5BaV0nPvoOGP7ijz5enNWSoM46RDO4E5EY9erou
 6NKfLfmFJE2ugbo3qK/h/evmL+AHdxnVIgBsOJTn56V5SHBfoDkItygGLYHjSBZWilYjqCOo=
X-Gm-Gg: ASbGncu/ehc+0qPgNvAICt4AY7BM16IF9DHnnHhxNQaPk26ltOk3jKx90UeID2ovmnk
 QGkeIwInh+eVqdtU47RlHrH+wnlJ2QP4q5BEbO8O1LpPBioYSXPEGZJWKWWymFnQr7I4LD0wc0i
 pKKZfZuj3HlHwwul5eeoMLQPw/b36V3EsqQ/5fuYZKbliH1jj/WE0NSJDj12PZZTM80YbJJHwyx
 vMvz+PYsnpeDRQWW4v9aHh8ijjXLrhovSfcHnnfP6SPzzK7/lVV4YAABS35C75K6iW4LHiuQtwL
 kAba1dRiwYldMcTZyYeDilklCK/UWed/lLpbeGMiSJwHM8H6aCXOOd2yGhfBrv4xERnDnrGPwXp
 NYeOjhKUEVQ6UgFJYT5VM/I8ItvP+ptrTkTjwFH/3CJOy/Aoj0o1jIY/09g==
X-Received: by 2002:a05:622a:848d:b0:4dc:1e47:ebe8 with SMTP id
 d75a77b69052e-4dc1e573acfmr162399421cf.61.1759210215480; 
 Mon, 29 Sep 2025 22:30:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFuRIRvvUTd1tJGq8GxD6N5pZpBKAMD15KT0FbkIn5S8lhow2xMrvXONQSxGYAac0EazbaO/g==
X-Received: by 2002:a05:622a:848d:b0:4dc:1e47:ebe8 with SMTP id
 d75a77b69052e-4dc1e573acfmr162399271cf.61.1759210214916; 
 Mon, 29 Sep 2025 22:30:14 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-586822413f3sm2086977e87.36.2025.09.29.22.30.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Sep 2025 22:30:13 -0700 (PDT)
Date: Tue, 30 Sep 2025 08:30:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v5 2/6] drm/dp: Add helpers to query the branch DSC max
 throughput/line-width
Message-ID: <6qj46wruaj5k2ywepsrkzfyyq4bsvcfmg7jhvrk4w2jkhcyorg@llo7bzmlarre>
References: <20250926211236.474043-3-imre.deak@intel.com>
 <20250929063644.533890-1-imre.deak@intel.com>
 <agzmuyty22gxtm7cwpdl7ynmrubot45e65tfavbq5muamn6qnj@2wsbjqlc3pye>
 <aNpbCWlluJfsjSE6@ideak-desk>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aNpbCWlluJfsjSE6@ideak-desk>
X-Proofpoint-GUID: bpmzVqxYf9FFvWjm1biolkDBMsGh29rW
X-Authority-Analysis: v=2.4 cv=O4g0fR9W c=1 sm=1 tr=0 ts=68db6ae8 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=e5mUnYsNAAAA:8 a=QyXUC8HyAAAA:8 a=4eaWqgk48EcRPs0Jtg8A:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-ORIG-GUID: bpmzVqxYf9FFvWjm1biolkDBMsGh29rW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwMSBTYWx0ZWRfX2IBTpkZNBLdu
 pJVxU5mrixNcahIcWJ2ZHN/y8k9DCW7Wqa6Faym5mruUEacCGWGvL/OsGCzpcUE9ENDLscqZLtP
 73+1Cz9iwGP1HV5vUIdbbiJ9X3EJGHZIy35QWV7VzXUdi3OhckGzyFpJpiYe5CXaFvbzOtCNlIw
 3DhFR12iwNqmVKo6L9bmzIfGWWIkbHp7BT2mI/AHj/xjx6SFnoJ955bFCIDkSqp2QlBO451wFJf
 rmr4JNu34tRH9t794FJZ6feAziP8uJLUJbYhb88IaZIhcQc9+oh9xt3MHPQ4swvxOAVSsuMls+H
 NmFxWXaDR038Y0UOm4jV9bGu03AW/7vcOtFBhGXzG1qxlgg4q3EZwZDCjONavqTzyhXE877G6tf
 TOPe1V5QXaV95S/D6u1JptiUPpwLaA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_08,2025-09-29_04,2025-03-28_01
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

On Mon, Sep 29, 2025 at 01:10:17PM +0300, Imre Deak wrote:
> On Mon, Sep 29, 2025 at 12:00:03PM +0300, Dmitry Baryshkov wrote:
> > On Mon, Sep 29, 2025 at 09:36:44AM +0300, Imre Deak wrote:
> > > Add helpers to query the DP DSC sink device's per-slice throughput as
> > > well as a DSC branch device's overall throughput and line-width
> > > capabilities.
> > > 
> > > v2 (Ville):
> > > - Rename pixel_clock to peak_pixel_rate, document what the value means
> > >   in case of MST tiled displays.
> > > - Fix name of drm_dp_dsc_branch_max_slice_throughput() to
> > >   drm_dp_dsc_sink_max_slice_throughput().
> > > v3:
> > > - Fix the DSC branch device minimum valid line width value from 2560
> > >   to 5120 pixels.
> > > - Fix drm_dp_dsc_sink_max_slice_throughput()'s pixel_clock parameter
> > >   name to peak_pixel_rate in header file.
> > > - Add handling for throughput mode 0 granular delta, defined by DP
> > >   Standard v2.1a.
> > 
> > This one got sent as a separate V5, without a proper changelog. What has
> > changed?
> 
> This is v3 of the patch, the changes are listed under v3. The patchset's
> version is v5.

Ugh. How one does relate this v3 (which is not mentioned anywhere) and
v5 of the series? This is totally counterintuitive. A usual
recommendation is to send the full series and to send it as a new
thread, sending all the patches in one go.

> 
> > > Cc: dri-devel@lists.freedesktop.org
> > > Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/display/drm_dp_helper.c | 156 ++++++++++++++++++++++++
> > >  include/drm/display/drm_dp.h            |   3 +
> > >  include/drm/display/drm_dp_helper.h     |   5 +
> > >  3 files changed, 164 insertions(+)
> > > 
> > 
> > -- 
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry
