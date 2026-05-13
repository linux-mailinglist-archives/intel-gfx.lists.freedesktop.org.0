Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMEQG7/BBGpjNgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 20:23:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0AC538D50
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 20:23:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C862610EFEF;
	Wed, 13 May 2026 18:23:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="mxb4eT35";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NICz40TK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C9F110E339
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2026 18:23:53 +0000 (UTC)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 64DHo9LS1393027
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2026 18:23:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:message-id
 :mime-version:subject:to; s=qcppdkim1; bh=/8lnfbEOX7ej5tjeRNuBsa
 gcrk13r/0jAm1jfC+Xj3w=; b=mxb4eT351HYUVNlaFmZ0YbQdmIqO58P1ttDhsi
 LZ62cFmcw4jzMfy5sq7dc9VPZVpJ03HTiRQZxoOyvywpTsL8tUb0NvneP2g75+0c
 AJYFN0IkImN4tdEAR53mJY8D7NQMwAS24bgVMFzTC55s8cfgtOmKOmiIFMH9dbZ7
 G1BpMZ734vtj9Q4wXel4ZBn/sed0rmZQqLn/gZp7T87xxUpRadk/9H2XA51IXhD6
 +/p57z4p3ajZwI15QX4ktjBUUnvPvvp9FJ6hqHQTIvNopxrw2tpEH8DG1Tsmiesr
 ZDbcduU/D2tAtc4NCTUgz+eiI0U688wmj+nj3MV4sscwxGCQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e4k26328w-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2026 18:23:52 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id
 d75a77b69052e-50e423a05c8so75182611cf.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2026 11:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1778696631; x=1779301431;
 darn=lists.freedesktop.org; 
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:from:to:cc:subject:date:message-id:reply-to;
 bh=/8lnfbEOX7ej5tjeRNuBsagcrk13r/0jAm1jfC+Xj3w=;
 b=NICz40TKrrSxfa/MvriYP0i9hgxn6uVgmMAhcPxuTlN6STOHp5DOum/bArrD4HVTa+
 p2dc/grViqqiBSBluxDxG6loTJ8z2DEFp+6egwWs0c8X03nV6epSqmqYJxhjllcLf2vt
 fMIupS1c3SNoNa8T4sy0kFJ8KCibCxzDAmm7FZzIjQXk9iU2NV61zdSkCc0Y7+dmEvaF
 8oQMGQug5y2TrquwYEnJMwmoqL5A0ecnwjtbYh2QO6K55RV6tRCZx72YVWGoftjB25gO
 94zS+HEroMVINzrRp3knPmkFvh5nUK1OOXCng9DSUDpNjsQEQu4riKGRovAeEbsrcxDe
 vCgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778696631; x=1779301431;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/8lnfbEOX7ej5tjeRNuBsagcrk13r/0jAm1jfC+Xj3w=;
 b=qOUqL+T0ZuGAWxLGekAsMIN16A0EVdnNjdwVwbKoWtY7u2nnI/S5sRKfSXI8Mad0e8
 pIVs1mfSZgz06k8DqE9ay9agRm/rkWkuOnFFGX6UlTMXPw3m45/YEgNbhhmmfwZEPYn0
 Wvc5MIDMLAYwXWHO9X0DmNNRXY2hD73zdUVOcCLU2Y3g6XkN/sZiUR4KtJ9Brpzp9wV1
 0cLGsJTL2hD0LI2LziHEYslVJEs/xmuQwFg8Q6pYl/OEuVQCm+Glt4F1fSb7Tl+vfiKx
 HD1fhBkiXbhE7CVLad44gfRIjuoBvEGtqyXwBSSu93Eb8uuqgcnERo0j3VWp22zMj4gY
 C70A==
X-Forwarded-Encrypted: i=1;
 AFNElJ9fht0IlzWt/X5TCg+3eKy2VdaMiiABWLYo5WKjpxnTRqzgfD4Gcd3Ks+wDwHmOCYubeCb5DyFYDP8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxVnALN1GesXPE1b05BT+KojNtKRdPWuJS7T1T1be1NT7fPlIel
 tGeJ453RWw0RO10degv4k2e67DWghw5wAPDWbLfpE3EGCF6n3ztefZ1ZeYPWUZnE8hBdvv6L7vo
 qN7kGeB5FHaQX3m1Nv0SwDHblrI9U6nAr1XHm0F+4cG4JJ04TGN76G39FLDoHvtXTZQKvmGbH+r
 vuHDM=
X-Gm-Gg: Acq92OG4VDC1YQMo0W4igItzsgiV/cBqCE/qYd+Lj8hH7ODEbFYmzsHEpkImcjwopAp
 EIXhku1VicuOuS4EFHBX8McG38PAchs8Od1ThJ3gpC4O3Zghj7Cgf0TUg5qp71d44IWdiE4+ljB
 x3iCEjZATPp6mJvnZTn9XQB9LOwuXK/V7d5uMoy+nBZ3bxe7DLwXL0gqBhs6DYSVlrYWS40uIZ6
 Q0NasRAla4ajMsAoI+mlFJnGDKnIsI7tMtdjT0wMFy/7RzYzzDKU1fmv8QticXDaQBhbZ0IR4w8
 DoUlCSz937OcaAyedAYGvATpIFMEkTZ9f9oDyUhSOinR4v7T/gnLPGSEFm5nFhllGoXSJuAnLfp
 XPNbWk4A4AkYalhmSOm6hEWOm8gfPRTTCOy3ct1sDzxzV7uGDQy7emv7PZRAbuzcdL5G5Qpfe1I
 Z6LxcWRazZD0FOj/bmglBjfdiC+3hYhoIazEE=
