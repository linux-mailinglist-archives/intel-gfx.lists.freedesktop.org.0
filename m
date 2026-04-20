Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KbIOOu35mlJ0AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 01:34:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7797C434DED
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 01:34:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A21610E7C1;
	Mon, 20 Apr 2026 23:34:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y69pm4Sr";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jSAAz8Gi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0788110EB69
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 23:33:58 +0000 (UTC)
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63KFVvAf084454
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 23:33:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 MbKgvVuxEIwEzMcmEacPjVXRL9Yz3CCmKCNgvBxdDkI=; b=Y69pm4Srn2LCPBjb
 025nTlDFvxjYJhnQGKyOlfHgAiNYtlC/gI/4rGoJzuqRCqMfXlyKM9aTTIFzQ8W5
 sL93/7AMjo4ui/4+2xuW4VoPUYnyo5PjDQyNBUicPT4OoDdgwwgSVWz6xz68Dqe+
 uj9bmjCXEoOI0ldAscc6TGdPSPkjCAnQwmVMtrX5cCyhwXLTEWi5HR24+pZbj5Ez
 OBpAy1+412XNQ/NyPfZek05H29kw+9ojgzeaMvAIfJdzVJjXIoPbpYfiBSxpzbwH
 jqvKl2JGQvPpqMaANSus+/ll75z1TRGYCDHJggWZFK1K8wHFsE29pfVx2PSWDwII
 8S7TcQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dnh81jwnp-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 23:33:58 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id
 6a1803df08f44-8a1accb970fso9625386d6.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 16:33:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1776728037; x=1777332837;
 darn=lists.freedesktop.org; 
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=MbKgvVuxEIwEzMcmEacPjVXRL9Yz3CCmKCNgvBxdDkI=;
 b=jSAAz8GiUgncIeu7FuZYs9Wu0qeh6825D9Mb4aSwTqeoxmFipj/OtuWnziQpl0t2yp
 nWUA9BtY8eXZ3KVjQXbnokXXYxoZW+KGsHHmHsqIlcShxTh9LBhSAibnZ/RwChSdMsYB
 2ijuuDPicEZoPHCtUIbeEdnw6Cj1G0TCj82ZbVNnMQHC+3EfzldhZB9tPs07/fGCyFZT
 n93OY4e6DLtHXDbTqilcsVZaADtgkhkiF78LPNXrdF3J3kVuSZVu6zKx9sWigmKEUs8u
 Fe8PfFUBWq1rQj2LKAe+IHIzsJ8lOLzXIqdW4LEz0t3vhAaOklXCOXmMwYqA+rn1oXx5
 YlrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776728037; x=1777332837;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=MbKgvVuxEIwEzMcmEacPjVXRL9Yz3CCmKCNgvBxdDkI=;
 b=D/p/LwJtVIhNMx72HFDT6puD2Qg5y1P0voCxj69MCTYGyONRQZ5Jn/RoBykdUQCvBm
 /Yah94tAzgRz9xy/kaoyJQWTBIM22hmJW6b/gxNgRk2VqaA3kNp/TE8sQ9iLL4msmlhT
 ux5aQ/itX7KixcqLJ51IIsKVkGfquDZ0XqesJRKF93mspPwCEKP0e6eTkBoly5LXwaOk
 3rvrj9GEwEijRpnetRxOx+OmXN26ot3+P4AT78drZq9USQQej8aflFyU2PNQn3otYXKs
 XwWz/sTXf+kKp/FczuY39sLQhRnuI0jopcEhSYlzbHRVCHWm8ZihbGCan+K7WXwpbSJX
 enGw==
X-Forwarded-Encrypted: i=1;
 AFNElJ9ibJI6RlQQXJgUGGy1ZYI33Os/UC+iBuRvXe4/obZOqZq1hfyVGObqsAwWprMeOU/Js6w/OJXyCak=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyQgO935Nu9B8bmKTZvdr5B9courA9IJDQOzR3dJ21rFFFC87Vt
 U8IpyQEiZbKsOKnfuZlnlrqf97wqznIF1uIbQGfzxXtgvG8e47i/v6FMJMoVxkjInjzl/D/g5oS
 CBseKv9ku4ariJrO90zUOS27zzLA6rAeB5mRZ1Gcmk3SvWmKToB3KxjdtptxssJ4UdF3CFSo=
