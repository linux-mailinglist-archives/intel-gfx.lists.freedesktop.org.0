Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QunsGuhG5mnOuAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 17:31:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FA142E438
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 17:31:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FEFC10E6B5;
	Mon, 20 Apr 2026 15:31:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="mQrhyNSO";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Vd2mEKb7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48CF210E6AB
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 15:31:45 +0000 (UTC)
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63KAtJJf1598115
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 15:31:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:message-id
 :mime-version:subject:to; s=qcppdkim1; bh=KPq2KWyVdJ/QThETfa/aj4
 GaL3KGHo2jIAgQ+4vtHSY=; b=mQrhyNSO1d4bVUQ2uy3chP70enO+iO9b/9x8wF
 WYVeBNBsgGl5uk4Wx5ZzJTsJhSP7twcpbRlFk0X9cqLO49FDjXuQQDyu7ku849d0
 vEHn2zSLkdnK3Mb3Lb9KzkMJUxxx7/FhupOQWNn6WjtpzDLPGEdbhqxOiFeqoO6s
 L+TSM41pvZdc6c2Tt6/aTaQUX+nYtUgVVuRtnBXRzpAw0+LqFLs3uSHAv9yKD5R9
 bhi8oehMmdD3XNG+jt2bnnKEF9c5BEbpCXtOe40u6L9kE7UFgokFbkUJXdlmP+pJ
 VTMWDGRx46hXqjtEbW4BamBkdAyE4xLqZfkxMPDXeu0aghPQ==
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com
 [209.85.167.198])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dnfgnj41r-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 15:31:44 +0000 (GMT)
Received: by mail-oi1-f198.google.com with SMTP id
 5614622812f47-47545742e67so3440025b6e.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 08:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1776699103; x=1777303903;
 darn=lists.freedesktop.org; 
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:from:to:cc:subject:date:message-id:reply-to;
 bh=KPq2KWyVdJ/QThETfa/aj4GaL3KGHo2jIAgQ+4vtHSY=;
 b=Vd2mEKb7myY9DpEbpaLkI1/4Dy2ZpSGk8GnMlhyDIfispkt1QNswPIw319AEeG9Hd2
 txdzcXObN8i1zdsJ2s6qxFzy8JTPmazzAJOXlccAtgoGun+QMEapIDUs9YjhEykJo85R
 jh+43UoQHnp3KHntxxwojlvdyx9m39o4JTTNEWmJHJvvem6o81qp7xpx5F53N4SFfS6l
 lsQoC0hRjYYqJ4xj9S2UIZCihagvCznWfw9FNxYAxpn/5RsS3ZA/x38HLEzzNr7pnZ6k
 ex8lYJEER0zTYKFPFhz6gXyLvMctrM3OIq7brvu6S3EYVvVIbUy9qufVNaE1rUPhIiBY
 NeRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776699103; x=1777303903;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KPq2KWyVdJ/QThETfa/aj4GaL3KGHo2jIAgQ+4vtHSY=;
 b=QhXI2hta9v83++ZJeH2AEYzl6FtJEGqobasbzxGF3iI4jitpVAGLLY+OoKZEElrqGA
 ILK5nVfnOcNwOzb8MV9xgBcGweMHdxMi3J3KA/ZrM4dutVDFKjtOiQQ0WlVTShzrAkbg
 vUeQAVRY6UsgK0NX1tW8VKyCr4mzFKmghFS3RXNrUWh+F9hbDS+QueaVcpWQCExfTE30
 Pia2n1h1UVV+x+PsvSH7eOFYYe4cow/4yRB+WX0ZQUM++ijT89IYAZ0OrrEaBRXyjOAn
 XxZf+0/355YzccbKc/SjLwSwX60KSH07aNYh4YZ8NL7cB5uNzYpfShlpJvv2KRkA1d8O
 a95Q==
X-Forwarded-Encrypted: i=1;
 AFNElJ+1Zr6RCyJRoavUKflbkfCmqjwQRrKRau5bYQj1jsEVJ8ZEgfS520xcQ6kwMkdM2Kop5FGkkVgvRwI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy2ZbBbbL0P0ef/MbX5MO2V+n+BeV3Nhz7cwfOxPN7sDUdp3v3K
 hcTGLzsdRhmdcJWRgJYEKHP6wwgxQ9Wj+/QWHMmyegxFdfNaUMSCUUo+sLN1o//fE7V7ThVPmP8
 mxFzDmiVnR544HV+i4q862IqB8YLOg+SvkOubqDO5qT3a+0d8kuqiDxvhGTdRPGczZEBM4OU=
