Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Mu11ErhVLGpWPgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 20:53:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E26C467BDFB
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 20:53:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=QyzaGnik;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=R+cZTqxF;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B5E010F670;
	Fri, 12 Jun 2026 18:53:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94C1610E314
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2026 18:53:39 +0000 (UTC)
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 65CGVwUu019752
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2026 18:53:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=v3/Hm6Xq7WCrgTyuR+mYm99o
 byQyGcdOpmpb0F6ke1c=; b=QyzaGnikY7lvP+gYNtF5B5gsq2WmUJGU6b/iEyc8
 SM60hoYQ877RExS0N7DGLbXtTL5/6KRJJw7ZeGH5x87tjPexRkoTotluUY0BnFoF
 HkMji3P7vnUoJFsacAa7h3IxAfTGy3w+v0t6lhiq0m2CPW7jNKXBP9dy8oZQAYes
 /x7yvsuAm61BlmQgJFdUBuRG9rWEKgjMq6Ve3gPdCoUfGxiYeVrB/2byyKH95qPH
 2lgtErJZxVrg9WL1eI0Tx9nasXDLeiH+aWXhjUscB+gmB6mXz9YnPbeuLzbPtaHi
 OJTYOJiWMIh/LNLvFxLza8JV0OnU+OYW/dSj20tJKJptdQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er1cbmk7y-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2026 18:53:38 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id
 af79cd13be357-9157f1be083so220243185a.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2026 11:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1781290417; x=1781895217;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=v3/Hm6Xq7WCrgTyuR+mYm99obyQyGcdOpmpb0F6ke1c=;
 b=R+cZTqxFXAND7TTnZ4gLWD4PPTVhpXdqetEi/BxK89/wW/mKLXbJBwuG/jFzf0pli/
 Bs8e2Ge4cEtW8xGKSo4eM0Z2OhRKivQb0QJcg7YYBKHIHpI0Jlbj/LPrKs7sNoXxQ+61
 //WgXvnBfsKbXNjsUPBHRAyW77TepfF1Gmttfdf40cdR8bIevL+i6sXSQTmD11jgjWhv
 OjG0AMpg46u36MI50V+RzGvbFNaJRwegljhNXzGtP5F3CopWSFe9IEoxm8RbnKIpOOZk
 O4VdyYL8M3W99IsoR2eP3vn/0XI8OAhEYutEiG7L0RGd9nWdn24AapoR7OyHMMMmKppf
 hoMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781290417; x=1781895217;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=v3/Hm6Xq7WCrgTyuR+mYm99obyQyGcdOpmpb0F6ke1c=;
 b=jY7YqTUvLg17SljbDGqdXoO5yGxcnGHrGMUR22drOykTu2vY0sjdkx4iVfuAmIwS7Z
 xcmZcgtcV2XJO76eQ3mLDwHygwQiq/660s8mKchB22bbp7HESysWcTUIIc381n41XqqJ
 IPhnsqgh1WD5Z3ySvogagIKrgI0DGkAOsOwRppebG8m7/l0ysGZ4BCfuyGRzEn3KMlsp
 z0DVrExRod4k33XYfiPR0wpdfRY7JsMfqcFADXPH1vog2cbw2sh3LoEdEXKIzcwS6n8I
 M5GyPgF33fow1iDvgpYGhySPEWsKdrXeSjPMRN2/BMWQMRc187K268oIEDSlGcJXMU0P
 U19g==
X-Forwarded-Encrypted: i=1;
 AFNElJ/BWhFRXOdIGeW/0YDVs9vQA6QkjZsYq1BDAVDFiUEcn5CErfHac2QAtBrdympsRvG8gdt6rolapnY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxFufXtcJ1h7XNslnGp8ImOp2wFbbT9iiRX5PzptbwNa3QOTzHu
 W0seGN/bjlF+Ck9p60iPr1A8H1nINMCqY+y5pTvQYXn/nyoQKamkBTMt13wLX3zbbRNpM5CHXX1
 YX609Rv0Wnc4rem1vcg6li5aT8tGsJu8PnknO2NX2HBldwUbjI/f1vEmdtKiLoYpeLGNPIqY=
