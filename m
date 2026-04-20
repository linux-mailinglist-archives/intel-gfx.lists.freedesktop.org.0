Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AO66C+a35mlJ0AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 01:33:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C23BB434DB6
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 01:33:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17F1810EB3B;
	Mon, 20 Apr 2026 23:33:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="nwrsUnmI";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DNb0HxfU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBD6D10EB5F
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 23:33:54 +0000 (UTC)
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63KMhtXL1128592
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 23:33:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 sZrnMsT7jt/4L++ru9IvAvxyFjbRkLz2gfqjnGiw80s=; b=nwrsUnmIe2W0tHvx
 qv+K2ykbluRxeMpFT2z5cR47aB+Ai4q84jOYOhzLWiEQvlTwZ/Ylxc+oJFZDHF2P
 XG9H9qtHUt5eWPtgbsahyI1rREj+jUJxMhKrdGcGQ3gNJXQzyVL8kqJsjZ8V6oO5
 GeFWtC6x5dEAU1JgG5Wkc2S3YgFC1THHWx0rpt6rGyYLPXlWC5MF882vlxVzwyKf
 +bZkCAz+JmswKLySVaHyin6V3uyZvMUz2dNSl2j6oXN68cfxLKkGqjgMox6wwGRd
 ES6mjX9b8rflNFCMSazlxbI5Q4os86OmKU2IQR9C17ryB7+2Uaga4/iYzo/s3fuA
 kK5Jcw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dnw68r37j-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 23:33:53 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id
 d75a77b69052e-50d58bed44aso53397071cf.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 16:33:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1776728033; x=1777332833;
 darn=lists.freedesktop.org; 
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=sZrnMsT7jt/4L++ru9IvAvxyFjbRkLz2gfqjnGiw80s=;
 b=DNb0HxfUzHusYk354rS8FSp59mbvJOgTDYxYyzRwxR2jr4Vs8wDuoo+NNBKXCbiore
 6RZU0nFZViaUyoIhidoKLRx4AwuV4XWVbh9HPygFQk+VT27FtB/saJ7pGegoLx+22C7S
 +Bs9ED4bhpXHP/EWHpUGHwgJZJkdLM0bYdoR6A+Z2JZ3C3zQu3N2fcG37noIVTb8L4FO
 3W29kP5QQrtd+D3nzG36yJ9CZlRUyi1CFIS+52dCdgQS7TY38u64xk+acQwmW+c22Xwx
 gkVaYQSbjcoDb7nOYcuLezwnf5GoOVof9vONiy/gqPZ3YIG7oWywqMMU9A66OgkuY9Ye
 JI9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776728033; x=1777332833;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=sZrnMsT7jt/4L++ru9IvAvxyFjbRkLz2gfqjnGiw80s=;
 b=cfSNsLxcf1THD3ReJGUMzvCQOLHybYT6JVtggGXD6b4mqwFn18jV4dzIRi8h2H6w00
 ftoGbeRmxelQVs0xH601Q7LMPvy5A1vdcxT3pGx5oztimFTTvJ48OY8Pvt7p/eadyl1r
 D7JXuGxuLS7YzjunRyRQxE/5p2v25ffGOU4cTrkbkAdkq3/V/ak9nLpis352nmNhQ+4k
 B14pfInmD2uVcQClPBuDUg5radSfOBuoVv3qpuiGPqTJmNUoHsWsLyK7RKd0EzDu17D+
 qUZ2Xm2F/GwZhyuqaWwgPP0oFbQguv9pW/qvBZjuvsNLySO/PFLN7E/11tYjRdwjytnj
 jvdg==
X-Forwarded-Encrypted: i=1;
 AFNElJ9rFfR+bgEX8R8/ZP55xLiOTbO9coZh/xQL69wcOBZWzz7TGqfLT0dstKXh5Ab/A/k+6HHXhLxa/Ds=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwmbG1bKmYO5Ga1T6vFyr6n0VEN6n5N0VQ4Fh1rS7n/+BkqhCQ/
 qVvoejdmvR25jydk2C6ex87raXbETDpgz4Eqn4wtHHEc+or3rBDoVvLts+4qcB7xftoPIaA+xV+
 5A4VNI768LnYIWM06xa7bGe9AeqW++nk5CviZ15gITatHu2bYw6GRLOnCu+sMKUlM4lR8vTw=
X-Gm-Gg: AeBDietvi5i0YlBm0s4kFF5ifkJP4DAKlzjNAMC5vFe//JqOttNzSwCULs+SE+M/KW4
 23VhoeuhB7uDstpGfAa0uw97qf/tefJdtHyIuVaRBoh50hFZtpgbdUD5/mMMtDz5MPM3HEZrgto
 7AM3KRtgLaWD1QdQ2F4baiqAt2OOkLk9sAnNDgukWPeIAi3XUru68q0+IpLAqXyr8H86Smhkshw
 w90tYg5rFUNvnnCZGT3bGnT83bBL5l5Rxj2F7PyHqzOURLZvoumCc+1+K0HGVlt0gyTE+xtPFKg
 Nvch4+GcNrFiMPdd9ROVOuqRg9+6Aqs1LQVvtgq5uvF41pZswaWMZlQK9p3uQhSbvQ2l7I+rVF/
 5Ksz18u6VydZ2s0NlSwJKTNlXQjPb4JwCTkC8quO81dw2i5Ceu5TO4SKSCGEcQ+jsfcsKb9v0w1
 qKJHoWsjHn6KSM1B1PXjqRRwM6N1ZO69gsqe4kLN/lU3lxSQ==
