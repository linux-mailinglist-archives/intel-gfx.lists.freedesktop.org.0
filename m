Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJWtACW14mls9QAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Apr 2026 00:33:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5838C41EE82
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Apr 2026 00:33:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88A1010EAC1;
	Fri, 17 Apr 2026 22:33:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="oXzhYDK1";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PMSiye4t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 908F610EAC1
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2026 22:33:04 +0000 (UTC)
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63HG4hXI2669976
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2026 22:33:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=TSEGKQzB1WAe4mG6RsOQMGtv
 hysGI/AKv3U5JbVIAVQ=; b=oXzhYDK1rSLLAp2XIHAVvLo4AVqqKnlswar189HN
 e+rnzd4BME96QgsFztG5BU63Zk4j9KXEQIVcmjKW62Fgday+sRMm+JAzN6ghiRE3
 qGy7XqnmhAb+dW6JF6f8mBCHJhY6uOzwvjvwHmQ2fvZThDOhhdt5pHzfFGvSFGk0
 S2+qFTh9QuNk9UzDeBYPyuGuCTkFUKp+RFM7tLZIN4r1X7e8M318vOz97z/C4u1h
 aUSUQedy+DVpgc6grFsf6oIw83sKg8qamfYAzbPTY3uivt3TAVkJvqtDjR0q0oQn
 DVCMtAKCPXWR2gl8TLA/hrybVLumaootglztDdTC2Vp1OA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dkaxcux4v-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2026 22:33:03 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id
 d75a77b69052e-50b4b81c632so29281181cf.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2026 15:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1776465183; x=1777069983;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=TSEGKQzB1WAe4mG6RsOQMGtvhysGI/AKv3U5JbVIAVQ=;
 b=PMSiye4tlU6mvMk5aCEZd750YzSaRlxYOtt/mheS0acsXm/cnPVx8OgF6aqdtWCWhb
 mfng0oQsbyycilkDxM3ULyeqG4CCK6xh3b2t1xyHdSVyunKThnlmGc2SCdbZdHs6zT0s
 KCzoB3WMxrDEYk3VqGcRDvPK8lIuEE9tPxrLG9gwBCADYufmQEgemM8vSYrN/SgZ/462
 wKRfpMFd399nkY8JiCl1+vl4RMLvTIM95rvASXC5X76eIn5gx9oPcu37pFBZFx2jp+8W
 rwpf8IDDm9BWd9ReikPHgk9Ubb7uWC2A2wnnRgFgkmfKxvU9Q/+mgQ9sz3rry7fzoJam
 5hJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776465183; x=1777069983;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TSEGKQzB1WAe4mG6RsOQMGtvhysGI/AKv3U5JbVIAVQ=;
 b=H3wRXl6bGHGO0VahQQlr+9qFPfEZwryDR1V5aWQpofs62tzu/Jjjy5e339Br+D0oTp
 dmkt9gM+m+uectwndXpVUlrC4KJl673g4KppwbPUeHEmRazC+MxRWjHqv5qVVIvA/i48
 XqwFpm/f4fENkMyiSflzMEbI33zjJkUGn/Nrns9e8EsDe37tQiE/UfcuclgAjaVRegVx
 PfjBOv5ZxQzAVCBGlosBBAqAlyMw2AeNwJIBlYbxw9/w2ECHTjTvrth07y3bjxE/PJSL
 X1C8MBdB844pelKgTZ4gCs5GkaGv2NldnA+eF94ub21KAIoRbG/0OxefAo8P/pfVKVil
 PMww==
X-Forwarded-Encrypted: i=1;
 AFNElJ8ewZYCvzRe/xghVlR/VyeI8pjloATy3RVVF9Q/DmqiCHTBxKpeq7p0zdHkSQiBav+RlE2WvW9ttRc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzy5LzqOf4QENe7vShod9gDo+ZD4tWIruXtOk6YhhDYIuHWat4T
 ZU5ZNf24EG+6HYVvgxTxi+X8rt9LXHo2ydARn9gL4Q2G069MVG805fmrLz0bfqmKdStvBCvoWFl
 hTPYA0tgrb8hA4vqS1p7ItS+NMiROzPl9siejRGBz/2w60zlH6XmKC4uCF3aDw6R8BXBnR0Q=
