Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDm0Ms0d4GkPcwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:22:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EFE9408DDC
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:22:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CF9E10E778;
	Wed, 15 Apr 2026 23:22:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="ecU/bmn9";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="O9H2liy1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF34910E79C
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 23:22:48 +0000 (UTC)
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63FGEs8F506950
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 23:22:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 a4KSfjn1joLi2IK5RttCTaEwdkwsswlE9sN0psAruEM=; b=ecU/bmn9v1itzIBb
 68x+4zJohm4hFwl+P/1pO62Wz+JE+YbZGYSTfNve8Xf74w4ihxA5XEqHWqZedt57
 6LWs4oFYLn9iE/P7lv/E1xQD+ohk7jNq41w6g6hDkBB7WnUjESAoNJEftCtY7WET
 AV3Wx+itysbZUglZw/CJ5WTPnZfPumUjJ/nnLkE/PBtf4NWxHxkGhpiHN6TLx7HQ
 Dm2OLDmS9ZPFxfkY8gjXk+haWXqV8fejehk6KYMuplKf4k3envkRCXsUzF7fu9py
 7EpaSjl8qxAxQUYmoUSi2Mj1H/a5UWHwMFvzLR7ZhBsNfGQM0r42XIVbce5xFZUe
 6vx92g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dje1e1701-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 23:22:47 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id
 d75a77b69052e-50d63962d83so179343941cf.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 16:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1776295367; x=1776900167;
 darn=lists.freedesktop.org; 
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=a4KSfjn1joLi2IK5RttCTaEwdkwsswlE9sN0psAruEM=;
 b=O9H2liy1dcIk3wGAO26/HZ9Hsxc288PlFNu0eCYD0OYdJFqV2VoXua5PsUaTa+Uw8c
 VPB41t9dSC/s/ixUMRQWsaLDR3YDQmQ7vEhMweua0M7fInY4lp6f4z1nt2DOEN0B7FNr
 i0tmnUtx3jNW2ynUyL8vri2LSIo0C1bm1pcXYwjOQYrjZAUu4+yAqe8Ul3CLINes28VD
 4yPLfGIkL6sipUepk/eDp6tno5RZDPQvrPVugideXysjUBRUXG/zJk9uzQbdjPXtpNF8
 PSittOxd7jKy50a8Yu6RW5Aai+JLt2YL9c9l0FCze0M1EF1SVEVMmqzX84W33GjN1d+T
 ORog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776295367; x=1776900167;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=a4KSfjn1joLi2IK5RttCTaEwdkwsswlE9sN0psAruEM=;
 b=bK2+PqgCu00G8K27i3oiQqWR89Oq2Dd47WR7YTJ5s7/t1B261uLRyIxKIXdl9V6kxf
 L9Lv7bh0KYLiVDEiLZPQsAnLJQh+yBtumXURB1czIDYtHywS5nEEKXiZN4AUiJDDc4x0
 zT0Yqt/wA8piEon7lDY7SVtOgA21Utwb54lHCV/RdvINVm5zcPnzlNkICd+qCaGzBBKx
 uGSy2A9OgNdeftBld/53fAXh/oc0gjRkygsTD/mdZ5JoPpYbuXwGvDFrP8b47SQn4zhc
 v34+yphXoczsNyFSBP0eRkJKoDR9FzzN5wiSoAaxa4Jm1h5w1dwrguuuX7ci4vCw98JH
 4rOg==
X-Forwarded-Encrypted: i=1;
 AFNElJ9n+2G4yj8hfKUsvY7w4l0D9JBcpP/PRfd/qSThLWZ0Z9qnyw+WrT2Jds2fFikbna0863fbRPMX9xs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzBVXwhRV0/G3ekYTS/D624UGxjOB+fZOQC0rBLujpZZ9zkdY7m
 spwY0w/wlsF652FLg5UQe3+YMEHoUOsm4r9+QvgtwGnVJu2abT3E2N9J9gYBLsiU3be1hDhlGwb
 +b/XkExJ3YkSruG0lg4kKOotBBVAiWzL0U3mUwWIiaHiAhweor6T28Wc0q71uqowtOnRbvxc=