X-Gm-Gg: Acq92OGLHmkv6vPdai/wgjlVb1NQxVa2dJUQVbIBm0940yoQgxhZp4hZvB8o0TYJD+3
 /4uiMlPLmi1eIHhUJQLdXN+VI6sJmgteQTgbpm5uJZGjTEllornXK08JF97VoxxOe8tFn0hTTWi
 NrhtwbJOk2ZNQY0niwny5wmG9nYZ3b4+bAkCe9SXKJXbe6yzehOA2uLH1OIJkLCxfXJaf7Mm/Rm
 8J3xHjXoHING2+JvL46O74XcYlnASQQH+AOa8gqCDjN+QoknMYY3qrjoxNsyD/dcaqTMO65EVoA
 K8mv+t0OjMLfj+T8AJ+TRN48D00x/1fiA6xBtCRzZEQlpoHh87fuMHHurIBNhen1yqYc9zTxZav
 S1LcJqsATrKdQG30nMYkfbL3UwMP+mI6gNKMsN83hRDRD+FXdqm8D9ikJ0CHZUTq5VE+FwSvwNa
 LN/3aB/5fisPypIUGHCS5SNrYXhKnUJy9YIoA=
X-Received: by 2002:a05:620a:17a8:b0:910:db3a:7bdb with SMTP id
 af79cd13be357-9161bc8d778mr559909685a.32.1781290417466; 
 Fri, 12 Jun 2026 11:53:37 -0700 (PDT)
X-Received: by 2002:a05:620a:17a8:b0:910:db3a:7bdb with SMTP id
 af79cd13be357-9161bc8d778mr559899485a.32.1781290416844; 
 Fri, 12 Jun 2026 11:53:36 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5ad2e1ae1absm726479e87.59.2026.06.12.11.53.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2026 11:53:34 -0700 (PDT)
Date: Fri, 12 Jun 2026 21:53:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
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
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Pengyu Luo <mitltlatltl@gmail.com>, Nikita Travkin <nikita@trvn.ru>,
 Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Francesco Dolcini <francesco@dolcini.it>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org
Subject: Re: [PATCH v4 1/8] drm/connector: report out-of-band IRQ_HPD events
Message-ID: <hxto2g32oyfy2tlihdgpjy7bwkhxp2cdw7qnf2rvpl7g7jczen@5js56gor3z6t>
References: <20260608-hpd-irq-events-v4-0-30b62b335487@oss.qualcomm.com>
 <20260608-hpd-irq-events-v4-1-30b62b335487@oss.qualcomm.com>
 <20260609-bouncy-tomato-dalmatian-70ccee@houat>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260609-bouncy-tomato-dalmatian-70ccee@houat>
X-Proofpoint-GUID: _Zi0ZZUI4cJb5OlwlWdaTXjUVXf_b571
X-Proofpoint-ORIG-GUID: _Zi0ZZUI4cJb5OlwlWdaTXjUVXf_b571
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDE3NiBTYWx0ZWRfXyNBZLutn3hwU
 FdNoTJWUY9ilOgILhC3HawxCAszicEAtTW2S6HhrpKu7Vq/GOJ1ins6LPRYfvKjy8hgKsRwytGD
 Kt2KsIEqQEIiMtE0UKTA65nLgjrsA9k=