X-Received: by 2002:a05:622a:84:b0:50d:912c:c2cb with SMTP id
 d75a77b69052e-50e36c4d835mr229844651cf.42.1776728033453; 
 Mon, 20 Apr 2026 16:33:53 -0700 (PDT)
X-Received: by 2002:a05:622a:84:b0:50d:912c:c2cb with SMTP id
 d75a77b69052e-50e36c4d835mr229844161cf.42.1776728033013; 
 Mon, 20 Apr 2026 16:33:53 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a4185bc627sm3320714e87.29.2026.04.20.16.33.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2026 16:33:50 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 21 Apr 2026 02:33:34 +0300
Subject: [PATCH v3 4/6] drm/msm: dp: handle the IRQ_HPD events reported by
 USB-C
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260421-hpd-irq-events-v3-4-44d2bf40dfc2@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=891;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=+/ILvBuGhqekKhSlkO02babbVbDbrJeHq8l4XOhAwlU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBp5rfNyjFzL4b8IkwF/PF49lz1EuPnWyS8Qxlcr
 U5qoTUzCLWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaea3zQAKCRCLPIo+Aiko
 1ScGCACJMMnjpi9t0iULUWpszlSsI4q7iJwWHegcsGM/iwQvHCyLVAcm8trSNMycKBpkdlIpjgi
 qutScdnn74VcxSgGoQBusOE4JTtC3EwpKjWOu6D9oiMf+ATGfMVtVxG+hErUzl8iWh9g3t9V/j1
 PwQwbR9Iftr5kNio91MsoXuBkTudXywYpgVCcJ37u1V/th8NcezRjcQE1ww78mBhhXwEc6hpKj1
 SgtTJImlf0dgsumqITASw/7XwPheCid49bfS54ITNHRvaeGrnWr/ls0GnSNCyIoD5HBWS5/eeif
 nkxyVQkoGqHHpBIjjlXqa0CLa+2io1+jotp1uhof45783PSW
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: jFAhgzdYyWuT5ewH-9qZ7kM6zWsc3p3T
X-Authority-Analysis: v=2.4 cv=apyCzyZV c=1 sm=1 tr=0 ts=69e6b7e2 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=3ML_fINe3tzxlWvVV4AA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIwMDIzMCBTYWx0ZWRfXwvabMqB8o55L
 loHZqOt9eY5nUJJjAt8+F4cpO+w43Jd330iO75x5lpGR4vVLTt7P+kMmMm1H2wC/xFIy7MvRL7B
 fi2eYnZyiEklwQKrrUzJbesfsFzf7AFueLVBfmkvomUUE3J/q2R9G0usnojDRyQiXxQSBGBJ6NE
 E6yMsrj6Z1s5jf5E31KcpdIpriS+WojfS25OUVQcNyoCoBhlAPMLs2vKngOkZMZobdfRTwIqvx3
 LJOOLIKPM6yNtW8yVVqA73Fkf8pJ4XUmT3dNyORl1FJjgZyn4zFu9XAkMiBJMsFWUxY+Nm5Rkin
 FXqifkFZeKDeM4VcsLHmMx+8bvwuhdCJCAAjiLQU6YZxsq/nlp1S1vyhEgGJ5h1LQVnV+6hGcQ5
 FHf8LNzEMevnrzJBtMrv1Fz/zx1Z/4kormSBRI66+xdUaVNSMZoc0ELL6Isd3dED9x8Ifss3cDW
 t4ZYFxokwkqwmIGuWcQ==
X-Proofpoint-GUID: jFAhgzdYyWuT5ewH-9qZ7kM6zWsc3p3T
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-20_04,2026-04-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 clxscore=1015 spamscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: C23BB434DB6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Let the MSM DisplayPort driver properly track and handle IRQ_HPD
delivered over the OOB events (e.g. from the USB-C AltMode handler).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/dp/dp_display.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index 7a0623fdbd8e..8df579bb320a 100644
--- a/drivers/gpu/drm/msm/dp/dp_display.c
+++ b/drivers/gpu/drm/msm/dp/dp_display.c
@@ -1800,4 +1800,7 @@ void msm_dp_bridge_hpd_notify(struct drm_bridge *bridge,
 		msm_dp_add_event(dp, EV_HPD_PLUG_INT, 0, 0);
 	else if (msm_dp_display->link_ready && status == connector_status_disconnected)
 		msm_dp_add_event(dp, EV_HPD_UNPLUG_INT, 0, 0);
+
+	if (extra_status == DRM_CONNECTOR_DP_IRQ_HPD)
+		msm_dp_add_event(dp, EV_IRQ_HPD_INT, 0, 0);
 }

-- 
2.47.3