X-Received: by 2002:a05:622a:8d09:b0:514:cf96:7638 with SMTP id
 d75a77b69052e-516415a239cmr8445921cf.15.1778696631213; 
 Wed, 13 May 2026 11:23:51 -0700 (PDT)
X-Received: by 2002:a05:622a:8d09:b0:514:cf96:7638 with SMTP id
 d75a77b69052e-516415a239cmr8445451cf.15.1778696630558; 
 Wed, 13 May 2026 11:23:50 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a8a951d1f6sm4212851e87.23.2026.05.13.11.23.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2026 11:23:49 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH RESEND v3 0/6] drm: handle IRQ_HPD events correctly
Date: Wed, 13 May 2026 21:23:20 +0300
Message-Id: <20260513-hpd-irq-events-v3-0-086857017f16@oss.qualcomm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
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
 freedreno@lists.freedesktop.org,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=3154;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=CP/Usd5SOY/V4EM+27lYpiqg54wFGw4ZjWsp+w6ne5I=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqBMGzqxLK1D79sW3iq4HpOWxquvyKBFjpVcB34
 h7vCOrJ4kmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCagTBswAKCRCLPIo+Aiko
 1XrACACZbqw9UPGnc0Rq1LLAPf/snNnVdTZVsXFY41YM+aZS+S0oinCBEk2sFDi6DoOvzVrXO4f
 lZkJKpaBOfQOOmh/eVRIl26g1+GDmKlBT8Wt+DTKHGPFZBELRDHOxm2htwzcF6vWOt0NMqOgYnL
 KgXpWk1I6X5nYD6PVbvE7LO37A8PZZqnrIzMeZjE0SiiJvP6x4poYkeeQp+iJ6tSO4ifjQnsjq6
 6DfAK+vsWVwkacAZjGeYCM74uqTOs0Sj+5EgbpmRcyvFZ+k7YC4lcoQHZSF8SE6h/IpU7aL9nlN
 4WIucg9m4eEPgQevK++Tmqs5JqKyrxqXDLUu4aSLWOCxV60V
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=M/l97Sws c=1 sm=1 tr=0 ts=6a04c1b8 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=bC-a23v3AAAA:8
 a=EUspDBNiAAAA:8 a=52TPwIQhNpV4Ze06EwUA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTEzMDE4MyBTYWx0ZWRfX6hLtzG+UJY6U
 +juSm+SZvhqYL2H32atCLr6Yk4sQqHT5qtKlw2k3SYVF9MLNtbZIsoG3uT9CmuTJCHYjuntC2my
 tpJFzgDcmDTIWjF/HkwDR6h93h5m+Q4YrwDyITrNu3lDqj7D026xV00BjNhkaatOMwl5V1gfJdC
 3aSVeGDo7h7S8MpXZ4LrXzfPWRKe9XllULb32h+NdH8mlBkQEQNmx57rnot8p9WSWCupxZugm2Z
 UK/SEqk19VyD7Hb46vdPP5PhwdLE4FI657YP9O0DAAncmRN/Ip97hq6pXGfUskhS6lKFPqwhE53
 59/vveVfrXQCDFejhRs/CJAqky1EWS4P1GJACSuqMJeJEDIjYn/aSV1o1Uo/ybpmF4stqdkEzmk
 nWzCs1DA5ac+DQ1fpO27/mXVabVxUH/gcweioAtm3VK3nTmSMcWHBB7SZMkUHcDyuBHBXjW9kva
 41Me3K5hXpqdOzQ5GDw==
X-Proofpoint-ORIG-GUID: TdjqT9BwSdlVyh5EeZFphqHDJ6nnS4QW
X-Proofpoint-GUID: TdjqT9BwSdlVyh5EeZFphqHDJ6nnS4QW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-13_02,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0 suspectscore=0
 spamscore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605050000 definitions=main-2605130183
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
X-Rspamd-Queue-Id: 1C0AC538D50
X-Rspamd-Server: lfdr
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
 freedesktop.org,m:linux-amlogic@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-arm-msm@vger.kernel.org,m:freedreno@lists.freedesktop.org,m:dmitry.baryshkov@oss.qualcomm.com,m:jernejskrabec@gmail.com,m:adriengrassein@gmail.com,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[43];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,msgid.link:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim]
X-Rspamd-Action: no action

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
Changes in v3:
- Fixed build error if aux bridges are disabled (Intel GFX CI)
- Link to v2: https://patch.msgid.link/20260420-hpd-irq-events-v2-0-402ffe27e9e9@oss.qualcomm.com

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
-- 
With best wishes
Dmitry