X-Gm-Gg: AeBDies6BbjgcmWwg14WVi2eCVO+KThjGKPitZG6tYduLrrI517Jfro0BoCIxBLHevN
 +ihmEAJAJ0ErU0mmPamJ9SwS3g8VGM6JeWxxwJO65wfE93K93I+zhqZIQPdmtkKRJw4KPPHsfV4
 FBjI43TT1iHeJquruCidVMvq8C6Rx0b5bWtrkioXil5Xg6lJ4ej4bNrI1L2P+1bGB6TtnETNA+I
 gMEt9c/ITKD8HpoUOuKAV2tEK34H0OmzYBnyGRLTd7H9OEBSb7NRZ8U5ZAMTnD9pBe/GDtJOJHs
 QI9p6ChPVUw7yglYHM9QesCzh++Sq4oK7P6NEhAHZJa251i8kl6QIM9TZMlrUds96NJycD9Wn6c
 kUQRUmhzyR25ZLb2Zr56DuZTda+6UyGV4lD8ikDCz7RzCnhYhtyz1zOjL/tBQBa8G7j9Y1hbdQH
 RNmS50zpV4JlOV08zuWu9j6peaODvBxvRIYe4+Gnm/NXLzgw==
X-Received: by 2002:a05:622a:345:b0:50d:82ca:7c9c with SMTP id
 d75a77b69052e-50e3693d29amr70717851cf.14.1776465182690; 
 Fri, 17 Apr 2026 15:33:02 -0700 (PDT)
X-Received: by 2002:a05:622a:345:b0:50d:82ca:7c9c with SMTP id
 d75a77b69052e-50e3693d29amr70717191cf.14.1776465182179; 
 Fri, 17 Apr 2026 15:33:02 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a4185bc297sm770798e87.18.2026.04.17.15.33.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2026 15:33:01 -0700 (PDT)
Date: Sat, 18 Apr 2026 01:32:59 +0300
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
Message-ID: <6z572fdjkvjqvedifwvotgdy4lcrifiqvkjpnutousjqc6764r@zepfzkqy2kbu>
References: <20260416-hpd-irq-events-v1-0-1ab1f1cfb2b2@oss.qualcomm.com>
 <20260416-hpd-irq-events-v1-1-1ab1f1cfb2b2@oss.qualcomm.com>
 <51b7c44e-36c9-461f-983a-eaa86eeb8cfd@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <51b7c44e-36c9-461f-983a-eaa86eeb8cfd@ideasonboard.com>
X-Authority-Analysis: v=2.4 cv=JcqMa0KV c=1 sm=1 tr=0 ts=69e2b51f cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=VTJl8P6_mujMtk0GPeUA:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE3MDIyNiBTYWx0ZWRfXyIcM7vSFF2nO
 KuijY+J3Jhpau7tfVVl1zs/XKl+mi6yeTRxzoq+nb6jUPKvMlIYcYPS1/SLBqr78+XiCSFOJnjS
 MzWApYka+K5MgH3W+j2AJu//GhwvuYYbXdPf4xEBuAYpJbp4N0CMI8bFLe5eomLVkVUaOvfMk6A
 dePVvt2fhlISNbrUV3M2vQPqvX9KToWWkw/5WuO8xjml31EgFHv8ymeG43vUWFjOKZ5qqZ3F92F
 4kGQCGkL0hH9uFgkndChZ6JZySeYWaTnqpQs0H/lpiopfVqBZVODbi7wdssXMuGir7CUDdaRvHO
 l/bWEyPUGWhd43YQzLjXPjWj2/5xkPzOSXvekpyymW5oVIwOROP4oBB9RAE+4KliOZg5xpfzvAC
 HNOwGR3XqZ4N8fAzKefnSzwTpd6PAG7xz0ev+lEP7sUVRXf9h9IWdcuaJ7QXRRtryPW+BmfXvwJ
 Hpm0uoAwYwcsCRH3DHA==