X-Authority-Analysis: v=2.4 cv=S57pBosP c=1 sm=1 tr=0 ts=6a2c55b2 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=QyXUC8HyAAAA:8
 a=EUspDBNiAAAA:8 a=Qs5g3gW-Ea0FhcstOt0A:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDE3NiBTYWx0ZWRfX8M5b+Q3mkhbk
 hZ0pNH85FoSFZiDqCucN3UibdGmkaHUqaSFtU+CSJJzSAIncMxBp7/1apqXnt4N/ExqP9jfsUxv
 XPiVK4Xfnb2no+F1MBkvK1isRx0nn/+UVPpP9StSPqj/ohJH4OAyX+06Ym3MHWy8RnH9WIGGft5
 aphy4RSDLJDU9D1iiM6N7iQ4ZyY/uEQQd95mHtwT7bumvfnr1EIMqhSqZ5YXSep1BA4RIZ4ogwT
 oO7mQeFAXH/mIDPUZKwP8BCsCLwuAnRl+hdYZxdNMiyu2KnG+MrTgfZjcKJ5VG0b7MlgbeMVQVk
 Fc1C9+jl/jjR1pZZPHZ7zSszhYfgl41g9rOdnFGE3S57xBaUoy1w0eT919xKdKqpumQ1iQj1tr4
 slGaE1rWWuUvFO+RZ8kJuNKRzyeNpv1LLTm1WpQRCSCvIlr67+Z9Lk7aZcT2q2UCtN+6lK0nKBU
 G2+t3NOhchrMsTYejxQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-12_02,2026-06-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 adultscore=0 phishscore=0 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606040000
 definitions=main-2606120176
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[linux.intel.com,suse.de,gmail.com,ffwll.ch,linuxfoundation.org,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,ursulin.net,baylibre.com,googlemail.com,oss.qualcomm.com,linux.dev,poorly.run,somainline.org,trvn.ru,bootlin.com,dolcini.it,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[44];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:heikki.krogerus@linux.intel.com,m:gregkh@linuxfoundation.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:adrien.grassein@gmail.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:robin.clark@oss.qualcomm.com,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:jesszhan0024@gmail.com,m:sean@poorly.run,m:marijn.suijten@somainline.org,m:tomi.valkeinen@ideasonboard.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:mitltlatltl@gmail.com,m:nikita@trvn.ru,m:yongxing.mou@oss.qualcomm.com,m:luca.ceresoli@bootlin.com,m:francesco@dolcini.it,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kerne
 l.org,m:linux-usb@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:linux-amlogic@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-arm-msm@vger.kernel.org,m:freedreno@lists.freedesktop.org,m:jernejskrabec@gmail.com,m:adriengrassein@gmail.com,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:from_mime,5js56gor3z6t:mid,qualcomm.com:dkim,qualcomm.com:email,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E26C467BDFB

On Tue, Jun 09, 2026 at 03:20:01PM +0200, Maxime Ripard wrote:
> Hi,
> 
> On Mon, Jun 08, 2026 at 12:33:02AM +0300, Dmitry Baryshkov wrote:
> > The DisplayPort standard defines a special kind of events called IRQ.
> > These events are used to notify DP Source about the events on the Sink
> > side. It is extremely important for DP MST handling, where the MST
> > events are reported through this IRQ.
> > 
> > In case of the USB-C DP AltMode there is no actual HPD pulse, but the
> > events are reported through the bits in the AltMode VDOs.
> > 
> > Rename drm_connector_oob_hotplug_event() to drm_connector_dp_oob_status()
> > and extend its interface to report IRQ events to the DisplayPort Sink
> > drivers.
> > 
> > Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> >  drivers/gpu/drm/drm_connector.c          | 20 ++++++++++++--------
> >  drivers/usb/typec/altmodes/displayport.c | 23 +++++++++++++++--------
> >  include/drm/drm_connector.h              | 21 +++++++++++++++++++--
> >  3 files changed, 46 insertions(+), 18 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> > index 3fa4d2082cd7..bb128dd0263a 100644
> > --- a/drivers/gpu/drm/drm_connector.c
> > +++ b/drivers/gpu/drm/drm_connector.c
> > @@ -3502,20 +3502,24 @@ struct drm_connector *drm_connector_find_by_fwnode(struct fwnode_handle *fwnode)
> >  }
> >  
> >  /**
> > - * drm_connector_oob_hotplug_event - Report out-of-band hotplug event to connector
> > + * drm_connector_dp_oob_status - Report out-of-band hotplug event to DisplayPort connector
> >   * @connector_fwnode: fwnode_handle to report the event on
> >   * @status: hot plug detect logical state
> > + * @extra_status: additional information provided by the sink without changing
> > + * the HPD state (or in addition to such a change).
> >   *
> > - * On some hardware a hotplug event notification may come from outside the display
> > - * driver / device. An example of this is some USB Type-C setups where the hardware
> > - * muxes the DisplayPort data and aux-lines but does not pass the altmode HPD
> > - * status bit to the GPU's DP HPD pin.
> > + * In some cases when DisplayPort signals are being routed through the USB
> > + * Type-C port the hotplug event notifications come from outside of the display
> > + * driver / device. In this case hardware muxes the DisplayPort data and
> > + * AUX-lines but does not pass the altmode HPD status bit to the GPU's DP HPD
> > + * pin.
> >   *
> >   * This function can be used to report these out-of-band events after obtaining
> >   * a drm_connector reference through calling drm_connector_find_by_fwnode().
> >   */
> > -void drm_connector_oob_hotplug_event(struct fwnode_handle *connector_fwnode,
> > -				     enum drm_connector_status status)
> > +void drm_connector_dp_oob_status(struct fwnode_handle *connector_fwnode,
> > +				 enum drm_connector_status status,
> > +				 enum drm_connector_status_extra extra_status)
> 
> Thanks for the renaming, but I think we can also rename
> drm_connector_status_extra to something a bit more descriptive now?
> drm_connector_dp_oob_event? status?

I did not want to introduce a DP-specific interface, keeping the HDMI
eARC HPD in mind. But... Let's get it nice for DP first and handle eARC
if the need arives.

-- 
With best wishes
Dmitry
