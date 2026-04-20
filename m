Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id VhVsN/UR5mmnrAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 13:45:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0B742A033
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 13:45:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F57610E1C2;
	Mon, 20 Apr 2026 11:45:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="f+Ng/SPg";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UX9LQQuA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A09EF10E161
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 11:45:54 +0000 (UTC)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63K977k32755626
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 11:45:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=OSEOlty1w4G0PIvTT1dv0PCa
 ahtC4/jkfebraYruQdc=; b=f+Ng/SPgYV0/VApKl6YYyO9YGSHsU3z0Q2RBtC+P
 UiZtdEPyRFWDNAsoNaf2b8tsnDdpDuSWf3WCsSVIn+MgaHepaX4JPbXmDJXw1XSz
 XS3us1ReB/tHS0hAgv4Dffl3nCK954nXS81UtTBk+UpJ0TZq3OI/49HhGKfXUd2x
 f6t3ON+5D3vaxgEbTe1TpLcelu442HeuCsaiiBQsK0Nrz77SMXUzP4Lo5ptaIXhM
 ODldoxylvSvlTVmas16TrTI/rmmaR6nHaUXWDznUbPhs3W3vjWXl18Tm2YBALshy
 VumfoIKgMCrWt14FCsvZ0pHI0Zzf2Jgwbm4mCsVZCaPXSQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dnh7xghar-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 11:45:53 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id
 af79cd13be357-8cfc8e7f987so349958085a.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 04:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1776685552; x=1777290352;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=OSEOlty1w4G0PIvTT1dv0PCaahtC4/jkfebraYruQdc=;
 b=UX9LQQuAM46Juzd+lyEBjJ3HhF7Tyks0NIxcpmsDjJwfgZrQy59nnHNXJUp6asy2r7
 h70hPwawvj2cojAiLR5frUui9BHD9kGEoX2DfsXIxybbRwL5FwV4TVE8R7fCYlAo0nfJ
 bE+aip9Cve2Ivza/Yq5X9UnuwjSrRUX/Ar27pPz4zMMG+Lw+vlFv1gl5lk6y8v8gM6tF
 MurOofLXGYQErlsRUGSNAjjJbt2+LDQSgKjiU0LZsxHsqSQ+lCKlEK6qtCUTn1kPoxNr
 WBcsKf4rck2HXrUGOvmhHHI1+V1GAksWYu6y4XhiM5Y8lnzhMb8mal4axZcgZxzxdEih
 xtmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776685552; x=1777290352;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=OSEOlty1w4G0PIvTT1dv0PCaahtC4/jkfebraYruQdc=;
 b=NRGYByIHXqK1gvLefWFHsuWwt0veAF774O0daZbjK1hw1TH7AWpFqmM2zsCok8PXNr
 tCDgWGq3uJ+OwtKRWt8SheOqCyGEWWIW029vKjkCwpVyBbWjjFyEgF0Ms8M/TLvL5Mhi
 ntGcKXuaqRRWUUPEaov51lCvIPvM0VPj83ietf7vrYt98y3/47LtRCC5fpOZLIu/sFiC
 W+FPdIrYT8h7qzuACE/oA4HUe7eDyH4cRchPYSFI5L3ADE4ldStqpNmrkj+quZcs3Kgd
 XPHFnhG9ZP5DpllfKcb7prFsDF9uQBWWvepmk5gv0YxghK9WwIeTe238M/AbHH47gYu+
 cb0Q==
X-Forwarded-Encrypted: i=1;
 AFNElJ8rhozKBfEUZvgOilxNGe7dcY4WawM7nLzrdIhlejDdIbLk4HVvXsG233bHt+scLfcqwjl+k31rhkU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxL6BsfdOuYO99I65nbrEBKBDZkGWYGLi9xfx1iSYCg6UnBbKVm
 1ZSIC1d2qDOECv7RsUjm0ILb3j/x7Qc423vh4AnrFYcXRxunSCGUCs646vztHqVtsbN0c9bvJQ4
 bFml87jjx9N01Yb/MJ+AbVjMfJIbgsY6GOrXRea/cpncNNGK7tpCaHTkRjObRPL9jAhxzBXw=