X-Proofpoint-GUID: lEh53oj826imkZx1Wgx3RdZBLYbxVHOg
X-Proofpoint-ORIG-GUID: lEh53oj826imkZx1Wgx3RdZBLYbxVHOg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-17_02,2026-04-17_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 clxscore=1015 malwarescore=0 phishscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2604070000
 definitions=main-2604170226
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
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,oss.qualcomm.com:dkim]
X-Rspamd-Queue-Id: 5838C41EE82
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 16, 2026 at 11:10:03AM +0300, Tomi Valkeinen wrote:
> Hi,
> 
> On 16/04/2026 02:22, Dmitry Baryshkov wrote:
> > The DisplayPort standard defines a special kind of events called IRQ.
> > These events are used to notify DP Source about the events on the Sink
> > side. It is extremely important for DP MST handling, where the MST
> > events are reported through this IRQ.
> > 
> > In case of the USB-C DP AltMode there is no actual HPD pulse, but the
> > events are ported through the bits in the AltMode VDOs.
> > 
> > Extend the drm_connector_oob_hotplug_event() interface and report IRQ
> > events to the DisplayPort Sink drivers.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> >   drivers/gpu/drm/drm_connector.c          |  4 +++-
> >   drivers/usb/typec/altmodes/displayport.c | 12 ++++++++----
> >   include/drm/drm_connector.h              |  3 ++-
> >   3 files changed, 13 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> > index 47dc53c4a738..5fdacbd84bd7 100644
> > --- a/drivers/gpu/drm/drm_connector.c
> > +++ b/drivers/gpu/drm/drm_connector.c
> > @@ -3510,6 +3510,7 @@ struct drm_connector *drm_connector_find_by_fwnode(struct fwnode_handle *fwnode)
> >    * drm_connector_oob_hotplug_event - Report out-of-band hotplug event to connector
> >    * @connector_fwnode: fwnode_handle to report the event on
> >    * @status: hot plug detect logical state
> > + * @irq_hpd: HPD pulse detected
> >    *
> >    * On some hardware a hotplug event notification may come from outside the display
> >    * driver / device. An example of this is some USB Type-C setups where the hardware
> > @@ -3520,7 +3521,8 @@ struct drm_connector *drm_connector_find_by_fwnode(struct fwnode_handle *fwnode)
> >    * a drm_connector reference through calling drm_connector_find_by_fwnode().
> >    */
> >   void drm_connector_oob_hotplug_event(struct fwnode_handle *connector_fwnode,
> > -				     enum drm_connector_status status)
> > +				     enum drm_connector_status status,
> > +				     bool irq_hpd)
> I find the "IRQ HPD" naming always confusing, even if I'm somewhat familiar
> with DP, but if someone has mainly worked on HDMI, I'm sure it's even worse.
> 
> Can we define this a bit more precisely? Is 'irq_hpd' only for displayport?
> If so, perhaps 'dp_irq_hpd' or 'displayport_irq_hpd'. I might even call it
> 'dp_hpd_pulse', but maybe that's not good as the spec talks about HPD pulse
> for both short and long ones (although in the kernel doc you just write "HPD
> pulse")... The kernel doc could be expanded a bit to make it clear what this
> flag indicates.

I attempted to stay away from defining a DP-specific flag, keeping it
generic enough. HDMI is pretty close (IMO) to requiring separate flag in
Linux. Likewise I'd rather not use "pulse". The DP AltMode defines a bit
in the VDO rather than a pulse.

Anyway, if irq_hpd doesn't sound precise enough, what about "bool
extra_irq"? This would convey that this is the extra hpd-related IRQ,
but it would also be obvious that it's not related to the HPD pin
itself.


-- 
With best wishes
Dmitry