X-Gm-Gg: AeBDietbfmgPju7qlHug5n+evaTantgXUStAITJBqJQ9JWPC5DkZgHOs+IUea2e8PrR
 WT5NxKkcOupiBDVuXsNaISYbcAF03WuOUnyGRcEKoFPZkNg8eQvjsopchr0eDB9+D2U47g40mqM
 W0UJGf06Rm9p9WRRdIfpFeObhURrGhU69Ew2Zo20jVyqNKzI9dY+djcelHUh3XtS4nKnZj1g+UR
 MNasMzj84VE3pO4eU3eFvfPEBZtAqBcM3VGL0aWOl9rboU3jYXheEU1JzvR90mRrmKjH6eb1p2Q
 6m6Kxktx9dLvmbw3P87xAd9RUmIcVA5/PyWi5xehViiKKTqVFMmk3qcm4FDKgq/NMD6R0fGn7dM
 29OHdE8H6YNmc4X+H1mVivVJK1iMv/7LPI2e8LBmZonZugpflH3B1lKCAR3wvs5u7mu9tQEtvrT
 sfaupcfQ27zMZkTTiS2mch6Vwn5YFEqbkcumlzmq/27xceXw==
X-Received: by 2002:a05:622a:1822:b0:50d:736a:6248 with SMTP id
 d75a77b69052e-50dd5b30c24mr373453901cf.11.1776295367301; 
 Wed, 15 Apr 2026 16:22:47 -0700 (PDT)
X-Received: by 2002:a05:622a:1822:b0:50d:736a:6248 with SMTP id
 d75a77b69052e-50dd5b30c24mr373453501cf.11.1776295366820; 
 Wed, 15 Apr 2026 16:22:46 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a40a272852sm817054e87.10.2026.04.15.16.22.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2026 16:22:44 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 16 Apr 2026 02:22:34 +0300
Subject: [PATCH 3/6] drm/bridge: aux-hpd: let drivers pass IRQ_HPD events
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260416-hpd-irq-events-v1-3-1ab1f1cfb2b2@oss.qualcomm.com>
References: <20260416-hpd-irq-events-v1-0-1ab1f1cfb2b2@oss.qualcomm.com>
In-Reply-To: <20260416-hpd-irq-events-v1-0-1ab1f1cfb2b2@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=6722;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=mz8dmJX1o7L+LkFDzvBa1x8iVPv9TimP8vXBvzsNNxA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBp4B25wq4mEi/132w7NqLGejQ6ZJBdwpIzHMQlR
 CgdKQu+o1uJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaeAduQAKCRCLPIo+Aiko
 1bnDB/0SNFEv411ScvEko1SCNGqXnGoqWBUVGwV489aKOY+PT5D4wMY3kl7mN6JyZQ5TDhpESNT
 XszzIh45Q6TdckQtvLV5BndM4pjBHB7Ifftp9Tr0LenZqp6LO2HhtKbsoxtyCdt+2teeemdUWwo
 NFD+rY4+gIcP16wKtPP0HqVTpJirb+ndjoDatTbsb9xXrVGvE8MhxxPMjH3kf627kp+9Bt8S0f0
 PXmX19LnBxkToLnq88pT8puI2CDZOca59+RijyQKFm385Ek4yP7xaYt3ImCB4DZPwj4eR/tYKl+
 92hStNtdLrmfLDIhFNjTci/g+IN7G4qgHoQZ/l2MzP+1pKAm
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=HZwkiCE8 c=1 sm=1 tr=0 ts=69e01dc7 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=zEMOeRQCFk_hQCPR_I0A:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE1MDIxOSBTYWx0ZWRfX9BUMxummVSfv
 0/akAwTwnmiYM7hVM5lBP0j/+P7ysaXxVqRprTWx9o1fQyaYCqKqYK0unkw1gVUxi5hHiKIEopI
 T047whr8dsig3fGDpPWnUYCGpDAzIPR0KdYt4902+xOtXG8JVqTh+pcbDVaigPPbIpwVtyItDP5
 hR8CW1cGx1NuYg1AcCkPg2lRukKGAJp4TG15igI4Ix5TaOOMHUaVNAX6zrsOuLTwdNt5gzUXeq4
 sJIRVZhFZ8G+kudjjeHCIWclM6ySsYnsU/ryI7WxsuErEz+zQpTIV6CBCa2cFe6cGNR1DHFjc9c
 jGC/IktIymmrD/g6V9Nsp3Fe+yhEHVlVNxsOElY0P43Wg11hbbAbg0pCcwjKyiYtA72vH9wKY6j
 Hc2ZGotsVlOjr28+1x6r3nPtcuXu0SCEabzrwlkK8Z89XsmmKMpQkvNlHcYPBthvWiNxf6sZODj
 WHIN5RHg2jvXMXMGKiw==