X-Gm-Gg: AeBDievYy4FIsHY+4icoWTChoJc6zikWZyIFAvml49jimUoBpJzNlpVdWbtJVZqy0Rz
 VghYcD5KbW6/6n5EAU8qvv+meAwrg5jGsMyysXfRFtT1K1yGQMduMw0IiY136kRB+hs8Y48Kc/4
 /+6/rDBBqHCEq3BUJIJE65lZzLdD6Q8Mpi6+e2cymN5sUNX6Prcb304+W0Dgb8VspA6yj6ECdN5
 2jPcOwxblztdf3meNH8ogTn2AmASKpZ1qyQHZyyv9Shp4R04KGUW3PyTiUpuzbjFmRRxkMQKQfq
 7cNURLiyMHX1WEbCcspO+lNuqxcNcZy1qVqbna7peZroLkXvtov3jnJLLX79duaq5Y50GEedTNm
 SjMn56pnz5gkwmMPhmK9eV/8tMlo0ScncOSoKeg0WD/LRBmtyMU6ByAPGmbv9PGY7/PITpIZfD1
 naGvi9I9wJ5BkGFwUhX6MbRMzZTkpXOgKSGjlewZj/B3kyig==
X-Received: by 2002:a05:622a:ce:b0:50b:3895:c22f with SMTP id
 d75a77b69052e-50e36b4ec02mr195511141cf.26.1776685551933; 
 Mon, 20 Apr 2026 04:45:51 -0700 (PDT)
X-Received: by 2002:a05:622a:ce:b0:50b:3895:c22f with SMTP id
 d75a77b69052e-50e36b4ec02mr195510191cf.26.1776685551248; 
 Mon, 20 Apr 2026 04:45:51 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a4187e7b22sm2874049e87.62.2026.04.20.04.45.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2026 04:45:50 -0700 (PDT)
Date: Mon, 20 Apr 2026 14:45:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Adrien Grassein <adrien.grassein@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Pengyu Luo <mitltlatltl@gmail.com>, Nikita Travkin <nikita@trvn.ru>,
 Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Subject: Re: [PATCH 1/6] drm/connector: report IRQ_HPD events to
 drm_connector_oob_hotplug_event()
Message-ID: <v7h3a5pwx32dfcumc3diysylja6lhkhobyzemfthb6dsadcxnp@2kkidnsgov4e>
References: <20260416-hpd-irq-events-v1-0-1ab1f1cfb2b2@oss.qualcomm.com>
 <20260416-hpd-irq-events-v1-1-1ab1f1cfb2b2@oss.qualcomm.com>
 <51b7c44e-36c9-461f-983a-eaa86eeb8cfd@ideasonboard.com>
 <6z572fdjkvjqvedifwvotgdy4lcrifiqvkjpnutousjqc6764r@zepfzkqy2kbu>
 <a2e60e74-a1be-469d-8f4d-ecce1f30b517@ideasonboard.com>
 <3vrqk67oivkgo26xdc3r774rvj3jn3t6sfydhlytyrfiftubhg@cipain7xxcjz>
 <f74ecd0a-3ff3-45b4-935e-44b89cd0c92d@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f74ecd0a-3ff3-45b4-935e-44b89cd0c92d@ideasonboard.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIwMDExNSBTYWx0ZWRfX8zPKPBDsSAQl
 v+TOIDIJmZTKPqtEKt4FFsqWN6axqBbCtgPQ36bCFjC0VnQrqr+E7oeGHmwT2RV0RNf4oKH39Jd
 Y5ufegBlHD+dul3jzY98ZinqhmicL4PfMYYmcUvl8pCtG/ilBKCS1HC4h3nJDwbeW2ogOi84/X8
 JxUqm+XpsYVfYrXJjbe/9EJcT4O63gtaBmaENJq/mSVgpp6p5T6TtFtBg52zCXSGRXFtwuPHzjc
 R96IZQ4rLsGJ2ZsV9iNf4mg7AvAptZHODXwtvEktvbtwWU82VaUPdUxBeCNh7TALKqxqDFrwNmc
 xC8DlPaQyEgb1n2BY8siew7lLqp7wHNjnsG6IH1Y122TJKQ255aawc1Vpdt+OdHyecg0XsidfFd
 ANONJTNreoxRb2hsNILe5K1Lj1tROt6ilSRT15VMFpD1uhqNKYvYucfc+ZptQjpkM9tuRHhiQYk
 xl1Hh5bBC2uQO0d4G5w==
