Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GPuiEsId4GkGcwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:22:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BE3408D80
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:22:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 598FA10E777;
	Wed, 15 Apr 2026 23:22:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="m5D+Jlst";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TQvXT9yW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6176D10E776
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 23:22:39 +0000 (UTC)
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63FFoHH61565875
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 23:22:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:message-id
 :mime-version:subject:to; s=qcppdkim1; bh=QjrAezVeYmMM4Ps1ry3g2H
 LZr/7V5M12bVqxCDqfRuM=; b=m5D+Jlst7zIrpNFlkcMehTxcctR1022cEwiZvM
 OV/h3ebwTZAAhMMWwAJNnlFxcecuZp+eiZSj7bwThxGkGCjNkf434v8v7zRiq8dK
 V6sHHtJo4FYzSszeuAuUZvonwryKRYdoSzCO24iP/r3LpfzV/QUob/tDgY9gvTpK
 YGvfl1oHuys3HNQn4Ecwn630RdL8023nZ+9I4Y07yKbBHNBTi70yWrlXLo9cm3h9
 2Ow5JQpJMP8zFagj3jwRNsNR4SQ+csPvOS3o3X6BGSz0O3IgQtl5WkFSYek4Bpkv
 WysoB2M2xHJmkCDEBJ0WQ3haLX3EEMmTyWlt4hPLL1CTzaOw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dj7wv2qrk-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 23:22:38 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id
 d75a77b69052e-50b4031b86dso202206031cf.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 16:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1776295358; x=1776900158;
 darn=lists.freedesktop.org; 
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:from:to:cc:subject:date:message-id:reply-to;
 bh=QjrAezVeYmMM4Ps1ry3g2HLZr/7V5M12bVqxCDqfRuM=;
 b=TQvXT9yWan+RheylD43rFiYLj8jAJLbn8RNI0eizzrxj+jjhfuY+75rOhn4zJfKOHX
 0OerEhg6afakKPhaDlMz6quKHFCPv4hD6PC6EiWvjXizFFkGEi95jw2jjcoDKxKgvToY
 z3ovXmjH2kXWYnw3qGnegw6Nq+TvHG3o+f6Jb0vxDOn3vdnMLFVu7y+0wasavrYL7ZGC
 5n/JfynvtSY8tgW1DrbN3smFt6CE+LfszuIfO9F2zwOFXxBz45Vp5BsLRqeuP7sjDFvn
 W1nGwp8meZy5UnL3dCq97b6TEMVShxcTw90uGKvK80LlGT8HHKMjHWMt25jQl4JUj5hK
 n1DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776295358; x=1776900158;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QjrAezVeYmMM4Ps1ry3g2HLZr/7V5M12bVqxCDqfRuM=;
 b=AMNTqsq6ldHEn8qESQLchX4lwMg+tQq1/SZBFWHgue32v3eIZ2olYGquQfTCut9ykC
 SCrZv8NZaaQxo7Ao1ktJLQeYLOTp9CNk17bCJxyAeM4tHVNcI69TM2Uo9McGPQeI4jGP
 xlgyWVKKfxQMsnxZkzCtffpcUPgsxxeMULpQ68D+iQ8BsYaWeTh/bvYEix0qLxVHfoGC
 868B9/TXqktMxxVC8qtbvsW0lTyN8EhPRNTeCxiitoxMCRtpyHmxw56d+y370qQl41vV
 //rvHKkh+A4APW9yRNRMr/02pGJy25AaBva/Nu9r+WFkX/xgjmcXlwCpkjDKGA5vB7GQ
 eJOA==
X-Forwarded-Encrypted: i=1;
 AFNElJ/c2i7YnmPovcssD0ztg34AACAsg3kD5rLDJGxawOCHlGoKhhgFUF0OXTURdEm4MS5RLbYjlSRK/co=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwNruvpNHDQ/barm9+7XVs72BkNKc/XZrvjEtEY+V+wzVAn6bzJ
 UhLkP/fULQa5kTtVERQ5WB+4PrVs/pqpB/ZrIeasippW0y/KYGEuNOlq/PHoiYLDbE32q9vZyUX
 vN0jKvtbBDD/BXrjhFXl1qzRCFxw9fj4dVt0izAtNsr1GOHPbcRDu6uTQjPj08Ry1v2Io++g=