X-Proofpoint-ORIG-GUID: VehWwFGOtWhvDRjQX5bALBRTcqyNDnh6
X-Proofpoint-GUID: VehWwFGOtWhvDRjQX5bALBRTcqyNDnh6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-15_01,2026-04-13_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 clxscore=1015 malwarescore=0 priorityscore=1501 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604150219
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:heikki.krogerus@linux.intel.com,m:gregkh@linuxfoundation.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:adrien.grassein@gmail.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:robin.clark@oss.qualcomm.com,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:jesszhan0024@gmail.com,m:sean@poorly.run,m:marijn.suijten@somainline.org,m:tomi.valkeinen@ideasonboard.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:mitltlatltl@gmail.com,m:nikita@trvn.ru,m:yongxing.mou@oss.qualcomm.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:intel-xe@lists.
 freedesktop.org,m:linux-amlogic@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-arm-msm@vger.kernel.org,m:freedreno@lists.freedesktop.org,m:jernejskrabec@gmail.com,m:adriengrassein@gmail.com,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[42];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linuxfoundation.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,ursulin.net,baylibre.com,googlemail.com,oss.qualcomm.com,linux.dev,poorly.run,somainline.org,trvn.ru];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,qualcomm.com:dkim,qualcomm.com:email]
X-Rspamd-Queue-Id: 7EFE9408DDC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Let users of aux-hpd, the UCSI and PMIC GLINK drivers pass the IRQ_HPD
events to the DisplayPort drivers.

The drm_aux_hpd_bridge_notify() is keps to ease merging of the series,
preventing extra cross-tree merges. It will be removed once all
drivers are converted. The drm_bridge_hpd_notify() function is kept for
the driver which only care about the connector status and will always
pass false as the irq_hpd event.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/bridge/aux-hpd-bridge.c |  9 ++++++---
 drivers/gpu/drm/drm_bridge.c            | 15 +++++++++------
 include/drm/bridge/aux-bridge.h         | 13 +++++++++++--
 include/drm/drm_bridge.h                | 22 ++++++++++++++++++++--
 4 files changed, 46 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/bridge/aux-hpd-bridge.c b/drivers/gpu/drm/bridge/aux-hpd-bridge.c