X-Gm-Gg: AeBDiev47O4K12LKS+pScOCo3iTAB8GDt23GPFw3w+/iMxLExQ0tHjG+Twd5qTavOAc
 TcFqJ5sKjvuYb1SdFmBq/zRPRMF6FLu138BlvOfvvRw4QZKkNgv4+uLIhlG/xMEY2e8fVMqJbux
 oYUhW1ftbK3xQjCVl3s1epmgAm5mFp19MnuSZqbC7NnpkyVQpZnZZR7gqL4yG69IE2U7+vPXqHR
 TQCOBrouG3T+aoIJiik9cozGK5JY5hE814gJEqJ4PvpNB3gL1rFl6V57/nsukSIuSGMXwvy80AT
 /VHBIwZq6DOTBw9YFmF+jbKXxf3wtbd5wTIfauWoZTlL1qrAjQrTmNPZWVRd6l9QphwMDvBZQWr
 tgV3qV1qjQxP3GYYTHl7Gl8oCop1mkAzeru7lkPYOflpBNTn8i1uYcd6LVgY9vhNTHkwWFzvw/U
 qRutNUkDjODRBXhhDHw2Ex42p+k9e3fHzUWZaZFVH1J5OJ6Q==
X-Received: by 2002:ac8:7f0f:0:b0:50d:6557:5c83 with SMTP id
 d75a77b69052e-50e36c1165emr201698441cf.25.1776728037436; 
 Mon, 20 Apr 2026 16:33:57 -0700 (PDT)
X-Received: by 2002:ac8:7f0f:0:b0:50d:6557:5c83 with SMTP id
 d75a77b69052e-50e36c1165emr201698051cf.25.1776728036949; 
 Mon, 20 Apr 2026 16:33:56 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a4185bc627sm3320714e87.29.2026.04.20.16.33.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2026 16:33:54 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 21 Apr 2026 02:33:35 +0300
Subject: [PATCH v3 5/6] soc: qcom: pmic-glink-altmode: pass down HPD_IRQ events
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260421-hpd-irq-events-v3-5-44d2bf40dfc2@oss.qualcomm.com>
References: <20260421-hpd-irq-events-v3-0-44d2bf40dfc2@oss.qualcomm.com>
In-Reply-To: <20260421-hpd-irq-events-v3-0-44d2bf40dfc2@oss.qualcomm.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
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
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Pengyu Luo <mitltlatltl@gmail.com>, Nikita Travkin <nikita@trvn.ru>,
 Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1078;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=g2eHBnhqeprT5L86a/SxcLn20kIiQiAhlBDTRdUq0LE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBp5rfNYm08F+v71xJY6cvWWJprHmt/2yaesAWq3
 fglBTG+jpeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaea3zQAKCRCLPIo+Aiko
 1XkBB/0WgdqQ1mhHWgsx/7ld0lJj3i66+rbrFpJxidzADlKQPAxm48ED3/gjv79sb4e5wUwCCXA
 /gz6xF/8U0cGItse/+TQFlWdhxMszRjOOrDo8nOwrVTlmspph9v61iJ9K0Xf8OeIOcC7VsdrVVO
 OEJloUwiJIFWdfUu2QyAunkDTkyXzO3iDTVXVcHGiezrOQ5QhoBxoVdYWSRommd9qAfZifIZNfP
 zGytUeE3Nn3tPlgtHIYsjG51CCx1FtdhO4CDkFl6XbOCBym2qudhC9uSPOYMJRJ9fC9dH7pkgyB
 ex0y3TB3oJTq5/Kwh0Q3aj02bHOTscIcHIECopeUpmsZOzeS
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIwMDIzMCBTYWx0ZWRfX5e/oXDnh51nB
 3uZ0kuo+LLdsp7GUdnxjevQWVJlbLQrqtrUMAtlxAvqEedRx9Wfs+YmMpyTehzii40ubEGL4G8u
 Lf9FE6j6rm4ZyewEjGkbY9e/TVmRdTGXEtpWYiWcCjBLG+EbWKj9IRSXT1cinWehEtN8ocm8MHz
 CVHCoOurxRwJTTQFZaIDM8m1INI3D78eo8MNmuGDZiCyxuZQ6dU+ulWsWz2h1nmTyZ4XKVPZ86n
 c3qHxFMcRzdsU1b3BPui6QyOS/IS6fTdzqKRdV3ZPeMaBb6s0QNlDt4XFdsWSiV66Yt1xC0vbkE
 Ak6xtSZbUjYw82i6ASRY6UKLBO0KOmxKVHe4BmZLZtLDCeR/Gf5eVroYsO9F17JWunnZzJg/Y4A
 JyLvEZ7UmPJKm10VC+svUvpg7XWL97SlH/L5HXbNxU+bi6kRIXki/QqJt36UNVeMpCXKwWw5n42
 iG41n8Q+luhhfTFgvDw==