X-Gm-Gg: AeBDievHhaKq3s/dpaVSmPESYGgJNbsHJRiCymriTYRy804lIok/Q3scgce1sHr2N5B
 T/4sjumrTwGlTmvt/4TadK19r/eZZgYBWzOuYBD57q1xWbOtqiSYZCYktp5NImzvFYf7UiwlH9W
 vuFND8gNZNa0cDuCmeXDgmWPMc1jPpmAB5Zo4nHXKM0cQ8tlvGCyBjPH7YeXuel4qJGWpb+kLzV
 ebpfUppBLaMCmoGYO2NyqenRhbRdM7BccP1xytrSpwrI0O9KTAePo9R9OuFuCal+DBPqO/jKD2j
 30VLmZUGtHmWAljRYLQq1D1P2Y/v5Eft129+svG2rC6kYslVW3D6Ae6kZ2LJzmhvhePPy4TS1/M
 rdDxN+68zcW+1qQbTGk7Yx0LP76b1KwTVc4dpxyzsJbaBklRQ2BOR05dY5TYm0XvtreYxGhkGge
 aSurqWTZP1HAaoUZXtcqhROcxH37srUkFdjBnRB7Zg8rPvhg==
X-Received: by 2002:a05:622a:4a08:b0:50d:9174:cf27 with SMTP id
 d75a77b69052e-50dd5ada552mr341629961cf.20.1776295357607; 
 Wed, 15 Apr 2026 16:22:37 -0700 (PDT)
X-Received: by 2002:a05:622a:4a08:b0:50d:9174:cf27 with SMTP id
 d75a77b69052e-50dd5ada552mr341629291cf.20.1776295357086; 
 Wed, 15 Apr 2026 16:22:37 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a40a272852sm817054e87.10.2026.04.15.16.22.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2026 16:22:35 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH 0/6] drm: handle IRQ_HPD events correctly
Date: Thu, 16 Apr 2026 02:22:31 +0300
Message-Id: <20260416-hpd-irq-events-v1-0-1ab1f1cfb2b2@oss.qualcomm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALcd4GkC/yXMQQqDMBBG4avIrB1IglXoVcSFxt86XaSaURHEu
 5vq8lu8d5AiCpTe2UERm6j8QoLNM/JjGz5g6ZPJGVeawhY8Tj1LnBkbwqKMynXeVGX7GiylaIo
 YZL+HdfNY1+4Lv/wvdJ4XXIgi2XIAAAA=
X-Change-ID: 20260414-hpd-irq-events-e72bc076a5f1
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2613;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=DGTBlD7qs9HNM7qsl6CaN+vK2gHbwUw1l1hWZUAKoYg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBp4B25snfl3bH76DEACoBeVZy/UCHClRy8lnyw3
 uY/zfPUoHSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaeAduQAKCRCLPIo+Aiko
 1aaaB/9c9WKgA+3medunIFAl2CwuoCesh2/joS8gvRUa71/vNjPKRaDwhbLm5jO6MCbLgig4onY
 jF3bCfXqoO2RrZ9cTVrg1MKZqpXlRdW3BQyhT/DOIKfGPRMdoNyCFz/rU3cI4D0WrGSbVX+yC5V
 51IV2z4RVS6XNUX1aZNn+vG1dHT6XeZoCywbYQUMUEG0OJuZotdNHy1CPjDAGr2m/227RZM/vVV
 hlvH8a3N6EX4o+ASH2W4NGzsOS2dg3yKZKRR4CWR8ReMTZqXsj/7qZfOV2nj/S66/Dj+GQzrheb
 QBGq4goO9Y68lpQRcQm999ISp8uPQr9FshsCDN5JCmNeMCo+
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: 2m-_cqj7MBHlaqXMxz60v6umbeNowemr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE1MDIxOSBTYWx0ZWRfX651pLUFaJFCu
 fIlJzB3ZGH/BZovrKkfZnERkXupUOQyYl+AKE+tWs8F0ApInhoXPvtkrc8mJQUIqsuW0CnSUZVa
 Cs3snriwJnUPXyu6ajH3UZHFnbXedPRpTuvkrB3U/kaA3yNwALxP8bad4OQJVKWlSYnaZtllami
 U1FLuJs9qmfCxDI5U7rJebEEyqlvdToV3YxVHJgtlZ8jBRPTEY85J5SV832ChEUyhjkEwozMZNb
 h5zAnsaOEd1pzuXBqa9grjDsebN/PBwBkO7/83DwHona3zdtrb3+b475ND2bc8V+/DEnhcMB2iT
 rY2EPZd0VwFnDu0YOLDdodtu8f4x9Akqo4m9F4nCNXO58pkBJ6AI81V33p0A+tMFAhwtKnqVX0/
 +72geZ2yejgzQNZY1XslbZCfNmPvMGJzeiDF6nmXQWCsC6n5b9aOArZRZQi2k+OM1abtmLMVq0r
 WwgsePba49qDYCg50HQ==