X-Authority-Analysis: v=2.4 cv=BPmDalQG c=1 sm=1 tr=0 ts=69e611f1 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=hvn8mZBs_W1j6JFEFtEA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: BKNPlg0SEOkEfDNT63Ys3AuuRQHRvv-c
X-Proofpoint-GUID: BKNPlg0SEOkEfDNT63Ys3AuuRQHRvv-c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-20_02,2026-04-17_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 malwarescore=0 spamscore=0
 lowpriorityscore=0 impostorscore=0 suspectscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604200115
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
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[42];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tomi.valkeinen@ideasonboard.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:linux-amlogic@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-arm-msm@vger.kernel.org,m:freedreno@lists.freedesktop.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:heikki.krogerus@linux.intel.com,m:gregkh@linuxfoundation.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:adrien.grassein@gmail.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:robin.clark@oss.qualcomm.com,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:jesszhan0024@gmail.com,m:sean@poorly.
 run,m:marijn.suijten@somainline.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:mitltlatltl@gmail.com,m:nikita@trvn.ru,m:yongxing.mou@oss.qualcomm.com,m:jernejskrabec@gmail.com,m:adriengrassein@gmail.com,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,lists.infradead.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linuxfoundation.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,ursulin.net,baylibre.com,googlemail.com,oss.qualcomm.com,linux.dev,poorly.run,somainline.org,trvn.ru];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 3D0B742A033
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 20, 2026 at 02:01:57PM +0300, Tomi Valkeinen wrote:
> Hi,
> 
> On 20/04/2026 12:50, Dmitry Baryshkov wrote:
> > On Mon, Apr 20, 2026 at 07:50:46AM +0300, Tomi Valkeinen wrote:
> > > Hi,
> > > 
> > > On 18/04/2026 01:32, Dmitry Baryshkov wrote:
> > > > On Thu, Apr 16, 2026 at 11:10:03AM +0300, Tomi Valkeinen wrote:
> > > > > Hi,
> > > > > 
> > > > > On 16/04/2026 02:22, Dmitry Baryshkov wrote:
> > > > > > The DisplayPort standard defines a special kind of events called IRQ.
> > > > > > These events are used to notify DP Source about the events on the Sink
> > > > > > side. It is extremely important for DP MST handling, where the MST
> > > > > > events are reported through this IRQ.
> > > > > > 
> > > > > > In case of the USB-C DP AltMode there is no actual HPD pulse, but the
> > > > > > events are ported through the bits in the AltMode VDOs.
> > > > > > 
> > > > > > Extend the drm_connector_oob_hotplug_event() interface and report IRQ
> > > > > > events to the DisplayPort Sink drivers.
> > > > > > 
> > > > > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > > > > > ---
> > > > > >     drivers/gpu/drm/drm_connector.c          |  4 +++-
> > > > > >     drivers/usb/typec/altmodes/displayport.c | 12 ++++++++----
> > > > > >     include/drm/drm_connector.h              |  3 ++-
> > > > > >     3 files changed, 13 insertions(+), 6 deletions(-)
> > > > > > 
> > > > > > diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> > > > > > index 47dc53c4a738..5fdacbd84bd7 100644
> > > > > > --- a/drivers/gpu/drm/drm_connector.c
> > > > > > +++ b/drivers/gpu/drm/drm_connector.c
> > > > > > @@ -3510,6 +3510,7 @@ struct drm_connector *drm_connector_find_by_fwnode(struct fwnode_handle *fwnode)
> > > > > >      * drm_connector_oob_hotplug_event - Report out-of-band hotplug event to connector
> > > > > >      * @connector_fwnode: fwnode_handle to report the event on
> > > > > >      * @status: hot plug detect logical state
> > > > > > + * @irq_hpd: HPD pulse detected
> > > > > >      *
> > > > > >      * On some hardware a hotplug event notification may come from outside the display
> > > > > >      * driver / device. An example of this is some USB Type-C setups where the hardware
> > > > > > @@ -3520,7 +3521,8 @@ struct drm_connector *drm_connector_find_by_fwnode(struct fwnode_handle *fwnode)
> > > > > >      * a drm_connector reference through calling drm_connector_find_by_fwnode().
> > > > > >      */
> > > > > >     void drm_connector_oob_hotplug_event(struct fwnode_handle *connector_fwnode,
> > > > > > -				     enum drm_connector_status status)
> > > > > > +				     enum drm_connector_status status,
> > > > > > +				     bool irq_hpd)
> > > > > I find the "IRQ HPD" naming always confusing, even if I'm somewhat familiar
> > > > > with DP, but if someone has mainly worked on HDMI, I'm sure it's even worse.
> > > > > 
> > > > > Can we define this a bit more precisely? Is 'irq_hpd' only for displayport?
> > > > > If so, perhaps 'dp_irq_hpd' or 'displayport_irq_hpd'. I might even call it
> > > > > 'dp_hpd_pulse', but maybe that's not good as the spec talks about HPD pulse
> > > > > for both short and long ones (although in the kernel doc you just write "HPD
> > > > > pulse")... The kernel doc could be expanded a bit to make it clear what this
> > > > > flag indicates.
> > > > 
> > > > I attempted to stay away from defining a DP-specific flag, keeping it
> > > > generic enough. HDMI is pretty close (IMO) to requiring separate flag in
> > > 
> > > If it's not specifically the DP IRQ HPD, then we need to define what it
> > > means. I tried to think what it would mean with HDMI, but I didn't come up
> > > with anything.
> > 
> > I might be mistaken, but I had someting like HEAC HPD / EDID status
> > changes in mind (or HDCP-triggered HPD status changes). But here I
> > admit, I hadn't checked if it is actually applicable or not.
> 
> Possibly, I'm not familiar with those.
> 
> > Anyway, for e.g. DVI or VGA that means nothing. But, my point really is
> > to abstain from defining someting as DP-only in the top-level API.
> 
> I'm fine with that, but then it really has to be defined =).
> 
> > > > Linux. Likewise I'd rather not use "pulse". The DP AltMode defines a bit
> > > > in the VDO rather than a pulse.
> > > > 
> > > > Anyway, if irq_hpd doesn't sound precise enough, what about "bool
> > > > extra_irq"? This would convey that this is the extra hpd-related IRQ,
> > > > but it would also be obvious that it's not related to the HPD pin
> > > > itself.
> > > We'd still need to define what exactly it means. I think it might be better
> > > to just define it as the DP IRQ HPD, as then the meaning is clear.
> > > 
> > > Also, would an enum flags parameter be better than a bool parameter?
> > 
> > Maybe not enum, but u32 param. Then it can become:
> > 
> > @extra_status: additional type-specific information provided by the sink
> > without changing the HPD state
> > 
> > void drm_connector_oob_hotplug_event(..., u32 extra_status);
> > 
> > /* DP short HPD pulse or corresponding AltMode flag */
> > #define DRM_CONNECTOR_OOB_DP_IRQ_HPD BIT(0)
> > /* DP long HPD pulse, debounced XXX: do we need this? */
> > #define DRM_CONNECTOR_OOB_DP_REPLUG BIT(1)
> 
> Why is u32 better than enum? So that we could e.g. pass short values inside
> the extra_status?

No, my thought was to be able to define values specific to the
particular connector types and to be able to combine those values.

After sending the email I started thinking about the bridged and
corresponding notifications. There having overlapping values will not
work becasue bridges in the chanin don't easily know the final connector
type.

I think you are correct here, it should be the enum. With the first
iteration defined as:

/**
 * enum drm_connector_status_extra - additional events sent by the sink
 * together or in replacement of the HPD status changes
 /
enum drm_connector_status_extra {
  /**
   * @DRM_CONNECTOR_DP_IRQ_HPD: DisplayPort Sink has sent the
   * IRQ_HPD (either by the HPD short pulse or via the AltMode event).
   */
  DRM_CONNECTOR_DP_IRQ_HPD = BIT(0),
};