X-Proofpoint-GUID: yH699SEql6Jt3STByYklQfZJh0Fcbf7X
X-Proofpoint-ORIG-GUID: yH699SEql6Jt3STByYklQfZJh0Fcbf7X
X-Authority-Analysis: v=2.4 cv=PsKjqQM3 c=1 sm=1 tr=0 ts=69e6b7e6 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=QzDdqdBtNhq9Kz3vvWgA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-20_04,2026-04-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 phishscore=0 adultscore=0
 bulkscore=0 lowpriorityscore=0 spamscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604200230
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
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[42];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:heikki.krogerus@linux.intel.com,m:gregkh@linuxfoundation.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:adrien.grassein@gmail.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:robin.clark@oss.qualcomm.com,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:jesszhan0024@gmail.com,m:sean@poorly.run,m:marijn.suijten@somainline.org,m:tomi.valkeinen@ideasonboard.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:mitltlatltl@gmail.com,m:nikita@trvn.ru,m:yongxing.mou@oss.qualcomm.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:intel-xe@lists.
 freedesktop.org,m:linux-amlogic@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-arm-msm@vger.kernel.org,m:freedreno@lists.freedesktop.org,m:jernejskrabec@gmail.com,m:adriengrassein@gmail.com,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linuxfoundation.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,ursulin.net,baylibre.com,googlemail.com,oss.qualcomm.com,linux.dev,poorly.run,somainline.org,trvn.ru];
	ARC_NA(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
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
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 7797C434DED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Pass IRQ_HPD events to the HPD bridge, letting those to be delivered to
the DisplayPort driver.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/soc/qcom/pmic_glink_altmode.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/qcom/pmic_glink_altmode.c b/drivers/soc/qcom/pmic_glink_altmode.c
index 619bad2c27ee..946eb20b8f83 100644
--- a/drivers/soc/qcom/pmic_glink_altmode.c
+++ b/drivers/soc/qcom/pmic_glink_altmode.c
@@ -373,7 +373,11 @@ static void pmic_glink_altmode_worker(struct work_struct *work)
 		else
 			conn_status = connector_status_disconnected;
 
-		drm_aux_hpd_bridge_notify(&alt_port->bridge->dev, conn_status);
+		drm_aux_hpd_bridge_notify_extra(&alt_port->bridge->dev,
+						conn_status,
+						alt_port->hpd_irq ?
+						DRM_CONNECTOR_DP_IRQ_HPD :
+						DRM_CONNECTOR_NO_EXTRA_STATUS);
 	} else if (alt_port->mux_ctrl == MUX_CTRL_STATE_TUNNELING) {
 		if (alt_port->svid == USB_TYPEC_TBT_SID)
 			pmic_glink_altmode_enable_tbt(altmode, alt_port);

-- 
2.47.3