X-Authority-Analysis: v=2.4 cv=GYgnWwXL c=1 sm=1 tr=0 ts=69e01dbe cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=ST8Y6Hw29dmLQzsKkX8A:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: 2m-_cqj7MBHlaqXMxz60v6umbeNowemr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-15_01,2026-04-13_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0
 clxscore=1015 priorityscore=1501 suspectscore=0 adultscore=0 bulkscore=0
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
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E1BE3408D80
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Both DisplayPort and HDMI standards define a way for the Sink / display
to notify the Source / host about some kinds of events. In case of HDMI
it's as simple as singnalling changes to the EDID. In case of
DisplayPort it's more complicated and requires actual checking of the
DPCD registers.

Currently USB-C drivers don't have a way to deliver the IRQ_HPD
notifications, leading to missing MST notifications. Provide necessary
plumbing to let IRQ_HPD events be passed to the DisplayPort drivers.

Note: the Yoga C630 UCSI driver and Acer Aspire1 EC driver are not yet
enabled to send the IRQ_HPD events. Both of them would need some more
reverse engineering to find out how the event is being reported by the
EC.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Dmitry Baryshkov (6):
      drm/connector: report IRQ_HPD events to drm_connector_oob_hotplug_event()
      drm/bridge: pass down IRQ_HPD to the drivers
      drm/bridge: aux-hpd: let drivers pass IRQ_HPD events
      drm/msm: dp: handle the IRQ_HPD events reported by USB-C
      soc: qcom: pmic-glink-altmode: pass down HPD_IRQ events
      usb: typec: ucsi: huawei-gaokun: pass down HPD_IRQ events

 drivers/gpu/drm/bridge/aux-hpd-bridge.c        |  9 +++++---
 drivers/gpu/drm/bridge/chrontel-ch7033.c       |  2 +-
 drivers/gpu/drm/bridge/lontium-lt8912b.c       |  2 +-
 drivers/gpu/drm/bridge/lontium-lt9611uxc.c     |  3 ++-
 drivers/gpu/drm/bridge/ti-tfp410.c             |  2 +-
 drivers/gpu/drm/display/drm_bridge_connector.c | 21 ++++++++++--------
 drivers/gpu/drm/drm_bridge.c                   | 18 ++++++++++------
 drivers/gpu/drm/drm_connector.c                |  6 ++++--
 drivers/gpu/drm/i915/display/intel_dp.c        |  3 ++-
 drivers/gpu/drm/meson/meson_encoder_hdmi.c     |  3 ++-
 drivers/gpu/drm/msm/dp/dp_display.c            |  6 +++++-
 drivers/gpu/drm/msm/dp/dp_drm.h                |  3 ++-
 drivers/gpu/drm/omapdrm/dss/hdmi4.c            |  3 ++-
 drivers/soc/qcom/pmic_glink_altmode.c          |  4 +++-
 drivers/usb/typec/altmodes/displayport.c       | 12 +++++++----
 drivers/usb/typec/ucsi/ucsi_huawei_gaokun.c    |  9 ++++----
 include/drm/bridge/aux-bridge.h                | 13 +++++++++--
 include/drm/drm_bridge.h                       | 30 +++++++++++++++++++++-----
 include/drm/drm_connector.h                    |  6 ++++--
 19 files changed, 107 insertions(+), 48 deletions(-)
---
base-commit: 66672af7a095d89f082c5327f3b15bc2f93d558e
change-id: 20260414-hpd-irq-events-e72bc076a5f1

Best regards,
--  
With best wishes
Dmitry