X-Gm-Gg: AeBDievPiX5+pby3ZzCxbP/h0j5cbPaPy2Am5zqbRV5Fj84H1vQ50F9OvubS3iDbdSD
 Xh1fsK9fITnfRZF4JcffPxOSZfFIP/h3VV/NwBNP3M8/UsJjV/iOD1uPzAzN5On1yI2piuKrlbo
 b+iGWLUGgBGv7k+MVdb6u/Rsv9PQhPf8wBF8MFLdIeJ/KBBhOFPy2iSseQyWWov5pJ0VV5JsMdL
 HeTyHK4Iz6kgMOzHaH2GdYOj8pimz662of7eQKCEdZij/Pd19O1i247aDPBtq6eUVQCwpTJuNZl
 QuBboybBmRO+d4lF6nUOyp94ic/1jOrQn7+QzxzsQN8yDRbN0KN72TxV6NeA9oAUPlzCMVnFxnP
 bi8RQ8mxqInxCd4ayfOPiIjAoVoZgXVM9k1PwR8m2A4FAm34E+ICGJl9ySJdu3rUC90XZ8YG0hD
 OCIkCnKVEBuOkapeO7ZOQn4WVunMVN18R07F+cnBTWOqkrBg==
X-Received: by 2002:a05:6808:8888:b0:479:ca20:2904 with SMTP id
 5614622812f47-479ca2031a6mr1688395b6e.40.1776699103437; 
 Mon, 20 Apr 2026 08:31:43 -0700 (PDT)
X-Received: by 2002:a05:6808:8888:b0:479:ca20:2904 with SMTP id
 5614622812f47-479ca2031a6mr1688353b6e.40.1776699102944; 
 Mon, 20 Apr 2026 08:31:42 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a4185bc31dsm3071171e87.22.2026.04.20.08.31.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2026 08:31:41 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v2 0/6] drm: handle IRQ_HPD events correctly
Date: Mon, 20 Apr 2026 18:31:38 +0300
Message-Id: <20260420-hpd-irq-events-v2-0-402ffe27e9e9@oss.qualcomm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANpG5mkC/12NQQqDMBREryJ/3UgSrEJXvUdxkcSfmlKN5sfQI
 t690dJNNwMPZt6sQBgcElyKFQImR86PGeSpANOr8Y7MdZlBclnzSlSsnzrmwsww4RiJYSO14U2
 tzlZAHk0BrXsdwlv7ZVr0A03cLXujdxR9eB+PSey9n7z+lyfBOBNKCyuM1VLLqycq50U9jR+GM
 ge027Z9AAYPTRzFAAAA
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2944;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=UvPqtcBs6t12Cb50UIargyyrmizVDFL3lnz93lf5dTU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBp5kbcZbi/KWXeOsOVKc0R63XrtFjzk27ElCmXg
 o1hqq0c2AiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaeZG3AAKCRCLPIo+Aiko
 1crcCACcPmDWi1VRXcgFtEXlo+5T/J8Fo1YheczB5Yf/UcL5kzeG1wYdBh80oB6i8rpfl3PAIqI
 OtE0Vs3/R3OyrKQWM6mUEfbofHykn/tlnQdokPu98hSVlATQyeKrtfLI5o40Nrdwxz7PWCEhc/d
 CcHkRkkhNxWNDiQjJQATtm7QgXgteXtJVp0OkDMB3NWa4Mif6sOwMvfCWxGS0VsfgmopA14BWm8
 iMV8J2GhiPTLlcAWNcpW0UCaRV9Las5xLHFCFyX4DkL0yvG7qFApbn/YIQtAUQ9wVya89ZSPODt
 cAE6lzXZZ0TY8jCDbiqtMt2ZWZkXJLv9TxbTNBit8UHk4MZH
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: LmzX6vPqKA8LsVJCQ7flc1NHX_YxrJ_K
X-Proofpoint-GUID: LmzX6vPqKA8LsVJCQ7flc1NHX_YxrJ_K
X-Authority-Analysis: v=2.4 cv=TK11jVla c=1 sm=1 tr=0 ts=69e646e0 cx=c_pps
 a=4ztaESFFfuz8Af0l9swBwA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=bC-a23v3AAAA:8
 a=EUspDBNiAAAA:8 a=ST8Y6Hw29dmLQzsKkX8A:9 a=QEXdDO2ut3YA:10
 a=TPnrazJqx2CeVZ-ItzZ-:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIwMDE1MSBTYWx0ZWRfX2KnQQR2tN20E
 iPPTGPu/ZvvsN2klBbJLaRCf8OwkxH53H2lApSi7269fi+upO8mAxYhNizPX34BizOKeK1RLtdw
 IphuL/35iXloQ9W27YQNnswtf4W7MW2BUTDW+N4Gc63CMuAI/8oUxjFIppy11+mx3+H+N7TA9ph
 eGliXfUXvrrJqUQTWldK0VogE+FJ0a6EOwD/t2xBGS/6Z1+goOAUv/8dHQi7xhKBW/1erLlGeEG
 muAPJ+k9rIzYzAtvNTGEjvyaFgp2sR1t7UfCNwWss2L4EYysJjTV6RjZft2+JP4pfMa5T8+TsV+
 obn8skJ1qIPCN/nwm0SceBGtD7LrOmVKppTCL+ttONiOjiP541p4iNSBecJpkVRDn/72jpcbOuI
 3loa3++W37sANTeux9u3UWMd9GBwy+bAeJ+kla89ce6BPK9T+LveSZHS7EYnUHlz7j9+SW+ieL5
 yZNzKuzdjX6z1s2VBFg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-20_03,2026-04-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 adultscore=0 phishscore=0 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2604070000
 definitions=main-2604200151
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
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:heikki.krogerus@linux.intel.com,m:gregkh@linuxfoundation.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:adrien.grassein@gmail.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:robin.clark@oss.qualcomm.com,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:jesszhan0024@gmail.com,m:sean@poorly.run,m:marijn.suijten@somainline.org,m:tomi.valkeinen@ideasonboard.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:mitltlatltl@gmail.com,m:nikita@trvn.ru,m:yongxing.mou@oss.qualcomm.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:intel-xe@lists.
 freedesktop.org,m:linux-amlogic@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-arm-msm@vger.kernel.org,m:freedreno@lists.freedesktop.org,m:jernejskrabec@gmail.com,m:adriengrassein@gmail.com,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linuxfoundation.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,ursulin.net,baylibre.com,googlemail.com,oss.qualcomm.com,linux.dev,poorly.run,somainline.org,trvn.ru];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_TWELVE(0.00)[42];
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
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 11FA142E438
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
Changes in v2:
- Change irq_hpd arg to be an enum, possibly desribing other uses (Toni)
- Account for that, chaning the API accordingly (with_irq -> extra,
  etc.)