/**
  * @extra_status: additional information provided by the sink without
  * changing the HPD state (or in addition to such a change). It is an
  * OR of the values defined in the drm_connector_status_extra enum.
  */
void drm_connector_oob_hotplug_event(..., u32 extra_status);

> 
> > For HDMI we might want to define:
> > 
> > /* HDMI 1.4b 8.5, HPD pulse */
> > #define DRM_CONNECTOR_OOB_HDMI_REPLUG BIT(0)
> > 
> > Or might not, 100ms is long enough for all debouncers.
> 
> As I read the spec, there's no usable HPD pulse in HDMI as such. It just
> means that if HPD is low less than 100ms, it should be ignored, and if it's
> low more than 100ms, it should be handled. In other words, from spec
> perspective there's no difference between HPD being low 105ms or five days,
> there's no upper limit for the "pulse".

Yes... Let's see. I don't think we should define any extra API or values
for HDMI until the need arises.

> 
> Still, we probably want to handle the case where the HPD is low only for a
> short period, so that we don't do a full disable/enable-cycle. We can
> interpret it as the same monitor still being connected, we just need to
> check the EDID again.
> 
> But isn't that just a drm_connector_hotplug_event with drm_connector_status
> staying connected? The callee can see that the connector was connected
> before, it's connected now, but we got an event, so let's read the EDID
> again.

As I wrote, I'd be more concerned with the CDC / HEAC / eARC. For the
normal EDID changes I think we are doing a good enough job.

-- 
With best wishes
Dmitry