index f02a38a2638a..74d606b27dc6 100644
--- a/drivers/gpu/drm/bridge/aux-hpd-bridge.c
+++ b/drivers/gpu/drm/bridge/aux-hpd-bridge.c
@@ -136,16 +136,19 @@ struct device *drm_dp_hpd_bridge_register(struct device *parent, struct device_n
 EXPORT_SYMBOL_GPL(drm_dp_hpd_bridge_register);
 
 /**
- * drm_aux_hpd_bridge_notify - notify hot plug detection events
+ * drm_aux_hpd_bridge_notify_with_irq - notify hot plug detection events
  * @dev: device created for the HPD bridge
  * @status: output connection status
+ * @irq_hpd: recorded IRQ_HPD status
  *
  * A wrapper around drm_bridge_hpd_notify() that is used to report hot plug
  * detection events for bridges created via drm_dp_hpd_bridge_register().
  *
  * This function shall be called in a context that can sleep.
  */
-void drm_aux_hpd_bridge_notify(struct device *dev, enum drm_connector_status status)
+void drm_aux_hpd_bridge_notify_with_irq(struct device *dev,
+					enum drm_connector_status status,
+					bool irq_hpd)
 {
 	struct auxiliary_device *adev = to_auxiliary_dev(dev);
 	struct drm_aux_hpd_bridge_data *data = auxiliary_get_drvdata(adev);
@@ -155,7 +158,7 @@ void drm_aux_hpd_bridge_notify(struct device *dev, enum drm_connector_status sta
 
 	drm_bridge_hpd_notify(&data->bridge, status);
 }
-EXPORT_SYMBOL_GPL(drm_aux_hpd_bridge_notify);
+EXPORT_SYMBOL_GPL(drm_aux_hpd_bridge_notify_with_irq);
 
 static int drm_aux_hpd_bridge_attach(struct drm_bridge *bridge,
 				     struct drm_encoder *encoder,
diff --git a/drivers/gpu/drm/drm_bridge.c b/drivers/gpu/drm/drm_bridge.c
index 9c44e9b6c638..5a3dd4f92fbc 100644
--- a/drivers/gpu/drm/drm_bridge.c
+++ b/drivers/gpu/drm/drm_bridge.c
@@ -1495,25 +1495,28 @@ void drm_bridge_hpd_disable(struct drm_bridge *bridge)
 EXPORT_SYMBOL_GPL(drm_bridge_hpd_disable);
 
 /**
- * drm_bridge_hpd_notify - notify hot plug detection events
+ * drm_bridge_hpd_notify_with_irq - notify hot plug detection and sink IRQ events
  * @bridge: bridge control structure
  * @status: output connection status
+ * @irq_hpd: recorded IRQ_HPD status
  *
  * Bridge drivers shall call this function to report hot plug events when they
- * detect a change in the output status, when hot plug detection has been
+ * detect a change in the output status or when the sink has reported the IRQ
+ * event (usually delivered as IRQ_HPD pulse), when hot plug detection has been
  * enabled by drm_bridge_hpd_enable().
  *
  * This function shall be called in a context that can sleep.
  */
-void drm_bridge_hpd_notify(struct drm_bridge *bridge,
-			   enum drm_connector_status status)
+void drm_bridge_hpd_notify_with_irq(struct drm_bridge *bridge,
+				    enum drm_connector_status status,
+				    bool irq_hpd)
 {
 	mutex_lock(&bridge->hpd_mutex);
 	if (bridge->hpd_cb)
-		bridge->hpd_cb(bridge->hpd_data, status, false);
+		bridge->hpd_cb(bridge->hpd_data, status, irq_hpd);
 	mutex_unlock(&bridge->hpd_mutex);
 }
-EXPORT_SYMBOL_GPL(drm_bridge_hpd_notify);
+EXPORT_SYMBOL_GPL(drm_bridge_hpd_notify_with_irq);
 
 #ifdef CONFIG_OF
 /**
diff --git a/include/drm/bridge/aux-bridge.h b/include/drm/bridge/aux-bridge.h
index c2f5a855512f..6f837df90b2f 100644
--- a/include/drm/bridge/aux-bridge.h
+++ b/include/drm/bridge/aux-bridge.h
@@ -25,7 +25,9 @@ struct auxiliary_device *devm_drm_dp_hpd_bridge_alloc(struct device *parent, str
 int devm_drm_dp_hpd_bridge_add(struct device *dev, struct auxiliary_device *adev);
 struct device *drm_dp_hpd_bridge_register(struct device *parent,
 					  struct device_node *np);
-void drm_aux_hpd_bridge_notify(struct device *dev, enum drm_connector_status status);
+void drm_aux_hpd_bridge_notify_with_irq(struct device *dev,
+					enum drm_connector_status status,
+					bool irq_hpd);
 #else
 static inline struct auxiliary_device *devm_drm_dp_hpd_bridge_alloc(struct device *parent,
 								    struct device_node *np)
@@ -44,9 +46,16 @@ static inline struct device *drm_dp_hpd_bridge_register(struct device *parent,
 	return NULL;
 }
 
-static inline void drm_aux_hpd_bridge_notify(struct device *dev, enum drm_connector_status status)
+static inline void drm_aux_hpd_bridge_notify_with_irq(struct device *dev,
+						      enum drm_connector_status status,
+						      bool irq_hpd)
 {
 }
 #endif
 
+static inline void drm_aux_hpd_bridge_notify(struct device *dev, enum drm_connector_status status)
+{
+	drm_aux_hpd_bridge_notify_with_irq(dev, status, false);
+}
+
 #endif
diff --git a/include/drm/drm_bridge.h b/include/drm/drm_bridge.h
index 4eea124c7eb7..c3bb30133925 100644
--- a/include/drm/drm_bridge.h
+++ b/include/drm/drm_bridge.h
@@ -1555,8 +1555,26 @@ void drm_bridge_hpd_enable(struct drm_bridge *bridge,
 				      bool irq_hpd),
 			   void *data);
 void drm_bridge_hpd_disable(struct drm_bridge *bridge);
-void drm_bridge_hpd_notify(struct drm_bridge *bridge,
-			   enum drm_connector_status status);
+void drm_bridge_hpd_notify_with_irq(struct drm_bridge *bridge,
+				    enum drm_connector_status status,
+				    bool irq_hpd);
+
+/**
+ * drm_bridge_hpd_notify - notify hot plug detection events
+ * @bridge: bridge control structure
+ * @status: output connection status
+ *
+ * Bridge drivers shall call this function to report hot plug events when they
+ * detect a change in the output status, when hot plug detection has been
+ * enabled by drm_bridge_hpd_enable().
+ *
+ * This function shall be called in a context that can sleep.
+ */
+static inline void drm_bridge_hpd_notify(struct drm_bridge *bridge,
+					 enum drm_connector_status status)
+{
+	drm_bridge_hpd_notify_with_irq(bridge, status, false);
+}
 
 #ifdef CONFIG_DRM_PANEL_BRIDGE
 bool drm_bridge_is_panel(const struct drm_bridge *bridge);

-- 
2.47.3