- Wire up AUX bridge notifications
- Link to v1: https://patch.msgid.link/20260416-hpd-irq-events-v1-0-1ab1f1cfb2b2@oss.qualcomm.com

---
Dmitry Baryshkov (6):
      drm/connector: report IRQ_HPD events to drm_connector_oob_hotplug_event()
      drm/bridge: pass down IRQ_HPD to the drivers
      drm/bridge: aux-hpd: let drivers pass IRQ_HPD events
      drm/msm: dp: handle the IRQ_HPD events reported by USB-C
      soc: qcom: pmic-glink-altmode: pass down HPD_IRQ events
      usb: typec: ucsi: huawei-gaokun: pass down HPD_IRQ events

 drivers/gpu/drm/bridge/aux-hpd-bridge.c        | 11 +++++----
 drivers/gpu/drm/bridge/chrontel-ch7033.c       |  3 ++-
 drivers/gpu/drm/bridge/lontium-lt8912b.c       |  3 ++-
 drivers/gpu/drm/bridge/lontium-lt9611uxc.c     |  3 ++-
 drivers/gpu/drm/bridge/ti-tfp410.c             |  4 ++--
 drivers/gpu/drm/display/drm_bridge_connector.c | 22 ++++++++++--------
 drivers/gpu/drm/drm_bridge.c                   | 20 ++++++++++-------
 drivers/gpu/drm/drm_connector.c                |  7 ++++--
 drivers/gpu/drm/i915/display/intel_dp.c        |  3 ++-
 drivers/gpu/drm/meson/meson_encoder_hdmi.c     |  3 ++-
 drivers/gpu/drm/msm/dp/dp_display.c            |  6 ++++-
 drivers/gpu/drm/msm/dp/dp_drm.h                |  3 ++-
 drivers/gpu/drm/omapdrm/dss/hdmi4.c            |  3 ++-
 drivers/soc/qcom/pmic_glink_altmode.c          |  6 ++++-
 drivers/usb/typec/altmodes/displayport.c       | 15 +++++++++----
 drivers/usb/typec/ucsi/ucsi_huawei_gaokun.c    | 11 +++++----
 include/drm/bridge/aux-bridge.h                | 13 +++++++++--
 include/drm/drm_bridge.h                       | 31 +++++++++++++++++++++-----
 include/drm/drm_connector.h                    | 22 ++++++++++++++++--
 19 files changed, 138 insertions(+), 51 deletions(-)
---
base-commit: c7275b05bc428c7373d97aa2da02d3a7fa6b9f66
change-id: 20260414-hpd-irq-events-e72bc076a5f1

Best regards,
--  
With best wishes
Dmitry

